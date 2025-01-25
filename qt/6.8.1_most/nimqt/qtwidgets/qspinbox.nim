const headerFile* = "QtWidgets/qspinbox.h"

import nimqt/qtwidgets/qabstractspinbox
type
    # Classes found in the C++ code
    QSpinBox* {.header:headerFile,importcpp:"QSpinBox" ,pure.} = object of QAbstractSpinBox
    QDoubleSpinBox* {.header:headerFile,importcpp:"QDoubleSpinBox" ,pure.} = object of QAbstractSpinBox
import nimqt/qtwidgets/qwidget
import nimqt/qtgui/qpaintdevice


type
    # typedefs found in the C++ code
    QSpinBox_StepEnabledFlag * = QAbstractSpinBox_StepEnabledFlag
    QSpinBox_ButtonSymbols * = QAbstractSpinBox_ButtonSymbols
    QSpinBox_CorrectionMode * = QAbstractSpinBox_CorrectionMode
    QSpinBox_StepType * = QAbstractSpinBox_StepType
    QSpinBox_StepEnabled * = QAbstractSpinBox_StepEnabled
    QSpinBox_RenderFlag * = QWidget_RenderFlag
    QSpinBox_RenderFlags * = QWidget_RenderFlags
    QSpinBox_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric
    QDoubleSpinBox_StepEnabledFlag * = QAbstractSpinBox_StepEnabledFlag
    QDoubleSpinBox_ButtonSymbols * = QAbstractSpinBox_ButtonSymbols
    QDoubleSpinBox_CorrectionMode * = QAbstractSpinBox_CorrectionMode
    QDoubleSpinBox_StepType * = QAbstractSpinBox_StepType
    QDoubleSpinBox_StepEnabled * = QAbstractSpinBox_StepEnabled
    QDoubleSpinBox_RenderFlag * = QWidget_RenderFlag
    QDoubleSpinBox_RenderFlags * = QWidget_RenderFlags
    QDoubleSpinBox_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric

# Stuff for class QSpinBox

# Public constructors for QSpinBox
# 1 default parameters!
proc newQSpinBox*(parent: ptr QWidget): ptr QSpinBox {. header:headerFile, importcpp:"new QSpinBox(@)" .} #
proc newQSpinBox*(): ptr QSpinBox {. header:headerFile, importcpp:"new QSpinBox(@)" .} #

# Public methods for QSpinBox
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QSpinBox_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QSpinBox::tr(@)".} # Public static
proc static_QSpinBox_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QSpinBox::tr(@)".} # Public static
proc value*(this: ptr QSpinBox): cint {.header:headerFile, importcpp:"#.value(@)".} # Public
proc prefix*(this: ptr QSpinBox): QString {.header:headerFile, importcpp:"#.prefix(@)".} # Public
proc setPrefix*(this: ptr QSpinBox, prefix: QString) {.header:headerFile, importcpp:"#.setPrefix(@)".} # Public
proc suffix*(this: ptr QSpinBox): QString {.header:headerFile, importcpp:"#.suffix(@)".} # Public
proc setSuffix*(this: ptr QSpinBox, suffix: QString) {.header:headerFile, importcpp:"#.setSuffix(@)".} # Public
proc cleanText*(this: ptr QSpinBox): QString {.header:headerFile, importcpp:"#.cleanText(@)".} # Public
proc singleStep*(this: ptr QSpinBox): cint {.header:headerFile, importcpp:"#.singleStep(@)".} # Public
proc setSingleStep*(this: ptr QSpinBox, val: cint) {.header:headerFile, importcpp:"#.setSingleStep(@)".} # Public
proc minimum*(this: ptr QSpinBox): cint {.header:headerFile, importcpp:"#.minimum(@)".} # Public
proc setMinimum*(this: ptr QSpinBox, min: cint) {.header:headerFile, importcpp:"#.setMinimum(@)".} # Public
proc maximum*(this: ptr QSpinBox): cint {.header:headerFile, importcpp:"#.maximum(@)".} # Public
proc setMaximum*(this: ptr QSpinBox, max: cint) {.header:headerFile, importcpp:"#.setMaximum(@)".} # Public
proc setRange*(this: ptr QSpinBox, min: cint, max: cint) {.header:headerFile, importcpp:"#.setRange(@)".} # Public
proc stepType*(this: ptr QSpinBox): QAbstractSpinBox_StepType {.header:headerFile, importcpp:"#.stepType(@)".} # Public
proc setStepType*(this: ptr QSpinBox, stepType: QAbstractSpinBox_StepType) {.header:headerFile, importcpp:"#.setStepType(@)".} # Public
proc displayIntegerBase*(this: ptr QSpinBox): cint {.header:headerFile, importcpp:"#.displayIntegerBase(@)".} # Public
proc setDisplayIntegerBase*(this: ptr QSpinBox, base: cint) {.header:headerFile, importcpp:"#.setDisplayIntegerBase(@)".} # Public
proc setValue*(this: ptr QSpinBox, val: cint) {.header:headerFile, importcpp:"#.setValue(@)".} # Public
proc valueChanged*(this: ptr QSpinBox, arg_0: cint) {.header:headerFile, importcpp:"#.valueChanged(@)".} # Public
proc textChanged*(this: ptr QSpinBox, arg_0: QString) {.header:headerFile, importcpp:"#.textChanged(@)".} # Public

