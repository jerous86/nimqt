import strformat
import tables
import sequtils
import strutils
import os
import macros

import ast_pattern_matching

import nimqt/nimqt_paths

template curFilePath(): string = instantiationInfo(0, fullPaths=true).filename
{.passc: &"""-std=c++17 -I{curFilePath.parentDir}""".}
when defined(macosx):
    const QtRoot = nimqt_paths.replace_vars("${Qt_root}", allow_run_time=false, enable_path_check=false)
    {.passL: &"-F{QtRoot} -framework QtCore -framework QtGui -framework QtWidgets -framework QtQmlCore -framework QtQml".}
    {.passc: &"-I{QtRoot}/QtWidgets.framework/Headers -I{QtRoot}/QtGui.framework/Headers -I{QtRoot}/QtCore.framework/Headers".}
    {.passc: &"-F{QtRoot}".}
elif defined(linux) or defined(bsd):
    proc addLibraryIfExists*(lib:string):string {.compiletime.} =
        return &"-l{lib}"
        # We get something like "undefined symbols" or "undefined reference" if the library exists,
        # and something else if the library does not exist.
        # TODO it would be nice if we could use ${CXX} instead of g++ or clang
        #let stderrout = staticExec(&"""sh -c "g++ -l{lib} 2>&1" """).toLower
        #if "undefined symbols" in stderrout or "undefined reference" in stderrout: &"-l{lib}"
        #else: ""

    const QtInstallHeaders = nimqt_paths.replace_vars("${Qt_install_headers}", allow_run_time=false, enable_path_check=false)
    const QtInstallLibs = nimqt_paths.replace_vars("${Qt_install_libs}", allow_run_time=false, enable_path_check=false)
    const QtMajorVersion* = nimqt_paths.replace_vars("${Qt_version}", allow_run_time=false, enable_path_check=false).substr(0,0)
    {.passC: &"-I{QtInstallHeaders} -fPIC"}
    {.passC: &"-I{QtInstallHeaders}/QtCore"}
    {.passC: &"-I{QtInstallHeaders}/QtGui"}
    {.passC: &"-I{QtInstallHeaders}/QtWidgets"}
    {.passL: &"-L{QtInstallLibs}".}
    {.passL: addLibraryIfExists(&"Qt{QtMajorVersion}Core").}
    {.passL: addLibraryIfExists(&"Qt{QtMajorVersion}Gui").}
    {.passL: addLibraryIfExists(&"Qt{QtMajorVersion}Widgets").}
    #{.passL: addLibraryIfExists(&"Qt{QtMajorVersion}QmlCore").}
    #{.passL: addLibraryIfExists(&"Qt{QtMajorVersion}Qml").}
elif defined(windows):
    const QtInstallHeaders = nimqt_paths.replace_vars("${Qt_install_headers}", allow_run_time=false, enable_path_check=false)
    const QtInstallLibs = nimqt_paths.replace_vars("${Qt_install_libs}", allow_run_time=false, enable_path_check=false)
    {.passC: &"-permissive- -Zc:__cplusplus -std:c++17 -I{QtInstallHeaders} -I{QtInstallHeaders}\\QtWidgets -I{QtInstallHeaders}\\QtGui -I{QtInstallHeaders}\\QtCore -I{QtInstallHeaders}\\..\\mkspecs\\win32-msvc /Zc:strictStrings- shell32.lib" .}
    {.passL: &"/link /SUBSYSTEM:WINDOWS shell32.lib".}
    # {.passL: &"--clib:{QtInstallLibs}\Qt6Core".}
    # {.passL: &"--clib:{QtInstallLibs}\Qt6Gui".}
    # {.passL: &"--clib:{QtInstallLibs}\Qt6Widgets".}
    # {.passL: &"--clib:{QtInstallLibs}\Qt6EntryPoint".}
else: 
    assert false, "Don't know how to compile on this operating system"

# The init template does the necessary C++ includes, 
# and imports some commonly used modules.
# This should only be called once in your project.
template init*() =
    {.emit: """
    #include <QtCore/QObject>
    #include <QtCore/QDebug>
    #include "verdigris/wobjectdefs.h"
    #include "verdigris/wobjectimpl.h"
    
    using namespace Qt;
    """.}

    {.push warning[UnusedImport]: off.}
    import nimqt/qtcore/qnamespace
    discard qnamespace.Qt_Key.Key_Space # avoid unused import warning
    import nimqt/qtcore/qstring
    import nimqt/qtcore/qobject
    import nimqt/qtgui/qevent
    import nimqt/qtwidgets/qapplication
    {.pop.}

