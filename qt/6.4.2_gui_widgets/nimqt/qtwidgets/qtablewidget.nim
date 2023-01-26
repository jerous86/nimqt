const headerFile* = "QtWidgets/qtablewidget.h"

import nimqt/qtwidgets/qtableview
# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}


type
    # Classes and enums found in the C++ code
    # Global
    QTableWidgetItem_ItemType* {.header:headerFile,importcpp:"QTableWidgetItem::ItemType".} = enum Type = 0, UserType = 0x1
    QTableWidgetSelectionRange* {.header:headerFile,importcpp:"QTableWidgetSelectionRange" ,pure.} = object {.inheritable.}
    QTableWidgetItem* {.header:headerFile,importcpp:"QTableWidgetItem" ,pure.} = object {.inheritable.}
    QTableWidget* {.header:headerFile,importcpp:"QTableWidget" ,pure.} = object of QTableView
{.push warning[Deprecated]: on.}
import nimqt/qtwidgets/qabstractitemview
import nimqt/qtwidgets/qabstractscrollarea
import nimqt/qtwidgets/qframe
import nimqt/qtwidgets/qwidget
import nimqt/qtgui/qpaintdevice


type
    # typedefs found in the C++ code
    QTableWidget_SelectionMode * = QAbstractItemView_SelectionMode
    QTableWidget_SelectionBehavior * = QAbstractItemView_SelectionBehavior
    QTableWidget_ScrollHint * = QAbstractItemView_ScrollHint
    QTableWidget_EditTrigger * = QAbstractItemView_EditTrigger
    QTableWidget_ScrollMode * = QAbstractItemView_ScrollMode
    QTableWidget_DragDropMode * = QAbstractItemView_DragDropMode
    QTableWidget_CursorAction * = QAbstractItemView_CursorAction
    QTableWidget_State * = QAbstractItemView_State
    QTableWidget_DropIndicatorPosition * = QAbstractItemView_DropIndicatorPosition
    QTableWidget_EditTriggers * = QAbstractItemView_EditTriggers
    QTableWidget_SizeAdjustPolicy * = QAbstractScrollArea_SizeAdjustPolicy
    QTableWidget_Shape * = QFrame_Shape
    QTableWidget_Shadow * = QFrame_Shadow
    QTableWidget_StyleMask * = QFrame_StyleMask
    QTableWidget_RenderFlag * = QWidget_RenderFlag
    QTableWidget_RenderFlags * = QWidget_RenderFlags
    QTableWidget_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric

# Stuff for class QTableWidgetSelectionRange

# Public constructors for QTableWidgetSelectionRange
proc newQTableWidgetSelectionRange*(): QTableWidgetSelectionRange {. header:headerFile, importcpp:"QTableWidgetSelectionRange(@)", constructor .} #
proc newQTableWidgetSelectionRange*(top: cint, left: cint, bottom: cint, right: cint): QTableWidgetSelectionRange {. header:headerFile, importcpp:"QTableWidgetSelectionRange(@)", constructor .} #

# Public methods for QTableWidgetSelectionRange
proc topRow*(this: QTableWidgetSelectionRange): cint {.header:headerFile, importcpp:"#.topRow(@)".} # Public
proc bottomRow*(this: QTableWidgetSelectionRange): cint {.header:headerFile, importcpp:"#.bottomRow(@)".} # Public
proc leftColumn*(this: QTableWidgetSelectionRange): cint {.header:headerFile, importcpp:"#.leftColumn(@)".} # Public
proc rightColumn*(this: QTableWidgetSelectionRange): cint {.header:headerFile, importcpp:"#.rightColumn(@)".} # Public
proc rowCount*(this: QTableWidgetSelectionRange): cint {.header:headerFile, importcpp:"#.rowCount(@)".} # Public
proc columnCount*(this: QTableWidgetSelectionRange): cint {.header:headerFile, importcpp:"#.columnCount(@)".} # Public
# Stuff for class QTableWidgetItem

