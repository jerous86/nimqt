const headerFile* = "QtWidgets/qtabwidget.h"

type
    # Enums found in the C++ code
    # Global
    QTabWidget_TabPosition* {.header:headerFile,importcpp:"QTabWidget::TabPosition".} = enum North = 0, South = 0x1, West = 0x2, East = 0x3
    QTabWidget_TabShape* {.header:headerFile,importcpp:"QTabWidget::TabShape".} = enum Rounded = 0, Triangular = 0x1

import nimqt/qtwidgets/qwidget
type
    # Classes found in the C++ code
    QTabWidget* {.header:headerFile,importcpp:"QTabWidget" ,pure.} = object of QWidget
import nimqt/qtgui/qpaintdevice


type
    # typedefs found in the C++ code
    QTabWidget_RenderFlag * = QWidget_RenderFlag
    QTabWidget_RenderFlags * = QWidget_RenderFlags
    QTabWidget_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric

# Stuff for class QTabWidget

# Public constructors for QTabWidget
# 1 default parameters!
proc newQTabWidget*(parent: ptr QWidget): ptr QTabWidget {. header:headerFile, importcpp:"new QTabWidget(@)" .} #
proc newQTabWidget*(): ptr QTabWidget {. header:headerFile, importcpp:"new QTabWidget(@)" .} #

