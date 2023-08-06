const headerFile* = "QtWidgets/qtreewidget.h"

type
    # Enums found in the C++ code
    # Global
    QTreeWidgetItem_ItemType* {.header:headerFile,importcpp:"QTreeWidgetItem::ItemType".} = enum Type = 0, UserType = 0x3e8
    QTreeWidgetItem_ChildIndicatorPolicy* {.header:headerFile,importcpp:"QTreeWidgetItem::ChildIndicatorPolicy".} = enum ShowIndicator = 0, DontShowIndicator = 0x1, DontShowIndicatorWhenChildless = 0x2

import nimqt/qtwidgets/qtreeview
type
    # Classes found in the C++ code
    QTreeWidgetItem* {.header:headerFile,importcpp:"QTreeWidgetItem" ,pure,inheritable.} = object
    QTreeWidget* {.header:headerFile,importcpp:"QTreeWidget" ,pure.} = object of QTreeView
import nimqt/qtwidgets/qabstractitemview
import nimqt/qtwidgets/qabstractscrollarea
import nimqt/qtwidgets/qframe
import nimqt/qtwidgets/qwidget
import nimqt/qtgui/qpaintdevice


type
    # typedefs found in the C++ code
    QTreeWidget_SelectionMode * = QAbstractItemView_SelectionMode
    QTreeWidget_SelectionBehavior * = QAbstractItemView_SelectionBehavior
    QTreeWidget_ScrollHint * = QAbstractItemView_ScrollHint
    QTreeWidget_EditTrigger * = QAbstractItemView_EditTrigger
    QTreeWidget_ScrollMode * = QAbstractItemView_ScrollMode
    QTreeWidget_DragDropMode * = QAbstractItemView_DragDropMode
    QTreeWidget_CursorAction * = QAbstractItemView_CursorAction
    QTreeWidget_State * = QAbstractItemView_State
    QTreeWidget_DropIndicatorPosition * = QAbstractItemView_DropIndicatorPosition
    QTreeWidget_EditTriggers * = QAbstractItemView_EditTriggers
    QTreeWidget_SizeAdjustPolicy * = QAbstractScrollArea_SizeAdjustPolicy
    QTreeWidget_Shape * = QFrame_Shape
    QTreeWidget_Shadow * = QFrame_Shadow
    QTreeWidget_StyleMask * = QFrame_StyleMask
    QTreeWidget_RenderFlag * = QWidget_RenderFlag
    QTreeWidget_RenderFlags * = QWidget_RenderFlags
    QTreeWidget_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric

# Stuff for class QTreeWidgetItem

