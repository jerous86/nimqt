import os

import nimqt
import nimqt/[qlabel]

nimqt.init()
let app = newQApplication(commandLineParams())

# Import the module
import custom_widget_widget
# Next line will generate the necessary c++ code that allows us to use the OptionSelector custom widget
# in this module.
custom_widget_widget.import_OptionSelector()

let label=newQLabel(Q"Answer") # Creating label here, so we can easily reference it from handleSignal
let win: ptr QWidget = newQWidget()

win.makeLayout:
    - createOptionSelector(@["a","b","c"]) as opt:
        handleSignal1(SIGNAL "on_yes_clicked(QString)", s:QString):
            echo "YES ",s
            label.setText(s)
        handleSignal0(SIGNAL "on_no_clicked()"):
            echo "NO :("
            label.setText(Q"(No clicked!)")
    - useObject label

win.show()
discard app.exec()