# Public constructors for QTableWidgetItem
# 1 default parameters!
proc newQTableWidgetItem*(`type`: cint): QTableWidgetItem {. header:headerFile, importcpp:"QTableWidgetItem(@)", constructor .} #
proc newQTableWidgetItem*(): QTableWidgetItem {. header:headerFile, importcpp:"QTableWidgetItem(@)", constructor .} #
import nimqt/qtcore/qstring
# 1 default parameters!
proc newQTableWidgetItem*(text: QString, `type`: cint): QTableWidgetItem {. header:headerFile, importcpp:"QTableWidgetItem(@)", constructor .} #
proc newQTableWidgetItem*(text: QString): QTableWidgetItem {. header:headerFile, importcpp:"QTableWidgetItem(@)", constructor .} #
import nimqt/qtgui/qicon
# 1 default parameters!
proc newQTableWidgetItem*(icon: QIcon, text: QString, `type`: cint): QTableWidgetItem {. header:headerFile, importcpp:"QTableWidgetItem(@)", constructor .} #
proc newQTableWidgetItem*(icon: QIcon, text: QString): QTableWidgetItem {. header:headerFile, importcpp:"QTableWidgetItem(@)", constructor .} #
proc newQTableWidgetItem*(other: QTableWidgetItem): QTableWidgetItem {. header:headerFile, importcpp:"QTableWidgetItem(@)", constructor .} #

# Public methods for QTableWidgetItem
proc clone*(this: QTableWidgetItem): ptr QTableWidgetItem {.header:headerFile, importcpp:"#.clone(@)".} # Public
proc tableWidget*(this: QTableWidgetItem): ptr QTableWidget {.header:headerFile, importcpp:"#.tableWidget(@)".} # Public
proc row*(this: QTableWidgetItem): cint {.header:headerFile, importcpp:"#.row(@)".} # Public
proc column*(this: QTableWidgetItem): cint {.header:headerFile, importcpp:"#.column(@)".} # Public
proc setSelected*(this: QTableWidgetItem, select: bool) {.header:headerFile, importcpp:"#.setSelected(@)".} # Public
proc isSelected*(this: QTableWidgetItem): bool {.header:headerFile, importcpp:"#.isSelected(@)".} # Public
import nimqt/qtcore/qnamespace
proc flags*(this: QTableWidgetItem): Qt_ItemFlags {.header:headerFile, importcpp:"#.flags(@)".} # Public
proc setFlags*(this: QTableWidgetItem, flags: Qt_ItemFlags) {.header:headerFile, importcpp:"#.setFlags(@)".} # Public
proc text*(this: QTableWidgetItem): QString {.header:headerFile, importcpp:"#.text(@)".} # Public
proc setText*(this: QTableWidgetItem, text: QString) {.header:headerFile, importcpp:"#.setText(@)".} # Public
proc icon*(this: QTableWidgetItem): QIcon {.header:headerFile, importcpp:"#.icon(@)".} # Public
proc setIcon*(this: QTableWidgetItem, icon: QIcon) {.header:headerFile, importcpp:"#.setIcon(@)".} # Public
proc statusTip*(this: QTableWidgetItem): QString {.header:headerFile, importcpp:"#.statusTip(@)".} # Public
proc setStatusTip*(this: QTableWidgetItem, statusTip: QString) {.header:headerFile, importcpp:"#.setStatusTip(@)".} # Public
proc toolTip*(this: QTableWidgetItem): QString {.header:headerFile, importcpp:"#.toolTip(@)".} # Public
proc setToolTip*(this: QTableWidgetItem, toolTip: QString) {.header:headerFile, importcpp:"#.setToolTip(@)".} # Public
proc whatsThis*(this: QTableWidgetItem): QString {.header:headerFile, importcpp:"#.whatsThis(@)".} # Public
proc setWhatsThis*(this: QTableWidgetItem, whatsThis: QString) {.header:headerFile, importcpp:"#.setWhatsThis(@)".} # Public
import nimqt/qtgui/qfont
proc font*(this: QTableWidgetItem): QFont {.header:headerFile, importcpp:"#.font(@)".} # Public
proc setFont*(this: QTableWidgetItem, font: QFont) {.header:headerFile, importcpp:"#.setFont(@)".} # Public
proc textAlignment*(this: QTableWidgetItem): cint {.header:headerFile, importcpp:"#.textAlignment(@)".} # Public
proc setTextAlignment*(this: QTableWidgetItem, alignment: cint) {.header:headerFile, importcpp:"#.setTextAlignment(@)".} # Public
proc setTextAlignment*(this: QTableWidgetItem, alignment: Qt_AlignmentFlag) {.header:headerFile, importcpp:"#.setTextAlignment(@)".} # Public
proc setTextAlignment*(this: QTableWidgetItem, alignment: Qt_Alignment) {.header:headerFile, importcpp:"#.setTextAlignment(@)".} # Public
import nimqt/qtgui/qbrush
proc background*(this: QTableWidgetItem): QBrush {.header:headerFile, importcpp:"#.background(@)".} # Public
proc setBackground*(this: QTableWidgetItem, brush: QBrush) {.header:headerFile, importcpp:"#.setBackground(@)".} # Public
proc foreground*(this: QTableWidgetItem): QBrush {.header:headerFile, importcpp:"#.foreground(@)".} # Public
proc setForeground*(this: QTableWidgetItem, brush: QBrush) {.header:headerFile, importcpp:"#.setForeground(@)".} # Public
proc checkState*(this: QTableWidgetItem): Qt_CheckState {.header:headerFile, importcpp:"#.checkState(@)".} # Public
proc setCheckState*(this: QTableWidgetItem, state: Qt_CheckState) {.header:headerFile, importcpp:"#.setCheckState(@)".} # Public
proc `<`*(this: QTableWidgetItem, other: QTableWidgetItem): bool {.header:headerFile, importcpp:"#.operator<(@)".} # Public
proc `type`*(this: QTableWidgetItem): cint {.header:headerFile, importcpp:"#.type(@)".} # Public
# Stuff for class QTableWidget

