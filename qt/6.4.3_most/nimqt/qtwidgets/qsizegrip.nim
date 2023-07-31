const headerFile* = "QtWidgets/qsizegrip.h"

import nimqt/qtwidgets/qwidget
type
    # Classes found in the C++ code
    QSizeGrip* {.header:headerFile,importcpp:"QSizeGrip" ,pure.} = object of QWidget
import nimqt/qtgui/qpaintdevice


type
    # typedefs found in the C++ code
    QSizeGrip_RenderFlag * = QWidget_RenderFlag
    QSizeGrip_RenderFlags * = QWidget_RenderFlags
    QSizeGrip_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric

# Stuff for class QSizeGrip

# Public constructors for QSizeGrip
proc newQSizeGrip*(parent: ptr QWidget): ptr QSizeGrip {. header:headerFile, importcpp:"new QSizeGrip(@)" .} #

# Public methods for QSizeGrip
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QSizeGrip_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QSizeGrip::tr(@)".} # Public static
proc static_QSizeGrip_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QSizeGrip::tr(@)".} # Public static
import nimqt/qtcore/qsize
proc sizeHint*(this: ptr QSizeGrip): QSize {.header:headerFile, importcpp:"#.sizeHint(@)".} # Public
proc setVisible*(this: ptr QSizeGrip, arg_0: bool) {.header:headerFile, importcpp:"#.setVisible(@)".} # Public

# Protected methods methods for QSizeGrip
import nimqt/qtgui/qevent
proc paintEvent*(this: ptr QSizeGrip, arg_0: ptr QPaintEvent) {.header:headerFile, importcpp:"#.paintEvent(@)".} # Protected
proc mousePressEvent*(this: ptr QSizeGrip, arg_0: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mousePressEvent(@)".} # Protected
proc mouseMoveEvent*(this: ptr QSizeGrip, arg_0: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mouseMoveEvent(@)".} # Protected
proc mouseReleaseEvent*(this: ptr QSizeGrip, mouseEvent: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mouseReleaseEvent(@)".} # Protected
proc moveEvent*(this: ptr QSizeGrip, moveEvent: ptr QMoveEvent) {.header:headerFile, importcpp:"#.moveEvent(@)".} # Protected
proc showEvent*(this: ptr QSizeGrip, showEvent: ptr QShowEvent) {.header:headerFile, importcpp:"#.showEvent(@)".} # Protected
proc hideEvent*(this: ptr QSizeGrip, hideEvent: ptr QHideEvent) {.header:headerFile, importcpp:"#.hideEvent(@)".} # Protected
import nimqt/qtcore/qobject
import nimqt/qtcore/qcoreevent
proc eventFilter*(this: ptr QSizeGrip, arg_0: ptr QObject, arg_1: ptr QEvent): bool {.header:headerFile, importcpp:"#.eventFilter(@)".} # Protected
proc event*(this: ptr QSizeGrip, arg_0: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Protected

export qevent
export qstring
export qsize
export qwidget
export qpaintdevice
export qobject
export qcoreevent
