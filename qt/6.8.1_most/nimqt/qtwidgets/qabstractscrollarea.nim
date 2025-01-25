const headerFile* = "QtWidgets/qabstractscrollarea.h"

type
    # Enums found in the C++ code
    # Global
    QAbstractScrollArea_SizeAdjustPolicy* {.header:headerFile,importcpp:"QAbstractScrollArea::SizeAdjustPolicy".} = enum AdjustIgnored = 0, AdjustToContentsOnFirstShow = 0x1, AdjustToContents = 0x2

import nimqt/qtwidgets/qframe
type
    # Classes found in the C++ code
    QAbstractScrollArea* {.header:headerFile,importcpp:"QAbstractScrollArea" ,pure.} = object of QFrame
import nimqt/qtwidgets/qwidget
import nimqt/qtgui/qpaintdevice


type
    # typedefs found in the C++ code
    QAbstractScrollArea_Shape * = QFrame_Shape
    QAbstractScrollArea_Shadow * = QFrame_Shadow
    QAbstractScrollArea_StyleMask * = QFrame_StyleMask
    QAbstractScrollArea_RenderFlag * = QWidget_RenderFlag
    QAbstractScrollArea_RenderFlags * = QWidget_RenderFlags
    QAbstractScrollArea_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric

# Stuff for class QAbstractScrollArea

# Public constructors for QAbstractScrollArea
# 1 default parameters!
proc newQAbstractScrollArea*(parent: ptr QWidget): ptr QAbstractScrollArea {. header:headerFile, importcpp:"new QAbstractScrollArea(@)" .} #
proc newQAbstractScrollArea*(): ptr QAbstractScrollArea {. header:headerFile, importcpp:"new QAbstractScrollArea(@)" .} #

# Public methods for QAbstractScrollArea
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QAbstractScrollArea_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QAbstractScrollArea::tr(@)".} # Public static
proc static_QAbstractScrollArea_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QAbstractScrollArea::tr(@)".} # Public static
import nimqt/qtcore/qnamespace
proc verticalScrollBarPolicy*(this: ptr QAbstractScrollArea): Qt_ScrollBarPolicy {.header:headerFile, importcpp:"#.verticalScrollBarPolicy(@)".} # Public
proc setVerticalScrollBarPolicy*(this: ptr QAbstractScrollArea, arg_0: Qt_ScrollBarPolicy) {.header:headerFile, importcpp:"#.setVerticalScrollBarPolicy(@)".} # Public
import nimqt/qtwidgets/qscrollbar
proc verticalScrollBar*(this: ptr QAbstractScrollArea): ptr QScrollBar {.header:headerFile, importcpp:"#.verticalScrollBar(@)".} # Public
proc setVerticalScrollBar*(this: ptr QAbstractScrollArea, scrollbar: ptr QScrollBar) {.header:headerFile, importcpp:"#.setVerticalScrollBar(@)".} # Public
proc horizontalScrollBarPolicy*(this: ptr QAbstractScrollArea): Qt_ScrollBarPolicy {.header:headerFile, importcpp:"#.horizontalScrollBarPolicy(@)".} # Public
proc setHorizontalScrollBarPolicy*(this: ptr QAbstractScrollArea, arg_0: Qt_ScrollBarPolicy) {.header:headerFile, importcpp:"#.setHorizontalScrollBarPolicy(@)".} # Public
proc horizontalScrollBar*(this: ptr QAbstractScrollArea): ptr QScrollBar {.header:headerFile, importcpp:"#.horizontalScrollBar(@)".} # Public
proc setHorizontalScrollBar*(this: ptr QAbstractScrollArea, scrollbar: ptr QScrollBar) {.header:headerFile, importcpp:"#.setHorizontalScrollBar(@)".} # Public
proc cornerWidget*(this: ptr QAbstractScrollArea): ptr QWidget {.header:headerFile, importcpp:"#.cornerWidget(@)".} # Public
proc setCornerWidget*(this: ptr QAbstractScrollArea, widget: ptr QWidget) {.header:headerFile, importcpp:"#.setCornerWidget(@)".} # Public
proc addScrollBarWidget*(this: ptr QAbstractScrollArea, widget: ptr QWidget, alignment: Qt_Alignment) {.header:headerFile, importcpp:"#.addScrollBarWidget(@)".} # Public
proc viewport*(this: ptr QAbstractScrollArea): ptr QWidget {.header:headerFile, importcpp:"#.viewport(@)".} # Public
proc setViewport*(this: ptr QAbstractScrollArea, widget: ptr QWidget) {.header:headerFile, importcpp:"#.setViewport(@)".} # Public
import nimqt/qtcore/qsize
proc maximumViewportSize*(this: ptr QAbstractScrollArea): QSize {.header:headerFile, importcpp:"#.maximumViewportSize(@)".} # Public
proc minimumSizeHint*(this: ptr QAbstractScrollArea): QSize {.header:headerFile, importcpp:"#.minimumSizeHint(@)".} # Public
proc sizeHint*(this: ptr QAbstractScrollArea): QSize {.header:headerFile, importcpp:"#.sizeHint(@)".} # Public
proc setupViewport*(this: ptr QAbstractScrollArea, viewport: ptr QWidget) {.header:headerFile, importcpp:"#.setupViewport(@)".} # Public
proc sizeAdjustPolicy*(this: ptr QAbstractScrollArea): QAbstractScrollArea_SizeAdjustPolicy {.header:headerFile, importcpp:"#.sizeAdjustPolicy(@)".} # Public
proc setSizeAdjustPolicy*(this: ptr QAbstractScrollArea, policy: QAbstractScrollArea_SizeAdjustPolicy) {.header:headerFile, importcpp:"#.setSizeAdjustPolicy(@)".} # Public

