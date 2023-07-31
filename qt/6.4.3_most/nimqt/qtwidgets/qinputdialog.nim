const headerFile* = "QtWidgets/qinputdialog.h"

type
    # Enums found in the C++ code
    # Global
    QInputDialog_InputDialogOption* {.header:headerFile,importcpp:"QInputDialog::InputDialogOption".} = enum NoButtons = 0x1, UseListViewForComboBoxItems = 0x2, UsePlainTextEditForTextInput = 0x4
    QInputDialog_InputMode* {.header:headerFile,importcpp:"QInputDialog::InputMode".} = enum TextInput = 0, IntInput = 0x1, DoubleInput = 0x2

import nimqt/qtwidgets/qdialog
type
    # Classes found in the C++ code
    QInputDialog* {.header:headerFile,importcpp:"QInputDialog" ,pure.} = object of QDialog
import nimqt/qtwidgets/qwidget
import nimqt/qtgui/qpaintdevice
import nimqt/qtcore/qflags


type
    # typedefs found in the C++ code
    QInputDialog_DialogCode * = QDialog_DialogCode
    QInputDialog_RenderFlag * = QWidget_RenderFlag
    QInputDialog_RenderFlags * = QWidget_RenderFlags
    QInputDialog_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric
    QInputDialog_InputDialogOptions * = QFlags[QInputDialog_InputDialogOption]

# Stuff for class QInputDialog

# Public constructors for QInputDialog
import nimqt/qtcore/qnamespace
# 2 default parameters!
proc newQInputDialog*(parent: ptr QWidget, flags: Qt_WindowFlags): ptr QInputDialog {. header:headerFile, importcpp:"new QInputDialog(@)" .} #
proc newQInputDialog*(parent: ptr QWidget): ptr QInputDialog {. header:headerFile, importcpp:"new QInputDialog(@)" .} #
proc newQInputDialog*(): ptr QInputDialog {. header:headerFile, importcpp:"new QInputDialog(@)" .} #

