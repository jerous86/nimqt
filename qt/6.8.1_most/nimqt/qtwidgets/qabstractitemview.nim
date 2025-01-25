const headerFile* = "QtWidgets/qabstractitemview.h"

type
    # Enums found in the C++ code
    # Global
    QAbstractItemView_SelectionMode* {.header:headerFile,importcpp:"QAbstractItemView::SelectionMode".} = enum NoSelection = 0, SingleSelection = 0x1, MultiSelection = 0x2, ExtendedSelection = 0x3, 
        ContiguousSelection = 0x4
    QAbstractItemView_SelectionBehavior* {.header:headerFile,importcpp:"QAbstractItemView::SelectionBehavior".} = enum SelectItems = 0, SelectRows = 0x1, SelectColumns = 0x2
    QAbstractItemView_ScrollHint* {.header:headerFile,importcpp:"QAbstractItemView::ScrollHint".} = enum EnsureVisible = 0, PositionAtTop = 0x1, PositionAtBottom = 0x2, PositionAtCenter = 0x3
    QAbstractItemView_EditTrigger* {.header:headerFile,importcpp:"QAbstractItemView::EditTrigger".} = enum NoEditTriggers = 0, CurrentChanged = 0x1, DoubleClicked = 0x2, SelectedClicked = 0x4, 
        EditKeyPressed = 0x8, AnyKeyPressed = 0x10, AllEditTriggers = 0x1f
    QAbstractItemView_ScrollMode* {.header:headerFile,importcpp:"QAbstractItemView::ScrollMode".} = enum ScrollPerItem = 0, ScrollPerPixel = 0x1
    QAbstractItemView_DragDropMode* {.header:headerFile,importcpp:"QAbstractItemView::DragDropMode".} = enum NoDragDrop = 0, DragOnly = 0x1, DropOnly = 0x2, DragDrop = 0x3, 
        InternalMove = 0x4
    QAbstractItemView_CursorAction* {.header:headerFile,importcpp:"QAbstractItemView::CursorAction".} = enum MoveUp = 0, MoveDown = 0x1, MoveLeft = 0x2, MoveRight = 0x3, 
        MoveHome = 0x4, MoveEnd = 0x5, MovePageUp = 0x6, MovePageDown = 0x7, MoveNext = 0x8, 
        MovePrevious = 0x9
    QAbstractItemView_State* {.header:headerFile,importcpp:"QAbstractItemView::State".} = enum NoState = 0, DraggingState = 0x1, DragSelectingState = 0x2, EditingState = 0x3, 
        ExpandingState = 0x4, CollapsingState = 0x5, AnimatingState = 0x6
    QAbstractItemView_DropIndicatorPosition* {.header:headerFile,importcpp:"QAbstractItemView::DropIndicatorPosition".} = enum OnItem = 0, AboveItem = 0x1, BelowItem = 0x2, OnViewport = 0x3

import nimqt/qtwidgets/qabstractscrollarea
type
    # Classes found in the C++ code
    QAbstractItemView* {.header:headerFile,importcpp:"QAbstractItemView" ,pure.} = object of QAbstractScrollArea
import nimqt/qtwidgets/qframe
import nimqt/qtwidgets/qwidget
import nimqt/qtgui/qpaintdevice
import nimqt/qtcore/qflags


type
    # typedefs found in the C++ code
    QAbstractItemView_SizeAdjustPolicy * = QAbstractScrollArea_SizeAdjustPolicy
    QAbstractItemView_Shape * = QFrame_Shape
    QAbstractItemView_Shadow * = QFrame_Shadow
    QAbstractItemView_StyleMask * = QFrame_StyleMask
    QAbstractItemView_RenderFlag * = QWidget_RenderFlag
    QAbstractItemView_RenderFlags * = QWidget_RenderFlags
    QAbstractItemView_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric
    QAbstractItemView_EditTriggers * = QFlags[QAbstractItemView_EditTrigger]

# Stuff for class QAbstractItemView

