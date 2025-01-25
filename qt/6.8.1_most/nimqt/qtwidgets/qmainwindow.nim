const headerFile* = "QtWidgets/qmainwindow.h"

type
    # Enums found in the C++ code
    # Global
    QMainWindow_DockOption* {.header:headerFile,importcpp:"QMainWindow::DockOption".} = enum AnimatedDocks = 0x1, AllowNestedDocks = 0x2, AllowTabbedDocks = 0x4, ForceTabbedDocks = 0x8, 
        VerticalTabs = 0x10, GroupedDragging = 0x20

import nimqt/qtwidgets/qwidget
type
    # Classes found in the C++ code
    QMainWindow* {.header:headerFile,importcpp:"QMainWindow" ,pure.} = object of QWidget
import nimqt/qtgui/qpaintdevice
import nimqt/qtcore/qflags


type
    # typedefs found in the C++ code
    QMainWindow_RenderFlag * = QWidget_RenderFlag
    QMainWindow_RenderFlags * = QWidget_RenderFlags
    QMainWindow_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric
    QMainWindow_DockOptions * = QFlags[QMainWindow_DockOption]

# Stuff for class QMainWindow

# Public constructors for QMainWindow
import nimqt/qtcore/qnamespace
# 2 default parameters!
proc newQMainWindow*(parent: ptr QWidget, flags: Qt_WindowFlags): ptr QMainWindow {. header:headerFile, importcpp:"new QMainWindow(@)" .} #
proc newQMainWindow*(parent: ptr QWidget): ptr QMainWindow {. header:headerFile, importcpp:"new QMainWindow(@)" .} #
proc newQMainWindow*(): ptr QMainWindow {. header:headerFile, importcpp:"new QMainWindow(@)" .} #

