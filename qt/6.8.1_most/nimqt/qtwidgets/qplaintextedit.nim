const headerFile* = "QtWidgets/qplaintextedit.h"

type
    # Enums found in the C++ code
    # Global
    QPlainTextEdit_LineWrapMode* {.header:headerFile,importcpp:"QPlainTextEdit::LineWrapMode".} = enum NoWrap = 0, WidgetWidth = 0x1

import nimqt/qtgui/qabstracttextdocumentlayout
import nimqt/qtwidgets/qabstractscrollarea
type
    # Classes found in the C++ code
    QPlainTextEdit* {.header:headerFile,importcpp:"QPlainTextEdit" ,pure.} = object of QAbstractScrollArea
    QPlainTextDocumentLayout* {.header:headerFile,importcpp:"QPlainTextDocumentLayout" ,pure.} = object of QAbstractTextDocumentLayout
import nimqt/qtwidgets/qframe
import nimqt/qtwidgets/qwidget
import nimqt/qtgui/qpaintdevice


type
    # typedefs found in the C++ code
    QPlainTextEdit_SizeAdjustPolicy * = QAbstractScrollArea_SizeAdjustPolicy
    QPlainTextEdit_Shape * = QFrame_Shape
    QPlainTextEdit_Shadow * = QFrame_Shadow
    QPlainTextEdit_StyleMask * = QFrame_StyleMask
    QPlainTextEdit_RenderFlag * = QWidget_RenderFlag
    QPlainTextEdit_RenderFlags * = QWidget_RenderFlags
    QPlainTextEdit_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric

# Stuff for class QPlainTextEdit

# Public constructors for QPlainTextEdit
# 1 default parameters!
proc newQPlainTextEdit*(parent: ptr QWidget): ptr QPlainTextEdit {. header:headerFile, importcpp:"new QPlainTextEdit(@)" .} #
proc newQPlainTextEdit*(): ptr QPlainTextEdit {. header:headerFile, importcpp:"new QPlainTextEdit(@)" .} #
import nimqt/qtcore/qstring
# 1 default parameters!
proc newQPlainTextEdit*(text: QString, parent: ptr QWidget): ptr QPlainTextEdit {. header:headerFile, importcpp:"new QPlainTextEdit(@)" .} #
proc newQPlainTextEdit*(text: QString): ptr QPlainTextEdit {. header:headerFile, importcpp:"new QPlainTextEdit(@)" .} #

