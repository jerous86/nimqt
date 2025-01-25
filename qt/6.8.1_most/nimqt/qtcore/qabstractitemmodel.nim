const headerFile* = "QtCore/qabstractitemmodel.h"

type
    # Enums found in the C++ code
    # Global
    QAbstractItemModel_LayoutChangeHint* {.header:headerFile,importcpp:"QAbstractItemModel::LayoutChangeHint".} = enum NoLayoutChangeHint = 0, VerticalSortHint = 0x1, HorizontalSortHint = 0x2
    QAbstractItemModel_CheckIndexOption* {.header:headerFile,importcpp:"QAbstractItemModel::CheckIndexOption".} = enum NoOption = 0, IndexIsValid = 0x1, DoNotUseParent = 0x2, ParentIsInvalid = 0x4

import nimqt/qtcore/qobject
type
    # Classes found in the C++ code
    QModelRoleData* {.header:headerFile,importcpp:"QModelRoleData" ,pure,inheritable.} = object
    QModelRoleDataSpan* {.header:headerFile,importcpp:"QModelRoleDataSpan" ,pure,inheritable.} = object
    QModelIndex* {.header:headerFile,importcpp:"QModelIndex" .} = object
    QPersistentModelIndex* {.header:headerFile,importcpp:"QPersistentModelIndex" ,pure,inheritable.} = object
    QAbstractItemModel* {.header:headerFile,importcpp:"QAbstractItemModel" ,pure.} = object of QObject
    QAbstractTableModel* {.header:headerFile,importcpp:"QAbstractTableModel" ,pure.} = object of QAbstractItemModel
    QAbstractListModel* {.header:headerFile,importcpp:"QAbstractListModel" ,pure.} = object of QAbstractItemModel
import nimqt/qtcore/qlist
import nimqt/qtcore/qflags


type
    # typedefs found in the C++ code
    QAbstractTableModel_LayoutChangeHint * = QAbstractItemModel_LayoutChangeHint
    QAbstractTableModel_CheckIndexOption * = QAbstractItemModel_CheckIndexOption
    QAbstractTableModel_CheckIndexOptions * = QAbstractItemModel_CheckIndexOptions
    QAbstractListModel_LayoutChangeHint * = QAbstractItemModel_LayoutChangeHint
    QAbstractListModel_CheckIndexOption * = QAbstractItemModel_CheckIndexOption
    QAbstractListModel_CheckIndexOptions * = QAbstractItemModel_CheckIndexOptions
    QModelIndexList * = QList[QModelIndex]
    QAbstractItemModel_CheckIndexOptions * = QFlags[QAbstractItemModel_CheckIndexOption]

# Stuff for class QModelRoleData

# Public constructors for QModelRoleData
proc newQModelRoleData*(role: cint): QModelRoleData {. header:headerFile, importcpp:"QModelRoleData(@)", constructor .} #

# Public methods for QModelRoleData
proc role*(this: QModelRoleData): cint {.header:headerFile, importcpp:"#.role(@)".} # Public
import nimqt/qtcore/qvariant
proc data*(this: QModelRoleData): QVariant {.header:headerFile, importcpp:"#.data(@)".} # Public
proc clearData*(this: QModelRoleData) {.header:headerFile, importcpp:"#.clearData(@)".} # Public
# Stuff for class QModelRoleDataSpan

# Public constructors for QModelRoleDataSpan
proc newQModelRoleDataSpan*(): QModelRoleDataSpan {. header:headerFile, importcpp:"QModelRoleDataSpan(@)", constructor .} #
proc newQModelRoleDataSpan*(modelRoleData: QModelRoleData): QModelRoleDataSpan {. header:headerFile, importcpp:"QModelRoleDataSpan(@)", constructor .} #
proc newQModelRoleDataSpan*(modelRoleData: ptr QModelRoleData, len: cint): QModelRoleDataSpan {. header:headerFile, importcpp:"QModelRoleDataSpan(@)", constructor .} #

