const headerFile* = "QtGui/qstandarditemmodel.h"

type
    # Enums found in the C++ code
    # Global
    QStandardItem_ItemType* {.header:headerFile,importcpp:"QStandardItem::ItemType".} = enum Type = 0, UserType = 0x3e8

import nimqt/qtcore/qabstractitemmodel
type
    # Classes found in the C++ code
    QStandardItem* {.header:headerFile,importcpp:"QStandardItem" ,pure,inheritable.} = object
    QStandardItemModel* {.header:headerFile,importcpp:"QStandardItemModel" ,pure.} = object of QAbstractItemModel


type
    # typedefs found in the C++ code
    QStandardItemModel_LayoutChangeHint * = QAbstractItemModel_LayoutChangeHint
    QStandardItemModel_CheckIndexOption * = QAbstractItemModel_CheckIndexOption
    QStandardItemModel_CheckIndexOptions * = QAbstractItemModel_CheckIndexOptions

# Stuff for class QStandardItem

# Public constructors for QStandardItem
proc newQStandardItem*(): ptr QStandardItem {. header:headerFile, importcpp:"new QStandardItem(@)" .} #
import nimqt/qtcore/qstring
proc newQStandardItem*(text: QString): ptr QStandardItem {. header:headerFile, importcpp:"new QStandardItem(@)" .} #
import nimqt/qtgui/qicon
proc newQStandardItem*(icon: QIcon, text: QString): ptr QStandardItem {. header:headerFile, importcpp:"new QStandardItem(@)" .} #
# 1 default parameters!
proc newQStandardItem*(rows: cint, columns: cint): ptr QStandardItem {. header:headerFile, importcpp:"new QStandardItem(@)" .} #
proc newQStandardItem*(rows: cint): ptr QStandardItem {. header:headerFile, importcpp:"new QStandardItem(@)" .} #

