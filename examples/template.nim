# This template.nim contains just the minimum amount of code to create a simple nim script that uses nimqt.
import os

import nimqt

nimqt.init
let app = newQApplication(commandLineParams())

#[
import nimqt/qlabel
import nimqt/qlineedit
inheritQObject(GuiHandler, QObject):
    var counter:int
    slot_defer on_helloWorld_clicked():
        echo "Hello world clicked"

let guiHandler: ptr GuiHandler = newGuiHandler()
let win = newQWidget()

win.makeLayout:
    - newQLabel(Q"This is a label")
    - newQLineEdit(Q "Toggle (writes to stdout)"):
        handleConnect1(SIGNAL "textChanged(QString)"): echo this.text
]#

win.show()
discard app.exec()
