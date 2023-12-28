const headerFile* = "QtWidgets/qabstractbutton.h"

import nimqt/qtwidgets/qwidget
type
    # Classes found in the C++ code
    QAbstractButton* {.header:headerFile,importcpp:"QAbstractButton" ,pure.} = object of QWidget
import nimqt/qtgui/qpaintdevice


type
    # typedefs found in the C++ code
    QAbstractButton_RenderFlag * = QWidget_RenderFlag
    QAbstractButton_RenderFlags * = QWidget_RenderFlags
    QAbstractButton_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric

# Stuff for class QAbstractButton

# Public constructors for QAbstractButton
# 1 default parameters!
proc newQAbstractButton*(parent: ptr QWidget): ptr QAbstractButton {. header:headerFile, importcpp:"new QAbstractButton(@)" .} #
proc newQAbstractButton*(): ptr QAbstractButton {. header:headerFile, importcpp:"new QAbstractButton(@)" .} #

# Public methods for QAbstractButton
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QAbstractButton_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QAbstractButton::tr(@)".} # Public static
proc static_QAbstractButton_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QAbstractButton::tr(@)".} # Public static
proc setText*(this: ptr QAbstractButton, text: QString) {.header:headerFile, importcpp:"#.setText(@)".} # Public
proc text*(this: ptr QAbstractButton): QString {.header:headerFile, importcpp:"#.text(@)".} # Public
import nimqt/qtgui/qicon
proc setIcon*(this: ptr QAbstractButton, icon: QIcon) {.header:headerFile, importcpp:"#.setIcon(@)".} # Public
proc icon*(this: ptr QAbstractButton): QIcon {.header:headerFile, importcpp:"#.icon(@)".} # Public
import nimqt/qtcore/qsize
proc iconSize*(this: ptr QAbstractButton): QSize {.header:headerFile, importcpp:"#.iconSize(@)".} # Public
import nimqt/qtgui/qkeysequence
proc setShortcut*(this: ptr QAbstractButton, key: QKeySequence) {.header:headerFile, importcpp:"#.setShortcut(@)".} # Public
proc setShortcut*(this: ptr QAbstractButton, key: QString) {.header:headerFile, importcpp:"#.setShortcut(@)".} # Public
proc shortcut*(this: ptr QAbstractButton): QKeySequence {.header:headerFile, importcpp:"#.shortcut(@)".} # Public
proc setCheckable*(this: ptr QAbstractButton, arg_0: bool) {.header:headerFile, importcpp:"#.setCheckable(@)".} # Public
proc isCheckable*(this: ptr QAbstractButton): bool {.header:headerFile, importcpp:"#.isCheckable(@)".} # Public
proc isChecked*(this: ptr QAbstractButton): bool {.header:headerFile, importcpp:"#.isChecked(@)".} # Public
proc setDown*(this: ptr QAbstractButton, arg_0: bool) {.header:headerFile, importcpp:"#.setDown(@)".} # Public
proc isDown*(this: ptr QAbstractButton): bool {.header:headerFile, importcpp:"#.isDown(@)".} # Public
proc setAutoRepeat*(this: ptr QAbstractButton, arg_0: bool) {.header:headerFile, importcpp:"#.setAutoRepeat(@)".} # Public
proc autoRepeat*(this: ptr QAbstractButton): bool {.header:headerFile, importcpp:"#.autoRepeat(@)".} # Public
proc setAutoRepeatDelay*(this: ptr QAbstractButton, arg_0: cint) {.header:headerFile, importcpp:"#.setAutoRepeatDelay(@)".} # Public
proc autoRepeatDelay*(this: ptr QAbstractButton): cint {.header:headerFile, importcpp:"#.autoRepeatDelay(@)".} # Public
proc setAutoRepeatInterval*(this: ptr QAbstractButton, arg_0: cint) {.header:headerFile, importcpp:"#.setAutoRepeatInterval(@)".} # Public
proc autoRepeatInterval*(this: ptr QAbstractButton): cint {.header:headerFile, importcpp:"#.autoRepeatInterval(@)".} # Public
proc setAutoExclusive*(this: ptr QAbstractButton, arg_0: bool) {.header:headerFile, importcpp:"#.setAutoExclusive(@)".} # Public
proc autoExclusive*(this: ptr QAbstractButton): bool {.header:headerFile, importcpp:"#.autoExclusive(@)".} # Public
import nimqt/qtwidgets/qbuttongroup
proc group*(this: ptr QAbstractButton): ptr QButtonGroup {.header:headerFile, importcpp:"#.group(@)".} # Public
proc setIconSize*(this: ptr QAbstractButton, size: QSize) {.header:headerFile, importcpp:"#.setIconSize(@)".} # Public
proc animateClick*(this: ptr QAbstractButton) {.header:headerFile, importcpp:"#.animateClick(@)".} # Public
proc click*(this: ptr QAbstractButton) {.header:headerFile, importcpp:"#.click(@)".} # Public
proc toggle*(this: ptr QAbstractButton) {.header:headerFile, importcpp:"#.toggle(@)".} # Public
proc setChecked*(this: ptr QAbstractButton, arg_0: bool) {.header:headerFile, importcpp:"#.setChecked(@)".} # Public
proc pressed*(this: ptr QAbstractButton) {.header:headerFile, importcpp:"#.pressed(@)".} # Public
proc released*(this: ptr QAbstractButton) {.header:headerFile, importcpp:"#.released(@)".} # Public
# 1 default parameters!
proc clicked*(this: ptr QAbstractButton, checked: bool) {.header:headerFile, importcpp:"#.clicked(@)".} # Public
proc clicked*(this: ptr QAbstractButton) {.header:headerFile, importcpp:"#.clicked(@)".} # Public
proc toggled*(this: ptr QAbstractButton, checked: bool) {.header:headerFile, importcpp:"#.toggled(@)".} # Public

