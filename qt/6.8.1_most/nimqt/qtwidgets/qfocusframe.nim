const headerFile* = "QtWidgets/qfocusframe.h"

import nimqt/qtwidgets/qwidget
type
    # Classes found in the C++ code
    QFocusFrame* {.header:headerFile,importcpp:"QFocusFrame" ,pure.} = object of QWidget
import nimqt/qtgui/qpaintdevice


type
    # typedefs found in the C++ code
    QFocusFrame_RenderFlag * = QWidget_RenderFlag
    QFocusFrame_RenderFlags * = QWidget_RenderFlags
    QFocusFrame_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric

# Stuff for class QFocusFrame

# Public constructors for QFocusFrame
# 1 default parameters!
proc newQFocusFrame*(parent: ptr QWidget): ptr QFocusFrame {. header:headerFile, importcpp:"new QFocusFrame(@)" .} #
proc newQFocusFrame*(): ptr QFocusFrame {. header:headerFile, importcpp:"new QFocusFrame(@)" .} #

# Public methods for QFocusFrame
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QFocusFrame_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QFocusFrame::tr(@)".} # Public static
proc static_QFocusFrame_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QFocusFrame::tr(@)".} # Public static
proc setWidget*(this: ptr QFocusFrame, widget: ptr QWidget) {.header:headerFile, importcpp:"#.setWidget(@)".} # Public
proc widget*(this: ptr QFocusFrame): ptr QWidget {.header:headerFile, importcpp:"#.widget(@)".} # Public

# Protected methods methods for QFocusFrame
import nimqt/qtcore/qcoreevent
proc event*(this: ptr QFocusFrame, e: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Protected
import nimqt/qtcore/qobject
proc eventFilter*(this: ptr QFocusFrame, arg_0: ptr QObject, arg_1: ptr QEvent): bool {.header:headerFile, importcpp:"#.eventFilter(@)".} # Protected
import nimqt/qtgui/qevent
proc paintEvent*(this: ptr QFocusFrame, arg_0: ptr QPaintEvent) {.header:headerFile, importcpp:"#.paintEvent(@)".} # Protected

export qevent
export qstring
export qwidget
export qpaintdevice
export qobject
export qcoreevent
