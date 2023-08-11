const headerFile* = "QtWidgets/qtextedit.h"

type
    # Enums found in the C++ code
    # Global
    QTextEdit_LineWrapMode* {.header:headerFile,importcpp:"QTextEdit::LineWrapMode".} = enum NoWrap = 0, WidgetWidth = 0x1, FixedPixelWidth = 0x2, FixedColumnWidth = 0x3
    QTextEdit_AutoFormattingFlag* {.header:headerFile,importcpp:"QTextEdit::AutoFormattingFlag".} = enum AutoAll = -1, AutoNone = 0, AutoBulletList = 0x1

import nimqt/qtwidgets/qabstractscrollarea
import nimqt/[qtextformat,qtextcursor]
type
    # Classes found in the C++ code
    QTextEdit* {.header:headerFile,importcpp:"QTextEdit" ,pure.} = object of QAbstractScrollArea
    QTextEdit_ExtraSelection* {.header:headerFile,importcpp:"QTextEdit::ExtraSelection" ,pure,inheritable.} = object
        format*: QTextFormat
        cursor*: QTextCursor
import nimqt/qtwidgets/qframe
import nimqt/qtwidgets/qwidget
import nimqt/qtgui/qpaintdevice
import nimqt/qtcore/qflags


type
    # typedefs found in the C++ code
    QTextEdit_SizeAdjustPolicy * = QAbstractScrollArea_SizeAdjustPolicy
    QTextEdit_Shape * = QFrame_Shape
    QTextEdit_Shadow * = QFrame_Shadow
    QTextEdit_StyleMask * = QFrame_StyleMask
    QTextEdit_RenderFlag * = QWidget_RenderFlag
    QTextEdit_RenderFlags * = QWidget_RenderFlags
    QTextEdit_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric
    QTextEdit_AutoFormatting * = QFlags[QTextEdit_AutoFormattingFlag]

# Stuff for class QTextEdit

# Public constructors for QTextEdit
# 1 default parameters!
proc newQTextEdit*(parent: ptr QWidget): ptr QTextEdit {. header:headerFile, importcpp:"new QTextEdit(@)" .} #
proc newQTextEdit*(): ptr QTextEdit {. header:headerFile, importcpp:"new QTextEdit(@)" .} #
import nimqt/qtcore/qstring
# 1 default parameters!
proc newQTextEdit*(text: QString, parent: ptr QWidget): ptr QTextEdit {. header:headerFile, importcpp:"new QTextEdit(@)" .} #
proc newQTextEdit*(text: QString): ptr QTextEdit {. header:headerFile, importcpp:"new QTextEdit(@)" .} #