type 
    SignalTuple = object
        pType:ProcType
        retType:NimNode
        node:NimNode
        cpp_param_types:seq[string]
        cpp_param_names:seq[string]

    ParamsInfo = object
        isConst:seq[bool]
        cpp_param_types:seq[string]
        cpp_param_names:seq[string]
        nim_param_list:seq[NimNode]
    ProcType = enum Slot, SlotDefer, SlotDecl,
        Override, OverrideDefer, OverrideDecl, ConstOverride, ConstOverrideDefer, ConstOverrideDecl,
        Signal,
        Member

func isDeclaration(pType:ProcType): bool =
    case pType
    of SlotDecl,OverrideDecl,ConstOverrideDecl,Signal: true
    of Slot,SlotDefer,Override,OverrideDefer,ConstOverride,ConstOverrideDefer,Member: false
func isSlot(pType:ProcType): bool =
    case pType
    of Slot,SlotDefer,SlotDecl: true
    of Override, OverrideDefer, OverrideDecl, ConstOverride, ConstOverrideDefer, ConstOverrideDecl,
        Signal, Member: false
func isOverride(pType:ProcType): bool =
    case pType
    of Override, OverrideDefer, OverrideDecl, ConstOverride, ConstOverrideDefer, ConstOverrideDecl: true
    of Slot, SlotDefer, SlotDecl, Signal, Member: false
        


var methodImplementations{.compileTime.}:Table[string,seq[NimNode]]

func unconst(class:string, varName:string): string = &"(({class} *) {varName})"

func replaceExportCppType(n:NimNode): NimNode =
    if n.kind == nnkPtrTy: return n
    if n.kind == nnkVarTy: return n
    elif n.kind == nnkCommand and n[0]==ident("const_var"): 
        # NOTE:const_var We come here in case we have something like
        # ```link:const_var QUrl```
        n[0][1]
    elif n.strVal=="int": return ident("cint")
    else: return n


