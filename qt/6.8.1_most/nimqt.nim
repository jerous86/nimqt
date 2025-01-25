import strformat
import tables
import sequtils
import strutils
import os
import macros

import nimqt/nimqt_paths
# import nimqt/typeDb

template curFilePath(): string = instantiationInfo(0, fullPaths=true).filename
when defined(macosx):
    const QtRoot = nimqt_paths.replace_vars("${Qt_root}", allow_run_time=false, enable_path_check=false)
    {.passL: &"-F{QtRoot} -framework QtCore -framework QtGui -framework QtWidgets -framework QtQmlCore -framework QtQml".}
    {.passc: &"""-std=c++17 -I{curFilePath.parentDir}""".}
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
    {.passc: &"""-std=c++17 -I{curFilePath.parentDir}""".}
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
    doAssert false, "Don't know how to compile on this operating system"

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

    ParamInfo = object
        isConst*:bool
        cpp_param_type*:string
        cpp_param_name*:string
        nim_param*:NimNode
    ParamsInfo = seq[ParamInfo]
    ProcType = enum
        Slot, SlotDefer, SlotDecl,
        Override, OverrideDefer, OverrideDecl,
        ConstOverride, ConstOverrideDefer, ConstOverrideDecl,
        Signal,
        Member

func `$`(pi:ParamInfo):string = &"ParamInfo{{ isConst:{pi.isConst} cpp_param_name:{pi.cpp_param_name} cpp_param_type:{pi.cpp_param_type} nim:{pi.repr} }}"

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

func replaceExportCppType(n:NimNode): NimNode =
    if n.kind == nnkPtrTy: return n
    if n.kind == nnkVarTy: return n
    elif n.kind == nnkCommand and n[0]==ident("const_var"): 
        # NOTE:const_var We come here in case we have something like
        # ```link:const_var QUrl```
        # We then just return QUrl
        n[0][1]
    elif n.kind == nnkCommand and n[0]==ident("const_ptr"): nnkPtrTy.newTree(n[0][1])
    elif n.strVal=="int": return ident("cint")
    else: return n

func toCppType(n:NimNode): string =
    doAssert n.kind!=nnkRefTy # ref is a nim thing, and does not translate to c++!

    if n.kind == nnkPtrTy: &"{n[0].toCppType} *"
    elif n.kind == nnkVarTy: &"{n[0].toCppType} &"
    elif n.kind == nnkCommand and n[0]==ident("const_var"): &"const {n[1].toCppType} &"
    elif n.kind == nnkCommand and n[0]==ident("const_ptr"): &"const {n[1].toCppType} *"
    elif n.strVal=="cint": &"int"
    else: n.strVal

func nodeToParamInfo(param:NimNode): ParamInfo =
    param.expectKind(nnkExprColonExpr)
    result.cpp_param_name = &"{param[0]}"
    result.cpp_param_type = param[1].toCppType
    if param[1].kind == nnkCommand and param[1][0]==ident("const_var"):
        # See NOTE:const_var
        result.nim_param = nnkIdentDefs.newTree(param[0], nnkVarTy.newTree(param[1][1]), newNimNode(nnkEmpty))
    elif param[1].kind == nnkCommand and param[1][0]==ident("const_ptr"):
        result.nim_param = nnkIdentDefs.newTree(param[0], nnkPtrTy.newTree(param[1][1]), newNimNode(nnkEmpty))
    else:
        result.nim_param = nnkIdentDefs.newTree(param[0], param[1].replaceExportCppType, newNimNode(nnkEmpty))

# For a list of NimNodes, obtained from a function's
# parameter list, we construct several useful versions of it:
# cpp_param_names: the name used in the signature
# cpp_param_types: the C++ type
# nim_param_ilst: the NimNode representation for the signature
func getParams(class:NimNode, params:seq[NimNode], withThis=true): ParamsInfo =
    if withThis:
        result.add ParamInfo(
            nim_param: nnkIdentDefs.newTree(
                newIdentNode("this"), 
                nnkPtrTy.newTree(class), 
                newNimNode(nnkEmpty))
            )
    for param in params:
        result.add param.nodeToParamInfo

