# This template.nim contains just the minimum amount of code to create a simple nim script that uses nimqt.
import os

import nimqt
import nimqt/[qlabel,qlineedit,qtextedit,qcombobox,qcheckbox,qradiobutton]
import nimqt/tools/autosaver

nimqt.init
let app = newQApplication(commandLineParams())

let win = newQWidget()

autosaver.autoSaveStorage = newAutoSaveStorage("/tmp/custom-path.txt")

win.makeLayout:
    - newQLabel(Q"The following widgets are saved and restored automatically. Modify them, and restart this program!")
    - newQLineEdit() as txtLineEdit: autoSave()
    - newQTextEdit() as txtQTextEdit: autoSave()
    - newQComboBox() as combobox:
        addItem(Q"0")
        addItem(Q"1")
        addItem(Q"2")
        autoSave() # We must call this function after the combobox has been filled
    - newQCheckBox() as checkbox:
        setTriState(true)
        autoSave()
    - newQRadioButton(Q"Option 1") as opt1: autoSave()
    - newQRadioButton(Q"Option 2") as opt2: autoSave()

win.show()
discard app.exec()