# Public methods for QMainWindow
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QMainWindow_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QMainWindow::tr(@)".} # Public static
proc static_QMainWindow_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QMainWindow::tr(@)".} # Public static
import nimqt/qtcore/qsize
proc iconSize*(this: ptr QMainWindow): QSize {.header:headerFile, importcpp:"#.iconSize(@)".} # Public
proc setIconSize*(this: ptr QMainWindow, iconSize: QSize) {.header:headerFile, importcpp:"#.setIconSize(@)".} # Public
proc toolButtonStyle*(this: ptr QMainWindow): Qt_ToolButtonStyle {.header:headerFile, importcpp:"#.toolButtonStyle(@)".} # Public
proc setToolButtonStyle*(this: ptr QMainWindow, toolButtonStyle: Qt_ToolButtonStyle) {.header:headerFile, importcpp:"#.setToolButtonStyle(@)".} # Public
proc isAnimated*(this: ptr QMainWindow): bool {.header:headerFile, importcpp:"#.isAnimated(@)".} # Public
proc isDockNestingEnabled*(this: ptr QMainWindow): bool {.header:headerFile, importcpp:"#.isDockNestingEnabled(@)".} # Public
proc documentMode*(this: ptr QMainWindow): bool {.header:headerFile, importcpp:"#.documentMode(@)".} # Public
proc setDocumentMode*(this: ptr QMainWindow, enabled: bool) {.header:headerFile, importcpp:"#.setDocumentMode(@)".} # Public
import nimqt/qtwidgets/qtabwidget
proc tabShape*(this: ptr QMainWindow): QTabWidget_TabShape {.header:headerFile, importcpp:"#.tabShape(@)".} # Public
proc setTabShape*(this: ptr QMainWindow, tabShape: QTabWidget_TabShape) {.header:headerFile, importcpp:"#.setTabShape(@)".} # Public
proc tabPosition*(this: ptr QMainWindow, area: Qt_DockWidgetArea): QTabWidget_TabPosition {.header:headerFile, importcpp:"#.tabPosition(@)".} # Public
proc setTabPosition*(this: ptr QMainWindow, areas: Qt_DockWidgetAreas, tabPosition: QTabWidget_TabPosition) {.header:headerFile, importcpp:"#.setTabPosition(@)".} # Public
proc setDockOptions*(this: ptr QMainWindow, options: QFlags[QMainWindow_DockOption]) {.header:headerFile, importcpp:"#.setDockOptions(@)".} # Public
proc dockOptions*(this: ptr QMainWindow): QFlags[QMainWindow_DockOption] {.header:headerFile, importcpp:"#.dockOptions(@)".} # Public
import nimqt/qtcore/qpoint
proc isSeparator*(this: ptr QMainWindow, pos: QPoint): bool {.header:headerFile, importcpp:"#.isSeparator(@)".} # Public
import nimqt/qtwidgets/qmenubar
proc menuBar*(this: ptr QMainWindow): ptr QMenuBar {.header:headerFile, importcpp:"#.menuBar(@)".} # Public
proc setMenuBar*(this: ptr QMainWindow, menubar: ptr QMenuBar) {.header:headerFile, importcpp:"#.setMenuBar(@)".} # Public
proc menuWidget*(this: ptr QMainWindow): ptr QWidget {.header:headerFile, importcpp:"#.menuWidget(@)".} # Public
proc setMenuWidget*(this: ptr QMainWindow, menubar: ptr QWidget) {.header:headerFile, importcpp:"#.setMenuWidget(@)".} # Public
import nimqt/qtwidgets/qstatusbar
proc statusBar*(this: ptr QMainWindow): ptr QStatusBar {.header:headerFile, importcpp:"#.statusBar(@)".} # Public
proc setStatusBar*(this: ptr QMainWindow, statusbar: ptr QStatusBar) {.header:headerFile, importcpp:"#.setStatusBar(@)".} # Public
proc centralWidget*(this: ptr QMainWindow): ptr QWidget {.header:headerFile, importcpp:"#.centralWidget(@)".} # Public
proc setCentralWidget*(this: ptr QMainWindow, widget: ptr QWidget) {.header:headerFile, importcpp:"#.setCentralWidget(@)".} # Public
proc takeCentralWidget*(this: ptr QMainWindow): ptr QWidget {.header:headerFile, importcpp:"#.takeCentralWidget(@)".} # Public
proc setCorner*(this: ptr QMainWindow, corner: Qt_Corner, area: Qt_DockWidgetArea) {.header:headerFile, importcpp:"#.setCorner(@)".} # Public
proc corner*(this: ptr QMainWindow, corner: Qt_Corner): Qt_DockWidgetArea {.header:headerFile, importcpp:"#.corner(@)".} # Public
proc addToolBarBreak*(this: ptr QMainWindow, area: Qt_ToolBarArea) {.header:headerFile, importcpp:"#.addToolBarBreak(@)".} # Public
import nimqt/qtwidgets/qtoolbar
proc insertToolBarBreak*(this: ptr QMainWindow, before: ptr QToolBar) {.header:headerFile, importcpp:"#.insertToolBarBreak(@)".} # Public
proc addToolBar*(this: ptr QMainWindow, area: Qt_ToolBarArea, toolbar: ptr QToolBar) {.header:headerFile, importcpp:"#.addToolBar(@)".} # Public
proc addToolBar*(this: ptr QMainWindow, toolbar: ptr QToolBar) {.header:headerFile, importcpp:"#.addToolBar(@)".} # Public
proc addToolBar*(this: ptr QMainWindow, title: QString): ptr QToolBar {.header:headerFile, importcpp:"#.addToolBar(@)".} # Public
proc insertToolBar*(this: ptr QMainWindow, before: ptr QToolBar, toolbar: ptr QToolBar) {.header:headerFile, importcpp:"#.insertToolBar(@)".} # Public
proc removeToolBar*(this: ptr QMainWindow, toolbar: ptr QToolBar) {.header:headerFile, importcpp:"#.removeToolBar(@)".} # Public
proc removeToolBarBreak*(this: ptr QMainWindow, before: ptr QToolBar) {.header:headerFile, importcpp:"#.removeToolBarBreak(@)".} # Public
proc unifiedTitleAndToolBarOnMac*(this: ptr QMainWindow): bool {.header:headerFile, importcpp:"#.unifiedTitleAndToolBarOnMac(@)".} # Public
proc toolBarArea*(this: ptr QMainWindow, toolbar: ptr QToolBar): Qt_ToolBarArea {.header:headerFile, importcpp:"#.toolBarArea(@)".} # Public
proc toolBarBreak*(this: ptr QMainWindow, toolbar: ptr QToolBar): bool {.header:headerFile, importcpp:"#.toolBarBreak(@)".} # Public
import nimqt/qtwidgets/qdockwidget
proc addDockWidget*(this: ptr QMainWindow, area: Qt_DockWidgetArea, dockwidget: ptr QDockWidget) {.header:headerFile, importcpp:"#.addDockWidget(@)".} # Public
proc addDockWidget*(this: ptr QMainWindow, area: Qt_DockWidgetArea, dockwidget: ptr QDockWidget, orientation: Qt_Orientation) {.header:headerFile, importcpp:"#.addDockWidget(@)".} # Public
proc splitDockWidget*(this: ptr QMainWindow, after: ptr QDockWidget, dockwidget: ptr QDockWidget, orientation: Qt_Orientation) {.header:headerFile, importcpp:"#.splitDockWidget(@)".} # Public
proc tabifyDockWidget*(this: ptr QMainWindow, first: ptr QDockWidget, second: ptr QDockWidget) {.header:headerFile, importcpp:"#.tabifyDockWidget(@)".} # Public
import nimqt/qtcore/qlist
proc tabifiedDockWidgets*(this: ptr QMainWindow, dockwidget: ptr QDockWidget): QList[ptr QDockWidget] {.header:headerFile, importcpp:"#.tabifiedDockWidgets(@)".} # Public
proc removeDockWidget*(this: ptr QMainWindow, dockwidget: ptr QDockWidget) {.header:headerFile, importcpp:"#.removeDockWidget(@)".} # Public
proc restoreDockWidget*(this: ptr QMainWindow, dockwidget: ptr QDockWidget): bool {.header:headerFile, importcpp:"#.restoreDockWidget(@)".} # Public
proc dockWidgetArea*(this: ptr QMainWindow, dockwidget: ptr QDockWidget): Qt_DockWidgetArea {.header:headerFile, importcpp:"#.dockWidgetArea(@)".} # Public
proc resizeDocks*(this: ptr QMainWindow, docks: QList[ptr QDockWidget], sizes: QList[cint], orientation: Qt_Orientation) {.header:headerFile, importcpp:"#.resizeDocks(@)".} # Public
import nimqt/qtcore/qbytearray
# 1 default parameters!
proc saveState*(this: ptr QMainWindow, version: cint): QByteArray {.header:headerFile, importcpp:"#.saveState(@)".} # Public
proc saveState*(this: ptr QMainWindow): QByteArray {.header:headerFile, importcpp:"#.saveState(@)".} # Public
# 1 default parameters!
proc restoreState*(this: ptr QMainWindow, state: QByteArray, version: cint): bool {.header:headerFile, importcpp:"#.restoreState(@)".} # Public
proc restoreState*(this: ptr QMainWindow, state: QByteArray): bool {.header:headerFile, importcpp:"#.restoreState(@)".} # Public
import nimqt/qtwidgets/qmenu
proc createPopupMenu*(this: ptr QMainWindow): ptr QMenu {.header:headerFile, importcpp:"#.createPopupMenu(@)".} # Public
proc setAnimated*(this: ptr QMainWindow, enabled: bool) {.header:headerFile, importcpp:"#.setAnimated(@)".} # Public
proc setDockNestingEnabled*(this: ptr QMainWindow, enabled: bool) {.header:headerFile, importcpp:"#.setDockNestingEnabled(@)".} # Public
proc setUnifiedTitleAndToolBarOnMac*(this: ptr QMainWindow, set: bool) {.header:headerFile, importcpp:"#.setUnifiedTitleAndToolBarOnMac(@)".} # Public
proc iconSizeChanged*(this: ptr QMainWindow, iconSize: QSize) {.header:headerFile, importcpp:"#.iconSizeChanged(@)".} # Public
proc toolButtonStyleChanged*(this: ptr QMainWindow, toolButtonStyle: Qt_ToolButtonStyle) {.header:headerFile, importcpp:"#.toolButtonStyleChanged(@)".} # Public
proc tabifiedDockWidgetActivated*(this: ptr QMainWindow, dockWidget: ptr QDockWidget) {.header:headerFile, importcpp:"#.tabifiedDockWidgetActivated(@)".} # Public

# Protected methods methods for QMainWindow
import nimqt/qtgui/qevent
proc contextMenuEvent*(this: ptr QMainWindow, event: ptr QContextMenuEvent) {.header:headerFile, importcpp:"#.contextMenuEvent(@)".} # Protected
import nimqt/qtcore/qcoreevent
proc event*(this: ptr QMainWindow, event: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Protected

export qevent
export qmenubar
export qmenu
export qstring
export qsize
export qnamespace
export qbytearray
export qlist
export qstatusbar
export qtabwidget
export qdockwidget
export qpoint
export qwidget
export qflags
export qpaintdevice
export qcoreevent
export qtoolbar