func insertNimParams(signature:var NimNode, params:seq[ParamInfo], withThis:bool) =
    signature[3].expectKind nnkFormalParams
    if withThis:
        for p in params:
            signature[3].add p.nim_param
    else:
        for p in params[1..^1]:
            signature[3].add p.nim_param
                
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
        else: doAssert(false, &"Unknown proc type '{s}'"); Slot

    # Replaces something like ```x:ref int``` with ```x:ptr int```
    # proc replaceRefByPtr(n:NimNode): NimNode =
    #     result=n.copyNimTree
    #     if n[1].kind == nnkRefTy:
    #         result[1]=nnkPtrTy.newTree(n[1][0])
    
    case n.kind
    of nnkCommand:
        # This is what we would expect usually, something like a "slot foo()" or a "member faaa()" ...
        let 
            signal=n[1][0]
            signalName:string=signal.strVal
            callParent=ident("parent_"&signalName)
            pType=n[0].strVal.parseProcType # e.g. slot or override or signal

        # body is the body of the function (if present)
        # ret is the return type (as a nim type)
        # params
        # decl_only: true if it's without a definition
        let (body, ret, params, decl_only)=
            if n[1].kind == nnkCall: # No params
                let params=class.getParams(@[])
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
                    let
                        retType=ret.replaceExportCppType
                        retTypeCpp=retType.toCppType
                    fwdDeclarations.add quote do: 
                        {.emit: "/*TYPESECTION*/" & $`retTypeCpp` & " " & `signalName` & "(" & `classNameStr` & " *o); // fwd without params".}
                    case pType
                    of Member:
                        # Just the same as above, but with friend prepended
                        friends.add quote do: {.emit: "\tfriend " & $`retTypeCpp` & " " & `signalName` & "(" & `classNameStr` & " *o); // fwd without params".}
                    else: discard
                (body, ret, params, decl_only)
            
            elif n[1].kind == nnkObjConstr: # With params, e.g. "slot foo(b:int):bool = BODY"
                let params=class.getParams(n[1][1..^1])
                let (body,ret,decl_only) = if pType.isDeclaration: # Declaration for sure
                        (NimNode(), (if n.len==3 and n[2].kind==nnkStmtList: n[2][0] else: ident("void")), true)
                    else:
                        # if kind==nnkStmtList: With params, with return type e.g. "slot foo(): bool = BODY"
                        # if kind!=nnkStmtList: With params, no return type
                        if n[2][0].len>1 and n[2][0][1].kind==nnkStmtList: (n[2][0][1], n[2][0][0], false)
                        else: (n[2], ident("void"), false)
                    
                let
                    retType=ret.replaceExportCppType
                    retTypeCpp=retType.toCppType
                
                signals.add SignalTuple(pType:pType, 
                    retType:retType, 
                    node:signal,
                    cpp_param_types: params.mapIt(it.cpp_param_type).filterIt(it.len>0),
                    cpp_param_names: params.mapIt(it.cpp_param_name).filterIt(it.len>0)
                    )

                block:
                    # Add forward declaration. See NOTE:fwdDeclaration
                    let cpp_list=zip(
                        params.mapIt(it.cpp_param_type).filterIt(it.len>0), 
                        params.mapIt(it.cpp_param_name).filterIt(it.len>0)
                        ).mapIt(&"{it[0]} {it[1]}").join(", ")
                    fwdDeclarations.add quote do:
                        {.emit: "/*TYPESECTION*/" & $`retTypeCpp` & " " & `signalName` & "(" & `classNameStr` & " *o, " & `cpp_list` & "); // fwd with params".}
                
                    case pType
                    of Member:
                        # Just the same as fwdDeclarations, but with "friend" prepended
                        friends.add quote do:
                            {.emit: "\tfriend " & $`retTypeCpp` & " " & `signalName` & "(" & `classNameStr` & " *o, " & `cpp_list` & "); // friend with params".}
                    else: discard
                (body, ret, params, decl_only)
            else:
                doAssert false
                (NimNode(), NimNode(), class.getParams(@[]), false)
        
        if pType.isOverride: # and pType!=Signal:
            var def=quote do:
                proc `callParent`(): `ret` {.importcpp, used.}
            def[3].expectKind nnkFormalParams
            for p in params: def[3].add p.nim_param
            cppDefinitions.add def
        
        # nim2 appends _p{index} to param names, so here we do the same ...
        func appendParamIndex(paramNames:seq[string]): seq[string] = (0..<paramNames.len).mapIt(&"{paramNames[it]}_p{it}")

        block:
            case pType
            of Signal:
                let importcpp = &"#.{signal}(@)"
                var decl0=quote do:
                    proc `signal`() {.importcpp: `importcpp`.}
                decl0.insertNimParams(params, true)
                cppDefinitions.add decl0
            of Slot, SlotDefer, SlotDecl,
                Override, OverrideDefer, OverrideDecl, 
                ConstOverride, ConstOverrideDefer, ConstOverrideDecl,
                Member:
                 # Create the declaration
                let
                    validParamTypes0:seq[string]=params.filterIt(it.cpp_param_type.len>0).mapIt(it.cpp_param_type)
                    validParamNames0:seq[string]= params.filterIt(it.cpp_param_type.len>0).mapIt(it.cpp_param_name)
                    validParamTypes:seq[string]=concat(@[&"{classNameStr}*"], validParamTypes0)
                    validParamNames:seq[string]=concat(@["this"], validParamNames0)
                    xs=zip(validParamTypes, validParamNames.appendParamIndex).mapIt(&"{it[0]} {it[1]}")
                    codegenDecl:string = &"""$1 $2({xs.join(", ")}) /*codegenDecl*/"""
                    
                when true:
                    # create the nim declaration, without parameters
                    var decl0=quote do:
                        proc `signal`(): `ret` {.exportcpp,codegenDecl:`codegenDecl`.}
                    decl0.insertNimParams(params, withThis=true)

                when true:
                    # create the nim definition, without parameters
                    var def0=quote do:
                        proc `signal`(): `ret` {.exportcpp.} = `body`
                    def0.insertNimParams(params, withThis=true)

                let def=(if decl_only: decl0 else: def0)

                if pType in [SlotDefer, OverrideDefer, ConstOverrideDefer]:
                    if methodImplementations.hasKey(classNameStr)==false:
                        methodImplementations[classNameStr] = @[]
                    methodImplementations[classNameStr].add def
                    fwdDeclarations.add decl0 # A forward declaration might be useful
                else: 
                    cppDefinitions.add def
    of nnkPragma:
        # E.g. an {.emit: "".} thingie
        structStuff.add n
    else: 
        echo n.repr
        n.expectKind nnkCommand
    
    # echo "processProc returns >>\n",result.repr.indent(4),"<<\n\n"

