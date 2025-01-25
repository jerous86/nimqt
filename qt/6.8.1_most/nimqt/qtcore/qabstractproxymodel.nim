const headerFile* = "QtCore/qabstractproxymodel.h"

import nimqt/qtcore/qabstractitemmodel
type
    # Classes found in the C++ code
    QAbstractProxyModel* {.header:headerFile,importcpp:"QAbstractProxyModel" ,pure.} = object of QAbstractItemModel


type
    # typedefs found in the C++ code
    QAbstractProxyModel_LayoutChangeHint * = QAbstractItemModel_LayoutChangeHint
    QAbstractProxyModel_CheckIndexOption * = QAbstractItemModel_CheckIndexOption
    QAbstractProxyModel_CheckIndexOptions * = QAbstractItemModel_CheckIndexOptions

# Stuff for class QAbstractProxyModel

# Public constructors for QAbstractProxyModel
import nimqt/qtcore/qobject
# 1 default parameters!
proc newQAbstractProxyModel*(parent: ptr QObject): ptr QAbstractProxyModel {. header:headerFile, importcpp:"new QAbstractProxyModel(@)" .} #
proc newQAbstractProxyModel*(): ptr QAbstractProxyModel {. header:headerFile, importcpp:"new QAbstractProxyModel(@)" .} #

