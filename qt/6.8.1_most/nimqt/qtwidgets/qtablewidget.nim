const headerFile* = "QtWidgets/qtablewidget.h"

type
    # Enums found in the C++ code
    # Global
    QTableWidgetItem_ItemType* {.header:headerFile,importcpp:"QTableWidgetItem::ItemType".} = enum Type = 0, UserType = 0x3e8

import nimqt/qtwidgets/qtableview
type
    # Classes found in the C++ code
    QTableWidgetSelectionRange* {.header:headerFile,importcpp:"QTableWidgetSelectionRange" ,pure,inheritable.} = object
    QTableWidgetItem* {.header:headerFile,importcpp:"QTableWidgetItem" ,pure,inheritable.} = object
    QTableWidget* {.header:headerFile,importcpp:"QTableWidget" ,pure.} = object of QTableView
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
proc newQTableWidgetItem*(`type`: cint): ptr QTableWidgetItem {. header:headerFile, importcpp:"new QTableWidgetItem(@)" .} #
proc newQTableWidgetItem*(): ptr QTableWidgetItem {. header:headerFile, importcpp:"new QTableWidgetItem(@)" .} #
import nimqt/qtcore/qstring
# 1 default parameters!
proc newQTableWidgetItem*(text: QString, `type`: cint): ptr QTableWidgetItem {. header:headerFile, importcpp:"new QTableWidgetItem(@)" .} #
proc newQTableWidgetItem*(text: QString): ptr QTableWidgetItem {. header:headerFile, importcpp:"new QTableWidgetItem(@)" .} #
import nimqt/qtgui/qicon
# 1 default parameters!
proc newQTableWidgetItem*(icon: QIcon, text: QString, `type`: cint): ptr QTableWidgetItem {. header:headerFile, importcpp:"new QTableWidgetItem(@)" .} #
proc newQTableWidgetItem*(icon: QIcon, text: QString): ptr QTableWidgetItem {. header:headerFile, importcpp:"new QTableWidgetItem(@)" .} #
proc newQTableWidgetItem*(other: QTableWidgetItem): ptr QTableWidgetItem {. header:headerFile, importcpp:"new QTableWidgetItem(@)" .} #