proc processConstructor(n:NimNode,
        class:NimNode, parentClass:NimNode,
        structStuff:var NimNode,
        nimMethods:var NimNode,
    ): NimNode =
    # A constructor looks like
    # "constructor" "(" PARAMS ")"
    # This will call the constructor of the baseclass with PARAMS
    # To initialize other stuff, you'll need to add a method like initialize or sth
    result = newNimNode(nnkStmtList)
    let
        classNameStr:string=class.strVal
        parentClassNameStr:string=parentClass.strVal
        params:seq[ParamInfo]=class.getParams(n[1..^1], false)
        cpp_param_names0=params.mapIt(it.cpp_param_name).join(", ")
        cpp_param_types0:seq[string]=params.mapIt(it.cpp_param_type)
        cpp_param_decls0:string=zip(params.mapIt(it.cpp_param_type), params.mapIt(it.cpp_param_name)).mapIt(&"{it[0]} {it[1]}").join(", ")
        className=ident(classNameStr)
        constructorName=ident(&"new{classNameStr}")
        codegenDecl = &"new {classNameStr}(@)"
    structStuff.add quote do: 
        {.emit:"\t public: " & `classNameStr` & "(" & `cpp_param_decls0.join(", ")` & "): " & `parentClassNameStr` & "(" & `cpp_param_names0.join(",")` & ") { }".}
    
    var def=quote do:
        proc `constructorName`*(): ptr `className` {.importcpp:`codegenDecl`.}
    def.insertNimParams(params, withThis=true)
    nimMethods.add def
    
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