# Public methods for QAbstractProxyModel
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QAbstractProxyModel_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QAbstractProxyModel::tr(@)".} # Public static
proc static_QAbstractProxyModel_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QAbstractProxyModel::tr(@)".} # Public static
proc setSourceModel*(this: ptr QAbstractProxyModel, sourceModel: ptr QAbstractItemModel) {.header:headerFile, importcpp:"#.setSourceModel(@)".} # Public
proc sourceModel*(this: ptr QAbstractProxyModel): ptr QAbstractItemModel {.header:headerFile, importcpp:"#.sourceModel(@)".} # Public
import nimqt/qtcore/qproperty
proc bindableSourceModel*(this: ptr QAbstractProxyModel): QBindable[ptr QAbstractItemModel] {.header:headerFile, importcpp:"#.bindableSourceModel(@)".} # Public
proc mapToSource*(this: ptr QAbstractProxyModel, proxyIndex: QModelIndex): QModelIndex {.header:headerFile, importcpp:"#.mapToSource(@)".} # Public
proc mapFromSource*(this: ptr QAbstractProxyModel, sourceIndex: QModelIndex): QModelIndex {.header:headerFile, importcpp:"#.mapFromSource(@)".} # Public
import nimqt/qtcore/qitemselectionmodel
proc mapSelectionToSource*(this: ptr QAbstractProxyModel, selection: QItemSelection): QItemSelection {.header:headerFile, importcpp:"#.mapSelectionToSource(@)".} # Public
proc mapSelectionFromSource*(this: ptr QAbstractProxyModel, selection: QItemSelection): QItemSelection {.header:headerFile, importcpp:"#.mapSelectionFromSource(@)".} # Public
proc submit*(this: ptr QAbstractProxyModel): bool {.header:headerFile, importcpp:"#.submit(@)".} # Public
proc revert*(this: ptr QAbstractProxyModel) {.header:headerFile, importcpp:"#.revert(@)".} # Public
import nimqt/qtcore/qvariant
# 1 default parameters!
proc data*(this: ptr QAbstractProxyModel, proxyIndex: QModelIndex, role: cint): QVariant {.header:headerFile, importcpp:"#.data(@)".} # Public
proc data*(this: ptr QAbstractProxyModel, proxyIndex: QModelIndex): QVariant {.header:headerFile, importcpp:"#.data(@)".} # Public
import nimqt/qtcore/qnamespace
# 1 default parameters!
proc headerData*(this: ptr QAbstractProxyModel, section: cint, orientation: Qt_Orientation, role: cint): QVariant {.header:headerFile, importcpp:"#.headerData(@)".} # Public
proc headerData*(this: ptr QAbstractProxyModel, section: cint, orientation: Qt_Orientation): QVariant {.header:headerFile, importcpp:"#.headerData(@)".} # Public
import nimqt/qtcore/qmap
proc itemData*(this: ptr QAbstractProxyModel, index: QModelIndex): QMap[cint, QVariant] {.header:headerFile, importcpp:"#.itemData(@)".} # Public
proc flags*(this: ptr QAbstractProxyModel, index: QModelIndex): Qt_ItemFlags {.header:headerFile, importcpp:"#.flags(@)".} # Public
# 1 default parameters!
proc setData*(this: ptr QAbstractProxyModel, index: QModelIndex, value: QVariant, role: cint): bool {.header:headerFile, importcpp:"#.setData(@)".} # Public
proc setData*(this: ptr QAbstractProxyModel, index: QModelIndex, value: QVariant): bool {.header:headerFile, importcpp:"#.setData(@)".} # Public
proc setItemData*(this: ptr QAbstractProxyModel, index: QModelIndex, roles: QMap[cint, QVariant]): bool {.header:headerFile, importcpp:"#.setItemData(@)".} # Public
# 1 default parameters!
proc setHeaderData*(this: ptr QAbstractProxyModel, section: cint, orientation: Qt_Orientation, value: QVariant, role: cint): bool {.header:headerFile, importcpp:"#.setHeaderData(@)".} # Public
proc setHeaderData*(this: ptr QAbstractProxyModel, section: cint, orientation: Qt_Orientation, value: QVariant): bool {.header:headerFile, importcpp:"#.setHeaderData(@)".} # Public
proc clearItemData*(this: ptr QAbstractProxyModel, index: QModelIndex): bool {.header:headerFile, importcpp:"#.clearItemData(@)".} # Public
proc buddy*(this: ptr QAbstractProxyModel, index: QModelIndex): QModelIndex {.header:headerFile, importcpp:"#.buddy(@)".} # Public
proc canFetchMore*(this: ptr QAbstractProxyModel, parent: QModelIndex): bool {.header:headerFile, importcpp:"#.canFetchMore(@)".} # Public
proc fetchMore*(this: ptr QAbstractProxyModel, parent: QModelIndex) {.header:headerFile, importcpp:"#.fetchMore(@)".} # Public
proc sort*(this: ptr QAbstractProxyModel, column: cint, order: Qt_SortOrder) {.header:headerFile, importcpp:"#.sort(@)".} # Public
import nimqt/qtcore/qsize
proc span*(this: ptr QAbstractProxyModel, index: QModelIndex): QSize {.header:headerFile, importcpp:"#.span(@)".} # Public
# 1 default parameters!
proc hasChildren*(this: ptr QAbstractProxyModel, parent: QModelIndex): bool {.header:headerFile, importcpp:"#.hasChildren(@)".} # Public
proc hasChildren*(this: ptr QAbstractProxyModel): bool {.header:headerFile, importcpp:"#.hasChildren(@)".} # Public
proc sibling*(this: ptr QAbstractProxyModel, row: cint, column: cint, idx: QModelIndex): QModelIndex {.header:headerFile, importcpp:"#.sibling(@)".} # Public
import nimqt/qtcore/qmimedata
proc mimeData*(this: ptr QAbstractProxyModel, indexes: QModelIndexList): ptr QMimeData {.header:headerFile, importcpp:"#.mimeData(@)".} # Public
proc canDropMimeData*(this: ptr QAbstractProxyModel, data: ptr QMimeData, action: Qt_DropAction, row: cint, column: cint, parent: QModelIndex): bool {.header:headerFile, importcpp:"#.canDropMimeData(@)".} # Public
proc dropMimeData*(this: ptr QAbstractProxyModel, data: ptr QMimeData, action: Qt_DropAction, row: cint, column: cint, parent: QModelIndex): bool {.header:headerFile, importcpp:"#.dropMimeData(@)".} # Public
import nimqt/qtcore/qstringlist
proc mimeTypes*(this: ptr QAbstractProxyModel): QStringList {.header:headerFile, importcpp:"#.mimeTypes(@)".} # Public
proc supportedDragActions*(this: ptr QAbstractProxyModel): Qt_DropActions {.header:headerFile, importcpp:"#.supportedDragActions(@)".} # Public
proc supportedDropActions*(this: ptr QAbstractProxyModel): Qt_DropActions {.header:headerFile, importcpp:"#.supportedDropActions(@)".} # Public
import nimqt/qtcore/qbytearray
import nimqt/qtcore/qhash
proc roleNames*(this: ptr QAbstractProxyModel): QHash[cint, QByteArray] {.header:headerFile, importcpp:"#.roleNames(@)".} # Public

# Protected methods methods for QAbstractProxyModel
proc createSourceIndex*(this: ptr QAbstractProxyModel, row: cint, col: cint, internalPtr: ptr): QModelIndex {.header:headerFile, importcpp:"#.createSourceIndex(@)".} # Protected

export qmap
export qstringlist
export qstring
export qproperty
export qsize
export qitemselectionmodel
export qnamespace
export qbytearray
export qabstractitemmodel
export qhash
export qmimedata
export qvariant
export qobject