# Public methods for QStandardItem
import nimqt/qtcore/qvariant
# 1 default parameters!
proc data*(this: ptr QStandardItem, role: cint): QVariant {.header:headerFile, importcpp:"#.data(@)".} # Public
proc data*(this: ptr QStandardItem): QVariant {.header:headerFile, importcpp:"#.data(@)".} # Public
proc multiData*(this: ptr QStandardItem, roleDataSpan: QModelRoleDataSpan) {.header:headerFile, importcpp:"#.multiData(@)".} # Public
# 1 default parameters!
proc setData*(this: ptr QStandardItem, value: QVariant, role: cint) {.header:headerFile, importcpp:"#.setData(@)".} # Public
proc setData*(this: ptr QStandardItem, value: QVariant) {.header:headerFile, importcpp:"#.setData(@)".} # Public
proc clearData*(this: ptr QStandardItem) {.header:headerFile, importcpp:"#.clearData(@)".} # Public
proc text*(this: ptr QStandardItem): QString {.header:headerFile, importcpp:"#.text(@)".} # Public
proc setText*(this: ptr QStandardItem, text: QString) {.header:headerFile, importcpp:"#.setText(@)".} # Public
proc icon*(this: ptr QStandardItem): QIcon {.header:headerFile, importcpp:"#.icon(@)".} # Public
proc setIcon*(this: ptr QStandardItem, icon: QIcon) {.header:headerFile, importcpp:"#.setIcon(@)".} # Public
proc toolTip*(this: ptr QStandardItem): QString {.header:headerFile, importcpp:"#.toolTip(@)".} # Public
proc setToolTip*(this: ptr QStandardItem, toolTip: QString) {.header:headerFile, importcpp:"#.setToolTip(@)".} # Public
proc statusTip*(this: ptr QStandardItem): QString {.header:headerFile, importcpp:"#.statusTip(@)".} # Public
proc setStatusTip*(this: ptr QStandardItem, statusTip: QString) {.header:headerFile, importcpp:"#.setStatusTip(@)".} # Public
proc whatsThis*(this: ptr QStandardItem): QString {.header:headerFile, importcpp:"#.whatsThis(@)".} # Public
proc setWhatsThis*(this: ptr QStandardItem, whatsThis: QString) {.header:headerFile, importcpp:"#.setWhatsThis(@)".} # Public
import nimqt/qtcore/qsize
proc sizeHint*(this: ptr QStandardItem): QSize {.header:headerFile, importcpp:"#.sizeHint(@)".} # Public
proc setSizeHint*(this: ptr QStandardItem, sizeHint: QSize) {.header:headerFile, importcpp:"#.setSizeHint(@)".} # Public
import nimqt/qtgui/qfont
proc font*(this: ptr QStandardItem): QFont {.header:headerFile, importcpp:"#.font(@)".} # Public
proc setFont*(this: ptr QStandardItem, font: QFont) {.header:headerFile, importcpp:"#.setFont(@)".} # Public
import nimqt/qtcore/qnamespace
proc textAlignment*(this: ptr QStandardItem): Qt_Alignment {.header:headerFile, importcpp:"#.textAlignment(@)".} # Public
proc setTextAlignment*(this: ptr QStandardItem, textAlignment: Qt_Alignment) {.header:headerFile, importcpp:"#.setTextAlignment(@)".} # Public
import nimqt/qtgui/qbrush
proc background*(this: ptr QStandardItem): QBrush {.header:headerFile, importcpp:"#.background(@)".} # Public
proc setBackground*(this: ptr QStandardItem, brush: QBrush) {.header:headerFile, importcpp:"#.setBackground(@)".} # Public
proc foreground*(this: ptr QStandardItem): QBrush {.header:headerFile, importcpp:"#.foreground(@)".} # Public
proc setForeground*(this: ptr QStandardItem, brush: QBrush) {.header:headerFile, importcpp:"#.setForeground(@)".} # Public
proc checkState*(this: ptr QStandardItem): Qt_CheckState {.header:headerFile, importcpp:"#.checkState(@)".} # Public
proc setCheckState*(this: ptr QStandardItem, checkState: Qt_CheckState) {.header:headerFile, importcpp:"#.setCheckState(@)".} # Public
proc accessibleText*(this: ptr QStandardItem): QString {.header:headerFile, importcpp:"#.accessibleText(@)".} # Public
proc setAccessibleText*(this: ptr QStandardItem, accessibleText: QString) {.header:headerFile, importcpp:"#.setAccessibleText(@)".} # Public
proc accessibleDescription*(this: ptr QStandardItem): QString {.header:headerFile, importcpp:"#.accessibleDescription(@)".} # Public
proc setAccessibleDescription*(this: ptr QStandardItem, accessibleDescription: QString) {.header:headerFile, importcpp:"#.setAccessibleDescription(@)".} # Public
proc flags*(this: ptr QStandardItem): Qt_ItemFlags {.header:headerFile, importcpp:"#.flags(@)".} # Public
proc setFlags*(this: ptr QStandardItem, flags: Qt_ItemFlags) {.header:headerFile, importcpp:"#.setFlags(@)".} # Public
proc isEnabled*(this: ptr QStandardItem): bool {.header:headerFile, importcpp:"#.isEnabled(@)".} # Public
proc setEnabled*(this: ptr QStandardItem, enabled: bool) {.header:headerFile, importcpp:"#.setEnabled(@)".} # Public
proc isEditable*(this: ptr QStandardItem): bool {.header:headerFile, importcpp:"#.isEditable(@)".} # Public
proc setEditable*(this: ptr QStandardItem, editable: bool) {.header:headerFile, importcpp:"#.setEditable(@)".} # Public
proc isSelectable*(this: ptr QStandardItem): bool {.header:headerFile, importcpp:"#.isSelectable(@)".} # Public
proc setSelectable*(this: ptr QStandardItem, selectable: bool) {.header:headerFile, importcpp:"#.setSelectable(@)".} # Public
proc isCheckable*(this: ptr QStandardItem): bool {.header:headerFile, importcpp:"#.isCheckable(@)".} # Public
proc setCheckable*(this: ptr QStandardItem, checkable: bool) {.header:headerFile, importcpp:"#.setCheckable(@)".} # Public
proc isAutoTristate*(this: ptr QStandardItem): bool {.header:headerFile, importcpp:"#.isAutoTristate(@)".} # Public
proc setAutoTristate*(this: ptr QStandardItem, tristate: bool) {.header:headerFile, importcpp:"#.setAutoTristate(@)".} # Public
proc isUserTristate*(this: ptr QStandardItem): bool {.header:headerFile, importcpp:"#.isUserTristate(@)".} # Public
proc setUserTristate*(this: ptr QStandardItem, tristate: bool) {.header:headerFile, importcpp:"#.setUserTristate(@)".} # Public
proc isDragEnabled*(this: ptr QStandardItem): bool {.header:headerFile, importcpp:"#.isDragEnabled(@)".} # Public
proc setDragEnabled*(this: ptr QStandardItem, dragEnabled: bool) {.header:headerFile, importcpp:"#.setDragEnabled(@)".} # Public
proc isDropEnabled*(this: ptr QStandardItem): bool {.header:headerFile, importcpp:"#.isDropEnabled(@)".} # Public
proc setDropEnabled*(this: ptr QStandardItem, dropEnabled: bool) {.header:headerFile, importcpp:"#.setDropEnabled(@)".} # Public
proc parent*(this: ptr QStandardItem): ptr QStandardItem {.header:headerFile, importcpp:"#.parent(@)".} # Public
proc row*(this: ptr QStandardItem): cint {.header:headerFile, importcpp:"#.row(@)".} # Public
proc column*(this: ptr QStandardItem): cint {.header:headerFile, importcpp:"#.column(@)".} # Public
proc index*(this: ptr QStandardItem): QModelIndex {.header:headerFile, importcpp:"#.index(@)".} # Public
proc model*(this: ptr QStandardItem): ptr QStandardItemModel {.header:headerFile, importcpp:"#.model(@)".} # Public
proc rowCount*(this: ptr QStandardItem): cint {.header:headerFile, importcpp:"#.rowCount(@)".} # Public
proc setRowCount*(this: ptr QStandardItem, rows: cint) {.header:headerFile, importcpp:"#.setRowCount(@)".} # Public
proc columnCount*(this: ptr QStandardItem): cint {.header:headerFile, importcpp:"#.columnCount(@)".} # Public
proc setColumnCount*(this: ptr QStandardItem, columns: cint) {.header:headerFile, importcpp:"#.setColumnCount(@)".} # Public
proc hasChildren*(this: ptr QStandardItem): bool {.header:headerFile, importcpp:"#.hasChildren(@)".} # Public
# 1 default parameters!
proc child*(this: ptr QStandardItem, row: cint, column: cint): ptr QStandardItem {.header:headerFile, importcpp:"#.child(@)".} # Public
proc child*(this: ptr QStandardItem, row: cint): ptr QStandardItem {.header:headerFile, importcpp:"#.child(@)".} # Public
proc setChild*(this: ptr QStandardItem, row: cint, column: cint, item: ptr QStandardItem) {.header:headerFile, importcpp:"#.setChild(@)".} # Public
proc setChild*(this: ptr QStandardItem, row: cint, item: ptr QStandardItem) {.header:headerFile, importcpp:"#.setChild(@)".} # Public
import nimqt/qtcore/qlist
proc insertRow*(this: ptr QStandardItem, row: cint, items: QList[ptr QStandardItem]) {.header:headerFile, importcpp:"#.insertRow(@)".} # Public
proc insertColumn*(this: ptr QStandardItem, column: cint, items: QList[ptr QStandardItem]) {.header:headerFile, importcpp:"#.insertColumn(@)".} # Public
proc insertRows*(this: ptr QStandardItem, row: cint, items: QList[ptr QStandardItem]) {.header:headerFile, importcpp:"#.insertRows(@)".} # Public
proc insertRows*(this: ptr QStandardItem, row: cint, count: cint) {.header:headerFile, importcpp:"#.insertRows(@)".} # Public
proc insertColumns*(this: ptr QStandardItem, column: cint, count: cint) {.header:headerFile, importcpp:"#.insertColumns(@)".} # Public
proc removeRow*(this: ptr QStandardItem, row: cint) {.header:headerFile, importcpp:"#.removeRow(@)".} # Public
proc removeColumn*(this: ptr QStandardItem, column: cint) {.header:headerFile, importcpp:"#.removeColumn(@)".} # Public
proc removeRows*(this: ptr QStandardItem, row: cint, count: cint) {.header:headerFile, importcpp:"#.removeRows(@)".} # Public
proc removeColumns*(this: ptr QStandardItem, column: cint, count: cint) {.header:headerFile, importcpp:"#.removeColumns(@)".} # Public
proc appendRow*(this: ptr QStandardItem, items: QList[ptr QStandardItem]) {.header:headerFile, importcpp:"#.appendRow(@)".} # Public
proc appendRows*(this: ptr QStandardItem, items: QList[ptr QStandardItem]) {.header:headerFile, importcpp:"#.appendRows(@)".} # Public
proc appendColumn*(this: ptr QStandardItem, items: QList[ptr QStandardItem]) {.header:headerFile, importcpp:"#.appendColumn(@)".} # Public
proc insertRow*(this: ptr QStandardItem, row: cint, item: ptr QStandardItem) {.header:headerFile, importcpp:"#.insertRow(@)".} # Public
proc appendRow*(this: ptr QStandardItem, item: ptr QStandardItem) {.header:headerFile, importcpp:"#.appendRow(@)".} # Public
# 1 default parameters!
proc takeChild*(this: ptr QStandardItem, row: cint, column: cint): ptr QStandardItem {.header:headerFile, importcpp:"#.takeChild(@)".} # Public
proc takeChild*(this: ptr QStandardItem, row: cint): ptr QStandardItem {.header:headerFile, importcpp:"#.takeChild(@)".} # Public
proc takeRow*(this: ptr QStandardItem, row: cint): QList[ptr QStandardItem] {.header:headerFile, importcpp:"#.takeRow(@)".} # Public
proc takeColumn*(this: ptr QStandardItem, column: cint): QList[ptr QStandardItem] {.header:headerFile, importcpp:"#.takeColumn(@)".} # Public
proc sortChildren*(this: ptr QStandardItem, column: cint, order: Qt_SortOrder) {.header:headerFile, importcpp:"#.sortChildren(@)".} # Public
proc clone*(this: ptr QStandardItem): ptr QStandardItem {.header:headerFile, importcpp:"#.clone(@)".} # Public
proc `type`*(this: ptr QStandardItem): cint {.header:headerFile, importcpp:"#.type(@)".} # Public
import nimqt/qtcore/qdatastream
proc read*(this: ptr QStandardItem, `in`: QDataStream) {.header:headerFile, importcpp:"#.read(@)".} # Public
proc write*(this: ptr QStandardItem, `out`: QDataStream) {.header:headerFile, importcpp:"#.write(@)".} # Public
proc `<`*(this: ptr QStandardItem, other: ptr QStandardItem): bool {.header:headerFile, importcpp:"#.operator<(@)".} # Public

