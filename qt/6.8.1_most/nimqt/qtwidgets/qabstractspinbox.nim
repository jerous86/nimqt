const headerFile* = "QtWidgets/qabstractspinbox.h"

type
    # Enums found in the C++ code
    # Global
    QAbstractSpinBox_StepEnabledFlag* {.header:headerFile,importcpp:"QAbstractSpinBox::StepEnabledFlag".} = enum StepNone = 0, StepUpEnabled = 0x1, StepDownEnabled = 0x2
    QAbstractSpinBox_ButtonSymbols* {.header:headerFile,importcpp:"QAbstractSpinBox::ButtonSymbols".} = enum UpDownArrows = 0, PlusMinus = 0x1, NoButtons = 0x2
    QAbstractSpinBox_CorrectionMode* {.header:headerFile,importcpp:"QAbstractSpinBox::CorrectionMode".} = enum CorrectToPreviousValue = 0, CorrectToNearestValue = 0x1
    QAbstractSpinBox_StepType* {.header:headerFile,importcpp:"QAbstractSpinBox::StepType".} = enum DefaultStepType = 0, AdaptiveDecimalStepType = 0x1

import nimqt/qtwidgets/qwidget
type
    # Classes found in the C++ code
    QAbstractSpinBox* {.header:headerFile,importcpp:"QAbstractSpinBox" ,pure.} = object of QWidget
import nimqt/qtgui/qpaintdevice
import nimqt/qtcore/qflags


type
    # typedefs found in the C++ code
    QAbstractSpinBox_RenderFlag * = QWidget_RenderFlag
    QAbstractSpinBox_RenderFlags * = QWidget_RenderFlags
    QAbstractSpinBox_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric
    QAbstractSpinBox_StepEnabled * = QFlags[QAbstractSpinBox_StepEnabledFlag]

# Stuff for class QAbstractSpinBox

# Public constructors for QAbstractSpinBox
# 1 default parameters!
proc newQAbstractSpinBox*(parent: ptr QWidget): ptr QAbstractSpinBox {. header:headerFile, importcpp:"new QAbstractSpinBox(@)" .} #
proc newQAbstractSpinBox*(): ptr QAbstractSpinBox {. header:headerFile, importcpp:"new QAbstractSpinBox(@)" .} #

