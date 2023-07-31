const headerFile* = "QtWidgets/qtableview.h"

import nimqt/qtwidgets/qabstractitemview
type
    # Classes found in the C++ code
    QTableView* {.header:headerFile,importcpp:"QTableView" ,pure.} = object of QAbstractItemView
import nimqt/qtwidgets/qabstractscrollarea
import nimqt/qtwidgets/qframe
import nimqt/qtwidgets/qwidget
import nimqt/qtgui/qpaintdevice


type
    # typedefs found in the C++ code
    QTableView_SelectionMode * = QAbstractItemView_SelectionMode
    QTableView_SelectionBehavior * = QAbstractItemView_SelectionBehavior
    QTableView_ScrollHint * = QAbstractItemView_ScrollHint
    QTableView_EditTrigger * = QAbstractItemView_EditTrigger
    QTableView_ScrollMode * = QAbstractItemView_ScrollMode
    QTableView_DragDropMode * = QAbstractItemView_DragDropMode
    QTableView_CursorAction * = QAbstractItemView_CursorAction
    QTableView_State * = QAbstractItemView_State
    QTableView_DropIndicatorPosition * = QAbstractItemView_DropIndicatorPosition
    QTableView_EditTriggers * = QAbstractItemView_EditTriggers
    QTableView_SizeAdjustPolicy * = QAbstractScrollArea_SizeAdjustPolicy
    QTableView_Shape * = QFrame_Shape
    QTableView_Shadow * = QFrame_Shadow
    QTableView_StyleMask * = QFrame_StyleMask
    QTableView_RenderFlag * = QWidget_RenderFlag
    QTableView_RenderFlags * = QWidget_RenderFlags
    QTableView_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric

# Stuff for class QTableView

# Public constructors for QTableView
# 1 default parameters!
proc newQTableView*(parent: ptr QWidget): ptr QTableView {. header:headerFile, importcpp:"new QTableView(@)" .} #
proc newQTableView*(): ptr QTableView {. header:headerFile, importcpp:"new QTableView(@)" .} #

