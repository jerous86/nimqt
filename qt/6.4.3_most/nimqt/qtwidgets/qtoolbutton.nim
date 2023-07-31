const headerFile* = "QtWidgets/qtoolbutton.h"

type
    # Enums found in the C++ code
    # Global
    QToolButton_ToolButtonPopupMode* {.header:headerFile,importcpp:"QToolButton::ToolButtonPopupMode".} = enum DelayedPopup = 0, MenuButtonPopup = 0x1, InstantPopup = 0x2

import nimqt/qtwidgets/qabstractbutton
type
    # Classes found in the C++ code
    QToolButton* {.header:headerFile,importcpp:"QToolButton" ,pure.} = object of QAbstractButton
import nimqt/qtwidgets/qwidget
import nimqt/qtgui/qpaintdevice


type
    # typedefs found in the C++ code
    QToolButton_RenderFlag * = QWidget_RenderFlag
    QToolButton_RenderFlags * = QWidget_RenderFlags
    QToolButton_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric

# Stuff for class QToolButton

# Public constructors for QToolButton
# 1 default parameters!
proc newQToolButton*(parent: ptr QWidget): ptr QToolButton {. header:headerFile, importcpp:"new QToolButton(@)" .} #
proc newQToolButton*(): ptr QToolButton {. header:headerFile, importcpp:"new QToolButton(@)" .} #

# Public methods for QToolButton
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QToolButton_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QToolButton::tr(@)".} # Public static
proc static_QToolButton_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QToolButton::tr(@)".} # Public static
import nimqt/qtcore/qsize
proc sizeHint*(this: ptr QToolButton): QSize {.header:headerFile, importcpp:"#.sizeHint(@)".} # Public
proc minimumSizeHint*(this: ptr QToolButton): QSize {.header:headerFile, importcpp:"#.minimumSizeHint(@)".} # Public
import nimqt/qtcore/qnamespace
proc toolButtonStyle*(this: ptr QToolButton): Qt_ToolButtonStyle {.header:headerFile, importcpp:"#.toolButtonStyle(@)".} # Public
proc arrowType*(this: ptr QToolButton): Qt_ArrowType {.header:headerFile, importcpp:"#.arrowType(@)".} # Public
proc setArrowType*(this: ptr QToolButton, `type`: Qt_ArrowType) {.header:headerFile, importcpp:"#.setArrowType(@)".} # Public
import nimqt/qtwidgets/qmenu
proc setMenu*(this: ptr QToolButton, menu: ptr QMenu) {.header:headerFile, importcpp:"#.setMenu(@)".} # Public
proc menu*(this: ptr QToolButton): ptr QMenu {.header:headerFile, importcpp:"#.menu(@)".} # Public
proc setPopupMode*(this: ptr QToolButton, mode: QToolButton_ToolButtonPopupMode) {.header:headerFile, importcpp:"#.setPopupMode(@)".} # Public
proc popupMode*(this: ptr QToolButton): QToolButton_ToolButtonPopupMode {.header:headerFile, importcpp:"#.popupMode(@)".} # Public
import nimqt/qtgui/qaction
proc defaultAction*(this: ptr QToolButton): ptr QAction {.header:headerFile, importcpp:"#.defaultAction(@)".} # Public
proc setAutoRaise*(this: ptr QToolButton, enable: bool) {.header:headerFile, importcpp:"#.setAutoRaise(@)".} # Public
proc autoRaise*(this: ptr QToolButton): bool {.header:headerFile, importcpp:"#.autoRaise(@)".} # Public
proc showMenu*(this: ptr QToolButton) {.header:headerFile, importcpp:"#.showMenu(@)".} # Public
proc setToolButtonStyle*(this: ptr QToolButton, style: Qt_ToolButtonStyle) {.header:headerFile, importcpp:"#.setToolButtonStyle(@)".} # Public
proc setDefaultAction*(this: ptr QToolButton, arg_0: ptr QAction) {.header:headerFile, importcpp:"#.setDefaultAction(@)".} # Public
proc triggered*(this: ptr QToolButton, arg_0: ptr QAction) {.header:headerFile, importcpp:"#.triggered(@)".} # Public

# Protected methods methods for QToolButton
import nimqt/qtcore/qcoreevent
proc event*(this: ptr QToolButton, e: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Protected
import nimqt/qtgui/qevent
proc mousePressEvent*(this: ptr QToolButton, arg_0: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mousePressEvent(@)".} # Protected
proc mouseReleaseEvent*(this: ptr QToolButton, arg_0: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mouseReleaseEvent(@)".} # Protected
proc paintEvent*(this: ptr QToolButton, arg_0: ptr QPaintEvent) {.header:headerFile, importcpp:"#.paintEvent(@)".} # Protected
proc actionEvent*(this: ptr QToolButton, arg_0: ptr QActionEvent) {.header:headerFile, importcpp:"#.actionEvent(@)".} # Protected
proc enterEvent*(this: ptr QToolButton, arg_0: ptr QEnterEvent) {.header:headerFile, importcpp:"#.enterEvent(@)".} # Protected
proc leaveEvent*(this: ptr QToolButton, arg_0: ptr QEvent) {.header:headerFile, importcpp:"#.leaveEvent(@)".} # Protected
proc timerEvent*(this: ptr QToolButton, arg_0: ptr QTimerEvent) {.header:headerFile, importcpp:"#.timerEvent(@)".} # Protected
proc changeEvent*(this: ptr QToolButton, arg_0: ptr QEvent) {.header:headerFile, importcpp:"#.changeEvent(@)".} # Protected
import nimqt/qtcore/qpoint
proc hitButton*(this: ptr QToolButton, pos: QPoint): bool {.header:headerFile, importcpp:"#.hitButton(@)".} # Protected
proc checkStateSet*(this: ptr QToolButton) {.header:headerFile, importcpp:"#.checkStateSet(@)".} # Protected
proc nextCheckState*(this: ptr QToolButton) {.header:headerFile, importcpp:"#.nextCheckState(@)".} # Protected

export qevent
export qmenu
export qstring
export qsize
export qaction
export qnamespace
export qpoint
export qabstractbutton
export qwidget
export qpaintdevice
export qcoreevent