# This procedure processes the name and arguments, but does nothing with the body
# It expects in $n the Command that starts the procedure
# structStuff are things that are added straight into the struct itself,
#   e.g. an emit inside the definition
proc processProc(n:NimNode,
        class:NimNode, parentClass:NimNode,
        signals:var seq[SignalTuple],
        fwdDeclarations:var NimNode,
        cppDefinitions:var NimNode,
        structStuff:var NimNode,
        friends:var NimNode,
    ): NimNode =
    #echo &"\nprocessProc >>\n{n.repr.indent(4)}\n\n{n.treeRepr.indent(4)}\n<<\n"
    result = newNimNode(nnkStmtList)
    let classNameStr=class.strVal

    proc toCppType(n:NimNode): string =
        assert n.kind!=nnkRefTy # ref is a nim thing, and does not translate to c++!

        if n.kind == nnkPtrTy: &"{n[0].toCppType} *"
        elif n.kind == nnkVarTy: &"{n[0].toCppType} &"
        elif n.kind == nnkCommand and n[0]==ident("const_var"): 
            # NOTE:const_var We come here in case we have something like
            # ```link:const_var QUrl```
            &"const {n[0][1].toCppType} &"
        else: n.strVal

    func parseProcType(s:string): ProcType =
        case s.toLower.replace("_","")
        of "slot": ProcType.Slot
        of "slotdefer": ProcType.SlotDefer
        of "slotdecl": ProcType.SlotDecl
        of "override": ProcType.Override
        of "overridedefer": ProcType.OverrideDefer
        of "overridedecl": ProcType.OverrideDecl
        of "constoverride": ProcType.ConstOverride
        of "constoverridedefer": ProcType.ConstOverrideDefer
        of "constoverridedecl": ProcType.ConstOverrideDecl
        of "signal": ProcType.Signal
        of "member": ProcType.Member
        else: assert(false, &"Unknown proc type {s}"); Slot

    # Replaces something like ```x:ref int``` with ```x:ptr int```
    # proc replaceRefByPtr(n:NimNode): NimNode =
    #     result=n.copyNimTree
    #     if n[1].kind == nnkRefTy:
    #         result[1]=nnkPtrTy.newTree(n[1][0])
    
    # Replaces something like ```x:const_var int``` with ```x:var int```
    proc replaceConstVarByVar(n:NimNode): NimNode =
        result=n.copyNimTree
        if n[1].kind == nnkCommand and n[1][0]==ident("const_var"):
            result[1]=nnkVarTy.newTree(n[1][1])
    
    # For a list of NimNodes, obtained from a function's
    # parameter list, we construct several useful versions of it:
    # cpp_param_names: the name used in the signature
    # cpp_param_types: the C++ type
    # nim_param_ilst: the NimNode representation for the signature
    proc getParams(params:seq[NimNode]): ParamsInfo =
        result.nim_param_list.add(
            nnkIdentDefs.newTree(
                newIdentNode("this"), 
                nnkPtrTy.newTree(class), 
                newNimNode(nnkEmpty)))
        for param in params:
            param.expectKind(nnkExprColonExpr)
            result.cpp_param_names.add &"{param[0]}"
            if param[1].kind == nnkCommand and param[1][0]==ident("const_var"):
                # See NOTE:const_var
                result.cpp_param_types.add &"const {param[1][1].toCppType}&"
                result.nim_param_list.add nnkIdentDefs.newTree(param[0], param.replaceConstVarByVar[1], newNimNode(nnkEmpty))
            else:
                result.cpp_param_types.add &"{param[1].toCppType}"
                result.nim_param_list.add nnkIdentDefs.newTree(param[0], 
                    param[1].replaceExportCppType, newNimNode(nnkEmpty))
    
    if n.kind==nnkCommand:
        # This is what we would expect usually, something like a "slot foo()" or a "member faaa()" ...
        let signal=n[1][0]
        let signalName:string=signal.strVal
        let callParent=ident("parent_"&signalName)
        let pType=n[0].strVal.parseProcType # e.g. slot or override or signal

        # body is the body of the function (if present)
        # ret is the return type (as a nim type)
        # params
        # decl_only: true if it's without a definition
        let (body, ret, params, decl_only)=
            if n[1].kind == nnkCall: # No params
                let params=getParams(@[])
                let (body,ret,decl_only) =
                    if pType.isDeclaration: # Declaration for sure
                        (NimNode(), (if n.len==3 and n[2].kind==nnkStmtList: n[2][0] else: ident("void")), true)
                    else:
                        # if kind==nnkStmtList: No params, with return type e.g. "slot foo(): bool = BODY"
                        # if kind!=nnkStmtList: No params, no return type
                        (if n[2][0].len>1 and n[2][0][1].kind == nnkStmtList: (n[2][0][1], n[2][0][0], false) else: (n[2], ident("void"), false))
                    
                signals.add SignalTuple(pType:pType, 
                    retType:ret, 
                    node:signal, 
                    cpp_param_types: @[], 
                    cpp_param_names: @[]
                    )

                block:
                    # NOTE:fwdDeclaration we need this if we have the regular {slot,override,const_override}, because
                    #   then nim generates the forward declarations a bit too late.
                    let retType=ret.replaceExportCppType
                    fwdDeclarations.add quote do: {.emit: $`retType` & " " & `signalName` & "(" & `classNameStr` & " *o); // fwd without params".}
                    case pType
                    of Member:
                        # Just the same as above, but with friend prepended
                        friends.add quote do: {.emit: "\tfriend " & $`retType` & " " & `signalName` & "(" & `classNameStr` & " *o); // fwd without params".}
                    else: discard
                (body, ret, params, decl_only)
            
            elif n[1].kind == nnkObjConstr: # With params, e.g. "slot foo(b:int):bool = BODY"
                let params=getParams(n[1][1..^1])
                let (body,ret,decl_only) = if pType.isDeclaration: # Declaration for sure
                        (NimNode(), (if n.len==3 and n[2].kind==nnkStmtList: n[2][0] else: ident("void")), true)
                    else:
                        # if kind==nnkStmtList: With params, with return type e.g. "slot foo(): bool = BODY"
                        # if kind!=nnkStmtList: With params, no return type
                        if n[2][0].len>1 and n[2][0][1].kind==nnkStmtList: (n[2][0][1], n[2][0][0], false)
                        else: (n[2], ident("void"), false)
                    
                let retType=ret.replaceExportCppType
                
                signals.add SignalTuple(pType:pType, 
                    retType:retType, 
                    node:signal,
                    cpp_param_types: params.cpp_param_types,
                    cpp_param_names: params.cpp_param_names)

                block:
                    # Add forward declaration. See NOTE:fwdDeclaration
                    let cpp_list=zip(params.cpp_param_types, params.cpp_param_names).mapIt(&"{it[0]} {it[1]}").join(", ")
                    fwdDeclarations.add quote do:
                        {.emit: $`retType` & " " & `signalName` & "(" & `classNameStr` & " *o, " & `cpp_list` & "); // fwd with params".}
                
                    case pType
                    of Member:
                        # Just the same as fwdDeclarations, but with "friend" prepended
                        friends.add quote do:
                            {.emit: "\tfriend " & $`retType` & " " & `signalName` & "(" & `classNameStr` & " *o, " & `cpp_list` & "); // friend with params".}
                    else: discard
                (body, ret, params, decl_only)
            else:
                assert false
                (NimNode(), NimNode(), getParams(@[]), false)
        
        if pType.isOverride and pType!=Signal:
            var def=quote do:
                proc `callParent`(): `ret` {.importcpp, used.}
            def[3].expectKind nnkFormalParams
            for p in params.nim_param_list: def[3].add p
            cppDefinitions.add def
  

        block:
            case pType
            of Signal:
                let importcpp = &"#.{signal}(@)"
                var decl0=quote do:
                    proc `signal`() {.importcpp: `importcpp`.}
                decl0[3].expectKind nnkFormalParams
                for p in params.nim_param_list: decl0[3].add p
                cppDefinitions.add decl0
            of Slot, SlotDefer, SlotDecl, Override, OverrideDefer, OverrideDecl, 
                ConstOverride, ConstOverrideDefer, ConstOverrideDecl, Member:
                 # Create the declaration
                let xs=zip(
                        concat(@[&"{classNameStr}*"], params.cpp_param_types), 
                        concat(@["this_0"], params.cpp_param_names)
                    ).mapIt(&"{it[0]} {it[1]}")
                let codegenDecl:string = &"""$1 $2({xs.join(", ")}) /*codegenDecl*/"""
                var decl0=quote do:
                    proc `signal`(): `ret` {.exportcpp,codegenDecl:`codegenDecl`.}
                decl0[3].expectKind nnkFormalParams
                for p in params.nim_param_list: decl0[3].add p

                # Create the definition
                var def0=quote do:
                    proc `signal`(): `ret` {.exportcpp.} = `body`
                def0[3].expectKind nnkFormalParams
                for p in params.nim_param_list: def0[3].add p

                let def=(if decl_only: decl0 else: def0)

                if pType in [SlotDefer, OverrideDefer, ConstOverrideDefer]:
                    if methodImplementations.hasKey(classNameStr)==false:
                        methodImplementations[classNameStr] = @[]
                    methodImplementations[classNameStr].add def
                    # A forward declaration might be useful
                    fwdDeclarations.add decl0
                else: 
                    cppDefinitions.add def
    elif n.kind==nnkPragma:
        # E.g. an {.emit: "".} thingie
        structStuff.add n
    else: 
        echo n.repr
        n.expectKind nnkCommand
    
    # echo "processProc returns >>\n",result.repr.indent(4),"<<\n\n"