# Public constructors for QTreeWidgetItem
# 1 default parameters!
proc newQTreeWidgetItem*(`type`: cint): QTreeWidgetItem {. header:headerFile, importcpp:"QTreeWidgetItem(@)", constructor .} #
proc newQTreeWidgetItem*(): QTreeWidgetItem {. header:headerFile, importcpp:"QTreeWidgetItem(@)", constructor .} #
import nimqt/qtcore/qstringlist
# 1 default parameters!
proc newQTreeWidgetItem*(strings: QStringList, `type`: cint): QTreeWidgetItem {. header:headerFile, importcpp:"QTreeWidgetItem(@)", constructor .} #
proc newQTreeWidgetItem*(strings: QStringList): QTreeWidgetItem {. header:headerFile, importcpp:"QTreeWidgetItem(@)", constructor .} #
# 1 default parameters!
proc newQTreeWidgetItem*(treeview: ptr QTreeWidget, `type`: cint): QTreeWidgetItem {. header:headerFile, importcpp:"QTreeWidgetItem(@)", constructor .} #
proc newQTreeWidgetItem*(treeview: ptr QTreeWidget): QTreeWidgetItem {. header:headerFile, importcpp:"QTreeWidgetItem(@)", constructor .} #
# 1 default parameters!
proc newQTreeWidgetItem*(treeview: ptr QTreeWidget, strings: QStringList, `type`: cint): QTreeWidgetItem {. header:headerFile, importcpp:"QTreeWidgetItem(@)", constructor .} #
proc newQTreeWidgetItem*(treeview: ptr QTreeWidget, strings: QStringList): QTreeWidgetItem {. header:headerFile, importcpp:"QTreeWidgetItem(@)", constructor .} #
# 1 default parameters!
proc newQTreeWidgetItem*(treeview: ptr QTreeWidget, after: ptr QTreeWidgetItem, `type`: cint): QTreeWidgetItem {. header:headerFile, importcpp:"QTreeWidgetItem(@)", constructor .} #
proc newQTreeWidgetItem*(treeview: ptr QTreeWidget, after: ptr QTreeWidgetItem): QTreeWidgetItem {. header:headerFile, importcpp:"QTreeWidgetItem(@)", constructor .} #
# 1 default parameters!
proc newQTreeWidgetItem*(parent: ptr QTreeWidgetItem, `type`: cint): QTreeWidgetItem {. header:headerFile, importcpp:"QTreeWidgetItem(@)", constructor .} #
proc newQTreeWidgetItem*(parent: ptr QTreeWidgetItem): QTreeWidgetItem {. header:headerFile, importcpp:"QTreeWidgetItem(@)", constructor .} #
# 1 default parameters!
proc newQTreeWidgetItem*(parent: ptr QTreeWidgetItem, strings: QStringList, `type`: cint): QTreeWidgetItem {. header:headerFile, importcpp:"QTreeWidgetItem(@)", constructor .} #
proc newQTreeWidgetItem*(parent: ptr QTreeWidgetItem, strings: QStringList): QTreeWidgetItem {. header:headerFile, importcpp:"QTreeWidgetItem(@)", constructor .} #
# 1 default parameters!
proc newQTreeWidgetItem*(parent: ptr QTreeWidgetItem, after: ptr QTreeWidgetItem, `type`: cint): QTreeWidgetItem {. header:headerFile, importcpp:"QTreeWidgetItem(@)", constructor .} #
proc newQTreeWidgetItem*(parent: ptr QTreeWidgetItem, after: ptr QTreeWidgetItem): QTreeWidgetItem {. header:headerFile, importcpp:"QTreeWidgetItem(@)", constructor .} #
proc newQTreeWidgetItem*(other: QTreeWidgetItem): QTreeWidgetItem {. header:headerFile, importcpp:"QTreeWidgetItem(@)", constructor .} #