# Public methods for QModelRoleDataSpan
proc size*(this: QModelRoleDataSpan): cint {.header:headerFile, importcpp:"#.size(@)".} # Public
proc length*(this: QModelRoleDataSpan): cint {.header:headerFile, importcpp:"#.length(@)".} # Public
proc data*(this: QModelRoleDataSpan): ptr QModelRoleData {.header:headerFile, importcpp:"#.data(@)".} # Public
proc begin*(this: QModelRoleDataSpan): ptr QModelRoleData {.header:headerFile, importcpp:"#.begin(@)".} # Public
proc `end`*(this: QModelRoleDataSpan): ptr QModelRoleData {.header:headerFile, importcpp:"#.end(@)".} # Public
proc `[]`*(this: QModelRoleDataSpan, index: cint): QModelRoleData {.header:headerFile, importcpp:"#.operator[](@)".} # Public
proc dataForRole*(this: QModelRoleDataSpan, role: cint): ptr QVariant {.header:headerFile, importcpp:"#.dataForRole(@)".} # Public
# Stuff for class QModelIndex

# Public constructors for QModelIndex
proc newQModelIndex*(): QModelIndex {. header:headerFile, importcpp:"QModelIndex(@)", constructor .} #

# Public methods for QModelIndex
proc row*(this: QModelIndex): cint {.header:headerFile, importcpp:"#.row(@)".} # Public
proc column*(this: QModelIndex): cint {.header:headerFile, importcpp:"#.column(@)".} # Public
proc internalPointer*(this: QModelIndex): ptr  {.header:headerFile, importcpp:"#.internalPointer(@)".} # Public
proc constInternalPointer*(this: QModelIndex): ptr  {.header:headerFile, importcpp:"#.constInternalPointer(@)".} # Public
proc parent*(this: QModelIndex): QModelIndex {.header:headerFile, importcpp:"#.parent(@)".} # Public
proc sibling*(this: QModelIndex, row: cint, column: cint): QModelIndex {.header:headerFile, importcpp:"#.sibling(@)".} # Public
proc siblingAtColumn*(this: QModelIndex, column: cint): QModelIndex {.header:headerFile, importcpp:"#.siblingAtColumn(@)".} # Public
proc siblingAtRow*(this: QModelIndex, row: cint): QModelIndex {.header:headerFile, importcpp:"#.siblingAtRow(@)".} # Public
# 1 default parameters!
proc data*(this: QModelIndex, role: cint): QVariant {.header:headerFile, importcpp:"#.data(@)".} # Public
proc data*(this: QModelIndex): QVariant {.header:headerFile, importcpp:"#.data(@)".} # Public
proc multiData*(this: QModelIndex, roleDataSpan: QModelRoleDataSpan) {.header:headerFile, importcpp:"#.multiData(@)".} # Public
import nimqt/qtcore/qnamespace
proc flags*(this: QModelIndex): Qt_ItemFlags {.header:headerFile, importcpp:"#.flags(@)".} # Public
proc model*(this: QModelIndex): ptr QAbstractItemModel {.header:headerFile, importcpp:"#.model(@)".} # Public
proc isValid*(this: QModelIndex): bool {.header:headerFile, importcpp:"#.isValid(@)".} # Public
proc `!=`*(this: QModelIndex, other: QModelIndex): bool {.header:headerFile, importcpp:"#.operator!=(@)".} # Public
proc `<`*(this: QModelIndex, other: QModelIndex): bool {.header:headerFile, importcpp:"#.operator<(@)".} # Public
# Stuff for class QPersistentModelIndex

# Public constructors for QPersistentModelIndex
proc newQPersistentModelIndex*(): QPersistentModelIndex {. header:headerFile, importcpp:"QPersistentModelIndex(@)", constructor .} #
proc newQPersistentModelIndex*(index: QModelIndex): QPersistentModelIndex {. header:headerFile, importcpp:"QPersistentModelIndex(@)", constructor .} #
proc newQPersistentModelIndex*(other: QPersistentModelIndex): QPersistentModelIndex {. header:headerFile, importcpp:"QPersistentModelIndex(@)", constructor .} #

