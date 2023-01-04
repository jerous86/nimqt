import strformat
import tables
import sequtils
import strutils
import os
import macros

import nimqt/nimqt_paths


template curFilePath(): string = instantiationInfo(0, fullPaths=true).filename
proc addLibraryIfExists(lib:string):string {.compiletime.} =
    return &"-l{lib}"
    # We get something like "undefined symbols" or "undefined reference" if the library exists,
    # and something else if the library does not exist.
    # TODO it would be nice if we could use ${CXX} instead of g++ or clang
    #let stderrout = staticExec(&"""sh -c "g++ -l{lib} 2>&1" """).toLower
    #if "undefined symbols" in stderrout or "undefined reference" in stderrout: &"-l{lib}"
    #else: ""

{.passc: &"""-std=c++17 -I{curFilePath.parentDir}""".}
when defined(macosx):
    const QtRoot = nimqt_paths.replace_vars("${Qt_root}", allow_run_time=false)
    {.passL: &"-F{QtRoot} -framework QtCore -framework QtGui -framework QtWidgets -framework QtQmlCore -framework QtQml".}
elif defined(linux) or defined(windows):
    const QtInstallHeaders = nimqt_paths.replace_vars("${Qt_install_headers}", allow_run_time=false)
    const QtMajorVersion = nimqt_paths.replace_vars("${Qt_version}", allow_run_time=false).substr(0,0)
    {.passC: &"-I{QtInstallHeaders} -fPIC"}
    {.passL: addLibraryIfExists(&"Qt{QtMajorVersion}Core").}
    {.passL: addLibraryIfExists(&"Qt{QtMajorVersion}Gui").}
    {.passL: addLibraryIfExists(&"Qt{QtMajorVersion}Widgets").}
    #{.passL: addLibraryIfExists(&"Qt{QtMajorVersion}QmlCore").}
    #{.passL: addLibraryIfExists(&"Qt{QtMajorVersion}Qml").}
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
    import nimqt/qtcore/qstring
    import nimqt/qtcore/qobject
    import nimqt/qtgui/qevent
    import nimqt/qtwidgets/qapplication
    {.push warning[UnusedImport]: off.}

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
    ProcType = enum Slot, SlotDefer, SlotDecl, Override, OverrideDefer, OverrideDecl, ConstOverride, ConstOverrideDefer, ConstOverrideDecl

func isDeclaration(pType:ProcType): bool =
    case pType
    of SlotDecl,OverrideDecl,ConstOverrideDecl: true
    else: false
func isSlot(pType:ProcType): bool =
    case pType
    of Slot,SlotDefer,SlotDecl: true
    else: false
func isOverride(pType:ProcType): bool =
    case pType
    of Override, OverrideDefer, OverrideDecl, ConstOverride, ConstOverrideDefer, ConstOverrideDecl: true
    else: false


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
        let signal=n[1][0]
        let signalName:string=signal.strVal
        let callParent=ident("parent_"&signalName)
        let pType=n[0].strVal.parseProcType # e.g. slot or override

        # body is the body of the function (if present)
        # ret is the return type (as a nim type)
        # params
        # decl_only: true if it's without a definition
        let (body, ret, params, decl_only)=if n[1].kind == nnkCall: # No params
                let params=getParams(@[])
                let (body,ret,decl_only) = if pType.isDeclaration: # Declaration for sure
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
                (body, ret, params, decl_only)
            else:
                assert false
                (NimNode(), NimNode(), getParams(@[]), false)
        
        if pType.isOverride:
            var def=quote do:
                proc `callParent`(): `ret` {.importcpp, used.}
            def[3].expectKind nnkFormalParams
            for p in params.nim_param_list: def[3].add p
            cppDefinitions.add def
        
        block:
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
            else: cppDefinitions.add def
    elif n.kind==nnkPragma:
        # E.g. an {.emit: "".} thingie
        structStuff.add n
    else: 
        echo n.repr
        n.expectKind nnkCommand
    
    #echo "processProc returns >>\n",result.repr.indent(4),"<<\n\n"

