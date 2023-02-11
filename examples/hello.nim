import os

import nimqt
import nimqt/[qpushbutton, qboxlayout]

nimqt.init
let app = newQApplication(commandLineParams())

inheritQObject(GuiHandler, QObject):
    slot_decl on_helloWorld_clicked()

    # WARNING: this is not a regular member variable!
    #   The generated code will create a `var GuiHandler_counter:Table[ptr GuiHandler, int]`
    #   Any access to the member variable counter will go (transparently for you) to this 
    #   table. Thus there is a penalty for using member variables as a table is used.
    var counter:int
    slot on_counter_clicked():
        let sender = cast[ ptr QPushButton]( this.get_sender())
        sender.setText( Q ("Counter: " & $this.counter & " times") )
        this.counter.inc



let guiHandler: ptr GuiHandler = newGuiHandler()
let guiHandler2: ptr GuiHandler = newGuiHandler()
let win: ptr QWidget = newQWidget()

# This functor is used by the fifth QPushButton.
# It connects to a functor (rather than a slot of an object).
# Note the `{.exportcpp.}` pragma!
proc on_functor_clicked(toggled:bool) {.exportcpp.} = echo "Functor clicked ",toggled

win.makeLayout:
    - newQPushButton(Q "Click me!!"):
        connect(SIGNAL "clicked()", guiHandler, SLOT "on_helloWorld_clicked()")
    - newQPushButton( Q "Click me!!"):
        connect(SIGNAL "clicked()", guiHandler, SLOT "on_helloWorld_clicked()")
    - newQPushButton( Q "Counter"):
        connect(SIGNAL "clicked()", guiHandler, SLOT "on_counter_clicked()")
    - newQPushButton( Q "Counter"):
        connect(SIGNAL "clicked()", guiHandler2, SLOT "on_counter_clicked()")
    - newQPushButton( Q "Toggle (writes to stdout)"):
        setCheckable(true)
        # Connect to a functor, rather than an object
        connect(SIGNAL "toggled(bool)", on_functor_clicked)

proc on_helloWorld_clicked(this: ptr GuiHandler) =
    let sender = cast[ ptr QPushButton]( this.get_sender())
    sender.setText(Q "Hello world!")

win.show()
discard app.exec()

