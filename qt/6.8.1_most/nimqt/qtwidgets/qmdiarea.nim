const headerFile* = "QtWidgets/qmdiarea.h"

type
    # Enums found in the C++ code
    # Global
    QMdiArea_AreaOption* {.header:headerFile,importcpp:"QMdiArea::AreaOption".} = enum DontMaximizeSubWindowOnActivation = 0x1
    QMdiArea_WindowOrder* {.header:headerFile,importcpp:"QMdiArea::WindowOrder".} = enum CreationOrder = 0, StackingOrder = 0x1, ActivationHistoryOrder = 0x2
    QMdiArea_ViewMode* {.header:headerFile,importcpp:"QMdiArea::ViewMode".} = enum SubWindowView = 0, TabbedView = 0x1

import nimqt/qtwidgets/qabstractscrollarea
type
    # Classes found in the C++ code
    QMdiArea* {.header:headerFile,importcpp:"QMdiArea" ,pure.} = object of QAbstractScrollArea
import nimqt/qtwidgets/qframe
import nimqt/qtwidgets/qwidget
import nimqt/qtgui/qpaintdevice
import nimqt/qtcore/qflags


type
    # typedefs found in the C++ code
    QMdiArea_SizeAdjustPolicy * = QAbstractScrollArea_SizeAdjustPolicy
    QMdiArea_Shape * = QFrame_Shape
    QMdiArea_Shadow * = QFrame_Shadow
    QMdiArea_StyleMask * = QFrame_StyleMask
    QMdiArea_RenderFlag * = QWidget_RenderFlag
    QMdiArea_RenderFlags * = QWidget_RenderFlags
    QMdiArea_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric
    QMdiArea_AreaOptions * = QFlags[QMdiArea_AreaOption]

# Stuff for class QMdiArea

# Public constructors for QMdiArea
# 1 default parameters!
proc newQMdiArea*(parent: ptr QWidget): ptr QMdiArea {. header:headerFile, importcpp:"new QMdiArea(@)" .} #
proc newQMdiArea*(): ptr QMdiArea {. header:headerFile, importcpp:"new QMdiArea(@)" .} #

