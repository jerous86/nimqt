import tables
import strutils
import strformat

import nimqt
import nimqt/[qtextedit, qlineedit, qcombobox, qcheckbox, qradiobutton, qlistwidget]

nimqt.init

type
    Setter = proc(o:ptr QObject, v:string)
    AutoSaveStorage = object
        filepath:string
        settings: Table[string,string]
        # Track all objects, so we can restore and store them easily
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
            if valueLen>0:
                discard f.readChars(buf)
            discard f.readChar # skip new line
            result.settings[key]=buf.join("")
            
    except IOError:
        # File does not exist probably
        discard

var autoSaveStorage* = newAutoSaveStorage("/tmp/storage.txt")

proc write(storage:AutoSaveStorage) =
    let f=storage.filepath.open(fmWrite)
    for k,v in storage.settings:
        f.write(&"{k}\n{v.len}\n{v}\n")
    f.close

proc restore*(storage:AutoSaveStorage, o:ptr QObject, setter:Setter, blockSignals:bool) =
    assert ($o.objectName).len>0, "Objects that use autosave must have their name set"
    
    let key = $(o.objectName)
    if storage.settings.hasKey(key):
        let old=o.blockSignals(blockSignals)
        o.setter(storage.settings[key])
        discard o.blockSignals(old)

proc restoreAll*(storage:AutoSaveStorage, blockSignals:bool) =
    for (o,setter) in storage.objects:
        storage.restore(o, setter, blockSignals)

proc addObject[T](storage:var AutoSaveStorage, o:ptr T, setter:Setter, blockSignals:bool) =
    storage.objects.add (cast[ptr QObject](o), setter)
    storage.restore(cast[ptr QObject](o), setter, blockSignals)

proc save[T](storage:var AutoSaveStorage, o:ptr T, value:string) =
    assert ($o.objectName).len>0, "Objects that use autosave must have their name set"
    storage.settings[$(o.objectName)] = value
    storage.write

inheritQobject(Handler, QObject):
    slot_defer on_QLineEdit_textChanged(s:QString): cast[ptr QLineEdit](this.getSender()).save(autoSaveStorage)
    slot_defer on_QTextEdit_textChanged(): cast[ptr QTextEdit](this.getSender()).save(autoSaveStorage)
    slot_defer on_QComboBox_currentIndexChanged(i:int): cast[ptr QComboBox](this.getSender()).save(autoSaveStorage)
    slot_defer on_QCheckBox_stateChanged(i:int): cast[ptr QCheckBox](this.getSender()).save(autoSaveStorage)
    slot_defer on_QRadioButton_toggled(b:bool): cast[ptr QRadioButton](this.getSender()).save(autoSaveStorage)
    slot_defer on_listWidget_rowChanged(row:int): cast[ptr QListWidget](this.getSender()).save(autoSaveStorage)
let handler=newHandler()

when true: # QLineEdit
    proc save*(o:ptr QLineEdit, storage:var AutoSaveStorage=autoSaveStorage) = storage.save(o, $o.text)
    proc autoSave*(o:ptr QLineEdit, blockSignals=true) =
        # NOTE: this will save on every key stroke. We could use e.g. the editingFinished signal,
        # but then the object will not be saved when its textvalue is set programmatically, hence
        # we prefer to keep it like this.
        o.connect(SIGNAL "textChanged(QString)", handler, SLOT "on_QLineEdit_textChanged(QString)")
        autoSaveStorage.addObject o, proc(o:ptr QObject, v:string) = cast[ptr QLineEdit](o).setText(Q v), blockSignals

when true: # QTextEdit
    proc save*(o:ptr QTextEdit, storage:var AutoSaveStorage=autoSaveStorage) = storage.save(o, $o.toPlainText)
    proc autoSave*(o:ptr QTextEdit, blockSignals=true) =
        o.connect(SIGNAL "textChanged()", handler, SLOT "on_QTextEdit_textChanged()")
        autoSaveStorage.addObject o, proc(o:ptr QObject, v:string) = cast[ptr QTextEdit](o).setText(Q v), blockSignals

when true: # QComboBox
    # We only store the index, nothing else
    proc save*(o:ptr QComboBox, storage:var AutoSaveStorage=autoSaveStorage) = storage.save(o, $o.currentIndex)
    proc autoSave*(o:ptr QComboBox, blockSignals=true) =
        o.connect(SIGNAL "currentIndexChanged(int)", handler, SLOT "on_QComboBox_currentIndexChanged(int)")
        autoSaveStorage.addObject o, proc(o:ptr QObject, v:string) = cast[ptr QComboBox](o).setCurrentIndex(v.parseInt.cint), blockSignals

when true: # QCheckBox
    proc save*(o:ptr QCheckBox, storage:var AutoSaveStorage=autoSaveStorage) = storage.save(o, $o.checkState.int)
    proc autoSave*(o:ptr QCheckBox, blockSignals=true) =
        o.connect(SIGNAL "stateChanged(int)", handler, SLOT "on_QCheckBox_stateChanged(int)")
        autoSaveStorage.addObject o, proc(o:ptr QObject, v:string) = cast[ptr QCheckBox](o).setCheckState(v.parseInt.Qt_CheckState), blockSignals

when true: # QRadioButton
    proc save*(o:ptr QRadioButton, storage:var AutoSaveStorage=autoSaveStorage) = storage.save(o, $o.isChecked.int)
    proc autoSave*(o:ptr QRadioButton, blockSignals=true) =
        o.connect(SIGNAL "toggled(bool)", handler, SLOT "on_QRadioButton_toggled(bool)")
        autoSaveStorage.addObject o, proc(o:ptr QObject, v:string) = cast[ptr QRadioButton](o).setChecked(v.parseInt.bool), blockSignals

when true: # QListWidget
    # Only stores the current selected row
    proc save*(o:ptr QListWidget, storage:var AutoSaveStorage=autoSaveStorage) = storage.save(o, $o.currentRow.int)
    proc autoSave*(o:ptr QListWidget, blockSignals=true) =
        o.connect(SIGNAL "currentRowChanged(int)", handler, SLOT "on_listWidget_rowChanged(int)")
        autoSaveStorage.addObject o, proc(o:ptr QObject, v:string) = cast[ptr QListWidget](o).setCurrentRow(v.parseInt.cint), blockSignals

nimqt.insertAllSlotImplementations()

