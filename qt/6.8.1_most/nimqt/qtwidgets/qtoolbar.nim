const headerFile* = "QtWidgets/qtoolbar.h"

import nimqt/qtwidgets/qwidget
type
    # Classes found in the C++ code
    QToolBar* {.header:headerFile,importcpp:"QToolBar" ,pure.} = object of QWidget
import nimqt/qtgui/qpaintdevice


type
    # typedefs found in the C++ code
    QToolBar_RenderFlag * = QWidget_RenderFlag
    QToolBar_RenderFlags * = QWidget_RenderFlags
    QToolBar_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric

# Stuff for class QToolBar

# Public constructors for QToolBar
import nimqt/qtcore/qstring
# 1 default parameters!
proc newQToolBar*(title: QString, parent: ptr QWidget): ptr QToolBar {. header:headerFile, importcpp:"new QToolBar(@)" .} #
proc newQToolBar*(title: QString): ptr QToolBar {. header:headerFile, importcpp:"new QToolBar(@)" .} #
# 1 default parameters!
proc newQToolBar*(parent: ptr QWidget): ptr QToolBar {. header:headerFile, importcpp:"new QToolBar(@)" .} #
proc newQToolBar*(): ptr QToolBar {. header:headerFile, importcpp:"new QToolBar(@)" .} #

# Public methods for QToolBar
# 1 default parameters!
proc static_QToolBar_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QToolBar::tr(@)".} # Public static
proc static_QToolBar_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QToolBar::tr(@)".} # Public static
proc setMovable*(this: ptr QToolBar, movable: bool) {.header:headerFile, importcpp:"#.setMovable(@)".} # Public
proc isMovable*(this: ptr QToolBar): bool {.header:headerFile, importcpp:"#.isMovable(@)".} # Public
import nimqt/qtcore/qnamespace
proc setAllowedAreas*(this: ptr QToolBar, areas: Qt_ToolBarAreas) {.header:headerFile, importcpp:"#.setAllowedAreas(@)".} # Public
proc allowedAreas*(this: ptr QToolBar): Qt_ToolBarAreas {.header:headerFile, importcpp:"#.allowedAreas(@)".} # Public
proc isAreaAllowed*(this: ptr QToolBar, area: Qt_ToolBarArea): bool {.header:headerFile, importcpp:"#.isAreaAllowed(@)".} # Public
proc setOrientation*(this: ptr QToolBar, orientation: Qt_Orientation) {.header:headerFile, importcpp:"#.setOrientation(@)".} # Public
proc orientation*(this: ptr QToolBar): Qt_Orientation {.header:headerFile, importcpp:"#.orientation(@)".} # Public
proc clear*(this: ptr QToolBar) {.header:headerFile, importcpp:"#.clear(@)".} # Public
import nimqt/qtgui/qaction
proc addSeparator*(this: ptr QToolBar): ptr QAction {.header:headerFile, importcpp:"#.addSeparator(@)".} # Public
proc insertSeparator*(this: ptr QToolBar, before: ptr QAction): ptr QAction {.header:headerFile, importcpp:"#.insertSeparator(@)".} # Public
proc addWidget*(this: ptr QToolBar, widget: ptr QWidget): ptr QAction {.header:headerFile, importcpp:"#.addWidget(@)".} # Public
proc insertWidget*(this: ptr QToolBar, before: ptr QAction, widget: ptr QWidget): ptr QAction {.header:headerFile, importcpp:"#.insertWidget(@)".} # Public
import nimqt/qtcore/qrect
proc actionGeometry*(this: ptr QToolBar, action: ptr QAction): QRect {.header:headerFile, importcpp:"#.actionGeometry(@)".} # Public
import nimqt/qtcore/qpoint
proc actionAt*(this: ptr QToolBar, p: QPoint): ptr QAction {.header:headerFile, importcpp:"#.actionAt(@)".} # Public
proc actionAt*(this: ptr QToolBar, x: cint, y: cint): ptr QAction {.header:headerFile, importcpp:"#.actionAt(@)".} # Public
proc toggleViewAction*(this: ptr QToolBar): ptr QAction {.header:headerFile, importcpp:"#.toggleViewAction(@)".} # Public
import nimqt/qtcore/qsize
proc iconSize*(this: ptr QToolBar): QSize {.header:headerFile, importcpp:"#.iconSize(@)".} # Public
proc toolButtonStyle*(this: ptr QToolBar): Qt_ToolButtonStyle {.header:headerFile, importcpp:"#.toolButtonStyle(@)".} # Public
proc widgetForAction*(this: ptr QToolBar, action: ptr QAction): ptr QWidget {.header:headerFile, importcpp:"#.widgetForAction(@)".} # Public
proc isFloatable*(this: ptr QToolBar): bool {.header:headerFile, importcpp:"#.isFloatable(@)".} # Public
proc setFloatable*(this: ptr QToolBar, floatable: bool) {.header:headerFile, importcpp:"#.setFloatable(@)".} # Public
proc isFloating*(this: ptr QToolBar): bool {.header:headerFile, importcpp:"#.isFloating(@)".} # Public
proc setIconSize*(this: ptr QToolBar, iconSize: QSize) {.header:headerFile, importcpp:"#.setIconSize(@)".} # Public
proc setToolButtonStyle*(this: ptr QToolBar, toolButtonStyle: Qt_ToolButtonStyle) {.header:headerFile, importcpp:"#.setToolButtonStyle(@)".} # Public
proc actionTriggered*(this: ptr QToolBar, action: ptr QAction) {.header:headerFile, importcpp:"#.actionTriggered(@)".} # Public
proc movableChanged*(this: ptr QToolBar, movable: bool) {.header:headerFile, importcpp:"#.movableChanged(@)".} # Public
proc allowedAreasChanged*(this: ptr QToolBar, allowedAreas: Qt_ToolBarAreas) {.header:headerFile, importcpp:"#.allowedAreasChanged(@)".} # Public
proc orientationChanged*(this: ptr QToolBar, orientation: Qt_Orientation) {.header:headerFile, importcpp:"#.orientationChanged(@)".} # Public
proc iconSizeChanged*(this: ptr QToolBar, iconSize: QSize) {.header:headerFile, importcpp:"#.iconSizeChanged(@)".} # Public
proc toolButtonStyleChanged*(this: ptr QToolBar, toolButtonStyle: Qt_ToolButtonStyle) {.header:headerFile, importcpp:"#.toolButtonStyleChanged(@)".} # Public
proc topLevelChanged*(this: ptr QToolBar, topLevel: bool) {.header:headerFile, importcpp:"#.topLevelChanged(@)".} # Public
proc visibilityChanged*(this: ptr QToolBar, visible: bool) {.header:headerFile, importcpp:"#.visibilityChanged(@)".} # Public

# Protected methods methods for QToolBar
import nimqt/qtgui/qevent
proc actionEvent*(this: ptr QToolBar, event: ptr QActionEvent) {.header:headerFile, importcpp:"#.actionEvent(@)".} # Protected
import nimqt/qtcore/qcoreevent
proc changeEvent*(this: ptr QToolBar, event: ptr QEvent) {.header:headerFile, importcpp:"#.changeEvent(@)".} # Protected
proc paintEvent*(this: ptr QToolBar, event: ptr QPaintEvent) {.header:headerFile, importcpp:"#.paintEvent(@)".} # Protected
proc event*(this: ptr QToolBar, event: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Protected

export qevent
export qstring
export qsize
export qaction
export qnamespace
export qpoint
export qwidget
export qrect
export qpaintdevice
export qcoreevent
