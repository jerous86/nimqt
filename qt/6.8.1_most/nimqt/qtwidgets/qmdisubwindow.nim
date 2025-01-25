const headerFile* = "QtWidgets/qmdisubwindow.h"

type
    # Enums found in the C++ code
    # Global
    QMdiSubWindow_SubWindowOption* {.header:headerFile,importcpp:"QMdiSubWindow::SubWindowOption".} = enum AllowOutsideAreaHorizontally = 0x1, AllowOutsideAreaVertically = 0x2, RubberBandResize = 0x4, RubberBandMove = 0x8

import nimqt/qtwidgets/qwidget
type
    # Classes found in the C++ code
    QMdiSubWindow* {.header:headerFile,importcpp:"QMdiSubWindow" ,pure.} = object of QWidget
import nimqt/qtgui/qpaintdevice
import nimqt/qtcore/qflags


type
    # typedefs found in the C++ code
    QMdiSubWindow_RenderFlag * = QWidget_RenderFlag
    QMdiSubWindow_RenderFlags * = QWidget_RenderFlags
    QMdiSubWindow_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric
    QMdiSubWindow_SubWindowOptions * = QFlags[QMdiSubWindow_SubWindowOption]

# Stuff for class QMdiSubWindow

# Public constructors for QMdiSubWindow
import nimqt/qtcore/qnamespace
# 2 default parameters!
proc newQMdiSubWindow*(parent: ptr QWidget, flags: Qt_WindowFlags): ptr QMdiSubWindow {. header:headerFile, importcpp:"new QMdiSubWindow(@)" .} #
proc newQMdiSubWindow*(parent: ptr QWidget): ptr QMdiSubWindow {. header:headerFile, importcpp:"new QMdiSubWindow(@)" .} #
proc newQMdiSubWindow*(): ptr QMdiSubWindow {. header:headerFile, importcpp:"new QMdiSubWindow(@)" .} #

# Public methods for QMdiSubWindow
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QMdiSubWindow_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QMdiSubWindow::tr(@)".} # Public static
proc static_QMdiSubWindow_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QMdiSubWindow::tr(@)".} # Public static
import nimqt/qtcore/qsize
proc sizeHint*(this: ptr QMdiSubWindow): QSize {.header:headerFile, importcpp:"#.sizeHint(@)".} # Public
proc minimumSizeHint*(this: ptr QMdiSubWindow): QSize {.header:headerFile, importcpp:"#.minimumSizeHint(@)".} # Public
proc setWidget*(this: ptr QMdiSubWindow, widget: ptr QWidget) {.header:headerFile, importcpp:"#.setWidget(@)".} # Public
proc widget*(this: ptr QMdiSubWindow): ptr QWidget {.header:headerFile, importcpp:"#.widget(@)".} # Public
proc maximizedButtonsWidget*(this: ptr QMdiSubWindow): ptr QWidget {.header:headerFile, importcpp:"#.maximizedButtonsWidget(@)".} # Public
proc maximizedSystemMenuIconWidget*(this: ptr QMdiSubWindow): ptr QWidget {.header:headerFile, importcpp:"#.maximizedSystemMenuIconWidget(@)".} # Public
proc isShaded*(this: ptr QMdiSubWindow): bool {.header:headerFile, importcpp:"#.isShaded(@)".} # Public
# 1 default parameters!
proc setOption*(this: ptr QMdiSubWindow, option: QMdiSubWindow_SubWindowOption, on: bool) {.header:headerFile, importcpp:"#.setOption(@)".} # Public
proc setOption*(this: ptr QMdiSubWindow, option: QMdiSubWindow_SubWindowOption) {.header:headerFile, importcpp:"#.setOption(@)".} # Public
proc testOption*(this: ptr QMdiSubWindow, arg_0: QMdiSubWindow_SubWindowOption): bool {.header:headerFile, importcpp:"#.testOption(@)".} # Public
proc setKeyboardSingleStep*(this: ptr QMdiSubWindow, step: cint) {.header:headerFile, importcpp:"#.setKeyboardSingleStep(@)".} # Public
proc keyboardSingleStep*(this: ptr QMdiSubWindow): cint {.header:headerFile, importcpp:"#.keyboardSingleStep(@)".} # Public
proc setKeyboardPageStep*(this: ptr QMdiSubWindow, step: cint) {.header:headerFile, importcpp:"#.setKeyboardPageStep(@)".} # Public
proc keyboardPageStep*(this: ptr QMdiSubWindow): cint {.header:headerFile, importcpp:"#.keyboardPageStep(@)".} # Public
import nimqt/qtwidgets/qmenu
proc setSystemMenu*(this: ptr QMdiSubWindow, systemMenu: ptr QMenu) {.header:headerFile, importcpp:"#.setSystemMenu(@)".} # Public
proc systemMenu*(this: ptr QMdiSubWindow): ptr QMenu {.header:headerFile, importcpp:"#.systemMenu(@)".} # Public
import nimqt/qtwidgets/qmdiarea
proc mdiArea*(this: ptr QMdiSubWindow): ptr QMdiArea {.header:headerFile, importcpp:"#.mdiArea(@)".} # Public
proc windowStateChanged*(this: ptr QMdiSubWindow, oldState: Qt_WindowStates, newState: Qt_WindowStates) {.header:headerFile, importcpp:"#.windowStateChanged(@)".} # Public
proc aboutToActivate*(this: ptr QMdiSubWindow) {.header:headerFile, importcpp:"#.aboutToActivate(@)".} # Public
proc showSystemMenu*(this: ptr QMdiSubWindow) {.header:headerFile, importcpp:"#.showSystemMenu(@)".} # Public
proc showShaded*(this: ptr QMdiSubWindow) {.header:headerFile, importcpp:"#.showShaded(@)".} # Public

