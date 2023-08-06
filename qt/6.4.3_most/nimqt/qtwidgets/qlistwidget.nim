const headerFile* = "QtWidgets/qlistwidget.h"

type
    # Enums found in the C++ code
    # Global
    QListWidgetItem_ItemType* {.header:headerFile,importcpp:"QListWidgetItem::ItemType".} = enum Type = 0, UserType = 0x3e8

import nimqt/qtwidgets/qlistview
type
    # Classes found in the C++ code
    QListWidgetItem* {.header:headerFile,importcpp:"QListWidgetItem" ,pure,inheritable.} = object
    QListWidget* {.header:headerFile,importcpp:"QListWidget" ,pure.} = object of QListView
import nimqt/qtwidgets/qabstractitemview
import nimqt/qtwidgets/qabstractscrollarea
import nimqt/qtwidgets/qframe
import nimqt/qtwidgets/qwidget
import nimqt/qtgui/qpaintdevice


type
    # typedefs found in the C++ code
    QListWidget_Movement * = QListView_Movement
    QListWidget_Flow * = QListView_Flow
    QListWidget_ResizeMode * = QListView_ResizeMode
    QListWidget_LayoutMode * = QListView_LayoutMode
    QListWidget_ViewMode * = QListView_ViewMode
    QListWidget_SelectionMode * = QAbstractItemView_SelectionMode
    QListWidget_SelectionBehavior * = QAbstractItemView_SelectionBehavior
    QListWidget_ScrollHint * = QAbstractItemView_ScrollHint
    QListWidget_EditTrigger * = QAbstractItemView_EditTrigger
    QListWidget_ScrollMode * = QAbstractItemView_ScrollMode
    QListWidget_DragDropMode * = QAbstractItemView_DragDropMode
    QListWidget_CursorAction * = QAbstractItemView_CursorAction
    QListWidget_State * = QAbstractItemView_State
    QListWidget_DropIndicatorPosition * = QAbstractItemView_DropIndicatorPosition
    QListWidget_EditTriggers * = QAbstractItemView_EditTriggers
    QListWidget_SizeAdjustPolicy * = QAbstractScrollArea_SizeAdjustPolicy
    QListWidget_Shape * = QFrame_Shape
    QListWidget_Shadow * = QFrame_Shadow
    QListWidget_StyleMask * = QFrame_StyleMask
    QListWidget_RenderFlag * = QWidget_RenderFlag
    QListWidget_RenderFlags * = QWidget_RenderFlags
    QListWidget_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric

# Stuff for class QListWidgetItem

# Public constructors for QListWidgetItem
# 2 default parameters!
proc newQListWidgetItem*(listview: ptr QListWidget, `type`: cint): ptr QListWidgetItem {. header:headerFile, importcpp:"new QListWidgetItem(@)" .} #
proc newQListWidgetItem*(listview: ptr QListWidget): ptr QListWidgetItem {. header:headerFile, importcpp:"new QListWidgetItem(@)" .} #
proc newQListWidgetItem*(): ptr QListWidgetItem {. header:headerFile, importcpp:"new QListWidgetItem(@)" .} #
import nimqt/qtcore/qstring
# 2 default parameters!
proc newQListWidgetItem*(text: QString, listview: ptr QListWidget, `type`: cint): ptr QListWidgetItem {. header:headerFile, importcpp:"new QListWidgetItem(@)" .} #
proc newQListWidgetItem*(text: QString, listview: ptr QListWidget): ptr QListWidgetItem {. header:headerFile, importcpp:"new QListWidgetItem(@)" .} #
proc newQListWidgetItem*(text: QString): ptr QListWidgetItem {. header:headerFile, importcpp:"new QListWidgetItem(@)" .} #
import nimqt/qtgui/qicon
# 2 default parameters!
proc newQListWidgetItem*(icon: QIcon, text: QString, listview: ptr QListWidget, `type`: cint): ptr QListWidgetItem {. header:headerFile, importcpp:"new QListWidgetItem(@)" .} #
proc newQListWidgetItem*(icon: QIcon, text: QString, listview: ptr QListWidget): ptr QListWidgetItem {. header:headerFile, importcpp:"new QListWidgetItem(@)" .} #
proc newQListWidgetItem*(icon: QIcon, text: QString): ptr QListWidgetItem {. header:headerFile, importcpp:"new QListWidgetItem(@)" .} #
proc newQListWidgetItem*(other: QListWidgetItem): ptr QListWidgetItem {. header:headerFile, importcpp:"new QListWidgetItem(@)" .} #

