const headerFile* = "QtWidgets/qtreeview.h"

import nimqt/qtwidgets/qabstractitemview
type
    # Classes found in the C++ code
    QTreeView* {.header:headerFile,importcpp:"QTreeView" ,pure.} = object of QAbstractItemView
import nimqt/qtwidgets/qabstractscrollarea
import nimqt/qtwidgets/qframe
import nimqt/qtwidgets/qwidget
import nimqt/qtgui/qpaintdevice


type
    # typedefs found in the C++ code
    QTreeView_SelectionMode * = QAbstractItemView_SelectionMode
    QTreeView_SelectionBehavior * = QAbstractItemView_SelectionBehavior
    QTreeView_ScrollHint * = QAbstractItemView_ScrollHint
    QTreeView_EditTrigger * = QAbstractItemView_EditTrigger
    QTreeView_ScrollMode * = QAbstractItemView_ScrollMode
    QTreeView_DragDropMode * = QAbstractItemView_DragDropMode
    QTreeView_CursorAction * = QAbstractItemView_CursorAction
    QTreeView_State * = QAbstractItemView_State
    QTreeView_DropIndicatorPosition * = QAbstractItemView_DropIndicatorPosition
    QTreeView_EditTriggers * = QAbstractItemView_EditTriggers
    QTreeView_SizeAdjustPolicy * = QAbstractScrollArea_SizeAdjustPolicy
    QTreeView_Shape * = QFrame_Shape
    QTreeView_Shadow * = QFrame_Shadow
    QTreeView_StyleMask * = QFrame_StyleMask
    QTreeView_RenderFlag * = QWidget_RenderFlag
    QTreeView_RenderFlags * = QWidget_RenderFlags
    QTreeView_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric

# Stuff for class QTreeView

# Public constructors for QTreeView
# 1 default parameters!
proc newQTreeView*(parent: ptr QWidget): ptr QTreeView {. header:headerFile, importcpp:"new QTreeView(@)" .} #
proc newQTreeView*(): ptr QTreeView {. header:headerFile, importcpp:"new QTreeView(@)" .} #