# TODO support for variables inside a struct
macro inheritQobject*(class:untyped, parentClass:untyped, body:untyped): untyped =
    # echo &"\n\n\ninheritQobject {class.repr} {parentClass.repr} {body.repr.indent(4)}"
    result = newNimNode(nnkStmtList)
    let classNameStr=class.strVal
    let parentClassNameStr=parentClass.strVal
    let newClassPtr = ident("new" & classNameStr)
    
    result.add quote do: {.emit: "\n\n\nstruct " & `classNameStr` & ";".}
    var signals:seq[SignalTuple]
    var cppDefinitions=newNimNode(nnkStmtList) # These must come at the end
    var fwdDeclarations=newNimNode(nnkStmtList)
    var structStuff=newNimNode(nnkStmtList)
    
    body.expectKind(nnkStmtList)
    for decl in body:
        result.add decl.processProc(class, parentClass, signals, fwdDeclarations, cppDefinitions, structStuff)

    result.add quote do:
        type `class` {.importcpp.} = object of `parentClass`
        {.emit:"\n\n\n// Start of forward declarations".}
        `fwdDeclarations`
        {.emit:"\n\n\n// End of forward declarations\n\n".}
        proc `newClassPtr`(): ptr `class` {.importcpp: "new " & $`class` & "(@)", constructor.}
        {.emit: "struct " & $`class` & ": public " & $`parentClass` & " {".}
        {.emit: "\tW_OBJECT(" & $`class` & ")".}
        `structStuff`
        {.emit: "\tpublic:".}
        
        # TODO we should be able to extract protected methods form qt/{class}.nim, and then
        # generated next two lines. But for now, let's just do it simple.
        {.emit: "\tQObject *get_sender() const { return sender(); }".}
        proc get_sender*(this:ptr `class`): ptr QObject {.importcpp:"#.get_sender(@)".}
    

    for signal in signals:
        let signalName:string=signal.node.strVal
        let retType=signal.retType.replaceExportCppType
        let cpp_param_decls=zip(signal.cpp_param_types, signal.cpp_param_names).mapIt(&"{it[0]} {it[1]}").join(", ")
        # param names without this
        let cpp_param_names0=signal.cpp_param_names.join(", ")
        let cpp_param_names=concat(@[unconst(classNameStr,"this")], signal.cpp_param_names).join(", ")
        let override = (case signal.pType
            of Override,OverrideDefer,OverrideDecl: "override"
            of ConstOverride,ConstOverrideDefer,ConstOverrideDecl: "const override"
            else: "")
        result.add quote do: {.emit:"\t" & $`retType` & " " & `signalName` & "(" & `cpp_param_decls` & ") " & `override` & 
            "{ return ::" & `signalName` & "(" & `cpp_param_names` & "); }".}
        
        if signal.pType.isOverride:
            result.add quote do: {.emit:"\t" & $`retType` & " parent_" & `signalName` & "(" & `cpp_param_decls` & ") " &
                "{ return " & `parentClassNameStr` & "::" & `signalName` & "(" & `cpp_param_names0` & "); }".}
        
        if signal.pType.isSlot: result.add quote do: {.emit:"\tW_SLOT(" & `signalName` & ")".}
    
    result.add quote do:
        {.emit: "};\n".}
        {.emit: "W_OBJECT_IMPL(" & $`class` & ")\n".}
    result.add cppDefinitions
    
    # echo "\n\nResult of QObject macro: >>\n", result.repr.indent(4),"\n<<\n\n\n\n"

