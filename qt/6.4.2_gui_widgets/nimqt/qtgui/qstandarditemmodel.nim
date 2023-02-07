const headerFile* = "QtGui/qstandarditemmodel.h"

import nimqt/qtcore/qabstractitemmodel
# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}


type
    # Classes and enums found in the C++ code
    # Global
    QStandardItem_ItemType* {.header:headerFile,importcpp:"QStandardItem::ItemType".} = enum Type = 0, UserType = 0x3e8
    QStandardItem* {.header:headerFile,importcpp:"QStandardItem" ,pure.} = object {.inheritable.}
    QStandardItemModel* {.header:headerFile,importcpp:"QStandardItemModel" ,pure.} = object of QAbstractItemModel
{.push warning[Deprecated]: on.}


type
    # typedefs found in the C++ code
    QStandardItemModel_LayoutChangeHint * = QAbstractItemModel_LayoutChangeHint
    QStandardItemModel_CheckIndexOption * = QAbstractItemModel_CheckIndexOption
    QStandardItemModel_CheckIndexOptions * = QAbstractItemModel_CheckIndexOptions

# Stuff for class QStandardItem

# Public constructors for QStandardItem
proc newQStandardItem*(): QStandardItem {. header:headerFile, importcpp:"QStandardItem(@)", constructor .} #
import nimqt/qtcore/qstring
proc newQStandardItem*(text: QString): QStandardItem {. header:headerFile, importcpp:"QStandardItem(@)", constructor .} #
import nimqt/qtgui/qicon
proc newQStandardItem*(icon: QIcon, text: QString): QStandardItem {. header:headerFile, importcpp:"QStandardItem(@)", constructor .} #
# 1 default parameters!
proc newQStandardItem*(rows: cint, columns: cint): QStandardItem {. header:headerFile, importcpp:"QStandardItem(@)", constructor .} #
proc newQStandardItem*(rows: cint): QStandardItem {. header:headerFile, importcpp:"QStandardItem(@)", constructor .} #