# Protected methods methods for QStandardItem
proc emitDataChanged*(this: ptr QStandardItem) {.header:headerFile, importcpp:"#.emitDataChanged(@)".} # Protected
# Stuff for class QStandardItemModel

# Public constructors for QStandardItemModel
import nimqt/qtcore/qobject
# 1 default parameters!
proc newQStandardItemModel*(parent: ptr QObject): ptr QStandardItemModel {. header:headerFile, importcpp:"new QStandardItemModel(@)" .} #
proc newQStandardItemModel*(): ptr QStandardItemModel {. header:headerFile, importcpp:"new QStandardItemModel(@)" .} #
# 1 default parameters!
proc newQStandardItemModel*(rows: cint, columns: cint, parent: ptr QObject): ptr QStandardItemModel {. header:headerFile, importcpp:"new QStandardItemModel(@)" .} #
proc newQStandardItemModel*(rows: cint, columns: cint): ptr QStandardItemModel {. header:headerFile, importcpp:"new QStandardItemModel(@)" .} #

# Public methods for QStandardItemModel
# 1 default parameters!
proc static_QStandardItemModel_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QStandardItemModel::tr(@)".} # Public static
proc static_QStandardItemModel_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QStandardItemModel::tr(@)".} # Public static
import nimqt/qtcore/qbytearray
import nimqt/qtcore/qhash
proc setItemRoleNames*(this: ptr QStandardItemModel, roleNames: QHash[cint, QByteArray]) {.header:headerFile, importcpp:"#.setItemRoleNames(@)".} # Public
proc roleNames*(this: ptr QStandardItemModel): QHash[cint, QByteArray] {.header:headerFile, importcpp:"#.roleNames(@)".} # Public
# 1 default parameters!
proc index*(this: ptr QStandardItemModel, row: cint, column: cint, parent: QModelIndex): QModelIndex {.header:headerFile, importcpp:"#.index(@)".} # Public
proc index*(this: ptr QStandardItemModel, row: cint, column: cint): QModelIndex {.header:headerFile, importcpp:"#.index(@)".} # Public
proc parent*(this: ptr QStandardItemModel, child: QModelIndex): QModelIndex {.header:headerFile, importcpp:"#.parent(@)".} # Public
# 1 default parameters!
proc rowCount*(this: ptr QStandardItemModel, parent: QModelIndex): cint {.header:headerFile, importcpp:"#.rowCount(@)".} # Public
proc rowCount*(this: ptr QStandardItemModel): cint {.header:headerFile, importcpp:"#.rowCount(@)".} # Public
# 1 default parameters!
proc columnCount*(this: ptr QStandardItemModel, parent: QModelIndex): cint {.header:headerFile, importcpp:"#.columnCount(@)".} # Public
proc columnCount*(this: ptr QStandardItemModel): cint {.header:headerFile, importcpp:"#.columnCount(@)".} # Public
# 1 default parameters!
proc hasChildren*(this: ptr QStandardItemModel, parent: QModelIndex): bool {.header:headerFile, importcpp:"#.hasChildren(@)".} # Public
proc hasChildren*(this: ptr QStandardItemModel): bool {.header:headerFile, importcpp:"#.hasChildren(@)".} # Public
# 1 default parameters!
proc data*(this: ptr QStandardItemModel, index: QModelIndex, role: cint): QVariant {.header:headerFile, importcpp:"#.data(@)".} # Public
proc data*(this: ptr QStandardItemModel, index: QModelIndex): QVariant {.header:headerFile, importcpp:"#.data(@)".} # Public
proc multiData*(this: ptr QStandardItemModel, index: QModelIndex, roleDataSpan: QModelRoleDataSpan) {.header:headerFile, importcpp:"#.multiData(@)".} # Public
# 1 default parameters!
proc setData*(this: ptr QStandardItemModel, index: QModelIndex, value: QVariant, role: cint): bool {.header:headerFile, importcpp:"#.setData(@)".} # Public
proc setData*(this: ptr QStandardItemModel, index: QModelIndex, value: QVariant): bool {.header:headerFile, importcpp:"#.setData(@)".} # Public
proc clearItemData*(this: ptr QStandardItemModel, index: QModelIndex): bool {.header:headerFile, importcpp:"#.clearItemData(@)".} # Public
# 1 default parameters!
proc headerData*(this: ptr QStandardItemModel, section: cint, orientation: Qt_Orientation, role: cint): QVariant {.header:headerFile, importcpp:"#.headerData(@)".} # Public
proc headerData*(this: ptr QStandardItemModel, section: cint, orientation: Qt_Orientation): QVariant {.header:headerFile, importcpp:"#.headerData(@)".} # Public
# 1 default parameters!
proc setHeaderData*(this: ptr QStandardItemModel, section: cint, orientation: Qt_Orientation, value: QVariant, role: cint): bool {.header:headerFile, importcpp:"#.setHeaderData(@)".} # Public
proc setHeaderData*(this: ptr QStandardItemModel, section: cint, orientation: Qt_Orientation, value: QVariant): bool {.header:headerFile, importcpp:"#.setHeaderData(@)".} # Public
# 1 default parameters!
proc insertRows*(this: ptr QStandardItemModel, row: cint, count: cint, parent: QModelIndex): bool {.header:headerFile, importcpp:"#.insertRows(@)".} # Public
proc insertRows*(this: ptr QStandardItemModel, row: cint, count: cint): bool {.header:headerFile, importcpp:"#.insertRows(@)".} # Public
# 1 default parameters!
proc insertColumns*(this: ptr QStandardItemModel, column: cint, count: cint, parent: QModelIndex): bool {.header:headerFile, importcpp:"#.insertColumns(@)".} # Public
proc insertColumns*(this: ptr QStandardItemModel, column: cint, count: cint): bool {.header:headerFile, importcpp:"#.insertColumns(@)".} # Public
# 1 default parameters!
proc removeRows*(this: ptr QStandardItemModel, row: cint, count: cint, parent: QModelIndex): bool {.header:headerFile, importcpp:"#.removeRows(@)".} # Public
proc removeRows*(this: ptr QStandardItemModel, row: cint, count: cint): bool {.header:headerFile, importcpp:"#.removeRows(@)".} # Public
# 1 default parameters!
proc removeColumns*(this: ptr QStandardItemModel, column: cint, count: cint, parent: QModelIndex): bool {.header:headerFile, importcpp:"#.removeColumns(@)".} # Public
proc removeColumns*(this: ptr QStandardItemModel, column: cint, count: cint): bool {.header:headerFile, importcpp:"#.removeColumns(@)".} # Public
proc flags*(this: ptr QStandardItemModel, index: QModelIndex): Qt_ItemFlags {.header:headerFile, importcpp:"#.flags(@)".} # Public
proc supportedDropActions*(this: ptr QStandardItemModel): Qt_DropActions {.header:headerFile, importcpp:"#.supportedDropActions(@)".} # Public
import nimqt/qtcore/qmap
proc itemData*(this: ptr QStandardItemModel, index: QModelIndex): QMap[cint, QVariant] {.header:headerFile, importcpp:"#.itemData(@)".} # Public
proc setItemData*(this: ptr QStandardItemModel, index: QModelIndex, roles: QMap[cint, QVariant]): bool {.header:headerFile, importcpp:"#.setItemData(@)".} # Public
proc clear*(this: ptr QStandardItemModel) {.header:headerFile, importcpp:"#.clear(@)".} # Public
proc sort*(this: ptr QStandardItemModel, column: cint, order: Qt_SortOrder) {.header:headerFile, importcpp:"#.sort(@)".} # Public
proc itemFromIndex*(this: ptr QStandardItemModel, index: QModelIndex): ptr QStandardItem {.header:headerFile, importcpp:"#.itemFromIndex(@)".} # Public
proc indexFromItem*(this: ptr QStandardItemModel, item: ptr QStandardItem): QModelIndex {.header:headerFile, importcpp:"#.indexFromItem(@)".} # Public
# 1 default parameters!
proc item*(this: ptr QStandardItemModel, row: cint, column: cint): ptr QStandardItem {.header:headerFile, importcpp:"#.item(@)".} # Public
proc item*(this: ptr QStandardItemModel, row: cint): ptr QStandardItem {.header:headerFile, importcpp:"#.item(@)".} # Public
proc setItem*(this: ptr QStandardItemModel, row: cint, column: cint, item: ptr QStandardItem) {.header:headerFile, importcpp:"#.setItem(@)".} # Public
proc setItem*(this: ptr QStandardItemModel, row: cint, item: ptr QStandardItem) {.header:headerFile, importcpp:"#.setItem(@)".} # Public
proc invisibleRootItem*(this: ptr QStandardItemModel): ptr QStandardItem {.header:headerFile, importcpp:"#.invisibleRootItem(@)".} # Public
proc horizontalHeaderItem*(this: ptr QStandardItemModel, column: cint): ptr QStandardItem {.header:headerFile, importcpp:"#.horizontalHeaderItem(@)".} # Public
proc setHorizontalHeaderItem*(this: ptr QStandardItemModel, column: cint, item: ptr QStandardItem) {.header:headerFile, importcpp:"#.setHorizontalHeaderItem(@)".} # Public
proc verticalHeaderItem*(this: ptr QStandardItemModel, row: cint): ptr QStandardItem {.header:headerFile, importcpp:"#.verticalHeaderItem(@)".} # Public
proc setVerticalHeaderItem*(this: ptr QStandardItemModel, row: cint, item: ptr QStandardItem) {.header:headerFile, importcpp:"#.setVerticalHeaderItem(@)".} # Public
import nimqt/qtcore/qstringlist
proc setHorizontalHeaderLabels*(this: ptr QStandardItemModel, labels: QStringList) {.header:headerFile, importcpp:"#.setHorizontalHeaderLabels(@)".} # Public
proc setVerticalHeaderLabels*(this: ptr QStandardItemModel, labels: QStringList) {.header:headerFile, importcpp:"#.setVerticalHeaderLabels(@)".} # Public
proc setRowCount*(this: ptr QStandardItemModel, rows: cint) {.header:headerFile, importcpp:"#.setRowCount(@)".} # Public
proc setColumnCount*(this: ptr QStandardItemModel, columns: cint) {.header:headerFile, importcpp:"#.setColumnCount(@)".} # Public
proc appendRow*(this: ptr QStandardItemModel, items: QList[ptr QStandardItem]) {.header:headerFile, importcpp:"#.appendRow(@)".} # Public
proc appendColumn*(this: ptr QStandardItemModel, items: QList[ptr QStandardItem]) {.header:headerFile, importcpp:"#.appendColumn(@)".} # Public
proc appendRow*(this: ptr QStandardItemModel, item: ptr QStandardItem) {.header:headerFile, importcpp:"#.appendRow(@)".} # Public
proc insertRow*(this: ptr QStandardItemModel, row: cint, items: QList[ptr QStandardItem]) {.header:headerFile, importcpp:"#.insertRow(@)".} # Public
proc insertColumn*(this: ptr QStandardItemModel, column: cint, items: QList[ptr QStandardItem]) {.header:headerFile, importcpp:"#.insertColumn(@)".} # Public
proc insertRow*(this: ptr QStandardItemModel, row: cint, item: ptr QStandardItem) {.header:headerFile, importcpp:"#.insertRow(@)".} # Public
# 1 default parameters!
proc insertRow*(this: ptr QStandardItemModel, row: cint, parent: QModelIndex): bool {.header:headerFile, importcpp:"#.insertRow(@)".} # Public
proc insertRow*(this: ptr QStandardItemModel, row: cint): bool {.header:headerFile, importcpp:"#.insertRow(@)".} # Public
# 1 default parameters!
proc insertColumn*(this: ptr QStandardItemModel, column: cint, parent: QModelIndex): bool {.header:headerFile, importcpp:"#.insertColumn(@)".} # Public
proc insertColumn*(this: ptr QStandardItemModel, column: cint): bool {.header:headerFile, importcpp:"#.insertColumn(@)".} # Public
# 1 default parameters!
proc takeItem*(this: ptr QStandardItemModel, row: cint, column: cint): ptr QStandardItem {.header:headerFile, importcpp:"#.takeItem(@)".} # Public
proc takeItem*(this: ptr QStandardItemModel, row: cint): ptr QStandardItem {.header:headerFile, importcpp:"#.takeItem(@)".} # Public
proc takeRow*(this: ptr QStandardItemModel, row: cint): QList[ptr QStandardItem] {.header:headerFile, importcpp:"#.takeRow(@)".} # Public
proc takeColumn*(this: ptr QStandardItemModel, column: cint): QList[ptr QStandardItem] {.header:headerFile, importcpp:"#.takeColumn(@)".} # Public
proc takeHorizontalHeaderItem*(this: ptr QStandardItemModel, column: cint): ptr QStandardItem {.header:headerFile, importcpp:"#.takeHorizontalHeaderItem(@)".} # Public
proc takeVerticalHeaderItem*(this: ptr QStandardItemModel, row: cint): ptr QStandardItem {.header:headerFile, importcpp:"#.takeVerticalHeaderItem(@)".} # Public
proc itemPrototype*(this: ptr QStandardItemModel): ptr QStandardItem {.header:headerFile, importcpp:"#.itemPrototype(@)".} # Public
proc setItemPrototype*(this: ptr QStandardItemModel, item: ptr QStandardItem) {.header:headerFile, importcpp:"#.setItemPrototype(@)".} # Public
# 2 default parameters!
proc findItems*(this: ptr QStandardItemModel, text: QString, flags: Qt_MatchFlags, column: cint): QList[ptr QStandardItem] {.header:headerFile, importcpp:"#.findItems(@)".} # Public
proc findItems*(this: ptr QStandardItemModel, text: QString, flags: Qt_MatchFlags): QList[ptr QStandardItem] {.header:headerFile, importcpp:"#.findItems(@)".} # Public
proc findItems*(this: ptr QStandardItemModel, text: QString): QList[ptr QStandardItem] {.header:headerFile, importcpp:"#.findItems(@)".} # Public
proc sortRole*(this: ptr QStandardItemModel): cint {.header:headerFile, importcpp:"#.sortRole(@)".} # Public
proc setSortRole*(this: ptr QStandardItemModel, role: cint) {.header:headerFile, importcpp:"#.setSortRole(@)".} # Public
import nimqt/qtcore/qproperty
proc bindableSortRole*(this: ptr QStandardItemModel): QBindable[cint] {.header:headerFile, importcpp:"#.bindableSortRole(@)".} # Public
proc mimeTypes*(this: ptr QStandardItemModel): QStringList {.header:headerFile, importcpp:"#.mimeTypes(@)".} # Public
import nimqt/qtcore/qmimedata
proc mimeData*(this: ptr QStandardItemModel, indexes: QModelIndexList): ptr QMimeData {.header:headerFile, importcpp:"#.mimeData(@)".} # Public
proc dropMimeData*(this: ptr QStandardItemModel, data: ptr QMimeData, action: Qt_DropAction, row: cint, column: cint, parent: QModelIndex): bool {.header:headerFile, importcpp:"#.dropMimeData(@)".} # Public
proc itemChanged*(this: ptr QStandardItemModel, item: ptr QStandardItem) {.header:headerFile, importcpp:"#.itemChanged(@)".} # Public

export qmap
export qfont
export qstringlist
export qstring
export qproperty
export qdatastream
export qsize
export qnamespace
export qbytearray
export qlist
export qabstractitemmodel
export qhash
export qbrush
export qmimedata
export qvariant
export qobject
export qicon