# Public methods for QAbstractSpinBox
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QAbstractSpinBox_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QAbstractSpinBox::tr(@)".} # Public static
proc static_QAbstractSpinBox_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QAbstractSpinBox::tr(@)".} # Public static
proc buttonSymbols*(this: ptr QAbstractSpinBox): QAbstractSpinBox_ButtonSymbols {.header:headerFile, importcpp:"#.buttonSymbols(@)".} # Public
proc setButtonSymbols*(this: ptr QAbstractSpinBox, bs: QAbstractSpinBox_ButtonSymbols) {.header:headerFile, importcpp:"#.setButtonSymbols(@)".} # Public
proc setCorrectionMode*(this: ptr QAbstractSpinBox, cm: QAbstractSpinBox_CorrectionMode) {.header:headerFile, importcpp:"#.setCorrectionMode(@)".} # Public
proc correctionMode*(this: ptr QAbstractSpinBox): QAbstractSpinBox_CorrectionMode {.header:headerFile, importcpp:"#.correctionMode(@)".} # Public
proc hasAcceptableInput*(this: ptr QAbstractSpinBox): bool {.header:headerFile, importcpp:"#.hasAcceptableInput(@)".} # Public
proc text*(this: ptr QAbstractSpinBox): QString {.header:headerFile, importcpp:"#.text(@)".} # Public
proc specialValueText*(this: ptr QAbstractSpinBox): QString {.header:headerFile, importcpp:"#.specialValueText(@)".} # Public
proc setSpecialValueText*(this: ptr QAbstractSpinBox, txt: QString) {.header:headerFile, importcpp:"#.setSpecialValueText(@)".} # Public
proc wrapping*(this: ptr QAbstractSpinBox): bool {.header:headerFile, importcpp:"#.wrapping(@)".} # Public
proc setWrapping*(this: ptr QAbstractSpinBox, w: bool) {.header:headerFile, importcpp:"#.setWrapping(@)".} # Public
proc setReadOnly*(this: ptr QAbstractSpinBox, r: bool) {.header:headerFile, importcpp:"#.setReadOnly(@)".} # Public
proc isReadOnly*(this: ptr QAbstractSpinBox): bool {.header:headerFile, importcpp:"#.isReadOnly(@)".} # Public
proc setKeyboardTracking*(this: ptr QAbstractSpinBox, kt: bool) {.header:headerFile, importcpp:"#.setKeyboardTracking(@)".} # Public
proc keyboardTracking*(this: ptr QAbstractSpinBox): bool {.header:headerFile, importcpp:"#.keyboardTracking(@)".} # Public
import nimqt/qtcore/qnamespace
proc setAlignment*(this: ptr QAbstractSpinBox, flag: Qt_Alignment) {.header:headerFile, importcpp:"#.setAlignment(@)".} # Public
proc alignment*(this: ptr QAbstractSpinBox): Qt_Alignment {.header:headerFile, importcpp:"#.alignment(@)".} # Public
proc setFrame*(this: ptr QAbstractSpinBox, arg_0: bool) {.header:headerFile, importcpp:"#.setFrame(@)".} # Public
proc hasFrame*(this: ptr QAbstractSpinBox): bool {.header:headerFile, importcpp:"#.hasFrame(@)".} # Public
proc setAccelerated*(this: ptr QAbstractSpinBox, on: bool) {.header:headerFile, importcpp:"#.setAccelerated(@)".} # Public
proc isAccelerated*(this: ptr QAbstractSpinBox): bool {.header:headerFile, importcpp:"#.isAccelerated(@)".} # Public
proc setGroupSeparatorShown*(this: ptr QAbstractSpinBox, shown: bool) {.header:headerFile, importcpp:"#.setGroupSeparatorShown(@)".} # Public
proc isGroupSeparatorShown*(this: ptr QAbstractSpinBox): bool {.header:headerFile, importcpp:"#.isGroupSeparatorShown(@)".} # Public
import nimqt/qtcore/qsize
proc sizeHint*(this: ptr QAbstractSpinBox): QSize {.header:headerFile, importcpp:"#.sizeHint(@)".} # Public
proc minimumSizeHint*(this: ptr QAbstractSpinBox): QSize {.header:headerFile, importcpp:"#.minimumSizeHint(@)".} # Public
proc interpretText*(this: ptr QAbstractSpinBox) {.header:headerFile, importcpp:"#.interpretText(@)".} # Public
import nimqt/qtcore/qcoreevent
proc event*(this: ptr QAbstractSpinBox, event: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Public
import nimqt/qtcore/qvariant
proc inputMethodQuery*(this: ptr QAbstractSpinBox, arg_1: Qt_InputMethodQuery): QVariant {.header:headerFile, importcpp:"#.inputMethodQuery(@)".} # Public
import nimqt/qtgui/qvalidator
proc validate*(this: ptr QAbstractSpinBox, input: QString, pos: cint): QValidator_State {.header:headerFile, importcpp:"#.validate(@)".} # Public
proc fixup*(this: ptr QAbstractSpinBox, input: QString) {.header:headerFile, importcpp:"#.fixup(@)".} # Public
proc stepBy*(this: ptr QAbstractSpinBox, steps: cint) {.header:headerFile, importcpp:"#.stepBy(@)".} # Public
proc stepUp*(this: ptr QAbstractSpinBox) {.header:headerFile, importcpp:"#.stepUp(@)".} # Public
proc stepDown*(this: ptr QAbstractSpinBox) {.header:headerFile, importcpp:"#.stepDown(@)".} # Public
proc selectAll*(this: ptr QAbstractSpinBox) {.header:headerFile, importcpp:"#.selectAll(@)".} # Public
proc clear*(this: ptr QAbstractSpinBox) {.header:headerFile, importcpp:"#.clear(@)".} # Public
proc editingFinished*(this: ptr QAbstractSpinBox) {.header:headerFile, importcpp:"#.editingFinished(@)".} # Public

# Protected methods methods for QAbstractSpinBox
import nimqt/qtgui/qevent
proc resizeEvent*(this: ptr QAbstractSpinBox, event: ptr QResizeEvent) {.header:headerFile, importcpp:"#.resizeEvent(@)".} # Protected
proc keyPressEvent*(this: ptr QAbstractSpinBox, event: ptr QKeyEvent) {.header:headerFile, importcpp:"#.keyPressEvent(@)".} # Protected
proc keyReleaseEvent*(this: ptr QAbstractSpinBox, event: ptr QKeyEvent) {.header:headerFile, importcpp:"#.keyReleaseEvent(@)".} # Protected
proc wheelEvent*(this: ptr QAbstractSpinBox, event: ptr QWheelEvent) {.header:headerFile, importcpp:"#.wheelEvent(@)".} # Protected
proc focusInEvent*(this: ptr QAbstractSpinBox, event: ptr QFocusEvent) {.header:headerFile, importcpp:"#.focusInEvent(@)".} # Protected
proc focusOutEvent*(this: ptr QAbstractSpinBox, event: ptr QFocusEvent) {.header:headerFile, importcpp:"#.focusOutEvent(@)".} # Protected
proc contextMenuEvent*(this: ptr QAbstractSpinBox, event: ptr QContextMenuEvent) {.header:headerFile, importcpp:"#.contextMenuEvent(@)".} # Protected
proc changeEvent*(this: ptr QAbstractSpinBox, event: ptr QEvent) {.header:headerFile, importcpp:"#.changeEvent(@)".} # Protected
proc closeEvent*(this: ptr QAbstractSpinBox, event: ptr QCloseEvent) {.header:headerFile, importcpp:"#.closeEvent(@)".} # Protected
proc hideEvent*(this: ptr QAbstractSpinBox, event: ptr QHideEvent) {.header:headerFile, importcpp:"#.hideEvent(@)".} # Protected
proc mousePressEvent*(this: ptr QAbstractSpinBox, event: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mousePressEvent(@)".} # Protected
proc mouseReleaseEvent*(this: ptr QAbstractSpinBox, event: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mouseReleaseEvent(@)".} # Protected
proc mouseMoveEvent*(this: ptr QAbstractSpinBox, event: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mouseMoveEvent(@)".} # Protected
proc timerEvent*(this: ptr QAbstractSpinBox, event: ptr QTimerEvent) {.header:headerFile, importcpp:"#.timerEvent(@)".} # Protected
proc paintEvent*(this: ptr QAbstractSpinBox, event: ptr QPaintEvent) {.header:headerFile, importcpp:"#.paintEvent(@)".} # Protected
proc showEvent*(this: ptr QAbstractSpinBox, event: ptr QShowEvent) {.header:headerFile, importcpp:"#.showEvent(@)".} # Protected
import nimqt/qtwidgets/qlineedit
proc lineEdit*(this: ptr QAbstractSpinBox): ptr QLineEdit {.header:headerFile, importcpp:"#.lineEdit(@)".} # Protected
proc setLineEdit*(this: ptr QAbstractSpinBox, edit: ptr QLineEdit) {.header:headerFile, importcpp:"#.setLineEdit(@)".} # Protected
proc stepEnabled*(this: ptr QAbstractSpinBox): QFlags[QAbstractSpinBox_StepEnabledFlag] {.header:headerFile, importcpp:"#.stepEnabled(@)".} # Protected

export qevent
export qstring
export qsize
export qnamespace
export qvalidator
export qvariant
export qwidget
export qflags
export qpaintdevice
export qlineedit
export qcoreevent
