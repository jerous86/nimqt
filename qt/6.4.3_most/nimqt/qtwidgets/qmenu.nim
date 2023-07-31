const headerFile* = "QtWidgets/qmenu.h"

import nimqt/qtwidgets/qwidget
type
    # Classes found in the C++ code
    QMenu* {.header:headerFile,importcpp:"QMenu" ,pure.} = object of QWidget
import nimqt/qtgui/qpaintdevice


type
    # typedefs found in the C++ code
    QMenu_RenderFlag * = QWidget_RenderFlag
    QMenu_RenderFlags * = QWidget_RenderFlags
    QMenu_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric

# Stuff for class QMenu

# Public constructors for QMenu
# 1 default parameters!
proc newQMenu*(parent: ptr QWidget): ptr QMenu {. header:headerFile, importcpp:"new QMenu(@)" .} #
proc newQMenu*(): ptr QMenu {. header:headerFile, importcpp:"new QMenu(@)" .} #
import nimqt/qtcore/qstring
# 1 default parameters!
proc newQMenu*(title: QString, parent: ptr QWidget): ptr QMenu {. header:headerFile, importcpp:"new QMenu(@)" .} #
proc newQMenu*(title: QString): ptr QMenu {. header:headerFile, importcpp:"new QMenu(@)" .} #