# Public methods for QTableWidgetItem
proc clone*(this: ptr QTableWidgetItem): ptr QTableWidgetItem {.header:headerFile, importcpp:"#.clone(@)".} # Public
proc tableWidget*(this: ptr QTableWidgetItem): ptr QTableWidget {.header:headerFile, importcpp:"#.tableWidget(@)".} # Public
proc row*(this: ptr QTableWidgetItem): cint {.header:headerFile, importcpp:"#.row(@)".} # Public
proc column*(this: ptr QTableWidgetItem): cint {.header:headerFile, importcpp:"#.column(@)".} # Public
proc setSelected*(this: ptr QTableWidgetItem, select: bool) {.header:headerFile, importcpp:"#.setSelected(@)".} # Public
proc isSelected*(this: ptr QTableWidgetItem): bool {.header:headerFile, importcpp:"#.isSelected(@)".} # Public
import nimqt/qtcore/qnamespace
proc flags*(this: ptr QTableWidgetItem): Qt_ItemFlags {.header:headerFile, importcpp:"#.flags(@)".} # Public
proc setFlags*(this: ptr QTableWidgetItem, flags: Qt_ItemFlags) {.header:headerFile, importcpp:"#.setFlags(@)".} # Public
proc text*(this: ptr QTableWidgetItem): QString {.header:headerFile, importcpp:"#.text(@)".} # Public
proc setText*(this: ptr QTableWidgetItem, text: QString) {.header:headerFile, importcpp:"#.setText(@)".} # Public
proc icon*(this: ptr QTableWidgetItem): QIcon {.header:headerFile, importcpp:"#.icon(@)".} # Public
proc setIcon*(this: ptr QTableWidgetItem, icon: QIcon) {.header:headerFile, importcpp:"#.setIcon(@)".} # Public
proc statusTip*(this: ptr QTableWidgetItem): QString {.header:headerFile, importcpp:"#.statusTip(@)".} # Public
proc setStatusTip*(this: ptr QTableWidgetItem, statusTip: QString) {.header:headerFile, importcpp:"#.setStatusTip(@)".} # Public
proc toolTip*(this: ptr QTableWidgetItem): QString {.header:headerFile, importcpp:"#.toolTip(@)".} # Public
proc setToolTip*(this: ptr QTableWidgetItem, toolTip: QString) {.header:headerFile, importcpp:"#.setToolTip(@)".} # Public
proc whatsThis*(this: ptr QTableWidgetItem): QString {.header:headerFile, importcpp:"#.whatsThis(@)".} # Public
proc setWhatsThis*(this: ptr QTableWidgetItem, whatsThis: QString) {.header:headerFile, importcpp:"#.setWhatsThis(@)".} # Public
import nimqt/qtgui/qfont
proc font*(this: ptr QTableWidgetItem): QFont {.header:headerFile, importcpp:"#.font(@)".} # Public
proc setFont*(this: ptr QTableWidgetItem, font: QFont) {.header:headerFile, importcpp:"#.setFont(@)".} # Public
proc textAlignment*(this: ptr QTableWidgetItem): cint {.header:headerFile, importcpp:"#.textAlignment(@)".} # Public
proc setTextAlignment*(this: ptr QTableWidgetItem, alignment: cint) {.header:headerFile, importcpp:"#.setTextAlignment(@)".} # Public
proc setTextAlignment*(this: ptr QTableWidgetItem, alignment: Qt_AlignmentFlag) {.header:headerFile, importcpp:"#.setTextAlignment(@)".} # Public
proc setTextAlignment*(this: ptr QTableWidgetItem, alignment: Qt_Alignment) {.header:headerFile, importcpp:"#.setTextAlignment(@)".} # Public
import nimqt/qtgui/qbrush
proc background*(this: ptr QTableWidgetItem): QBrush {.header:headerFile, importcpp:"#.background(@)".} # Public
proc setBackground*(this: ptr QTableWidgetItem, brush: QBrush) {.header:headerFile, importcpp:"#.setBackground(@)".} # Public
proc foreground*(this: ptr QTableWidgetItem): QBrush {.header:headerFile, importcpp:"#.foreground(@)".} # Public
proc setForeground*(this: ptr QTableWidgetItem, brush: QBrush) {.header:headerFile, importcpp:"#.setForeground(@)".} # Public
proc checkState*(this: ptr QTableWidgetItem): Qt_CheckState {.header:headerFile, importcpp:"#.checkState(@)".} # Public
proc setCheckState*(this: ptr QTableWidgetItem, state: Qt_CheckState) {.header:headerFile, importcpp:"#.setCheckState(@)".} # Public
import nimqt/qtcore/qsize
proc sizeHint*(this: ptr QTableWidgetItem): QSize {.header:headerFile, importcpp:"#.sizeHint(@)".} # Public
proc setSizeHint*(this: ptr QTableWidgetItem, size: QSize) {.header:headerFile, importcpp:"#.setSizeHint(@)".} # Public
import nimqt/qtcore/qvariant
proc data*(this: ptr QTableWidgetItem, role: cint): QVariant {.header:headerFile, importcpp:"#.data(@)".} # Public
proc setData*(this: ptr QTableWidgetItem, role: cint, value: QVariant) {.header:headerFile, importcpp:"#.setData(@)".} # Public
proc `<`*(this: ptr QTableWidgetItem, other: QTableWidgetItem): bool {.header:headerFile, importcpp:"#.operator<(@)".} # Public
import nimqt/qtcore/qdatastream
proc read*(this: ptr QTableWidgetItem, `in`: QDataStream) {.header:headerFile, importcpp:"#.read(@)".} # Public
proc write*(this: ptr QTableWidgetItem, `out`: QDataStream) {.header:headerFile, importcpp:"#.write(@)".} # Public
proc `type`*(this: ptr QTableWidgetItem): cint {.header:headerFile, importcpp:"#.type(@)".} # Public
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
import nimqt/qtcore/qlist
import nimqt/qtcore/qmimedata
proc items*(this: ptr QTableWidget, data: ptr QMimeData): QList[ptr QTableWidgetItem] {.header:headerFile, importcpp:"#.items(@)".} # Public
import nimqt/qtcore/qabstractitemmodel
proc indexFromItem*(this: ptr QTableWidget, item: ptr QTableWidgetItem): QModelIndex {.header:headerFile, importcpp:"#.indexFromItem(@)".} # Public
proc itemFromIndex*(this: ptr QTableWidget, index: QModelIndex): ptr QTableWidgetItem {.header:headerFile, importcpp:"#.itemFromIndex(@)".} # Public
proc verticalHeaderItem*(this: ptr QTableWidget, row: cint): ptr QTableWidgetItem {.header:headerFile, importcpp:"#.verticalHeaderItem(@)".} # Public
proc setVerticalHeaderItem*(this: ptr QTableWidget, row: cint, item: ptr QTableWidgetItem) {.header:headerFile, importcpp:"#.setVerticalHeaderItem(@)".} # Public
proc takeVerticalHeaderItem*(this: ptr QTableWidget, row: cint): ptr QTableWidgetItem {.header:headerFile, importcpp:"#.takeVerticalHeaderItem(@)".} # Public
proc horizontalHeaderItem*(this: ptr QTableWidget, column: cint): ptr QTableWidgetItem {.header:headerFile, importcpp:"#.horizontalHeaderItem(@)".} # Public
proc setHorizontalHeaderItem*(this: ptr QTableWidget, column: cint, item: ptr QTableWidgetItem) {.header:headerFile, importcpp:"#.setHorizontalHeaderItem(@)".} # Public
proc takeHorizontalHeaderItem*(this: ptr QTableWidget, column: cint): ptr QTableWidgetItem {.header:headerFile, importcpp:"#.takeHorizontalHeaderItem(@)".} # Public
import nimqt/qtcore/qstringlist
proc setVerticalHeaderLabels*(this: ptr QTableWidget, labels: QStringList) {.header:headerFile, importcpp:"#.setVerticalHeaderLabels(@)".} # Public
proc setHorizontalHeaderLabels*(this: ptr QTableWidget, labels: QStringList) {.header:headerFile, importcpp:"#.setHorizontalHeaderLabels(@)".} # Public
proc currentRow*(this: ptr QTableWidget): cint {.header:headerFile, importcpp:"#.currentRow(@)".} # Public
proc currentColumn*(this: ptr QTableWidget): cint {.header:headerFile, importcpp:"#.currentColumn(@)".} # Public
proc currentItem*(this: ptr QTableWidget): ptr QTableWidgetItem {.header:headerFile, importcpp:"#.currentItem(@)".} # Public
proc setCurrentItem*(this: ptr QTableWidget, item: ptr QTableWidgetItem) {.header:headerFile, importcpp:"#.setCurrentItem(@)".} # Public
import nimqt/qtcore/qitemselectionmodel
proc setCurrentItem*(this: ptr QTableWidget, item: ptr QTableWidgetItem, command: QItemSelectionModel_SelectionFlags) {.header:headerFile, importcpp:"#.setCurrentItem(@)".} # Public
proc setCurrentCell*(this: ptr QTableWidget, row: cint, column: cint) {.header:headerFile, importcpp:"#.setCurrentCell(@)".} # Public
proc setCurrentCell*(this: ptr QTableWidget, row: cint, column: cint, command: QItemSelectionModel_SelectionFlags) {.header:headerFile, importcpp:"#.setCurrentCell(@)".} # Public
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
proc selectedRanges*(this: ptr QTableWidget): QList[QTableWidgetSelectionRange] {.header:headerFile, importcpp:"#.selectedRanges(@)".} # Public
proc selectedItems*(this: ptr QTableWidget): QList[ptr QTableWidgetItem] {.header:headerFile, importcpp:"#.selectedItems(@)".} # Public
proc findItems*(this: ptr QTableWidget, text: QString, flags: Qt_MatchFlags): QList[ptr QTableWidgetItem] {.header:headerFile, importcpp:"#.findItems(@)".} # Public
proc visualRow*(this: ptr QTableWidget, logicalRow: cint): cint {.header:headerFile, importcpp:"#.visualRow(@)".} # Public
proc visualColumn*(this: ptr QTableWidget, logicalColumn: cint): cint {.header:headerFile, importcpp:"#.visualColumn(@)".} # Public
import nimqt/qtcore/qpoint
proc itemAt*(this: ptr QTableWidget, p: QPoint): ptr QTableWidgetItem {.header:headerFile, importcpp:"#.itemAt(@)".} # Public
proc itemAt*(this: ptr QTableWidget, x: cint, y: cint): ptr QTableWidgetItem {.header:headerFile, importcpp:"#.itemAt(@)".} # Public
import nimqt/qtcore/qrect
proc visualItemRect*(this: ptr QTableWidget, item: ptr QTableWidgetItem): QRect {.header:headerFile, importcpp:"#.visualItemRect(@)".} # Public
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
proc mimeTypes*(this: ptr QTableWidget): QStringList {.header:headerFile, importcpp:"#.mimeTypes(@)".} # Protected
proc mimeData*(this: ptr QTableWidget, items: QList[ptr QTableWidgetItem]): ptr QMimeData {.header:headerFile, importcpp:"#.mimeData(@)".} # Protected
proc dropMimeData*(this: ptr QTableWidget, row: cint, column: cint, data: ptr QMimeData, action: Qt_DropAction): bool {.header:headerFile, importcpp:"#.dropMimeData(@)".} # Protected
proc supportedDropActions*(this: ptr QTableWidget): Qt_DropActions {.header:headerFile, importcpp:"#.supportedDropActions(@)".} # Protected
import nimqt/qtgui/qevent
proc dropEvent*(this: ptr QTableWidget, event: ptr QDropEvent) {.header:headerFile, importcpp:"#.dropEvent(@)".} # Protected

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
export qtableview
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
