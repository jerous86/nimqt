const headerFile* = "QtWidgets/qsplitter.h"

import nimqt/qtwidgets/qwidget
import nimqt/qtwidgets/qframe
type
    # Classes found in the C++ code
    QSplitter* {.header:headerFile,importcpp:"QSplitter" ,pure.} = object of QFrame
    QSplitterHandle* {.header:headerFile,importcpp:"QSplitterHandle" ,pure.} = object of QWidget
import nimqt/qtgui/qpaintdevice


type
    # typedefs found in the C++ code
    QSplitter_Shape * = QFrame_Shape
    QSplitter_Shadow * = QFrame_Shadow
    QSplitter_StyleMask * = QFrame_StyleMask
    QSplitter_RenderFlag * = QWidget_RenderFlag
    QSplitter_RenderFlags * = QWidget_RenderFlags
    QSplitter_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric
    QSplitterHandle_RenderFlag * = QWidget_RenderFlag
    QSplitterHandle_RenderFlags * = QWidget_RenderFlags
    QSplitterHandle_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric

# Stuff for class QSplitter

# Public constructors for QSplitter
# 1 default parameters!
proc newQSplitter*(parent: ptr QWidget): ptr QSplitter {. header:headerFile, importcpp:"new QSplitter(@)" .} #
proc newQSplitter*(): ptr QSplitter {. header:headerFile, importcpp:"new QSplitter(@)" .} #
import nimqt/qtcore/qnamespace
# 1 default parameters!
proc newQSplitter*(arg_0: Qt_Orientation, parent: ptr QWidget): ptr QSplitter {. header:headerFile, importcpp:"new QSplitter(@)" .} #
proc newQSplitter*(arg_0: Qt_Orientation): ptr QSplitter {. header:headerFile, importcpp:"new QSplitter(@)" .} #

# Public methods for QSplitter
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QSplitter_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QSplitter::tr(@)".} # Public static
proc static_QSplitter_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QSplitter::tr(@)".} # Public static
proc addWidget*(this: ptr QSplitter, widget: ptr QWidget) {.header:headerFile, importcpp:"#.addWidget(@)".} # Public
proc insertWidget*(this: ptr QSplitter, index: cint, widget: ptr QWidget) {.header:headerFile, importcpp:"#.insertWidget(@)".} # Public
proc replaceWidget*(this: ptr QSplitter, index: cint, widget: ptr QWidget): ptr QWidget {.header:headerFile, importcpp:"#.replaceWidget(@)".} # Public
proc setOrientation*(this: ptr QSplitter, arg_0: Qt_Orientation) {.header:headerFile, importcpp:"#.setOrientation(@)".} # Public
proc orientation*(this: ptr QSplitter): Qt_Orientation {.header:headerFile, importcpp:"#.orientation(@)".} # Public
proc setChildrenCollapsible*(this: ptr QSplitter, arg_0: bool) {.header:headerFile, importcpp:"#.setChildrenCollapsible(@)".} # Public
proc childrenCollapsible*(this: ptr QSplitter): bool {.header:headerFile, importcpp:"#.childrenCollapsible(@)".} # Public
proc setCollapsible*(this: ptr QSplitter, index: cint, arg_1: bool) {.header:headerFile, importcpp:"#.setCollapsible(@)".} # Public
proc isCollapsible*(this: ptr QSplitter, index: cint): bool {.header:headerFile, importcpp:"#.isCollapsible(@)".} # Public
# 1 default parameters!
proc setOpaqueResize*(this: ptr QSplitter, opaque: bool) {.header:headerFile, importcpp:"#.setOpaqueResize(@)".} # Public
proc setOpaqueResize*(this: ptr QSplitter) {.header:headerFile, importcpp:"#.setOpaqueResize(@)".} # Public
proc opaqueResize*(this: ptr QSplitter): bool {.header:headerFile, importcpp:"#.opaqueResize(@)".} # Public
proc refresh*(this: ptr QSplitter) {.header:headerFile, importcpp:"#.refresh(@)".} # Public
import nimqt/qtcore/qsize
proc sizeHint*(this: ptr QSplitter): QSize {.header:headerFile, importcpp:"#.sizeHint(@)".} # Public
proc minimumSizeHint*(this: ptr QSplitter): QSize {.header:headerFile, importcpp:"#.minimumSizeHint(@)".} # Public
import nimqt/qtcore/qlist
proc sizes*(this: ptr QSplitter): QList[cint] {.header:headerFile, importcpp:"#.sizes(@)".} # Public
proc setSizes*(this: ptr QSplitter, list: QList[cint]) {.header:headerFile, importcpp:"#.setSizes(@)".} # Public
import nimqt/qtcore/qbytearray
proc saveState*(this: ptr QSplitter): QByteArray {.header:headerFile, importcpp:"#.saveState(@)".} # Public
proc restoreState*(this: ptr QSplitter, state: QByteArray): bool {.header:headerFile, importcpp:"#.restoreState(@)".} # Public
proc handleWidth*(this: ptr QSplitter): cint {.header:headerFile, importcpp:"#.handleWidth(@)".} # Public
proc setHandleWidth*(this: ptr QSplitter, arg_0: cint) {.header:headerFile, importcpp:"#.setHandleWidth(@)".} # Public
proc indexOf*(this: ptr QSplitter, w: ptr QWidget): cint {.header:headerFile, importcpp:"#.indexOf(@)".} # Public
proc widget*(this: ptr QSplitter, index: cint): ptr QWidget {.header:headerFile, importcpp:"#.widget(@)".} # Public
proc count*(this: ptr QSplitter): cint {.header:headerFile, importcpp:"#.count(@)".} # Public
proc getRange*(this: ptr QSplitter, index: cint, arg_1: ptr cint, arg_2: ptr cint) {.header:headerFile, importcpp:"#.getRange(@)".} # Public
proc handle*(this: ptr QSplitter, index: cint): ptr QSplitterHandle {.header:headerFile, importcpp:"#.handle(@)".} # Public
proc setStretchFactor*(this: ptr QSplitter, index: cint, stretch: cint) {.header:headerFile, importcpp:"#.setStretchFactor(@)".} # Public
proc splitterMoved*(this: ptr QSplitter, pos: cint, index: cint) {.header:headerFile, importcpp:"#.splitterMoved(@)".} # Public

