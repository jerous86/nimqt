const headerFile* = "QtWidgets/qcombobox.h"

type
    # Enums found in the C++ code
    # Global
    QComboBox_InsertPolicy* {.header:headerFile,importcpp:"QComboBox::InsertPolicy".} = enum NoInsert = 0, InsertAtTop = 0x1, InsertAtCurrent = 0x2, InsertAtBottom = 0x3, 
        InsertAfterCurrent = 0x4, InsertBeforeCurrent = 0x5, InsertAlphabetically = 0x6
    QComboBox_SizeAdjustPolicy* {.header:headerFile,importcpp:"QComboBox::SizeAdjustPolicy".} = enum AdjustToContents = 0, AdjustToContentsOnFirstShow = 0x1, AdjustToMinimumContentsLengthWithIcon = 0x2

import nimqt/qtwidgets/qwidget
type
    # Classes found in the C++ code
    QComboBox* {.header:headerFile,importcpp:"QComboBox" ,pure.} = object of QWidget
import nimqt/qtgui/qpaintdevice


type
    # typedefs found in the C++ code
    QComboBox_RenderFlag * = QWidget_RenderFlag
    QComboBox_RenderFlags * = QWidget_RenderFlags
    QComboBox_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric

# Stuff for class QComboBox

# Public constructors for QComboBox
# 1 default parameters!
proc newQComboBox*(parent: ptr QWidget): ptr QComboBox {. header:headerFile, importcpp:"new QComboBox(@)" .} #
proc newQComboBox*(): ptr QComboBox {. header:headerFile, importcpp:"new QComboBox(@)" .} #