proc processVar(n:NimNode, class:NimNode, memberVariables:NimNode) =
    # We cannot just add a member variable to a class. The importcpp pragma on an object
    # means that we will use that C++ object, and thus cannot modify the object.
    # We "solve" this here by storing the values inside a table.
    # The values are set and read transparantly for the user using a proc to read and write.
    # E.g. if we have `var counter:int` for a class `Foo`, this will create like (simplified)
    # `var Foo_counter:Table[pointer,int]`
    # `proc counter*(this:Foo):int = Foo_counter[this]`, and
    # `proc counter=*(this:Foo, value:int) = Foo_counter[this]=value`.
    
    n[0].expectKind nnkIdentDefs
    # n[0][0] is the identifier/name
    # n[0][1] is the type

    let classNameStr=class.strVal
    let className=ident(classNameStr)
    let varName=ident(n[0][0].strVal)
    let varNameAssign=ident(n[0][0].strVal & "=")
    let tableName = ident(&"{class.strVal}_{n[0][0].strVal}")
    let typ=n[0][1]
    let this=ident("this")
    let value=ident("value")

    if typ.kind==nnkPtrTy:
        let x:NimNode = quote do:
            # We do not have a Table[ptr className, typ] as the nim compiler does not generate
            # code that compiles. There is no fwd declaration. By just using a pointer, we
            # circumvent this problem.
            var `tableName`:Table[pointer, `typ`]
            template `varName`*(`this`:ptr `className`): `typ` = `tableName`.getOrDefault(`this`,nil)
            template `varNameAssign`*(`this`:ptr `className`, `value`:`typ`) = `tableName`[`this`]=`value`

        memberVariables.add x
    else:
        let x:NimNode = quote do:
            # We do not have a Table[ptr className, typ] as the nim compiler does not generate
            # code that compiles. There is no fwd declaration. By just using a pointer, we
            # circumvent this problem.
            var `tableName`:Table[pointer, ref `typ`]
            template `varName`*(`this`:ptr `className`): `typ` = 
                if not `tableName`.hasKey(`this`): 
                    var default:ref `typ`= new `typ`
                    `tableName`[`this`] = default
                `tableName`[`this`][]
            template `varNameAssign`*(`this`:ptr `className`, `value`:`typ`) = 
                if not `tableName`.hasKey(`this`): 
                    var default:ref `typ`= new `typ`
                    `tableName`[`this`] = default
                `tableName`[`this`][]=`value`

        memberVariables.add x