# Public methods for QTabWidget
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QTabWidget_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QTabWidget::tr(@)".} # Public static
proc static_QTabWidget_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QTabWidget::tr(@)".} # Public static
proc addTab*(this: ptr QTabWidget, widget: ptr QWidget, arg_1: QString): cint {.header:headerFile, importcpp:"#.addTab(@)".} # Public
import nimqt/qtgui/qicon
proc addTab*(this: ptr QTabWidget, widget: ptr QWidget, icon: QIcon, label: QString): cint {.header:headerFile, importcpp:"#.addTab(@)".} # Public
proc insertTab*(this: ptr QTabWidget, index: cint, widget: ptr QWidget, arg_2: QString): cint {.header:headerFile, importcpp:"#.insertTab(@)".} # Public
proc insertTab*(this: ptr QTabWidget, index: cint, widget: ptr QWidget, icon: QIcon, label: QString): cint {.header:headerFile, importcpp:"#.insertTab(@)".} # Public
proc removeTab*(this: ptr QTabWidget, index: cint) {.header:headerFile, importcpp:"#.removeTab(@)".} # Public
proc isTabEnabled*(this: ptr QTabWidget, index: cint): bool {.header:headerFile, importcpp:"#.isTabEnabled(@)".} # Public
proc setTabEnabled*(this: ptr QTabWidget, index: cint, enabled: bool) {.header:headerFile, importcpp:"#.setTabEnabled(@)".} # Public
proc isTabVisible*(this: ptr QTabWidget, index: cint): bool {.header:headerFile, importcpp:"#.isTabVisible(@)".} # Public
proc setTabVisible*(this: ptr QTabWidget, index: cint, visible: bool) {.header:headerFile, importcpp:"#.setTabVisible(@)".} # Public
proc tabText*(this: ptr QTabWidget, index: cint): QString {.header:headerFile, importcpp:"#.tabText(@)".} # Public
proc setTabText*(this: ptr QTabWidget, index: cint, text: QString) {.header:headerFile, importcpp:"#.setTabText(@)".} # Public
proc tabIcon*(this: ptr QTabWidget, index: cint): QIcon {.header:headerFile, importcpp:"#.tabIcon(@)".} # Public
proc setTabIcon*(this: ptr QTabWidget, index: cint, icon: QIcon) {.header:headerFile, importcpp:"#.setTabIcon(@)".} # Public
proc setTabToolTip*(this: ptr QTabWidget, index: cint, tip: QString) {.header:headerFile, importcpp:"#.setTabToolTip(@)".} # Public
proc tabToolTip*(this: ptr QTabWidget, index: cint): QString {.header:headerFile, importcpp:"#.tabToolTip(@)".} # Public
proc setTabWhatsThis*(this: ptr QTabWidget, index: cint, text: QString) {.header:headerFile, importcpp:"#.setTabWhatsThis(@)".} # Public
proc tabWhatsThis*(this: ptr QTabWidget, index: cint): QString {.header:headerFile, importcpp:"#.tabWhatsThis(@)".} # Public
proc currentIndex*(this: ptr QTabWidget): cint {.header:headerFile, importcpp:"#.currentIndex(@)".} # Public
proc currentWidget*(this: ptr QTabWidget): ptr QWidget {.header:headerFile, importcpp:"#.currentWidget(@)".} # Public
proc widget*(this: ptr QTabWidget, index: cint): ptr QWidget {.header:headerFile, importcpp:"#.widget(@)".} # Public
proc indexOf*(this: ptr QTabWidget, widget: ptr QWidget): cint {.header:headerFile, importcpp:"#.indexOf(@)".} # Public
proc count*(this: ptr QTabWidget): cint {.header:headerFile, importcpp:"#.count(@)".} # Public
proc tabPosition*(this: ptr QTabWidget): QTabWidget_TabPosition {.header:headerFile, importcpp:"#.tabPosition(@)".} # Public
proc setTabPosition*(this: ptr QTabWidget, position: QTabWidget_TabPosition) {.header:headerFile, importcpp:"#.setTabPosition(@)".} # Public
proc tabsClosable*(this: ptr QTabWidget): bool {.header:headerFile, importcpp:"#.tabsClosable(@)".} # Public
proc setTabsClosable*(this: ptr QTabWidget, closeable: bool) {.header:headerFile, importcpp:"#.setTabsClosable(@)".} # Public
proc isMovable*(this: ptr QTabWidget): bool {.header:headerFile, importcpp:"#.isMovable(@)".} # Public
proc setMovable*(this: ptr QTabWidget, movable: bool) {.header:headerFile, importcpp:"#.setMovable(@)".} # Public
proc tabShape*(this: ptr QTabWidget): QTabWidget_TabShape {.header:headerFile, importcpp:"#.tabShape(@)".} # Public
proc setTabShape*(this: ptr QTabWidget, s: QTabWidget_TabShape) {.header:headerFile, importcpp:"#.setTabShape(@)".} # Public
import nimqt/qtcore/qsize
proc sizeHint*(this: ptr QTabWidget): QSize {.header:headerFile, importcpp:"#.sizeHint(@)".} # Public
proc minimumSizeHint*(this: ptr QTabWidget): QSize {.header:headerFile, importcpp:"#.minimumSizeHint(@)".} # Public
proc heightForWidth*(this: ptr QTabWidget, width: cint): cint {.header:headerFile, importcpp:"#.heightForWidth(@)".} # Public
proc hasHeightForWidth*(this: ptr QTabWidget): bool {.header:headerFile, importcpp:"#.hasHeightForWidth(@)".} # Public
import nimqt/qtcore/qnamespace
proc setCornerWidget*(this: ptr QTabWidget, w: ptr QWidget, corner: Qt_Corner) {.header:headerFile, importcpp:"#.setCornerWidget(@)".} # Public
proc cornerWidget*(this: ptr QTabWidget, corner: Qt_Corner): ptr QWidget {.header:headerFile, importcpp:"#.cornerWidget(@)".} # Public
proc elideMode*(this: ptr QTabWidget): Qt_TextElideMode {.header:headerFile, importcpp:"#.elideMode(@)".} # Public
proc setElideMode*(this: ptr QTabWidget, mode: Qt_TextElideMode) {.header:headerFile, importcpp:"#.setElideMode(@)".} # Public
proc iconSize*(this: ptr QTabWidget): QSize {.header:headerFile, importcpp:"#.iconSize(@)".} # Public
proc setIconSize*(this: ptr QTabWidget, size: QSize) {.header:headerFile, importcpp:"#.setIconSize(@)".} # Public
proc usesScrollButtons*(this: ptr QTabWidget): bool {.header:headerFile, importcpp:"#.usesScrollButtons(@)".} # Public
proc setUsesScrollButtons*(this: ptr QTabWidget, useButtons: bool) {.header:headerFile, importcpp:"#.setUsesScrollButtons(@)".} # Public
proc documentMode*(this: ptr QTabWidget): bool {.header:headerFile, importcpp:"#.documentMode(@)".} # Public
proc setDocumentMode*(this: ptr QTabWidget, set: bool) {.header:headerFile, importcpp:"#.setDocumentMode(@)".} # Public
proc tabBarAutoHide*(this: ptr QTabWidget): bool {.header:headerFile, importcpp:"#.tabBarAutoHide(@)".} # Public
proc setTabBarAutoHide*(this: ptr QTabWidget, enabled: bool) {.header:headerFile, importcpp:"#.setTabBarAutoHide(@)".} # Public
proc clear*(this: ptr QTabWidget) {.header:headerFile, importcpp:"#.clear(@)".} # Public
import nimqt/qtwidgets/qtabbar
proc tabBar*(this: ptr QTabWidget): ptr QTabBar {.header:headerFile, importcpp:"#.tabBar(@)".} # Public
proc setCurrentIndex*(this: ptr QTabWidget, index: cint) {.header:headerFile, importcpp:"#.setCurrentIndex(@)".} # Public
proc setCurrentWidget*(this: ptr QTabWidget, widget: ptr QWidget) {.header:headerFile, importcpp:"#.setCurrentWidget(@)".} # Public
proc currentChanged*(this: ptr QTabWidget, index: cint) {.header:headerFile, importcpp:"#.currentChanged(@)".} # Public
proc tabCloseRequested*(this: ptr QTabWidget, index: cint) {.header:headerFile, importcpp:"#.tabCloseRequested(@)".} # Public
proc tabBarClicked*(this: ptr QTabWidget, index: cint) {.header:headerFile, importcpp:"#.tabBarClicked(@)".} # Public
proc tabBarDoubleClicked*(this: ptr QTabWidget, index: cint) {.header:headerFile, importcpp:"#.tabBarDoubleClicked(@)".} # Public