# Public methods for QTableView
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QTableView_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QTableView::tr(@)".} # Public static
proc static_QTableView_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QTableView::tr(@)".} # Public static
import nimqt/qtcore/qabstractitemmodel
proc setModel*(this: ptr QTableView, model: ptr QAbstractItemModel) {.header:headerFile, importcpp:"#.setModel(@)".} # Public
proc setRootIndex*(this: ptr QTableView, index: QModelIndex) {.header:headerFile, importcpp:"#.setRootIndex(@)".} # Public
import nimqt/qtcore/qitemselectionmodel
proc setSelectionModel*(this: ptr QTableView, selectionModel: ptr QItemSelectionModel) {.header:headerFile, importcpp:"#.setSelectionModel(@)".} # Public
proc doItemsLayout*(this: ptr QTableView) {.header:headerFile, importcpp:"#.doItemsLayout(@)".} # Public
import nimqt/qtwidgets/qheaderview
proc horizontalHeader*(this: ptr QTableView): ptr QHeaderView {.header:headerFile, importcpp:"#.horizontalHeader(@)".} # Public
proc verticalHeader*(this: ptr QTableView): ptr QHeaderView {.header:headerFile, importcpp:"#.verticalHeader(@)".} # Public
proc setHorizontalHeader*(this: ptr QTableView, header: ptr QHeaderView) {.header:headerFile, importcpp:"#.setHorizontalHeader(@)".} # Public
proc setVerticalHeader*(this: ptr QTableView, header: ptr QHeaderView) {.header:headerFile, importcpp:"#.setVerticalHeader(@)".} # Public
proc rowViewportPosition*(this: ptr QTableView, row: cint): cint {.header:headerFile, importcpp:"#.rowViewportPosition(@)".} # Public
proc rowAt*(this: ptr QTableView, y: cint): cint {.header:headerFile, importcpp:"#.rowAt(@)".} # Public
proc setRowHeight*(this: ptr QTableView, row: cint, height: cint) {.header:headerFile, importcpp:"#.setRowHeight(@)".} # Public
proc rowHeight*(this: ptr QTableView, row: cint): cint {.header:headerFile, importcpp:"#.rowHeight(@)".} # Public
proc columnViewportPosition*(this: ptr QTableView, column: cint): cint {.header:headerFile, importcpp:"#.columnViewportPosition(@)".} # Public
proc columnAt*(this: ptr QTableView, x: cint): cint {.header:headerFile, importcpp:"#.columnAt(@)".} # Public
proc setColumnWidth*(this: ptr QTableView, column: cint, width: cint) {.header:headerFile, importcpp:"#.setColumnWidth(@)".} # Public
proc columnWidth*(this: ptr QTableView, column: cint): cint {.header:headerFile, importcpp:"#.columnWidth(@)".} # Public
proc isRowHidden*(this: ptr QTableView, row: cint): bool {.header:headerFile, importcpp:"#.isRowHidden(@)".} # Public
proc setRowHidden*(this: ptr QTableView, row: cint, hide: bool) {.header:headerFile, importcpp:"#.setRowHidden(@)".} # Public
proc isColumnHidden*(this: ptr QTableView, column: cint): bool {.header:headerFile, importcpp:"#.isColumnHidden(@)".} # Public
proc setColumnHidden*(this: ptr QTableView, column: cint, hide: bool) {.header:headerFile, importcpp:"#.setColumnHidden(@)".} # Public
proc setSortingEnabled*(this: ptr QTableView, enable: bool) {.header:headerFile, importcpp:"#.setSortingEnabled(@)".} # Public
proc isSortingEnabled*(this: ptr QTableView): bool {.header:headerFile, importcpp:"#.isSortingEnabled(@)".} # Public
proc showGrid*(this: ptr QTableView): bool {.header:headerFile, importcpp:"#.showGrid(@)".} # Public
import nimqt/qtcore/qnamespace
proc gridStyle*(this: ptr QTableView): Qt_PenStyle {.header:headerFile, importcpp:"#.gridStyle(@)".} # Public
proc setGridStyle*(this: ptr QTableView, style: Qt_PenStyle) {.header:headerFile, importcpp:"#.setGridStyle(@)".} # Public
proc setWordWrap*(this: ptr QTableView, on: bool) {.header:headerFile, importcpp:"#.setWordWrap(@)".} # Public
proc wordWrap*(this: ptr QTableView): bool {.header:headerFile, importcpp:"#.wordWrap(@)".} # Public
proc setCornerButtonEnabled*(this: ptr QTableView, enable: bool) {.header:headerFile, importcpp:"#.setCornerButtonEnabled(@)".} # Public
proc isCornerButtonEnabled*(this: ptr QTableView): bool {.header:headerFile, importcpp:"#.isCornerButtonEnabled(@)".} # Public
import nimqt/qtcore/qrect
proc visualRect*(this: ptr QTableView, index: QModelIndex): QRect {.header:headerFile, importcpp:"#.visualRect(@)".} # Public
proc scrollTo*(this: ptr QTableView, index: QModelIndex, hint: QAbstractItemView_ScrollHint) {.header:headerFile, importcpp:"#.scrollTo(@)".} # Public
import nimqt/qtcore/qpoint
proc indexAt*(this: ptr QTableView, p: QPoint): QModelIndex {.header:headerFile, importcpp:"#.indexAt(@)".} # Public
proc setSpan*(this: ptr QTableView, row: cint, column: cint, rowSpan: cint, columnSpan: cint) {.header:headerFile, importcpp:"#.setSpan(@)".} # Public
proc rowSpan*(this: ptr QTableView, row: cint, column: cint): cint {.header:headerFile, importcpp:"#.rowSpan(@)".} # Public
proc columnSpan*(this: ptr QTableView, row: cint, column: cint): cint {.header:headerFile, importcpp:"#.columnSpan(@)".} # Public
proc clearSpans*(this: ptr QTableView) {.header:headerFile, importcpp:"#.clearSpans(@)".} # Public
proc selectRow*(this: ptr QTableView, row: cint) {.header:headerFile, importcpp:"#.selectRow(@)".} # Public
proc selectColumn*(this: ptr QTableView, column: cint) {.header:headerFile, importcpp:"#.selectColumn(@)".} # Public
proc hideRow*(this: ptr QTableView, row: cint) {.header:headerFile, importcpp:"#.hideRow(@)".} # Public
proc hideColumn*(this: ptr QTableView, column: cint) {.header:headerFile, importcpp:"#.hideColumn(@)".} # Public
proc showRow*(this: ptr QTableView, row: cint) {.header:headerFile, importcpp:"#.showRow(@)".} # Public
proc showColumn*(this: ptr QTableView, column: cint) {.header:headerFile, importcpp:"#.showColumn(@)".} # Public
proc resizeRowToContents*(this: ptr QTableView, row: cint) {.header:headerFile, importcpp:"#.resizeRowToContents(@)".} # Public
proc resizeRowsToContents*(this: ptr QTableView) {.header:headerFile, importcpp:"#.resizeRowsToContents(@)".} # Public
proc resizeColumnToContents*(this: ptr QTableView, column: cint) {.header:headerFile, importcpp:"#.resizeColumnToContents(@)".} # Public
proc resizeColumnsToContents*(this: ptr QTableView) {.header:headerFile, importcpp:"#.resizeColumnsToContents(@)".} # Public
proc sortByColumn*(this: ptr QTableView, column: cint, order: Qt_SortOrder) {.header:headerFile, importcpp:"#.sortByColumn(@)".} # Public
proc setShowGrid*(this: ptr QTableView, show: bool) {.header:headerFile, importcpp:"#.setShowGrid(@)".} # Public