# Public methods for QPersistentModelIndex
proc `<`*(this: QPersistentModelIndex, other: QPersistentModelIndex): bool {.header:headerFile, importcpp:"#.operator<(@)".} # Public
proc `!=`*(this: QPersistentModelIndex, other: QPersistentModelIndex): bool {.header:headerFile, importcpp:"#.operator!=(@)".} # Public
proc swap*(this: QPersistentModelIndex, other: QPersistentModelIndex) {.header:headerFile, importcpp:"#.swap(@)".} # Public
proc `!=`*(this: QPersistentModelIndex, other: QModelIndex): bool {.header:headerFile, importcpp:"#.operator!=(@)".} # Public
proc row*(this: QPersistentModelIndex): cint {.header:headerFile, importcpp:"#.row(@)".} # Public
proc column*(this: QPersistentModelIndex): cint {.header:headerFile, importcpp:"#.column(@)".} # Public
proc internalPointer*(this: QPersistentModelIndex): ptr  {.header:headerFile, importcpp:"#.internalPointer(@)".} # Public
proc constInternalPointer*(this: QPersistentModelIndex): ptr  {.header:headerFile, importcpp:"#.constInternalPointer(@)".} # Public
proc parent*(this: QPersistentModelIndex): QModelIndex {.header:headerFile, importcpp:"#.parent(@)".} # Public
proc sibling*(this: QPersistentModelIndex, row: cint, column: cint): QModelIndex {.header:headerFile, importcpp:"#.sibling(@)".} # Public
# 1 default parameters!
proc data*(this: QPersistentModelIndex, role: cint): QVariant {.header:headerFile, importcpp:"#.data(@)".} # Public
proc data*(this: QPersistentModelIndex): QVariant {.header:headerFile, importcpp:"#.data(@)".} # Public
proc multiData*(this: QPersistentModelIndex, roleDataSpan: QModelRoleDataSpan) {.header:headerFile, importcpp:"#.multiData(@)".} # Public
proc flags*(this: QPersistentModelIndex): Qt_ItemFlags {.header:headerFile, importcpp:"#.flags(@)".} # Public
proc model*(this: QPersistentModelIndex): ptr QAbstractItemModel {.header:headerFile, importcpp:"#.model(@)".} # Public
proc isValid*(this: QPersistentModelIndex): bool {.header:headerFile, importcpp:"#.isValid(@)".} # Public
# Stuff for class QAbstractItemModel

# Public constructors for QAbstractItemModel
# 1 default parameters!
proc newQAbstractItemModel*(parent: ptr QObject): ptr QAbstractItemModel {. header:headerFile, importcpp:"new QAbstractItemModel(@)" .} #
proc newQAbstractItemModel*(): ptr QAbstractItemModel {. header:headerFile, importcpp:"new QAbstractItemModel(@)" .} #

