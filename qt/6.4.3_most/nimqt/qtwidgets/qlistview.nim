const headerFile* = "QtWidgets/qlistview.h"

type
    # Enums found in the C++ code
    # Global
    QListView_Movement* {.header:headerFile,importcpp:"QListView::Movement".} = enum Static = 0, Free = 0x1, Snap = 0x2
    QListView_Flow* {.header:headerFile,importcpp:"QListView::Flow".} = enum LeftToRight = 0, TopToBottom = 0x1
    QListView_ResizeMode* {.header:headerFile,importcpp:"QListView::ResizeMode".} = enum Fixed = 0, Adjust = 0x1
    QListView_LayoutMode* {.header:headerFile,importcpp:"QListView::LayoutMode".} = enum SinglePass = 0, Batched = 0x1
    QListView_ViewMode* {.header:headerFile,importcpp:"QListView::ViewMode".} = enum ListMode = 0, IconMode = 0x1

import nimqt/qtwidgets/qabstractitemview
type
    # Classes found in the C++ code
    QListView* {.header:headerFile,importcpp:"QListView" ,pure.} = object of QAbstractItemView
import nimqt/qtwidgets/qabstractscrollarea
import nimqt/qtwidgets/qframe
import nimqt/qtwidgets/qwidget
import nimqt/qtgui/qpaintdevice


type
    # typedefs found in the C++ code
    QListView_SelectionMode * = QAbstractItemView_SelectionMode
    QListView_SelectionBehavior * = QAbstractItemView_SelectionBehavior
    QListView_ScrollHint * = QAbstractItemView_ScrollHint
    QListView_EditTrigger * = QAbstractItemView_EditTrigger
    QListView_ScrollMode * = QAbstractItemView_ScrollMode
    QListView_DragDropMode * = QAbstractItemView_DragDropMode
    QListView_CursorAction * = QAbstractItemView_CursorAction
    QListView_State * = QAbstractItemView_State
    QListView_DropIndicatorPosition * = QAbstractItemView_DropIndicatorPosition
    QListView_EditTriggers * = QAbstractItemView_EditTriggers
    QListView_SizeAdjustPolicy * = QAbstractScrollArea_SizeAdjustPolicy
    QListView_Shape * = QFrame_Shape
    QListView_Shadow * = QFrame_Shadow
    QListView_StyleMask * = QFrame_StyleMask
    QListView_RenderFlag * = QWidget_RenderFlag
    QListView_RenderFlags * = QWidget_RenderFlags
    QListView_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric

# Stuff for class QListView

# Public constructors for QListView
# 1 default parameters!
proc newQListView*(parent: ptr QWidget): ptr QListView {. header:headerFile, importcpp:"new QListView(@)" .} #
proc newQListView*(): ptr QListView {. header:headerFile, importcpp:"new QListView(@)" .} #