# Public methods for QTreeWidgetItem
proc clone*(this: QTreeWidgetItem): ptr QTreeWidgetItem {.header:headerFile, importcpp:"#.clone(@)".} # Public
proc treeWidget*(this: QTreeWidgetItem): ptr QTreeWidget {.header:headerFile, importcpp:"#.treeWidget(@)".} # Public
proc setSelected*(this: QTreeWidgetItem, select: bool) {.header:headerFile, importcpp:"#.setSelected(@)".} # Public
proc isSelected*(this: QTreeWidgetItem): bool {.header:headerFile, importcpp:"#.isSelected(@)".} # Public
proc setHidden*(this: QTreeWidgetItem, hide: bool) {.header:headerFile, importcpp:"#.setHidden(@)".} # Public
proc isHidden*(this: QTreeWidgetItem): bool {.header:headerFile, importcpp:"#.isHidden(@)".} # Public
proc setExpanded*(this: QTreeWidgetItem, expand: bool) {.header:headerFile, importcpp:"#.setExpanded(@)".} # Public
proc isExpanded*(this: QTreeWidgetItem): bool {.header:headerFile, importcpp:"#.isExpanded(@)".} # Public
proc setFirstColumnSpanned*(this: QTreeWidgetItem, span: bool) {.header:headerFile, importcpp:"#.setFirstColumnSpanned(@)".} # Public
proc isFirstColumnSpanned*(this: QTreeWidgetItem): bool {.header:headerFile, importcpp:"#.isFirstColumnSpanned(@)".} # Public
proc setDisabled*(this: QTreeWidgetItem, disabled: bool) {.header:headerFile, importcpp:"#.setDisabled(@)".} # Public
proc isDisabled*(this: QTreeWidgetItem): bool {.header:headerFile, importcpp:"#.isDisabled(@)".} # Public
proc setChildIndicatorPolicy*(this: QTreeWidgetItem, policy: QTreeWidgetItem_ChildIndicatorPolicy) {.header:headerFile, importcpp:"#.setChildIndicatorPolicy(@)".} # Public
proc childIndicatorPolicy*(this: QTreeWidgetItem): QTreeWidgetItem_ChildIndicatorPolicy {.header:headerFile, importcpp:"#.childIndicatorPolicy(@)".} # Public
import nimqt/qtcore/qnamespace
proc flags*(this: QTreeWidgetItem): Qt_ItemFlags {.header:headerFile, importcpp:"#.flags(@)".} # Public
proc setFlags*(this: QTreeWidgetItem, flags: Qt_ItemFlags) {.header:headerFile, importcpp:"#.setFlags(@)".} # Public
import nimqt/qtcore/qstring
proc text*(this: QTreeWidgetItem, column: cint): QString {.header:headerFile, importcpp:"#.text(@)".} # Public
proc setText*(this: QTreeWidgetItem, column: cint, text: QString) {.header:headerFile, importcpp:"#.setText(@)".} # Public
import nimqt/qtgui/qicon
proc icon*(this: QTreeWidgetItem, column: cint): QIcon {.header:headerFile, importcpp:"#.icon(@)".} # Public
proc setIcon*(this: QTreeWidgetItem, column: cint, icon: QIcon) {.header:headerFile, importcpp:"#.setIcon(@)".} # Public
proc statusTip*(this: QTreeWidgetItem, column: cint): QString {.header:headerFile, importcpp:"#.statusTip(@)".} # Public
proc setStatusTip*(this: QTreeWidgetItem, column: cint, statusTip: QString) {.header:headerFile, importcpp:"#.setStatusTip(@)".} # Public
proc toolTip*(this: QTreeWidgetItem, column: cint): QString {.header:headerFile, importcpp:"#.toolTip(@)".} # Public
proc setToolTip*(this: QTreeWidgetItem, column: cint, toolTip: QString) {.header:headerFile, importcpp:"#.setToolTip(@)".} # Public
proc whatsThis*(this: QTreeWidgetItem, column: cint): QString {.header:headerFile, importcpp:"#.whatsThis(@)".} # Public
proc setWhatsThis*(this: QTreeWidgetItem, column: cint, whatsThis: QString) {.header:headerFile, importcpp:"#.setWhatsThis(@)".} # Public
import nimqt/qtgui/qfont
proc font*(this: QTreeWidgetItem, column: cint): QFont {.header:headerFile, importcpp:"#.font(@)".} # Public
proc setFont*(this: QTreeWidgetItem, column: cint, font: QFont) {.header:headerFile, importcpp:"#.setFont(@)".} # Public
proc textAlignment*(this: QTreeWidgetItem, column: cint): cint {.header:headerFile, importcpp:"#.textAlignment(@)".} # Public
proc setTextAlignment*(this: QTreeWidgetItem, column: cint, alignment: cint) {.header:headerFile, importcpp:"#.setTextAlignment(@)".} # Public
proc setTextAlignment*(this: QTreeWidgetItem, column: cint, alignment: Qt_AlignmentFlag) {.header:headerFile, importcpp:"#.setTextAlignment(@)".} # Public
proc setTextAlignment*(this: QTreeWidgetItem, column: cint, alignment: Qt_Alignment) {.header:headerFile, importcpp:"#.setTextAlignment(@)".} # Public
import nimqt/qtgui/qbrush
proc background*(this: QTreeWidgetItem, column: cint): QBrush {.header:headerFile, importcpp:"#.background(@)".} # Public
proc setBackground*(this: QTreeWidgetItem, column: cint, brush: QBrush) {.header:headerFile, importcpp:"#.setBackground(@)".} # Public
proc foreground*(this: QTreeWidgetItem, column: cint): QBrush {.header:headerFile, importcpp:"#.foreground(@)".} # Public
proc setForeground*(this: QTreeWidgetItem, column: cint, brush: QBrush) {.header:headerFile, importcpp:"#.setForeground(@)".} # Public
proc checkState*(this: QTreeWidgetItem, column: cint): Qt_CheckState {.header:headerFile, importcpp:"#.checkState(@)".} # Public
proc setCheckState*(this: QTreeWidgetItem, column: cint, state: Qt_CheckState) {.header:headerFile, importcpp:"#.setCheckState(@)".} # Public
import nimqt/qtcore/qsize
proc sizeHint*(this: QTreeWidgetItem, column: cint): QSize {.header:headerFile, importcpp:"#.sizeHint(@)".} # Public
proc setSizeHint*(this: QTreeWidgetItem, column: cint, size: QSize) {.header:headerFile, importcpp:"#.setSizeHint(@)".} # Public
import nimqt/qtcore/qvariant
proc data*(this: QTreeWidgetItem, column: cint, role: cint): QVariant {.header:headerFile, importcpp:"#.data(@)".} # Public
proc setData*(this: QTreeWidgetItem, column: cint, role: cint, value: QVariant) {.header:headerFile, importcpp:"#.setData(@)".} # Public
proc `<`*(this: QTreeWidgetItem, other: QTreeWidgetItem): bool {.header:headerFile, importcpp:"#.operator<(@)".} # Public
import nimqt/qtcore/qdatastream
proc read*(this: QTreeWidgetItem, `in`: QDataStream) {.header:headerFile, importcpp:"#.read(@)".} # Public
proc write*(this: QTreeWidgetItem, `out`: QDataStream) {.header:headerFile, importcpp:"#.write(@)".} # Public
proc parent*(this: QTreeWidgetItem): ptr QTreeWidgetItem {.header:headerFile, importcpp:"#.parent(@)".} # Public
proc child*(this: QTreeWidgetItem, index: cint): ptr QTreeWidgetItem {.header:headerFile, importcpp:"#.child(@)".} # Public
proc childCount*(this: QTreeWidgetItem): cint {.header:headerFile, importcpp:"#.childCount(@)".} # Public
proc columnCount*(this: QTreeWidgetItem): cint {.header:headerFile, importcpp:"#.columnCount(@)".} # Public
proc indexOfChild*(this: QTreeWidgetItem, child: ptr QTreeWidgetItem): cint {.header:headerFile, importcpp:"#.indexOfChild(@)".} # Public
proc addChild*(this: QTreeWidgetItem, child: ptr QTreeWidgetItem) {.header:headerFile, importcpp:"#.addChild(@)".} # Public
proc insertChild*(this: QTreeWidgetItem, index: cint, child: ptr QTreeWidgetItem) {.header:headerFile, importcpp:"#.insertChild(@)".} # Public
proc removeChild*(this: QTreeWidgetItem, child: ptr QTreeWidgetItem) {.header:headerFile, importcpp:"#.removeChild(@)".} # Public
proc takeChild*(this: QTreeWidgetItem, index: cint): ptr QTreeWidgetItem {.header:headerFile, importcpp:"#.takeChild(@)".} # Public
import nimqt/qtcore/qlist
proc addChildren*(this: QTreeWidgetItem, children: QList[ptr QTreeWidgetItem]) {.header:headerFile, importcpp:"#.addChildren(@)".} # Public
proc insertChildren*(this: QTreeWidgetItem, index: cint, children: QList[ptr QTreeWidgetItem]) {.header:headerFile, importcpp:"#.insertChildren(@)".} # Public
proc takeChildren*(this: QTreeWidgetItem): QList[ptr QTreeWidgetItem] {.header:headerFile, importcpp:"#.takeChildren(@)".} # Public
proc `type`*(this: QTreeWidgetItem): cint {.header:headerFile, importcpp:"#.type(@)".} # Public
proc sortChildren*(this: QTreeWidgetItem, column: cint, order: Qt_SortOrder) {.header:headerFile, importcpp:"#.sortChildren(@)".} # Public

