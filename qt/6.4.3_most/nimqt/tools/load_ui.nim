import strformat
import macros
import strutils
import sequtils
import xmlparser, xmltree
import tables
import strtabs
import os

import nimqt
import nimqt/[qobject,quiloader,qbuffer,typeDb]

when defined(macosx):
    {.passL: &"-framework QtUiTools".}
elif defined(linux) or defined(bsd) or defined(windows):
    {.passL: addLibraryIfExists(&"Qt{QtMajorVersion}UiTools").}
else: 
    assert false, "Don't know how to compile on this operating system"

template curFileDir*(): string = instantiationInfo(0, fullPaths=true).filename.parentDir

# This macro load a .ui file. 
# uiFilePath is assumed to be an absolute path. Use the `curFileDir` template to obtain this 
# absolute path.
macro loadUi*(rootWg:typed, uiFilePath:static system.string, 
    createConnections:static bool=true, printLetStatements:static bool=false,
    replaceCustomWidgetsWithBaseclass:static bool=true): untyped =
    # The macro does a couple of things.
    # (1) it reads all the widgets (its type and name) from the .ui file
    #     by looking for <widget> elements.
    # (1b) if replaceCustomWidgetsWithBaseclass is true, then
    #      custom widgets that inherit from some known Qt classes will have those
    #      base classes as their main class, rather than the (probably unknown) custom class.
    #      Note that this will result in a loss of the functionality provided by the original 
    #      custom class.
    # (2) generate a list of `import` statements
    # (3) load the .ui file using Qt's QUiLoader
    # (4) generate a list of `let` statements, pointing to the objects in the .ui files
    # (5) apply the connections
    
    result = newNimNode(nnkStmtList)
    let body=staticRead(uiFilePath)
    
    # (1) load the XML and extract all widgets
    type Object=tuple[class,name:string]
    var
        xml = body.parseXml
        objects:seq[Object]
        connections:seq[(string,string,string,string)]

    if replaceCustomWidgetsWithBaseclass:
        # (1b) replace customwidgets with their baseclass (and hope it exists)
        var customWidgets:Table[string,string]
        for x in xml.mitems:
            if x.tag!="customwidgets": continue

            for wg in x.mitems:
                customWidgets[wg.child("class").innerText]=wg.child("extends").innerText
                wg.clear

        func replaceCustomWidgets(x:var XmlNode) =
            for child in x.mitems:
                if child.kind==xnElement:
                    if child.tag=="widget" and customWidgets.hasKey(child.attr("class")):
                        var attrs:StringTableRef=child.attrs
                        attrs["class"]=customWidgets[child.attr("class")]
                        attrs["name"]=child.attr("name").replace("::","_")
                        child.attrs=attrs
                    child.replaceCustomWidgets
        xml.replaceCustomWidgets


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
    # TODO loadFromString can be slow. Maybe use a specialized database `moduleToImport.txt`?
    let typeDb=typeDb.loadFromString((currentSourcePath().parentDir()/"../../typeDb.txt").readFile)
    result.add quote do:
        {.push hint[DuplicateModuleImport]:off.}
    for o in objects.mapIt(it.class.toLowerAscii).deduplicate:
        assert typeDb.names.hasKey(o.toLowerAscii), o
        let oident=ident(typeDb.xs[typeDb.names[o.toLowerAscii]].toImport)
        result.add quote do:
            import nimqt/`oIdent`
    result.add quote do:
        {.pop.}

    # (3) load the .ui file. Note that this loading happens at runtime!
    #     We do, however, store the XML from the .ui file at compile time,
    #     so just changing the .ui file will not work -- it needs a recompilation!
    let rootWgType=rootWg.getType
    result.add quote do:
        `rootWg`=block:
            var loader=newQUiLoader()
            const body:string=`body`
            let 
                data:QByteArray=(Q body).toUtf8
                file=newQBuffer(data.unsafeAddr)
                rootWg:ptr QWidget = loader.load(file)
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
        let 
            let_stmt = quote do:
                let `name` = cast[ptr `class`](findChildWidget(`rootWg`, Q `strName`))
            check=quote do: 
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