# Public methods for QComboBox
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QComboBox_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QComboBox::tr(@)".} # Public static
proc static_QComboBox_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QComboBox::tr(@)".} # Public static
proc maxVisibleItems*(this: ptr QComboBox): cint {.header:headerFile, importcpp:"#.maxVisibleItems(@)".} # Public
proc setMaxVisibleItems*(this: ptr QComboBox, maxItems: cint) {.header:headerFile, importcpp:"#.setMaxVisibleItems(@)".} # Public
proc count*(this: ptr QComboBox): cint {.header:headerFile, importcpp:"#.count(@)".} # Public
proc setMaxCount*(this: ptr QComboBox, max: cint) {.header:headerFile, importcpp:"#.setMaxCount(@)".} # Public
proc maxCount*(this: ptr QComboBox): cint {.header:headerFile, importcpp:"#.maxCount(@)".} # Public
proc duplicatesEnabled*(this: ptr QComboBox): bool {.header:headerFile, importcpp:"#.duplicatesEnabled(@)".} # Public
proc setDuplicatesEnabled*(this: ptr QComboBox, enable: bool) {.header:headerFile, importcpp:"#.setDuplicatesEnabled(@)".} # Public
proc setFrame*(this: ptr QComboBox, arg_0: bool) {.header:headerFile, importcpp:"#.setFrame(@)".} # Public
proc hasFrame*(this: ptr QComboBox): bool {.header:headerFile, importcpp:"#.hasFrame(@)".} # Public
import nimqt/qtcore/qnamespace
# 1 default parameters!
proc findText*(this: ptr QComboBox, text: QString, flags: Qt_MatchFlags): cint {.header:headerFile, importcpp:"#.findText(@)".} # Public
proc findText*(this: ptr QComboBox, text: QString): cint {.header:headerFile, importcpp:"#.findText(@)".} # Public
import nimqt/qtcore/qvariant
# 2 default parameters!
proc findData*(this: ptr QComboBox, data: QVariant, role: cint, flags: Qt_MatchFlags): cint {.header:headerFile, importcpp:"#.findData(@)".} # Public
proc findData*(this: ptr QComboBox, data: QVariant, role: cint): cint {.header:headerFile, importcpp:"#.findData(@)".} # Public
proc findData*(this: ptr QComboBox, data: QVariant): cint {.header:headerFile, importcpp:"#.findData(@)".} # Public
proc insertPolicy*(this: ptr QComboBox): QComboBox_InsertPolicy {.header:headerFile, importcpp:"#.insertPolicy(@)".} # Public
proc setInsertPolicy*(this: ptr QComboBox, policy: QComboBox_InsertPolicy) {.header:headerFile, importcpp:"#.setInsertPolicy(@)".} # Public
proc sizeAdjustPolicy*(this: ptr QComboBox): QComboBox_SizeAdjustPolicy {.header:headerFile, importcpp:"#.sizeAdjustPolicy(@)".} # Public
proc setSizeAdjustPolicy*(this: ptr QComboBox, policy: QComboBox_SizeAdjustPolicy) {.header:headerFile, importcpp:"#.setSizeAdjustPolicy(@)".} # Public
proc minimumContentsLength*(this: ptr QComboBox): cint {.header:headerFile, importcpp:"#.minimumContentsLength(@)".} # Public
proc setMinimumContentsLength*(this: ptr QComboBox, characters: cint) {.header:headerFile, importcpp:"#.setMinimumContentsLength(@)".} # Public
import nimqt/qtcore/qsize
proc iconSize*(this: ptr QComboBox): QSize {.header:headerFile, importcpp:"#.iconSize(@)".} # Public
proc setIconSize*(this: ptr QComboBox, size: QSize) {.header:headerFile, importcpp:"#.setIconSize(@)".} # Public
proc setPlaceholderText*(this: ptr QComboBox, placeholderText: QString) {.header:headerFile, importcpp:"#.setPlaceholderText(@)".} # Public
proc placeholderText*(this: ptr QComboBox): QString {.header:headerFile, importcpp:"#.placeholderText(@)".} # Public
proc isEditable*(this: ptr QComboBox): bool {.header:headerFile, importcpp:"#.isEditable(@)".} # Public
proc setEditable*(this: ptr QComboBox, editable: bool) {.header:headerFile, importcpp:"#.setEditable(@)".} # Public
import nimqt/qtwidgets/qlineedit
proc setLineEdit*(this: ptr QComboBox, edit: ptr QLineEdit) {.header:headerFile, importcpp:"#.setLineEdit(@)".} # Public
proc lineEdit*(this: ptr QComboBox): ptr QLineEdit {.header:headerFile, importcpp:"#.lineEdit(@)".} # Public
import nimqt/qtgui/qvalidator
proc setValidator*(this: ptr QComboBox, v: ptr QValidator) {.header:headerFile, importcpp:"#.setValidator(@)".} # Public
proc validator*(this: ptr QComboBox): ptr QValidator {.header:headerFile, importcpp:"#.validator(@)".} # Public
import nimqt/qtwidgets/qcompleter
proc setCompleter*(this: ptr QComboBox, c: ptr QCompleter) {.header:headerFile, importcpp:"#.setCompleter(@)".} # Public
proc completer*(this: ptr QComboBox): ptr QCompleter {.header:headerFile, importcpp:"#.completer(@)".} # Public
import nimqt/qtwidgets/qabstractitemdelegate
proc itemDelegate*(this: ptr QComboBox): ptr QAbstractItemDelegate {.header:headerFile, importcpp:"#.itemDelegate(@)".} # Public
proc setItemDelegate*(this: ptr QComboBox, delegate: ptr QAbstractItemDelegate) {.header:headerFile, importcpp:"#.setItemDelegate(@)".} # Public
import nimqt/qtcore/qabstractitemmodel
proc model*(this: ptr QComboBox): ptr QAbstractItemModel {.header:headerFile, importcpp:"#.model(@)".} # Public
proc setModel*(this: ptr QComboBox, model: ptr QAbstractItemModel) {.header:headerFile, importcpp:"#.setModel(@)".} # Public
proc rootModelIndex*(this: ptr QComboBox): QModelIndex {.header:headerFile, importcpp:"#.rootModelIndex(@)".} # Public
proc setRootModelIndex*(this: ptr QComboBox, index: QModelIndex) {.header:headerFile, importcpp:"#.setRootModelIndex(@)".} # Public
proc modelColumn*(this: ptr QComboBox): cint {.header:headerFile, importcpp:"#.modelColumn(@)".} # Public
proc setModelColumn*(this: ptr QComboBox, visibleColumn: cint) {.header:headerFile, importcpp:"#.setModelColumn(@)".} # Public
proc currentIndex*(this: ptr QComboBox): cint {.header:headerFile, importcpp:"#.currentIndex(@)".} # Public
proc currentText*(this: ptr QComboBox): QString {.header:headerFile, importcpp:"#.currentText(@)".} # Public
# 1 default parameters!
proc currentData*(this: ptr QComboBox, role: cint): QVariant {.header:headerFile, importcpp:"#.currentData(@)".} # Public
proc currentData*(this: ptr QComboBox): QVariant {.header:headerFile, importcpp:"#.currentData(@)".} # Public
proc itemText*(this: ptr QComboBox, index: cint): QString {.header:headerFile, importcpp:"#.itemText(@)".} # Public
import nimqt/qtgui/qicon
proc itemIcon*(this: ptr QComboBox, index: cint): QIcon {.header:headerFile, importcpp:"#.itemIcon(@)".} # Public
# 1 default parameters!
proc itemData*(this: ptr QComboBox, index: cint, role: cint): QVariant {.header:headerFile, importcpp:"#.itemData(@)".} # Public
proc itemData*(this: ptr QComboBox, index: cint): QVariant {.header:headerFile, importcpp:"#.itemData(@)".} # Public
# 1 default parameters!
proc addItem*(this: ptr QComboBox, text: QString, userData: QVariant) {.header:headerFile, importcpp:"#.addItem(@)".} # Public
proc addItem*(this: ptr QComboBox, text: QString) {.header:headerFile, importcpp:"#.addItem(@)".} # Public
# 1 default parameters!
proc addItem*(this: ptr QComboBox, icon: QIcon, text: QString, userData: QVariant) {.header:headerFile, importcpp:"#.addItem(@)".} # Public
proc addItem*(this: ptr QComboBox, icon: QIcon, text: QString) {.header:headerFile, importcpp:"#.addItem(@)".} # Public
import nimqt/qtcore/qstringlist
proc addItems*(this: ptr QComboBox, texts: QStringList) {.header:headerFile, importcpp:"#.addItems(@)".} # Public
# 1 default parameters!
proc insertItem*(this: ptr QComboBox, index: cint, text: QString, userData: QVariant) {.header:headerFile, importcpp:"#.insertItem(@)".} # Public
proc insertItem*(this: ptr QComboBox, index: cint, text: QString) {.header:headerFile, importcpp:"#.insertItem(@)".} # Public
# 1 default parameters!
proc insertItem*(this: ptr QComboBox, index: cint, icon: QIcon, text: QString, userData: QVariant) {.header:headerFile, importcpp:"#.insertItem(@)".} # Public
proc insertItem*(this: ptr QComboBox, index: cint, icon: QIcon, text: QString) {.header:headerFile, importcpp:"#.insertItem(@)".} # Public
proc insertItems*(this: ptr QComboBox, index: cint, texts: QStringList) {.header:headerFile, importcpp:"#.insertItems(@)".} # Public
proc insertSeparator*(this: ptr QComboBox, index: cint) {.header:headerFile, importcpp:"#.insertSeparator(@)".} # Public
proc removeItem*(this: ptr QComboBox, index: cint) {.header:headerFile, importcpp:"#.removeItem(@)".} # Public
proc setItemText*(this: ptr QComboBox, index: cint, text: QString) {.header:headerFile, importcpp:"#.setItemText(@)".} # Public
proc setItemIcon*(this: ptr QComboBox, index: cint, icon: QIcon) {.header:headerFile, importcpp:"#.setItemIcon(@)".} # Public
# 1 default parameters!
proc setItemData*(this: ptr QComboBox, index: cint, value: QVariant, role: cint) {.header:headerFile, importcpp:"#.setItemData(@)".} # Public
proc setItemData*(this: ptr QComboBox, index: cint, value: QVariant) {.header:headerFile, importcpp:"#.setItemData(@)".} # Public
import nimqt/qtwidgets/qabstractitemview
proc view*(this: ptr QComboBox): ptr QAbstractItemView {.header:headerFile, importcpp:"#.view(@)".} # Public
proc setView*(this: ptr QComboBox, itemView: ptr QAbstractItemView) {.header:headerFile, importcpp:"#.setView(@)".} # Public
proc sizeHint*(this: ptr QComboBox): QSize {.header:headerFile, importcpp:"#.sizeHint(@)".} # Public
proc minimumSizeHint*(this: ptr QComboBox): QSize {.header:headerFile, importcpp:"#.minimumSizeHint(@)".} # Public
proc showPopup*(this: ptr QComboBox) {.header:headerFile, importcpp:"#.showPopup(@)".} # Public
proc hidePopup*(this: ptr QComboBox) {.header:headerFile, importcpp:"#.hidePopup(@)".} # Public
import nimqt/qtcore/qcoreevent
proc event*(this: ptr QComboBox, event: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Public
proc inputMethodQuery*(this: ptr QComboBox, arg_1: Qt_InputMethodQuery): QVariant {.header:headerFile, importcpp:"#.inputMethodQuery(@)".} # Public
proc inputMethodQuery*(this: ptr QComboBox, query: Qt_InputMethodQuery, argument: QVariant): QVariant {.header:headerFile, importcpp:"#.inputMethodQuery(@)".} # Public
proc clear*(this: ptr QComboBox) {.header:headerFile, importcpp:"#.clear(@)".} # Public
proc clearEditText*(this: ptr QComboBox) {.header:headerFile, importcpp:"#.clearEditText(@)".} # Public
proc setEditText*(this: ptr QComboBox, text: QString) {.header:headerFile, importcpp:"#.setEditText(@)".} # Public
proc setCurrentIndex*(this: ptr QComboBox, index: cint) {.header:headerFile, importcpp:"#.setCurrentIndex(@)".} # Public
proc setCurrentText*(this: ptr QComboBox, text: QString) {.header:headerFile, importcpp:"#.setCurrentText(@)".} # Public
proc editTextChanged*(this: ptr QComboBox, arg_0: QString) {.header:headerFile, importcpp:"#.editTextChanged(@)".} # Public
proc activated*(this: ptr QComboBox, index: cint) {.header:headerFile, importcpp:"#.activated(@)".} # Public
proc textActivated*(this: ptr QComboBox, arg_0: QString) {.header:headerFile, importcpp:"#.textActivated(@)".} # Public
proc highlighted*(this: ptr QComboBox, index: cint) {.header:headerFile, importcpp:"#.highlighted(@)".} # Public
proc textHighlighted*(this: ptr QComboBox, arg_0: QString) {.header:headerFile, importcpp:"#.textHighlighted(@)".} # Public
proc currentIndexChanged*(this: ptr QComboBox, index: cint) {.header:headerFile, importcpp:"#.currentIndexChanged(@)".} # Public
proc currentTextChanged*(this: ptr QComboBox, arg_0: QString) {.header:headerFile, importcpp:"#.currentTextChanged(@)".} # Public

# Protected methods methods for QComboBox
import nimqt/qtgui/qevent
proc focusInEvent*(this: ptr QComboBox, e: ptr QFocusEvent) {.header:headerFile, importcpp:"#.focusInEvent(@)".} # Protected
proc focusOutEvent*(this: ptr QComboBox, e: ptr QFocusEvent) {.header:headerFile, importcpp:"#.focusOutEvent(@)".} # Protected
proc changeEvent*(this: ptr QComboBox, e: ptr QEvent) {.header:headerFile, importcpp:"#.changeEvent(@)".} # Protected
proc resizeEvent*(this: ptr QComboBox, e: ptr QResizeEvent) {.header:headerFile, importcpp:"#.resizeEvent(@)".} # Protected
proc paintEvent*(this: ptr QComboBox, e: ptr QPaintEvent) {.header:headerFile, importcpp:"#.paintEvent(@)".} # Protected
proc showEvent*(this: ptr QComboBox, e: ptr QShowEvent) {.header:headerFile, importcpp:"#.showEvent(@)".} # Protected
proc hideEvent*(this: ptr QComboBox, e: ptr QHideEvent) {.header:headerFile, importcpp:"#.hideEvent(@)".} # Protected
proc mousePressEvent*(this: ptr QComboBox, e: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mousePressEvent(@)".} # Protected
proc mouseReleaseEvent*(this: ptr QComboBox, e: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mouseReleaseEvent(@)".} # Protected
proc keyPressEvent*(this: ptr QComboBox, e: ptr QKeyEvent) {.header:headerFile, importcpp:"#.keyPressEvent(@)".} # Protected
proc keyReleaseEvent*(this: ptr QComboBox, e: ptr QKeyEvent) {.header:headerFile, importcpp:"#.keyReleaseEvent(@)".} # Protected
proc wheelEvent*(this: ptr QComboBox, e: ptr QWheelEvent) {.header:headerFile, importcpp:"#.wheelEvent(@)".} # Protected
proc contextMenuEvent*(this: ptr QComboBox, e: ptr QContextMenuEvent) {.header:headerFile, importcpp:"#.contextMenuEvent(@)".} # Protected
proc inputMethodEvent*(this: ptr QComboBox, arg_0: ptr QInputMethodEvent) {.header:headerFile, importcpp:"#.inputMethodEvent(@)".} # Protected

export qevent
export qstringlist
export qstring
export qsize
export qabstractitemview
export qcompleter
export qnamespace
export qabstractitemmodel
export qabstractitemdelegate
export qvalidator
export qvariant
export qwidget
export qpaintdevice
export qlineedit
export qcoreevent
export qicon