# Public methods for QTextEdit
# 1 default parameters!
proc static_QTextEdit_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QTextEdit::tr(@)".} # Public static
proc static_QTextEdit_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QTextEdit::tr(@)".} # Public static
import nimqt/qtgui/qtextdocument
proc setDocument*(this: ptr QTextEdit, document: ptr QTextDocument) {.header:headerFile, importcpp:"#.setDocument(@)".} # Public
proc document*(this: ptr QTextEdit): ptr QTextDocument {.header:headerFile, importcpp:"#.document(@)".} # Public
proc setPlaceholderText*(this: ptr QTextEdit, placeholderText: QString) {.header:headerFile, importcpp:"#.setPlaceholderText(@)".} # Public
proc placeholderText*(this: ptr QTextEdit): QString {.header:headerFile, importcpp:"#.placeholderText(@)".} # Public
import nimqt/qtgui/qtextcursor
proc setTextCursor*(this: ptr QTextEdit, cursor: QTextCursor) {.header:headerFile, importcpp:"#.setTextCursor(@)".} # Public
proc textCursor*(this: ptr QTextEdit): QTextCursor {.header:headerFile, importcpp:"#.textCursor(@)".} # Public
proc isReadOnly*(this: ptr QTextEdit): bool {.header:headerFile, importcpp:"#.isReadOnly(@)".} # Public
proc setReadOnly*(this: ptr QTextEdit, ro: bool) {.header:headerFile, importcpp:"#.setReadOnly(@)".} # Public
import nimqt/qtcore/qnamespace
proc setTextInteractionFlags*(this: ptr QTextEdit, flags: Qt_TextInteractionFlags) {.header:headerFile, importcpp:"#.setTextInteractionFlags(@)".} # Public
proc textInteractionFlags*(this: ptr QTextEdit): Qt_TextInteractionFlags {.header:headerFile, importcpp:"#.textInteractionFlags(@)".} # Public
proc fontPointSize*(this: ptr QTextEdit): cfloat {.header:headerFile, importcpp:"#.fontPointSize(@)".} # Public
proc fontFamily*(this: ptr QTextEdit): QString {.header:headerFile, importcpp:"#.fontFamily(@)".} # Public
proc fontWeight*(this: ptr QTextEdit): cint {.header:headerFile, importcpp:"#.fontWeight(@)".} # Public
proc fontUnderline*(this: ptr QTextEdit): bool {.header:headerFile, importcpp:"#.fontUnderline(@)".} # Public
proc fontItalic*(this: ptr QTextEdit): bool {.header:headerFile, importcpp:"#.fontItalic(@)".} # Public
import nimqt/qtgui/qcolor
proc textColor*(this: ptr QTextEdit): QColor {.header:headerFile, importcpp:"#.textColor(@)".} # Public
proc textBackgroundColor*(this: ptr QTextEdit): QColor {.header:headerFile, importcpp:"#.textBackgroundColor(@)".} # Public
import nimqt/qtgui/qfont
proc currentFont*(this: ptr QTextEdit): QFont {.header:headerFile, importcpp:"#.currentFont(@)".} # Public
proc alignment*(this: ptr QTextEdit): Qt_Alignment {.header:headerFile, importcpp:"#.alignment(@)".} # Public
import nimqt/qtgui/qtextformat
proc mergeCurrentCharFormat*(this: ptr QTextEdit, modifier: QTextCharFormat) {.header:headerFile, importcpp:"#.mergeCurrentCharFormat(@)".} # Public
proc setCurrentCharFormat*(this: ptr QTextEdit, format: QTextCharFormat) {.header:headerFile, importcpp:"#.setCurrentCharFormat(@)".} # Public
proc currentCharFormat*(this: ptr QTextEdit): QTextCharFormat {.header:headerFile, importcpp:"#.currentCharFormat(@)".} # Public
proc autoFormatting*(this: ptr QTextEdit): QFlags[QTextEdit_AutoFormattingFlag] {.header:headerFile, importcpp:"#.autoFormatting(@)".} # Public
proc setAutoFormatting*(this: ptr QTextEdit, features: QFlags[QTextEdit_AutoFormattingFlag]) {.header:headerFile, importcpp:"#.setAutoFormatting(@)".} # Public
proc tabChangesFocus*(this: ptr QTextEdit): bool {.header:headerFile, importcpp:"#.tabChangesFocus(@)".} # Public
proc setTabChangesFocus*(this: ptr QTextEdit, b: bool) {.header:headerFile, importcpp:"#.setTabChangesFocus(@)".} # Public
proc setDocumentTitle*(this: ptr QTextEdit, title: QString) {.header:headerFile, importcpp:"#.setDocumentTitle(@)".} # Public
proc documentTitle*(this: ptr QTextEdit): QString {.header:headerFile, importcpp:"#.documentTitle(@)".} # Public
proc isUndoRedoEnabled*(this: ptr QTextEdit): bool {.header:headerFile, importcpp:"#.isUndoRedoEnabled(@)".} # Public
proc setUndoRedoEnabled*(this: ptr QTextEdit, enable: bool) {.header:headerFile, importcpp:"#.setUndoRedoEnabled(@)".} # Public
proc lineWrapMode*(this: ptr QTextEdit): QTextEdit_LineWrapMode {.header:headerFile, importcpp:"#.lineWrapMode(@)".} # Public
proc setLineWrapMode*(this: ptr QTextEdit, mode: QTextEdit_LineWrapMode) {.header:headerFile, importcpp:"#.setLineWrapMode(@)".} # Public
proc lineWrapColumnOrWidth*(this: ptr QTextEdit): cint {.header:headerFile, importcpp:"#.lineWrapColumnOrWidth(@)".} # Public
proc setLineWrapColumnOrWidth*(this: ptr QTextEdit, w: cint) {.header:headerFile, importcpp:"#.setLineWrapColumnOrWidth(@)".} # Public
import nimqt/qtgui/qtextoption
proc wordWrapMode*(this: ptr QTextEdit): QTextOption_WrapMode {.header:headerFile, importcpp:"#.wordWrapMode(@)".} # Public
proc setWordWrapMode*(this: ptr QTextEdit, policy: QTextOption_WrapMode) {.header:headerFile, importcpp:"#.setWordWrapMode(@)".} # Public
# 1 default parameters!
proc find*(this: ptr QTextEdit, exp: QString, options: QTextDocument_FindFlags): bool {.header:headerFile, importcpp:"#.find(@)".} # Public
proc find*(this: ptr QTextEdit, exp: QString): bool {.header:headerFile, importcpp:"#.find(@)".} # Public
import nimqt/qtcore/qregularexpression
# 1 default parameters!
proc find*(this: ptr QTextEdit, exp: QRegularExpression, options: QTextDocument_FindFlags): bool {.header:headerFile, importcpp:"#.find(@)".} # Public
proc find*(this: ptr QTextEdit, exp: QRegularExpression): bool {.header:headerFile, importcpp:"#.find(@)".} # Public
proc toPlainText*(this: ptr QTextEdit): QString {.header:headerFile, importcpp:"#.toPlainText(@)".} # Public
proc toHtml*(this: ptr QTextEdit): QString {.header:headerFile, importcpp:"#.toHtml(@)".} # Public
# 1 default parameters!
proc toMarkdown*(this: ptr QTextEdit, features: QTextDocument_MarkdownFeatures): QString {.header:headerFile, importcpp:"#.toMarkdown(@)".} # Public
proc toMarkdown*(this: ptr QTextEdit): QString {.header:headerFile, importcpp:"#.toMarkdown(@)".} # Public
proc ensureCursorVisible*(this: ptr QTextEdit) {.header:headerFile, importcpp:"#.ensureCursorVisible(@)".} # Public
import nimqt/qtcore/qurl
import nimqt/qtcore/qvariant
proc loadResource*(this: ptr QTextEdit, `type`: cint, name: QUrl): QVariant {.header:headerFile, importcpp:"#.loadResource(@)".} # Public
import nimqt/qtwidgets/qmenu
proc createStandardContextMenu*(this: ptr QTextEdit): ptr QMenu {.header:headerFile, importcpp:"#.createStandardContextMenu(@)".} # Public
import nimqt/qtcore/qpoint
proc createStandardContextMenu*(this: ptr QTextEdit, position: QPoint): ptr QMenu {.header:headerFile, importcpp:"#.createStandardContextMenu(@)".} # Public
proc cursorForPosition*(this: ptr QTextEdit, pos: QPoint): QTextCursor {.header:headerFile, importcpp:"#.cursorForPosition(@)".} # Public
import nimqt/qtcore/qrect
proc cursorRect*(this: ptr QTextEdit, cursor: QTextCursor): QRect {.header:headerFile, importcpp:"#.cursorRect(@)".} # Public
proc cursorRect*(this: ptr QTextEdit): QRect {.header:headerFile, importcpp:"#.cursorRect(@)".} # Public
proc anchorAt*(this: ptr QTextEdit, pos: QPoint): QString {.header:headerFile, importcpp:"#.anchorAt(@)".} # Public
proc overwriteMode*(this: ptr QTextEdit): bool {.header:headerFile, importcpp:"#.overwriteMode(@)".} # Public
proc setOverwriteMode*(this: ptr QTextEdit, overwrite: bool) {.header:headerFile, importcpp:"#.setOverwriteMode(@)".} # Public
proc tabStopDistance*(this: ptr QTextEdit): cfloat {.header:headerFile, importcpp:"#.tabStopDistance(@)".} # Public
proc setTabStopDistance*(this: ptr QTextEdit, distance: cfloat) {.header:headerFile, importcpp:"#.setTabStopDistance(@)".} # Public
proc cursorWidth*(this: ptr QTextEdit): cint {.header:headerFile, importcpp:"#.cursorWidth(@)".} # Public
proc setCursorWidth*(this: ptr QTextEdit, width: cint) {.header:headerFile, importcpp:"#.setCursorWidth(@)".} # Public
proc acceptRichText*(this: ptr QTextEdit): bool {.header:headerFile, importcpp:"#.acceptRichText(@)".} # Public
proc setAcceptRichText*(this: ptr QTextEdit, accept: bool) {.header:headerFile, importcpp:"#.setAcceptRichText(@)".} # Public
import nimqt/qtcore/qlist
proc setExtraSelections*(this: ptr QTextEdit, selections: QList[QTextEdit_ExtraSelection]) {.header:headerFile, importcpp:"#.setExtraSelections(@)".} # Public
proc extraSelections*(this: ptr QTextEdit): QList[QTextEdit_ExtraSelection] {.header:headerFile, importcpp:"#.extraSelections(@)".} # Public
proc moveCursor*(this: ptr QTextEdit, operation: QTextCursor_MoveOperation, mode: QTextCursor_MoveMode) {.header:headerFile, importcpp:"#.moveCursor(@)".} # Public
proc canPaste*(this: ptr QTextEdit): bool {.header:headerFile, importcpp:"#.canPaste(@)".} # Public
import nimqt/qtgui/qpagedpaintdevice
proc print*(this: ptr QTextEdit, printer: ptr QPagedPaintDevice) {.header:headerFile, importcpp:"#.print(@)".} # Public
proc inputMethodQuery*(this: ptr QTextEdit, property: Qt_InputMethodQuery): QVariant {.header:headerFile, importcpp:"#.inputMethodQuery(@)".} # Public
proc inputMethodQuery*(this: ptr QTextEdit, query: Qt_InputMethodQuery, argument: QVariant): QVariant {.header:headerFile, importcpp:"#.inputMethodQuery(@)".} # Public
proc setFontPointSize*(this: ptr QTextEdit, s: cfloat) {.header:headerFile, importcpp:"#.setFontPointSize(@)".} # Public
proc setFontFamily*(this: ptr QTextEdit, fontFamily: QString) {.header:headerFile, importcpp:"#.setFontFamily(@)".} # Public
proc setFontWeight*(this: ptr QTextEdit, w: cint) {.header:headerFile, importcpp:"#.setFontWeight(@)".} # Public
proc setFontUnderline*(this: ptr QTextEdit, b: bool) {.header:headerFile, importcpp:"#.setFontUnderline(@)".} # Public
proc setFontItalic*(this: ptr QTextEdit, b: bool) {.header:headerFile, importcpp:"#.setFontItalic(@)".} # Public
proc setTextColor*(this: ptr QTextEdit, c: QColor) {.header:headerFile, importcpp:"#.setTextColor(@)".} # Public
proc setTextBackgroundColor*(this: ptr QTextEdit, c: QColor) {.header:headerFile, importcpp:"#.setTextBackgroundColor(@)".} # Public
proc setCurrentFont*(this: ptr QTextEdit, f: QFont) {.header:headerFile, importcpp:"#.setCurrentFont(@)".} # Public
proc setAlignment*(this: ptr QTextEdit, a: Qt_Alignment) {.header:headerFile, importcpp:"#.setAlignment(@)".} # Public
proc setPlainText*(this: ptr QTextEdit, text: QString) {.header:headerFile, importcpp:"#.setPlainText(@)".} # Public
proc setHtml*(this: ptr QTextEdit, text: QString) {.header:headerFile, importcpp:"#.setHtml(@)".} # Public
proc setMarkdown*(this: ptr QTextEdit, markdown: QString) {.header:headerFile, importcpp:"#.setMarkdown(@)".} # Public
proc setText*(this: ptr QTextEdit, text: QString) {.header:headerFile, importcpp:"#.setText(@)".} # Public
proc cut*(this: ptr QTextEdit) {.header:headerFile, importcpp:"#.cut(@)".} # Public
proc copy*(this: ptr QTextEdit) {.header:headerFile, importcpp:"#.copy(@)".} # Public
proc paste*(this: ptr QTextEdit) {.header:headerFile, importcpp:"#.paste(@)".} # Public
proc undo*(this: ptr QTextEdit) {.header:headerFile, importcpp:"#.undo(@)".} # Public
proc redo*(this: ptr QTextEdit) {.header:headerFile, importcpp:"#.redo(@)".} # Public
proc clear*(this: ptr QTextEdit) {.header:headerFile, importcpp:"#.clear(@)".} # Public
proc selectAll*(this: ptr QTextEdit) {.header:headerFile, importcpp:"#.selectAll(@)".} # Public
proc insertPlainText*(this: ptr QTextEdit, text: QString) {.header:headerFile, importcpp:"#.insertPlainText(@)".} # Public
proc insertHtml*(this: ptr QTextEdit, text: QString) {.header:headerFile, importcpp:"#.insertHtml(@)".} # Public
proc append*(this: ptr QTextEdit, text: QString) {.header:headerFile, importcpp:"#.append(@)".} # Public
proc scrollToAnchor*(this: ptr QTextEdit, name: QString) {.header:headerFile, importcpp:"#.scrollToAnchor(@)".} # Public
# 1 default parameters!
proc zoomIn*(this: ptr QTextEdit, range: cint) {.header:headerFile, importcpp:"#.zoomIn(@)".} # Public
proc zoomIn*(this: ptr QTextEdit) {.header:headerFile, importcpp:"#.zoomIn(@)".} # Public
# 1 default parameters!
proc zoomOut*(this: ptr QTextEdit, range: cint) {.header:headerFile, importcpp:"#.zoomOut(@)".} # Public
proc zoomOut*(this: ptr QTextEdit) {.header:headerFile, importcpp:"#.zoomOut(@)".} # Public
proc textChanged*(this: ptr QTextEdit) {.header:headerFile, importcpp:"#.textChanged(@)".} # Public
proc undoAvailable*(this: ptr QTextEdit, b: bool) {.header:headerFile, importcpp:"#.undoAvailable(@)".} # Public
proc redoAvailable*(this: ptr QTextEdit, b: bool) {.header:headerFile, importcpp:"#.redoAvailable(@)".} # Public
proc currentCharFormatChanged*(this: ptr QTextEdit, format: QTextCharFormat) {.header:headerFile, importcpp:"#.currentCharFormatChanged(@)".} # Public
proc copyAvailable*(this: ptr QTextEdit, b: bool) {.header:headerFile, importcpp:"#.copyAvailable(@)".} # Public
proc selectionChanged*(this: ptr QTextEdit) {.header:headerFile, importcpp:"#.selectionChanged(@)".} # Public
proc cursorPositionChanged*(this: ptr QTextEdit) {.header:headerFile, importcpp:"#.cursorPositionChanged(@)".} # Public