# Public methods for QListView
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QListView_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QListView::tr(@)".} # Public static
proc static_QListView_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QListView::tr(@)".} # Public static
proc setMovement*(this: ptr QListView, movement: QListView_Movement) {.header:headerFile, importcpp:"#.setMovement(@)".} # Public
proc movement*(this: ptr QListView): QListView_Movement {.header:headerFile, importcpp:"#.movement(@)".} # Public
proc setFlow*(this: ptr QListView, flow: QListView_Flow) {.header:headerFile, importcpp:"#.setFlow(@)".} # Public
proc flow*(this: ptr QListView): QListView_Flow {.header:headerFile, importcpp:"#.flow(@)".} # Public
proc setWrapping*(this: ptr QListView, enable: bool) {.header:headerFile, importcpp:"#.setWrapping(@)".} # Public
proc isWrapping*(this: ptr QListView): bool {.header:headerFile, importcpp:"#.isWrapping(@)".} # Public
proc setResizeMode*(this: ptr QListView, mode: QListView_ResizeMode) {.header:headerFile, importcpp:"#.setResizeMode(@)".} # Public
proc resizeMode*(this: ptr QListView): QListView_ResizeMode {.header:headerFile, importcpp:"#.resizeMode(@)".} # Public
proc setLayoutMode*(this: ptr QListView, mode: QListView_LayoutMode) {.header:headerFile, importcpp:"#.setLayoutMode(@)".} # Public
proc layoutMode*(this: ptr QListView): QListView_LayoutMode {.header:headerFile, importcpp:"#.layoutMode(@)".} # Public
proc setSpacing*(this: ptr QListView, space: cint) {.header:headerFile, importcpp:"#.setSpacing(@)".} # Public
proc spacing*(this: ptr QListView): cint {.header:headerFile, importcpp:"#.spacing(@)".} # Public
proc setBatchSize*(this: ptr QListView, batchSize: cint) {.header:headerFile, importcpp:"#.setBatchSize(@)".} # Public
proc batchSize*(this: ptr QListView): cint {.header:headerFile, importcpp:"#.batchSize(@)".} # Public
import nimqt/qtcore/qsize
proc setGridSize*(this: ptr QListView, size: QSize) {.header:headerFile, importcpp:"#.setGridSize(@)".} # Public
proc gridSize*(this: ptr QListView): QSize {.header:headerFile, importcpp:"#.gridSize(@)".} # Public
proc setViewMode*(this: ptr QListView, mode: QListView_ViewMode) {.header:headerFile, importcpp:"#.setViewMode(@)".} # Public
proc viewMode*(this: ptr QListView): QListView_ViewMode {.header:headerFile, importcpp:"#.viewMode(@)".} # Public
proc clearPropertyFlags*(this: ptr QListView) {.header:headerFile, importcpp:"#.clearPropertyFlags(@)".} # Public
proc isRowHidden*(this: ptr QListView, row: cint): bool {.header:headerFile, importcpp:"#.isRowHidden(@)".} # Public
proc setRowHidden*(this: ptr QListView, row: cint, hide: bool) {.header:headerFile, importcpp:"#.setRowHidden(@)".} # Public
proc setModelColumn*(this: ptr QListView, column: cint) {.header:headerFile, importcpp:"#.setModelColumn(@)".} # Public
proc modelColumn*(this: ptr QListView): cint {.header:headerFile, importcpp:"#.modelColumn(@)".} # Public
proc setUniformItemSizes*(this: ptr QListView, enable: bool) {.header:headerFile, importcpp:"#.setUniformItemSizes(@)".} # Public
proc uniformItemSizes*(this: ptr QListView): bool {.header:headerFile, importcpp:"#.uniformItemSizes(@)".} # Public
proc setWordWrap*(this: ptr QListView, on: bool) {.header:headerFile, importcpp:"#.setWordWrap(@)".} # Public
proc wordWrap*(this: ptr QListView): bool {.header:headerFile, importcpp:"#.wordWrap(@)".} # Public
proc setSelectionRectVisible*(this: ptr QListView, show: bool) {.header:headerFile, importcpp:"#.setSelectionRectVisible(@)".} # Public
proc isSelectionRectVisible*(this: ptr QListView): bool {.header:headerFile, importcpp:"#.isSelectionRectVisible(@)".} # Public
import nimqt/qtcore/qnamespace
proc setItemAlignment*(this: ptr QListView, alignment: Qt_Alignment) {.header:headerFile, importcpp:"#.setItemAlignment(@)".} # Public
proc itemAlignment*(this: ptr QListView): Qt_Alignment {.header:headerFile, importcpp:"#.itemAlignment(@)".} # Public
import nimqt/qtcore/qabstractitemmodel
import nimqt/qtcore/qrect
proc visualRect*(this: ptr QListView, index: QModelIndex): QRect {.header:headerFile, importcpp:"#.visualRect(@)".} # Public
proc scrollTo*(this: ptr QListView, index: QModelIndex, hint: QAbstractItemView_ScrollHint) {.header:headerFile, importcpp:"#.scrollTo(@)".} # Public
import nimqt/qtcore/qpoint
proc indexAt*(this: ptr QListView, p: QPoint): QModelIndex {.header:headerFile, importcpp:"#.indexAt(@)".} # Public
proc doItemsLayout*(this: ptr QListView) {.header:headerFile, importcpp:"#.doItemsLayout(@)".} # Public
proc reset*(this: ptr QListView) {.header:headerFile, importcpp:"#.reset(@)".} # Public
proc setRootIndex*(this: ptr QListView, index: QModelIndex) {.header:headerFile, importcpp:"#.setRootIndex(@)".} # Public
proc indexesMoved*(this: ptr QListView, indexes: QModelIndexList) {.header:headerFile, importcpp:"#.indexesMoved(@)".} # Public