# Protected methods methods for QTreeWidgetItem
proc emitDataChanged*(this: QTreeWidgetItem) {.header:headerFile, importcpp:"#.emitDataChanged(@)".} # Protected
# Stuff for class QTreeWidget

# Public constructors for QTreeWidget
# 1 default parameters!
proc newQTreeWidget*(parent: ptr QWidget): ptr QTreeWidget {. header:headerFile, importcpp:"new QTreeWidget(@)" .} #
proc newQTreeWidget*(): ptr QTreeWidget {. header:headerFile, importcpp:"new QTreeWidget(@)" .} #

# Public methods for QTreeWidget
# 1 default parameters!
proc static_QTreeWidget_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QTreeWidget::tr(@)".} # Public static
proc static_QTreeWidget_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QTreeWidget::tr(@)".} # Public static
proc columnCount*(this: ptr QTreeWidget): cint {.header:headerFile, importcpp:"#.columnCount(@)".} # Public
proc setColumnCount*(this: ptr QTreeWidget, columns: cint) {.header:headerFile, importcpp:"#.setColumnCount(@)".} # Public
proc invisibleRootItem*(this: ptr QTreeWidget): ptr QTreeWidgetItem {.header:headerFile, importcpp:"#.invisibleRootItem(@)".} # Public
proc topLevelItem*(this: ptr QTreeWidget, index: cint): ptr QTreeWidgetItem {.header:headerFile, importcpp:"#.topLevelItem(@)".} # Public
proc topLevelItemCount*(this: ptr QTreeWidget): cint {.header:headerFile, importcpp:"#.topLevelItemCount(@)".} # Public
proc insertTopLevelItem*(this: ptr QTreeWidget, index: cint, item: ptr QTreeWidgetItem) {.header:headerFile, importcpp:"#.insertTopLevelItem(@)".} # Public
proc addTopLevelItem*(this: ptr QTreeWidget, item: ptr QTreeWidgetItem) {.header:headerFile, importcpp:"#.addTopLevelItem(@)".} # Public
proc takeTopLevelItem*(this: ptr QTreeWidget, index: cint): ptr QTreeWidgetItem {.header:headerFile, importcpp:"#.takeTopLevelItem(@)".} # Public
proc indexOfTopLevelItem*(this: ptr QTreeWidget, item: ptr QTreeWidgetItem): cint {.header:headerFile, importcpp:"#.indexOfTopLevelItem(@)".} # Public
proc insertTopLevelItems*(this: ptr QTreeWidget, index: cint, items: QList[ptr QTreeWidgetItem]) {.header:headerFile, importcpp:"#.insertTopLevelItems(@)".} # Public
proc addTopLevelItems*(this: ptr QTreeWidget, items: QList[ptr QTreeWidgetItem]) {.header:headerFile, importcpp:"#.addTopLevelItems(@)".} # Public
proc headerItem*(this: ptr QTreeWidget): ptr QTreeWidgetItem {.header:headerFile, importcpp:"#.headerItem(@)".} # Public
proc setHeaderItem*(this: ptr QTreeWidget, item: ptr QTreeWidgetItem) {.header:headerFile, importcpp:"#.setHeaderItem(@)".} # Public
proc setHeaderLabels*(this: ptr QTreeWidget, labels: QStringList) {.header:headerFile, importcpp:"#.setHeaderLabels(@)".} # Public
proc setHeaderLabel*(this: ptr QTreeWidget, label: QString) {.header:headerFile, importcpp:"#.setHeaderLabel(@)".} # Public
proc currentItem*(this: ptr QTreeWidget): ptr QTreeWidgetItem {.header:headerFile, importcpp:"#.currentItem(@)".} # Public
proc currentColumn*(this: ptr QTreeWidget): cint {.header:headerFile, importcpp:"#.currentColumn(@)".} # Public
proc setCurrentItem*(this: ptr QTreeWidget, item: ptr QTreeWidgetItem) {.header:headerFile, importcpp:"#.setCurrentItem(@)".} # Public
proc setCurrentItem*(this: ptr QTreeWidget, item: ptr QTreeWidgetItem, column: cint) {.header:headerFile, importcpp:"#.setCurrentItem(@)".} # Public
import nimqt/qtcore/qitemselectionmodel
proc setCurrentItem*(this: ptr QTreeWidget, item: ptr QTreeWidgetItem, column: cint, command: QItemSelectionModel_SelectionFlags) {.header:headerFile, importcpp:"#.setCurrentItem(@)".} # Public
import nimqt/qtcore/qpoint
proc itemAt*(this: ptr QTreeWidget, p: QPoint): ptr QTreeWidgetItem {.header:headerFile, importcpp:"#.itemAt(@)".} # Public
proc itemAt*(this: ptr QTreeWidget, x: cint, y: cint): ptr QTreeWidgetItem {.header:headerFile, importcpp:"#.itemAt(@)".} # Public
import nimqt/qtcore/qrect
proc visualItemRect*(this: ptr QTreeWidget, item: ptr QTreeWidgetItem): QRect {.header:headerFile, importcpp:"#.visualItemRect(@)".} # Public
proc sortColumn*(this: ptr QTreeWidget): cint {.header:headerFile, importcpp:"#.sortColumn(@)".} # Public
proc sortItems*(this: ptr QTreeWidget, column: cint, order: Qt_SortOrder) {.header:headerFile, importcpp:"#.sortItems(@)".} # Public
# 1 default parameters!
proc editItem*(this: ptr QTreeWidget, item: ptr QTreeWidgetItem, column: cint) {.header:headerFile, importcpp:"#.editItem(@)".} # Public
proc editItem*(this: ptr QTreeWidget, item: ptr QTreeWidgetItem) {.header:headerFile, importcpp:"#.editItem(@)".} # Public
# 1 default parameters!
proc openPersistentEditor*(this: ptr QTreeWidget, item: ptr QTreeWidgetItem, column: cint) {.header:headerFile, importcpp:"#.openPersistentEditor(@)".} # Public
proc openPersistentEditor*(this: ptr QTreeWidget, item: ptr QTreeWidgetItem) {.header:headerFile, importcpp:"#.openPersistentEditor(@)".} # Public
# 1 default parameters!
proc closePersistentEditor*(this: ptr QTreeWidget, item: ptr QTreeWidgetItem, column: cint) {.header:headerFile, importcpp:"#.closePersistentEditor(@)".} # Public
proc closePersistentEditor*(this: ptr QTreeWidget, item: ptr QTreeWidgetItem) {.header:headerFile, importcpp:"#.closePersistentEditor(@)".} # Public
# 1 default parameters!
proc isPersistentEditorOpen*(this: ptr QTreeWidget, item: ptr QTreeWidgetItem, column: cint): bool {.header:headerFile, importcpp:"#.isPersistentEditorOpen(@)".} # Public
proc isPersistentEditorOpen*(this: ptr QTreeWidget, item: ptr QTreeWidgetItem): bool {.header:headerFile, importcpp:"#.isPersistentEditorOpen(@)".} # Public
proc itemWidget*(this: ptr QTreeWidget, item: ptr QTreeWidgetItem, column: cint): ptr QWidget {.header:headerFile, importcpp:"#.itemWidget(@)".} # Public
proc setItemWidget*(this: ptr QTreeWidget, item: ptr QTreeWidgetItem, column: cint, widget: ptr QWidget) {.header:headerFile, importcpp:"#.setItemWidget(@)".} # Public
proc removeItemWidget*(this: ptr QTreeWidget, item: ptr QTreeWidgetItem, column: cint) {.header:headerFile, importcpp:"#.removeItemWidget(@)".} # Public
proc selectedItems*(this: ptr QTreeWidget): QList[ptr QTreeWidgetItem] {.header:headerFile, importcpp:"#.selectedItems(@)".} # Public
# 1 default parameters!
proc findItems*(this: ptr QTreeWidget, text: QString, flags: Qt_MatchFlags, column: cint): QList[ptr QTreeWidgetItem] {.header:headerFile, importcpp:"#.findItems(@)".} # Public
proc findItems*(this: ptr QTreeWidget, text: QString, flags: Qt_MatchFlags): QList[ptr QTreeWidgetItem] {.header:headerFile, importcpp:"#.findItems(@)".} # Public
proc itemAbove*(this: ptr QTreeWidget, item: ptr QTreeWidgetItem): ptr QTreeWidgetItem {.header:headerFile, importcpp:"#.itemAbove(@)".} # Public
proc itemBelow*(this: ptr QTreeWidget, item: ptr QTreeWidgetItem): ptr QTreeWidgetItem {.header:headerFile, importcpp:"#.itemBelow(@)".} # Public
import nimqt/qtcore/qabstractitemmodel
# 1 default parameters!
proc indexFromItem*(this: ptr QTreeWidget, item: ptr QTreeWidgetItem, column: cint): QModelIndex {.header:headerFile, importcpp:"#.indexFromItem(@)".} # Public
proc indexFromItem*(this: ptr QTreeWidget, item: ptr QTreeWidgetItem): QModelIndex {.header:headerFile, importcpp:"#.indexFromItem(@)".} # Public
proc itemFromIndex*(this: ptr QTreeWidget, index: QModelIndex): ptr QTreeWidgetItem {.header:headerFile, importcpp:"#.itemFromIndex(@)".} # Public
proc setSelectionModel*(this: ptr QTreeWidget, selectionModel: ptr QItemSelectionModel) {.header:headerFile, importcpp:"#.setSelectionModel(@)".} # Public
proc scrollToItem*(this: ptr QTreeWidget, item: ptr QTreeWidgetItem, hint: QAbstractItemView_ScrollHint) {.header:headerFile, importcpp:"#.scrollToItem(@)".} # Public
proc expandItem*(this: ptr QTreeWidget, item: ptr QTreeWidgetItem) {.header:headerFile, importcpp:"#.expandItem(@)".} # Public
proc collapseItem*(this: ptr QTreeWidget, item: ptr QTreeWidgetItem) {.header:headerFile, importcpp:"#.collapseItem(@)".} # Public
proc clear*(this: ptr QTreeWidget) {.header:headerFile, importcpp:"#.clear(@)".} # Public
proc itemPressed*(this: ptr QTreeWidget, item: ptr QTreeWidgetItem, column: cint) {.header:headerFile, importcpp:"#.itemPressed(@)".} # Public
proc itemClicked*(this: ptr QTreeWidget, item: ptr QTreeWidgetItem, column: cint) {.header:headerFile, importcpp:"#.itemClicked(@)".} # Public
proc itemDoubleClicked*(this: ptr QTreeWidget, item: ptr QTreeWidgetItem, column: cint) {.header:headerFile, importcpp:"#.itemDoubleClicked(@)".} # Public
proc itemActivated*(this: ptr QTreeWidget, item: ptr QTreeWidgetItem, column: cint) {.header:headerFile, importcpp:"#.itemActivated(@)".} # Public
proc itemEntered*(this: ptr QTreeWidget, item: ptr QTreeWidgetItem, column: cint) {.header:headerFile, importcpp:"#.itemEntered(@)".} # Public
proc itemChanged*(this: ptr QTreeWidget, item: ptr QTreeWidgetItem, column: cint) {.header:headerFile, importcpp:"#.itemChanged(@)".} # Public
proc itemExpanded*(this: ptr QTreeWidget, item: ptr QTreeWidgetItem) {.header:headerFile, importcpp:"#.itemExpanded(@)".} # Public
proc itemCollapsed*(this: ptr QTreeWidget, item: ptr QTreeWidgetItem) {.header:headerFile, importcpp:"#.itemCollapsed(@)".} # Public
proc currentItemChanged*(this: ptr QTreeWidget, current: ptr QTreeWidgetItem, previous: ptr QTreeWidgetItem) {.header:headerFile, importcpp:"#.currentItemChanged(@)".} # Public
proc itemSelectionChanged*(this: ptr QTreeWidget) {.header:headerFile, importcpp:"#.itemSelectionChanged(@)".} # Public