# Public methods for QListWidgetItem
proc clone*(this: ptr QListWidgetItem): ptr QListWidgetItem {.header:headerFile, importcpp:"#.clone(@)".} # Public
proc listWidget*(this: ptr QListWidgetItem): ptr QListWidget {.header:headerFile, importcpp:"#.listWidget(@)".} # Public
proc setSelected*(this: ptr QListWidgetItem, select: bool) {.header:headerFile, importcpp:"#.setSelected(@)".} # Public
proc isSelected*(this: ptr QListWidgetItem): bool {.header:headerFile, importcpp:"#.isSelected(@)".} # Public
proc setHidden*(this: ptr QListWidgetItem, hide: bool) {.header:headerFile, importcpp:"#.setHidden(@)".} # Public
proc isHidden*(this: ptr QListWidgetItem): bool {.header:headerFile, importcpp:"#.isHidden(@)".} # Public
import nimqt/qtcore/qnamespace
proc flags*(this: ptr QListWidgetItem): Qt_ItemFlags {.header:headerFile, importcpp:"#.flags(@)".} # Public
proc setFlags*(this: ptr QListWidgetItem, flags: Qt_ItemFlags) {.header:headerFile, importcpp:"#.setFlags(@)".} # Public
proc text*(this: ptr QListWidgetItem): QString {.header:headerFile, importcpp:"#.text(@)".} # Public
proc setText*(this: ptr QListWidgetItem, text: QString) {.header:headerFile, importcpp:"#.setText(@)".} # Public
proc icon*(this: ptr QListWidgetItem): QIcon {.header:headerFile, importcpp:"#.icon(@)".} # Public
proc setIcon*(this: ptr QListWidgetItem, icon: QIcon) {.header:headerFile, importcpp:"#.setIcon(@)".} # Public
proc statusTip*(this: ptr QListWidgetItem): QString {.header:headerFile, importcpp:"#.statusTip(@)".} # Public
proc setStatusTip*(this: ptr QListWidgetItem, statusTip: QString) {.header:headerFile, importcpp:"#.setStatusTip(@)".} # Public
proc toolTip*(this: ptr QListWidgetItem): QString {.header:headerFile, importcpp:"#.toolTip(@)".} # Public
proc setToolTip*(this: ptr QListWidgetItem, toolTip: QString) {.header:headerFile, importcpp:"#.setToolTip(@)".} # Public
proc whatsThis*(this: ptr QListWidgetItem): QString {.header:headerFile, importcpp:"#.whatsThis(@)".} # Public
proc setWhatsThis*(this: ptr QListWidgetItem, whatsThis: QString) {.header:headerFile, importcpp:"#.setWhatsThis(@)".} # Public
import nimqt/qtgui/qfont
proc font*(this: ptr QListWidgetItem): QFont {.header:headerFile, importcpp:"#.font(@)".} # Public
proc setFont*(this: ptr QListWidgetItem, font: QFont) {.header:headerFile, importcpp:"#.setFont(@)".} # Public
proc textAlignment*(this: ptr QListWidgetItem): cint {.header:headerFile, importcpp:"#.textAlignment(@)".} # Public
proc setTextAlignment*(this: ptr QListWidgetItem, alignment: cint) {.header:headerFile, importcpp:"#.setTextAlignment(@)".} # Public
proc setTextAlignment*(this: ptr QListWidgetItem, alignment: Qt_AlignmentFlag) {.header:headerFile, importcpp:"#.setTextAlignment(@)".} # Public
proc setTextAlignment*(this: ptr QListWidgetItem, alignment: Qt_Alignment) {.header:headerFile, importcpp:"#.setTextAlignment(@)".} # Public
import nimqt/qtgui/qbrush
proc background*(this: ptr QListWidgetItem): QBrush {.header:headerFile, importcpp:"#.background(@)".} # Public
proc setBackground*(this: ptr QListWidgetItem, brush: QBrush) {.header:headerFile, importcpp:"#.setBackground(@)".} # Public
proc foreground*(this: ptr QListWidgetItem): QBrush {.header:headerFile, importcpp:"#.foreground(@)".} # Public
proc setForeground*(this: ptr QListWidgetItem, brush: QBrush) {.header:headerFile, importcpp:"#.setForeground(@)".} # Public
proc checkState*(this: ptr QListWidgetItem): Qt_CheckState {.header:headerFile, importcpp:"#.checkState(@)".} # Public
proc setCheckState*(this: ptr QListWidgetItem, state: Qt_CheckState) {.header:headerFile, importcpp:"#.setCheckState(@)".} # Public
import nimqt/qtcore/qsize
proc sizeHint*(this: ptr QListWidgetItem): QSize {.header:headerFile, importcpp:"#.sizeHint(@)".} # Public
proc setSizeHint*(this: ptr QListWidgetItem, size: QSize) {.header:headerFile, importcpp:"#.setSizeHint(@)".} # Public
import nimqt/qtcore/qvariant
proc data*(this: ptr QListWidgetItem, role: cint): QVariant {.header:headerFile, importcpp:"#.data(@)".} # Public
proc setData*(this: ptr QListWidgetItem, role: cint, value: QVariant) {.header:headerFile, importcpp:"#.setData(@)".} # Public
proc `<`*(this: ptr QListWidgetItem, other: QListWidgetItem): bool {.header:headerFile, importcpp:"#.operator<(@)".} # Public
import nimqt/qtcore/qdatastream
proc read*(this: ptr QListWidgetItem, `in`: QDataStream) {.header:headerFile, importcpp:"#.read(@)".} # Public
proc write*(this: ptr QListWidgetItem, `out`: QDataStream) {.header:headerFile, importcpp:"#.write(@)".} # Public
proc `type`*(this: ptr QListWidgetItem): cint {.header:headerFile, importcpp:"#.type(@)".} # Public
# Stuff for class QListWidget