macro inheritQobject*(class:untyped, parentClass:untyped, body:untyped): untyped =
    # echo &"\n\n\ninheritQobject {class.repr} {parentClass.repr} {body.repr.indent(4)}"
    result = newNimNode(nnkStmtList)
    let classNameStr=class.strVal
    let parentClassNameStr=parentClass.strVal
    let newClassPtr = ident("new" & classNameStr)
    
    result.add quote do: {.emit: "\n\n\nstruct " & `classNameStr` & ";".}
    var
        signals:seq[SignalTuple]
        cppDefinitions=newNimNode(nnkStmtList) # These must come at the end
        fwdDeclarations=newNimNode(nnkStmtList)
        structStuff=newNimNode(nnkStmtList)
        friends=newNimNode(nnkStmtList)
        memberVariables=newNimNode(nnkStmtList)

    body.expectKind(nnkStmtList)
    for decl in body:
        case decl.kind
        of nnkCommand: result.add decl.processProc(class, parentClass, signals, fwdDeclarations, cppDefinitions, structStuff, friends)
        of nnkVarSection: decl.processVar(class, memberVariables)
        of nnkPragma: structStuff.add decl
        of nnkDiscardStmt: discard
        else: assert(false, &"inheritQobject: Expected nnkCommand, nnkVarSection, nnkPragma or nnkDiscardStmt, but got {decl.kind}")

    var
        structDeclaration=newNimNode(nnkStmtList)
        structMethodDefs=newNimNode(nnkStmtList)

    structDeclaration.add quote do:
        # This include statement is not necessary when we use inheritQObject inside the module from which
        # we want to use the object.
        # However, if we want to have custom widgets in their own module, then in the importer module it needs
        # to know about this class.
        # TODO use typeDb here
        {.emit: "#include <" & ($`parentClass`) & ">".}
        {.emit: "struct " & $`class` & ": public " & $`parentClass` & " {".}
        {.emit: "\tW_OBJECT(" & $`class` & ")".}
        `structStuff`
        `friends`
    
    result.add quote do:
        type `class`* {.importcpp.} = object of `parentClass`
        {.emit:"\n\n\n// Start of forward declarations".}
        `fwdDeclarations`
        {.emit:"\n\n\n// End of forward declarations\n\n".}
        proc `newClassPtr`*(): ptr `class` {.importcpp: "new " & $`class` & "(@)" .}
        `memberVariables`
    
    when true:
        # TODO we should be able to extract protected methods form qt/{class}.nim, and then
        # generated lines. But for now, let's just do it simple.
        result.add quote do:
            proc get_sender*(this:ptr `class`): ptr QObject {.importcpp:"#.get_sender(@)".}
        structDeclaration.add quote do:
            {.emit: "\tpublic: QObject *get_sender() const;".}
        structMethodDefs.add quote do:
            {.emit: "QObject *" & $`class` & "::get_sender() const { return sender(); }\n".}


    for signal in signals:
        let signalName:string=signal.node.strVal
        let cpp_param_decls=zip(signal.cpp_param_types, signal.cpp_param_names).mapIt(&"{it[0]} {it[1]}").join(", ")
        # param names without this
        let cpp_param_names0=signal.cpp_param_names.join(", ")
        
        case signal.pType
        of Signal:
            let signalNameAndParams = concat(@[signalName], signal.cpp_param_names).join(", ")
            structDeclaration.add quote do: 
                {.emit:"\tvoid " & `signalName` & "(" & `cpp_param_decls` & ") W_SIGNAL(" & `signalNameAndParams` & ")".}
        of Member:
            discard
            
        of Slot, SlotDefer, SlotDecl, Override, OverrideDefer, OverrideDecl,
            ConstOverride, ConstOverrideDefer, ConstOverrideDecl:
            let retType=signal.retType.replaceExportCppType
            let cpp_param_names=concat(@[unconst(classNameStr,"this")], signal.cpp_param_names).join(", ")
            let constness = (case signal.pType
                of ConstOverride,ConstOverrideDefer,ConstOverrideDecl: "const "
                else: "")
            let override = (case signal.pType
                of Override,OverrideDefer,OverrideDecl: "override"
                of ConstOverride,ConstOverrideDefer,ConstOverrideDecl: "const override"
                else: "")
            structDeclaration.add quote do: {.emit:"\t" & $`retType` & " " & `signalName` & "(" & `cpp_param_decls` & ") " & `override` & ";".}
            structMethodDefs.add quote do: {.emit:"\t" & $`retType` & " " & $`class` & "::" & `signalName` & "(" & `cpp_param_decls` & ") " & `constness` & 
                 "{ return ::" & `signalName` & "(" & `cpp_param_names` & "); }".}

            if signal.pType.isOverride:
                structDeclaration.add quote do: {.emit:"\t" & $`retType` & " parent_" & `signalName` & "(" & `cpp_param_decls` & ");".}
                structMethodDefs.add quote do: {.emit:"\t" & $`retType` & " " & $`class` & "::parent_" & `signalName` & "(" & `cpp_param_decls` & ") " &
                    "{ return " & `parentClassNameStr` & "::" & `signalName` & "(" & `cpp_param_names0` & "); }".}
            
            if signal.pType.isSlot: 
                structDeclaration.add quote do: {.emit:"\tW_SLOT(" & `signalName` & ")".}
    
    structDeclaration.add quote do: {.emit: "};\n".}
    structMethodDefs.add quote do: {.emit: "W_OBJECT_IMPL(" & $`class` & ")\n".}
    result.add cppDefinitions
    result.add structDeclaration
    result.add structMethodDefs
    
    block:
        let id=ident(&"import_{class}")
        result.add quote do:
            template `id`*() = `structDeclaration`
    
    #echo "\n\nResult of QObject macro: >>\n", result.repr.indent(4),"\n<<\n\n\n\n"


