const headerFile* = "QtCore/qconcatenatetablesproxymodel.h"

import nimqt/qtcore/qabstractitemmodel
type
    # Classes found in the C++ code
    QConcatenateTablesProxyModel* {.header:headerFile,importcpp:"QConcatenateTablesProxyModel" ,pure.} = object of QAbstractItemModel


type
    # typedefs found in the C++ code
    QConcatenateTablesProxyModel_LayoutChangeHint * = QAbstractItemModel_LayoutChangeHint
    QConcatenateTablesProxyModel_CheckIndexOption * = QAbstractItemModel_CheckIndexOption
    QConcatenateTablesProxyModel_CheckIndexOptions * = QAbstractItemModel_CheckIndexOptions

# Stuff for class QConcatenateTablesProxyModel

# Public constructors for QConcatenateTablesProxyModel
import nimqt/qtcore/qobject
# 1 default parameters!
proc newQConcatenateTablesProxyModel*(parent: ptr QObject): ptr QConcatenateTablesProxyModel {. header:headerFile, importcpp:"new QConcatenateTablesProxyModel(@)" .} #
proc newQConcatenateTablesProxyModel*(): ptr QConcatenateTablesProxyModel {. header:headerFile, importcpp:"new QConcatenateTablesProxyModel(@)" .} #

# Public methods for QConcatenateTablesProxyModel
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QConcatenateTablesProxyModel_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QConcatenateTablesProxyModel::tr(@)".} # Public static
proc static_QConcatenateTablesProxyModel_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QConcatenateTablesProxyModel::tr(@)".} # Public static
import nimqt/qtcore/qlist
proc sourceModels*(this: ptr QConcatenateTablesProxyModel): QList[ptr QAbstractItemModel] {.header:headerFile, importcpp:"#.sourceModels(@)".} # Public
proc addSourceModel*(this: ptr QConcatenateTablesProxyModel, sourceModel: ptr QAbstractItemModel) {.header:headerFile, importcpp:"#.addSourceModel(@)".} # Public
proc removeSourceModel*(this: ptr QConcatenateTablesProxyModel, sourceModel: ptr QAbstractItemModel) {.header:headerFile, importcpp:"#.removeSourceModel(@)".} # Public
proc mapFromSource*(this: ptr QConcatenateTablesProxyModel, sourceIndex: QModelIndex): QModelIndex {.header:headerFile, importcpp:"#.mapFromSource(@)".} # Public
proc mapToSource*(this: ptr QConcatenateTablesProxyModel, proxyIndex: QModelIndex): QModelIndex {.header:headerFile, importcpp:"#.mapToSource(@)".} # Public
import nimqt/qtcore/qvariant
# 1 default parameters!
proc data*(this: ptr QConcatenateTablesProxyModel, index: QModelIndex, role: cint): QVariant {.header:headerFile, importcpp:"#.data(@)".} # Public
proc data*(this: ptr QConcatenateTablesProxyModel, index: QModelIndex): QVariant {.header:headerFile, importcpp:"#.data(@)".} # Public
# 1 default parameters!
proc setData*(this: ptr QConcatenateTablesProxyModel, index: QModelIndex, value: QVariant, role: cint): bool {.header:headerFile, importcpp:"#.setData(@)".} # Public
proc setData*(this: ptr QConcatenateTablesProxyModel, index: QModelIndex, value: QVariant): bool {.header:headerFile, importcpp:"#.setData(@)".} # Public
import nimqt/qtcore/qmap
proc itemData*(this: ptr QConcatenateTablesProxyModel, proxyIndex: QModelIndex): QMap[cint, QVariant] {.header:headerFile, importcpp:"#.itemData(@)".} # Public
proc setItemData*(this: ptr QConcatenateTablesProxyModel, index: QModelIndex, roles: QMap[cint, QVariant]): bool {.header:headerFile, importcpp:"#.setItemData(@)".} # Public
import nimqt/qtcore/qnamespace
proc flags*(this: ptr QConcatenateTablesProxyModel, index: QModelIndex): Qt_ItemFlags {.header:headerFile, importcpp:"#.flags(@)".} # Public
# 1 default parameters!
proc index*(this: ptr QConcatenateTablesProxyModel, row: cint, column: cint, parent: QModelIndex): QModelIndex {.header:headerFile, importcpp:"#.index(@)".} # Public
proc index*(this: ptr QConcatenateTablesProxyModel, row: cint, column: cint): QModelIndex {.header:headerFile, importcpp:"#.index(@)".} # Public
proc parent*(this: ptr QConcatenateTablesProxyModel, index: QModelIndex): QModelIndex {.header:headerFile, importcpp:"#.parent(@)".} # Public
# 1 default parameters!
proc rowCount*(this: ptr QConcatenateTablesProxyModel, parent: QModelIndex): cint {.header:headerFile, importcpp:"#.rowCount(@)".} # Public
proc rowCount*(this: ptr QConcatenateTablesProxyModel): cint {.header:headerFile, importcpp:"#.rowCount(@)".} # Public
# 1 default parameters!
proc headerData*(this: ptr QConcatenateTablesProxyModel, section: cint, orientation: Qt_Orientation, role: cint): QVariant {.header:headerFile, importcpp:"#.headerData(@)".} # Public
proc headerData*(this: ptr QConcatenateTablesProxyModel, section: cint, orientation: Qt_Orientation): QVariant {.header:headerFile, importcpp:"#.headerData(@)".} # Public
# 1 default parameters!
proc columnCount*(this: ptr QConcatenateTablesProxyModel, parent: QModelIndex): cint {.header:headerFile, importcpp:"#.columnCount(@)".} # Public
proc columnCount*(this: ptr QConcatenateTablesProxyModel): cint {.header:headerFile, importcpp:"#.columnCount(@)".} # Public
import nimqt/qtcore/qstringlist
proc mimeTypes*(this: ptr QConcatenateTablesProxyModel): QStringList {.header:headerFile, importcpp:"#.mimeTypes(@)".} # Public
import nimqt/qtcore/qmimedata
proc mimeData*(this: ptr QConcatenateTablesProxyModel, indexes: QModelIndexList): ptr QMimeData {.header:headerFile, importcpp:"#.mimeData(@)".} # Public
proc canDropMimeData*(this: ptr QConcatenateTablesProxyModel, data: ptr QMimeData, action: Qt_DropAction, row: cint, column: cint, parent: QModelIndex): bool {.header:headerFile, importcpp:"#.canDropMimeData(@)".} # Public
proc dropMimeData*(this: ptr QConcatenateTablesProxyModel, data: ptr QMimeData, action: Qt_DropAction, row: cint, column: cint, parent: QModelIndex): bool {.header:headerFile, importcpp:"#.dropMimeData(@)".} # Public
import nimqt/qtcore/qsize
proc span*(this: ptr QConcatenateTablesProxyModel, index: QModelIndex): QSize {.header:headerFile, importcpp:"#.span(@)".} # Public

export qmap
export qstringlist
export qstring
export qsize
export qnamespace
export qlist
export qabstractitemmodel
export qmimedata
export qvariant
export qobject
