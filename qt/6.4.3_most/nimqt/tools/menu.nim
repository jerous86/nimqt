import strformat
import macros

import ast_pattern_matching

import nimqt/qtwidgets/qmenu

#[
+ Menu:
    setProperty
    - Action
        setProperty
]#

proc addSeparator0*(m: ptr QMenu) = discard m.addSeparator

template handleHovered*(m: ptr QMenu, body:untyped) = m.handleSignal1(SIGNAL "hovered(QAction *)", action:ptr QAction, body)
template handleTriggered*(m: ptr QMenu, body:untyped) = m.handleSignal1(SIGNAL "triggered(QAction *)", action:ptr QAction, body)

macro makeMenu*(root: ptr QMenu, body:untyped): untyped =
    let unnamed_vars_prefix = root.strVal # Prefix to aid debugging
    var 
        var_index = 0 # Keep track of how many unnamed variables we've seen so far, so we can generate unique names.
        decls:seq[NimNode] # declarations to add
        stmts:seq[NimNode] # statements to add
    
    proc helper(curObj:NimNode, body:NimNode) =
        let
            nextName = &"{unnamed_vars_prefix}_{var_index}"
            objName=ident(nextName)
        var_index.inc
        
        body.matchAst(errors):
        # + MENU_TITLE
        of nnkPrefix(ident"+", `caption` @ nnkStrLit):
            decls.add quote do: (let `objName` {.used.} = `curObj`.addMenu(Q `caption`))
        
        # + MENU_TITLE "as" MENU_NAME
        of nnkInfix(ident"as", nnkPrefix(ident"+", `caption` @ nnkStrLit), `objName` @ nnkIdent):
            decls.add quote do: (let `objName` {.used.} = `curObj`.addMenu(Q `caption`))
        
        # + MENU_TITLE: CHILDREN
        of nnkPrefix(ident"+", `caption` @ nnkStrLit, `children` @ nnkStmtList):
            decls.add quote do: (let `objName` {.used.} = `curObj`.addMenu(Q `caption`))
            for child in children: `objName`.helper(child)

        # + MENU_TITLE "as" MENU_NAME: CHILDREN
        of nnkInfix(ident"as", nnkPrefix(ident"+", `caption` @ nnkStrLit), `objName` @ nnkIdent, `children` @ nnkStmtList):
            decls.add quote do: (let `objName` {.used.} = `curObj`.addMenu(Q `caption`))
            for child in children: `objName`.helper(child)

        
        # - ACTION_TITLE
        of nnkPrefix(ident"-", `caption` @ nnkStrLit):
            decls.add quote do: (let `objName` {.used.} = `curObj`.addAction(Q `caption`))

        # - ACTION_TITLE "as" ACTION_NAME
        of nnkInfix(ident"as", nnkPrefix(ident"-", `caption` @ nnkStrLit), `objName` @ nnkIdent):
            decls.add quote do: (let `objName` {.used.} = `curObj`.addAction(Q `caption`))

        # - ACTION_TITLE: CHILDREN
        of nnkPrefix(ident"-", `caption` @ nnkStrLit, `children` @ nnkStmtList):
            decls.add quote do: (let `objName` {.used.} = `curObj`.addAction(Q `caption`))
            for child in children: `objName`.helper(child)

        # - ACTION_TITLE "as" ACTION_NAME: CHILDREN
        of nnkInfix( ident"as", nnkPrefix(ident"-", `caption` @ nnkStrLit), `objName` @ nnkIdent, `children` @ nnkStmtList):
            decls.add quote do: (let `objName` {.used.} = `curObj`.addAction(Q `caption`))
            for child in children: `objName`.helper(child)


        # * SECTION_TITLE
        of nnkPrefix(ident"*", `caption` @ nnkStrLit):
            decls.add quote do: (let `objName` {.used.} = `curObj`.addSection(Q `caption`))

        # * SECTION_TITLE "as" ACTION_NAME
        of nnkInfix(ident"as", nnkPrefix(ident"*", `caption` @ nnkStrLit), `objName` @ nnkIdent):
            decls.add quote do: (let `objName` {.used.} = `curObj`.addSection(Q `caption`))

        # * SECTION_TITLE: CHILDREN
        of nnkPrefix(ident"*", `caption` @ nnkStrLit, `children` @ nnkStmtList):
            decls.add quote do: (let `objName` {.used.} = `curObj`.addSection(Q `caption`))
            for child in children: `objName`.helper(child)

        # * SECTION_TITLE "as" ACTION_NAME: CHILDREN
        of nnkInfix( ident"as", nnkPrefix(ident"*", `caption` @ nnkStrLit), `objName` @ nnkIdent, `children` @ nnkStmtList):
            decls.add quote do: (let `objName` {.used.} = `curObj`.addSection(Q `caption`))
            for child in children: `objName`.helper(child)

        of `stmt` @ nnkCall: # e.g. ```connect(...)```
            # When we do a simple call, we insert the current object into the parameter list!
            # This allows a quicker call to e.g. connect.
            stmt.insert 1, curObj # Sneakily insert ```this``` into the call parameters!
            stmts.add stmt

        of `anything` @ _:
            stmts.add anything
    
    #echo body.treeRepr
    for n in body:
        helper(root, n)
    
    result = newNimNode(nnkStmtList)
    result.add quote do: discard "Declarations"
    result.add decls
    result.add quote do: discard "/ Declarations"
    result.add quote do: discard "Statements"
    result.add stmts
    result.add quote do: discard "/ Statements follow"
    #echo &"qt::makeMenu\nresult:\n>>\n{result.repr}\n<<\n\n"