# Protected methods methods for QTabWidget
proc tabInserted*(this: ptr QTabWidget, index: cint) {.header:headerFile, importcpp:"#.tabInserted(@)".} # Protected
proc tabRemoved*(this: ptr QTabWidget, index: cint) {.header:headerFile, importcpp:"#.tabRemoved(@)".} # Protected
import nimqt/qtgui/qevent
proc showEvent*(this: ptr QTabWidget, arg_0: ptr QShowEvent) {.header:headerFile, importcpp:"#.showEvent(@)".} # Protected
proc resizeEvent*(this: ptr QTabWidget, arg_0: ptr QResizeEvent) {.header:headerFile, importcpp:"#.resizeEvent(@)".} # Protected
proc keyPressEvent*(this: ptr QTabWidget, arg_0: ptr QKeyEvent) {.header:headerFile, importcpp:"#.keyPressEvent(@)".} # Protected
proc paintEvent*(this: ptr QTabWidget, arg_0: ptr QPaintEvent) {.header:headerFile, importcpp:"#.paintEvent(@)".} # Protected
proc setTabBar*(this: ptr QTabWidget, arg_0: ptr QTabBar) {.header:headerFile, importcpp:"#.setTabBar(@)".} # Protected
import nimqt/qtcore/qcoreevent
proc changeEvent*(this: ptr QTabWidget, arg_0: ptr QEvent) {.header:headerFile, importcpp:"#.changeEvent(@)".} # Protected
proc event*(this: ptr QTabWidget, arg_0: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Protected

export qevent
export qstring
export qsize
export qnamespace
export qtabbar
export qwidget
export qpaintdevice
export qcoreevent
export qicon