# Protected methods methods for QListView
import nimqt/qtcore/qcoreevent
proc event*(this: ptr QListView, e: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Protected
proc scrollContentsBy*(this: ptr QListView, dx: cint, dy: cint) {.header:headerFile, importcpp:"#.scrollContentsBy(@)".} # Protected
proc resizeContents*(this: ptr QListView, width: cint, height: cint) {.header:headerFile, importcpp:"#.resizeContents(@)".} # Protected
proc contentsSize*(this: ptr QListView): QSize {.header:headerFile, importcpp:"#.contentsSize(@)".} # Protected
import nimqt/qtcore/qlist
# 1 default parameters!
proc dataChanged*(this: ptr QListView, topLeft: QModelIndex, bottomRight: QModelIndex, roles: QList[cint]) {.header:headerFile, importcpp:"#.dataChanged(@)".} # Protected
proc dataChanged*(this: ptr QListView, topLeft: QModelIndex, bottomRight: QModelIndex) {.header:headerFile, importcpp:"#.dataChanged(@)".} # Protected
proc rowsInserted*(this: ptr QListView, parent: QModelIndex, start: cint, `end`: cint) {.header:headerFile, importcpp:"#.rowsInserted(@)".} # Protected
proc rowsAboutToBeRemoved*(this: ptr QListView, parent: QModelIndex, start: cint, `end`: cint) {.header:headerFile, importcpp:"#.rowsAboutToBeRemoved(@)".} # Protected
import nimqt/qtgui/qevent
proc mouseMoveEvent*(this: ptr QListView, e: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mouseMoveEvent(@)".} # Protected
proc mouseReleaseEvent*(this: ptr QListView, e: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mouseReleaseEvent(@)".} # Protected
proc wheelEvent*(this: ptr QListView, e: ptr QWheelEvent) {.header:headerFile, importcpp:"#.wheelEvent(@)".} # Protected
proc timerEvent*(this: ptr QListView, e: ptr QTimerEvent) {.header:headerFile, importcpp:"#.timerEvent(@)".} # Protected
proc resizeEvent*(this: ptr QListView, e: ptr QResizeEvent) {.header:headerFile, importcpp:"#.resizeEvent(@)".} # Protected
proc dragMoveEvent*(this: ptr QListView, e: ptr QDragMoveEvent) {.header:headerFile, importcpp:"#.dragMoveEvent(@)".} # Protected
proc dragLeaveEvent*(this: ptr QListView, e: ptr QDragLeaveEvent) {.header:headerFile, importcpp:"#.dragLeaveEvent(@)".} # Protected
proc dropEvent*(this: ptr QListView, e: ptr QDropEvent) {.header:headerFile, importcpp:"#.dropEvent(@)".} # Protected
proc startDrag*(this: ptr QListView, supportedActions: Qt_DropActions) {.header:headerFile, importcpp:"#.startDrag(@)".} # Protected
proc paintEvent*(this: ptr QListView, e: ptr QPaintEvent) {.header:headerFile, importcpp:"#.paintEvent(@)".} # Protected
proc horizontalOffset*(this: ptr QListView): cint {.header:headerFile, importcpp:"#.horizontalOffset(@)".} # Protected
proc verticalOffset*(this: ptr QListView): cint {.header:headerFile, importcpp:"#.verticalOffset(@)".} # Protected
proc moveCursor*(this: ptr QListView, cursorAction: QAbstractItemView_CursorAction, modifiers: Qt_KeyboardModifiers): QModelIndex {.header:headerFile, importcpp:"#.moveCursor(@)".} # Protected
proc rectForIndex*(this: ptr QListView, index: QModelIndex): QRect {.header:headerFile, importcpp:"#.rectForIndex(@)".} # Protected
proc setPositionForIndex*(this: ptr QListView, position: QPoint, index: QModelIndex) {.header:headerFile, importcpp:"#.setPositionForIndex(@)".} # Protected
import nimqt/qtcore/qitemselectionmodel
proc setSelection*(this: ptr QListView, rect: QRect, command: QItemSelectionModel_SelectionFlags) {.header:headerFile, importcpp:"#.setSelection(@)".} # Protected
import nimqt/qtgui/qregion
proc visualRegionForSelection*(this: ptr QListView, selection: QItemSelection): QRegion {.header:headerFile, importcpp:"#.visualRegionForSelection(@)".} # Protected
proc selectedIndexes*(this: ptr QListView): QModelIndexList {.header:headerFile, importcpp:"#.selectedIndexes(@)".} # Protected
proc updateGeometries*(this: ptr QListView) {.header:headerFile, importcpp:"#.updateGeometries(@)".} # Protected
proc isIndexHidden*(this: ptr QListView, index: QModelIndex): bool {.header:headerFile, importcpp:"#.isIndexHidden(@)".} # Protected
proc selectionChanged*(this: ptr QListView, selected: QItemSelection, deselected: QItemSelection) {.header:headerFile, importcpp:"#.selectionChanged(@)".} # Protected
proc currentChanged*(this: ptr QListView, current: QModelIndex, previous: QModelIndex) {.header:headerFile, importcpp:"#.currentChanged(@)".} # Protected
proc viewportSizeHint*(this: ptr QListView): QSize {.header:headerFile, importcpp:"#.viewportSizeHint(@)".} # Protected

export qevent
export qstring
export qsize
export qabstractitemview
export qitemselectionmodel
export qabstractscrollarea
export qnamespace
export qlist
export qabstractitemmodel
export qpoint
export qwidget
export qregion
export qrect
export qpaintdevice
export qcoreevent
export qframe