# Public constructors for QListWidget
# 1 default parameters!
proc newQListWidget*(parent: ptr QWidget): ptr QListWidget {. header:headerFile, importcpp:"new QListWidget(@)" .} #
proc newQListWidget*(): ptr QListWidget {. header:headerFile, importcpp:"new QListWidget(@)" .} #

# Public methods for QListWidget
# 1 default parameters!
proc static_QListWidget_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QListWidget::tr(@)".} # Public static
proc static_QListWidget_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QListWidget::tr(@)".} # Public static
import nimqt/qtcore/qitemselectionmodel
proc setSelectionModel*(this: ptr QListWidget, selectionModel: ptr QItemSelectionModel) {.header:headerFile, importcpp:"#.setSelectionModel(@)".} # Public
proc item*(this: ptr QListWidget, row: cint): ptr QListWidgetItem {.header:headerFile, importcpp:"#.item(@)".} # Public
proc row*(this: ptr QListWidget, item: ptr QListWidgetItem): cint {.header:headerFile, importcpp:"#.row(@)".} # Public
proc insertItem*(this: ptr QListWidget, row: cint, item: ptr QListWidgetItem) {.header:headerFile, importcpp:"#.insertItem(@)".} # Public
proc insertItem*(this: ptr QListWidget, row: cint, label: QString) {.header:headerFile, importcpp:"#.insertItem(@)".} # Public
import nimqt/qtcore/qstringlist
proc insertItems*(this: ptr QListWidget, row: cint, labels: QStringList) {.header:headerFile, importcpp:"#.insertItems(@)".} # Public
proc addItem*(this: ptr QListWidget, label: QString) {.header:headerFile, importcpp:"#.addItem(@)".} # Public
proc addItem*(this: ptr QListWidget, item: ptr QListWidgetItem) {.header:headerFile, importcpp:"#.addItem(@)".} # Public
proc addItems*(this: ptr QListWidget, labels: QStringList) {.header:headerFile, importcpp:"#.addItems(@)".} # Public
proc takeItem*(this: ptr QListWidget, row: cint): ptr QListWidgetItem {.header:headerFile, importcpp:"#.takeItem(@)".} # Public
proc count*(this: ptr QListWidget): cint {.header:headerFile, importcpp:"#.count(@)".} # Public
proc currentItem*(this: ptr QListWidget): ptr QListWidgetItem {.header:headerFile, importcpp:"#.currentItem(@)".} # Public
proc setCurrentItem*(this: ptr QListWidget, item: ptr QListWidgetItem) {.header:headerFile, importcpp:"#.setCurrentItem(@)".} # Public
proc setCurrentItem*(this: ptr QListWidget, item: ptr QListWidgetItem, command: QItemSelectionModel_SelectionFlags) {.header:headerFile, importcpp:"#.setCurrentItem(@)".} # Public
proc currentRow*(this: ptr QListWidget): cint {.header:headerFile, importcpp:"#.currentRow(@)".} # Public
proc setCurrentRow*(this: ptr QListWidget, row: cint) {.header:headerFile, importcpp:"#.setCurrentRow(@)".} # Public
proc setCurrentRow*(this: ptr QListWidget, row: cint, command: QItemSelectionModel_SelectionFlags) {.header:headerFile, importcpp:"#.setCurrentRow(@)".} # Public
import nimqt/qtcore/qpoint
proc itemAt*(this: ptr QListWidget, p: QPoint): ptr QListWidgetItem {.header:headerFile, importcpp:"#.itemAt(@)".} # Public
proc itemAt*(this: ptr QListWidget, x: cint, y: cint): ptr QListWidgetItem {.header:headerFile, importcpp:"#.itemAt(@)".} # Public
import nimqt/qtcore/qrect
proc visualItemRect*(this: ptr QListWidget, item: ptr QListWidgetItem): QRect {.header:headerFile, importcpp:"#.visualItemRect(@)".} # Public
proc sortItems*(this: ptr QListWidget, order: Qt_SortOrder) {.header:headerFile, importcpp:"#.sortItems(@)".} # Public
proc setSortingEnabled*(this: ptr QListWidget, enable: bool) {.header:headerFile, importcpp:"#.setSortingEnabled(@)".} # Public
proc isSortingEnabled*(this: ptr QListWidget): bool {.header:headerFile, importcpp:"#.isSortingEnabled(@)".} # Public
proc editItem*(this: ptr QListWidget, item: ptr QListWidgetItem) {.header:headerFile, importcpp:"#.editItem(@)".} # Public
proc openPersistentEditor*(this: ptr QListWidget, item: ptr QListWidgetItem) {.header:headerFile, importcpp:"#.openPersistentEditor(@)".} # Public
proc closePersistentEditor*(this: ptr QListWidget, item: ptr QListWidgetItem) {.header:headerFile, importcpp:"#.closePersistentEditor(@)".} # Public
proc isPersistentEditorOpen*(this: ptr QListWidget, item: ptr QListWidgetItem): bool {.header:headerFile, importcpp:"#.isPersistentEditorOpen(@)".} # Public
proc itemWidget*(this: ptr QListWidget, item: ptr QListWidgetItem): ptr QWidget {.header:headerFile, importcpp:"#.itemWidget(@)".} # Public
proc setItemWidget*(this: ptr QListWidget, item: ptr QListWidgetItem, widget: ptr QWidget) {.header:headerFile, importcpp:"#.setItemWidget(@)".} # Public
proc removeItemWidget*(this: ptr QListWidget, item: ptr QListWidgetItem) {.header:headerFile, importcpp:"#.removeItemWidget(@)".} # Public
import nimqt/qtcore/qlist
proc selectedItems*(this: ptr QListWidget): QList[ptr QListWidgetItem] {.header:headerFile, importcpp:"#.selectedItems(@)".} # Public
proc findItems*(this: ptr QListWidget, text: QString, flags: Qt_MatchFlags): QList[ptr QListWidgetItem] {.header:headerFile, importcpp:"#.findItems(@)".} # Public
import nimqt/qtcore/qmimedata
proc items*(this: ptr QListWidget, data: ptr QMimeData): QList[ptr QListWidgetItem] {.header:headerFile, importcpp:"#.items(@)".} # Public
import nimqt/qtcore/qabstractitemmodel
proc indexFromItem*(this: ptr QListWidget, item: ptr QListWidgetItem): QModelIndex {.header:headerFile, importcpp:"#.indexFromItem(@)".} # Public
proc itemFromIndex*(this: ptr QListWidget, index: QModelIndex): ptr QListWidgetItem {.header:headerFile, importcpp:"#.itemFromIndex(@)".} # Public
proc scrollToItem*(this: ptr QListWidget, item: ptr QListWidgetItem, hint: QAbstractItemView_ScrollHint) {.header:headerFile, importcpp:"#.scrollToItem(@)".} # Public
proc clear*(this: ptr QListWidget) {.header:headerFile, importcpp:"#.clear(@)".} # Public
proc itemPressed*(this: ptr QListWidget, item: ptr QListWidgetItem) {.header:headerFile, importcpp:"#.itemPressed(@)".} # Public
proc itemClicked*(this: ptr QListWidget, item: ptr QListWidgetItem) {.header:headerFile, importcpp:"#.itemClicked(@)".} # Public
proc itemDoubleClicked*(this: ptr QListWidget, item: ptr QListWidgetItem) {.header:headerFile, importcpp:"#.itemDoubleClicked(@)".} # Public
proc itemActivated*(this: ptr QListWidget, item: ptr QListWidgetItem) {.header:headerFile, importcpp:"#.itemActivated(@)".} # Public
proc itemEntered*(this: ptr QListWidget, item: ptr QListWidgetItem) {.header:headerFile, importcpp:"#.itemEntered(@)".} # Public
proc itemChanged*(this: ptr QListWidget, item: ptr QListWidgetItem) {.header:headerFile, importcpp:"#.itemChanged(@)".} # Public
proc currentItemChanged*(this: ptr QListWidget, current: ptr QListWidgetItem, previous: ptr QListWidgetItem) {.header:headerFile, importcpp:"#.currentItemChanged(@)".} # Public
proc currentTextChanged*(this: ptr QListWidget, currentText: QString) {.header:headerFile, importcpp:"#.currentTextChanged(@)".} # Public
proc currentRowChanged*(this: ptr QListWidget, currentRow: cint) {.header:headerFile, importcpp:"#.currentRowChanged(@)".} # Public
proc itemSelectionChanged*(this: ptr QListWidget) {.header:headerFile, importcpp:"#.itemSelectionChanged(@)".} # Public

