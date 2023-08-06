const headerFile* = "QtGui/qtexttable.h"

import nimqt/qtgui/qtextobject
type
    # Classes found in the C++ code
    QTextTableCell* {.header:headerFile,importcpp:"QTextTableCell" ,pure,inheritable.} = object
    QTextTable* {.header:headerFile,importcpp:"QTextTable" ,pure.} = object of QTextFrame

# Stuff for class QTextTableCell

# Public constructors for QTextTableCell
proc newQTextTableCell*(): QTextTableCell {. header:headerFile, importcpp:"QTextTableCell(@)", constructor .} #
proc newQTextTableCell*(o: QTextTableCell): QTextTableCell {. header:headerFile, importcpp:"QTextTableCell(@)", constructor .} #

# Public methods for QTextTableCell
import nimqt/qtgui/qtextformat
proc setFormat*(this: QTextTableCell, format: QTextCharFormat) {.header:headerFile, importcpp:"#.setFormat(@)".} # Public
proc format*(this: QTextTableCell): QTextCharFormat {.header:headerFile, importcpp:"#.format(@)".} # Public
proc row*(this: QTextTableCell): cint {.header:headerFile, importcpp:"#.row(@)".} # Public
proc column*(this: QTextTableCell): cint {.header:headerFile, importcpp:"#.column(@)".} # Public
proc rowSpan*(this: QTextTableCell): cint {.header:headerFile, importcpp:"#.rowSpan(@)".} # Public
proc columnSpan*(this: QTextTableCell): cint {.header:headerFile, importcpp:"#.columnSpan(@)".} # Public
proc isValid*(this: QTextTableCell): bool {.header:headerFile, importcpp:"#.isValid(@)".} # Public
import nimqt/qtgui/qtextcursor
proc firstCursorPosition*(this: QTextTableCell): QTextCursor {.header:headerFile, importcpp:"#.firstCursorPosition(@)".} # Public
proc lastCursorPosition*(this: QTextTableCell): QTextCursor {.header:headerFile, importcpp:"#.lastCursorPosition(@)".} # Public
proc firstPosition*(this: QTextTableCell): cint {.header:headerFile, importcpp:"#.firstPosition(@)".} # Public
proc lastPosition*(this: QTextTableCell): cint {.header:headerFile, importcpp:"#.lastPosition(@)".} # Public
proc `!=`*(this: QTextTableCell, other: QTextTableCell): bool {.header:headerFile, importcpp:"#.operator!=(@)".} # Public
proc tableCellFormatIndex*(this: QTextTableCell): cint {.header:headerFile, importcpp:"#.tableCellFormatIndex(@)".} # Public
# Stuff for class QTextTable

# Public constructors for QTextTable
import nimqt/qtgui/qtextdocument
proc newQTextTable*(doc: ptr QTextDocument): ptr QTextTable {. header:headerFile, importcpp:"new QTextTable(@)" .} #

# Public methods for QTextTable
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QTextTable_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QTextTable::tr(@)".} # Public static
proc static_QTextTable_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QTextTable::tr(@)".} # Public static
proc resize*(this: ptr QTextTable, rows: cint, cols: cint) {.header:headerFile, importcpp:"#.resize(@)".} # Public
proc insertRows*(this: ptr QTextTable, pos: cint, num: cint) {.header:headerFile, importcpp:"#.insertRows(@)".} # Public
proc insertColumns*(this: ptr QTextTable, pos: cint, num: cint) {.header:headerFile, importcpp:"#.insertColumns(@)".} # Public
proc appendRows*(this: ptr QTextTable, count: cint) {.header:headerFile, importcpp:"#.appendRows(@)".} # Public
proc appendColumns*(this: ptr QTextTable, count: cint) {.header:headerFile, importcpp:"#.appendColumns(@)".} # Public
proc removeRows*(this: ptr QTextTable, pos: cint, num: cint) {.header:headerFile, importcpp:"#.removeRows(@)".} # Public
proc removeColumns*(this: ptr QTextTable, pos: cint, num: cint) {.header:headerFile, importcpp:"#.removeColumns(@)".} # Public
proc mergeCells*(this: ptr QTextTable, row: cint, col: cint, numRows: cint, numCols: cint) {.header:headerFile, importcpp:"#.mergeCells(@)".} # Public
proc mergeCells*(this: ptr QTextTable, cursor: QTextCursor) {.header:headerFile, importcpp:"#.mergeCells(@)".} # Public
proc splitCell*(this: ptr QTextTable, row: cint, col: cint, numRows: cint, numCols: cint) {.header:headerFile, importcpp:"#.splitCell(@)".} # Public
proc rows*(this: ptr QTextTable): cint {.header:headerFile, importcpp:"#.rows(@)".} # Public
proc columns*(this: ptr QTextTable): cint {.header:headerFile, importcpp:"#.columns(@)".} # Public
proc cellAt*(this: ptr QTextTable, row: cint, col: cint): QTextTableCell {.header:headerFile, importcpp:"#.cellAt(@)".} # Public
proc cellAt*(this: ptr QTextTable, position: cint): QTextTableCell {.header:headerFile, importcpp:"#.cellAt(@)".} # Public
proc cellAt*(this: ptr QTextTable, c: QTextCursor): QTextTableCell {.header:headerFile, importcpp:"#.cellAt(@)".} # Public
proc rowStart*(this: ptr QTextTable, c: QTextCursor): QTextCursor {.header:headerFile, importcpp:"#.rowStart(@)".} # Public
proc rowEnd*(this: ptr QTextTable, c: QTextCursor): QTextCursor {.header:headerFile, importcpp:"#.rowEnd(@)".} # Public
proc setFormat*(this: ptr QTextTable, format: QTextTableFormat) {.header:headerFile, importcpp:"#.setFormat(@)".} # Public
proc format*(this: ptr QTextTable): QTextTableFormat {.header:headerFile, importcpp:"#.format(@)".} # Public

export qtextformat
export qstring
export qtextcursor
export qtextobject
export qtextdocument
