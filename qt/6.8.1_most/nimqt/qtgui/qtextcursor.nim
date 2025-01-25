const headerFile* = "QtGui/qtextcursor.h"

type
    # Enums found in the C++ code
    # Global
    QTextCursor_MoveMode* {.header:headerFile,importcpp:"QTextCursor::MoveMode".} = enum MoveAnchor = 0, KeepAnchor = 0x1
    QTextCursor_MoveOperation* {.header:headerFile,importcpp:"QTextCursor::MoveOperation".} = enum NoMove = 0, Start = 0x1, Up = 0x2, StartOfLine = 0x3, 
        StartOfBlock = 0x4, StartOfWord = 0x5, PreviousBlock = 0x6, PreviousCharacter = 0x7, PreviousWord = 0x8, 
        Left = 0x9, WordLeft = 0xa, End = 0xb, Down = 0xc, EndOfLine = 0xd, 
        EndOfWord = 0xe, EndOfBlock = 0xf, NextBlock = 0x10, NextCharacter = 0x11, NextWord = 0x12, 
        Right = 0x13, WordRight = 0x14, NextCell = 0x15, PreviousCell = 0x16, NextRow = 0x17, 
        PreviousRow = 0x18
    QTextCursor_SelectionType* {.header:headerFile,importcpp:"QTextCursor::SelectionType".} = enum WordUnderCursor = 0, LineUnderCursor = 0x1, BlockUnderCursor = 0x2, Document = 0x3

type
    # Classes found in the C++ code
    QTextCursor* {.header:headerFile,importcpp:"QTextCursor" ,pure,inheritable.} = object

# Stuff for class QTextCursor

# Public constructors for QTextCursor
proc newQTextCursor*(): QTextCursor {. header:headerFile, importcpp:"QTextCursor(@)", constructor .} #
import nimqt/qtgui/qtextdocument
proc newQTextCursor*(document: ptr QTextDocument): QTextCursor {. header:headerFile, importcpp:"QTextCursor(@)", constructor .} #
import nimqt/qtgui/qtextobject
proc newQTextCursor*(frame: ptr QTextFrame): QTextCursor {. header:headerFile, importcpp:"QTextCursor(@)", constructor .} #
proc newQTextCursor*(`block`: QTextBlock): QTextCursor {. header:headerFile, importcpp:"QTextCursor(@)", constructor .} #
proc newQTextCursor*(cursor: QTextCursor): QTextCursor {. header:headerFile, importcpp:"QTextCursor(@)", constructor .} #