# Public methods for QAbstractItemModel
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QAbstractItemModel_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QAbstractItemModel::tr(@)".} # Public static
proc static_QAbstractItemModel_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QAbstractItemModel::tr(@)".} # Public static
# 1 default parameters!
proc hasIndex*(this: ptr QAbstractItemModel, row: cint, column: cint, parent: QModelIndex): bool {.header:headerFile, importcpp:"#.hasIndex(@)".} # Public
proc hasIndex*(this: ptr QAbstractItemModel, row: cint, column: cint): bool {.header:headerFile, importcpp:"#.hasIndex(@)".} # Public
# 1 default parameters!
proc index*(this: ptr QAbstractItemModel, row: cint, column: cint, parent: QModelIndex): QModelIndex {.header:headerFile, importcpp:"#.index(@)".} # Public
proc index*(this: ptr QAbstractItemModel, row: cint, column: cint): QModelIndex {.header:headerFile, importcpp:"#.index(@)".} # Public
proc parent*(this: ptr QAbstractItemModel, child: QModelIndex): QModelIndex {.header:headerFile, importcpp:"#.parent(@)".} # Public
proc sibling*(this: ptr QAbstractItemModel, row: cint, column: cint, idx: QModelIndex): QModelIndex {.header:headerFile, importcpp:"#.sibling(@)".} # Public
# 1 default parameters!
proc rowCount*(this: ptr QAbstractItemModel, parent: QModelIndex): cint {.header:headerFile, importcpp:"#.rowCount(@)".} # Public
proc rowCount*(this: ptr QAbstractItemModel): cint {.header:headerFile, importcpp:"#.rowCount(@)".} # Public
# 1 default parameters!
proc columnCount*(this: ptr QAbstractItemModel, parent: QModelIndex): cint {.header:headerFile, importcpp:"#.columnCount(@)".} # Public
proc columnCount*(this: ptr QAbstractItemModel): cint {.header:headerFile, importcpp:"#.columnCount(@)".} # Public
# 1 default parameters!
proc hasChildren*(this: ptr QAbstractItemModel, parent: QModelIndex): bool {.header:headerFile, importcpp:"#.hasChildren(@)".} # Public
proc hasChildren*(this: ptr QAbstractItemModel): bool {.header:headerFile, importcpp:"#.hasChildren(@)".} # Public
# 1 default parameters!
proc data*(this: ptr QAbstractItemModel, index: QModelIndex, role: cint): QVariant {.header:headerFile, importcpp:"#.data(@)".} # Public
proc data*(this: ptr QAbstractItemModel, index: QModelIndex): QVariant {.header:headerFile, importcpp:"#.data(@)".} # Public
# 1 default parameters!
proc setData*(this: ptr QAbstractItemModel, index: QModelIndex, value: QVariant, role: cint): bool {.header:headerFile, importcpp:"#.setData(@)".} # Public
proc setData*(this: ptr QAbstractItemModel, index: QModelIndex, value: QVariant): bool {.header:headerFile, importcpp:"#.setData(@)".} # Public
# 1 default parameters!
proc headerData*(this: ptr QAbstractItemModel, section: cint, orientation: Qt_Orientation, role: cint): QVariant {.header:headerFile, importcpp:"#.headerData(@)".} # Public
proc headerData*(this: ptr QAbstractItemModel, section: cint, orientation: Qt_Orientation): QVariant {.header:headerFile, importcpp:"#.headerData(@)".} # Public
# 1 default parameters!
proc setHeaderData*(this: ptr QAbstractItemModel, section: cint, orientation: Qt_Orientation, value: QVariant, role: cint): bool {.header:headerFile, importcpp:"#.setHeaderData(@)".} # Public
proc setHeaderData*(this: ptr QAbstractItemModel, section: cint, orientation: Qt_Orientation, value: QVariant): bool {.header:headerFile, importcpp:"#.setHeaderData(@)".} # Public
import nimqt/qtcore/qmap
proc itemData*(this: ptr QAbstractItemModel, index: QModelIndex): QMap[cint, QVariant] {.header:headerFile, importcpp:"#.itemData(@)".} # Public
proc setItemData*(this: ptr QAbstractItemModel, index: QModelIndex, roles: QMap[cint, QVariant]): bool {.header:headerFile, importcpp:"#.setItemData(@)".} # Public
proc clearItemData*(this: ptr QAbstractItemModel, index: QModelIndex): bool {.header:headerFile, importcpp:"#.clearItemData(@)".} # Public
import nimqt/qtcore/qstringlist
proc mimeTypes*(this: ptr QAbstractItemModel): QStringList {.header:headerFile, importcpp:"#.mimeTypes(@)".} # Public
import nimqt/qtcore/qmimedata
proc mimeData*(this: ptr QAbstractItemModel, indexes: QModelIndexList): ptr QMimeData {.header:headerFile, importcpp:"#.mimeData(@)".} # Public
proc canDropMimeData*(this: ptr QAbstractItemModel, data: ptr QMimeData, action: Qt_DropAction, row: cint, column: cint, parent: QModelIndex): bool {.header:headerFile, importcpp:"#.canDropMimeData(@)".} # Public
proc dropMimeData*(this: ptr QAbstractItemModel, data: ptr QMimeData, action: Qt_DropAction, row: cint, column: cint, parent: QModelIndex): bool {.header:headerFile, importcpp:"#.dropMimeData(@)".} # Public
proc supportedDropActions*(this: ptr QAbstractItemModel): Qt_DropActions {.header:headerFile, importcpp:"#.supportedDropActions(@)".} # Public
proc supportedDragActions*(this: ptr QAbstractItemModel): Qt_DropActions {.header:headerFile, importcpp:"#.supportedDragActions(@)".} # Public
# 1 default parameters!
proc insertRows*(this: ptr QAbstractItemModel, row: cint, count: cint, parent: QModelIndex): bool {.header:headerFile, importcpp:"#.insertRows(@)".} # Public
proc insertRows*(this: ptr QAbstractItemModel, row: cint, count: cint): bool {.header:headerFile, importcpp:"#.insertRows(@)".} # Public
# 1 default parameters!
proc insertColumns*(this: ptr QAbstractItemModel, column: cint, count: cint, parent: QModelIndex): bool {.header:headerFile, importcpp:"#.insertColumns(@)".} # Public
proc insertColumns*(this: ptr QAbstractItemModel, column: cint, count: cint): bool {.header:headerFile, importcpp:"#.insertColumns(@)".} # Public
# 1 default parameters!
proc removeRows*(this: ptr QAbstractItemModel, row: cint, count: cint, parent: QModelIndex): bool {.header:headerFile, importcpp:"#.removeRows(@)".} # Public
proc removeRows*(this: ptr QAbstractItemModel, row: cint, count: cint): bool {.header:headerFile, importcpp:"#.removeRows(@)".} # Public
# 1 default parameters!
proc removeColumns*(this: ptr QAbstractItemModel, column: cint, count: cint, parent: QModelIndex): bool {.header:headerFile, importcpp:"#.removeColumns(@)".} # Public
proc removeColumns*(this: ptr QAbstractItemModel, column: cint, count: cint): bool {.header:headerFile, importcpp:"#.removeColumns(@)".} # Public
proc moveRows*(this: ptr QAbstractItemModel, sourceParent: QModelIndex, sourceRow: cint, count: cint, destinationParent: QModelIndex, destinationChild: cint): bool {.header:headerFile, importcpp:"#.moveRows(@)".} # Public
proc moveColumns*(this: ptr QAbstractItemModel, sourceParent: QModelIndex, sourceColumn: cint, count: cint, destinationParent: QModelIndex, destinationChild: cint): bool {.header:headerFile, importcpp:"#.moveColumns(@)".} # Public
# 1 default parameters!
proc insertRow*(this: ptr QAbstractItemModel, row: cint, parent: QModelIndex): bool {.header:headerFile, importcpp:"#.insertRow(@)".} # Public
proc insertRow*(this: ptr QAbstractItemModel, row: cint): bool {.header:headerFile, importcpp:"#.insertRow(@)".} # Public
# 1 default parameters!
proc insertColumn*(this: ptr QAbstractItemModel, column: cint, parent: QModelIndex): bool {.header:headerFile, importcpp:"#.insertColumn(@)".} # Public
proc insertColumn*(this: ptr QAbstractItemModel, column: cint): bool {.header:headerFile, importcpp:"#.insertColumn(@)".} # Public
# 1 default parameters!
proc removeRow*(this: ptr QAbstractItemModel, row: cint, parent: QModelIndex): bool {.header:headerFile, importcpp:"#.removeRow(@)".} # Public
proc removeRow*(this: ptr QAbstractItemModel, row: cint): bool {.header:headerFile, importcpp:"#.removeRow(@)".} # Public
# 1 default parameters!
proc removeColumn*(this: ptr QAbstractItemModel, column: cint, parent: QModelIndex): bool {.header:headerFile, importcpp:"#.removeColumn(@)".} # Public
proc removeColumn*(this: ptr QAbstractItemModel, column: cint): bool {.header:headerFile, importcpp:"#.removeColumn(@)".} # Public
proc moveRow*(this: ptr QAbstractItemModel, sourceParent: QModelIndex, sourceRow: cint, destinationParent: QModelIndex, destinationChild: cint): bool {.header:headerFile, importcpp:"#.moveRow(@)".} # Public
proc moveColumn*(this: ptr QAbstractItemModel, sourceParent: QModelIndex, sourceColumn: cint, destinationParent: QModelIndex, destinationChild: cint): bool {.header:headerFile, importcpp:"#.moveColumn(@)".} # Public
proc fetchMore*(this: ptr QAbstractItemModel, parent: QModelIndex) {.header:headerFile, importcpp:"#.fetchMore(@)".} # Public
proc canFetchMore*(this: ptr QAbstractItemModel, parent: QModelIndex): bool {.header:headerFile, importcpp:"#.canFetchMore(@)".} # Public
proc flags*(this: ptr QAbstractItemModel, index: QModelIndex): Qt_ItemFlags {.header:headerFile, importcpp:"#.flags(@)".} # Public
proc sort*(this: ptr QAbstractItemModel, column: cint, order: Qt_SortOrder) {.header:headerFile, importcpp:"#.sort(@)".} # Public
proc buddy*(this: ptr QAbstractItemModel, index: QModelIndex): QModelIndex {.header:headerFile, importcpp:"#.buddy(@)".} # Public
# 2 default parameters!
proc match*(this: ptr QAbstractItemModel, start: QModelIndex, role: cint, value: QVariant, hits: cint, flags: Qt_MatchFlags): QModelIndexList {.header:headerFile, importcpp:"#.match(@)".} # Public
proc match*(this: ptr QAbstractItemModel, start: QModelIndex, role: cint, value: QVariant, hits: cint): QModelIndexList {.header:headerFile, importcpp:"#.match(@)".} # Public
proc match*(this: ptr QAbstractItemModel, start: QModelIndex, role: cint, value: QVariant): QModelIndexList {.header:headerFile, importcpp:"#.match(@)".} # Public
import nimqt/qtcore/qsize
proc span*(this: ptr QAbstractItemModel, index: QModelIndex): QSize {.header:headerFile, importcpp:"#.span(@)".} # Public
import nimqt/qtcore/qbytearray
import nimqt/qtcore/qhash
proc roleNames*(this: ptr QAbstractItemModel): QHash[cint, QByteArray] {.header:headerFile, importcpp:"#.roleNames(@)".} # Public
# 1 default parameters!
proc checkIndex*(this: ptr QAbstractItemModel, index: QModelIndex, options: QFlags[QAbstractItemModel_CheckIndexOption]): bool {.header:headerFile, importcpp:"#.checkIndex(@)".} # Public
proc checkIndex*(this: ptr QAbstractItemModel, index: QModelIndex): bool {.header:headerFile, importcpp:"#.checkIndex(@)".} # Public
proc multiData*(this: ptr QAbstractItemModel, index: QModelIndex, roleDataSpan: QModelRoleDataSpan) {.header:headerFile, importcpp:"#.multiData(@)".} # Public
# 1 default parameters!
proc dataChanged*(this: ptr QAbstractItemModel, topLeft: QModelIndex, bottomRight: QModelIndex, roles: QList[cint]) {.header:headerFile, importcpp:"#.dataChanged(@)".} # Public
proc dataChanged*(this: ptr QAbstractItemModel, topLeft: QModelIndex, bottomRight: QModelIndex) {.header:headerFile, importcpp:"#.dataChanged(@)".} # Public
proc headerDataChanged*(this: ptr QAbstractItemModel, orientation: Qt_Orientation, first: cint, last: cint) {.header:headerFile, importcpp:"#.headerDataChanged(@)".} # Public
# 1 default parameters!
proc layoutChanged*(this: ptr QAbstractItemModel, parents: QList[QPersistentModelIndex], hint: QAbstractItemModel_LayoutChangeHint) {.header:headerFile, importcpp:"#.layoutChanged(@)".} # Public
proc layoutChanged*(this: ptr QAbstractItemModel, parents: QList[QPersistentModelIndex]) {.header:headerFile, importcpp:"#.layoutChanged(@)".} # Public
# 1 default parameters!
proc layoutAboutToBeChanged*(this: ptr QAbstractItemModel, parents: QList[QPersistentModelIndex], hint: QAbstractItemModel_LayoutChangeHint) {.header:headerFile, importcpp:"#.layoutAboutToBeChanged(@)".} # Public
proc layoutAboutToBeChanged*(this: ptr QAbstractItemModel, parents: QList[QPersistentModelIndex]) {.header:headerFile, importcpp:"#.layoutAboutToBeChanged(@)".} # Public
proc submit*(this: ptr QAbstractItemModel): bool {.header:headerFile, importcpp:"#.submit(@)".} # Public
proc revert*(this: ptr QAbstractItemModel) {.header:headerFile, importcpp:"#.revert(@)".} # Public

