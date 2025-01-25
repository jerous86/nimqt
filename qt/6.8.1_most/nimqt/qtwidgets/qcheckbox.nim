const headerFile* = "QtWidgets/qcheckbox.h"

import nimqt/qtwidgets/qabstractbutton
type
    # Classes found in the C++ code
    QCheckBox* {.header:headerFile,importcpp:"QCheckBox" ,pure.} = object of QAbstractButton
import nimqt/qtwidgets/qwidget
import nimqt/qtgui/qpaintdevice


type
    # typedefs found in the C++ code
    QCheckBox_RenderFlag * = QWidget_RenderFlag
    QCheckBox_RenderFlags * = QWidget_RenderFlags
    QCheckBox_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric

# Stuff for class QCheckBox

# Public constructors for QCheckBox
# 1 default parameters!
proc newQCheckBox*(parent: ptr QWidget): ptr QCheckBox {. header:headerFile, importcpp:"new QCheckBox(@)" .} #
proc newQCheckBox*(): ptr QCheckBox {. header:headerFile, importcpp:"new QCheckBox(@)" .} #
import nimqt/qtcore/qstring
# 1 default parameters!
proc newQCheckBox*(text: QString, parent: ptr QWidget): ptr QCheckBox {. header:headerFile, importcpp:"new QCheckBox(@)" .} #
proc newQCheckBox*(text: QString): ptr QCheckBox {. header:headerFile, importcpp:"new QCheckBox(@)" .} #

# Public methods for QCheckBox
# 1 default parameters!
proc static_QCheckBox_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QCheckBox::tr(@)".} # Public static
proc static_QCheckBox_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QCheckBox::tr(@)".} # Public static
import nimqt/qtcore/qsize
proc sizeHint*(this: ptr QCheckBox): QSize {.header:headerFile, importcpp:"#.sizeHint(@)".} # Public
proc minimumSizeHint*(this: ptr QCheckBox): QSize {.header:headerFile, importcpp:"#.minimumSizeHint(@)".} # Public
# 1 default parameters!
proc setTristate*(this: ptr QCheckBox, y: bool) {.header:headerFile, importcpp:"#.setTristate(@)".} # Public
proc setTristate*(this: ptr QCheckBox) {.header:headerFile, importcpp:"#.setTristate(@)".} # Public
proc isTristate*(this: ptr QCheckBox): bool {.header:headerFile, importcpp:"#.isTristate(@)".} # Public
import nimqt/qtcore/qnamespace
proc checkState*(this: ptr QCheckBox): Qt_CheckState {.header:headerFile, importcpp:"#.checkState(@)".} # Public
proc setCheckState*(this: ptr QCheckBox, state: Qt_CheckState) {.header:headerFile, importcpp:"#.setCheckState(@)".} # Public
proc stateChanged*(this: ptr QCheckBox, arg_0: cint) {.header:headerFile, importcpp:"#.stateChanged(@)".} # Public

# Protected methods methods for QCheckBox
import nimqt/qtcore/qcoreevent
proc event*(this: ptr QCheckBox, e: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Protected
import nimqt/qtcore/qpoint
proc hitButton*(this: ptr QCheckBox, pos: QPoint): bool {.header:headerFile, importcpp:"#.hitButton(@)".} # Protected
proc checkStateSet*(this: ptr QCheckBox) {.header:headerFile, importcpp:"#.checkStateSet(@)".} # Protected
proc nextCheckState*(this: ptr QCheckBox) {.header:headerFile, importcpp:"#.nextCheckState(@)".} # Protected
import nimqt/qtgui/qevent
proc paintEvent*(this: ptr QCheckBox, arg_0: ptr QPaintEvent) {.header:headerFile, importcpp:"#.paintEvent(@)".} # Protected
proc mouseMoveEvent*(this: ptr QCheckBox, arg_0: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mouseMoveEvent(@)".} # Protected

export qevent
export qstring
export qsize
export qnamespace
export qpoint
export qabstractbutton
export qwidget
export qpaintdevice
export qcoreevent
