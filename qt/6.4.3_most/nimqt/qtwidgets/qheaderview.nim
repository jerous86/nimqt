const headerFile* = "QtWidgets/qheaderview.h"

type
    # Enums found in the C++ code
    # Global
    QHeaderView_ResizeMode* {.header:headerFile,importcpp:"QHeaderView::ResizeMode".} = enum Interactive = 0, Stretch = 0x1, Fixed = 0x2, ResizeToContents = 0x3

import nimqt/qtwidgets/qabstractitemview
type
    # Classes found in the C++ code
    QHeaderView* {.header:headerFile,importcpp:"QHeaderView" ,pure.} = object of QAbstractItemView
import nimqt/qtwidgets/qabstractscrollarea
import nimqt/qtwidgets/qframe
import nimqt/qtwidgets/qwidget
import nimqt/qtgui/qpaintdevice


type
    # typedefs found in the C++ code
    QHeaderView_SelectionMode * = QAbstractItemView_SelectionMode
    QHeaderView_SelectionBehavior * = QAbstractItemView_SelectionBehavior
    QHeaderView_ScrollHint * = QAbstractItemView_ScrollHint
    QHeaderView_EditTrigger * = QAbstractItemView_EditTrigger
    QHeaderView_ScrollMode * = QAbstractItemView_ScrollMode
    QHeaderView_DragDropMode * = QAbstractItemView_DragDropMode
    QHeaderView_CursorAction * = QAbstractItemView_CursorAction
    QHeaderView_State * = QAbstractItemView_State
    QHeaderView_DropIndicatorPosition * = QAbstractItemView_DropIndicatorPosition
    QHeaderView_EditTriggers * = QAbstractItemView_EditTriggers
    QHeaderView_SizeAdjustPolicy * = QAbstractScrollArea_SizeAdjustPolicy
    QHeaderView_Shape * = QFrame_Shape
    QHeaderView_Shadow * = QFrame_Shadow
    QHeaderView_StyleMask * = QFrame_StyleMask
    QHeaderView_RenderFlag * = QWidget_RenderFlag
    QHeaderView_RenderFlags * = QWidget_RenderFlags
    QHeaderView_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric

# Consts
const
    # Global
    QHeaderView_ResizeModeCustom* = 2 # from anonymous enum Fixed

# Stuff for class QHeaderView

# Public constructors for QHeaderView
import nimqt/qtcore/qnamespace
# 1 default parameters!
proc newQHeaderView*(orientation: Qt_Orientation, parent: ptr QWidget): ptr QHeaderView {. header:headerFile, importcpp:"new QHeaderView(@)" .} #
proc newQHeaderView*(orientation: Qt_Orientation): ptr QHeaderView {. header:headerFile, importcpp:"new QHeaderView(@)" .} #