macro insertSlotImplementations*(className:string) =
    result=newNimNode(nnkStmtList)
    
    let classNameStr:string = className.strVal
    if methodImplementations.hasKey(classNameStr)==false:
        echo "qt::insertSlotImplementations: WARNING " & classNameStr & " not found in methodImplementations. Skipping"
        echo "Only following are available:"
        for key,x in methodImplementations:
            echo key
        return
    for x in methodImplementations[classNameStr]:
        result.add x
    methodImplementations.del classNameStr
    
macro insertAllSlotImplementations*() =
    result=newNimNode(nnkStmtList)
    for k,v in methodImplementations:
        result.add v
    methodImplementations.clear

import nimqt/qtwidgets/qlayout
import nimqt/qtwidgets/qsplitter
import nimqt/qtwidgets/qboxlayout
import nimqt/qtwidgets/qgridlayout
import nimqt/qtwidgets/qwidget
# import typetraits

proc addObjToLayout*(root:ptr QLayout, child:ptr QWidget) =
    assert root!=nil
    assert child!=nil
    root.addWidget child

proc addObjToLayout*(root:ptr QGridLayout, child:ptr QWidget, pos:seq[int]) =
    assert root!=nil
    assert child!=nil
    var pos=pos
    if pos.len==2: pos.add @[1,1]
    elif pos.len==3: pos.add 1
    assert pos.len==4
    root.addWidget child, row=pos[0].cint, column=pos[1].cint, rowSpan=pos[2].cint, columnSpan=pos[3].cint

proc addObjToLayout*(root:ptr QLayout, child:ptr QLayout) =
    assert root!=nil
    assert child!=nil
    root.addItem child

proc addObjToLayout*(root:ptr QSplitter, child:ptr QWidget) =
    assert root!=nil
    assert child!=nil
    root.addWidget child

proc addObjToLayout*(root:ptr QWidget, child:ptr QLayout) =
    assert root!=nil
    assert child!=nil
    root.setLayout child

proc addObjToLayout*(root:ptr QWidget, child:ptr QWidget) =
    assert root!=nil
    assert child!=nil
    addObjToLayout(root.layout, child)



# Something fishy is going on.
# When have something like
# win.makeLayout(rootLayout):
#    - QPushButton() as btn
# then without the macro 'as' below, there would be a parsing error.
# But with this macro, everything is fine. In earlier versions this was
# not needed.
# Further investigation needed.
macro `as`*(x,y:untyped) = discard