# Protected methods methods for QTableView
proc rowMoved*(this: ptr QTableView, row: cint, oldIndex: cint, newIndex: cint) {.header:headerFile, importcpp:"#.rowMoved(@)".} # Protected
proc columnMoved*(this: ptr QTableView, column: cint, oldIndex: cint, newIndex: cint) {.header:headerFile, importcpp:"#.columnMoved(@)".} # Protected
proc rowResized*(this: ptr QTableView, row: cint, oldHeight: cint, newHeight: cint) {.header:headerFile, importcpp:"#.rowResized(@)".} # Protected
proc columnResized*(this: ptr QTableView, column: cint, oldWidth: cint, newWidth: cint) {.header:headerFile, importcpp:"#.columnResized(@)".} # Protected
proc rowCountChanged*(this: ptr QTableView, oldCount: cint, newCount: cint) {.header:headerFile, importcpp:"#.rowCountChanged(@)".} # Protected
proc columnCountChanged*(this: ptr QTableView, oldCount: cint, newCount: cint) {.header:headerFile, importcpp:"#.columnCountChanged(@)".} # Protected
proc scrollContentsBy*(this: ptr QTableView, dx: cint, dy: cint) {.header:headerFile, importcpp:"#.scrollContentsBy(@)".} # Protected
import nimqt/qtgui/qevent
proc paintEvent*(this: ptr QTableView, e: ptr QPaintEvent) {.header:headerFile, importcpp:"#.paintEvent(@)".} # Protected
import nimqt/qtcore/qcoreevent
proc timerEvent*(this: ptr QTableView, event: ptr QTimerEvent) {.header:headerFile, importcpp:"#.timerEvent(@)".} # Protected
proc horizontalOffset*(this: ptr QTableView): cint {.header:headerFile, importcpp:"#.horizontalOffset(@)".} # Protected
proc verticalOffset*(this: ptr QTableView): cint {.header:headerFile, importcpp:"#.verticalOffset(@)".} # Protected
proc moveCursor*(this: ptr QTableView, cursorAction: QAbstractItemView_CursorAction, modifiers: Qt_KeyboardModifiers): QModelIndex {.header:headerFile, importcpp:"#.moveCursor(@)".} # Protected
proc setSelection*(this: ptr QTableView, rect: QRect, command: QItemSelectionModel_SelectionFlags) {.header:headerFile, importcpp:"#.setSelection(@)".} # Protected
import nimqt/qtgui/qregion
proc visualRegionForSelection*(this: ptr QTableView, selection: QItemSelection): QRegion {.header:headerFile, importcpp:"#.visualRegionForSelection(@)".} # Protected
proc selectedIndexes*(this: ptr QTableView): QModelIndexList {.header:headerFile, importcpp:"#.selectedIndexes(@)".} # Protected
proc updateGeometries*(this: ptr QTableView) {.header:headerFile, importcpp:"#.updateGeometries(@)".} # Protected
import nimqt/qtcore/qsize
proc viewportSizeHint*(this: ptr QTableView): QSize {.header:headerFile, importcpp:"#.viewportSizeHint(@)".} # Protected
proc sizeHintForRow*(this: ptr QTableView, row: cint): cint {.header:headerFile, importcpp:"#.sizeHintForRow(@)".} # Protected
proc sizeHintForColumn*(this: ptr QTableView, column: cint): cint {.header:headerFile, importcpp:"#.sizeHintForColumn(@)".} # Protected
proc verticalScrollbarAction*(this: ptr QTableView, action: cint) {.header:headerFile, importcpp:"#.verticalScrollbarAction(@)".} # Protected
proc horizontalScrollbarAction*(this: ptr QTableView, action: cint) {.header:headerFile, importcpp:"#.horizontalScrollbarAction(@)".} # Protected
proc isIndexHidden*(this: ptr QTableView, index: QModelIndex): bool {.header:headerFile, importcpp:"#.isIndexHidden(@)".} # Protected
proc selectionChanged*(this: ptr QTableView, selected: QItemSelection, deselected: QItemSelection) {.header:headerFile, importcpp:"#.selectionChanged(@)".} # Protected
proc currentChanged*(this: ptr QTableView, current: QModelIndex, previous: QModelIndex) {.header:headerFile, importcpp:"#.currentChanged(@)".} # Protected

export qevent
export qstring
export qheaderview
export qsize
export qabstractitemview
export qitemselectionmodel
export qabstractscrollarea
export qnamespace
export qabstractitemmodel
export qpoint
export qwidget
export qregion
export qrect
export qpaintdevice
export qcoreevent
export qframe
