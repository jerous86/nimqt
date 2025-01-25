const headerFile* = "QtWidgets/qcolumnview.h"

import nimqt/qtwidgets/qabstractitemview
type
    # Classes found in the C++ code
    QColumnView* {.header:headerFile,importcpp:"QColumnView" ,pure.} = object of QAbstractItemView
import nimqt/qtwidgets/qabstractscrollarea
import nimqt/qtwidgets/qframe
import nimqt/qtwidgets/qwidget
import nimqt/qtgui/qpaintdevice


type
    # typedefs found in the C++ code
    QColumnView_SelectionMode * = QAbstractItemView_SelectionMode
    QColumnView_SelectionBehavior * = QAbstractItemView_SelectionBehavior
    QColumnView_ScrollHint * = QAbstractItemView_ScrollHint
    QColumnView_EditTrigger * = QAbstractItemView_EditTrigger
    QColumnView_ScrollMode * = QAbstractItemView_ScrollMode
    QColumnView_DragDropMode * = QAbstractItemView_DragDropMode
    QColumnView_CursorAction * = QAbstractItemView_CursorAction
    QColumnView_State * = QAbstractItemView_State
    QColumnView_DropIndicatorPosition * = QAbstractItemView_DropIndicatorPosition
    QColumnView_EditTriggers * = QAbstractItemView_EditTriggers
    QColumnView_SizeAdjustPolicy * = QAbstractScrollArea_SizeAdjustPolicy
    QColumnView_Shape * = QFrame_Shape
    QColumnView_Shadow * = QFrame_Shadow
    QColumnView_StyleMask * = QFrame_StyleMask
    QColumnView_RenderFlag * = QWidget_RenderFlag
    QColumnView_RenderFlags * = QWidget_RenderFlags
    QColumnView_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric

# Stuff for class QColumnView

# Public constructors for QColumnView
# 1 default parameters!
proc newQColumnView*(parent: ptr QWidget): ptr QColumnView {. header:headerFile, importcpp:"new QColumnView(@)" .} #
proc newQColumnView*(): ptr QColumnView {. header:headerFile, importcpp:"new QColumnView(@)" .} #

# Public methods for QColumnView
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QColumnView_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QColumnView::tr(@)".} # Public static
proc static_QColumnView_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QColumnView::tr(@)".} # Public static
import nimqt/qtcore/qabstractitemmodel
proc updatePreviewWidget*(this: ptr QColumnView, index: QModelIndex) {.header:headerFile, importcpp:"#.updatePreviewWidget(@)".} # Public
import nimqt/qtcore/qpoint
proc indexAt*(this: ptr QColumnView, point: QPoint): QModelIndex {.header:headerFile, importcpp:"#.indexAt(@)".} # Public
proc scrollTo*(this: ptr QColumnView, index: QModelIndex, hint: QAbstractItemView_ScrollHint) {.header:headerFile, importcpp:"#.scrollTo(@)".} # Public
import nimqt/qtcore/qsize
proc sizeHint*(this: ptr QColumnView): QSize {.header:headerFile, importcpp:"#.sizeHint(@)".} # Public
import nimqt/qtcore/qrect
proc visualRect*(this: ptr QColumnView, index: QModelIndex): QRect {.header:headerFile, importcpp:"#.visualRect(@)".} # Public
proc setModel*(this: ptr QColumnView, model: ptr QAbstractItemModel) {.header:headerFile, importcpp:"#.setModel(@)".} # Public
import nimqt/qtcore/qitemselectionmodel
proc setSelectionModel*(this: ptr QColumnView, selectionModel: ptr QItemSelectionModel) {.header:headerFile, importcpp:"#.setSelectionModel(@)".} # Public
proc setRootIndex*(this: ptr QColumnView, index: QModelIndex) {.header:headerFile, importcpp:"#.setRootIndex(@)".} # Public
proc selectAll*(this: ptr QColumnView) {.header:headerFile, importcpp:"#.selectAll(@)".} # Public
proc setResizeGripsVisible*(this: ptr QColumnView, visible: bool) {.header:headerFile, importcpp:"#.setResizeGripsVisible(@)".} # Public
proc resizeGripsVisible*(this: ptr QColumnView): bool {.header:headerFile, importcpp:"#.resizeGripsVisible(@)".} # Public
proc previewWidget*(this: ptr QColumnView): ptr QWidget {.header:headerFile, importcpp:"#.previewWidget(@)".} # Public
proc setPreviewWidget*(this: ptr QColumnView, widget: ptr QWidget) {.header:headerFile, importcpp:"#.setPreviewWidget(@)".} # Public
import nimqt/qtcore/qlist
proc setColumnWidths*(this: ptr QColumnView, list: QList[cint]) {.header:headerFile, importcpp:"#.setColumnWidths(@)".} # Public
proc columnWidths*(this: ptr QColumnView): QList[cint] {.header:headerFile, importcpp:"#.columnWidths(@)".} # Public

# Protected methods methods for QColumnView
proc isIndexHidden*(this: ptr QColumnView, index: QModelIndex): bool {.header:headerFile, importcpp:"#.isIndexHidden(@)".} # Protected
import nimqt/qtcore/qnamespace
proc moveCursor*(this: ptr QColumnView, cursorAction: QAbstractItemView_CursorAction, modifiers: Qt_KeyboardModifiers): QModelIndex {.header:headerFile, importcpp:"#.moveCursor(@)".} # Protected
import nimqt/qtgui/qevent
proc resizeEvent*(this: ptr QColumnView, event: ptr QResizeEvent) {.header:headerFile, importcpp:"#.resizeEvent(@)".} # Protected
proc setSelection*(this: ptr QColumnView, rect: QRect, command: QItemSelectionModel_SelectionFlags) {.header:headerFile, importcpp:"#.setSelection(@)".} # Protected
import nimqt/qtgui/qregion
proc visualRegionForSelection*(this: ptr QColumnView, selection: QItemSelection): QRegion {.header:headerFile, importcpp:"#.visualRegionForSelection(@)".} # Protected
proc horizontalOffset*(this: ptr QColumnView): cint {.header:headerFile, importcpp:"#.horizontalOffset(@)".} # Protected
proc verticalOffset*(this: ptr QColumnView): cint {.header:headerFile, importcpp:"#.verticalOffset(@)".} # Protected
proc rowsInserted*(this: ptr QColumnView, parent: QModelIndex, start: cint, `end`: cint) {.header:headerFile, importcpp:"#.rowsInserted(@)".} # Protected
proc currentChanged*(this: ptr QColumnView, current: QModelIndex, previous: QModelIndex) {.header:headerFile, importcpp:"#.currentChanged(@)".} # Protected
proc scrollContentsBy*(this: ptr QColumnView, dx: cint, dy: cint) {.header:headerFile, importcpp:"#.scrollContentsBy(@)".} # Protected
proc createColumn*(this: ptr QColumnView, rootIndex: QModelIndex): ptr QAbstractItemView {.header:headerFile, importcpp:"#.createColumn(@)".} # Protected
proc initializeColumn*(this: ptr QColumnView, column: ptr QAbstractItemView) {.header:headerFile, importcpp:"#.initializeColumn(@)".} # Protected

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
export qframe