# Public methods for QMenu
# 1 default parameters!
proc static_QMenu_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QMenu::tr(@)".} # Public static
proc static_QMenu_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QMenu::tr(@)".} # Public static
import nimqt/qtgui/qaction
import nimqt/qtgui/qkeysequence
import nimqt/qtcore/qobject
proc addAction*(this: ptr QMenu, text: QString, receiver: ptr QObject, member: ptr char, shortcut: QKeySequence): ptr QAction {.header:headerFile, importcpp:"#.addAction(@)".} # Public
import nimqt/qtgui/qicon
proc addAction*(this: ptr QMenu, icon: QIcon, text: QString, receiver: ptr QObject, member: ptr char, shortcut: QKeySequence): ptr QAction {.header:headerFile, importcpp:"#.addAction(@)".} # Public
proc addMenu*(this: ptr QMenu, menu: ptr QMenu): ptr QAction {.header:headerFile, importcpp:"#.addMenu(@)".} # Public
proc addMenu*(this: ptr QMenu, title: QString): ptr QMenu {.header:headerFile, importcpp:"#.addMenu(@)".} # Public
proc addMenu*(this: ptr QMenu, icon: QIcon, title: QString): ptr QMenu {.header:headerFile, importcpp:"#.addMenu(@)".} # Public
proc addSeparator*(this: ptr QMenu): ptr QAction {.header:headerFile, importcpp:"#.addSeparator(@)".} # Public
proc addSection*(this: ptr QMenu, text: QString): ptr QAction {.header:headerFile, importcpp:"#.addSection(@)".} # Public
proc addSection*(this: ptr QMenu, icon: QIcon, text: QString): ptr QAction {.header:headerFile, importcpp:"#.addSection(@)".} # Public
proc insertMenu*(this: ptr QMenu, before: ptr QAction, menu: ptr QMenu): ptr QAction {.header:headerFile, importcpp:"#.insertMenu(@)".} # Public
proc insertSeparator*(this: ptr QMenu, before: ptr QAction): ptr QAction {.header:headerFile, importcpp:"#.insertSeparator(@)".} # Public
proc insertSection*(this: ptr QMenu, before: ptr QAction, text: QString): ptr QAction {.header:headerFile, importcpp:"#.insertSection(@)".} # Public
proc insertSection*(this: ptr QMenu, before: ptr QAction, icon: QIcon, text: QString): ptr QAction {.header:headerFile, importcpp:"#.insertSection(@)".} # Public
proc isEmpty*(this: ptr QMenu): bool {.header:headerFile, importcpp:"#.isEmpty(@)".} # Public
proc clear*(this: ptr QMenu) {.header:headerFile, importcpp:"#.clear(@)".} # Public
proc setTearOffEnabled*(this: ptr QMenu, arg_0: bool) {.header:headerFile, importcpp:"#.setTearOffEnabled(@)".} # Public
proc isTearOffEnabled*(this: ptr QMenu): bool {.header:headerFile, importcpp:"#.isTearOffEnabled(@)".} # Public
proc isTearOffMenuVisible*(this: ptr QMenu): bool {.header:headerFile, importcpp:"#.isTearOffMenuVisible(@)".} # Public
proc showTearOffMenu*(this: ptr QMenu) {.header:headerFile, importcpp:"#.showTearOffMenu(@)".} # Public
import nimqt/qtcore/qpoint
proc showTearOffMenu*(this: ptr QMenu, pos: QPoint) {.header:headerFile, importcpp:"#.showTearOffMenu(@)".} # Public
proc hideTearOffMenu*(this: ptr QMenu) {.header:headerFile, importcpp:"#.hideTearOffMenu(@)".} # Public
proc setDefaultAction*(this: ptr QMenu, arg_0: ptr QAction) {.header:headerFile, importcpp:"#.setDefaultAction(@)".} # Public
proc defaultAction*(this: ptr QMenu): ptr QAction {.header:headerFile, importcpp:"#.defaultAction(@)".} # Public
proc setActiveAction*(this: ptr QMenu, act: ptr QAction) {.header:headerFile, importcpp:"#.setActiveAction(@)".} # Public
proc activeAction*(this: ptr QMenu): ptr QAction {.header:headerFile, importcpp:"#.activeAction(@)".} # Public
# 1 default parameters!
proc popup*(this: ptr QMenu, pos: QPoint, at: ptr QAction) {.header:headerFile, importcpp:"#.popup(@)".} # Public
proc popup*(this: ptr QMenu, pos: QPoint) {.header:headerFile, importcpp:"#.popup(@)".} # Public
proc exec*(this: ptr QMenu): ptr QAction {.header:headerFile, importcpp:"#.exec(@)".} # Public
# 1 default parameters!
proc exec*(this: ptr QMenu, pos: QPoint, at: ptr QAction): ptr QAction {.header:headerFile, importcpp:"#.exec(@)".} # Public
proc exec*(this: ptr QMenu, pos: QPoint): ptr QAction {.header:headerFile, importcpp:"#.exec(@)".} # Public
import nimqt/qtcore/qlist
# 2 default parameters!
proc static_QMenu_exec*(actions: QList[ptr QAction], pos: QPoint, at: ptr QAction, parent: ptr QWidget): ptr QAction {.header:headerFile, importcpp:"QMenu::exec(@)".} # Public static
proc static_QMenu_exec*(actions: QList[ptr QAction], pos: QPoint, at: ptr QAction): ptr QAction {.header:headerFile, importcpp:"QMenu::exec(@)".} # Public static
proc static_QMenu_exec*(actions: QList[ptr QAction], pos: QPoint): ptr QAction {.header:headerFile, importcpp:"QMenu::exec(@)".} # Public static
import nimqt/qtcore/qsize
proc sizeHint*(this: ptr QMenu): QSize {.header:headerFile, importcpp:"#.sizeHint(@)".} # Public
import nimqt/qtcore/qrect
proc actionGeometry*(this: ptr QMenu, arg_1: ptr QAction): QRect {.header:headerFile, importcpp:"#.actionGeometry(@)".} # Public
proc actionAt*(this: ptr QMenu, arg_1: QPoint): ptr QAction {.header:headerFile, importcpp:"#.actionAt(@)".} # Public
proc menuAction*(this: ptr QMenu): ptr QAction {.header:headerFile, importcpp:"#.menuAction(@)".} # Public
proc static_QMenu_menuInAction*(action: ptr QAction): ptr QMenu {.header:headerFile, importcpp:"QMenu::menuInAction(@)".} # Public static
proc title*(this: ptr QMenu): QString {.header:headerFile, importcpp:"#.title(@)".} # Public
proc setTitle*(this: ptr QMenu, title: QString) {.header:headerFile, importcpp:"#.setTitle(@)".} # Public
proc icon*(this: ptr QMenu): QIcon {.header:headerFile, importcpp:"#.icon(@)".} # Public
proc setIcon*(this: ptr QMenu, icon: QIcon) {.header:headerFile, importcpp:"#.setIcon(@)".} # Public
proc setNoReplayFor*(this: ptr QMenu, widget: ptr QWidget) {.header:headerFile, importcpp:"#.setNoReplayFor(@)".} # Public
proc setAsDockMenu*(this: ptr QMenu) {.header:headerFile, importcpp:"#.setAsDockMenu(@)".} # Public
proc separatorsCollapsible*(this: ptr QMenu): bool {.header:headerFile, importcpp:"#.separatorsCollapsible(@)".} # Public
proc setSeparatorsCollapsible*(this: ptr QMenu, collapse: bool) {.header:headerFile, importcpp:"#.setSeparatorsCollapsible(@)".} # Public
proc toolTipsVisible*(this: ptr QMenu): bool {.header:headerFile, importcpp:"#.toolTipsVisible(@)".} # Public
proc setToolTipsVisible*(this: ptr QMenu, visible: bool) {.header:headerFile, importcpp:"#.setToolTipsVisible(@)".} # Public
proc aboutToShow*(this: ptr QMenu) {.header:headerFile, importcpp:"#.aboutToShow(@)".} # Public
proc aboutToHide*(this: ptr QMenu) {.header:headerFile, importcpp:"#.aboutToHide(@)".} # Public
proc triggered*(this: ptr QMenu, action: ptr QAction) {.header:headerFile, importcpp:"#.triggered(@)".} # Public
proc hovered*(this: ptr QMenu, action: ptr QAction) {.header:headerFile, importcpp:"#.hovered(@)".} # Public