# Protected methods methods for QMdiSubWindow
import nimqt/qtcore/qobject
import nimqt/qtcore/qcoreevent
proc eventFilter*(this: ptr QMdiSubWindow, `object`: ptr QObject, event: ptr QEvent): bool {.header:headerFile, importcpp:"#.eventFilter(@)".} # Protected
proc event*(this: ptr QMdiSubWindow, event: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Protected
import nimqt/qtgui/qevent
proc showEvent*(this: ptr QMdiSubWindow, showEvent: ptr QShowEvent) {.header:headerFile, importcpp:"#.showEvent(@)".} # Protected
proc hideEvent*(this: ptr QMdiSubWindow, hideEvent: ptr QHideEvent) {.header:headerFile, importcpp:"#.hideEvent(@)".} # Protected
proc changeEvent*(this: ptr QMdiSubWindow, changeEvent: ptr QEvent) {.header:headerFile, importcpp:"#.changeEvent(@)".} # Protected
proc closeEvent*(this: ptr QMdiSubWindow, closeEvent: ptr QCloseEvent) {.header:headerFile, importcpp:"#.closeEvent(@)".} # Protected
proc leaveEvent*(this: ptr QMdiSubWindow, leaveEvent: ptr QEvent) {.header:headerFile, importcpp:"#.leaveEvent(@)".} # Protected
proc resizeEvent*(this: ptr QMdiSubWindow, resizeEvent: ptr QResizeEvent) {.header:headerFile, importcpp:"#.resizeEvent(@)".} # Protected
proc timerEvent*(this: ptr QMdiSubWindow, timerEvent: ptr QTimerEvent) {.header:headerFile, importcpp:"#.timerEvent(@)".} # Protected
proc moveEvent*(this: ptr QMdiSubWindow, moveEvent: ptr QMoveEvent) {.header:headerFile, importcpp:"#.moveEvent(@)".} # Protected
proc paintEvent*(this: ptr QMdiSubWindow, paintEvent: ptr QPaintEvent) {.header:headerFile, importcpp:"#.paintEvent(@)".} # Protected
proc mousePressEvent*(this: ptr QMdiSubWindow, mouseEvent: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mousePressEvent(@)".} # Protected
proc mouseDoubleClickEvent*(this: ptr QMdiSubWindow, mouseEvent: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mouseDoubleClickEvent(@)".} # Protected
proc mouseReleaseEvent*(this: ptr QMdiSubWindow, mouseEvent: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mouseReleaseEvent(@)".} # Protected
proc mouseMoveEvent*(this: ptr QMdiSubWindow, mouseEvent: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mouseMoveEvent(@)".} # Protected
proc keyPressEvent*(this: ptr QMdiSubWindow, keyEvent: ptr QKeyEvent) {.header:headerFile, importcpp:"#.keyPressEvent(@)".} # Protected
proc contextMenuEvent*(this: ptr QMdiSubWindow, contextMenuEvent: ptr QContextMenuEvent) {.header:headerFile, importcpp:"#.contextMenuEvent(@)".} # Protected
proc focusInEvent*(this: ptr QMdiSubWindow, focusInEvent: ptr QFocusEvent) {.header:headerFile, importcpp:"#.focusInEvent(@)".} # Protected
proc focusOutEvent*(this: ptr QMdiSubWindow, focusOutEvent: ptr QFocusEvent) {.header:headerFile, importcpp:"#.focusOutEvent(@)".} # Protected
proc childEvent*(this: ptr QMdiSubWindow, childEvent: ptr QChildEvent) {.header:headerFile, importcpp:"#.childEvent(@)".} # Protected

export qevent
export qmenu
export qstring
export qsize
export qnamespace
export qmdiarea
export qwidget
export qflags
export qpaintdevice
export qobject
export qcoreevent
