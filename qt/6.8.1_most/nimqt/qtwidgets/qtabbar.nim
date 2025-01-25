const headerFile* = "QtWidgets/qtabbar.h"

type
    # Enums found in the C++ code
    # Global
    QTabBar_Shape* {.header:headerFile,importcpp:"QTabBar::Shape".} = enum RoundedNorth = 0, RoundedSouth = 0x1, RoundedWest = 0x2, RoundedEast = 0x3, 
        TriangularNorth = 0x4, TriangularSouth = 0x5, TriangularWest = 0x6, TriangularEast = 0x7
    QTabBar_ButtonPosition* {.header:headerFile,importcpp:"QTabBar::ButtonPosition".} = enum LeftSide = 0, RightSide = 0x1
    QTabBar_SelectionBehavior* {.header:headerFile,importcpp:"QTabBar::SelectionBehavior".} = enum SelectLeftTab = 0, SelectRightTab = 0x1, SelectPreviousTab = 0x2

import nimqt/qtwidgets/qwidget
type
    # Classes found in the C++ code
    QTabBar* {.header:headerFile,importcpp:"QTabBar" ,pure.} = object of QWidget
import nimqt/qtgui/qpaintdevice


type
    # typedefs found in the C++ code
    QTabBar_RenderFlag * = QWidget_RenderFlag
    QTabBar_RenderFlags * = QWidget_RenderFlags
    QTabBar_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric

# Stuff for class QTabBar

# Public constructors for QTabBar
# 1 default parameters!
proc newQTabBar*(parent: ptr QWidget): ptr QTabBar {. header:headerFile, importcpp:"new QTabBar(@)" .} #
proc newQTabBar*(): ptr QTabBar {. header:headerFile, importcpp:"new QTabBar(@)" .} #