# Protected methods methods for QMenu
proc columnCount*(this: ptr QMenu): cint {.header:headerFile, importcpp:"#.columnCount(@)".} # Protected
import nimqt/qtcore/qcoreevent
proc changeEvent*(this: ptr QMenu, arg_0: ptr QEvent) {.header:headerFile, importcpp:"#.changeEvent(@)".} # Protected
import nimqt/qtgui/qevent
proc keyPressEvent*(this: ptr QMenu, arg_0: ptr QKeyEvent) {.header:headerFile, importcpp:"#.keyPressEvent(@)".} # Protected
proc mouseReleaseEvent*(this: ptr QMenu, arg_0: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mouseReleaseEvent(@)".} # Protected
proc mousePressEvent*(this: ptr QMenu, arg_0: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mousePressEvent(@)".} # Protected
proc mouseMoveEvent*(this: ptr QMenu, arg_0: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mouseMoveEvent(@)".} # Protected
proc wheelEvent*(this: ptr QMenu, arg_0: ptr QWheelEvent) {.header:headerFile, importcpp:"#.wheelEvent(@)".} # Protected
proc enterEvent*(this: ptr QMenu, arg_0: ptr QEnterEvent) {.header:headerFile, importcpp:"#.enterEvent(@)".} # Protected
proc leaveEvent*(this: ptr QMenu, arg_0: ptr QEvent) {.header:headerFile, importcpp:"#.leaveEvent(@)".} # Protected
proc hideEvent*(this: ptr QMenu, arg_0: ptr QHideEvent) {.header:headerFile, importcpp:"#.hideEvent(@)".} # Protected
proc paintEvent*(this: ptr QMenu, arg_0: ptr QPaintEvent) {.header:headerFile, importcpp:"#.paintEvent(@)".} # Protected
proc actionEvent*(this: ptr QMenu, arg_0: ptr QActionEvent) {.header:headerFile, importcpp:"#.actionEvent(@)".} # Protected
proc timerEvent*(this: ptr QMenu, arg_0: ptr QTimerEvent) {.header:headerFile, importcpp:"#.timerEvent(@)".} # Protected
proc event*(this: ptr QMenu, arg_0: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Protected
proc focusNextPrevChild*(this: ptr QMenu, next: bool): bool {.header:headerFile, importcpp:"#.focusNextPrevChild(@)".} # Protected

export qevent
export qstring
export qsize
export qaction
export qlist
export qkeysequence
export qpoint
export qwidget
export qrect
export qpaintdevice
export qobject
export qcoreevent
export qicon