# Public constructors for QAbstractItemView
# 1 default parameters!
proc newQAbstractItemView*(parent: ptr QWidget): ptr QAbstractItemView {. header:headerFile, importcpp:"new QAbstractItemView(@)" .} #
proc newQAbstractItemView*(): ptr QAbstractItemView {. header:headerFile, importcpp:"new QAbstractItemView(@)" .} #

# Public methods for QAbstractItemView
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QAbstractItemView_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QAbstractItemView::tr(@)".} # Public static
proc static_QAbstractItemView_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QAbstractItemView::tr(@)".} # Public static
import nimqt/qtcore/qabstractitemmodel
proc setModel*(this: ptr QAbstractItemView, model: ptr QAbstractItemModel) {.header:headerFile, importcpp:"#.setModel(@)".} # Public
proc model*(this: ptr QAbstractItemView): ptr QAbstractItemModel {.header:headerFile, importcpp:"#.model(@)".} # Public
import nimqt/qtcore/qitemselectionmodel
proc setSelectionModel*(this: ptr QAbstractItemView, selectionModel: ptr QItemSelectionModel) {.header:headerFile, importcpp:"#.setSelectionModel(@)".} # Public
proc selectionModel*(this: ptr QAbstractItemView): ptr QItemSelectionModel {.header:headerFile, importcpp:"#.selectionModel(@)".} # Public
import nimqt/qtwidgets/qabstractitemdelegate
proc setItemDelegate*(this: ptr QAbstractItemView, delegate: ptr QAbstractItemDelegate) {.header:headerFile, importcpp:"#.setItemDelegate(@)".} # Public
proc itemDelegate*(this: ptr QAbstractItemView): ptr QAbstractItemDelegate {.header:headerFile, importcpp:"#.itemDelegate(@)".} # Public
proc setSelectionMode*(this: ptr QAbstractItemView, mode: QAbstractItemView_SelectionMode) {.header:headerFile, importcpp:"#.setSelectionMode(@)".} # Public
proc selectionMode*(this: ptr QAbstractItemView): QAbstractItemView_SelectionMode {.header:headerFile, importcpp:"#.selectionMode(@)".} # Public
proc setSelectionBehavior*(this: ptr QAbstractItemView, behavior: QAbstractItemView_SelectionBehavior) {.header:headerFile, importcpp:"#.setSelectionBehavior(@)".} # Public
proc selectionBehavior*(this: ptr QAbstractItemView): QAbstractItemView_SelectionBehavior {.header:headerFile, importcpp:"#.selectionBehavior(@)".} # Public
proc currentIndex*(this: ptr QAbstractItemView): QModelIndex {.header:headerFile, importcpp:"#.currentIndex(@)".} # Public
proc rootIndex*(this: ptr QAbstractItemView): QModelIndex {.header:headerFile, importcpp:"#.rootIndex(@)".} # Public
proc setEditTriggers*(this: ptr QAbstractItemView, triggers: QFlags[QAbstractItemView_EditTrigger]) {.header:headerFile, importcpp:"#.setEditTriggers(@)".} # Public
proc editTriggers*(this: ptr QAbstractItemView): QFlags[QAbstractItemView_EditTrigger] {.header:headerFile, importcpp:"#.editTriggers(@)".} # Public
proc setVerticalScrollMode*(this: ptr QAbstractItemView, mode: QAbstractItemView_ScrollMode) {.header:headerFile, importcpp:"#.setVerticalScrollMode(@)".} # Public
proc verticalScrollMode*(this: ptr QAbstractItemView): QAbstractItemView_ScrollMode {.header:headerFile, importcpp:"#.verticalScrollMode(@)".} # Public
proc resetVerticalScrollMode*(this: ptr QAbstractItemView) {.header:headerFile, importcpp:"#.resetVerticalScrollMode(@)".} # Public
proc setHorizontalScrollMode*(this: ptr QAbstractItemView, mode: QAbstractItemView_ScrollMode) {.header:headerFile, importcpp:"#.setHorizontalScrollMode(@)".} # Public
proc horizontalScrollMode*(this: ptr QAbstractItemView): QAbstractItemView_ScrollMode {.header:headerFile, importcpp:"#.horizontalScrollMode(@)".} # Public
proc resetHorizontalScrollMode*(this: ptr QAbstractItemView) {.header:headerFile, importcpp:"#.resetHorizontalScrollMode(@)".} # Public
proc setAutoScroll*(this: ptr QAbstractItemView, enable: bool) {.header:headerFile, importcpp:"#.setAutoScroll(@)".} # Public
proc hasAutoScroll*(this: ptr QAbstractItemView): bool {.header:headerFile, importcpp:"#.hasAutoScroll(@)".} # Public
proc setAutoScrollMargin*(this: ptr QAbstractItemView, margin: cint) {.header:headerFile, importcpp:"#.setAutoScrollMargin(@)".} # Public
proc autoScrollMargin*(this: ptr QAbstractItemView): cint {.header:headerFile, importcpp:"#.autoScrollMargin(@)".} # Public
proc setTabKeyNavigation*(this: ptr QAbstractItemView, enable: bool) {.header:headerFile, importcpp:"#.setTabKeyNavigation(@)".} # Public
proc tabKeyNavigation*(this: ptr QAbstractItemView): bool {.header:headerFile, importcpp:"#.tabKeyNavigation(@)".} # Public
proc setDropIndicatorShown*(this: ptr QAbstractItemView, enable: bool) {.header:headerFile, importcpp:"#.setDropIndicatorShown(@)".} # Public
proc showDropIndicator*(this: ptr QAbstractItemView): bool {.header:headerFile, importcpp:"#.showDropIndicator(@)".} # Public
proc setDragEnabled*(this: ptr QAbstractItemView, enable: bool) {.header:headerFile, importcpp:"#.setDragEnabled(@)".} # Public
proc dragEnabled*(this: ptr QAbstractItemView): bool {.header:headerFile, importcpp:"#.dragEnabled(@)".} # Public
proc setDragDropOverwriteMode*(this: ptr QAbstractItemView, overwrite: bool) {.header:headerFile, importcpp:"#.setDragDropOverwriteMode(@)".} # Public
proc dragDropOverwriteMode*(this: ptr QAbstractItemView): bool {.header:headerFile, importcpp:"#.dragDropOverwriteMode(@)".} # Public
proc setDragDropMode*(this: ptr QAbstractItemView, behavior: QAbstractItemView_DragDropMode) {.header:headerFile, importcpp:"#.setDragDropMode(@)".} # Public
proc dragDropMode*(this: ptr QAbstractItemView): QAbstractItemView_DragDropMode {.header:headerFile, importcpp:"#.dragDropMode(@)".} # Public
import nimqt/qtcore/qnamespace
proc setDefaultDropAction*(this: ptr QAbstractItemView, dropAction: Qt_DropAction) {.header:headerFile, importcpp:"#.setDefaultDropAction(@)".} # Public
proc defaultDropAction*(this: ptr QAbstractItemView): Qt_DropAction {.header:headerFile, importcpp:"#.defaultDropAction(@)".} # Public
proc setAlternatingRowColors*(this: ptr QAbstractItemView, enable: bool) {.header:headerFile, importcpp:"#.setAlternatingRowColors(@)".} # Public
proc alternatingRowColors*(this: ptr QAbstractItemView): bool {.header:headerFile, importcpp:"#.alternatingRowColors(@)".} # Public
import nimqt/qtcore/qsize
proc setIconSize*(this: ptr QAbstractItemView, size: QSize) {.header:headerFile, importcpp:"#.setIconSize(@)".} # Public
proc iconSize*(this: ptr QAbstractItemView): QSize {.header:headerFile, importcpp:"#.iconSize(@)".} # Public
proc setTextElideMode*(this: ptr QAbstractItemView, mode: Qt_TextElideMode) {.header:headerFile, importcpp:"#.setTextElideMode(@)".} # Public
proc textElideMode*(this: ptr QAbstractItemView): Qt_TextElideMode {.header:headerFile, importcpp:"#.textElideMode(@)".} # Public
proc keyboardSearch*(this: ptr QAbstractItemView, search: QString) {.header:headerFile, importcpp:"#.keyboardSearch(@)".} # Public
import nimqt/qtcore/qrect
proc visualRect*(this: ptr QAbstractItemView, index: QModelIndex): QRect {.header:headerFile, importcpp:"#.visualRect(@)".} # Public
proc scrollTo*(this: ptr QAbstractItemView, index: QModelIndex, hint: QAbstractItemView_ScrollHint) {.header:headerFile, importcpp:"#.scrollTo(@)".} # Public
import nimqt/qtcore/qpoint
proc indexAt*(this: ptr QAbstractItemView, point: QPoint): QModelIndex {.header:headerFile, importcpp:"#.indexAt(@)".} # Public
proc sizeHintForIndex*(this: ptr QAbstractItemView, index: QModelIndex): QSize {.header:headerFile, importcpp:"#.sizeHintForIndex(@)".} # Public
proc sizeHintForRow*(this: ptr QAbstractItemView, row: cint): cint {.header:headerFile, importcpp:"#.sizeHintForRow(@)".} # Public
proc sizeHintForColumn*(this: ptr QAbstractItemView, column: cint): cint {.header:headerFile, importcpp:"#.sizeHintForColumn(@)".} # Public
proc openPersistentEditor*(this: ptr QAbstractItemView, index: QModelIndex) {.header:headerFile, importcpp:"#.openPersistentEditor(@)".} # Public
proc closePersistentEditor*(this: ptr QAbstractItemView, index: QModelIndex) {.header:headerFile, importcpp:"#.closePersistentEditor(@)".} # Public
proc isPersistentEditorOpen*(this: ptr QAbstractItemView, index: QModelIndex): bool {.header:headerFile, importcpp:"#.isPersistentEditorOpen(@)".} # Public
proc setIndexWidget*(this: ptr QAbstractItemView, index: QModelIndex, widget: ptr QWidget) {.header:headerFile, importcpp:"#.setIndexWidget(@)".} # Public
proc indexWidget*(this: ptr QAbstractItemView, index: QModelIndex): ptr QWidget {.header:headerFile, importcpp:"#.indexWidget(@)".} # Public
proc setItemDelegateForRow*(this: ptr QAbstractItemView, row: cint, delegate: ptr QAbstractItemDelegate) {.header:headerFile, importcpp:"#.setItemDelegateForRow(@)".} # Public
proc itemDelegateForRow*(this: ptr QAbstractItemView, row: cint): ptr QAbstractItemDelegate {.header:headerFile, importcpp:"#.itemDelegateForRow(@)".} # Public
proc setItemDelegateForColumn*(this: ptr QAbstractItemView, column: cint, delegate: ptr QAbstractItemDelegate) {.header:headerFile, importcpp:"#.setItemDelegateForColumn(@)".} # Public
proc itemDelegateForColumn*(this: ptr QAbstractItemView, column: cint): ptr QAbstractItemDelegate {.header:headerFile, importcpp:"#.itemDelegateForColumn(@)".} # Public
proc itemDelegate*(this: ptr QAbstractItemView, index: QModelIndex): ptr QAbstractItemDelegate {.header:headerFile, importcpp:"#.itemDelegate(@)".} # Public
proc itemDelegateForIndex*(this: ptr QAbstractItemView, index: QModelIndex): ptr QAbstractItemDelegate {.header:headerFile, importcpp:"#.itemDelegateForIndex(@)".} # Public
import nimqt/qtcore/qvariant
proc inputMethodQuery*(this: ptr QAbstractItemView, query: Qt_InputMethodQuery): QVariant {.header:headerFile, importcpp:"#.inputMethodQuery(@)".} # Public
proc reset*(this: ptr QAbstractItemView) {.header:headerFile, importcpp:"#.reset(@)".} # Public
proc setRootIndex*(this: ptr QAbstractItemView, index: QModelIndex) {.header:headerFile, importcpp:"#.setRootIndex(@)".} # Public
proc doItemsLayout*(this: ptr QAbstractItemView) {.header:headerFile, importcpp:"#.doItemsLayout(@)".} # Public
proc selectAll*(this: ptr QAbstractItemView) {.header:headerFile, importcpp:"#.selectAll(@)".} # Public
proc edit*(this: ptr QAbstractItemView, index: QModelIndex) {.header:headerFile, importcpp:"#.edit(@)".} # Public
proc clearSelection*(this: ptr QAbstractItemView) {.header:headerFile, importcpp:"#.clearSelection(@)".} # Public
proc setCurrentIndex*(this: ptr QAbstractItemView, index: QModelIndex) {.header:headerFile, importcpp:"#.setCurrentIndex(@)".} # Public
proc scrollToTop*(this: ptr QAbstractItemView) {.header:headerFile, importcpp:"#.scrollToTop(@)".} # Public
proc scrollToBottom*(this: ptr QAbstractItemView) {.header:headerFile, importcpp:"#.scrollToBottom(@)".} # Public
proc update*(this: ptr QAbstractItemView, index: QModelIndex) {.header:headerFile, importcpp:"#.update(@)".} # Public
proc pressed*(this: ptr QAbstractItemView, index: QModelIndex) {.header:headerFile, importcpp:"#.pressed(@)".} # Public
proc clicked*(this: ptr QAbstractItemView, index: QModelIndex) {.header:headerFile, importcpp:"#.clicked(@)".} # Public
proc doubleClicked*(this: ptr QAbstractItemView, index: QModelIndex) {.header:headerFile, importcpp:"#.doubleClicked(@)".} # Public
proc activated*(this: ptr QAbstractItemView, index: QModelIndex) {.header:headerFile, importcpp:"#.activated(@)".} # Public
proc entered*(this: ptr QAbstractItemView, index: QModelIndex) {.header:headerFile, importcpp:"#.entered(@)".} # Public
proc viewportEntered*(this: ptr QAbstractItemView) {.header:headerFile, importcpp:"#.viewportEntered(@)".} # Public
proc iconSizeChanged*(this: ptr QAbstractItemView, size: QSize) {.header:headerFile, importcpp:"#.iconSizeChanged(@)".} # Public