macro inheritobject*(class:untyped, parentClass:untyped, plainObject:bool, body:untyped) =
    func unconst_ptr(class:string, varName:string): string = &"(({class} *) {varName})"
    func unconst(class:string, varName:string): string = &"(({class}) {varName})"

    #echo &"\n\n\ninheritQobject {class.repr} {parentClass.repr} {plainObject} {body.repr.indent(4)}"
    result = newNimNode(nnkStmtList)
    let
        classNameStr=class.strVal
        parentClassNameStr=parentClass.strVal
        newClassPtr = ident("new" & classNameStr)
        isPlainObject=plainObject.boolVal
        isQObject=not isPlainObject
    
    result.add quote do: {.emit: "\n\n\nstruct " & `classNameStr` & ";".}
    var
        signals:seq[SignalTuple]
        cppDefinitions=newNimNode(nnkStmtList) # These must come at the end
        fwdDeclarations=newNimNode(nnkStmtList)
        structStuff=newNimNode(nnkStmtList)
        friends=newNimNode(nnkStmtList)
        memberVariables=newNimNode(nnkStmtList)
        nimMethods=newNimNode(nnkStmtList)

    body.expectKind(nnkStmtList)
    for decl in body:
        case decl.kind
        of nnkCommand: result.add decl.processProc(class, parentClass, signals, fwdDeclarations, cppDefinitions, structStuff, friends)
        of nnkObjConstr: result.add decl.processConstructor(class, parentClass, structStuff, nimMethods)
        of nnkVarSection: decl.processVar(class, memberVariables)
        of nnkPragma: structStuff.add decl
        of nnkDiscardStmt: discard
        else:
            echo decl.treeRepr
            doAssert(false, &"inheritQobject2: Expected nnkCommand, nnkVarSection, nnkPragma or nnkDiscardStmt, but got {decl.kind}")

    var
        structDeclaration=newNimNode(nnkStmtList)
        structMethodDefs=newNimNode(nnkStmtList)

    result.add quote do: {.emit: "/*TYPESECTION*/ /*FWD0*/ struct " & $`classNameStr` & ";".}
    structDeclaration.add quote do:
        # This include statement is not necessary when we use inheritQObject2 inside the module from which
        # we want to use the object.
        # However, if we want to have custom widgets in their own module, then in the importer module it needs
        # to know about this class.
        # TODO some systems don't have the modules flattened, and require something like QtCore/QtObject -- use typeDb for this.
        {.emit: "#include <" & ($`parentClass`) & ">".}
        {.emit: "struct " & $`class` & ": public " & $`parentClass` & " {".}
    if isQObject:
        structDeclaration.add quote do:
            {.emit: "\tW_OBJECT(" & $`class` & ")".}
    structDeclaration.add quote do:
        `structStuff`
        `friends`
    
    result.add quote do:
        type `class`* {.importcpp.} = object of `parentClass`
        {.emit:"/*TYPESECTION*/\n\n\n// Start of forward declarations".}
        `fwdDeclarations`
        {.emit:"/*TYPESECTION*/\n\n\n// End of forward declarations\n\n".}
        proc `newClassPtr`*(): ptr `class` {.importcpp: "new " & $`class` & "(@)" .}
        `nimMethods`
        `memberVariables`
    
    if isQObject:
        # TODO we should be able to extract protected methods form qt/{class}.nim, and then
        # generated lines. But for now, let's just do it simple.
        result.add quote do:
            proc get_sender*(this:ptr `class`): ptr QObject {.importcpp:"#.get_sender(@)".}
        structDeclaration.add quote do: {.emit: "\tpublic: QObject *get_sender() const { return sender(); }\n".}


    for signal in signals:
        let 
            signalName:string=signal.node.strVal
            # param decls/names without this
            cpp_param_decls0:string=zip(signal.cpp_param_types, signal.cpp_param_names).mapIt(&"{it[0]} {it[1]}").join(", ")
            cpp_param_names0:string=signal.cpp_param_names.join(", ")
        
        case signal.pType
        of Signal:
            let signalNameAndParams = concat(@[signalName], signal.cpp_param_names).join(", ")
            doAssert isQObject, "Cannot use signal in regular inherited object"
            structDeclaration.add quote do: 
                {.emit:"\tvoid " & `signalName` & "(" & `cpp_param_decls0` & ") W_SIGNAL(" & `signalNameAndParams` & ")".}
        of Member:
            discard
            
        of Slot, SlotDefer, SlotDecl,
            Override, OverrideDefer, OverrideDecl,
            ConstOverride, ConstOverrideDefer, ConstOverrideDecl:
            let
                retType=signal.retType.replaceExportCppType
                retTypeCpp=retType.toCppType
                #cpp_param_names=concat(@[unconst(classNameStr,"this")], signal.cpp_param_names).join(", ")
                cpp_unconst_param_names=concat(
                    @[unconst_ptr(classNameStr,"this")],
                    zip(signal.cpp_param_names, signal.cpp_param_types).mapIt(unconst(it[1].replace("const ",""), it[0]))
                    ).join(", ")
                constness = (case signal.pType
                    of ConstOverride,ConstOverrideDefer,ConstOverrideDecl: "const "
                    else: "")
                override = (case signal.pType
                    of Override,OverrideDefer,OverrideDecl: "override"
                    of ConstOverride,ConstOverrideDefer,ConstOverrideDecl: "const override"
                    else: "")

            structDeclaration.add quote do: {.emit:"\t" & $`retTypeCpp` & " " & `signalName` & "(" & `cpp_param_decls0` & ") " & `override` & ";".}
            structMethodDefs.add quote do: {.emit:"\t" & $`retTypeCpp` & " " & $`class` & "::" & `signalName` & "(" & `cpp_param_decls0` & ") " & `constness` & 
                 "{ return ::" & `signalName` & "(" & `cpp_unconst_param_names` & "); }".}

            if signal.pType.isOverride:
                structDeclaration.add quote do: {.emit:"\t" & $`retTypeCpp` & " parent_" & `signalName` & "(" & `cpp_param_decls0` & ") { return " & `parentClassNameStr` & "::" & `signalName` & "(" & `cpp_param_names0` & "); }".}
            
            if signal.pType.isSlot:
                doAssert isQObject, "Cannot use slots in regular inherited object"
                structDeclaration.add quote do: {.emit:"\tW_SLOT(" & `signalName` & ")".}
    
    structDeclaration.add quote do: {.emit: "};\n".}
    if isQObject:
        structMethodDefs.add quote do: {.emit: "W_OBJECT_IMPL(" & $`class` & ")\n".}
    result.add cppDefinitions
    result.add structDeclaration
    result.add structMethodDefs
    
    block:
        let id=ident(&"import_{class}")
        result.add quote do:
            template `id`*() = `structDeclaration`
    
    #echo "\n\nResult of QObject macro: >>\n", result.repr.indent(4),"\n<<\n\n\n\n"

