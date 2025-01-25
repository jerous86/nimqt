const headerFile* = "QtWidgets/qmenubar.h"

import nimqt/qtwidgets/qwidget
type
    # Classes found in the C++ code
    QMenuBar* {.header:headerFile,importcpp:"QMenuBar" ,pure.} = object of QWidget
import nimqt/qtgui/qpaintdevice


type
    # typedefs found in the C++ code
    QMenuBar_RenderFlag * = QWidget_RenderFlag
    QMenuBar_RenderFlags * = QWidget_RenderFlags
    QMenuBar_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric

# Stuff for class QMenuBar

# Public constructors for QMenuBar
# 1 default parameters!
proc newQMenuBar*(parent: ptr QWidget): ptr QMenuBar {. header:headerFile, importcpp:"new QMenuBar(@)" .} #
proc newQMenuBar*(): ptr QMenuBar {. header:headerFile, importcpp:"new QMenuBar(@)" .} #

# Public methods for QMenuBar
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QMenuBar_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QMenuBar::tr(@)".} # Public static
proc static_QMenuBar_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QMenuBar::tr(@)".} # Public static
import nimqt/qtwidgets/qmenu
import nimqt/qtgui/qaction
proc addMenu*(this: ptr QMenuBar, menu: ptr QMenu): ptr QAction {.header:headerFile, importcpp:"#.addMenu(@)".} # Public
proc addMenu*(this: ptr QMenuBar, title: QString): ptr QMenu {.header:headerFile, importcpp:"#.addMenu(@)".} # Public
import nimqt/qtgui/qicon
proc addMenu*(this: ptr QMenuBar, icon: QIcon, title: QString): ptr QMenu {.header:headerFile, importcpp:"#.addMenu(@)".} # Public
proc addSeparator*(this: ptr QMenuBar): ptr QAction {.header:headerFile, importcpp:"#.addSeparator(@)".} # Public
proc insertSeparator*(this: ptr QMenuBar, before: ptr QAction): ptr QAction {.header:headerFile, importcpp:"#.insertSeparator(@)".} # Public
proc insertMenu*(this: ptr QMenuBar, before: ptr QAction, menu: ptr QMenu): ptr QAction {.header:headerFile, importcpp:"#.insertMenu(@)".} # Public
proc clear*(this: ptr QMenuBar) {.header:headerFile, importcpp:"#.clear(@)".} # Public
proc activeAction*(this: ptr QMenuBar): ptr QAction {.header:headerFile, importcpp:"#.activeAction(@)".} # Public
proc setActiveAction*(this: ptr QMenuBar, action: ptr QAction) {.header:headerFile, importcpp:"#.setActiveAction(@)".} # Public
proc setDefaultUp*(this: ptr QMenuBar, arg_0: bool) {.header:headerFile, importcpp:"#.setDefaultUp(@)".} # Public
proc isDefaultUp*(this: ptr QMenuBar): bool {.header:headerFile, importcpp:"#.isDefaultUp(@)".} # Public
import nimqt/qtcore/qsize
proc sizeHint*(this: ptr QMenuBar): QSize {.header:headerFile, importcpp:"#.sizeHint(@)".} # Public
proc minimumSizeHint*(this: ptr QMenuBar): QSize {.header:headerFile, importcpp:"#.minimumSizeHint(@)".} # Public
proc heightForWidth*(this: ptr QMenuBar, arg_0: cint): cint {.header:headerFile, importcpp:"#.heightForWidth(@)".} # Public
import nimqt/qtcore/qrect
proc actionGeometry*(this: ptr QMenuBar, arg_1: ptr QAction): QRect {.header:headerFile, importcpp:"#.actionGeometry(@)".} # Public
import nimqt/qtcore/qpoint
proc actionAt*(this: ptr QMenuBar, arg_1: QPoint): ptr QAction {.header:headerFile, importcpp:"#.actionAt(@)".} # Public
import nimqt/qtcore/qnamespace
proc setCornerWidget*(this: ptr QMenuBar, w: ptr QWidget, corner: Qt_Corner) {.header:headerFile, importcpp:"#.setCornerWidget(@)".} # Public
proc cornerWidget*(this: ptr QMenuBar, corner: Qt_Corner): ptr QWidget {.header:headerFile, importcpp:"#.cornerWidget(@)".} # Public
proc isNativeMenuBar*(this: ptr QMenuBar): bool {.header:headerFile, importcpp:"#.isNativeMenuBar(@)".} # Public
proc setNativeMenuBar*(this: ptr QMenuBar, nativeMenuBar: bool) {.header:headerFile, importcpp:"#.setNativeMenuBar(@)".} # Public
proc setVisible*(this: ptr QMenuBar, visible: bool) {.header:headerFile, importcpp:"#.setVisible(@)".} # Public
proc triggered*(this: ptr QMenuBar, action: ptr QAction) {.header:headerFile, importcpp:"#.triggered(@)".} # Public
proc hovered*(this: ptr QMenuBar, action: ptr QAction) {.header:headerFile, importcpp:"#.hovered(@)".} # Public

# Protected methods methods for QMenuBar
import nimqt/qtcore/qcoreevent
proc changeEvent*(this: ptr QMenuBar, arg_0: ptr QEvent) {.header:headerFile, importcpp:"#.changeEvent(@)".} # Protected
import nimqt/qtgui/qevent
proc keyPressEvent*(this: ptr QMenuBar, arg_0: ptr QKeyEvent) {.header:headerFile, importcpp:"#.keyPressEvent(@)".} # Protected
proc mouseReleaseEvent*(this: ptr QMenuBar, arg_0: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mouseReleaseEvent(@)".} # Protected
proc mousePressEvent*(this: ptr QMenuBar, arg_0: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mousePressEvent(@)".} # Protected
proc mouseMoveEvent*(this: ptr QMenuBar, arg_0: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mouseMoveEvent(@)".} # Protected
proc leaveEvent*(this: ptr QMenuBar, arg_0: ptr QEvent) {.header:headerFile, importcpp:"#.leaveEvent(@)".} # Protected
proc paintEvent*(this: ptr QMenuBar, arg_0: ptr QPaintEvent) {.header:headerFile, importcpp:"#.paintEvent(@)".} # Protected
proc resizeEvent*(this: ptr QMenuBar, arg_0: ptr QResizeEvent) {.header:headerFile, importcpp:"#.resizeEvent(@)".} # Protected
proc actionEvent*(this: ptr QMenuBar, arg_0: ptr QActionEvent) {.header:headerFile, importcpp:"#.actionEvent(@)".} # Protected
proc focusOutEvent*(this: ptr QMenuBar, arg_0: ptr QFocusEvent) {.header:headerFile, importcpp:"#.focusOutEvent(@)".} # Protected
proc focusInEvent*(this: ptr QMenuBar, arg_0: ptr QFocusEvent) {.header:headerFile, importcpp:"#.focusInEvent(@)".} # Protected
proc timerEvent*(this: ptr QMenuBar, arg_0: ptr QTimerEvent) {.header:headerFile, importcpp:"#.timerEvent(@)".} # Protected
import nimqt/qtcore/qobject
proc eventFilter*(this: ptr QMenuBar, arg_0: ptr QObject, arg_1: ptr QEvent): bool {.header:headerFile, importcpp:"#.eventFilter(@)".} # Protected
proc event*(this: ptr QMenuBar, arg_0: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Protected

export qevent
export qmenu
export qstring
export qsize
export qaction
export qnamespace
export qpoint
export qwidget
export qrect
export qpaintdevice
export qobject
export qcoreevent
export qicon
