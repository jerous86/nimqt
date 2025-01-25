const headerFile* = "QtWidgets/qdial.h"

import nimqt/qtwidgets/qabstractslider
type
    # Classes found in the C++ code
    QDial* {.header:headerFile,importcpp:"QDial" ,pure.} = object of QAbstractSlider
import nimqt/qtwidgets/qwidget
import nimqt/qtgui/qpaintdevice


type
    # typedefs found in the C++ code
    QDial_SliderAction * = QAbstractSlider_SliderAction
    QDial_SliderChange * = QAbstractSlider_SliderChange
    QDial_RenderFlag * = QWidget_RenderFlag
    QDial_RenderFlags * = QWidget_RenderFlags
    QDial_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric

# Stuff for class QDial

# Public constructors for QDial
# 1 default parameters!
proc newQDial*(parent: ptr QWidget): ptr QDial {. header:headerFile, importcpp:"new QDial(@)" .} #
proc newQDial*(): ptr QDial {. header:headerFile, importcpp:"new QDial(@)" .} #

# Public methods for QDial
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QDial_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QDial::tr(@)".} # Public static
proc static_QDial_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QDial::tr(@)".} # Public static
proc wrapping*(this: ptr QDial): bool {.header:headerFile, importcpp:"#.wrapping(@)".} # Public
proc notchSize*(this: ptr QDial): cint {.header:headerFile, importcpp:"#.notchSize(@)".} # Public
proc setNotchTarget*(this: ptr QDial, target: cdouble) {.header:headerFile, importcpp:"#.setNotchTarget(@)".} # Public
proc notchTarget*(this: ptr QDial): cfloat {.header:headerFile, importcpp:"#.notchTarget(@)".} # Public
proc notchesVisible*(this: ptr QDial): bool {.header:headerFile, importcpp:"#.notchesVisible(@)".} # Public
import nimqt/qtcore/qsize
proc sizeHint*(this: ptr QDial): QSize {.header:headerFile, importcpp:"#.sizeHint(@)".} # Public
proc minimumSizeHint*(this: ptr QDial): QSize {.header:headerFile, importcpp:"#.minimumSizeHint(@)".} # Public
proc setNotchesVisible*(this: ptr QDial, visible: bool) {.header:headerFile, importcpp:"#.setNotchesVisible(@)".} # Public
proc setWrapping*(this: ptr QDial, on: bool) {.header:headerFile, importcpp:"#.setWrapping(@)".} # Public

# Protected methods methods for QDial
import nimqt/qtcore/qcoreevent
proc event*(this: ptr QDial, e: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Protected
import nimqt/qtgui/qevent
proc resizeEvent*(this: ptr QDial, re: ptr QResizeEvent) {.header:headerFile, importcpp:"#.resizeEvent(@)".} # Protected
proc paintEvent*(this: ptr QDial, pe: ptr QPaintEvent) {.header:headerFile, importcpp:"#.paintEvent(@)".} # Protected
proc mousePressEvent*(this: ptr QDial, me: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mousePressEvent(@)".} # Protected
proc mouseReleaseEvent*(this: ptr QDial, me: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mouseReleaseEvent(@)".} # Protected
proc mouseMoveEvent*(this: ptr QDial, me: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mouseMoveEvent(@)".} # Protected
proc sliderChange*(this: ptr QDial, change: QAbstractSlider_SliderChange) {.header:headerFile, importcpp:"#.sliderChange(@)".} # Protected

export qevent
export qabstractslider
export qstring
export qsize
export qwidget
export qpaintdevice
export qcoreevent
