import tables
import strutils
import strformat

import nimqt
import nimqt/[qtextedit, qlineedit]

nimqt.init

type
    Setter = proc(o:ptr QObject, v:string)
    AutoSaveStorage = object
        filepath:string
        settings: Table[string,string]
        objects: seq[(ptr QObject, Setter)]


proc newAutoSaveStorage*(filepath:string): AutoSaveStorage =
    try:
        result.filepath=filepath
        let f=filepath.open(fmRead)
        var buf:seq[char]
        while not f.endOfFile:
            let
                key=f.readLine
                valueLen=f.readLine.parseInt
            buf.setLen(valueLen)
            discard f.readChars(buf)
            discard f.readChar # skip new line
            result.settings[key]=buf.join("")
            
    except IOError:
        # File does not exist probably
        discard

var globalStorage* = newAutoSaveStorage("/tmp/storage.txt")

proc write(storage:AutoSaveStorage) =
    let f=storage.filepath.open(fmWrite)
    for k,v in storage.settings:
        f.write(&"{k}\n{v.len}\n{v}\n")
    f.close

func restore*(storage:AutoSaveStorage, o:ptr QObject, setter:Setter, blockSignals=true) =
    assert ($o.objectName).len>0, "Objects that use autosave must have their name set"
    
    let key = $(o.objectName)
    if storage.settings.hasKey(key):
        let old=o.blockSignals(blockSignals)
        o.setter(storage.settings[key])
        discard o.blockSignals(old)

func restoreAll*(storage:AutoSaveStorage) =
    for (o,setter) in storage.objects:
        storage.restore(o, setter)

func addObject[T](storage:var AutoSaveStorage, o:ptr T, setter:Setter, blockSignals:bool) =
    storage.objects.add (cast[ptr QObject](o), setter)
    storage.restore(cast[ptr QObject](o), setter, blockSignals)

proc save[T](storage:var AutoSaveStorage, o:ptr T, value:string) =
    assert ($o.objectName).len>0, "Objects that use autosave must have their name set"
    storage.settings[$(o.objectName)] = value
    storage.write

inheritQobject(Handler, QObject):
    slot_defer on_QLineEdit_textChanged(s:QString): cast[ptr QLineEdit](this.getSender()).save(globalStorage)
    slot_defer on_QTextEdit_textChanged(): cast[ptr QTextEdit](this.getSender()).save(globalStorage)
let handler=newHandler()

when true: # QLineEdit
    proc save*(o:ptr QLineEdit, storage:var AutoSaveStorage=globalStorage) = storage.save(o, $o.text)
    proc autoSave*(o:ptr QLineEdit, blockSignals=true) =
        o.connect(SIGNAL "textChanged(QString)", handler, SLOT "on_QLineEdit_textChanged(QString)")
        globalStorage.addObject o, proc(o:ptr QObject, v:string) = cast[ptr QLineEdit](o).setText(Q v), blockSignals

when true: # QTextEdit
    proc save*(o:ptr QTextEdit, storage:var AutoSaveStorage=globalStorage) = storage.save(o, $o.toPlainText)
    proc autoSave*(o:ptr QTextEdit, blockSignals=true) =
        o.connect(SIGNAL "textChanged()", handler, SLOT "on_QTextEdit_textChanged()")
        globalStorage.addObject o, proc(o:ptr QObject, v:string) = cast[ptr QTextEdit](o).setText(Q v), blockSignals

nimqt.insertAllSlotImplementations()

