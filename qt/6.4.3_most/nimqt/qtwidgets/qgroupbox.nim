const headerFile* = "QtWidgets/qgroupbox.h"

import nimqt/qtwidgets/qwidget
type
    # Classes found in the C++ code
    QGroupBox* {.header:headerFile,importcpp:"QGroupBox" ,pure.} = object of QWidget
import nimqt/qtgui/qpaintdevice


type
    # typedefs found in the C++ code
    QGroupBox_RenderFlag * = QWidget_RenderFlag
    QGroupBox_RenderFlags * = QWidget_RenderFlags
    QGroupBox_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric

# Stuff for class QGroupBox

# Public constructors for QGroupBox
# 1 default parameters!
proc newQGroupBox*(parent: ptr QWidget): ptr QGroupBox {. header:headerFile, importcpp:"new QGroupBox(@)" .} #
proc newQGroupBox*(): ptr QGroupBox {. header:headerFile, importcpp:"new QGroupBox(@)" .} #
import nimqt/qtcore/qstring
# 1 default parameters!
proc newQGroupBox*(title: QString, parent: ptr QWidget): ptr QGroupBox {. header:headerFile, importcpp:"new QGroupBox(@)" .} #
proc newQGroupBox*(title: QString): ptr QGroupBox {. header:headerFile, importcpp:"new QGroupBox(@)" .} #

# Public methods for QGroupBox
# 1 default parameters!
proc static_QGroupBox_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QGroupBox::tr(@)".} # Public static
proc static_QGroupBox_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QGroupBox::tr(@)".} # Public static
proc title*(this: ptr QGroupBox): QString {.header:headerFile, importcpp:"#.title(@)".} # Public
proc setTitle*(this: ptr QGroupBox, title: QString) {.header:headerFile, importcpp:"#.setTitle(@)".} # Public
import nimqt/qtcore/qnamespace
proc alignment*(this: ptr QGroupBox): Qt_Alignment {.header:headerFile, importcpp:"#.alignment(@)".} # Public
proc setAlignment*(this: ptr QGroupBox, alignment: cint) {.header:headerFile, importcpp:"#.setAlignment(@)".} # Public
import nimqt/qtcore/qsize
proc minimumSizeHint*(this: ptr QGroupBox): QSize {.header:headerFile, importcpp:"#.minimumSizeHint(@)".} # Public
proc isFlat*(this: ptr QGroupBox): bool {.header:headerFile, importcpp:"#.isFlat(@)".} # Public
proc setFlat*(this: ptr QGroupBox, flat: bool) {.header:headerFile, importcpp:"#.setFlat(@)".} # Public
proc isCheckable*(this: ptr QGroupBox): bool {.header:headerFile, importcpp:"#.isCheckable(@)".} # Public
proc setCheckable*(this: ptr QGroupBox, checkable: bool) {.header:headerFile, importcpp:"#.setCheckable(@)".} # Public
proc isChecked*(this: ptr QGroupBox): bool {.header:headerFile, importcpp:"#.isChecked(@)".} # Public
proc setChecked*(this: ptr QGroupBox, checked: bool) {.header:headerFile, importcpp:"#.setChecked(@)".} # Public
# 1 default parameters!
proc clicked*(this: ptr QGroupBox, checked: bool) {.header:headerFile, importcpp:"#.clicked(@)".} # Public
proc clicked*(this: ptr QGroupBox) {.header:headerFile, importcpp:"#.clicked(@)".} # Public
proc toggled*(this: ptr QGroupBox, arg_0: bool) {.header:headerFile, importcpp:"#.toggled(@)".} # Public

# Protected methods methods for QGroupBox
import nimqt/qtcore/qcoreevent
proc event*(this: ptr QGroupBox, event: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Protected
proc childEvent*(this: ptr QGroupBox, event: ptr QChildEvent) {.header:headerFile, importcpp:"#.childEvent(@)".} # Protected
import nimqt/qtgui/qevent
proc resizeEvent*(this: ptr QGroupBox, event: ptr QResizeEvent) {.header:headerFile, importcpp:"#.resizeEvent(@)".} # Protected
proc paintEvent*(this: ptr QGroupBox, event: ptr QPaintEvent) {.header:headerFile, importcpp:"#.paintEvent(@)".} # Protected
proc focusInEvent*(this: ptr QGroupBox, event: ptr QFocusEvent) {.header:headerFile, importcpp:"#.focusInEvent(@)".} # Protected
proc changeEvent*(this: ptr QGroupBox, event: ptr QEvent) {.header:headerFile, importcpp:"#.changeEvent(@)".} # Protected
proc mousePressEvent*(this: ptr QGroupBox, event: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mousePressEvent(@)".} # Protected
proc mouseMoveEvent*(this: ptr QGroupBox, event: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mouseMoveEvent(@)".} # Protected
proc mouseReleaseEvent*(this: ptr QGroupBox, event: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mouseReleaseEvent(@)".} # Protected

export qevent
export qstring
export qsize
export qnamespace
export qwidget
export qpaintdevice
export qcoreevent