# Public methods for QTabBar
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QTabBar_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QTabBar::tr(@)".} # Public static
proc static_QTabBar_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QTabBar::tr(@)".} # Public static
proc shape*(this: ptr QTabBar): QTabBar_Shape {.header:headerFile, importcpp:"#.shape(@)".} # Public
proc setShape*(this: ptr QTabBar, shape: QTabBar_Shape) {.header:headerFile, importcpp:"#.setShape(@)".} # Public
proc addTab*(this: ptr QTabBar, text: QString): cint {.header:headerFile, importcpp:"#.addTab(@)".} # Public
import nimqt/qtgui/qicon
proc addTab*(this: ptr QTabBar, icon: QIcon, text: QString): cint {.header:headerFile, importcpp:"#.addTab(@)".} # Public
proc insertTab*(this: ptr QTabBar, index: cint, text: QString): cint {.header:headerFile, importcpp:"#.insertTab(@)".} # Public
proc insertTab*(this: ptr QTabBar, index: cint, icon: QIcon, text: QString): cint {.header:headerFile, importcpp:"#.insertTab(@)".} # Public
proc removeTab*(this: ptr QTabBar, index: cint) {.header:headerFile, importcpp:"#.removeTab(@)".} # Public
proc moveTab*(this: ptr QTabBar, `from`: cint, to: cint) {.header:headerFile, importcpp:"#.moveTab(@)".} # Public
proc isTabEnabled*(this: ptr QTabBar, index: cint): bool {.header:headerFile, importcpp:"#.isTabEnabled(@)".} # Public
proc setTabEnabled*(this: ptr QTabBar, index: cint, enabled: bool) {.header:headerFile, importcpp:"#.setTabEnabled(@)".} # Public
proc isTabVisible*(this: ptr QTabBar, index: cint): bool {.header:headerFile, importcpp:"#.isTabVisible(@)".} # Public
proc setTabVisible*(this: ptr QTabBar, index: cint, visible: bool) {.header:headerFile, importcpp:"#.setTabVisible(@)".} # Public
proc tabText*(this: ptr QTabBar, index: cint): QString {.header:headerFile, importcpp:"#.tabText(@)".} # Public
proc setTabText*(this: ptr QTabBar, index: cint, text: QString) {.header:headerFile, importcpp:"#.setTabText(@)".} # Public
import nimqt/qtgui/qcolor
proc tabTextColor*(this: ptr QTabBar, index: cint): QColor {.header:headerFile, importcpp:"#.tabTextColor(@)".} # Public
proc setTabTextColor*(this: ptr QTabBar, index: cint, color: QColor) {.header:headerFile, importcpp:"#.setTabTextColor(@)".} # Public
proc tabIcon*(this: ptr QTabBar, index: cint): QIcon {.header:headerFile, importcpp:"#.tabIcon(@)".} # Public
proc setTabIcon*(this: ptr QTabBar, index: cint, icon: QIcon) {.header:headerFile, importcpp:"#.setTabIcon(@)".} # Public
import nimqt/qtcore/qnamespace
proc elideMode*(this: ptr QTabBar): Qt_TextElideMode {.header:headerFile, importcpp:"#.elideMode(@)".} # Public
proc setElideMode*(this: ptr QTabBar, mode: Qt_TextElideMode) {.header:headerFile, importcpp:"#.setElideMode(@)".} # Public
proc setTabToolTip*(this: ptr QTabBar, index: cint, tip: QString) {.header:headerFile, importcpp:"#.setTabToolTip(@)".} # Public
proc tabToolTip*(this: ptr QTabBar, index: cint): QString {.header:headerFile, importcpp:"#.tabToolTip(@)".} # Public
proc setTabWhatsThis*(this: ptr QTabBar, index: cint, text: QString) {.header:headerFile, importcpp:"#.setTabWhatsThis(@)".} # Public
proc tabWhatsThis*(this: ptr QTabBar, index: cint): QString {.header:headerFile, importcpp:"#.tabWhatsThis(@)".} # Public
import nimqt/qtcore/qvariant
proc setTabData*(this: ptr QTabBar, index: cint, data: QVariant) {.header:headerFile, importcpp:"#.setTabData(@)".} # Public
proc tabData*(this: ptr QTabBar, index: cint): QVariant {.header:headerFile, importcpp:"#.tabData(@)".} # Public
import nimqt/qtcore/qrect
proc tabRect*(this: ptr QTabBar, index: cint): QRect {.header:headerFile, importcpp:"#.tabRect(@)".} # Public
import nimqt/qtcore/qpoint
proc tabAt*(this: ptr QTabBar, pos: QPoint): cint {.header:headerFile, importcpp:"#.tabAt(@)".} # Public
proc currentIndex*(this: ptr QTabBar): cint {.header:headerFile, importcpp:"#.currentIndex(@)".} # Public
proc count*(this: ptr QTabBar): cint {.header:headerFile, importcpp:"#.count(@)".} # Public
import nimqt/qtcore/qsize
proc sizeHint*(this: ptr QTabBar): QSize {.header:headerFile, importcpp:"#.sizeHint(@)".} # Public
proc minimumSizeHint*(this: ptr QTabBar): QSize {.header:headerFile, importcpp:"#.minimumSizeHint(@)".} # Public
proc setDrawBase*(this: ptr QTabBar, drawTheBase: bool) {.header:headerFile, importcpp:"#.setDrawBase(@)".} # Public
proc drawBase*(this: ptr QTabBar): bool {.header:headerFile, importcpp:"#.drawBase(@)".} # Public
proc iconSize*(this: ptr QTabBar): QSize {.header:headerFile, importcpp:"#.iconSize(@)".} # Public
proc setIconSize*(this: ptr QTabBar, size: QSize) {.header:headerFile, importcpp:"#.setIconSize(@)".} # Public
proc usesScrollButtons*(this: ptr QTabBar): bool {.header:headerFile, importcpp:"#.usesScrollButtons(@)".} # Public
proc setUsesScrollButtons*(this: ptr QTabBar, useButtons: bool) {.header:headerFile, importcpp:"#.setUsesScrollButtons(@)".} # Public
proc tabsClosable*(this: ptr QTabBar): bool {.header:headerFile, importcpp:"#.tabsClosable(@)".} # Public
proc setTabsClosable*(this: ptr QTabBar, closable: bool) {.header:headerFile, importcpp:"#.setTabsClosable(@)".} # Public
proc setTabButton*(this: ptr QTabBar, index: cint, position: QTabBar_ButtonPosition, widget: ptr QWidget) {.header:headerFile, importcpp:"#.setTabButton(@)".} # Public
proc tabButton*(this: ptr QTabBar, index: cint, position: QTabBar_ButtonPosition): ptr QWidget {.header:headerFile, importcpp:"#.tabButton(@)".} # Public
proc selectionBehaviorOnRemove*(this: ptr QTabBar): QTabBar_SelectionBehavior {.header:headerFile, importcpp:"#.selectionBehaviorOnRemove(@)".} # Public
proc setSelectionBehaviorOnRemove*(this: ptr QTabBar, behavior: QTabBar_SelectionBehavior) {.header:headerFile, importcpp:"#.setSelectionBehaviorOnRemove(@)".} # Public
proc expanding*(this: ptr QTabBar): bool {.header:headerFile, importcpp:"#.expanding(@)".} # Public
proc setExpanding*(this: ptr QTabBar, enabled: bool) {.header:headerFile, importcpp:"#.setExpanding(@)".} # Public
proc isMovable*(this: ptr QTabBar): bool {.header:headerFile, importcpp:"#.isMovable(@)".} # Public
proc setMovable*(this: ptr QTabBar, movable: bool) {.header:headerFile, importcpp:"#.setMovable(@)".} # Public
proc documentMode*(this: ptr QTabBar): bool {.header:headerFile, importcpp:"#.documentMode(@)".} # Public
proc setDocumentMode*(this: ptr QTabBar, set: bool) {.header:headerFile, importcpp:"#.setDocumentMode(@)".} # Public
proc autoHide*(this: ptr QTabBar): bool {.header:headerFile, importcpp:"#.autoHide(@)".} # Public
proc setAutoHide*(this: ptr QTabBar, hide: bool) {.header:headerFile, importcpp:"#.setAutoHide(@)".} # Public
proc changeCurrentOnDrag*(this: ptr QTabBar): bool {.header:headerFile, importcpp:"#.changeCurrentOnDrag(@)".} # Public
proc setChangeCurrentOnDrag*(this: ptr QTabBar, change: bool) {.header:headerFile, importcpp:"#.setChangeCurrentOnDrag(@)".} # Public
proc accessibleTabName*(this: ptr QTabBar, index: cint): QString {.header:headerFile, importcpp:"#.accessibleTabName(@)".} # Public
proc setAccessibleTabName*(this: ptr QTabBar, index: cint, name: QString) {.header:headerFile, importcpp:"#.setAccessibleTabName(@)".} # Public
proc setCurrentIndex*(this: ptr QTabBar, index: cint) {.header:headerFile, importcpp:"#.setCurrentIndex(@)".} # Public
proc currentChanged*(this: ptr QTabBar, index: cint) {.header:headerFile, importcpp:"#.currentChanged(@)".} # Public
proc tabCloseRequested*(this: ptr QTabBar, index: cint) {.header:headerFile, importcpp:"#.tabCloseRequested(@)".} # Public
proc tabMoved*(this: ptr QTabBar, `from`: cint, to: cint) {.header:headerFile, importcpp:"#.tabMoved(@)".} # Public
proc tabBarClicked*(this: ptr QTabBar, index: cint) {.header:headerFile, importcpp:"#.tabBarClicked(@)".} # Public
proc tabBarDoubleClicked*(this: ptr QTabBar, index: cint) {.header:headerFile, importcpp:"#.tabBarDoubleClicked(@)".} # Public