# Public constructors for QTableWidget
# 1 default parameters!
proc newQTableWidget*(parent: ptr QWidget): ptr QTableWidget {. header:headerFile, importcpp:"new QTableWidget(@)" .} #
proc newQTableWidget*(): ptr QTableWidget {. header:headerFile, importcpp:"new QTableWidget(@)" .} #
# 1 default parameters!
proc newQTableWidget*(rows: cint, columns: cint, parent: ptr QWidget): ptr QTableWidget {. header:headerFile, importcpp:"new QTableWidget(@)" .} #
proc newQTableWidget*(rows: cint, columns: cint): ptr QTableWidget {. header:headerFile, importcpp:"new QTableWidget(@)" .} #

# Public methods for QTableWidget
# 1 default parameters!
proc static_QTableWidget_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QTableWidget::tr(@)".} # Public static
proc static_QTableWidget_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QTableWidget::tr(@)".} # Public static
proc setRowCount*(this: ptr QTableWidget, rows: cint) {.header:headerFile, importcpp:"#.setRowCount(@)".} # Public
proc rowCount*(this: ptr QTableWidget): cint {.header:headerFile, importcpp:"#.rowCount(@)".} # Public
proc setColumnCount*(this: ptr QTableWidget, columns: cint) {.header:headerFile, importcpp:"#.setColumnCount(@)".} # Public
proc columnCount*(this: ptr QTableWidget): cint {.header:headerFile, importcpp:"#.columnCount(@)".} # Public
proc row*(this: ptr QTableWidget, item: ptr QTableWidgetItem): cint {.header:headerFile, importcpp:"#.row(@)".} # Public
proc column*(this: ptr QTableWidget, item: ptr QTableWidgetItem): cint {.header:headerFile, importcpp:"#.column(@)".} # Public
proc item*(this: ptr QTableWidget, row: cint, column: cint): ptr QTableWidgetItem {.header:headerFile, importcpp:"#.item(@)".} # Public
proc setItem*(this: ptr QTableWidget, row: cint, column: cint, item: ptr QTableWidgetItem) {.header:headerFile, importcpp:"#.setItem(@)".} # Public
proc takeItem*(this: ptr QTableWidget, row: cint, column: cint): ptr QTableWidgetItem {.header:headerFile, importcpp:"#.takeItem(@)".} # Public
import nimqt/qtcore/qabstractitemmodel
proc indexFromItem*(this: ptr QTableWidget, item: ptr QTableWidgetItem): QModelIndex {.header:headerFile, importcpp:"#.indexFromItem(@)".} # Public
proc itemFromIndex*(this: ptr QTableWidget, index: QModelIndex): ptr QTableWidgetItem {.header:headerFile, importcpp:"#.itemFromIndex(@)".} # Public
proc verticalHeaderItem*(this: ptr QTableWidget, row: cint): ptr QTableWidgetItem {.header:headerFile, importcpp:"#.verticalHeaderItem(@)".} # Public
proc setVerticalHeaderItem*(this: ptr QTableWidget, row: cint, item: ptr QTableWidgetItem) {.header:headerFile, importcpp:"#.setVerticalHeaderItem(@)".} # Public
proc takeVerticalHeaderItem*(this: ptr QTableWidget, row: cint): ptr QTableWidgetItem {.header:headerFile, importcpp:"#.takeVerticalHeaderItem(@)".} # Public
proc horizontalHeaderItem*(this: ptr QTableWidget, column: cint): ptr QTableWidgetItem {.header:headerFile, importcpp:"#.horizontalHeaderItem(@)".} # Public
proc setHorizontalHeaderItem*(this: ptr QTableWidget, column: cint, item: ptr QTableWidgetItem) {.header:headerFile, importcpp:"#.setHorizontalHeaderItem(@)".} # Public
proc takeHorizontalHeaderItem*(this: ptr QTableWidget, column: cint): ptr QTableWidgetItem {.header:headerFile, importcpp:"#.takeHorizontalHeaderItem(@)".} # Public
proc currentRow*(this: ptr QTableWidget): cint {.header:headerFile, importcpp:"#.currentRow(@)".} # Public
proc currentColumn*(this: ptr QTableWidget): cint {.header:headerFile, importcpp:"#.currentColumn(@)".} # Public
proc currentItem*(this: ptr QTableWidget): ptr QTableWidgetItem {.header:headerFile, importcpp:"#.currentItem(@)".} # Public
proc setCurrentItem*(this: ptr QTableWidget, item: ptr QTableWidgetItem) {.header:headerFile, importcpp:"#.setCurrentItem(@)".} # Public
proc setCurrentCell*(this: ptr QTableWidget, row: cint, column: cint) {.header:headerFile, importcpp:"#.setCurrentCell(@)".} # Public
proc sortItems*(this: ptr QTableWidget, column: cint, order: Qt_SortOrder) {.header:headerFile, importcpp:"#.sortItems(@)".} # Public
proc setSortingEnabled*(this: ptr QTableWidget, enable: bool) {.header:headerFile, importcpp:"#.setSortingEnabled(@)".} # Public
proc isSortingEnabled*(this: ptr QTableWidget): bool {.header:headerFile, importcpp:"#.isSortingEnabled(@)".} # Public
proc editItem*(this: ptr QTableWidget, item: ptr QTableWidgetItem) {.header:headerFile, importcpp:"#.editItem(@)".} # Public
proc openPersistentEditor*(this: ptr QTableWidget, item: ptr QTableWidgetItem) {.header:headerFile, importcpp:"#.openPersistentEditor(@)".} # Public
proc closePersistentEditor*(this: ptr QTableWidget, item: ptr QTableWidgetItem) {.header:headerFile, importcpp:"#.closePersistentEditor(@)".} # Public
proc isPersistentEditorOpen*(this: ptr QTableWidget, item: ptr QTableWidgetItem): bool {.header:headerFile, importcpp:"#.isPersistentEditorOpen(@)".} # Public
proc cellWidget*(this: ptr QTableWidget, row: cint, column: cint): ptr QWidget {.header:headerFile, importcpp:"#.cellWidget(@)".} # Public
proc setCellWidget*(this: ptr QTableWidget, row: cint, column: cint, widget: ptr QWidget) {.header:headerFile, importcpp:"#.setCellWidget(@)".} # Public
proc removeCellWidget*(this: ptr QTableWidget, row: cint, column: cint) {.header:headerFile, importcpp:"#.removeCellWidget(@)".} # Public
proc setRangeSelected*(this: ptr QTableWidget, range: QTableWidgetSelectionRange, select: bool) {.header:headerFile, importcpp:"#.setRangeSelected(@)".} # Public
proc visualRow*(this: ptr QTableWidget, logicalRow: cint): cint {.header:headerFile, importcpp:"#.visualRow(@)".} # Public
proc visualColumn*(this: ptr QTableWidget, logicalColumn: cint): cint {.header:headerFile, importcpp:"#.visualColumn(@)".} # Public
proc itemAt*(this: ptr QTableWidget, x: cint, y: cint): ptr QTableWidgetItem {.header:headerFile, importcpp:"#.itemAt(@)".} # Public
proc itemPrototype*(this: ptr QTableWidget): ptr QTableWidgetItem {.header:headerFile, importcpp:"#.itemPrototype(@)".} # Public
proc setItemPrototype*(this: ptr QTableWidget, item: ptr QTableWidgetItem) {.header:headerFile, importcpp:"#.setItemPrototype(@)".} # Public
proc scrollToItem*(this: ptr QTableWidget, item: ptr QTableWidgetItem, hint: QAbstractItemView_ScrollHint) {.header:headerFile, importcpp:"#.scrollToItem(@)".} # Public
proc insertRow*(this: ptr QTableWidget, row: cint) {.header:headerFile, importcpp:"#.insertRow(@)".} # Public
proc insertColumn*(this: ptr QTableWidget, column: cint) {.header:headerFile, importcpp:"#.insertColumn(@)".} # Public
proc removeRow*(this: ptr QTableWidget, row: cint) {.header:headerFile, importcpp:"#.removeRow(@)".} # Public
proc removeColumn*(this: ptr QTableWidget, column: cint) {.header:headerFile, importcpp:"#.removeColumn(@)".} # Public
proc clear*(this: ptr QTableWidget) {.header:headerFile, importcpp:"#.clear(@)".} # Public
proc clearContents*(this: ptr QTableWidget) {.header:headerFile, importcpp:"#.clearContents(@)".} # Public
proc itemPressed*(this: ptr QTableWidget, item: ptr QTableWidgetItem) {.header:headerFile, importcpp:"#.itemPressed(@)".} # Public
proc itemClicked*(this: ptr QTableWidget, item: ptr QTableWidgetItem) {.header:headerFile, importcpp:"#.itemClicked(@)".} # Public
proc itemDoubleClicked*(this: ptr QTableWidget, item: ptr QTableWidgetItem) {.header:headerFile, importcpp:"#.itemDoubleClicked(@)".} # Public
proc itemActivated*(this: ptr QTableWidget, item: ptr QTableWidgetItem) {.header:headerFile, importcpp:"#.itemActivated(@)".} # Public
proc itemEntered*(this: ptr QTableWidget, item: ptr QTableWidgetItem) {.header:headerFile, importcpp:"#.itemEntered(@)".} # Public
proc itemChanged*(this: ptr QTableWidget, item: ptr QTableWidgetItem) {.header:headerFile, importcpp:"#.itemChanged(@)".} # Public
proc currentItemChanged*(this: ptr QTableWidget, current: ptr QTableWidgetItem, previous: ptr QTableWidgetItem) {.header:headerFile, importcpp:"#.currentItemChanged(@)".} # Public
proc itemSelectionChanged*(this: ptr QTableWidget) {.header:headerFile, importcpp:"#.itemSelectionChanged(@)".} # Public
proc cellPressed*(this: ptr QTableWidget, row: cint, column: cint) {.header:headerFile, importcpp:"#.cellPressed(@)".} # Public
proc cellClicked*(this: ptr QTableWidget, row: cint, column: cint) {.header:headerFile, importcpp:"#.cellClicked(@)".} # Public
proc cellDoubleClicked*(this: ptr QTableWidget, row: cint, column: cint) {.header:headerFile, importcpp:"#.cellDoubleClicked(@)".} # Public
proc cellActivated*(this: ptr QTableWidget, row: cint, column: cint) {.header:headerFile, importcpp:"#.cellActivated(@)".} # Public
proc cellEntered*(this: ptr QTableWidget, row: cint, column: cint) {.header:headerFile, importcpp:"#.cellEntered(@)".} # Public
proc cellChanged*(this: ptr QTableWidget, row: cint, column: cint) {.header:headerFile, importcpp:"#.cellChanged(@)".} # Public
proc currentCellChanged*(this: ptr QTableWidget, currentRow: cint, currentColumn: cint, previousRow: cint, previousColumn: cint) {.header:headerFile, importcpp:"#.currentCellChanged(@)".} # Public

# Protected methods methods for QTableWidget
import nimqt/qtcore/qcoreevent
proc event*(this: ptr QTableWidget, e: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Protected
proc supportedDropActions*(this: ptr QTableWidget): Qt_DropActions {.header:headerFile, importcpp:"#.supportedDropActions(@)".} # Protected
import nimqt/qtgui/qevent
proc dropEvent*(this: ptr QTableWidget, event: ptr QDropEvent) {.header:headerFile, importcpp:"#.dropEvent(@)".} # Protected

export qevent
export qfont
export qstring
export qabstractitemview
export qabstractscrollarea
export qnamespace
export qtableview
export qabstractitemmodel
export qbrush
export qwidget
export qpaintdevice
export qcoreevent
export qframe
export qicon