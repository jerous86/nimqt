import os
import strformat

import nimqt
import nimqt/[qpushbutton, qboxlayout, qlabel]

nimqt.init
let app = newQApplication(commandLineParams())

inheritQObject(GuiHandler, QObject):
    var a:int
    var b:QString

    slot_defer on_button_clicked():
        label.setText(Q"")
        # Here we emit the signals. Just like in regular Qt.
        emit this.foo0()
        emit this.foo1(this.a.cint)
        emit this.foo2(this.a.cint, this.b)
        this.a.inc
        this.b = Q(&"Clicked {this.a} times")

    # Define signals
    signal foo0()
    signal foo1(a:int)
    signal foo2(a:int, b:QString)

    # Here we define just some regular slots
    slot_defer on_foo0(): label.setText(Q($label.text & &"\non_foo0()"))
    slot_defer on_foo1(a:int): label.setText(Q($label.text & &"\non_foo1({a})"))
    slot_defer on_foo2(a:int, b:QString): label.setText(Q($label.text & &"\non_foo2({a}, {b})"))

let guiHandler: ptr GuiHandler = newGuiHandler()
let win: ptr QWidget = newQWidget()

win.makeLayout:
    - newQPushButton(Q "Click me!!"):
        connect(SIGNAL "clicked()", guiHandler, SLOT "on_button_clicked()")
    - newQLabel() as label

# Connect our custom signals. Note that we connect the guiHandler signal to a guiHandler slot.
guiHandler.connect(SIGNAL "foo0()", guiHandler, SLOT "on_foo0()")
guiHandler.connect(SIGNAL "foo1(int)", guiHandler, SLOT "on_foo1(int)")
guiHandler.connect(SIGNAL "foo2(int,QString)", guiHandler, SLOT "on_foo2(int,QString)")

nimqt.insertAllSlotImplementations

win.show()
discard app.exec()

