import os

import nimqt
import nimqt/qpushbutton
import nimqt/tools/[menu,layout]

nimqt.init

let app = newQApplication(commandLineParams())

let
    mm=newQMenu()
    btn1=newQPushButton(Q "btn1")
    btn2=newQPushButton(Q "btn2")

mm.makeMenu:
    * "Disabled menus"
    + "This is a disabled submenu":
        setEnabled(false)
    + "This is a tear-off enabled submenu with its children disabled":
        setTearOffEnabled(true)
        - "Action 1": setEnabled(false)
        - "Action 2": setEnabled(false)
        - "Action 3": setEnabled(false)
    * "Enable buttons"
    - "Enable btn1" as enableBtn1:
        setCheckable(true)
        setChecked(btn1.isEnabled)
        handleToggled: btn1.setEnabled(checked)
    - "Enable btn2" as enableBtn2:
        setCheckable(true)
        setChecked(btn2.isEnabled)
        handleToggled: btn2.setEnabled(checked)
    * "Quitting"
    addSeparator0()
    + "Quit":
        + "Confirm quit":
            - "Yes!":
                handleTriggered(): quit(0)


let win: ptr QWidget = newQWidget()
win.makeLayout:
    - useObject btn1:
        handleSignal0(SIGNAL "clicked()"):
            mm.popup(btn1.mapToGlobal(btn1.pos))
    - useObject btn2:
        handleSignal0(SIGNAL "clicked()"):
            mm.popup(btn2.mapToGlobal(btn2.pos))
win.show()
discard app.exec()