# Protected methods methods for QAbstractItemModel
proc resetInternalData*(this: ptr QAbstractItemModel) {.header:headerFile, importcpp:"#.resetInternalData(@)".} # Protected
# 1 default parameters!
proc createIndex*(this: ptr QAbstractItemModel, row: cint, column: cint, data: ptr): QModelIndex {.header:headerFile, importcpp:"#.createIndex(@)".} # Protected
proc createIndex*(this: ptr QAbstractItemModel, row: cint, column: cint): QModelIndex {.header:headerFile, importcpp:"#.createIndex(@)".} # Protected
import nimqt/qtcore/qdatastream
proc encodeData*(this: ptr QAbstractItemModel, indexes: QModelIndexList, stream: QDataStream) {.header:headerFile, importcpp:"#.encodeData(@)".} # Protected
proc decodeData*(this: ptr QAbstractItemModel, row: cint, column: cint, parent: QModelIndex, stream: QDataStream): bool {.header:headerFile, importcpp:"#.decodeData(@)".} # Protected
proc beginInsertRows*(this: ptr QAbstractItemModel, parent: QModelIndex, first: cint, last: cint) {.header:headerFile, importcpp:"#.beginInsertRows(@)".} # Protected
proc endInsertRows*(this: ptr QAbstractItemModel) {.header:headerFile, importcpp:"#.endInsertRows(@)".} # Protected
proc beginRemoveRows*(this: ptr QAbstractItemModel, parent: QModelIndex, first: cint, last: cint) {.header:headerFile, importcpp:"#.beginRemoveRows(@)".} # Protected
proc endRemoveRows*(this: ptr QAbstractItemModel) {.header:headerFile, importcpp:"#.endRemoveRows(@)".} # Protected
proc beginMoveRows*(this: ptr QAbstractItemModel, sourceParent: QModelIndex, sourceFirst: cint, sourceLast: cint, destinationParent: QModelIndex, destinationRow: cint): bool {.header:headerFile, importcpp:"#.beginMoveRows(@)".} # Protected
proc endMoveRows*(this: ptr QAbstractItemModel) {.header:headerFile, importcpp:"#.endMoveRows(@)".} # Protected
proc beginInsertColumns*(this: ptr QAbstractItemModel, parent: QModelIndex, first: cint, last: cint) {.header:headerFile, importcpp:"#.beginInsertColumns(@)".} # Protected
proc endInsertColumns*(this: ptr QAbstractItemModel) {.header:headerFile, importcpp:"#.endInsertColumns(@)".} # Protected
proc beginRemoveColumns*(this: ptr QAbstractItemModel, parent: QModelIndex, first: cint, last: cint) {.header:headerFile, importcpp:"#.beginRemoveColumns(@)".} # Protected
proc endRemoveColumns*(this: ptr QAbstractItemModel) {.header:headerFile, importcpp:"#.endRemoveColumns(@)".} # Protected
proc beginMoveColumns*(this: ptr QAbstractItemModel, sourceParent: QModelIndex, sourceFirst: cint, sourceLast: cint, destinationParent: QModelIndex, destinationColumn: cint): bool {.header:headerFile, importcpp:"#.beginMoveColumns(@)".} # Protected
proc endMoveColumns*(this: ptr QAbstractItemModel) {.header:headerFile, importcpp:"#.endMoveColumns(@)".} # Protected
proc beginResetModel*(this: ptr QAbstractItemModel) {.header:headerFile, importcpp:"#.beginResetModel(@)".} # Protected
proc endResetModel*(this: ptr QAbstractItemModel) {.header:headerFile, importcpp:"#.endResetModel(@)".} # Protected
proc changePersistentIndex*(this: ptr QAbstractItemModel, `from`: QModelIndex, to: QModelIndex) {.header:headerFile, importcpp:"#.changePersistentIndex(@)".} # Protected
proc changePersistentIndexList*(this: ptr QAbstractItemModel, `from`: QModelIndexList, to: QModelIndexList) {.header:headerFile, importcpp:"#.changePersistentIndexList(@)".} # Protected
proc persistentIndexList*(this: ptr QAbstractItemModel): QModelIndexList {.header:headerFile, importcpp:"#.persistentIndexList(@)".} # Protected
# Stuff for class QAbstractTableModel

