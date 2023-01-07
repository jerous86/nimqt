import os

import nimqt
import nimqt/[load_ui, qdialog]

nimqt.init
let app = newQApplication(commandLineParams())

# We use `curFileDir`, defined in nimqt/load_ui to get the directory of *this* file.
# loadUi works best with absolute paths.
var rootWg: ptr Qdialog
rootWg.loadUi(curFileDir/"load_ui_example.ui", createConnections=true)
btnUndo.setEnabled(false)
btnRedo.setEnabled(false)

rootWg.show()
discard app.exec()