# Protected methods methods for QAbstractItemView
import nimqt/qtcore/qlist
# 1 default parameters!
proc dataChanged*(this: ptr QAbstractItemView, topLeft: QModelIndex, bottomRight: QModelIndex, roles: QList[cint]) {.header:headerFile, importcpp:"#.dataChanged(@)".} # Protected
proc dataChanged*(this: ptr QAbstractItemView, topLeft: QModelIndex, bottomRight: QModelIndex) {.header:headerFile, importcpp:"#.dataChanged(@)".} # Protected
proc rowsInserted*(this: ptr QAbstractItemView, parent: QModelIndex, start: cint, `end`: cint) {.header:headerFile, importcpp:"#.rowsInserted(@)".} # Protected
proc rowsAboutToBeRemoved*(this: ptr QAbstractItemView, parent: QModelIndex, start: cint, `end`: cint) {.header:headerFile, importcpp:"#.rowsAboutToBeRemoved(@)".} # Protected
proc selectionChanged*(this: ptr QAbstractItemView, selected: QItemSelection, deselected: QItemSelection) {.header:headerFile, importcpp:"#.selectionChanged(@)".} # Protected
proc currentChanged*(this: ptr QAbstractItemView, current: QModelIndex, previous: QModelIndex) {.header:headerFile, importcpp:"#.currentChanged(@)".} # Protected
proc updateEditorData*(this: ptr QAbstractItemView) {.header:headerFile, importcpp:"#.updateEditorData(@)".} # Protected
proc updateEditorGeometries*(this: ptr QAbstractItemView) {.header:headerFile, importcpp:"#.updateEditorGeometries(@)".} # Protected
proc updateGeometries*(this: ptr QAbstractItemView) {.header:headerFile, importcpp:"#.updateGeometries(@)".} # Protected
proc verticalScrollbarAction*(this: ptr QAbstractItemView, action: cint) {.header:headerFile, importcpp:"#.verticalScrollbarAction(@)".} # Protected
proc horizontalScrollbarAction*(this: ptr QAbstractItemView, action: cint) {.header:headerFile, importcpp:"#.horizontalScrollbarAction(@)".} # Protected
proc verticalScrollbarValueChanged*(this: ptr QAbstractItemView, value: cint) {.header:headerFile, importcpp:"#.verticalScrollbarValueChanged(@)".} # Protected
proc horizontalScrollbarValueChanged*(this: ptr QAbstractItemView, value: cint) {.header:headerFile, importcpp:"#.horizontalScrollbarValueChanged(@)".} # Protected
proc closeEditor*(this: ptr QAbstractItemView, editor: ptr QWidget, hint: QAbstractItemDelegate_EndEditHint) {.header:headerFile, importcpp:"#.closeEditor(@)".} # Protected
proc commitData*(this: ptr QAbstractItemView, editor: ptr QWidget) {.header:headerFile, importcpp:"#.commitData(@)".} # Protected
import nimqt/qtcore/qobject
proc editorDestroyed*(this: ptr QAbstractItemView, editor: ptr QObject) {.header:headerFile, importcpp:"#.editorDestroyed(@)".} # Protected
proc moveCursor*(this: ptr QAbstractItemView, cursorAction: QAbstractItemView_CursorAction, modifiers: Qt_KeyboardModifiers): QModelIndex {.header:headerFile, importcpp:"#.moveCursor(@)".} # Protected
proc horizontalOffset*(this: ptr QAbstractItemView): cint {.header:headerFile, importcpp:"#.horizontalOffset(@)".} # Protected
proc verticalOffset*(this: ptr QAbstractItemView): cint {.header:headerFile, importcpp:"#.verticalOffset(@)".} # Protected
proc isIndexHidden*(this: ptr QAbstractItemView, index: QModelIndex): bool {.header:headerFile, importcpp:"#.isIndexHidden(@)".} # Protected
proc setSelection*(this: ptr QAbstractItemView, rect: QRect, command: QItemSelectionModel_SelectionFlags) {.header:headerFile, importcpp:"#.setSelection(@)".} # Protected
import nimqt/qtgui/qregion
proc visualRegionForSelection*(this: ptr QAbstractItemView, selection: QItemSelection): QRegion {.header:headerFile, importcpp:"#.visualRegionForSelection(@)".} # Protected
proc selectedIndexes*(this: ptr QAbstractItemView): QModelIndexList {.header:headerFile, importcpp:"#.selectedIndexes(@)".} # Protected
import nimqt/qtcore/qcoreevent
proc edit*(this: ptr QAbstractItemView, index: QModelIndex, trigger: QAbstractItemView_EditTrigger, event: ptr QEvent): bool {.header:headerFile, importcpp:"#.edit(@)".} # Protected
# 1 default parameters!
proc selectionCommand*(this: ptr QAbstractItemView, index: QModelIndex, event: ptr QEvent): QItemSelectionModel_SelectionFlags {.header:headerFile, importcpp:"#.selectionCommand(@)".} # Protected
proc selectionCommand*(this: ptr QAbstractItemView, index: QModelIndex): QItemSelectionModel_SelectionFlags {.header:headerFile, importcpp:"#.selectionCommand(@)".} # Protected
proc startDrag*(this: ptr QAbstractItemView, supportedActions: Qt_DropActions) {.header:headerFile, importcpp:"#.startDrag(@)".} # Protected
proc state*(this: ptr QAbstractItemView): QAbstractItemView_State {.header:headerFile, importcpp:"#.state(@)".} # Protected
proc setState*(this: ptr QAbstractItemView, state: QAbstractItemView_State) {.header:headerFile, importcpp:"#.setState(@)".} # Protected
proc scheduleDelayedItemsLayout*(this: ptr QAbstractItemView) {.header:headerFile, importcpp:"#.scheduleDelayedItemsLayout(@)".} # Protected
proc executeDelayedItemsLayout*(this: ptr QAbstractItemView) {.header:headerFile, importcpp:"#.executeDelayedItemsLayout(@)".} # Protected
proc setDirtyRegion*(this: ptr QAbstractItemView, region: QRegion) {.header:headerFile, importcpp:"#.setDirtyRegion(@)".} # Protected
proc scrollDirtyRegion*(this: ptr QAbstractItemView, dx: cint, dy: cint) {.header:headerFile, importcpp:"#.scrollDirtyRegion(@)".} # Protected
proc dirtyRegionOffset*(this: ptr QAbstractItemView): QPoint {.header:headerFile, importcpp:"#.dirtyRegionOffset(@)".} # Protected
proc startAutoScroll*(this: ptr QAbstractItemView) {.header:headerFile, importcpp:"#.startAutoScroll(@)".} # Protected
proc stopAutoScroll*(this: ptr QAbstractItemView) {.header:headerFile, importcpp:"#.stopAutoScroll(@)".} # Protected
proc doAutoScroll*(this: ptr QAbstractItemView) {.header:headerFile, importcpp:"#.doAutoScroll(@)".} # Protected
proc focusNextPrevChild*(this: ptr QAbstractItemView, next: bool): bool {.header:headerFile, importcpp:"#.focusNextPrevChild(@)".} # Protected
proc event*(this: ptr QAbstractItemView, event: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Protected
proc viewportEvent*(this: ptr QAbstractItemView, event: ptr QEvent): bool {.header:headerFile, importcpp:"#.viewportEvent(@)".} # Protected
import nimqt/qtgui/qevent
proc mousePressEvent*(this: ptr QAbstractItemView, event: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mousePressEvent(@)".} # Protected
proc mouseMoveEvent*(this: ptr QAbstractItemView, event: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mouseMoveEvent(@)".} # Protected
proc mouseReleaseEvent*(this: ptr QAbstractItemView, event: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mouseReleaseEvent(@)".} # Protected
proc mouseDoubleClickEvent*(this: ptr QAbstractItemView, event: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mouseDoubleClickEvent(@)".} # Protected
proc dragEnterEvent*(this: ptr QAbstractItemView, event: ptr QDragEnterEvent) {.header:headerFile, importcpp:"#.dragEnterEvent(@)".} # Protected
proc dragMoveEvent*(this: ptr QAbstractItemView, event: ptr QDragMoveEvent) {.header:headerFile, importcpp:"#.dragMoveEvent(@)".} # Protected
proc dragLeaveEvent*(this: ptr QAbstractItemView, event: ptr QDragLeaveEvent) {.header:headerFile, importcpp:"#.dragLeaveEvent(@)".} # Protected
proc dropEvent*(this: ptr QAbstractItemView, event: ptr QDropEvent) {.header:headerFile, importcpp:"#.dropEvent(@)".} # Protected
proc focusInEvent*(this: ptr QAbstractItemView, event: ptr QFocusEvent) {.header:headerFile, importcpp:"#.focusInEvent(@)".} # Protected
proc focusOutEvent*(this: ptr QAbstractItemView, event: ptr QFocusEvent) {.header:headerFile, importcpp:"#.focusOutEvent(@)".} # Protected
proc keyPressEvent*(this: ptr QAbstractItemView, event: ptr QKeyEvent) {.header:headerFile, importcpp:"#.keyPressEvent(@)".} # Protected
proc resizeEvent*(this: ptr QAbstractItemView, event: ptr QResizeEvent) {.header:headerFile, importcpp:"#.resizeEvent(@)".} # Protected
proc timerEvent*(this: ptr QAbstractItemView, event: ptr QTimerEvent) {.header:headerFile, importcpp:"#.timerEvent(@)".} # Protected
proc inputMethodEvent*(this: ptr QAbstractItemView, event: ptr QInputMethodEvent) {.header:headerFile, importcpp:"#.inputMethodEvent(@)".} # Protected
proc eventFilter*(this: ptr QAbstractItemView, `object`: ptr QObject, event: ptr QEvent): bool {.header:headerFile, importcpp:"#.eventFilter(@)".} # Protected
proc dropIndicatorPosition*(this: ptr QAbstractItemView): QAbstractItemView_DropIndicatorPosition {.header:headerFile, importcpp:"#.dropIndicatorPosition(@)".} # Protected
proc viewportSizeHint*(this: ptr QAbstractItemView): QSize {.header:headerFile, importcpp:"#.viewportSizeHint(@)".} # Protected

export qevent
export qstring
export qsize
export qitemselectionmodel
export qabstractscrollarea
export qnamespace
export qlist
export qabstractitemmodel
export qabstractitemdelegate
export qpoint
export qvariant
export qwidget
export qregion
export qrect
export qflags
export qpaintdevice
export qobject
export qcoreevent
export qframe
