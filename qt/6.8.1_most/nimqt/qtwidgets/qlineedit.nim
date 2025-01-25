const headerFile* = "QtWidgets/qlineedit.h"

type
    # Enums found in the C++ code
    # Global
    QLineEdit_ActionPosition* {.header:headerFile,importcpp:"QLineEdit::ActionPosition".} = enum LeadingPosition = 0, TrailingPosition = 0x1
    QLineEdit_EchoMode* {.header:headerFile,importcpp:"QLineEdit::EchoMode".} = enum Normal = 0, NoEcho = 0x1, Password = 0x2, PasswordEchoOnEdit = 0x3

import nimqt/qtwidgets/qwidget
type
    # Classes found in the C++ code
    QLineEdit* {.header:headerFile,importcpp:"QLineEdit" ,pure.} = object of QWidget
import nimqt/qtgui/qpaintdevice


type
    # typedefs found in the C++ code
    QLineEdit_RenderFlag * = QWidget_RenderFlag
    QLineEdit_RenderFlags * = QWidget_RenderFlags
    QLineEdit_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric

# Stuff for class QLineEdit

# Public constructors for QLineEdit
# 1 default parameters!
proc newQLineEdit*(parent: ptr QWidget): ptr QLineEdit {. header:headerFile, importcpp:"new QLineEdit(@)" .} #
proc newQLineEdit*(): ptr QLineEdit {. header:headerFile, importcpp:"new QLineEdit(@)" .} #
import nimqt/qtcore/qstring
# 1 default parameters!
proc newQLineEdit*(arg_0: QString, parent: ptr QWidget): ptr QLineEdit {. header:headerFile, importcpp:"new QLineEdit(@)" .} #
proc newQLineEdit*(arg_0: QString): ptr QLineEdit {. header:headerFile, importcpp:"new QLineEdit(@)" .} #

