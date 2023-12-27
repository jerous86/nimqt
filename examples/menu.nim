import os

import nimqt
import nimqt/[qpushbutton,qmainwindow]
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
        setTooltip(Q "Enables btn1")
        setStatusTip(Q "Enables btn1")
        handleToggled: btn1.setEnabled(checked)
    - "Enable btn2" as enableBtn2:
        setCheckable(true)
        setChecked(btn2.isEnabled)
        setTooltip(Q "Enables btn2")
        setStatusTip(Q "Enables btn2")
        handleToggled: btn2.setEnabled(checked)
    * "Quitting"
    addSeparator0()
    + "Quit":
        + "Confirm quit":
            - "Yes!":
                handleTriggered(): quit(0)

mm.setToolTipsVisible(true)


let 
    win: ptr QMainWindow = newQMainWindow()
    menuBar=newQMenuBar()
    menuFile=menuBar.addMenu(Q"File")
    menuView=menuBar.addMenu(Q"View")
    centralWidget=newQWidget()
centralWidget.makeLayout:
    - useObject btn1:
        handleSignal0(SIGNAL "clicked()"):
            enableBtn1.setChecked(btn1.isEnabled)
            enableBtn2.setChecked(btn2.isEnabled)
            mm.popup(btn1.mapToGlobal(btn1.pos))
    - useObject btn2:
        handleSignal0(SIGNAL "clicked()"):
            enableBtn1.setChecked(btn1.isEnabled)
            enableBtn2.setChecked(btn2.isEnabled)
            mm.popup(btn2.mapToGlobal(btn2.pos))
win.setCentralWidget(centralWidget)
win.setMenuBar(menuBar)
menuFile.makeMenu:
    * "Stuff"
    - "Open ...": setEnabled(false)
    - "Save as ...": setEnabled(false)
    - "Save": setEnabled(false)
    * "Quit"
    - "Quit!":
        handleTriggered(): quit(0)
menuView.makeMenu:
    - "Enable btn1":
        setTooltip(Q "Enables btn1")
        setStatusTip(Q "Enables btn1")
        handleTriggered(): btn1.setEnabled(true)
    - "Enable btn2":
        setTooltip(Q "Enables btn2")
        setStatusTip(Q "Enables btn2")
        handleTriggered(): btn2.setEnabled(true)

menuView.setToolTipsVisible(true)

win.show()
discard app.exec()