# Public methods for QTreeView
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QTreeView_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QTreeView::tr(@)".} # Public static
proc static_QTreeView_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QTreeView::tr(@)".} # Public static
import nimqt/qtcore/qabstractitemmodel
proc setModel*(this: ptr QTreeView, model: ptr QAbstractItemModel) {.header:headerFile, importcpp:"#.setModel(@)".} # Public
proc setRootIndex*(this: ptr QTreeView, index: QModelIndex) {.header:headerFile, importcpp:"#.setRootIndex(@)".} # Public
import nimqt/qtcore/qitemselectionmodel
proc setSelectionModel*(this: ptr QTreeView, selectionModel: ptr QItemSelectionModel) {.header:headerFile, importcpp:"#.setSelectionModel(@)".} # Public
import nimqt/qtwidgets/qheaderview
proc header*(this: ptr QTreeView): ptr QHeaderView {.header:headerFile, importcpp:"#.header(@)".} # Public
proc setHeader*(this: ptr QTreeView, header: ptr QHeaderView) {.header:headerFile, importcpp:"#.setHeader(@)".} # Public
proc autoExpandDelay*(this: ptr QTreeView): cint {.header:headerFile, importcpp:"#.autoExpandDelay(@)".} # Public
proc setAutoExpandDelay*(this: ptr QTreeView, delay: cint) {.header:headerFile, importcpp:"#.setAutoExpandDelay(@)".} # Public
proc indentation*(this: ptr QTreeView): cint {.header:headerFile, importcpp:"#.indentation(@)".} # Public
proc setIndentation*(this: ptr QTreeView, i: cint) {.header:headerFile, importcpp:"#.setIndentation(@)".} # Public
proc resetIndentation*(this: ptr QTreeView) {.header:headerFile, importcpp:"#.resetIndentation(@)".} # Public
proc rootIsDecorated*(this: ptr QTreeView): bool {.header:headerFile, importcpp:"#.rootIsDecorated(@)".} # Public
proc setRootIsDecorated*(this: ptr QTreeView, show: bool) {.header:headerFile, importcpp:"#.setRootIsDecorated(@)".} # Public
proc uniformRowHeights*(this: ptr QTreeView): bool {.header:headerFile, importcpp:"#.uniformRowHeights(@)".} # Public
proc setUniformRowHeights*(this: ptr QTreeView, uniform: bool) {.header:headerFile, importcpp:"#.setUniformRowHeights(@)".} # Public
proc itemsExpandable*(this: ptr QTreeView): bool {.header:headerFile, importcpp:"#.itemsExpandable(@)".} # Public
proc setItemsExpandable*(this: ptr QTreeView, enable: bool) {.header:headerFile, importcpp:"#.setItemsExpandable(@)".} # Public
proc expandsOnDoubleClick*(this: ptr QTreeView): bool {.header:headerFile, importcpp:"#.expandsOnDoubleClick(@)".} # Public
proc setExpandsOnDoubleClick*(this: ptr QTreeView, enable: bool) {.header:headerFile, importcpp:"#.setExpandsOnDoubleClick(@)".} # Public
proc columnViewportPosition*(this: ptr QTreeView, column: cint): cint {.header:headerFile, importcpp:"#.columnViewportPosition(@)".} # Public
proc columnWidth*(this: ptr QTreeView, column: cint): cint {.header:headerFile, importcpp:"#.columnWidth(@)".} # Public
proc setColumnWidth*(this: ptr QTreeView, column: cint, width: cint) {.header:headerFile, importcpp:"#.setColumnWidth(@)".} # Public
proc columnAt*(this: ptr QTreeView, x: cint): cint {.header:headerFile, importcpp:"#.columnAt(@)".} # Public
proc isColumnHidden*(this: ptr QTreeView, column: cint): bool {.header:headerFile, importcpp:"#.isColumnHidden(@)".} # Public
proc setColumnHidden*(this: ptr QTreeView, column: cint, hide: bool) {.header:headerFile, importcpp:"#.setColumnHidden(@)".} # Public
proc isHeaderHidden*(this: ptr QTreeView): bool {.header:headerFile, importcpp:"#.isHeaderHidden(@)".} # Public
proc setHeaderHidden*(this: ptr QTreeView, hide: bool) {.header:headerFile, importcpp:"#.setHeaderHidden(@)".} # Public
proc isRowHidden*(this: ptr QTreeView, row: cint, parent: QModelIndex): bool {.header:headerFile, importcpp:"#.isRowHidden(@)".} # Public
proc setRowHidden*(this: ptr QTreeView, row: cint, parent: QModelIndex, hide: bool) {.header:headerFile, importcpp:"#.setRowHidden(@)".} # Public
proc isFirstColumnSpanned*(this: ptr QTreeView, row: cint, parent: QModelIndex): bool {.header:headerFile, importcpp:"#.isFirstColumnSpanned(@)".} # Public
proc setFirstColumnSpanned*(this: ptr QTreeView, row: cint, parent: QModelIndex, span: bool) {.header:headerFile, importcpp:"#.setFirstColumnSpanned(@)".} # Public
proc isExpanded*(this: ptr QTreeView, index: QModelIndex): bool {.header:headerFile, importcpp:"#.isExpanded(@)".} # Public
proc setExpanded*(this: ptr QTreeView, index: QModelIndex, expand: bool) {.header:headerFile, importcpp:"#.setExpanded(@)".} # Public
proc setSortingEnabled*(this: ptr QTreeView, enable: bool) {.header:headerFile, importcpp:"#.setSortingEnabled(@)".} # Public
proc isSortingEnabled*(this: ptr QTreeView): bool {.header:headerFile, importcpp:"#.isSortingEnabled(@)".} # Public
proc setAnimated*(this: ptr QTreeView, enable: bool) {.header:headerFile, importcpp:"#.setAnimated(@)".} # Public
proc isAnimated*(this: ptr QTreeView): bool {.header:headerFile, importcpp:"#.isAnimated(@)".} # Public
proc setAllColumnsShowFocus*(this: ptr QTreeView, enable: bool) {.header:headerFile, importcpp:"#.setAllColumnsShowFocus(@)".} # Public
proc allColumnsShowFocus*(this: ptr QTreeView): bool {.header:headerFile, importcpp:"#.allColumnsShowFocus(@)".} # Public
proc setWordWrap*(this: ptr QTreeView, on: bool) {.header:headerFile, importcpp:"#.setWordWrap(@)".} # Public
proc wordWrap*(this: ptr QTreeView): bool {.header:headerFile, importcpp:"#.wordWrap(@)".} # Public
proc setTreePosition*(this: ptr QTreeView, logicalIndex: cint) {.header:headerFile, importcpp:"#.setTreePosition(@)".} # Public
proc treePosition*(this: ptr QTreeView): cint {.header:headerFile, importcpp:"#.treePosition(@)".} # Public
proc keyboardSearch*(this: ptr QTreeView, search: QString) {.header:headerFile, importcpp:"#.keyboardSearch(@)".} # Public
import nimqt/qtcore/qrect
proc visualRect*(this: ptr QTreeView, index: QModelIndex): QRect {.header:headerFile, importcpp:"#.visualRect(@)".} # Public
proc scrollTo*(this: ptr QTreeView, index: QModelIndex, hint: QAbstractItemView_ScrollHint) {.header:headerFile, importcpp:"#.scrollTo(@)".} # Public
import nimqt/qtcore/qpoint
proc indexAt*(this: ptr QTreeView, p: QPoint): QModelIndex {.header:headerFile, importcpp:"#.indexAt(@)".} # Public
proc indexAbove*(this: ptr QTreeView, index: QModelIndex): QModelIndex {.header:headerFile, importcpp:"#.indexAbove(@)".} # Public
proc indexBelow*(this: ptr QTreeView, index: QModelIndex): QModelIndex {.header:headerFile, importcpp:"#.indexBelow(@)".} # Public
proc doItemsLayout*(this: ptr QTreeView) {.header:headerFile, importcpp:"#.doItemsLayout(@)".} # Public
proc reset*(this: ptr QTreeView) {.header:headerFile, importcpp:"#.reset(@)".} # Public
import nimqt/qtcore/qlist
# 1 default parameters!
proc dataChanged*(this: ptr QTreeView, topLeft: QModelIndex, bottomRight: QModelIndex, roles: QList[cint]) {.header:headerFile, importcpp:"#.dataChanged(@)".} # Public
proc dataChanged*(this: ptr QTreeView, topLeft: QModelIndex, bottomRight: QModelIndex) {.header:headerFile, importcpp:"#.dataChanged(@)".} # Public
proc selectAll*(this: ptr QTreeView) {.header:headerFile, importcpp:"#.selectAll(@)".} # Public
proc expanded*(this: ptr QTreeView, index: QModelIndex) {.header:headerFile, importcpp:"#.expanded(@)".} # Public
proc collapsed*(this: ptr QTreeView, index: QModelIndex) {.header:headerFile, importcpp:"#.collapsed(@)".} # Public
proc hideColumn*(this: ptr QTreeView, column: cint) {.header:headerFile, importcpp:"#.hideColumn(@)".} # Public
proc showColumn*(this: ptr QTreeView, column: cint) {.header:headerFile, importcpp:"#.showColumn(@)".} # Public
proc expand*(this: ptr QTreeView, index: QModelIndex) {.header:headerFile, importcpp:"#.expand(@)".} # Public
proc collapse*(this: ptr QTreeView, index: QModelIndex) {.header:headerFile, importcpp:"#.collapse(@)".} # Public
proc resizeColumnToContents*(this: ptr QTreeView, column: cint) {.header:headerFile, importcpp:"#.resizeColumnToContents(@)".} # Public
import nimqt/qtcore/qnamespace
proc sortByColumn*(this: ptr QTreeView, column: cint, order: Qt_SortOrder) {.header:headerFile, importcpp:"#.sortByColumn(@)".} # Public
proc expandAll*(this: ptr QTreeView) {.header:headerFile, importcpp:"#.expandAll(@)".} # Public
proc expandRecursively*(this: ptr QTreeView, index: QModelIndex, depth: cint) {.header:headerFile, importcpp:"#.expandRecursively(@)".} # Public
proc collapseAll*(this: ptr QTreeView) {.header:headerFile, importcpp:"#.collapseAll(@)".} # Public
proc expandToDepth*(this: ptr QTreeView, depth: cint) {.header:headerFile, importcpp:"#.expandToDepth(@)".} # Public

