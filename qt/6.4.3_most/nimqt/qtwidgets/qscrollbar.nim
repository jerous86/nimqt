const headerFile* = "QtWidgets/qscrollbar.h"

import nimqt/qtwidgets/qabstractslider
type
    # Classes found in the C++ code
    QScrollBar* {.header:headerFile,importcpp:"QScrollBar" ,pure.} = object of QAbstractSlider
import nimqt/qtwidgets/qwidget
import nimqt/qtgui/qpaintdevice


type
    # typedefs found in the C++ code
    QScrollBar_SliderAction * = QAbstractSlider_SliderAction
    QScrollBar_SliderChange * = QAbstractSlider_SliderChange
    QScrollBar_RenderFlag * = QWidget_RenderFlag
    QScrollBar_RenderFlags * = QWidget_RenderFlags
    QScrollBar_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric

# Stuff for class QScrollBar

# Public constructors for QScrollBar
# 1 default parameters!
proc newQScrollBar*(parent: ptr QWidget): ptr QScrollBar {. header:headerFile, importcpp:"new QScrollBar(@)" .} #
proc newQScrollBar*(): ptr QScrollBar {. header:headerFile, importcpp:"new QScrollBar(@)" .} #
import nimqt/qtcore/qnamespace
# 1 default parameters!
proc newQScrollBar*(arg_0: Qt_Orientation, parent: ptr QWidget): ptr QScrollBar {. header:headerFile, importcpp:"new QScrollBar(@)" .} #
proc newQScrollBar*(arg_0: Qt_Orientation): ptr QScrollBar {. header:headerFile, importcpp:"new QScrollBar(@)" .} #

# Public methods for QScrollBar
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QScrollBar_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QScrollBar::tr(@)".} # Public static
proc static_QScrollBar_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QScrollBar::tr(@)".} # Public static
import nimqt/qtcore/qsize
proc sizeHint*(this: ptr QScrollBar): QSize {.header:headerFile, importcpp:"#.sizeHint(@)".} # Public
import nimqt/qtcore/qcoreevent
proc event*(this: ptr QScrollBar, event: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Public

# Protected methods methods for QScrollBar
import nimqt/qtgui/qevent
proc wheelEvent*(this: ptr QScrollBar, arg_0: ptr QWheelEvent) {.header:headerFile, importcpp:"#.wheelEvent(@)".} # Protected
proc paintEvent*(this: ptr QScrollBar, arg_0: ptr QPaintEvent) {.header:headerFile, importcpp:"#.paintEvent(@)".} # Protected
proc mousePressEvent*(this: ptr QScrollBar, arg_0: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mousePressEvent(@)".} # Protected
proc mouseReleaseEvent*(this: ptr QScrollBar, arg_0: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mouseReleaseEvent(@)".} # Protected
proc mouseMoveEvent*(this: ptr QScrollBar, arg_0: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mouseMoveEvent(@)".} # Protected
proc hideEvent*(this: ptr QScrollBar, arg_0: ptr QHideEvent) {.header:headerFile, importcpp:"#.hideEvent(@)".} # Protected
proc sliderChange*(this: ptr QScrollBar, change: QAbstractSlider_SliderChange) {.header:headerFile, importcpp:"#.sliderChange(@)".} # Protected
proc contextMenuEvent*(this: ptr QScrollBar, arg_0: ptr QContextMenuEvent) {.header:headerFile, importcpp:"#.contextMenuEvent(@)".} # Protected

export qevent
export qabstractslider
export qstring
export qsize
export qnamespace
export qwidget
export qpaintdevice
export qcoreevent