# Protected methods methods for QTextEdit
import nimqt/qtcore/qcoreevent
proc event*(this: ptr QTextEdit, e: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Protected
proc timerEvent*(this: ptr QTextEdit, e: ptr QTimerEvent) {.header:headerFile, importcpp:"#.timerEvent(@)".} # Protected
import nimqt/qtgui/qevent
proc keyPressEvent*(this: ptr QTextEdit, e: ptr QKeyEvent) {.header:headerFile, importcpp:"#.keyPressEvent(@)".} # Protected
proc keyReleaseEvent*(this: ptr QTextEdit, e: ptr QKeyEvent) {.header:headerFile, importcpp:"#.keyReleaseEvent(@)".} # Protected
proc resizeEvent*(this: ptr QTextEdit, e: ptr QResizeEvent) {.header:headerFile, importcpp:"#.resizeEvent(@)".} # Protected
proc paintEvent*(this: ptr QTextEdit, e: ptr QPaintEvent) {.header:headerFile, importcpp:"#.paintEvent(@)".} # Protected
proc mousePressEvent*(this: ptr QTextEdit, e: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mousePressEvent(@)".} # Protected
proc mouseMoveEvent*(this: ptr QTextEdit, e: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mouseMoveEvent(@)".} # Protected
proc mouseReleaseEvent*(this: ptr QTextEdit, e: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mouseReleaseEvent(@)".} # Protected
proc mouseDoubleClickEvent*(this: ptr QTextEdit, e: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mouseDoubleClickEvent(@)".} # Protected
proc focusNextPrevChild*(this: ptr QTextEdit, next: bool): bool {.header:headerFile, importcpp:"#.focusNextPrevChild(@)".} # Protected
proc contextMenuEvent*(this: ptr QTextEdit, e: ptr QContextMenuEvent) {.header:headerFile, importcpp:"#.contextMenuEvent(@)".} # Protected
proc dragEnterEvent*(this: ptr QTextEdit, e: ptr QDragEnterEvent) {.header:headerFile, importcpp:"#.dragEnterEvent(@)".} # Protected
proc dragLeaveEvent*(this: ptr QTextEdit, e: ptr QDragLeaveEvent) {.header:headerFile, importcpp:"#.dragLeaveEvent(@)".} # Protected
proc dragMoveEvent*(this: ptr QTextEdit, e: ptr QDragMoveEvent) {.header:headerFile, importcpp:"#.dragMoveEvent(@)".} # Protected
proc dropEvent*(this: ptr QTextEdit, e: ptr QDropEvent) {.header:headerFile, importcpp:"#.dropEvent(@)".} # Protected
proc focusInEvent*(this: ptr QTextEdit, e: ptr QFocusEvent) {.header:headerFile, importcpp:"#.focusInEvent(@)".} # Protected
proc focusOutEvent*(this: ptr QTextEdit, e: ptr QFocusEvent) {.header:headerFile, importcpp:"#.focusOutEvent(@)".} # Protected
proc showEvent*(this: ptr QTextEdit, arg_0: ptr QShowEvent) {.header:headerFile, importcpp:"#.showEvent(@)".} # Protected
proc changeEvent*(this: ptr QTextEdit, e: ptr QEvent) {.header:headerFile, importcpp:"#.changeEvent(@)".} # Protected
proc wheelEvent*(this: ptr QTextEdit, e: ptr QWheelEvent) {.header:headerFile, importcpp:"#.wheelEvent(@)".} # Protected
import nimqt/qtcore/qmimedata
proc createMimeDataFromSelection*(this: ptr QTextEdit): ptr QMimeData {.header:headerFile, importcpp:"#.createMimeDataFromSelection(@)".} # Protected
proc canInsertFromMimeData*(this: ptr QTextEdit, source: ptr QMimeData): bool {.header:headerFile, importcpp:"#.canInsertFromMimeData(@)".} # Protected
proc insertFromMimeData*(this: ptr QTextEdit, source: ptr QMimeData) {.header:headerFile, importcpp:"#.insertFromMimeData(@)".} # Protected
proc inputMethodEvent*(this: ptr QTextEdit, arg_0: ptr QInputMethodEvent) {.header:headerFile, importcpp:"#.inputMethodEvent(@)".} # Protected
proc scrollContentsBy*(this: ptr QTextEdit, dx: cint, dy: cint) {.header:headerFile, importcpp:"#.scrollContentsBy(@)".} # Protected
proc doSetTextCursor*(this: ptr QTextEdit, cursor: QTextCursor) {.header:headerFile, importcpp:"#.doSetTextCursor(@)".} # Protected
proc zoomInF*(this: ptr QTextEdit, range: cfloat) {.header:headerFile, importcpp:"#.zoomInF(@)".} # Protected

export qevent
export qfont
export qtextformat
export qurl
export qmenu
export qstring
export qpagedpaintdevice
export qregularexpression
export qtextoption
export qtextcursor
export qabstractscrollarea
export qnamespace
export qlist
export qmimedata
export qvariant
export qpoint
export qwidget
export qrect
export qflags
export qpaintdevice
export qcoreevent
export qtextdocument
export qframe
export qcolor