# Public methods for QStandardItem
import nimqt/qtcore/qvariant
# 1 default parameters!
proc data*(this: QStandardItem, role: cint): QVariant {.header:headerFile, importcpp:"#.data(@)".} # Public
proc data*(this: QStandardItem): QVariant {.header:headerFile, importcpp:"#.data(@)".} # Public
proc multiData*(this: QStandardItem, roleDataSpan: QModelRoleDataSpan) {.header:headerFile, importcpp:"#.multiData(@)".} # Public
# 1 default parameters!
proc setData*(this: QStandardItem, value: QVariant, role: cint) {.header:headerFile, importcpp:"#.setData(@)".} # Public
proc setData*(this: QStandardItem, value: QVariant) {.header:headerFile, importcpp:"#.setData(@)".} # Public
proc clearData*(this: QStandardItem) {.header:headerFile, importcpp:"#.clearData(@)".} # Public
proc text*(this: QStandardItem): QString {.header:headerFile, importcpp:"#.text(@)".} # Public
proc setText*(this: QStandardItem, text: QString) {.header:headerFile, importcpp:"#.setText(@)".} # Public
proc icon*(this: QStandardItem): QIcon {.header:headerFile, importcpp:"#.icon(@)".} # Public
proc setIcon*(this: QStandardItem, icon: QIcon) {.header:headerFile, importcpp:"#.setIcon(@)".} # Public
proc toolTip*(this: QStandardItem): QString {.header:headerFile, importcpp:"#.toolTip(@)".} # Public
proc setToolTip*(this: QStandardItem, toolTip: QString) {.header:headerFile, importcpp:"#.setToolTip(@)".} # Public
proc statusTip*(this: QStandardItem): QString {.header:headerFile, importcpp:"#.statusTip(@)".} # Public
proc setStatusTip*(this: QStandardItem, statusTip: QString) {.header:headerFile, importcpp:"#.setStatusTip(@)".} # Public
proc whatsThis*(this: QStandardItem): QString {.header:headerFile, importcpp:"#.whatsThis(@)".} # Public
proc setWhatsThis*(this: QStandardItem, whatsThis: QString) {.header:headerFile, importcpp:"#.setWhatsThis(@)".} # Public
import nimqt/qtcore/qsize
proc sizeHint*(this: QStandardItem): QSize {.header:headerFile, importcpp:"#.sizeHint(@)".} # Public
proc setSizeHint*(this: QStandardItem, sizeHint: QSize) {.header:headerFile, importcpp:"#.setSizeHint(@)".} # Public
import nimqt/qtgui/qfont
proc font*(this: QStandardItem): QFont {.header:headerFile, importcpp:"#.font(@)".} # Public
proc setFont*(this: QStandardItem, font: QFont) {.header:headerFile, importcpp:"#.setFont(@)".} # Public
import nimqt/qtcore/qnamespace
proc textAlignment*(this: QStandardItem): Qt_Alignment {.header:headerFile, importcpp:"#.textAlignment(@)".} # Public
proc setTextAlignment*(this: QStandardItem, textAlignment: Qt_Alignment) {.header:headerFile, importcpp:"#.setTextAlignment(@)".} # Public
import nimqt/qtgui/qbrush
proc background*(this: QStandardItem): QBrush {.header:headerFile, importcpp:"#.background(@)".} # Public
proc setBackground*(this: QStandardItem, brush: QBrush) {.header:headerFile, importcpp:"#.setBackground(@)".} # Public
proc foreground*(this: QStandardItem): QBrush {.header:headerFile, importcpp:"#.foreground(@)".} # Public
proc setForeground*(this: QStandardItem, brush: QBrush) {.header:headerFile, importcpp:"#.setForeground(@)".} # Public
proc checkState*(this: QStandardItem): Qt_CheckState {.header:headerFile, importcpp:"#.checkState(@)".} # Public
proc setCheckState*(this: QStandardItem, checkState: Qt_CheckState) {.header:headerFile, importcpp:"#.setCheckState(@)".} # Public
proc accessibleText*(this: QStandardItem): QString {.header:headerFile, importcpp:"#.accessibleText(@)".} # Public
proc setAccessibleText*(this: QStandardItem, accessibleText: QString) {.header:headerFile, importcpp:"#.setAccessibleText(@)".} # Public
proc accessibleDescription*(this: QStandardItem): QString {.header:headerFile, importcpp:"#.accessibleDescription(@)".} # Public
proc setAccessibleDescription*(this: QStandardItem, accessibleDescription: QString) {.header:headerFile, importcpp:"#.setAccessibleDescription(@)".} # Public
proc flags*(this: QStandardItem): Qt_ItemFlags {.header:headerFile, importcpp:"#.flags(@)".} # Public
proc setFlags*(this: QStandardItem, flags: Qt_ItemFlags) {.header:headerFile, importcpp:"#.setFlags(@)".} # Public
proc isEnabled*(this: QStandardItem): bool {.header:headerFile, importcpp:"#.isEnabled(@)".} # Public
proc setEnabled*(this: QStandardItem, enabled: bool) {.header:headerFile, importcpp:"#.setEnabled(@)".} # Public
proc isEditable*(this: QStandardItem): bool {.header:headerFile, importcpp:"#.isEditable(@)".} # Public
proc setEditable*(this: QStandardItem, editable: bool) {.header:headerFile, importcpp:"#.setEditable(@)".} # Public
proc isSelectable*(this: QStandardItem): bool {.header:headerFile, importcpp:"#.isSelectable(@)".} # Public
proc setSelectable*(this: QStandardItem, selectable: bool) {.header:headerFile, importcpp:"#.setSelectable(@)".} # Public
proc isCheckable*(this: QStandardItem): bool {.header:headerFile, importcpp:"#.isCheckable(@)".} # Public
proc setCheckable*(this: QStandardItem, checkable: bool) {.header:headerFile, importcpp:"#.setCheckable(@)".} # Public
proc isAutoTristate*(this: QStandardItem): bool {.header:headerFile, importcpp:"#.isAutoTristate(@)".} # Public
proc setAutoTristate*(this: QStandardItem, tristate: bool) {.header:headerFile, importcpp:"#.setAutoTristate(@)".} # Public
proc isUserTristate*(this: QStandardItem): bool {.header:headerFile, importcpp:"#.isUserTristate(@)".} # Public
proc setUserTristate*(this: QStandardItem, tristate: bool) {.header:headerFile, importcpp:"#.setUserTristate(@)".} # Public
proc isDragEnabled*(this: QStandardItem): bool {.header:headerFile, importcpp:"#.isDragEnabled(@)".} # Public
proc setDragEnabled*(this: QStandardItem, dragEnabled: bool) {.header:headerFile, importcpp:"#.setDragEnabled(@)".} # Public
proc isDropEnabled*(this: QStandardItem): bool {.header:headerFile, importcpp:"#.isDropEnabled(@)".} # Public
proc setDropEnabled*(this: QStandardItem, dropEnabled: bool) {.header:headerFile, importcpp:"#.setDropEnabled(@)".} # Public
proc parent*(this: QStandardItem): ptr QStandardItem {.header:headerFile, importcpp:"#.parent(@)".} # Public
proc row*(this: QStandardItem): cint {.header:headerFile, importcpp:"#.row(@)".} # Public
proc column*(this: QStandardItem): cint {.header:headerFile, importcpp:"#.column(@)".} # Public
proc index*(this: QStandardItem): QModelIndex {.header:headerFile, importcpp:"#.index(@)".} # Public
proc model*(this: QStandardItem): ptr QStandardItemModel {.header:headerFile, importcpp:"#.model(@)".} # Public
proc rowCount*(this: QStandardItem): cint {.header:headerFile, importcpp:"#.rowCount(@)".} # Public
proc setRowCount*(this: QStandardItem, rows: cint) {.header:headerFile, importcpp:"#.setRowCount(@)".} # Public
proc columnCount*(this: QStandardItem): cint {.header:headerFile, importcpp:"#.columnCount(@)".} # Public
proc setColumnCount*(this: QStandardItem, columns: cint) {.header:headerFile, importcpp:"#.setColumnCount(@)".} # Public
proc hasChildren*(this: QStandardItem): bool {.header:headerFile, importcpp:"#.hasChildren(@)".} # Public
# 1 default parameters!
proc child*(this: QStandardItem, row: cint, column: cint): ptr QStandardItem {.header:headerFile, importcpp:"#.child(@)".} # Public
proc child*(this: QStandardItem, row: cint): ptr QStandardItem {.header:headerFile, importcpp:"#.child(@)".} # Public
proc setChild*(this: QStandardItem, row: cint, column: cint, item: ptr QStandardItem) {.header:headerFile, importcpp:"#.setChild(@)".} # Public
proc setChild*(this: QStandardItem, row: cint, item: ptr QStandardItem) {.header:headerFile, importcpp:"#.setChild(@)".} # Public
import nimqt/qtcore/qlist
proc insertRow*(this: QStandardItem, row: cint, items: QList[ptr QStandardItem]) {.header:headerFile, importcpp:"#.insertRow(@)".} # Public
proc insertColumn*(this: QStandardItem, column: cint, items: QList[ptr QStandardItem]) {.header:headerFile, importcpp:"#.insertColumn(@)".} # Public
proc insertRows*(this: QStandardItem, row: cint, items: QList[ptr QStandardItem]) {.header:headerFile, importcpp:"#.insertRows(@)".} # Public
proc insertRows*(this: QStandardItem, row: cint, count: cint) {.header:headerFile, importcpp:"#.insertRows(@)".} # Public
proc insertColumns*(this: QStandardItem, column: cint, count: cint) {.header:headerFile, importcpp:"#.insertColumns(@)".} # Public
proc removeRow*(this: QStandardItem, row: cint) {.header:headerFile, importcpp:"#.removeRow(@)".} # Public
proc removeColumn*(this: QStandardItem, column: cint) {.header:headerFile, importcpp:"#.removeColumn(@)".} # Public
proc removeRows*(this: QStandardItem, row: cint, count: cint) {.header:headerFile, importcpp:"#.removeRows(@)".} # Public
proc removeColumns*(this: QStandardItem, column: cint, count: cint) {.header:headerFile, importcpp:"#.removeColumns(@)".} # Public
proc appendRow*(this: QStandardItem, items: QList[ptr QStandardItem]) {.header:headerFile, importcpp:"#.appendRow(@)".} # Public
proc appendRows*(this: QStandardItem, items: QList[ptr QStandardItem]) {.header:headerFile, importcpp:"#.appendRows(@)".} # Public
proc appendColumn*(this: QStandardItem, items: QList[ptr QStandardItem]) {.header:headerFile, importcpp:"#.appendColumn(@)".} # Public
proc insertRow*(this: QStandardItem, row: cint, item: ptr QStandardItem) {.header:headerFile, importcpp:"#.insertRow(@)".} # Public
proc appendRow*(this: QStandardItem, item: ptr QStandardItem) {.header:headerFile, importcpp:"#.appendRow(@)".} # Public
# 1 default parameters!
proc takeChild*(this: QStandardItem, row: cint, column: cint): ptr QStandardItem {.header:headerFile, importcpp:"#.takeChild(@)".} # Public
proc takeChild*(this: QStandardItem, row: cint): ptr QStandardItem {.header:headerFile, importcpp:"#.takeChild(@)".} # Public
proc takeRow*(this: QStandardItem, row: cint): QList[ptr QStandardItem] {.header:headerFile, importcpp:"#.takeRow(@)".} # Public
proc takeColumn*(this: QStandardItem, column: cint): QList[ptr QStandardItem] {.header:headerFile, importcpp:"#.takeColumn(@)".} # Public
proc sortChildren*(this: QStandardItem, column: cint, order: Qt_SortOrder) {.header:headerFile, importcpp:"#.sortChildren(@)".} # Public
proc clone*(this: QStandardItem): ptr QStandardItem {.header:headerFile, importcpp:"#.clone(@)".} # Public
proc `type`*(this: QStandardItem): cint {.header:headerFile, importcpp:"#.type(@)".} # Public
proc `<`*(this: QStandardItem, other: QStandardItem): bool {.header:headerFile, importcpp:"#.operator<(@)".} # Public

# Protected methods methods for QStandardItem
proc emitDataChanged*(this: QStandardItem) {.header:headerFile, importcpp:"#.emitDataChanged(@)".} # Protected
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
proc mimeTypes*(this: ptr QStandardItemModel): QStringList {.header:headerFile, importcpp:"#.mimeTypes(@)".} # Public
proc itemChanged*(this: ptr QStandardItemModel, item: ptr QStandardItem) {.header:headerFile, importcpp:"#.itemChanged(@)".} # Public

export qfont
export qstringlist
export qstring
export qsize
export qnamespace
export qlist
export qabstractitemmodel
export qbrush
export qvariant
export qobject
export qicon