# Public methods for QMdiArea
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QMdiArea_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QMdiArea::tr(@)".} # Public static
proc static_QMdiArea_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QMdiArea::tr(@)".} # Public static
import nimqt/qtcore/qsize
proc sizeHint*(this: ptr QMdiArea): QSize {.header:headerFile, importcpp:"#.sizeHint(@)".} # Public
proc minimumSizeHint*(this: ptr QMdiArea): QSize {.header:headerFile, importcpp:"#.minimumSizeHint(@)".} # Public
import nimqt/qtwidgets/qmdisubwindow
proc currentSubWindow*(this: ptr QMdiArea): ptr QMdiSubWindow {.header:headerFile, importcpp:"#.currentSubWindow(@)".} # Public
proc activeSubWindow*(this: ptr QMdiArea): ptr QMdiSubWindow {.header:headerFile, importcpp:"#.activeSubWindow(@)".} # Public
import nimqt/qtcore/qlist
proc subWindowList*(this: ptr QMdiArea, order: QMdiArea_WindowOrder): QList[ptr QMdiSubWindow] {.header:headerFile, importcpp:"#.subWindowList(@)".} # Public
import nimqt/qtcore/qnamespace
# 1 default parameters!
proc addSubWindow*(this: ptr QMdiArea, widget: ptr QWidget, flags: Qt_WindowFlags): ptr QMdiSubWindow {.header:headerFile, importcpp:"#.addSubWindow(@)".} # Public
proc addSubWindow*(this: ptr QMdiArea, widget: ptr QWidget): ptr QMdiSubWindow {.header:headerFile, importcpp:"#.addSubWindow(@)".} # Public
proc removeSubWindow*(this: ptr QMdiArea, widget: ptr QWidget) {.header:headerFile, importcpp:"#.removeSubWindow(@)".} # Public
import nimqt/qtgui/qbrush
proc background*(this: ptr QMdiArea): QBrush {.header:headerFile, importcpp:"#.background(@)".} # Public
proc setBackground*(this: ptr QMdiArea, background: QBrush) {.header:headerFile, importcpp:"#.setBackground(@)".} # Public
proc activationOrder*(this: ptr QMdiArea): QMdiArea_WindowOrder {.header:headerFile, importcpp:"#.activationOrder(@)".} # Public
proc setActivationOrder*(this: ptr QMdiArea, order: QMdiArea_WindowOrder) {.header:headerFile, importcpp:"#.setActivationOrder(@)".} # Public
# 1 default parameters!
proc setOption*(this: ptr QMdiArea, option: QMdiArea_AreaOption, on: bool) {.header:headerFile, importcpp:"#.setOption(@)".} # Public
proc setOption*(this: ptr QMdiArea, option: QMdiArea_AreaOption) {.header:headerFile, importcpp:"#.setOption(@)".} # Public
proc testOption*(this: ptr QMdiArea, opton: QMdiArea_AreaOption): bool {.header:headerFile, importcpp:"#.testOption(@)".} # Public
proc setViewMode*(this: ptr QMdiArea, mode: QMdiArea_ViewMode) {.header:headerFile, importcpp:"#.setViewMode(@)".} # Public
proc viewMode*(this: ptr QMdiArea): QMdiArea_ViewMode {.header:headerFile, importcpp:"#.viewMode(@)".} # Public
proc documentMode*(this: ptr QMdiArea): bool {.header:headerFile, importcpp:"#.documentMode(@)".} # Public
proc setDocumentMode*(this: ptr QMdiArea, enabled: bool) {.header:headerFile, importcpp:"#.setDocumentMode(@)".} # Public
proc setTabsClosable*(this: ptr QMdiArea, closable: bool) {.header:headerFile, importcpp:"#.setTabsClosable(@)".} # Public
proc tabsClosable*(this: ptr QMdiArea): bool {.header:headerFile, importcpp:"#.tabsClosable(@)".} # Public
proc setTabsMovable*(this: ptr QMdiArea, movable: bool) {.header:headerFile, importcpp:"#.setTabsMovable(@)".} # Public
proc tabsMovable*(this: ptr QMdiArea): bool {.header:headerFile, importcpp:"#.tabsMovable(@)".} # Public
import nimqt/qtwidgets/qtabwidget
proc setTabShape*(this: ptr QMdiArea, shape: QTabWidget_TabShape) {.header:headerFile, importcpp:"#.setTabShape(@)".} # Public
proc tabShape*(this: ptr QMdiArea): QTabWidget_TabShape {.header:headerFile, importcpp:"#.tabShape(@)".} # Public
proc setTabPosition*(this: ptr QMdiArea, position: QTabWidget_TabPosition) {.header:headerFile, importcpp:"#.setTabPosition(@)".} # Public
proc tabPosition*(this: ptr QMdiArea): QTabWidget_TabPosition {.header:headerFile, importcpp:"#.tabPosition(@)".} # Public
proc subWindowActivated*(this: ptr QMdiArea, arg_0: ptr QMdiSubWindow) {.header:headerFile, importcpp:"#.subWindowActivated(@)".} # Public
proc setActiveSubWindow*(this: ptr QMdiArea, window: ptr QMdiSubWindow) {.header:headerFile, importcpp:"#.setActiveSubWindow(@)".} # Public
proc tileSubWindows*(this: ptr QMdiArea) {.header:headerFile, importcpp:"#.tileSubWindows(@)".} # Public
proc cascadeSubWindows*(this: ptr QMdiArea) {.header:headerFile, importcpp:"#.cascadeSubWindows(@)".} # Public
proc closeActiveSubWindow*(this: ptr QMdiArea) {.header:headerFile, importcpp:"#.closeActiveSubWindow(@)".} # Public
proc closeAllSubWindows*(this: ptr QMdiArea) {.header:headerFile, importcpp:"#.closeAllSubWindows(@)".} # Public
proc activateNextSubWindow*(this: ptr QMdiArea) {.header:headerFile, importcpp:"#.activateNextSubWindow(@)".} # Public
proc activatePreviousSubWindow*(this: ptr QMdiArea) {.header:headerFile, importcpp:"#.activatePreviousSubWindow(@)".} # Public

# Protected methods methods for QMdiArea
proc setupViewport*(this: ptr QMdiArea, viewport: ptr QWidget) {.header:headerFile, importcpp:"#.setupViewport(@)".} # Protected
import nimqt/qtcore/qcoreevent
proc event*(this: ptr QMdiArea, event: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Protected
import nimqt/qtcore/qobject
proc eventFilter*(this: ptr QMdiArea, `object`: ptr QObject, event: ptr QEvent): bool {.header:headerFile, importcpp:"#.eventFilter(@)".} # Protected
import nimqt/qtgui/qevent
proc paintEvent*(this: ptr QMdiArea, paintEvent: ptr QPaintEvent) {.header:headerFile, importcpp:"#.paintEvent(@)".} # Protected
proc childEvent*(this: ptr QMdiArea, childEvent: ptr QChildEvent) {.header:headerFile, importcpp:"#.childEvent(@)".} # Protected
proc resizeEvent*(this: ptr QMdiArea, resizeEvent: ptr QResizeEvent) {.header:headerFile, importcpp:"#.resizeEvent(@)".} # Protected
proc timerEvent*(this: ptr QMdiArea, timerEvent: ptr QTimerEvent) {.header:headerFile, importcpp:"#.timerEvent(@)".} # Protected
proc showEvent*(this: ptr QMdiArea, showEvent: ptr QShowEvent) {.header:headerFile, importcpp:"#.showEvent(@)".} # Protected
proc viewportEvent*(this: ptr QMdiArea, event: ptr QEvent): bool {.header:headerFile, importcpp:"#.viewportEvent(@)".} # Protected
proc scrollContentsBy*(this: ptr QMdiArea, dx: cint, dy: cint) {.header:headerFile, importcpp:"#.scrollContentsBy(@)".} # Protected

export qevent
export qstring
export qsize
export qabstractscrollarea
export qnamespace
export qlist
export qtabwidget
export qbrush
export qwidget
export qflags
export qmdisubwindow
export qpaintdevice
export qobject
export qcoreevent
export qframe