# Protected methods methods for QTreeView
proc columnResized*(this: ptr QTreeView, column: cint, oldSize: cint, newSize: cint) {.header:headerFile, importcpp:"#.columnResized(@)".} # Protected
proc columnCountChanged*(this: ptr QTreeView, oldCount: cint, newCount: cint) {.header:headerFile, importcpp:"#.columnCountChanged(@)".} # Protected
proc columnMoved*(this: ptr QTreeView) {.header:headerFile, importcpp:"#.columnMoved(@)".} # Protected
proc reexpand*(this: ptr QTreeView) {.header:headerFile, importcpp:"#.reexpand(@)".} # Protected
proc rowsRemoved*(this: ptr QTreeView, parent: QModelIndex, first: cint, last: cint) {.header:headerFile, importcpp:"#.rowsRemoved(@)".} # Protected
proc verticalScrollbarValueChanged*(this: ptr QTreeView, value: cint) {.header:headerFile, importcpp:"#.verticalScrollbarValueChanged(@)".} # Protected
proc scrollContentsBy*(this: ptr QTreeView, dx: cint, dy: cint) {.header:headerFile, importcpp:"#.scrollContentsBy(@)".} # Protected
proc rowsInserted*(this: ptr QTreeView, parent: QModelIndex, start: cint, `end`: cint) {.header:headerFile, importcpp:"#.rowsInserted(@)".} # Protected
proc rowsAboutToBeRemoved*(this: ptr QTreeView, parent: QModelIndex, start: cint, `end`: cint) {.header:headerFile, importcpp:"#.rowsAboutToBeRemoved(@)".} # Protected
proc moveCursor*(this: ptr QTreeView, cursorAction: QAbstractItemView_CursorAction, modifiers: Qt_KeyboardModifiers): QModelIndex {.header:headerFile, importcpp:"#.moveCursor(@)".} # Protected
proc horizontalOffset*(this: ptr QTreeView): cint {.header:headerFile, importcpp:"#.horizontalOffset(@)".} # Protected
proc verticalOffset*(this: ptr QTreeView): cint {.header:headerFile, importcpp:"#.verticalOffset(@)".} # Protected
proc setSelection*(this: ptr QTreeView, rect: QRect, command: QItemSelectionModel_SelectionFlags) {.header:headerFile, importcpp:"#.setSelection(@)".} # Protected
import nimqt/qtgui/qregion
proc visualRegionForSelection*(this: ptr QTreeView, selection: QItemSelection): QRegion {.header:headerFile, importcpp:"#.visualRegionForSelection(@)".} # Protected
proc selectedIndexes*(this: ptr QTreeView): QModelIndexList {.header:headerFile, importcpp:"#.selectedIndexes(@)".} # Protected
import nimqt/qtcore/qcoreevent
proc changeEvent*(this: ptr QTreeView, event: ptr QEvent) {.header:headerFile, importcpp:"#.changeEvent(@)".} # Protected
proc timerEvent*(this: ptr QTreeView, event: ptr QTimerEvent) {.header:headerFile, importcpp:"#.timerEvent(@)".} # Protected
import nimqt/qtgui/qevent
proc paintEvent*(this: ptr QTreeView, event: ptr QPaintEvent) {.header:headerFile, importcpp:"#.paintEvent(@)".} # Protected
import nimqt/qtgui/qpainter
proc drawTree*(this: ptr QTreeView, painter: ptr QPainter, region: QRegion) {.header:headerFile, importcpp:"#.drawTree(@)".} # Protected
proc drawBranches*(this: ptr QTreeView, painter: ptr QPainter, rect: QRect, index: QModelIndex) {.header:headerFile, importcpp:"#.drawBranches(@)".} # Protected
proc mousePressEvent*(this: ptr QTreeView, event: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mousePressEvent(@)".} # Protected
proc mouseReleaseEvent*(this: ptr QTreeView, event: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mouseReleaseEvent(@)".} # Protected
proc mouseDoubleClickEvent*(this: ptr QTreeView, event: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mouseDoubleClickEvent(@)".} # Protected
proc mouseMoveEvent*(this: ptr QTreeView, event: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mouseMoveEvent(@)".} # Protected
proc keyPressEvent*(this: ptr QTreeView, event: ptr QKeyEvent) {.header:headerFile, importcpp:"#.keyPressEvent(@)".} # Protected
proc dragMoveEvent*(this: ptr QTreeView, event: ptr QDragMoveEvent) {.header:headerFile, importcpp:"#.dragMoveEvent(@)".} # Protected
proc viewportEvent*(this: ptr QTreeView, event: ptr QEvent): bool {.header:headerFile, importcpp:"#.viewportEvent(@)".} # Protected
proc updateGeometries*(this: ptr QTreeView) {.header:headerFile, importcpp:"#.updateGeometries(@)".} # Protected
import nimqt/qtcore/qsize
proc viewportSizeHint*(this: ptr QTreeView): QSize {.header:headerFile, importcpp:"#.viewportSizeHint(@)".} # Protected
proc sizeHintForColumn*(this: ptr QTreeView, column: cint): cint {.header:headerFile, importcpp:"#.sizeHintForColumn(@)".} # Protected
proc indexRowSizeHint*(this: ptr QTreeView, index: QModelIndex): cint {.header:headerFile, importcpp:"#.indexRowSizeHint(@)".} # Protected
proc rowHeight*(this: ptr QTreeView, index: QModelIndex): cint {.header:headerFile, importcpp:"#.rowHeight(@)".} # Protected
proc horizontalScrollbarAction*(this: ptr QTreeView, action: cint) {.header:headerFile, importcpp:"#.horizontalScrollbarAction(@)".} # Protected
proc isIndexHidden*(this: ptr QTreeView, index: QModelIndex): bool {.header:headerFile, importcpp:"#.isIndexHidden(@)".} # Protected
proc selectionChanged*(this: ptr QTreeView, selected: QItemSelection, deselected: QItemSelection) {.header:headerFile, importcpp:"#.selectionChanged(@)".} # Protected
proc currentChanged*(this: ptr QTreeView, current: QModelIndex, previous: QModelIndex) {.header:headerFile, importcpp:"#.currentChanged(@)".} # Protected

export qevent
export qstring
export qheaderview
export qsize
export qabstractitemview
export qitemselectionmodel
export qabstractscrollarea
export qnamespace
export qlist
export qabstractitemmodel
export qpainter
export qpoint
export qwidget
export qregion
export qrect
export qpaintdevice
export qcoreevent
export qframe