macro insertSlotImplementations*(className:string) =
    result=newNimNode(nnkStmtList)
    
    let className:string = className.strVal
    if methodImplementations.hasKey(className)==false:
        echo "qt::insertSlotImplementations: WARNING " & className & " not found in methodImplementations. Skipping"
        echo "Only following are available:"
        for key,x in methodImplementations:
            echo key
        return
    for x in methodImplementations[className]:
        result.add x
    methodImplementations.del className
    
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
        # This proc will extract VARNAME name given something like either
        # (a) ```- newQWidget() as VARNAME``` or
        # (b) ```- newQWidget() as VARNAME at (1,1)```
        # It will store VARNAME in result.variableName.
        # result.nimDecl will be set to the nim declaration (e.g. ```let VARNAME=newQWidget()``` for (a))
        # result.pos will contain the position and optional width/height (version (b))
        #   The position must be a tuple of IntLit.
        proc getDeclData(decl:NimNode):tuple[variableName,nimDecl:NimNode,pos:seq[int]] =
            # (a) and (b) differ in the AST in that 
            # decl[2] will be a nnkCommand, rather than an nnkIdent
            decl.expectKind nnkInfix
            
            decl[0].expectKind nnkIdent
            decl[1].expectKind nnkPrefix
            case decl[2].kind
            of nnkIdent: 
                # Version (a)
                let varName:NimNode=decl[2]
                let expr=decl[1][1]
                result=(
                    variableName: varName,
                    nimDecl:(quote do: 
                        let `varName` = `expr`),
                    pos: @[]
                    )
            of nnkCommand:
                # Version (b)
                decl[2][0].expectKind nnkIdent
                decl[2][1].expectKind nnkCommand
                assert decl[2][1][0]==ident("at")
                decl[2][1][1].expectKind nnkTupleConstr

                let varName:NimNode=decl[2][0]
                let expr=decl[1][1]
                result=(
                    variableName: varName,
                    nimDecl:(quote do: 
                        let `varName` = `expr`),
                    pos: @[])
                for x in decl[2][1][1]:
                    x.expectKind nnkIntLit
                    result.pos.add x.intVal.int
            else: 
                assert false

        # echo body.treeRepr
        case body.kind
        of nnkInfix: # ```- EXPR as VARNAME```
            # E.g. ```- newQLabel() as VARNAME```
            let declData=body.getDeclData
            let obj:NimNode=declData.variableName
            let objName:string = $obj

            # If we have specified a position (for QGridLayout), then we need to call a 
            # different function.
            if declData.pos.len>0:
                let pos:seq[int]=declData.pos
                addWidgets.add(quote do: `curObj`.addObjToLayout(`obj`, `pos`))
            else:
                addWidgets.add(quote do: `curObj`.addObjToLayout(`obj`))
            
            decls.add declData.nimDecl
            decls.add quote do:
                assert `obj` != nil
                when `obj`.typeof is ptr QObject: `obj`.setObjectName(newQString(`objName`))
            
            if body.len==4:
                body[3].expectKind nnkStmtList
                for n in body[3]:
                    helper(obj, n)
        of nnkPrefix: # E.g. 
                # ```- useObject label``` or 
                # ```- newQLabel()```
            case body[1].kind
            of nnkCommand: # useObject VARNAME
                body[1][0].expectKind nnkIdent
                body[1][1].expectKind nnkIdent
                case body[1][0].strVal.toLowerAscii.replace("_","")
                of "useobject":
                    let obj=body[1][1]
                    addWidgets.add quote do:
                        `curObj`.addObjToLayout(`obj`)
                else:
                    assert false
            of nnkCall: # EXPR
                let obj=ident(&"{unnamed_vars_prefix}_{unnamed_vars}")
                unnamed_vars.inc
                let expr=body[1]
                addWidgets.add quote do: 
                    addObjToLayout(`curObj`, `obj`)
                decls.add quote do:
                    let `obj` = `expr`
                if body.len==3:
                    body[2].expectKind nnkStmtList
                    for n in body[2]:
                        helper(obj, n)
            of nnkIdent: # This is probably a mistake in the code. Show a nice message.
                echo "body[1] is ",body[1].repr
                echo "body[1].kind is a ",body[1].kind
                echo "but expected either "
                echo "  nnkCommand (e.g. ```useObject VARIABLE```)"
                echo "  nnkCall (e.g. ```newQWidget()```)"
                echo &"Maybe you forgot to add parenthesis? (i.e. ```{body[1].repr}()```"
                assert false
            else:
                echo "curObj.treeRepr ",curObj.treeRepr
                # echo "body.treeRepr ",body.treeRepr
                echo "body[1].kind ",body[1].kind
                echo "body[1] ",body[1].repr
                assert false
        # TODO add support for handling slots directly in the DSL.
        of nnkCall: # e.g. ```connect(...)```
            # When we do a simple call, we insert the current object into the parameter list!
            # This allows a quicker call to e.g. connect.
            var stmt=body
            stmt.insert 1, curObj # Sneakily insert ```this``` into the call parameters!
            stmts.add stmt
        else:
            # E.g. if we do ```discard connect(...)``` we have to supply our own object ...
            stmts.add body
        
    # echo body.treeRepr
    for n in body:
        helper(root, n)
    
    result = newNimNode(nnkStmtList)
    result.add quote do: assert `root` != nil
    result.add quote do: `root`.setLayout `rootLayout`
    result.add quote do: assert `root`.layout != nil
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