# Public methods for QHeaderView
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QHeaderView_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QHeaderView::tr(@)".} # Public static
proc static_QHeaderView_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QHeaderView::tr(@)".} # Public static
import nimqt/qtcore/qabstractitemmodel
proc setModel*(this: ptr QHeaderView, model: ptr QAbstractItemModel) {.header:headerFile, importcpp:"#.setModel(@)".} # Public
proc orientation*(this: ptr QHeaderView): Qt_Orientation {.header:headerFile, importcpp:"#.orientation(@)".} # Public
proc offset*(this: ptr QHeaderView): cint {.header:headerFile, importcpp:"#.offset(@)".} # Public
proc length*(this: ptr QHeaderView): cint {.header:headerFile, importcpp:"#.length(@)".} # Public
import nimqt/qtcore/qsize
proc sizeHint*(this: ptr QHeaderView): QSize {.header:headerFile, importcpp:"#.sizeHint(@)".} # Public
proc setVisible*(this: ptr QHeaderView, v: bool) {.header:headerFile, importcpp:"#.setVisible(@)".} # Public
proc sectionSizeHint*(this: ptr QHeaderView, logicalIndex: cint): cint {.header:headerFile, importcpp:"#.sectionSizeHint(@)".} # Public
proc visualIndexAt*(this: ptr QHeaderView, position: cint): cint {.header:headerFile, importcpp:"#.visualIndexAt(@)".} # Public
proc logicalIndexAt*(this: ptr QHeaderView, position: cint): cint {.header:headerFile, importcpp:"#.logicalIndexAt(@)".} # Public
proc logicalIndexAt*(this: ptr QHeaderView, x: cint, y: cint): cint {.header:headerFile, importcpp:"#.logicalIndexAt(@)".} # Public
import nimqt/qtcore/qpoint
proc logicalIndexAt*(this: ptr QHeaderView, pos: QPoint): cint {.header:headerFile, importcpp:"#.logicalIndexAt(@)".} # Public
proc sectionSize*(this: ptr QHeaderView, logicalIndex: cint): cint {.header:headerFile, importcpp:"#.sectionSize(@)".} # Public
proc sectionPosition*(this: ptr QHeaderView, logicalIndex: cint): cint {.header:headerFile, importcpp:"#.sectionPosition(@)".} # Public
proc sectionViewportPosition*(this: ptr QHeaderView, logicalIndex: cint): cint {.header:headerFile, importcpp:"#.sectionViewportPosition(@)".} # Public
proc moveSection*(this: ptr QHeaderView, `from`: cint, to: cint) {.header:headerFile, importcpp:"#.moveSection(@)".} # Public
proc swapSections*(this: ptr QHeaderView, first: cint, second: cint) {.header:headerFile, importcpp:"#.swapSections(@)".} # Public
proc resizeSection*(this: ptr QHeaderView, logicalIndex: cint, size: cint) {.header:headerFile, importcpp:"#.resizeSection(@)".} # Public
proc resizeSections*(this: ptr QHeaderView, mode: QHeaderView_ResizeMode) {.header:headerFile, importcpp:"#.resizeSections(@)".} # Public
proc isSectionHidden*(this: ptr QHeaderView, logicalIndex: cint): bool {.header:headerFile, importcpp:"#.isSectionHidden(@)".} # Public
proc setSectionHidden*(this: ptr QHeaderView, logicalIndex: cint, hide: bool) {.header:headerFile, importcpp:"#.setSectionHidden(@)".} # Public
proc hiddenSectionCount*(this: ptr QHeaderView): cint {.header:headerFile, importcpp:"#.hiddenSectionCount(@)".} # Public
proc hideSection*(this: ptr QHeaderView, logicalIndex: cint) {.header:headerFile, importcpp:"#.hideSection(@)".} # Public
proc showSection*(this: ptr QHeaderView, logicalIndex: cint) {.header:headerFile, importcpp:"#.showSection(@)".} # Public
proc count*(this: ptr QHeaderView): cint {.header:headerFile, importcpp:"#.count(@)".} # Public
proc visualIndex*(this: ptr QHeaderView, logicalIndex: cint): cint {.header:headerFile, importcpp:"#.visualIndex(@)".} # Public
proc logicalIndex*(this: ptr QHeaderView, visualIndex: cint): cint {.header:headerFile, importcpp:"#.logicalIndex(@)".} # Public
proc setSectionsMovable*(this: ptr QHeaderView, movable: bool) {.header:headerFile, importcpp:"#.setSectionsMovable(@)".} # Public
proc sectionsMovable*(this: ptr QHeaderView): bool {.header:headerFile, importcpp:"#.sectionsMovable(@)".} # Public
proc setFirstSectionMovable*(this: ptr QHeaderView, movable: bool) {.header:headerFile, importcpp:"#.setFirstSectionMovable(@)".} # Public
proc isFirstSectionMovable*(this: ptr QHeaderView): bool {.header:headerFile, importcpp:"#.isFirstSectionMovable(@)".} # Public
proc setSectionsClickable*(this: ptr QHeaderView, clickable: bool) {.header:headerFile, importcpp:"#.setSectionsClickable(@)".} # Public
proc sectionsClickable*(this: ptr QHeaderView): bool {.header:headerFile, importcpp:"#.sectionsClickable(@)".} # Public
proc setHighlightSections*(this: ptr QHeaderView, highlight: bool) {.header:headerFile, importcpp:"#.setHighlightSections(@)".} # Public
proc highlightSections*(this: ptr QHeaderView): bool {.header:headerFile, importcpp:"#.highlightSections(@)".} # Public
proc sectionResizeMode*(this: ptr QHeaderView, logicalIndex: cint): QHeaderView_ResizeMode {.header:headerFile, importcpp:"#.sectionResizeMode(@)".} # Public
proc setSectionResizeMode*(this: ptr QHeaderView, mode: QHeaderView_ResizeMode) {.header:headerFile, importcpp:"#.setSectionResizeMode(@)".} # Public
proc setSectionResizeMode*(this: ptr QHeaderView, logicalIndex: cint, mode: QHeaderView_ResizeMode) {.header:headerFile, importcpp:"#.setSectionResizeMode(@)".} # Public
proc setResizeContentsPrecision*(this: ptr QHeaderView, precision: cint) {.header:headerFile, importcpp:"#.setResizeContentsPrecision(@)".} # Public
proc resizeContentsPrecision*(this: ptr QHeaderView): cint {.header:headerFile, importcpp:"#.resizeContentsPrecision(@)".} # Public
proc stretchSectionCount*(this: ptr QHeaderView): cint {.header:headerFile, importcpp:"#.stretchSectionCount(@)".} # Public
proc setSortIndicatorShown*(this: ptr QHeaderView, show: bool) {.header:headerFile, importcpp:"#.setSortIndicatorShown(@)".} # Public
proc isSortIndicatorShown*(this: ptr QHeaderView): bool {.header:headerFile, importcpp:"#.isSortIndicatorShown(@)".} # Public
proc setSortIndicator*(this: ptr QHeaderView, logicalIndex: cint, order: Qt_SortOrder) {.header:headerFile, importcpp:"#.setSortIndicator(@)".} # Public
proc sortIndicatorSection*(this: ptr QHeaderView): cint {.header:headerFile, importcpp:"#.sortIndicatorSection(@)".} # Public
proc sortIndicatorOrder*(this: ptr QHeaderView): Qt_SortOrder {.header:headerFile, importcpp:"#.sortIndicatorOrder(@)".} # Public
proc setSortIndicatorClearable*(this: ptr QHeaderView, clearable: bool) {.header:headerFile, importcpp:"#.setSortIndicatorClearable(@)".} # Public
proc isSortIndicatorClearable*(this: ptr QHeaderView): bool {.header:headerFile, importcpp:"#.isSortIndicatorClearable(@)".} # Public
proc stretchLastSection*(this: ptr QHeaderView): bool {.header:headerFile, importcpp:"#.stretchLastSection(@)".} # Public
proc setStretchLastSection*(this: ptr QHeaderView, stretch: bool) {.header:headerFile, importcpp:"#.setStretchLastSection(@)".} # Public
proc cascadingSectionResizes*(this: ptr QHeaderView): bool {.header:headerFile, importcpp:"#.cascadingSectionResizes(@)".} # Public
proc setCascadingSectionResizes*(this: ptr QHeaderView, enable: bool) {.header:headerFile, importcpp:"#.setCascadingSectionResizes(@)".} # Public
proc defaultSectionSize*(this: ptr QHeaderView): cint {.header:headerFile, importcpp:"#.defaultSectionSize(@)".} # Public
proc setDefaultSectionSize*(this: ptr QHeaderView, size: cint) {.header:headerFile, importcpp:"#.setDefaultSectionSize(@)".} # Public
proc resetDefaultSectionSize*(this: ptr QHeaderView) {.header:headerFile, importcpp:"#.resetDefaultSectionSize(@)".} # Public
proc minimumSectionSize*(this: ptr QHeaderView): cint {.header:headerFile, importcpp:"#.minimumSectionSize(@)".} # Public
proc setMinimumSectionSize*(this: ptr QHeaderView, size: cint) {.header:headerFile, importcpp:"#.setMinimumSectionSize(@)".} # Public
proc maximumSectionSize*(this: ptr QHeaderView): cint {.header:headerFile, importcpp:"#.maximumSectionSize(@)".} # Public
proc setMaximumSectionSize*(this: ptr QHeaderView, size: cint) {.header:headerFile, importcpp:"#.setMaximumSectionSize(@)".} # Public
proc defaultAlignment*(this: ptr QHeaderView): Qt_Alignment {.header:headerFile, importcpp:"#.defaultAlignment(@)".} # Public
proc setDefaultAlignment*(this: ptr QHeaderView, alignment: Qt_Alignment) {.header:headerFile, importcpp:"#.setDefaultAlignment(@)".} # Public
proc doItemsLayout*(this: ptr QHeaderView) {.header:headerFile, importcpp:"#.doItemsLayout(@)".} # Public
proc sectionsMoved*(this: ptr QHeaderView): bool {.header:headerFile, importcpp:"#.sectionsMoved(@)".} # Public
proc sectionsHidden*(this: ptr QHeaderView): bool {.header:headerFile, importcpp:"#.sectionsHidden(@)".} # Public
import nimqt/qtcore/qbytearray
proc saveState*(this: ptr QHeaderView): QByteArray {.header:headerFile, importcpp:"#.saveState(@)".} # Public
proc restoreState*(this: ptr QHeaderView, state: QByteArray): bool {.header:headerFile, importcpp:"#.restoreState(@)".} # Public
proc reset*(this: ptr QHeaderView) {.header:headerFile, importcpp:"#.reset(@)".} # Public
proc setOffset*(this: ptr QHeaderView, offset: cint) {.header:headerFile, importcpp:"#.setOffset(@)".} # Public
proc setOffsetToSectionPosition*(this: ptr QHeaderView, visualIndex: cint) {.header:headerFile, importcpp:"#.setOffsetToSectionPosition(@)".} # Public
proc setOffsetToLastSection*(this: ptr QHeaderView) {.header:headerFile, importcpp:"#.setOffsetToLastSection(@)".} # Public
proc headerDataChanged*(this: ptr QHeaderView, orientation: Qt_Orientation, logicalFirst: cint, logicalLast: cint) {.header:headerFile, importcpp:"#.headerDataChanged(@)".} # Public
proc sectionMoved*(this: ptr QHeaderView, logicalIndex: cint, oldVisualIndex: cint, newVisualIndex: cint) {.header:headerFile, importcpp:"#.sectionMoved(@)".} # Public
proc sectionResized*(this: ptr QHeaderView, logicalIndex: cint, oldSize: cint, newSize: cint) {.header:headerFile, importcpp:"#.sectionResized(@)".} # Public
proc sectionPressed*(this: ptr QHeaderView, logicalIndex: cint) {.header:headerFile, importcpp:"#.sectionPressed(@)".} # Public
proc sectionClicked*(this: ptr QHeaderView, logicalIndex: cint) {.header:headerFile, importcpp:"#.sectionClicked(@)".} # Public
proc sectionEntered*(this: ptr QHeaderView, logicalIndex: cint) {.header:headerFile, importcpp:"#.sectionEntered(@)".} # Public
proc sectionDoubleClicked*(this: ptr QHeaderView, logicalIndex: cint) {.header:headerFile, importcpp:"#.sectionDoubleClicked(@)".} # Public
proc sectionCountChanged*(this: ptr QHeaderView, oldCount: cint, newCount: cint) {.header:headerFile, importcpp:"#.sectionCountChanged(@)".} # Public
proc sectionHandleDoubleClicked*(this: ptr QHeaderView, logicalIndex: cint) {.header:headerFile, importcpp:"#.sectionHandleDoubleClicked(@)".} # Public
proc geometriesChanged*(this: ptr QHeaderView) {.header:headerFile, importcpp:"#.geometriesChanged(@)".} # Public
proc sortIndicatorChanged*(this: ptr QHeaderView, logicalIndex: cint, order: Qt_SortOrder) {.header:headerFile, importcpp:"#.sortIndicatorChanged(@)".} # Public
proc sortIndicatorClearableChanged*(this: ptr QHeaderView, clearable: bool) {.header:headerFile, importcpp:"#.sortIndicatorClearableChanged(@)".} # Public