# Protected methods methods for QSpinBox
import nimqt/qtcore/qcoreevent
proc event*(this: ptr QSpinBox, event: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Protected
import nimqt/qtgui/qvalidator
proc validate*(this: ptr QSpinBox, input: QString, pos: cint): QValidator_State {.header:headerFile, importcpp:"#.validate(@)".} # Protected
proc valueFromText*(this: ptr QSpinBox, text: QString): cint {.header:headerFile, importcpp:"#.valueFromText(@)".} # Protected
proc textFromValue*(this: ptr QSpinBox, val: cint): QString {.header:headerFile, importcpp:"#.textFromValue(@)".} # Protected
proc fixup*(this: ptr QSpinBox, str: QString) {.header:headerFile, importcpp:"#.fixup(@)".} # Protected
# Stuff for class QDoubleSpinBox

# Public constructors for QDoubleSpinBox
# 1 default parameters!
proc newQDoubleSpinBox*(parent: ptr QWidget): ptr QDoubleSpinBox {. header:headerFile, importcpp:"new QDoubleSpinBox(@)" .} #
proc newQDoubleSpinBox*(): ptr QDoubleSpinBox {. header:headerFile, importcpp:"new QDoubleSpinBox(@)" .} #

# Public methods for QDoubleSpinBox
# 1 default parameters!
proc static_QDoubleSpinBox_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QDoubleSpinBox::tr(@)".} # Public static
proc static_QDoubleSpinBox_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QDoubleSpinBox::tr(@)".} # Public static
proc value*(this: ptr QDoubleSpinBox): cdouble {.header:headerFile, importcpp:"#.value(@)".} # Public
proc prefix*(this: ptr QDoubleSpinBox): QString {.header:headerFile, importcpp:"#.prefix(@)".} # Public
proc setPrefix*(this: ptr QDoubleSpinBox, prefix: QString) {.header:headerFile, importcpp:"#.setPrefix(@)".} # Public
proc suffix*(this: ptr QDoubleSpinBox): QString {.header:headerFile, importcpp:"#.suffix(@)".} # Public
proc setSuffix*(this: ptr QDoubleSpinBox, suffix: QString) {.header:headerFile, importcpp:"#.setSuffix(@)".} # Public
proc cleanText*(this: ptr QDoubleSpinBox): QString {.header:headerFile, importcpp:"#.cleanText(@)".} # Public
proc singleStep*(this: ptr QDoubleSpinBox): cdouble {.header:headerFile, importcpp:"#.singleStep(@)".} # Public
proc setSingleStep*(this: ptr QDoubleSpinBox, val: cdouble) {.header:headerFile, importcpp:"#.setSingleStep(@)".} # Public
proc minimum*(this: ptr QDoubleSpinBox): cdouble {.header:headerFile, importcpp:"#.minimum(@)".} # Public
proc setMinimum*(this: ptr QDoubleSpinBox, min: cdouble) {.header:headerFile, importcpp:"#.setMinimum(@)".} # Public
proc maximum*(this: ptr QDoubleSpinBox): cdouble {.header:headerFile, importcpp:"#.maximum(@)".} # Public
proc setMaximum*(this: ptr QDoubleSpinBox, max: cdouble) {.header:headerFile, importcpp:"#.setMaximum(@)".} # Public
proc setRange*(this: ptr QDoubleSpinBox, min: cdouble, max: cdouble) {.header:headerFile, importcpp:"#.setRange(@)".} # Public
proc stepType*(this: ptr QDoubleSpinBox): QAbstractSpinBox_StepType {.header:headerFile, importcpp:"#.stepType(@)".} # Public
proc setStepType*(this: ptr QDoubleSpinBox, stepType: QAbstractSpinBox_StepType) {.header:headerFile, importcpp:"#.setStepType(@)".} # Public
proc decimals*(this: ptr QDoubleSpinBox): cint {.header:headerFile, importcpp:"#.decimals(@)".} # Public
proc setDecimals*(this: ptr QDoubleSpinBox, prec: cint) {.header:headerFile, importcpp:"#.setDecimals(@)".} # Public
proc validate*(this: ptr QDoubleSpinBox, input: QString, pos: cint): QValidator_State {.header:headerFile, importcpp:"#.validate(@)".} # Public
proc valueFromText*(this: ptr QDoubleSpinBox, text: QString): cdouble {.header:headerFile, importcpp:"#.valueFromText(@)".} # Public
proc textFromValue*(this: ptr QDoubleSpinBox, val: cdouble): QString {.header:headerFile, importcpp:"#.textFromValue(@)".} # Public
proc fixup*(this: ptr QDoubleSpinBox, str: QString) {.header:headerFile, importcpp:"#.fixup(@)".} # Public
proc setValue*(this: ptr QDoubleSpinBox, val: cdouble) {.header:headerFile, importcpp:"#.setValue(@)".} # Public
proc valueChanged*(this: ptr QDoubleSpinBox, arg_0: cdouble) {.header:headerFile, importcpp:"#.valueChanged(@)".} # Public
proc textChanged*(this: ptr QDoubleSpinBox, arg_0: QString) {.header:headerFile, importcpp:"#.textChanged(@)".} # Public

export qstring
export qabstractspinbox
export qvalidator
export qwidget
export qpaintdevice
export qcoreevent