# Protected methods methods for QSplitter
proc createHandle*(this: ptr QSplitter): ptr QSplitterHandle {.header:headerFile, importcpp:"#.createHandle(@)".} # Protected
import nimqt/qtcore/qcoreevent
proc childEvent*(this: ptr QSplitter, arg_0: ptr QChildEvent) {.header:headerFile, importcpp:"#.childEvent(@)".} # Protected
proc event*(this: ptr QSplitter, arg_0: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Protected
import nimqt/qtgui/qevent
proc resizeEvent*(this: ptr QSplitter, arg_0: ptr QResizeEvent) {.header:headerFile, importcpp:"#.resizeEvent(@)".} # Protected
proc changeEvent*(this: ptr QSplitter, arg_0: ptr QEvent) {.header:headerFile, importcpp:"#.changeEvent(@)".} # Protected
proc moveSplitter*(this: ptr QSplitter, pos: cint, index: cint) {.header:headerFile, importcpp:"#.moveSplitter(@)".} # Protected
proc setRubberBand*(this: ptr QSplitter, position: cint) {.header:headerFile, importcpp:"#.setRubberBand(@)".} # Protected
proc closestLegalPosition*(this: ptr QSplitter, arg_0: cint, arg_1: cint): cint {.header:headerFile, importcpp:"#.closestLegalPosition(@)".} # Protected
# Stuff for class QSplitterHandle

# Public constructors for QSplitterHandle
proc newQSplitterHandle*(o: Qt_Orientation, parent: ptr QSplitter): ptr QSplitterHandle {. header:headerFile, importcpp:"new QSplitterHandle(@)" .} #

# Public methods for QSplitterHandle
# 1 default parameters!
proc static_QSplitterHandle_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QSplitterHandle::tr(@)".} # Public static
proc static_QSplitterHandle_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QSplitterHandle::tr(@)".} # Public static
proc setOrientation*(this: ptr QSplitterHandle, o: Qt_Orientation) {.header:headerFile, importcpp:"#.setOrientation(@)".} # Public
proc orientation*(this: ptr QSplitterHandle): Qt_Orientation {.header:headerFile, importcpp:"#.orientation(@)".} # Public
proc opaqueResize*(this: ptr QSplitterHandle): bool {.header:headerFile, importcpp:"#.opaqueResize(@)".} # Public
proc splitter*(this: ptr QSplitterHandle): ptr QSplitter {.header:headerFile, importcpp:"#.splitter(@)".} # Public
proc sizeHint*(this: ptr QSplitterHandle): QSize {.header:headerFile, importcpp:"#.sizeHint(@)".} # Public

# Protected methods methods for QSplitterHandle
proc paintEvent*(this: ptr QSplitterHandle, arg_0: ptr QPaintEvent) {.header:headerFile, importcpp:"#.paintEvent(@)".} # Protected
proc mouseMoveEvent*(this: ptr QSplitterHandle, arg_0: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mouseMoveEvent(@)".} # Protected
proc mousePressEvent*(this: ptr QSplitterHandle, arg_0: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mousePressEvent(@)".} # Protected
proc mouseReleaseEvent*(this: ptr QSplitterHandle, arg_0: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mouseReleaseEvent(@)".} # Protected
proc resizeEvent*(this: ptr QSplitterHandle, arg_0: ptr QResizeEvent) {.header:headerFile, importcpp:"#.resizeEvent(@)".} # Protected
proc event*(this: ptr QSplitterHandle, arg_0: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Protected
proc moveSplitter*(this: ptr QSplitterHandle, p: cint) {.header:headerFile, importcpp:"#.moveSplitter(@)".} # Protected
proc closestLegalPosition*(this: ptr QSplitterHandle, p: cint): cint {.header:headerFile, importcpp:"#.closestLegalPosition(@)".} # Protected

export qevent
export qstring
export qsize
export qnamespace
export qbytearray
export qlist
export qwidget
export qpaintdevice
export qcoreevent
export qframe