template discardThis*(x:typed, body:untyped): untyped = body
macro makeLayout2*(root:ptr QWidget, rootLayout:ptr QLayout, body:untyped): untyped =
    # These three variables contain the code to add in the file.
    # (They are in the order in which they are inserted into the code).
    var decls:seq[NimNode] # declarations to add
    var addWidgets:seq[NimNode] # widgets to create
    var stmts:seq[NimNode] # statements to add

    let unnamed_vars_prefix = root.strVal # Prefix to aid debugging
    var unnamed_vars = 0 # Keep track of how many unnamed variables we've seen
                         # so far, so we can generate unique names.

    proc helper(curObj:NimNode, body:NimNode) =
        proc addWidgetByName(obj:NimNode, children:NimNode, pos:seq[int] = @[]) =
            if pos.len>0:
                addWidgets.add quote do: (addObjToLayout(`curObj`, `obj`, `pos`))
            else:
                addWidgets.add quote do: (addObjToLayout(`curObj`, `obj`))

            if children!=NimNode():
                for child in children: helper(obj, child)

        proc addWidgetByNameExpr(obj:NimNode, expr:NimNode, children:NimNode, pos:seq[int] = @[], setObjectName=false) =
            decls.add quote do: (let `obj` = `expr`)
            if setObjectName:
                let objName:string=obj.strVal
                decls.add quote do:
                    assert `obj` != nil
                    when `obj`.typeof is ptr QObject:
                        (`obj`).setObjectName(newQString(`objName`))
            addWidgetByName(obj, children, pos)

        proc addWidgetByExpr(expr:NimNode, children:NimNode, pos:seq[int] = @[]) =
            let obj=ident(&"{unnamed_vars_prefix}_{unnamed_vars}")
            unnamed_vars.inc
            addWidgetByNameExpr(obj, expr, children, pos)

        # echo &"BODY\n>> {body.repr} <<-->\n>>\n{body.treeRepr.indent(4)}\n<<\n"
        #
        # In this matcher, we first have the version without children, then we repeat them
        # but we handle their
        body.matchAst(errors):
        # -newQLabel()
        of nnkPrefix(
            ident"-",
            `expr` @ nnkCall,
            ):
                addWidgetByExpr(expr, NimNode())
        
        # -newQLabel() as lblB
        of nnkInfix(
            ident"as",
            nnkPrefix(ident"-", `expr` @ nnkCall),
            `objName` @ nnkIdent,
            ):
                addWidgetByNameExpr(objName, expr, NimNode(), setObjectName=true)

        # -newQLabel() as lblB at (0,1)
        of nnkInfix(
            ident"as",
            nnkPrefix(ident"-", `expr` @ nnkCall),
            nnkCommand(
                `objName` @ nnkIdent,
                nnkCommand(ident"at", `pos` @ nnkTupleConstr)
                ),
            ):
                addWidgetByNameExpr(objName, expr, NimNode(), pos.mapIt(it.intVal.int), setObjectName=true)

        # -newQLabel() at (0,1)
        of nnkPrefix(
            ident"-",
            nnkCommand(
                `expr` @ nnkCall,
                 nnkCommand(ident"at", `pos` @ nnkTupleConstr )
                ),
            ):
                addWidgetByExpr(expr, NimNode(), pos.mapIt(it.intVal.int))

        # -useObject label
        of nnkPrefix(
            ident"-",
            nnkCommand(ident"useObject", `objName` @ nnkIdent),
            ):
                addWidgetByName(objName, NimNode())

        # -useObject label at (0,1)
        of nnkPrefix(
            ident"-",
            nnkCommand(
                ident"useObject",
                nnkCommand(
                    `objName` @ nnkIdent,
                    nnkCommand(ident"at", `pos` @ nnkTupleConstr)
                    )
                ),
            ):
                addWidgetByName(objName, NimNode(), pos.mapIt(it.intVal.int))


        # -newQLabel(): CHILDREN
        of nnkPrefix(
            ident"-",
            `expr` @ nnkCall,
            `children` @ nnkStmtList
            ):
                addWidgetByExpr(expr, children)
        
        # -newQLabel() as lblB: CHILDREN
        of nnkInfix(
            ident"as",
            nnkPrefix(ident"-", `expr` @ nnkCall),
            `objName` @ nnkIdent,
            `children` @ nnkStmtList
            ):
                addWidgetByNameExpr(objName, expr, children, setObjectName=true)

        # -newQLabel() as lblB at (0,1): CHILDREN
        of nnkInfix(
            ident"as",
            nnkPrefix(ident"-", `expr` @ nnkCall),
            nnkCommand(
                `objName` @ nnkIdent,
                nnkCommand(ident"at", `pos` @ nnkTupleConstr)
                ),
            `children` @ nnkStmtList
            ):
                addWidgetByNameExpr(objName, expr, children, pos.mapIt(it.intVal.int), setObjectName=true)

        # -newQLabel() at (0,1): CHILDREN
        of nnkPrefix(
            ident"-",
            nnkCommand(
                `expr` @ nnkCall,
                 nnkCommand(ident"at", `pos` @ nnkTupleConstr )
                ),
            `children` @ nnkStmtList
            ):
                addWidgetByExpr(expr, children, pos.mapIt(it.intVal.int))

        # -useObject label: CHILDREN
        of nnkPrefix(
            ident"-",
            nnkCommand(ident"useObject", `objName` @ nnkIdent),
            `children` @ nnkStmtList
            ):
                addWidgetByName(objName, children)

        # -useObject label at (0,1): CHILDREN
        of nnkPrefix(
            ident"-",
            nnkCommand(
                ident"useObject",
                nnkCommand(
                    `objName` @ nnkIdent,
                    nnkCommand(ident"at", `pos` @ nnkTupleConstr)
                    )
                ),
            `children` @ nnkStmtList
            ):
                addWidgetByName(objName, children, pos.mapIt(it.intVal.int))

        of `stmt` @ nnkCall: # e.g. ```connect(...)```
            # When we do a simple call, we insert the current object into the parameter list!
            # This allows a quicker call to e.g. connect.
            stmt.insert 1, curObj # Sneakily insert ```this``` into the call parameters!
            stmts.add stmt
        
        of nnkPrefix(ident"-", `name` @ nnkIdent, _): # This is probably a mistake in the code. Show a nice message.
            echo &"body is '{body.repr}'"
            echo &"body.kind is a '{body.kind}'"
            echo &"Maybe you forgot to add parenthesis? (i.e. ```{body.repr}()```)"
            assert(false)

        of nnkPrefix(ident"-", `name` @ nnkIdent): # This is probably a mistake in the code. Show a nice message.
            echo &"body is '{body.repr}'"
            echo &"body.kind is a '{body.kind}'"
            echo &"Maybe you forgot to add parenthesis? (i.e. ```{body.repr}()```)"
            assert(false)

        of `anything` @ _:
            stmts.add anything
        
    # echo body.treeRepr
    for n in body:
        helper(root, n)
    
    result = newNimNode(nnkStmtList)
    result.add quote do: 
        assert `root` != nil
        `root`.setLayout `rootLayout`
        assert `root`.layout != nil
    result.add decls
    result.add quote do: discard
    result.add addWidgets
    result.add quote do: discard
    result.add stmts
    # echo &"qt::makeLayout\nresult:\n>>\n{result.repr}\n<<\n\n"