# Protected methods methods for QAbstractButton
import nimqt/qtgui/qevent
proc paintEvent*(this: ptr QAbstractButton, e: ptr QPaintEvent) {.header:headerFile, importcpp:"#.paintEvent(@)".} # Protected
import nimqt/qtcore/qpoint
proc hitButton*(this: ptr QAbstractButton, pos: QPoint): bool {.header:headerFile, importcpp:"#.hitButton(@)".} # Protected
proc checkStateSet*(this: ptr QAbstractButton) {.header:headerFile, importcpp:"#.checkStateSet(@)".} # Protected
proc nextCheckState*(this: ptr QAbstractButton) {.header:headerFile, importcpp:"#.nextCheckState(@)".} # Protected
import nimqt/qtcore/qcoreevent
proc event*(this: ptr QAbstractButton, e: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Protected
proc keyPressEvent*(this: ptr QAbstractButton, e: ptr QKeyEvent) {.header:headerFile, importcpp:"#.keyPressEvent(@)".} # Protected
proc keyReleaseEvent*(this: ptr QAbstractButton, e: ptr QKeyEvent) {.header:headerFile, importcpp:"#.keyReleaseEvent(@)".} # Protected
proc mousePressEvent*(this: ptr QAbstractButton, e: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mousePressEvent(@)".} # Protected
proc mouseReleaseEvent*(this: ptr QAbstractButton, e: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mouseReleaseEvent(@)".} # Protected
proc mouseMoveEvent*(this: ptr QAbstractButton, e: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mouseMoveEvent(@)".} # Protected
proc focusInEvent*(this: ptr QAbstractButton, e: ptr QFocusEvent) {.header:headerFile, importcpp:"#.focusInEvent(@)".} # Protected
proc focusOutEvent*(this: ptr QAbstractButton, e: ptr QFocusEvent) {.header:headerFile, importcpp:"#.focusOutEvent(@)".} # Protected
proc changeEvent*(this: ptr QAbstractButton, e: ptr QEvent) {.header:headerFile, importcpp:"#.changeEvent(@)".} # Protected
proc timerEvent*(this: ptr QAbstractButton, e: ptr QTimerEvent) {.header:headerFile, importcpp:"#.timerEvent(@)".} # Protected

export qevent
export qbuttongroup
export qstring
export qsize
export qkeysequence
export qpoint
export qwidget
export qpaintdevice
export qcoreevent
export qicon