# Protected methods methods for QListWidget
import nimqt/qtgui/qevent
proc dropEvent*(this: ptr QListWidget, event: ptr QDropEvent) {.header:headerFile, importcpp:"#.dropEvent(@)".} # Protected
import nimqt/qtcore/qcoreevent
proc event*(this: ptr QListWidget, e: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Protected
proc mimeTypes*(this: ptr QListWidget): QStringList {.header:headerFile, importcpp:"#.mimeTypes(@)".} # Protected
proc mimeData*(this: ptr QListWidget, items: QList[ptr QListWidgetItem]): ptr QMimeData {.header:headerFile, importcpp:"#.mimeData(@)".} # Protected
proc dropMimeData*(this: ptr QListWidget, index: cint, data: ptr QMimeData, action: Qt_DropAction): bool {.header:headerFile, importcpp:"#.dropMimeData(@)".} # Protected
proc supportedDropActions*(this: ptr QListWidget): Qt_DropActions {.header:headerFile, importcpp:"#.supportedDropActions(@)".} # Protected

export qevent
export qfont
export qstringlist
export qstring
export qdatastream
export qsize
export qabstractitemview
export qitemselectionmodel
export qabstractscrollarea
export qnamespace
export qlist
export qlistview
export qabstractitemmodel
export qbrush
export qmimedata
export qvariant
export qpoint
export qwidget
export qrect
export qpaintdevice
export qcoreevent
export qframe
export qicon