template makeLayout*(root:ptr QWidget, body:untyped): untyped = makeLayout2(root, newQVBoxLayout(), body)
template makeLayoutH*(root:ptr QWidget, body:untyped): untyped = makeLayout2(root, newQHBoxLayout(), body)

macro registerArgType*(t:typedesc) =
    quote do:
        {.emit: "W_REGISTER_ARGTYPE(" & $`t` & ")" .}
        {.emit: "W_REGISTER_ARGTYPE(" & $`t` & "*)" .}
        {.emit: "W_REGISTER_ARGTYPE(" & $`t` & "&)" .}

template blockSignalsTmp*(o:ptr typed, body:untyped) =
    let old=o.blockSignals(true)
    body
    discard o.blockSignals(old)

template SIGNAL*(signal:string): string = "2" & signal
template SLOT*(slot:string): string = "1" & slot
template emit*(x:untyped) = x

# The following function allow easy handling of a single (e.g. inside a makeLayout).
# 
# NOTE we force the cdecl pragma, to ensure that we do not capture any local variables, as that
# would result in weird c++ errors.
var handleSignalId{.compileTime.}=0
macro handleSignal0*(o:typed, signal:string, body:untyped) =
    let functionName=ident(&"on_functor_clicked_{handleSignalId}")
    let thisName=ident(&"this_{handleSignalId}")
    handleSignalId.inc
    quote do:
        let `thisName` = `o`
        proc `functionName`() {.exportcpp,cdecl.} = (let this{.inject,used.}=`thisName`; `body`)
        connect(`o`, `signal`, `functionName`)

macro handleSignal1*(o:typed, signal:string, param1:untyped, body:untyped) =
    let functionName=ident(&"on_functor_clicked_{handleSignalId}")
    handleSignalId.inc
    param1.matchAst(errors):
    of nnkExprColonExpr(`p0` @ nnkIdent, `t0` @ _):
        return quote do:
            proc `functionName`(`p0`:`t0`) {.exportcpp,cdecl.} = (let this{.inject,used.}=`o`; `body`)
            connect(`o`, `signal`, `functionName`)


macro handleSignal2*(o:typed, signal:string, param1,param2:untyped, body:untyped) =
    let functionName=ident(&"on_functor_clicked_{handleSignalId}")
    handleSignalId.inc
    param1.matchAst(errors):
    of nnkExprColonExpr(`p0` @ nnkIdent, `t0` @ _):
        param2.matchAst(errors):
        of nnkExprColonExpr(`p1` @ nnkIdent, `t1` @ _):
            return quote do:
                proc `functionName`(`p0`:`t0`, `p1`:`t1`) {.exportcpp,cdecl.} = (let this{.inject,used.}=`o`; `body`)
                connect(`o`, `signal`, `functionName`)
