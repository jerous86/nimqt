const headerFile* = "QtWidgets/qslider.h"

type
    # Enums found in the C++ code
    # Global
    QSlider_TickPosition* {.header:headerFile,importcpp:"QSlider::TickPosition".} = enum NoTicks = 0, TicksAbove = 0x1, TicksBelow = 0x2, TicksBothSides = 0x3

import nimqt/qtwidgets/qabstractslider
type
    # Classes found in the C++ code
    QSlider* {.header:headerFile,importcpp:"QSlider" ,pure.} = object of QAbstractSlider
import nimqt/qtwidgets/qwidget
import nimqt/qtgui/qpaintdevice


type
    # typedefs found in the C++ code
    QSlider_SliderAction * = QAbstractSlider_SliderAction
    QSlider_SliderChange * = QAbstractSlider_SliderChange
    QSlider_RenderFlag * = QWidget_RenderFlag
    QSlider_RenderFlags * = QWidget_RenderFlags
    QSlider_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric

# Consts
const
    # Global
    QSlider_TickPositionTicksLeft* = 1 # from anonymous enum TicksAbove
    QSlider_TickPositionTicksRight* = 2 # from anonymous enum TicksBelow

# Stuff for class QSlider

# Public constructors for QSlider
# 1 default parameters!
proc newQSlider*(parent: ptr QWidget): ptr QSlider {. header:headerFile, importcpp:"new QSlider(@)" .} #
proc newQSlider*(): ptr QSlider {. header:headerFile, importcpp:"new QSlider(@)" .} #
import nimqt/qtcore/qnamespace
# 1 default parameters!
proc newQSlider*(orientation: Qt_Orientation, parent: ptr QWidget): ptr QSlider {. header:headerFile, importcpp:"new QSlider(@)" .} #
proc newQSlider*(orientation: Qt_Orientation): ptr QSlider {. header:headerFile, importcpp:"new QSlider(@)" .} #

# Public methods for QSlider
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QSlider_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QSlider::tr(@)".} # Public static
proc static_QSlider_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QSlider::tr(@)".} # Public static
import nimqt/qtcore/qsize
proc sizeHint*(this: ptr QSlider): QSize {.header:headerFile, importcpp:"#.sizeHint(@)".} # Public
proc minimumSizeHint*(this: ptr QSlider): QSize {.header:headerFile, importcpp:"#.minimumSizeHint(@)".} # Public
proc setTickPosition*(this: ptr QSlider, position: QSlider_TickPosition) {.header:headerFile, importcpp:"#.setTickPosition(@)".} # Public
proc tickPosition*(this: ptr QSlider): QSlider_TickPosition {.header:headerFile, importcpp:"#.tickPosition(@)".} # Public
proc setTickInterval*(this: ptr QSlider, ti: cint) {.header:headerFile, importcpp:"#.setTickInterval(@)".} # Public
proc tickInterval*(this: ptr QSlider): cint {.header:headerFile, importcpp:"#.tickInterval(@)".} # Public
import nimqt/qtcore/qcoreevent
proc event*(this: ptr QSlider, event: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Public

# Protected methods methods for QSlider
import nimqt/qtgui/qevent
proc paintEvent*(this: ptr QSlider, ev: ptr QPaintEvent) {.header:headerFile, importcpp:"#.paintEvent(@)".} # Protected
proc mousePressEvent*(this: ptr QSlider, ev: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mousePressEvent(@)".} # Protected
proc mouseReleaseEvent*(this: ptr QSlider, ev: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mouseReleaseEvent(@)".} # Protected
proc mouseMoveEvent*(this: ptr QSlider, ev: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mouseMoveEvent(@)".} # Protected

export qevent
export qabstractslider
export qstring
export qsize
export qnamespace
export qwidget
export qpaintdevice
export qcoreevent