# Public methods for QPlainTextEdit
# 1 default parameters!
proc static_QPlainTextEdit_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QPlainTextEdit::tr(@)".} # Public static
proc static_QPlainTextEdit_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QPlainTextEdit::tr(@)".} # Public static
import nimqt/qtgui/qtextdocument
proc setDocument*(this: ptr QPlainTextEdit, document: ptr QTextDocument) {.header:headerFile, importcpp:"#.setDocument(@)".} # Public
proc document*(this: ptr QPlainTextEdit): ptr QTextDocument {.header:headerFile, importcpp:"#.document(@)".} # Public
proc setPlaceholderText*(this: ptr QPlainTextEdit, placeholderText: QString) {.header:headerFile, importcpp:"#.setPlaceholderText(@)".} # Public
proc placeholderText*(this: ptr QPlainTextEdit): QString {.header:headerFile, importcpp:"#.placeholderText(@)".} # Public
import nimqt/qtgui/qtextcursor
proc setTextCursor*(this: ptr QPlainTextEdit, cursor: QTextCursor) {.header:headerFile, importcpp:"#.setTextCursor(@)".} # Public
proc textCursor*(this: ptr QPlainTextEdit): QTextCursor {.header:headerFile, importcpp:"#.textCursor(@)".} # Public
proc isReadOnly*(this: ptr QPlainTextEdit): bool {.header:headerFile, importcpp:"#.isReadOnly(@)".} # Public
proc setReadOnly*(this: ptr QPlainTextEdit, ro: bool) {.header:headerFile, importcpp:"#.setReadOnly(@)".} # Public
import nimqt/qtcore/qnamespace
proc setTextInteractionFlags*(this: ptr QPlainTextEdit, flags: Qt_TextInteractionFlags) {.header:headerFile, importcpp:"#.setTextInteractionFlags(@)".} # Public
proc textInteractionFlags*(this: ptr QPlainTextEdit): Qt_TextInteractionFlags {.header:headerFile, importcpp:"#.textInteractionFlags(@)".} # Public
import nimqt/qtgui/qtextformat
proc mergeCurrentCharFormat*(this: ptr QPlainTextEdit, modifier: QTextCharFormat) {.header:headerFile, importcpp:"#.mergeCurrentCharFormat(@)".} # Public
proc setCurrentCharFormat*(this: ptr QPlainTextEdit, format: QTextCharFormat) {.header:headerFile, importcpp:"#.setCurrentCharFormat(@)".} # Public
proc currentCharFormat*(this: ptr QPlainTextEdit): QTextCharFormat {.header:headerFile, importcpp:"#.currentCharFormat(@)".} # Public
proc tabChangesFocus*(this: ptr QPlainTextEdit): bool {.header:headerFile, importcpp:"#.tabChangesFocus(@)".} # Public
proc setTabChangesFocus*(this: ptr QPlainTextEdit, b: bool) {.header:headerFile, importcpp:"#.setTabChangesFocus(@)".} # Public
proc setDocumentTitle*(this: ptr QPlainTextEdit, title: QString) {.header:headerFile, importcpp:"#.setDocumentTitle(@)".} # Public
proc documentTitle*(this: ptr QPlainTextEdit): QString {.header:headerFile, importcpp:"#.documentTitle(@)".} # Public
proc isUndoRedoEnabled*(this: ptr QPlainTextEdit): bool {.header:headerFile, importcpp:"#.isUndoRedoEnabled(@)".} # Public
proc setUndoRedoEnabled*(this: ptr QPlainTextEdit, enable: bool) {.header:headerFile, importcpp:"#.setUndoRedoEnabled(@)".} # Public
proc setMaximumBlockCount*(this: ptr QPlainTextEdit, maximum: cint) {.header:headerFile, importcpp:"#.setMaximumBlockCount(@)".} # Public
proc maximumBlockCount*(this: ptr QPlainTextEdit): cint {.header:headerFile, importcpp:"#.maximumBlockCount(@)".} # Public
proc lineWrapMode*(this: ptr QPlainTextEdit): QPlainTextEdit_LineWrapMode {.header:headerFile, importcpp:"#.lineWrapMode(@)".} # Public
proc setLineWrapMode*(this: ptr QPlainTextEdit, mode: QPlainTextEdit_LineWrapMode) {.header:headerFile, importcpp:"#.setLineWrapMode(@)".} # Public
import nimqt/qtgui/qtextoption
proc wordWrapMode*(this: ptr QPlainTextEdit): QTextOption_WrapMode {.header:headerFile, importcpp:"#.wordWrapMode(@)".} # Public
proc setWordWrapMode*(this: ptr QPlainTextEdit, policy: QTextOption_WrapMode) {.header:headerFile, importcpp:"#.setWordWrapMode(@)".} # Public
proc setBackgroundVisible*(this: ptr QPlainTextEdit, visible: bool) {.header:headerFile, importcpp:"#.setBackgroundVisible(@)".} # Public
proc backgroundVisible*(this: ptr QPlainTextEdit): bool {.header:headerFile, importcpp:"#.backgroundVisible(@)".} # Public
proc setCenterOnScroll*(this: ptr QPlainTextEdit, enabled: bool) {.header:headerFile, importcpp:"#.setCenterOnScroll(@)".} # Public
proc centerOnScroll*(this: ptr QPlainTextEdit): bool {.header:headerFile, importcpp:"#.centerOnScroll(@)".} # Public
# 1 default parameters!
proc find*(this: ptr QPlainTextEdit, exp: QString, options: QTextDocument_FindFlags): bool {.header:headerFile, importcpp:"#.find(@)".} # Public
proc find*(this: ptr QPlainTextEdit, exp: QString): bool {.header:headerFile, importcpp:"#.find(@)".} # Public
import nimqt/qtcore/qregularexpression
# 1 default parameters!
proc find*(this: ptr QPlainTextEdit, exp: QRegularExpression, options: QTextDocument_FindFlags): bool {.header:headerFile, importcpp:"#.find(@)".} # Public
proc find*(this: ptr QPlainTextEdit, exp: QRegularExpression): bool {.header:headerFile, importcpp:"#.find(@)".} # Public
proc toPlainText*(this: ptr QPlainTextEdit): QString {.header:headerFile, importcpp:"#.toPlainText(@)".} # Public
proc ensureCursorVisible*(this: ptr QPlainTextEdit) {.header:headerFile, importcpp:"#.ensureCursorVisible(@)".} # Public
import nimqt/qtcore/qurl
import nimqt/qtcore/qvariant
proc loadResource*(this: ptr QPlainTextEdit, `type`: cint, name: QUrl): QVariant {.header:headerFile, importcpp:"#.loadResource(@)".} # Public
import nimqt/qtwidgets/qmenu
proc createStandardContextMenu*(this: ptr QPlainTextEdit): ptr QMenu {.header:headerFile, importcpp:"#.createStandardContextMenu(@)".} # Public
import nimqt/qtcore/qpoint
proc createStandardContextMenu*(this: ptr QPlainTextEdit, position: QPoint): ptr QMenu {.header:headerFile, importcpp:"#.createStandardContextMenu(@)".} # Public
proc cursorForPosition*(this: ptr QPlainTextEdit, pos: QPoint): QTextCursor {.header:headerFile, importcpp:"#.cursorForPosition(@)".} # Public
import nimqt/qtcore/qrect
proc cursorRect*(this: ptr QPlainTextEdit, cursor: QTextCursor): QRect {.header:headerFile, importcpp:"#.cursorRect(@)".} # Public
proc cursorRect*(this: ptr QPlainTextEdit): QRect {.header:headerFile, importcpp:"#.cursorRect(@)".} # Public
proc anchorAt*(this: ptr QPlainTextEdit, pos: QPoint): QString {.header:headerFile, importcpp:"#.anchorAt(@)".} # Public
proc overwriteMode*(this: ptr QPlainTextEdit): bool {.header:headerFile, importcpp:"#.overwriteMode(@)".} # Public
proc setOverwriteMode*(this: ptr QPlainTextEdit, overwrite: bool) {.header:headerFile, importcpp:"#.setOverwriteMode(@)".} # Public
proc tabStopDistance*(this: ptr QPlainTextEdit): cfloat {.header:headerFile, importcpp:"#.tabStopDistance(@)".} # Public
proc setTabStopDistance*(this: ptr QPlainTextEdit, distance: cfloat) {.header:headerFile, importcpp:"#.setTabStopDistance(@)".} # Public
proc cursorWidth*(this: ptr QPlainTextEdit): cint {.header:headerFile, importcpp:"#.cursorWidth(@)".} # Public
proc setCursorWidth*(this: ptr QPlainTextEdit, width: cint) {.header:headerFile, importcpp:"#.setCursorWidth(@)".} # Public
import nimqt/qtcore/qlist
import nimqt/qtwidgets/qtextedit
proc setExtraSelections*(this: ptr QPlainTextEdit, selections: QList[QTextEdit_ExtraSelection]) {.header:headerFile, importcpp:"#.setExtraSelections(@)".} # Public
proc extraSelections*(this: ptr QPlainTextEdit): QList[QTextEdit_ExtraSelection] {.header:headerFile, importcpp:"#.extraSelections(@)".} # Public
proc moveCursor*(this: ptr QPlainTextEdit, operation: QTextCursor_MoveOperation, mode: QTextCursor_MoveMode) {.header:headerFile, importcpp:"#.moveCursor(@)".} # Public
proc canPaste*(this: ptr QPlainTextEdit): bool {.header:headerFile, importcpp:"#.canPaste(@)".} # Public
import nimqt/qtgui/qpagedpaintdevice
proc print*(this: ptr QPlainTextEdit, printer: ptr QPagedPaintDevice) {.header:headerFile, importcpp:"#.print(@)".} # Public
proc blockCount*(this: ptr QPlainTextEdit): cint {.header:headerFile, importcpp:"#.blockCount(@)".} # Public
proc inputMethodQuery*(this: ptr QPlainTextEdit, property: Qt_InputMethodQuery): QVariant {.header:headerFile, importcpp:"#.inputMethodQuery(@)".} # Public
proc inputMethodQuery*(this: ptr QPlainTextEdit, query: Qt_InputMethodQuery, argument: QVariant): QVariant {.header:headerFile, importcpp:"#.inputMethodQuery(@)".} # Public
proc setPlainText*(this: ptr QPlainTextEdit, text: QString) {.header:headerFile, importcpp:"#.setPlainText(@)".} # Public
proc cut*(this: ptr QPlainTextEdit) {.header:headerFile, importcpp:"#.cut(@)".} # Public
proc copy*(this: ptr QPlainTextEdit) {.header:headerFile, importcpp:"#.copy(@)".} # Public
proc paste*(this: ptr QPlainTextEdit) {.header:headerFile, importcpp:"#.paste(@)".} # Public
proc undo*(this: ptr QPlainTextEdit) {.header:headerFile, importcpp:"#.undo(@)".} # Public
proc redo*(this: ptr QPlainTextEdit) {.header:headerFile, importcpp:"#.redo(@)".} # Public
proc clear*(this: ptr QPlainTextEdit) {.header:headerFile, importcpp:"#.clear(@)".} # Public
proc selectAll*(this: ptr QPlainTextEdit) {.header:headerFile, importcpp:"#.selectAll(@)".} # Public
proc insertPlainText*(this: ptr QPlainTextEdit, text: QString) {.header:headerFile, importcpp:"#.insertPlainText(@)".} # Public
proc appendPlainText*(this: ptr QPlainTextEdit, text: QString) {.header:headerFile, importcpp:"#.appendPlainText(@)".} # Public
proc appendHtml*(this: ptr QPlainTextEdit, html: QString) {.header:headerFile, importcpp:"#.appendHtml(@)".} # Public
proc centerCursor*(this: ptr QPlainTextEdit) {.header:headerFile, importcpp:"#.centerCursor(@)".} # Public
# 1 default parameters!
proc zoomIn*(this: ptr QPlainTextEdit, range: cint) {.header:headerFile, importcpp:"#.zoomIn(@)".} # Public
proc zoomIn*(this: ptr QPlainTextEdit) {.header:headerFile, importcpp:"#.zoomIn(@)".} # Public
# 1 default parameters!
proc zoomOut*(this: ptr QPlainTextEdit, range: cint) {.header:headerFile, importcpp:"#.zoomOut(@)".} # Public
proc zoomOut*(this: ptr QPlainTextEdit) {.header:headerFile, importcpp:"#.zoomOut(@)".} # Public
proc textChanged*(this: ptr QPlainTextEdit) {.header:headerFile, importcpp:"#.textChanged(@)".} # Public
proc undoAvailable*(this: ptr QPlainTextEdit, b: bool) {.header:headerFile, importcpp:"#.undoAvailable(@)".} # Public
proc redoAvailable*(this: ptr QPlainTextEdit, b: bool) {.header:headerFile, importcpp:"#.redoAvailable(@)".} # Public
proc copyAvailable*(this: ptr QPlainTextEdit, b: bool) {.header:headerFile, importcpp:"#.copyAvailable(@)".} # Public
proc selectionChanged*(this: ptr QPlainTextEdit) {.header:headerFile, importcpp:"#.selectionChanged(@)".} # Public
proc cursorPositionChanged*(this: ptr QPlainTextEdit) {.header:headerFile, importcpp:"#.cursorPositionChanged(@)".} # Public
proc updateRequest*(this: ptr QPlainTextEdit, rect: QRect, dy: cint) {.header:headerFile, importcpp:"#.updateRequest(@)".} # Public
proc blockCountChanged*(this: ptr QPlainTextEdit, newBlockCount: cint) {.header:headerFile, importcpp:"#.blockCountChanged(@)".} # Public
proc modificationChanged*(this: ptr QPlainTextEdit, arg_0: bool) {.header:headerFile, importcpp:"#.modificationChanged(@)".} # Public