# Protected methods methods for QAbstractScrollArea
proc setViewportMargins*(this: ptr QAbstractScrollArea, left: cint, top: cint, right: cint, bottom: cint) {.header:headerFile, importcpp:"#.setViewportMargins(@)".} # Protected
import nimqt/qtcore/qmargins
proc setViewportMargins*(this: ptr QAbstractScrollArea, margins: QMargins) {.header:headerFile, importcpp:"#.setViewportMargins(@)".} # Protected
proc viewportMargins*(this: ptr QAbstractScrollArea): QMargins {.header:headerFile, importcpp:"#.viewportMargins(@)".} # Protected
import nimqt/qtcore/qobject
import nimqt/qtcore/qcoreevent
proc eventFilter*(this: ptr QAbstractScrollArea, arg_0: ptr QObject, arg_1: ptr QEvent): bool {.header:headerFile, importcpp:"#.eventFilter(@)".} # Protected
proc event*(this: ptr QAbstractScrollArea, arg_0: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Protected
proc viewportEvent*(this: ptr QAbstractScrollArea, arg_0: ptr QEvent): bool {.header:headerFile, importcpp:"#.viewportEvent(@)".} # Protected
import nimqt/qtgui/qevent
proc resizeEvent*(this: ptr QAbstractScrollArea, arg_0: ptr QResizeEvent) {.header:headerFile, importcpp:"#.resizeEvent(@)".} # Protected
proc paintEvent*(this: ptr QAbstractScrollArea, arg_0: ptr QPaintEvent) {.header:headerFile, importcpp:"#.paintEvent(@)".} # Protected
proc mousePressEvent*(this: ptr QAbstractScrollArea, arg_0: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mousePressEvent(@)".} # Protected
proc mouseReleaseEvent*(this: ptr QAbstractScrollArea, arg_0: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mouseReleaseEvent(@)".} # Protected
proc mouseDoubleClickEvent*(this: ptr QAbstractScrollArea, arg_0: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mouseDoubleClickEvent(@)".} # Protected
proc mouseMoveEvent*(this: ptr QAbstractScrollArea, arg_0: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mouseMoveEvent(@)".} # Protected
proc wheelEvent*(this: ptr QAbstractScrollArea, arg_0: ptr QWheelEvent) {.header:headerFile, importcpp:"#.wheelEvent(@)".} # Protected
proc contextMenuEvent*(this: ptr QAbstractScrollArea, arg_0: ptr QContextMenuEvent) {.header:headerFile, importcpp:"#.contextMenuEvent(@)".} # Protected
proc dragEnterEvent*(this: ptr QAbstractScrollArea, arg_0: ptr QDragEnterEvent) {.header:headerFile, importcpp:"#.dragEnterEvent(@)".} # Protected
proc dragMoveEvent*(this: ptr QAbstractScrollArea, arg_0: ptr QDragMoveEvent) {.header:headerFile, importcpp:"#.dragMoveEvent(@)".} # Protected
proc dragLeaveEvent*(this: ptr QAbstractScrollArea, arg_0: ptr QDragLeaveEvent) {.header:headerFile, importcpp:"#.dragLeaveEvent(@)".} # Protected
proc dropEvent*(this: ptr QAbstractScrollArea, arg_0: ptr QDropEvent) {.header:headerFile, importcpp:"#.dropEvent(@)".} # Protected
proc keyPressEvent*(this: ptr QAbstractScrollArea, arg_0: ptr QKeyEvent) {.header:headerFile, importcpp:"#.keyPressEvent(@)".} # Protected
proc scrollContentsBy*(this: ptr QAbstractScrollArea, dx: cint, dy: cint) {.header:headerFile, importcpp:"#.scrollContentsBy(@)".} # Protected
proc viewportSizeHint*(this: ptr QAbstractScrollArea): QSize {.header:headerFile, importcpp:"#.viewportSizeHint(@)".} # Protected

export qevent
export qstring
export qsize
export qnamespace
export qwidget
export qpaintdevice
export qobject
export qscrollbar
export qmargins
export qcoreevent
export qframe