# Protected methods methods for QHeaderView
proc updateSection*(this: ptr QHeaderView, logicalIndex: cint) {.header:headerFile, importcpp:"#.updateSection(@)".} # Protected
proc resizeSections*(this: ptr QHeaderView) {.header:headerFile, importcpp:"#.resizeSections(@)".} # Protected
proc sectionsInserted*(this: ptr QHeaderView, parent: QModelIndex, logicalFirst: cint, logicalLast: cint) {.header:headerFile, importcpp:"#.sectionsInserted(@)".} # Protected
proc sectionsAboutToBeRemoved*(this: ptr QHeaderView, parent: QModelIndex, logicalFirst: cint, logicalLast: cint) {.header:headerFile, importcpp:"#.sectionsAboutToBeRemoved(@)".} # Protected
proc initialize*(this: ptr QHeaderView) {.header:headerFile, importcpp:"#.initialize(@)".} # Protected
proc initializeSections*(this: ptr QHeaderView) {.header:headerFile, importcpp:"#.initializeSections(@)".} # Protected
proc initializeSections*(this: ptr QHeaderView, start: cint, `end`: cint) {.header:headerFile, importcpp:"#.initializeSections(@)".} # Protected
proc currentChanged*(this: ptr QHeaderView, current: QModelIndex, old: QModelIndex) {.header:headerFile, importcpp:"#.currentChanged(@)".} # Protected
import nimqt/qtcore/qcoreevent
proc event*(this: ptr QHeaderView, e: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Protected
import nimqt/qtgui/qevent
proc paintEvent*(this: ptr QHeaderView, e: ptr QPaintEvent) {.header:headerFile, importcpp:"#.paintEvent(@)".} # Protected
proc mousePressEvent*(this: ptr QHeaderView, e: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mousePressEvent(@)".} # Protected
proc mouseMoveEvent*(this: ptr QHeaderView, e: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mouseMoveEvent(@)".} # Protected
proc mouseReleaseEvent*(this: ptr QHeaderView, e: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mouseReleaseEvent(@)".} # Protected
proc mouseDoubleClickEvent*(this: ptr QHeaderView, e: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mouseDoubleClickEvent(@)".} # Protected
proc viewportEvent*(this: ptr QHeaderView, e: ptr QEvent): bool {.header:headerFile, importcpp:"#.viewportEvent(@)".} # Protected
import nimqt/qtgui/qpainter
import nimqt/qtcore/qrect
proc paintSection*(this: ptr QHeaderView, painter: ptr QPainter, rect: QRect, logicalIndex: cint) {.header:headerFile, importcpp:"#.paintSection(@)".} # Protected
proc sectionSizeFromContents*(this: ptr QHeaderView, logicalIndex: cint): QSize {.header:headerFile, importcpp:"#.sectionSizeFromContents(@)".} # Protected
proc horizontalOffset*(this: ptr QHeaderView): cint {.header:headerFile, importcpp:"#.horizontalOffset(@)".} # Protected
proc verticalOffset*(this: ptr QHeaderView): cint {.header:headerFile, importcpp:"#.verticalOffset(@)".} # Protected
proc updateGeometries*(this: ptr QHeaderView) {.header:headerFile, importcpp:"#.updateGeometries(@)".} # Protected
proc scrollContentsBy*(this: ptr QHeaderView, dx: cint, dy: cint) {.header:headerFile, importcpp:"#.scrollContentsBy(@)".} # Protected
import nimqt/qtcore/qlist
# 1 default parameters!
proc dataChanged*(this: ptr QHeaderView, topLeft: QModelIndex, bottomRight: QModelIndex, roles: QList[cint]) {.header:headerFile, importcpp:"#.dataChanged(@)".} # Protected
proc dataChanged*(this: ptr QHeaderView, topLeft: QModelIndex, bottomRight: QModelIndex) {.header:headerFile, importcpp:"#.dataChanged(@)".} # Protected
proc rowsInserted*(this: ptr QHeaderView, parent: QModelIndex, start: cint, `end`: cint) {.header:headerFile, importcpp:"#.rowsInserted(@)".} # Protected
proc visualRect*(this: ptr QHeaderView, index: QModelIndex): QRect {.header:headerFile, importcpp:"#.visualRect(@)".} # Protected
proc scrollTo*(this: ptr QHeaderView, index: QModelIndex, hint: QAbstractItemView_ScrollHint) {.header:headerFile, importcpp:"#.scrollTo(@)".} # Protected
proc indexAt*(this: ptr QHeaderView, p: QPoint): QModelIndex {.header:headerFile, importcpp:"#.indexAt(@)".} # Protected
proc isIndexHidden*(this: ptr QHeaderView, index: QModelIndex): bool {.header:headerFile, importcpp:"#.isIndexHidden(@)".} # Protected
proc moveCursor*(this: ptr QHeaderView, arg_1: QAbstractItemView_CursorAction, arg_2: Qt_KeyboardModifiers): QModelIndex {.header:headerFile, importcpp:"#.moveCursor(@)".} # Protected
import nimqt/qtcore/qitemselectionmodel
proc setSelection*(this: ptr QHeaderView, rect: QRect, flags: QItemSelectionModel_SelectionFlags) {.header:headerFile, importcpp:"#.setSelection(@)".} # Protected
import nimqt/qtgui/qregion
proc visualRegionForSelection*(this: ptr QHeaderView, selection: QItemSelection): QRegion {.header:headerFile, importcpp:"#.visualRegionForSelection(@)".} # Protected

export qevent
export qstring
export qsize
export qabstractitemview
export qitemselectionmodel
export qabstractscrollarea
export qnamespace
export qbytearray
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