# Public methods for QLineEdit
# 1 default parameters!
proc static_QLineEdit_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QLineEdit::tr(@)".} # Public static
proc static_QLineEdit_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QLineEdit::tr(@)".} # Public static
proc text*(this: ptr QLineEdit): QString {.header:headerFile, importcpp:"#.text(@)".} # Public
proc displayText*(this: ptr QLineEdit): QString {.header:headerFile, importcpp:"#.displayText(@)".} # Public
proc placeholderText*(this: ptr QLineEdit): QString {.header:headerFile, importcpp:"#.placeholderText(@)".} # Public
proc setPlaceholderText*(this: ptr QLineEdit, arg_0: QString) {.header:headerFile, importcpp:"#.setPlaceholderText(@)".} # Public
proc maxLength*(this: ptr QLineEdit): cint {.header:headerFile, importcpp:"#.maxLength(@)".} # Public
proc setMaxLength*(this: ptr QLineEdit, arg_0: cint) {.header:headerFile, importcpp:"#.setMaxLength(@)".} # Public
proc setFrame*(this: ptr QLineEdit, arg_0: bool) {.header:headerFile, importcpp:"#.setFrame(@)".} # Public
proc hasFrame*(this: ptr QLineEdit): bool {.header:headerFile, importcpp:"#.hasFrame(@)".} # Public
proc setClearButtonEnabled*(this: ptr QLineEdit, enable: bool) {.header:headerFile, importcpp:"#.setClearButtonEnabled(@)".} # Public
proc isClearButtonEnabled*(this: ptr QLineEdit): bool {.header:headerFile, importcpp:"#.isClearButtonEnabled(@)".} # Public
proc echoMode*(this: ptr QLineEdit): QLineEdit_EchoMode {.header:headerFile, importcpp:"#.echoMode(@)".} # Public
proc setEchoMode*(this: ptr QLineEdit, arg_0: QLineEdit_EchoMode) {.header:headerFile, importcpp:"#.setEchoMode(@)".} # Public
proc isReadOnly*(this: ptr QLineEdit): bool {.header:headerFile, importcpp:"#.isReadOnly(@)".} # Public
proc setReadOnly*(this: ptr QLineEdit, arg_0: bool) {.header:headerFile, importcpp:"#.setReadOnly(@)".} # Public
import nimqt/qtgui/qvalidator
proc setValidator*(this: ptr QLineEdit, arg_0: ptr QValidator) {.header:headerFile, importcpp:"#.setValidator(@)".} # Public
proc validator*(this: ptr QLineEdit): ptr QValidator {.header:headerFile, importcpp:"#.validator(@)".} # Public
import nimqt/qtwidgets/qcompleter
proc setCompleter*(this: ptr QLineEdit, completer: ptr QCompleter) {.header:headerFile, importcpp:"#.setCompleter(@)".} # Public
proc completer*(this: ptr QLineEdit): ptr QCompleter {.header:headerFile, importcpp:"#.completer(@)".} # Public
import nimqt/qtcore/qsize
proc sizeHint*(this: ptr QLineEdit): QSize {.header:headerFile, importcpp:"#.sizeHint(@)".} # Public
proc minimumSizeHint*(this: ptr QLineEdit): QSize {.header:headerFile, importcpp:"#.minimumSizeHint(@)".} # Public
proc cursorPosition*(this: ptr QLineEdit): cint {.header:headerFile, importcpp:"#.cursorPosition(@)".} # Public
proc setCursorPosition*(this: ptr QLineEdit, arg_0: cint) {.header:headerFile, importcpp:"#.setCursorPosition(@)".} # Public
import nimqt/qtcore/qpoint
proc cursorPositionAt*(this: ptr QLineEdit, pos: QPoint): cint {.header:headerFile, importcpp:"#.cursorPositionAt(@)".} # Public
import nimqt/qtcore/qnamespace
proc setAlignment*(this: ptr QLineEdit, flag: Qt_Alignment) {.header:headerFile, importcpp:"#.setAlignment(@)".} # Public
proc alignment*(this: ptr QLineEdit): Qt_Alignment {.header:headerFile, importcpp:"#.alignment(@)".} # Public
# 1 default parameters!
proc cursorForward*(this: ptr QLineEdit, mark: bool, steps: cint) {.header:headerFile, importcpp:"#.cursorForward(@)".} # Public
proc cursorForward*(this: ptr QLineEdit, mark: bool) {.header:headerFile, importcpp:"#.cursorForward(@)".} # Public
# 1 default parameters!
proc cursorBackward*(this: ptr QLineEdit, mark: bool, steps: cint) {.header:headerFile, importcpp:"#.cursorBackward(@)".} # Public
proc cursorBackward*(this: ptr QLineEdit, mark: bool) {.header:headerFile, importcpp:"#.cursorBackward(@)".} # Public
proc cursorWordForward*(this: ptr QLineEdit, mark: bool) {.header:headerFile, importcpp:"#.cursorWordForward(@)".} # Public
proc cursorWordBackward*(this: ptr QLineEdit, mark: bool) {.header:headerFile, importcpp:"#.cursorWordBackward(@)".} # Public
proc backspace*(this: ptr QLineEdit) {.header:headerFile, importcpp:"#.backspace(@)".} # Public
proc del*(this: ptr QLineEdit) {.header:headerFile, importcpp:"#.del(@)".} # Public
proc home*(this: ptr QLineEdit, mark: bool) {.header:headerFile, importcpp:"#.home(@)".} # Public
proc `end`*(this: ptr QLineEdit, mark: bool) {.header:headerFile, importcpp:"#.end(@)".} # Public
proc isModified*(this: ptr QLineEdit): bool {.header:headerFile, importcpp:"#.isModified(@)".} # Public
proc setModified*(this: ptr QLineEdit, arg_0: bool) {.header:headerFile, importcpp:"#.setModified(@)".} # Public
proc setSelection*(this: ptr QLineEdit, arg_0: cint, arg_1: cint) {.header:headerFile, importcpp:"#.setSelection(@)".} # Public
proc hasSelectedText*(this: ptr QLineEdit): bool {.header:headerFile, importcpp:"#.hasSelectedText(@)".} # Public
proc selectedText*(this: ptr QLineEdit): QString {.header:headerFile, importcpp:"#.selectedText(@)".} # Public
proc selectionStart*(this: ptr QLineEdit): cint {.header:headerFile, importcpp:"#.selectionStart(@)".} # Public
proc selectionEnd*(this: ptr QLineEdit): cint {.header:headerFile, importcpp:"#.selectionEnd(@)".} # Public
proc selectionLength*(this: ptr QLineEdit): cint {.header:headerFile, importcpp:"#.selectionLength(@)".} # Public
proc isUndoAvailable*(this: ptr QLineEdit): bool {.header:headerFile, importcpp:"#.isUndoAvailable(@)".} # Public
proc isRedoAvailable*(this: ptr QLineEdit): bool {.header:headerFile, importcpp:"#.isRedoAvailable(@)".} # Public
proc setDragEnabled*(this: ptr QLineEdit, b: bool) {.header:headerFile, importcpp:"#.setDragEnabled(@)".} # Public
proc dragEnabled*(this: ptr QLineEdit): bool {.header:headerFile, importcpp:"#.dragEnabled(@)".} # Public
proc setCursorMoveStyle*(this: ptr QLineEdit, style: Qt_CursorMoveStyle) {.header:headerFile, importcpp:"#.setCursorMoveStyle(@)".} # Public
proc cursorMoveStyle*(this: ptr QLineEdit): Qt_CursorMoveStyle {.header:headerFile, importcpp:"#.cursorMoveStyle(@)".} # Public
proc inputMask*(this: ptr QLineEdit): QString {.header:headerFile, importcpp:"#.inputMask(@)".} # Public
proc setInputMask*(this: ptr QLineEdit, inputMask: QString) {.header:headerFile, importcpp:"#.setInputMask(@)".} # Public
proc hasAcceptableInput*(this: ptr QLineEdit): bool {.header:headerFile, importcpp:"#.hasAcceptableInput(@)".} # Public
proc setTextMargins*(this: ptr QLineEdit, left: cint, top: cint, right: cint, bottom: cint) {.header:headerFile, importcpp:"#.setTextMargins(@)".} # Public
import nimqt/qtcore/qmargins
proc setTextMargins*(this: ptr QLineEdit, margins: QMargins) {.header:headerFile, importcpp:"#.setTextMargins(@)".} # Public
proc textMargins*(this: ptr QLineEdit): QMargins {.header:headerFile, importcpp:"#.textMargins(@)".} # Public
import nimqt/qtgui/qaction
proc addAction*(this: ptr QLineEdit, action: ptr QAction, position: QLineEdit_ActionPosition) {.header:headerFile, importcpp:"#.addAction(@)".} # Public
import nimqt/qtgui/qicon
proc addAction*(this: ptr QLineEdit, icon: QIcon, position: QLineEdit_ActionPosition): ptr QAction {.header:headerFile, importcpp:"#.addAction(@)".} # Public
proc setText*(this: ptr QLineEdit, arg_0: QString) {.header:headerFile, importcpp:"#.setText(@)".} # Public
proc clear*(this: ptr QLineEdit) {.header:headerFile, importcpp:"#.clear(@)".} # Public
proc selectAll*(this: ptr QLineEdit) {.header:headerFile, importcpp:"#.selectAll(@)".} # Public
proc undo*(this: ptr QLineEdit) {.header:headerFile, importcpp:"#.undo(@)".} # Public
proc redo*(this: ptr QLineEdit) {.header:headerFile, importcpp:"#.redo(@)".} # Public
proc cut*(this: ptr QLineEdit) {.header:headerFile, importcpp:"#.cut(@)".} # Public
proc copy*(this: ptr QLineEdit) {.header:headerFile, importcpp:"#.copy(@)".} # Public
proc paste*(this: ptr QLineEdit) {.header:headerFile, importcpp:"#.paste(@)".} # Public
proc deselect*(this: ptr QLineEdit) {.header:headerFile, importcpp:"#.deselect(@)".} # Public
proc insert*(this: ptr QLineEdit, arg_0: QString) {.header:headerFile, importcpp:"#.insert(@)".} # Public
import nimqt/qtwidgets/qmenu
proc createStandardContextMenu*(this: ptr QLineEdit): ptr QMenu {.header:headerFile, importcpp:"#.createStandardContextMenu(@)".} # Public
proc textChanged*(this: ptr QLineEdit, arg_0: QString) {.header:headerFile, importcpp:"#.textChanged(@)".} # Public
proc textEdited*(this: ptr QLineEdit, arg_0: QString) {.header:headerFile, importcpp:"#.textEdited(@)".} # Public
proc cursorPositionChanged*(this: ptr QLineEdit, arg_0: cint, arg_1: cint) {.header:headerFile, importcpp:"#.cursorPositionChanged(@)".} # Public
proc returnPressed*(this: ptr QLineEdit) {.header:headerFile, importcpp:"#.returnPressed(@)".} # Public
proc editingFinished*(this: ptr QLineEdit) {.header:headerFile, importcpp:"#.editingFinished(@)".} # Public
proc selectionChanged*(this: ptr QLineEdit) {.header:headerFile, importcpp:"#.selectionChanged(@)".} # Public
proc inputRejected*(this: ptr QLineEdit) {.header:headerFile, importcpp:"#.inputRejected(@)".} # Public
import nimqt/qtcore/qvariant
proc inputMethodQuery*(this: ptr QLineEdit, arg_1: Qt_InputMethodQuery): QVariant {.header:headerFile, importcpp:"#.inputMethodQuery(@)".} # Public
proc inputMethodQuery*(this: ptr QLineEdit, property: Qt_InputMethodQuery, argument: QVariant): QVariant {.header:headerFile, importcpp:"#.inputMethodQuery(@)".} # Public
import nimqt/qtcore/qcoreevent
proc timerEvent*(this: ptr QLineEdit, arg_0: ptr QTimerEvent) {.header:headerFile, importcpp:"#.timerEvent(@)".} # Public
proc event*(this: ptr QLineEdit, arg_0: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Public

# Protected methods methods for QLineEdit
import nimqt/qtgui/qevent
proc mousePressEvent*(this: ptr QLineEdit, arg_0: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mousePressEvent(@)".} # Protected
proc mouseMoveEvent*(this: ptr QLineEdit, arg_0: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mouseMoveEvent(@)".} # Protected
proc mouseReleaseEvent*(this: ptr QLineEdit, arg_0: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mouseReleaseEvent(@)".} # Protected
proc mouseDoubleClickEvent*(this: ptr QLineEdit, arg_0: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mouseDoubleClickEvent(@)".} # Protected
proc keyPressEvent*(this: ptr QLineEdit, arg_0: ptr QKeyEvent) {.header:headerFile, importcpp:"#.keyPressEvent(@)".} # Protected
proc keyReleaseEvent*(this: ptr QLineEdit, arg_0: ptr QKeyEvent) {.header:headerFile, importcpp:"#.keyReleaseEvent(@)".} # Protected
proc focusInEvent*(this: ptr QLineEdit, arg_0: ptr QFocusEvent) {.header:headerFile, importcpp:"#.focusInEvent(@)".} # Protected
proc focusOutEvent*(this: ptr QLineEdit, arg_0: ptr QFocusEvent) {.header:headerFile, importcpp:"#.focusOutEvent(@)".} # Protected
proc paintEvent*(this: ptr QLineEdit, arg_0: ptr QPaintEvent) {.header:headerFile, importcpp:"#.paintEvent(@)".} # Protected
proc dragEnterEvent*(this: ptr QLineEdit, arg_0: ptr QDragEnterEvent) {.header:headerFile, importcpp:"#.dragEnterEvent(@)".} # Protected
proc dragMoveEvent*(this: ptr QLineEdit, e: ptr QDragMoveEvent) {.header:headerFile, importcpp:"#.dragMoveEvent(@)".} # Protected
proc dragLeaveEvent*(this: ptr QLineEdit, e: ptr QDragLeaveEvent) {.header:headerFile, importcpp:"#.dragLeaveEvent(@)".} # Protected
proc dropEvent*(this: ptr QLineEdit, arg_0: ptr QDropEvent) {.header:headerFile, importcpp:"#.dropEvent(@)".} # Protected
proc changeEvent*(this: ptr QLineEdit, arg_0: ptr QEvent) {.header:headerFile, importcpp:"#.changeEvent(@)".} # Protected
proc contextMenuEvent*(this: ptr QLineEdit, arg_0: ptr QContextMenuEvent) {.header:headerFile, importcpp:"#.contextMenuEvent(@)".} # Protected
proc inputMethodEvent*(this: ptr QLineEdit, arg_0: ptr QInputMethodEvent) {.header:headerFile, importcpp:"#.inputMethodEvent(@)".} # Protected
import nimqt/qtcore/qrect
proc cursorRect*(this: ptr QLineEdit): QRect {.header:headerFile, importcpp:"#.cursorRect(@)".} # Protected

export qevent
export qmenu
export qstring
export qsize
export qcompleter
export qaction
export qnamespace
export qvalidator
export qpoint
export qvariant
export qwidget
export qrect
export qpaintdevice
export qmargins
export qcoreevent
export qicon