# Public methods for QInputDialog
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QInputDialog_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QInputDialog::tr(@)".} # Public static
proc static_QInputDialog_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QInputDialog::tr(@)".} # Public static
proc setInputMode*(this: ptr QInputDialog, mode: QInputDialog_InputMode) {.header:headerFile, importcpp:"#.setInputMode(@)".} # Public
proc inputMode*(this: ptr QInputDialog): QInputDialog_InputMode {.header:headerFile, importcpp:"#.inputMode(@)".} # Public
proc setLabelText*(this: ptr QInputDialog, text: QString) {.header:headerFile, importcpp:"#.setLabelText(@)".} # Public
proc labelText*(this: ptr QInputDialog): QString {.header:headerFile, importcpp:"#.labelText(@)".} # Public
# 1 default parameters!
proc setOption*(this: ptr QInputDialog, option: QInputDialog_InputDialogOption, on: bool) {.header:headerFile, importcpp:"#.setOption(@)".} # Public
proc setOption*(this: ptr QInputDialog, option: QInputDialog_InputDialogOption) {.header:headerFile, importcpp:"#.setOption(@)".} # Public
proc testOption*(this: ptr QInputDialog, option: QInputDialog_InputDialogOption): bool {.header:headerFile, importcpp:"#.testOption(@)".} # Public
proc setOptions*(this: ptr QInputDialog, options: QFlags[QInputDialog_InputDialogOption]) {.header:headerFile, importcpp:"#.setOptions(@)".} # Public
proc options*(this: ptr QInputDialog): QFlags[QInputDialog_InputDialogOption] {.header:headerFile, importcpp:"#.options(@)".} # Public
proc setTextValue*(this: ptr QInputDialog, text: QString) {.header:headerFile, importcpp:"#.setTextValue(@)".} # Public
proc textValue*(this: ptr QInputDialog): QString {.header:headerFile, importcpp:"#.textValue(@)".} # Public
import nimqt/qtwidgets/qlineedit
proc setTextEchoMode*(this: ptr QInputDialog, mode: QLineEdit_EchoMode) {.header:headerFile, importcpp:"#.setTextEchoMode(@)".} # Public
proc textEchoMode*(this: ptr QInputDialog): QLineEdit_EchoMode {.header:headerFile, importcpp:"#.textEchoMode(@)".} # Public
proc setComboBoxEditable*(this: ptr QInputDialog, editable: bool) {.header:headerFile, importcpp:"#.setComboBoxEditable(@)".} # Public
proc isComboBoxEditable*(this: ptr QInputDialog): bool {.header:headerFile, importcpp:"#.isComboBoxEditable(@)".} # Public
import nimqt/qtcore/qstringlist
proc setComboBoxItems*(this: ptr QInputDialog, items: QStringList) {.header:headerFile, importcpp:"#.setComboBoxItems(@)".} # Public
proc comboBoxItems*(this: ptr QInputDialog): QStringList {.header:headerFile, importcpp:"#.comboBoxItems(@)".} # Public
proc setIntValue*(this: ptr QInputDialog, value: cint) {.header:headerFile, importcpp:"#.setIntValue(@)".} # Public
proc intValue*(this: ptr QInputDialog): cint {.header:headerFile, importcpp:"#.intValue(@)".} # Public
proc setIntMinimum*(this: ptr QInputDialog, min: cint) {.header:headerFile, importcpp:"#.setIntMinimum(@)".} # Public
proc intMinimum*(this: ptr QInputDialog): cint {.header:headerFile, importcpp:"#.intMinimum(@)".} # Public
proc setIntMaximum*(this: ptr QInputDialog, max: cint) {.header:headerFile, importcpp:"#.setIntMaximum(@)".} # Public
proc intMaximum*(this: ptr QInputDialog): cint {.header:headerFile, importcpp:"#.intMaximum(@)".} # Public
proc setIntRange*(this: ptr QInputDialog, min: cint, max: cint) {.header:headerFile, importcpp:"#.setIntRange(@)".} # Public
proc setIntStep*(this: ptr QInputDialog, step: cint) {.header:headerFile, importcpp:"#.setIntStep(@)".} # Public
proc intStep*(this: ptr QInputDialog): cint {.header:headerFile, importcpp:"#.intStep(@)".} # Public
proc setDoubleValue*(this: ptr QInputDialog, value: cdouble) {.header:headerFile, importcpp:"#.setDoubleValue(@)".} # Public
proc doubleValue*(this: ptr QInputDialog): cdouble {.header:headerFile, importcpp:"#.doubleValue(@)".} # Public
proc setDoubleMinimum*(this: ptr QInputDialog, min: cdouble) {.header:headerFile, importcpp:"#.setDoubleMinimum(@)".} # Public
proc doubleMinimum*(this: ptr QInputDialog): cdouble {.header:headerFile, importcpp:"#.doubleMinimum(@)".} # Public
proc setDoubleMaximum*(this: ptr QInputDialog, max: cdouble) {.header:headerFile, importcpp:"#.setDoubleMaximum(@)".} # Public
proc doubleMaximum*(this: ptr QInputDialog): cdouble {.header:headerFile, importcpp:"#.doubleMaximum(@)".} # Public
proc setDoubleRange*(this: ptr QInputDialog, min: cdouble, max: cdouble) {.header:headerFile, importcpp:"#.setDoubleRange(@)".} # Public
proc setDoubleDecimals*(this: ptr QInputDialog, decimals: cint) {.header:headerFile, importcpp:"#.setDoubleDecimals(@)".} # Public
proc doubleDecimals*(this: ptr QInputDialog): cint {.header:headerFile, importcpp:"#.doubleDecimals(@)".} # Public
proc setOkButtonText*(this: ptr QInputDialog, text: QString) {.header:headerFile, importcpp:"#.setOkButtonText(@)".} # Public
proc okButtonText*(this: ptr QInputDialog): QString {.header:headerFile, importcpp:"#.okButtonText(@)".} # Public
proc setCancelButtonText*(this: ptr QInputDialog, text: QString) {.header:headerFile, importcpp:"#.setCancelButtonText(@)".} # Public
proc cancelButtonText*(this: ptr QInputDialog): QString {.header:headerFile, importcpp:"#.cancelButtonText(@)".} # Public
import nimqt/qtcore/qobject
proc open*(this: ptr QInputDialog, receiver: ptr QObject, member: ptr char) {.header:headerFile, importcpp:"#.open(@)".} # Public
import nimqt/qtcore/qsize
proc minimumSizeHint*(this: ptr QInputDialog): QSize {.header:headerFile, importcpp:"#.minimumSizeHint(@)".} # Public
proc sizeHint*(this: ptr QInputDialog): QSize {.header:headerFile, importcpp:"#.sizeHint(@)".} # Public
proc setVisible*(this: ptr QInputDialog, visible: bool) {.header:headerFile, importcpp:"#.setVisible(@)".} # Public
# 4 default parameters!
proc static_QInputDialog_getText*(parent: ptr QWidget, title: QString, label: QString, echo: QLineEdit_EchoMode, text: QString, ok: ptr bool, flags: Qt_WindowFlags, inputMethodHints: Qt_InputMethodHints): QString {.header:headerFile, importcpp:"QInputDialog::getText(@)".} # Public static
proc static_QInputDialog_getText*(parent: ptr QWidget, title: QString, label: QString, echo: QLineEdit_EchoMode, text: QString, ok: ptr bool, flags: Qt_WindowFlags): QString {.header:headerFile, importcpp:"QInputDialog::getText(@)".} # Public static
proc static_QInputDialog_getText*(parent: ptr QWidget, title: QString, label: QString, echo: QLineEdit_EchoMode, text: QString, ok: ptr bool): QString {.header:headerFile, importcpp:"QInputDialog::getText(@)".} # Public static
proc static_QInputDialog_getText*(parent: ptr QWidget, title: QString, label: QString, echo: QLineEdit_EchoMode, text: QString): QString {.header:headerFile, importcpp:"QInputDialog::getText(@)".} # Public static
proc static_QInputDialog_getText*(parent: ptr QWidget, title: QString, label: QString, echo: QLineEdit_EchoMode): QString {.header:headerFile, importcpp:"QInputDialog::getText(@)".} # Public static
# 4 default parameters!
proc static_QInputDialog_getMultiLineText*(parent: ptr QWidget, title: QString, label: QString, text: QString, ok: ptr bool, flags: Qt_WindowFlags, inputMethodHints: Qt_InputMethodHints): QString {.header:headerFile, importcpp:"QInputDialog::getMultiLineText(@)".} # Public static
proc static_QInputDialog_getMultiLineText*(parent: ptr QWidget, title: QString, label: QString, text: QString, ok: ptr bool, flags: Qt_WindowFlags): QString {.header:headerFile, importcpp:"QInputDialog::getMultiLineText(@)".} # Public static
proc static_QInputDialog_getMultiLineText*(parent: ptr QWidget, title: QString, label: QString, text: QString, ok: ptr bool): QString {.header:headerFile, importcpp:"QInputDialog::getMultiLineText(@)".} # Public static
proc static_QInputDialog_getMultiLineText*(parent: ptr QWidget, title: QString, label: QString, text: QString): QString {.header:headerFile, importcpp:"QInputDialog::getMultiLineText(@)".} # Public static
proc static_QInputDialog_getMultiLineText*(parent: ptr QWidget, title: QString, label: QString): QString {.header:headerFile, importcpp:"QInputDialog::getMultiLineText(@)".} # Public static
# 5 default parameters!
proc static_QInputDialog_getItem*(parent: ptr QWidget, title: QString, label: QString, items: QStringList, current: cint, editable: bool, ok: ptr bool, flags: Qt_WindowFlags, inputMethodHints: Qt_InputMethodHints): QString {.header:headerFile, importcpp:"QInputDialog::getItem(@)".} # Public static
proc static_QInputDialog_getItem*(parent: ptr QWidget, title: QString, label: QString, items: QStringList, current: cint, editable: bool, ok: ptr bool, flags: Qt_WindowFlags): QString {.header:headerFile, importcpp:"QInputDialog::getItem(@)".} # Public static
proc static_QInputDialog_getItem*(parent: ptr QWidget, title: QString, label: QString, items: QStringList, current: cint, editable: bool, ok: ptr bool): QString {.header:headerFile, importcpp:"QInputDialog::getItem(@)".} # Public static
proc static_QInputDialog_getItem*(parent: ptr QWidget, title: QString, label: QString, items: QStringList, current: cint, editable: bool): QString {.header:headerFile, importcpp:"QInputDialog::getItem(@)".} # Public static
proc static_QInputDialog_getItem*(parent: ptr QWidget, title: QString, label: QString, items: QStringList, current: cint): QString {.header:headerFile, importcpp:"QInputDialog::getItem(@)".} # Public static
proc static_QInputDialog_getItem*(parent: ptr QWidget, title: QString, label: QString, items: QStringList): QString {.header:headerFile, importcpp:"QInputDialog::getItem(@)".} # Public static
# 5 default parameters!
proc static_QInputDialog_getInt*(parent: ptr QWidget, title: QString, label: QString, value: cint, minValue: cint, maxValue: cint, step: cint, ok: ptr bool, flags: Qt_WindowFlags): cint {.header:headerFile, importcpp:"QInputDialog::getInt(@)".} # Public static
proc static_QInputDialog_getInt*(parent: ptr QWidget, title: QString, label: QString, value: cint, minValue: cint, maxValue: cint, step: cint, ok: ptr bool): cint {.header:headerFile, importcpp:"QInputDialog::getInt(@)".} # Public static
proc static_QInputDialog_getInt*(parent: ptr QWidget, title: QString, label: QString, value: cint, minValue: cint, maxValue: cint, step: cint): cint {.header:headerFile, importcpp:"QInputDialog::getInt(@)".} # Public static
proc static_QInputDialog_getInt*(parent: ptr QWidget, title: QString, label: QString, value: cint, minValue: cint, maxValue: cint): cint {.header:headerFile, importcpp:"QInputDialog::getInt(@)".} # Public static
proc static_QInputDialog_getInt*(parent: ptr QWidget, title: QString, label: QString, value: cint, minValue: cint): cint {.header:headerFile, importcpp:"QInputDialog::getInt(@)".} # Public static
proc static_QInputDialog_getInt*(parent: ptr QWidget, title: QString, label: QString, value: cint): cint {.header:headerFile, importcpp:"QInputDialog::getInt(@)".} # Public static
# 7 default parameters!
proc static_QInputDialog_getDouble*(parent: ptr QWidget, title: QString, label: QString, value: cdouble, minValue: cdouble, maxValue: cdouble, decimals: cint, ok: ptr bool, flags: Qt_WindowFlags, step: cdouble): cdouble {.header:headerFile, importcpp:"QInputDialog::getDouble(@)".} # Public static
proc static_QInputDialog_getDouble*(parent: ptr QWidget, title: QString, label: QString, value: cdouble, minValue: cdouble, maxValue: cdouble, decimals: cint, ok: ptr bool, flags: Qt_WindowFlags): cdouble {.header:headerFile, importcpp:"QInputDialog::getDouble(@)".} # Public static
proc static_QInputDialog_getDouble*(parent: ptr QWidget, title: QString, label: QString, value: cdouble, minValue: cdouble, maxValue: cdouble, decimals: cint, ok: ptr bool): cdouble {.header:headerFile, importcpp:"QInputDialog::getDouble(@)".} # Public static
proc static_QInputDialog_getDouble*(parent: ptr QWidget, title: QString, label: QString, value: cdouble, minValue: cdouble, maxValue: cdouble, decimals: cint): cdouble {.header:headerFile, importcpp:"QInputDialog::getDouble(@)".} # Public static
proc static_QInputDialog_getDouble*(parent: ptr QWidget, title: QString, label: QString, value: cdouble, minValue: cdouble, maxValue: cdouble): cdouble {.header:headerFile, importcpp:"QInputDialog::getDouble(@)".} # Public static
proc static_QInputDialog_getDouble*(parent: ptr QWidget, title: QString, label: QString, value: cdouble, minValue: cdouble): cdouble {.header:headerFile, importcpp:"QInputDialog::getDouble(@)".} # Public static
proc static_QInputDialog_getDouble*(parent: ptr QWidget, title: QString, label: QString, value: cdouble): cdouble {.header:headerFile, importcpp:"QInputDialog::getDouble(@)".} # Public static
proc static_QInputDialog_getDouble*(parent: ptr QWidget, title: QString, label: QString): cdouble {.header:headerFile, importcpp:"QInputDialog::getDouble(@)".} # Public static
proc setDoubleStep*(this: ptr QInputDialog, step: cdouble) {.header:headerFile, importcpp:"#.setDoubleStep(@)".} # Public
proc doubleStep*(this: ptr QInputDialog): cdouble {.header:headerFile, importcpp:"#.doubleStep(@)".} # Public
proc textValueChanged*(this: ptr QInputDialog, text: QString) {.header:headerFile, importcpp:"#.textValueChanged(@)".} # Public
proc textValueSelected*(this: ptr QInputDialog, text: QString) {.header:headerFile, importcpp:"#.textValueSelected(@)".} # Public
proc intValueChanged*(this: ptr QInputDialog, value: cint) {.header:headerFile, importcpp:"#.intValueChanged(@)".} # Public
proc intValueSelected*(this: ptr QInputDialog, value: cint) {.header:headerFile, importcpp:"#.intValueSelected(@)".} # Public
proc doubleValueChanged*(this: ptr QInputDialog, value: cdouble) {.header:headerFile, importcpp:"#.doubleValueChanged(@)".} # Public
proc doubleValueSelected*(this: ptr QInputDialog, value: cdouble) {.header:headerFile, importcpp:"#.doubleValueSelected(@)".} # Public
proc done*(this: ptr QInputDialog, result: cint) {.header:headerFile, importcpp:"#.done(@)".} # Public

export qstringlist
export qstring
export qsize
export qnamespace
export qdialog
export qwidget
export qflags
export qpaintdevice
export qlineedit
export qobject
