import strformat
import macros
import sequtils

import ast_pattern_matching

import nimqt/qtwidgets/qlayout
import nimqt/qtwidgets/qsplitter
import nimqt/qtwidgets/qboxlayout
import nimqt/qtwidgets/qgridlayout
import nimqt/qtwidgets/qwidget


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
    if root.layout==nil:
        root.setLayout child
    else:
        echo &"Warning: nimqt.layout: addObjToLayout(QWidget, QLayout): widget's ({root.objectName}) " &
            "layout has already been set -- implicitly creating a child widget, and setting its layout to child"
        let wg=newQWidget()
        wg.setLayout child
        root.layout.addWidget wg

proc addObjToLayout*(root:ptr QWidget, child:ptr QWidget) =
    assert root!=nil
    assert root.layout!=nil
    assert child!=nil
    addObjToLayout(root.layout, child)




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
    #echo &"qt::makeLayout\nresult:\n>>\n{result.repr}\n<<\n\n"

template makeLayout*(root:ptr QWidget, body:untyped): untyped = makeLayout2(root, newQVBoxLayout(), body)
template makeLayoutH*(root:ptr QWidget, body:untyped): untyped = makeLayout2(root, newQHBoxLayout(), body)
template makeLayoutV*(root:ptr QWidget, body:untyped): untyped = makeLayout2(root, newQVBoxLayout(), body)
template makeLayoutGrid*(root:ptr QWidget, body:untyped): untyped = makeLayout2(root, newQGridLayout(), body)