# Protected methods methods for QTreeWidget
import nimqt/qtcore/qcoreevent
proc event*(this: ptr QTreeWidget, e: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Protected
proc mimeTypes*(this: ptr QTreeWidget): QStringList {.header:headerFile, importcpp:"#.mimeTypes(@)".} # Protected
import nimqt/qtcore/qmimedata
proc mimeData*(this: ptr QTreeWidget, items: QList[ptr QTreeWidgetItem]): ptr QMimeData {.header:headerFile, importcpp:"#.mimeData(@)".} # Protected
proc dropMimeData*(this: ptr QTreeWidget, parent: ptr QTreeWidgetItem, index: cint, data: ptr QMimeData, action: Qt_DropAction): bool {.header:headerFile, importcpp:"#.dropMimeData(@)".} # Protected
proc supportedDropActions*(this: ptr QTreeWidget): Qt_DropActions {.header:headerFile, importcpp:"#.supportedDropActions(@)".} # Protected
import nimqt/qtgui/qevent
proc dropEvent*(this: ptr QTreeWidget, event: ptr QDropEvent) {.header:headerFile, importcpp:"#.dropEvent(@)".} # Protected

export qevent
export qfont
export qstringlist
export qstring
export qtreeview
export qdatastream
export qsize
export qabstractitemview
export qitemselectionmodel
export qabstractscrollarea
export qnamespace
export qlist
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