# Protected methods methods for QTabBar
proc tabSizeHint*(this: ptr QTabBar, index: cint): QSize {.header:headerFile, importcpp:"#.tabSizeHint(@)".} # Protected
proc minimumTabSizeHint*(this: ptr QTabBar, index: cint): QSize {.header:headerFile, importcpp:"#.minimumTabSizeHint(@)".} # Protected
proc tabInserted*(this: ptr QTabBar, index: cint) {.header:headerFile, importcpp:"#.tabInserted(@)".} # Protected
proc tabRemoved*(this: ptr QTabBar, index: cint) {.header:headerFile, importcpp:"#.tabRemoved(@)".} # Protected
proc tabLayoutChange*(this: ptr QTabBar) {.header:headerFile, importcpp:"#.tabLayoutChange(@)".} # Protected
import nimqt/qtcore/qcoreevent
proc event*(this: ptr QTabBar, arg_0: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Protected
import nimqt/qtgui/qevent
proc resizeEvent*(this: ptr QTabBar, arg_0: ptr QResizeEvent) {.header:headerFile, importcpp:"#.resizeEvent(@)".} # Protected
proc showEvent*(this: ptr QTabBar, arg_0: ptr QShowEvent) {.header:headerFile, importcpp:"#.showEvent(@)".} # Protected
proc hideEvent*(this: ptr QTabBar, arg_0: ptr QHideEvent) {.header:headerFile, importcpp:"#.hideEvent(@)".} # Protected
proc paintEvent*(this: ptr QTabBar, arg_0: ptr QPaintEvent) {.header:headerFile, importcpp:"#.paintEvent(@)".} # Protected
proc mousePressEvent*(this: ptr QTabBar, arg_0: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mousePressEvent(@)".} # Protected
proc mouseMoveEvent*(this: ptr QTabBar, arg_0: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mouseMoveEvent(@)".} # Protected
proc mouseReleaseEvent*(this: ptr QTabBar, arg_0: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mouseReleaseEvent(@)".} # Protected
proc mouseDoubleClickEvent*(this: ptr QTabBar, arg_0: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mouseDoubleClickEvent(@)".} # Protected
proc wheelEvent*(this: ptr QTabBar, event: ptr QWheelEvent) {.header:headerFile, importcpp:"#.wheelEvent(@)".} # Protected
proc keyPressEvent*(this: ptr QTabBar, arg_0: ptr QKeyEvent) {.header:headerFile, importcpp:"#.keyPressEvent(@)".} # Protected
proc changeEvent*(this: ptr QTabBar, arg_0: ptr QEvent) {.header:headerFile, importcpp:"#.changeEvent(@)".} # Protected
proc timerEvent*(this: ptr QTabBar, event: ptr QTimerEvent) {.header:headerFile, importcpp:"#.timerEvent(@)".} # Protected

export qevent
export qstring
export qsize
export qnamespace
export qvariant
export qpoint
export qwidget
export qrect
export qpaintdevice
export qcoreevent
export qicon
export qcolor