# Public constructors for QAbstractTableModel
# 1 default parameters!
proc newQAbstractTableModel*(parent: ptr QObject): ptr QAbstractTableModel {. header:headerFile, importcpp:"new QAbstractTableModel(@)" .} #
proc newQAbstractTableModel*(): ptr QAbstractTableModel {. header:headerFile, importcpp:"new QAbstractTableModel(@)" .} #

# Public methods for QAbstractTableModel
# 1 default parameters!
proc static_QAbstractTableModel_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QAbstractTableModel::tr(@)".} # Public static
proc static_QAbstractTableModel_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QAbstractTableModel::tr(@)".} # Public static
# 1 default parameters!
proc index*(this: ptr QAbstractTableModel, row: cint, column: cint, parent: QModelIndex): QModelIndex {.header:headerFile, importcpp:"#.index(@)".} # Public
proc index*(this: ptr QAbstractTableModel, row: cint, column: cint): QModelIndex {.header:headerFile, importcpp:"#.index(@)".} # Public
proc sibling*(this: ptr QAbstractTableModel, row: cint, column: cint, idx: QModelIndex): QModelIndex {.header:headerFile, importcpp:"#.sibling(@)".} # Public
proc dropMimeData*(this: ptr QAbstractTableModel, data: ptr QMimeData, action: Qt_DropAction, row: cint, column: cint, parent: QModelIndex): bool {.header:headerFile, importcpp:"#.dropMimeData(@)".} # Public
proc flags*(this: ptr QAbstractTableModel, index: QModelIndex): Qt_ItemFlags {.header:headerFile, importcpp:"#.flags(@)".} # Public
# Stuff for class QAbstractListModel