# Public methods for QTextCursor
proc swap*(this: QTextCursor, other: QTextCursor) {.header:headerFile, importcpp:"#.swap(@)".} # Public
proc isNull*(this: QTextCursor): bool {.header:headerFile, importcpp:"#.isNull(@)".} # Public
proc setPosition*(this: QTextCursor, pos: cint, mode: QTextCursor_MoveMode) {.header:headerFile, importcpp:"#.setPosition(@)".} # Public
proc position*(this: QTextCursor): cint {.header:headerFile, importcpp:"#.position(@)".} # Public
proc positionInBlock*(this: QTextCursor): cint {.header:headerFile, importcpp:"#.positionInBlock(@)".} # Public
proc anchor*(this: QTextCursor): cint {.header:headerFile, importcpp:"#.anchor(@)".} # Public
import nimqt/qtcore/qstring
proc insertText*(this: QTextCursor, text: QString) {.header:headerFile, importcpp:"#.insertText(@)".} # Public
import nimqt/qtgui/qtextformat
proc insertText*(this: QTextCursor, text: QString, format: QTextCharFormat) {.header:headerFile, importcpp:"#.insertText(@)".} # Public
# 1 default parameters!
proc movePosition*(this: QTextCursor, op: QTextCursor_MoveOperation, arg_1: QTextCursor_MoveMode, n: cint): bool {.header:headerFile, importcpp:"#.movePosition(@)".} # Public
proc movePosition*(this: QTextCursor, op: QTextCursor_MoveOperation, arg_1: QTextCursor_MoveMode): bool {.header:headerFile, importcpp:"#.movePosition(@)".} # Public
proc visualNavigation*(this: QTextCursor): bool {.header:headerFile, importcpp:"#.visualNavigation(@)".} # Public
proc setVisualNavigation*(this: QTextCursor, b: bool) {.header:headerFile, importcpp:"#.setVisualNavigation(@)".} # Public
proc setVerticalMovementX*(this: QTextCursor, x: cint) {.header:headerFile, importcpp:"#.setVerticalMovementX(@)".} # Public
proc verticalMovementX*(this: QTextCursor): cint {.header:headerFile, importcpp:"#.verticalMovementX(@)".} # Public
proc setKeepPositionOnInsert*(this: QTextCursor, b: bool) {.header:headerFile, importcpp:"#.setKeepPositionOnInsert(@)".} # Public
proc keepPositionOnInsert*(this: QTextCursor): bool {.header:headerFile, importcpp:"#.keepPositionOnInsert(@)".} # Public
proc deleteChar*(this: QTextCursor) {.header:headerFile, importcpp:"#.deleteChar(@)".} # Public
proc deletePreviousChar*(this: QTextCursor) {.header:headerFile, importcpp:"#.deletePreviousChar(@)".} # Public
proc select*(this: QTextCursor, selection: QTextCursor_SelectionType) {.header:headerFile, importcpp:"#.select(@)".} # Public
proc hasSelection*(this: QTextCursor): bool {.header:headerFile, importcpp:"#.hasSelection(@)".} # Public
proc hasComplexSelection*(this: QTextCursor): bool {.header:headerFile, importcpp:"#.hasComplexSelection(@)".} # Public
proc removeSelectedText*(this: QTextCursor) {.header:headerFile, importcpp:"#.removeSelectedText(@)".} # Public
proc clearSelection*(this: QTextCursor) {.header:headerFile, importcpp:"#.clearSelection(@)".} # Public
proc selectionStart*(this: QTextCursor): cint {.header:headerFile, importcpp:"#.selectionStart(@)".} # Public
proc selectionEnd*(this: QTextCursor): cint {.header:headerFile, importcpp:"#.selectionEnd(@)".} # Public
proc selectedText*(this: QTextCursor): QString {.header:headerFile, importcpp:"#.selectedText(@)".} # Public
import nimqt/qtgui/qtextdocumentfragment
proc selection*(this: QTextCursor): QTextDocumentFragment {.header:headerFile, importcpp:"#.selection(@)".} # Public
proc selectedTableCells*(this: QTextCursor, firstRow: ptr cint, numRows: ptr cint, firstColumn: ptr cint, numColumns: ptr cint) {.header:headerFile, importcpp:"#.selectedTableCells(@)".} # Public
proc `block`*(this: QTextCursor): QTextBlock {.header:headerFile, importcpp:"#.block(@)".} # Public
proc charFormat*(this: QTextCursor): QTextCharFormat {.header:headerFile, importcpp:"#.charFormat(@)".} # Public
proc setCharFormat*(this: QTextCursor, format: QTextCharFormat) {.header:headerFile, importcpp:"#.setCharFormat(@)".} # Public
proc mergeCharFormat*(this: QTextCursor, modifier: QTextCharFormat) {.header:headerFile, importcpp:"#.mergeCharFormat(@)".} # Public
proc blockFormat*(this: QTextCursor): QTextBlockFormat {.header:headerFile, importcpp:"#.blockFormat(@)".} # Public
proc setBlockFormat*(this: QTextCursor, format: QTextBlockFormat) {.header:headerFile, importcpp:"#.setBlockFormat(@)".} # Public
proc mergeBlockFormat*(this: QTextCursor, modifier: QTextBlockFormat) {.header:headerFile, importcpp:"#.mergeBlockFormat(@)".} # Public
proc blockCharFormat*(this: QTextCursor): QTextCharFormat {.header:headerFile, importcpp:"#.blockCharFormat(@)".} # Public
proc setBlockCharFormat*(this: QTextCursor, format: QTextCharFormat) {.header:headerFile, importcpp:"#.setBlockCharFormat(@)".} # Public
proc mergeBlockCharFormat*(this: QTextCursor, modifier: QTextCharFormat) {.header:headerFile, importcpp:"#.mergeBlockCharFormat(@)".} # Public
proc atBlockStart*(this: QTextCursor): bool {.header:headerFile, importcpp:"#.atBlockStart(@)".} # Public
proc atBlockEnd*(this: QTextCursor): bool {.header:headerFile, importcpp:"#.atBlockEnd(@)".} # Public
proc atStart*(this: QTextCursor): bool {.header:headerFile, importcpp:"#.atStart(@)".} # Public
proc atEnd*(this: QTextCursor): bool {.header:headerFile, importcpp:"#.atEnd(@)".} # Public
proc insertBlock*(this: QTextCursor) {.header:headerFile, importcpp:"#.insertBlock(@)".} # Public
proc insertBlock*(this: QTextCursor, format: QTextBlockFormat) {.header:headerFile, importcpp:"#.insertBlock(@)".} # Public
proc insertBlock*(this: QTextCursor, format: QTextBlockFormat, charFormat: QTextCharFormat) {.header:headerFile, importcpp:"#.insertBlock(@)".} # Public
proc insertFrame*(this: QTextCursor, format: QTextFrameFormat): ptr QTextFrame {.header:headerFile, importcpp:"#.insertFrame(@)".} # Public
proc currentFrame*(this: QTextCursor): ptr QTextFrame {.header:headerFile, importcpp:"#.currentFrame(@)".} # Public
proc insertFragment*(this: QTextCursor, fragment: QTextDocumentFragment) {.header:headerFile, importcpp:"#.insertFragment(@)".} # Public
proc insertHtml*(this: QTextCursor, html: QString) {.header:headerFile, importcpp:"#.insertHtml(@)".} # Public
# 1 default parameters!
proc insertMarkdown*(this: QTextCursor, markdown: QString, features: QTextDocument_MarkdownFeatures) {.header:headerFile, importcpp:"#.insertMarkdown(@)".} # Public
proc insertMarkdown*(this: QTextCursor, markdown: QString) {.header:headerFile, importcpp:"#.insertMarkdown(@)".} # Public
proc insertImage*(this: QTextCursor, format: QTextImageFormat, alignment: QTextFrameFormat_Position) {.header:headerFile, importcpp:"#.insertImage(@)".} # Public
proc insertImage*(this: QTextCursor, format: QTextImageFormat) {.header:headerFile, importcpp:"#.insertImage(@)".} # Public
proc insertImage*(this: QTextCursor, name: QString) {.header:headerFile, importcpp:"#.insertImage(@)".} # Public
import nimqt/qtgui/qimage
# 1 default parameters!
proc insertImage*(this: QTextCursor, image: QImage, name: QString) {.header:headerFile, importcpp:"#.insertImage(@)".} # Public
proc insertImage*(this: QTextCursor, image: QImage) {.header:headerFile, importcpp:"#.insertImage(@)".} # Public
proc beginEditBlock*(this: QTextCursor) {.header:headerFile, importcpp:"#.beginEditBlock(@)".} # Public
proc joinPreviousEditBlock*(this: QTextCursor) {.header:headerFile, importcpp:"#.joinPreviousEditBlock(@)".} # Public
proc endEditBlock*(this: QTextCursor) {.header:headerFile, importcpp:"#.endEditBlock(@)".} # Public
proc `!=`*(this: QTextCursor, rhs: QTextCursor): bool {.header:headerFile, importcpp:"#.operator!=(@)".} # Public
proc `<`*(this: QTextCursor, rhs: QTextCursor): bool {.header:headerFile, importcpp:"#.operator<(@)".} # Public
proc `<=`*(this: QTextCursor, rhs: QTextCursor): bool {.header:headerFile, importcpp:"#.operator<=(@)".} # Public
proc `>=`*(this: QTextCursor, rhs: QTextCursor): bool {.header:headerFile, importcpp:"#.operator>=(@)".} # Public
proc `>`*(this: QTextCursor, rhs: QTextCursor): bool {.header:headerFile, importcpp:"#.operator>(@)".} # Public
proc isCopyOf*(this: QTextCursor, other: QTextCursor): bool {.header:headerFile, importcpp:"#.isCopyOf(@)".} # Public
proc blockNumber*(this: QTextCursor): cint {.header:headerFile, importcpp:"#.blockNumber(@)".} # Public
proc columnNumber*(this: QTextCursor): cint {.header:headerFile, importcpp:"#.columnNumber(@)".} # Public
proc document*(this: QTextCursor): ptr QTextDocument {.header:headerFile, importcpp:"#.document(@)".} # Public

export qtextformat
export qstring
export qimage
export qtextdocumentfragment
export qtextobject
export qtextdocument
