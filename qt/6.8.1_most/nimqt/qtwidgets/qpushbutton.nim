const headerFile* = "QtWidgets/qpushbutton.h"

import nimqt/qtwidgets/qabstractbutton
type
    # Classes found in the C++ code
    QPushButton* {.header:headerFile,importcpp:"QPushButton" ,pure.} = object of QAbstractButton
import nimqt/qtwidgets/qwidget
import nimqt/qtgui/qpaintdevice


type
    # typedefs found in the C++ code
    QPushButton_RenderFlag * = QWidget_RenderFlag
    QPushButton_RenderFlags * = QWidget_RenderFlags
    QPushButton_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric

# Stuff for class QPushButton

# Public constructors for QPushButton
# 1 default parameters!
proc newQPushButton*(parent: ptr QWidget): ptr QPushButton {. header:headerFile, importcpp:"new QPushButton(@)" .} #
proc newQPushButton*(): ptr QPushButton {. header:headerFile, importcpp:"new QPushButton(@)" .} #
import nimqt/qtcore/qstring
# 1 default parameters!
proc newQPushButton*(text: QString, parent: ptr QWidget): ptr QPushButton {. header:headerFile, importcpp:"new QPushButton(@)" .} #
proc newQPushButton*(text: QString): ptr QPushButton {. header:headerFile, importcpp:"new QPushButton(@)" .} #
import nimqt/qtgui/qicon
# 1 default parameters!
proc newQPushButton*(icon: QIcon, text: QString, parent: ptr QWidget): ptr QPushButton {. header:headerFile, importcpp:"new QPushButton(@)" .} #
proc newQPushButton*(icon: QIcon, text: QString): ptr QPushButton {. header:headerFile, importcpp:"new QPushButton(@)" .} #

# Public methods for QPushButton
# 1 default parameters!
proc static_QPushButton_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QPushButton::tr(@)".} # Public static
proc static_QPushButton_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QPushButton::tr(@)".} # Public static
import nimqt/qtcore/qsize
proc sizeHint*(this: ptr QPushButton): QSize {.header:headerFile, importcpp:"#.sizeHint(@)".} # Public
proc minimumSizeHint*(this: ptr QPushButton): QSize {.header:headerFile, importcpp:"#.minimumSizeHint(@)".} # Public
proc autoDefault*(this: ptr QPushButton): bool {.header:headerFile, importcpp:"#.autoDefault(@)".} # Public
proc setAutoDefault*(this: ptr QPushButton, arg_0: bool) {.header:headerFile, importcpp:"#.setAutoDefault(@)".} # Public
proc isDefault*(this: ptr QPushButton): bool {.header:headerFile, importcpp:"#.isDefault(@)".} # Public
proc setDefault*(this: ptr QPushButton, arg_0: bool) {.header:headerFile, importcpp:"#.setDefault(@)".} # Public
import nimqt/qtwidgets/qmenu
proc setMenu*(this: ptr QPushButton, menu: ptr QMenu) {.header:headerFile, importcpp:"#.setMenu(@)".} # Public
proc menu*(this: ptr QPushButton): ptr QMenu {.header:headerFile, importcpp:"#.menu(@)".} # Public
proc setFlat*(this: ptr QPushButton, arg_0: bool) {.header:headerFile, importcpp:"#.setFlat(@)".} # Public
proc isFlat*(this: ptr QPushButton): bool {.header:headerFile, importcpp:"#.isFlat(@)".} # Public
proc showMenu*(this: ptr QPushButton) {.header:headerFile, importcpp:"#.showMenu(@)".} # Public

# Protected methods methods for QPushButton
import nimqt/qtcore/qcoreevent
proc event*(this: ptr QPushButton, e: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Protected
import nimqt/qtgui/qevent
proc paintEvent*(this: ptr QPushButton, arg_0: ptr QPaintEvent) {.header:headerFile, importcpp:"#.paintEvent(@)".} # Protected
proc keyPressEvent*(this: ptr QPushButton, arg_0: ptr QKeyEvent) {.header:headerFile, importcpp:"#.keyPressEvent(@)".} # Protected
proc focusInEvent*(this: ptr QPushButton, arg_0: ptr QFocusEvent) {.header:headerFile, importcpp:"#.focusInEvent(@)".} # Protected
proc focusOutEvent*(this: ptr QPushButton, arg_0: ptr QFocusEvent) {.header:headerFile, importcpp:"#.focusOutEvent(@)".} # Protected
proc mouseMoveEvent*(this: ptr QPushButton, arg_0: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mouseMoveEvent(@)".} # Protected
import nimqt/qtcore/qpoint
proc hitButton*(this: ptr QPushButton, pos: QPoint): bool {.header:headerFile, importcpp:"#.hitButton(@)".} # Protected

export qevent
export qmenu
export qstring
export qsize
export qpoint
export qabstractbutton
export qwidget
export qpaintdevice
export qcoreevent
export qicon

template handleClicked*(this: ptr QPushButton, body:untyped) = this.handleSignal0(SIGNAL "clicked()", body)