# Public constructors for QAbstractListModel
# 1 default parameters!
proc newQAbstractListModel*(parent: ptr QObject): ptr QAbstractListModel {. header:headerFile, importcpp:"new QAbstractListModel(@)" .} #
proc newQAbstractListModel*(): ptr QAbstractListModel {. header:headerFile, importcpp:"new QAbstractListModel(@)" .} #

# Public methods for QAbstractListModel
# 1 default parameters!
proc static_QAbstractListModel_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QAbstractListModel::tr(@)".} # Public static
proc static_QAbstractListModel_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QAbstractListModel::tr(@)".} # Public static
# 2 default parameters!
proc index*(this: ptr QAbstractListModel, row: cint, column: cint, parent: QModelIndex): QModelIndex {.header:headerFile, importcpp:"#.index(@)".} # Public
proc index*(this: ptr QAbstractListModel, row: cint, column: cint): QModelIndex {.header:headerFile, importcpp:"#.index(@)".} # Public
proc index*(this: ptr QAbstractListModel, row: cint): QModelIndex {.header:headerFile, importcpp:"#.index(@)".} # Public
proc sibling*(this: ptr QAbstractListModel, row: cint, column: cint, idx: QModelIndex): QModelIndex {.header:headerFile, importcpp:"#.sibling(@)".} # Public
proc dropMimeData*(this: ptr QAbstractListModel, data: ptr QMimeData, action: Qt_DropAction, row: cint, column: cint, parent: QModelIndex): bool {.header:headerFile, importcpp:"#.dropMimeData(@)".} # Public
proc flags*(this: ptr QAbstractListModel, index: QModelIndex): Qt_ItemFlags {.header:headerFile, importcpp:"#.flags(@)".} # Public

export qmap
export qstringlist
export qstring
export qdatastream
export qsize
export qnamespace
export qbytearray
export qlist
export qhash
export qmimedata
export qvariant
export qflags
export qobject
