import strformat
import macros
import strutils
import sequtils
import xmlparser, xmltree

import nimqt
import nimqt/[qobject,quiloader,qbuffer]

when defined(macosx):
    {.passL: &"-framework QtUiTools".}
elif defined(linux) or defined(windows):
    {.passL: addLibraryIfExists(&"Qt{QtMajorVersion}UiTools").}
else: 
    assert false, "Don't know how to compile on this operating system"

template curFileDir*(): string = instantiationInfo(0, fullPaths=true).filename.parentDir

# This macro load a .ui file. 
# uiFilePath is assumed to be an absolute path. Use the `curFileDir` template to obtain this 
# absolute path.
macro loadUi*(rootWg:typed, uiFilePath:static system.string, createConnections:static bool=true, printLetStatements:static bool=false): untyped =
    # The macro does a couple of things.
    # (1) it reads all the widgets (its type and name) from the .ui file
    #     by looking for <widget> elements.
    # (2) generate a list of `import` statements
    # (3) load the .ui file using Qt's QUiLoader
    # (4) generate a list of `let` statements, pointing to the objects in the .ui files
    # (5) apply the connections
    
    result = newNimNode(nnkStmtList)
    let body=staticRead(uiFilePath)
    
    # (1) load the XML and extract all widgets
    var xml = body.parseXml
    type Object=tuple[class,name:string]
    var objects:seq[Object]
    var connections:seq[(string,string,string,string)]

    func getObjectsRec(x:XmlNode, objects:var seq[Object]) =
        for child in x:
            if child.kind==xnElement:
                if child.tag=="widget" and child.attr("name").len>0:
                    objects.add((class:child.attr("class"), name:child.attr("name")))
                elif child.tag=="connection":
                    connections.add (
                        $child.findAll("sender")[0].innerText,   $child.findAll("signal")[0].innerText, 
                        $child.findAll("receiver")[0].innerText, $child.findAll("slot")[0].innerText
                        )
                child.getObjectsRec(objects)
    xml.getObjectsRec(objects)

    # (2) add import statements
    for o in objects.mapIt(it.class.toLowerAscii).deduplicate:
        let oident=ident(o)
        result.add quote do:
            import nimqt/`oIdent`

    # (3) load the .ui file. Note that this loading happens at runtime!
    #     We do, however, store the XML from the .ui file at compile time,
    #     so just changing the .ui file will not work -- it needs a recompilation!
    let rootWgType=rootWg.getType
    result.add quote do:
        `rootWg`=block:
            var loader=newQUiLoader()
            const body:string=`body`
            let data:QByteArray=(Q body).toUtf8
            let file=newQBuffer(data.unsafeAddr)
            let rootWg:ptr QWidget = loader.load(file)
            cast[`rootWgType`](rootWg)

    # (4) generate a list of `let` statements, and assign them to objects.
    proc findChildWidget(this: ptr QObject, name:QString): ptr QWidget {.header:qobject.headerFile, importcpp:"#.findChild<QWidget*>(#)".}
    var for_print=newNimNode(nnkStmtList)
    for o in objects:
        let 
            name=ident(o.name)
            strName=o.name
            class=ident(o.class)
        assert strName.len>0
        let let_stmt = quote do:
            let `name` = cast[ptr `class`](findChildWidget(rootWg, Q `strName`))
        let check=quote do: 
            if `name`==nil: echo "Warning: ",`strName`," is nil!"
        result.add let_stmt
        result.add check

        if printLetStatements:
            for_print.add let_stmt

    # (5) apply connections
    if createConnections:
        for (sender,signal,receiver,slot) in connections:
            let 
                senderObj=ident(sender)
                receiverObj=ident(receiver)
            result.add quote do:
                connect(`senderObj`, SIGNAL `signal`, `receiverObj`, SLOT `slot`)
    
    if printLetStatements:
        echo "\n\nNow follow the let statements for ",uiFilePath
        echo "BEGIN"
        echo for_print.repr
        echo "END\n\n"