# Protected methods methods for QPlainTextEdit
import nimqt/qtcore/qcoreevent
proc event*(this: ptr QPlainTextEdit, e: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Protected
proc timerEvent*(this: ptr QPlainTextEdit, e: ptr QTimerEvent) {.header:headerFile, importcpp:"#.timerEvent(@)".} # Protected
import nimqt/qtgui/qevent
proc keyPressEvent*(this: ptr QPlainTextEdit, e: ptr QKeyEvent) {.header:headerFile, importcpp:"#.keyPressEvent(@)".} # Protected
proc keyReleaseEvent*(this: ptr QPlainTextEdit, e: ptr QKeyEvent) {.header:headerFile, importcpp:"#.keyReleaseEvent(@)".} # Protected
proc resizeEvent*(this: ptr QPlainTextEdit, e: ptr QResizeEvent) {.header:headerFile, importcpp:"#.resizeEvent(@)".} # Protected
proc paintEvent*(this: ptr QPlainTextEdit, e: ptr QPaintEvent) {.header:headerFile, importcpp:"#.paintEvent(@)".} # Protected
proc mousePressEvent*(this: ptr QPlainTextEdit, e: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mousePressEvent(@)".} # Protected
proc mouseMoveEvent*(this: ptr QPlainTextEdit, e: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mouseMoveEvent(@)".} # Protected
proc mouseReleaseEvent*(this: ptr QPlainTextEdit, e: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mouseReleaseEvent(@)".} # Protected
proc mouseDoubleClickEvent*(this: ptr QPlainTextEdit, e: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mouseDoubleClickEvent(@)".} # Protected
proc focusNextPrevChild*(this: ptr QPlainTextEdit, next: bool): bool {.header:headerFile, importcpp:"#.focusNextPrevChild(@)".} # Protected
proc contextMenuEvent*(this: ptr QPlainTextEdit, e: ptr QContextMenuEvent) {.header:headerFile, importcpp:"#.contextMenuEvent(@)".} # Protected
proc dragEnterEvent*(this: ptr QPlainTextEdit, e: ptr QDragEnterEvent) {.header:headerFile, importcpp:"#.dragEnterEvent(@)".} # Protected
proc dragLeaveEvent*(this: ptr QPlainTextEdit, e: ptr QDragLeaveEvent) {.header:headerFile, importcpp:"#.dragLeaveEvent(@)".} # Protected
proc dragMoveEvent*(this: ptr QPlainTextEdit, e: ptr QDragMoveEvent) {.header:headerFile, importcpp:"#.dragMoveEvent(@)".} # Protected
proc dropEvent*(this: ptr QPlainTextEdit, e: ptr QDropEvent) {.header:headerFile, importcpp:"#.dropEvent(@)".} # Protected
proc focusInEvent*(this: ptr QPlainTextEdit, e: ptr QFocusEvent) {.header:headerFile, importcpp:"#.focusInEvent(@)".} # Protected
proc focusOutEvent*(this: ptr QPlainTextEdit, e: ptr QFocusEvent) {.header:headerFile, importcpp:"#.focusOutEvent(@)".} # Protected
proc showEvent*(this: ptr QPlainTextEdit, arg_0: ptr QShowEvent) {.header:headerFile, importcpp:"#.showEvent(@)".} # Protected
proc changeEvent*(this: ptr QPlainTextEdit, e: ptr QEvent) {.header:headerFile, importcpp:"#.changeEvent(@)".} # Protected
proc wheelEvent*(this: ptr QPlainTextEdit, e: ptr QWheelEvent) {.header:headerFile, importcpp:"#.wheelEvent(@)".} # Protected
import nimqt/qtcore/qmimedata
proc createMimeDataFromSelection*(this: ptr QPlainTextEdit): ptr QMimeData {.header:headerFile, importcpp:"#.createMimeDataFromSelection(@)".} # Protected
proc canInsertFromMimeData*(this: ptr QPlainTextEdit, source: ptr QMimeData): bool {.header:headerFile, importcpp:"#.canInsertFromMimeData(@)".} # Protected
proc insertFromMimeData*(this: ptr QPlainTextEdit, source: ptr QMimeData) {.header:headerFile, importcpp:"#.insertFromMimeData(@)".} # Protected
proc inputMethodEvent*(this: ptr QPlainTextEdit, arg_0: ptr QInputMethodEvent) {.header:headerFile, importcpp:"#.inputMethodEvent(@)".} # Protected
proc scrollContentsBy*(this: ptr QPlainTextEdit, dx: cint, dy: cint) {.header:headerFile, importcpp:"#.scrollContentsBy(@)".} # Protected
proc doSetTextCursor*(this: ptr QPlainTextEdit, cursor: QTextCursor) {.header:headerFile, importcpp:"#.doSetTextCursor(@)".} # Protected
import nimqt/qtgui/qtextobject
proc firstVisibleBlock*(this: ptr QPlainTextEdit): QTextBlock {.header:headerFile, importcpp:"#.firstVisibleBlock(@)".} # Protected
proc contentOffset*(this: ptr QPlainTextEdit): QPointF {.header:headerFile, importcpp:"#.contentOffset(@)".} # Protected
proc blockBoundingRect*(this: ptr QPlainTextEdit, `block`: QTextBlock): QRectF {.header:headerFile, importcpp:"#.blockBoundingRect(@)".} # Protected
proc blockBoundingGeometry*(this: ptr QPlainTextEdit, `block`: QTextBlock): QRectF {.header:headerFile, importcpp:"#.blockBoundingGeometry(@)".} # Protected
proc getPaintContext*(this: ptr QPlainTextEdit): QAbstractTextDocumentLayout_PaintContext {.header:headerFile, importcpp:"#.getPaintContext(@)".} # Protected
proc zoomInF*(this: ptr QPlainTextEdit, range: cfloat) {.header:headerFile, importcpp:"#.zoomInF(@)".} # Protected
# Stuff for class QPlainTextDocumentLayout

# Public constructors for QPlainTextDocumentLayout
proc newQPlainTextDocumentLayout*(document: ptr QTextDocument): ptr QPlainTextDocumentLayout {. header:headerFile, importcpp:"new QPlainTextDocumentLayout(@)" .} #

# Public methods for QPlainTextDocumentLayout
# 1 default parameters!
proc static_QPlainTextDocumentLayout_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QPlainTextDocumentLayout::tr(@)".} # Public static
proc static_QPlainTextDocumentLayout_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QPlainTextDocumentLayout::tr(@)".} # Public static
import nimqt/qtgui/qpainter
proc draw*(this: ptr QPlainTextDocumentLayout, arg_0: ptr QPainter, arg_1: QAbstractTextDocumentLayout_PaintContext) {.header:headerFile, importcpp:"#.draw(@)".} # Public
proc hitTest*(this: ptr QPlainTextDocumentLayout, arg_0: QPointF, arg_1: Qt_HitTestAccuracy): cint {.header:headerFile, importcpp:"#.hitTest(@)".} # Public
proc pageCount*(this: ptr QPlainTextDocumentLayout): cint {.header:headerFile, importcpp:"#.pageCount(@)".} # Public
import nimqt/qtcore/qsize
proc documentSize*(this: ptr QPlainTextDocumentLayout): QSizeF {.header:headerFile, importcpp:"#.documentSize(@)".} # Public
proc frameBoundingRect*(this: ptr QPlainTextDocumentLayout, arg_1: ptr QTextFrame): QRectF {.header:headerFile, importcpp:"#.frameBoundingRect(@)".} # Public
proc blockBoundingRect*(this: ptr QPlainTextDocumentLayout, `block`: QTextBlock): QRectF {.header:headerFile, importcpp:"#.blockBoundingRect(@)".} # Public
proc ensureBlockLayout*(this: ptr QPlainTextDocumentLayout, `block`: QTextBlock) {.header:headerFile, importcpp:"#.ensureBlockLayout(@)".} # Public
proc setCursorWidth*(this: ptr QPlainTextDocumentLayout, width: cint) {.header:headerFile, importcpp:"#.setCursorWidth(@)".} # Public
proc cursorWidth*(this: ptr QPlainTextDocumentLayout): cint {.header:headerFile, importcpp:"#.cursorWidth(@)".} # Public
proc requestUpdate*(this: ptr QPlainTextDocumentLayout) {.header:headerFile, importcpp:"#.requestUpdate(@)".} # Public

# Protected methods methods for QPlainTextDocumentLayout
proc documentChanged*(this: ptr QPlainTextDocumentLayout, `from`: cint, arg_1: cint, charsAdded: cint) {.header:headerFile, importcpp:"#.documentChanged(@)".} # Protected

export qevent
export qtextformat
export qurl
export qmenu
export qstring
export qpagedpaintdevice
export qsize
export qregularexpression
export qtextoption
export qtextcursor
export qabstracttextdocumentlayout
export qabstractscrollarea
export qnamespace
export qtextobject
export qlist
export qtextedit
export qmimedata
export qpainter
export qvariant
export qpoint
export qwidget
export qrect
export qpaintdevice
export qcoreevent
export qtextdocument
export qframe
