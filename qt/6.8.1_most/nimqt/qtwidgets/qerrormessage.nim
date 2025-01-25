const headerFile* = "QtWidgets/qerrormessage.h"

import nimqt/qtwidgets/qdialog
type
    # Classes found in the C++ code
    QErrorMessage* {.header:headerFile,importcpp:"QErrorMessage" ,pure.} = object of QDialog
import nimqt/qtwidgets/qwidget
import nimqt/qtgui/qpaintdevice


type
    # typedefs found in the C++ code
    QErrorMessage_DialogCode * = QDialog_DialogCode
    QErrorMessage_RenderFlag * = QWidget_RenderFlag
    QErrorMessage_RenderFlags * = QWidget_RenderFlags
    QErrorMessage_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric

# Stuff for class QErrorMessage

# Public constructors for QErrorMessage
# 1 default parameters!
proc newQErrorMessage*(parent: ptr QWidget): ptr QErrorMessage {. header:headerFile, importcpp:"new QErrorMessage(@)" .} #
proc newQErrorMessage*(): ptr QErrorMessage {. header:headerFile, importcpp:"new QErrorMessage(@)" .} #

# Public methods for QErrorMessage
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QErrorMessage_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QErrorMessage::tr(@)".} # Public static
proc static_QErrorMessage_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QErrorMessage::tr(@)".} # Public static
proc static_QErrorMessage_qtHandler*(): ptr QErrorMessage {.header:headerFile, importcpp:"QErrorMessage::qtHandler(@)".} # Public static
proc showMessage*(this: ptr QErrorMessage, message: QString) {.header:headerFile, importcpp:"#.showMessage(@)".} # Public
proc showMessage*(this: ptr QErrorMessage, message: QString, `type`: QString) {.header:headerFile, importcpp:"#.showMessage(@)".} # Public

# Protected methods methods for QErrorMessage
proc done*(this: ptr QErrorMessage, arg_0: cint) {.header:headerFile, importcpp:"#.done(@)".} # Protected
import nimqt/qtcore/qcoreevent
proc changeEvent*(this: ptr QErrorMessage, e: ptr QEvent) {.header:headerFile, importcpp:"#.changeEvent(@)".} # Protected

export qstring
export qdialog
export qwidget
export qpaintdevice
export qcoreevent