template inheritQobject*(class:untyped, parentClass:untyped, body:untyped) =
    inheritobject(class, parentClass, false, body)

macro insertSlotImplementations*(className:typed) =
    result=newNimNode(nnkStmtList)
    
    let classNameStr:string = className.strVal
    if methodImplementations.hasKey(classNameStr)==false:
        echo &"qt::insertSlotImplementations: WARNING {classNameStr} not found in methodImplementations. Skipping"
        echo "Only following are available:"
        echo toSeq(methodImplementations.keys).join("\n").indent(1)
        return
    for x in methodImplementations[classNameStr]:
        result.add x
    methodImplementations.del classNameStr
    
macro insertAllSlotImplementations*() =
    result=newNimNode(nnkStmtList)
    for k,v in methodImplementations:
        result.add v
    methodImplementations.clear

macro registerArgType*(t:typedesc) =
    quote do:
        {.emit: "W_REGISTER_ARGTYPE(" & $`t` & ")" .}
        {.emit: "W_REGISTER_ARGTYPE(" & $`t` & "*)" .}
        {.emit: "W_REGISTER_ARGTYPE(" & $`t` & "&)" .}

import nimqt/tools/signals
import nimqt/tools/layout


# This is used in tools/layout and tools/menu
# When have something like
# win.makeLayout(rootLayout):
#    - QPushButton() as btn
# then without the macro 'as' below, there would be a parsing error.
# But with this macro, everything is fine. 
macro `as`*(x,y:untyped) = discard

proc deletePtr*[T](x: ptr T) {.importcpp: "delete #", nodecl.}
        
export signals
export layout
