const headerFile* = "QtCore/qidentityproxymodel.h"

import nimqt/qtcore/qabstractproxymodel
type
    # Classes found in the C++ code
    QIdentityProxyModel* {.header:headerFile,importcpp:"QIdentityProxyModel" ,pure.} = object of QAbstractProxyModel
import nimqt/qtcore/qabstractitemmodel


type
    # typedefs found in the C++ code
    QIdentityProxyModel_LayoutChangeHint * = QAbstractItemModel_LayoutChangeHint
    QIdentityProxyModel_CheckIndexOption * = QAbstractItemModel_CheckIndexOption
    QIdentityProxyModel_CheckIndexOptions * = QAbstractItemModel_CheckIndexOptions

# Stuff for class QIdentityProxyModel

# Public constructors for QIdentityProxyModel
import nimqt/qtcore/qobject
# 1 default parameters!
proc newQIdentityProxyModel*(parent: ptr QObject): ptr QIdentityProxyModel {. header:headerFile, importcpp:"new QIdentityProxyModel(@)" .} #
proc newQIdentityProxyModel*(): ptr QIdentityProxyModel {. header:headerFile, importcpp:"new QIdentityProxyModel(@)" .} #

# Public methods for QIdentityProxyModel
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QIdentityProxyModel_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QIdentityProxyModel::tr(@)".} # Public static
proc static_QIdentityProxyModel_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QIdentityProxyModel::tr(@)".} # Public static
# 1 default parameters!
proc columnCount*(this: ptr QIdentityProxyModel, parent: QModelIndex): cint {.header:headerFile, importcpp:"#.columnCount(@)".} # Public
proc columnCount*(this: ptr QIdentityProxyModel): cint {.header:headerFile, importcpp:"#.columnCount(@)".} # Public
# 1 default parameters!
proc index*(this: ptr QIdentityProxyModel, row: cint, column: cint, parent: QModelIndex): QModelIndex {.header:headerFile, importcpp:"#.index(@)".} # Public
proc index*(this: ptr QIdentityProxyModel, row: cint, column: cint): QModelIndex {.header:headerFile, importcpp:"#.index(@)".} # Public
proc mapFromSource*(this: ptr QIdentityProxyModel, sourceIndex: QModelIndex): QModelIndex {.header:headerFile, importcpp:"#.mapFromSource(@)".} # Public
proc mapToSource*(this: ptr QIdentityProxyModel, proxyIndex: QModelIndex): QModelIndex {.header:headerFile, importcpp:"#.mapToSource(@)".} # Public
proc parent*(this: ptr QIdentityProxyModel, child: QModelIndex): QModelIndex {.header:headerFile, importcpp:"#.parent(@)".} # Public
# 1 default parameters!
proc rowCount*(this: ptr QIdentityProxyModel, parent: QModelIndex): cint {.header:headerFile, importcpp:"#.rowCount(@)".} # Public
proc rowCount*(this: ptr QIdentityProxyModel): cint {.header:headerFile, importcpp:"#.rowCount(@)".} # Public
import nimqt/qtcore/qnamespace
import nimqt/qtcore/qvariant
# 1 default parameters!
proc headerData*(this: ptr QIdentityProxyModel, section: cint, orientation: Qt_Orientation, role: cint): QVariant {.header:headerFile, importcpp:"#.headerData(@)".} # Public
proc headerData*(this: ptr QIdentityProxyModel, section: cint, orientation: Qt_Orientation): QVariant {.header:headerFile, importcpp:"#.headerData(@)".} # Public
import nimqt/qtcore/qmimedata
proc dropMimeData*(this: ptr QIdentityProxyModel, data: ptr QMimeData, action: Qt_DropAction, row: cint, column: cint, parent: QModelIndex): bool {.header:headerFile, importcpp:"#.dropMimeData(@)".} # Public
proc sibling*(this: ptr QIdentityProxyModel, row: cint, column: cint, idx: QModelIndex): QModelIndex {.header:headerFile, importcpp:"#.sibling(@)".} # Public
import nimqt/qtcore/qitemselectionmodel
proc mapSelectionFromSource*(this: ptr QIdentityProxyModel, selection: QItemSelection): QItemSelection {.header:headerFile, importcpp:"#.mapSelectionFromSource(@)".} # Public
proc mapSelectionToSource*(this: ptr QIdentityProxyModel, selection: QItemSelection): QItemSelection {.header:headerFile, importcpp:"#.mapSelectionToSource(@)".} # Public
# 2 default parameters!
proc match*(this: ptr QIdentityProxyModel, start: QModelIndex, role: cint, value: QVariant, hits: cint, flags: Qt_MatchFlags): QModelIndexList {.header:headerFile, importcpp:"#.match(@)".} # Public
proc match*(this: ptr QIdentityProxyModel, start: QModelIndex, role: cint, value: QVariant, hits: cint): QModelIndexList {.header:headerFile, importcpp:"#.match(@)".} # Public
proc match*(this: ptr QIdentityProxyModel, start: QModelIndex, role: cint, value: QVariant): QModelIndexList {.header:headerFile, importcpp:"#.match(@)".} # Public
proc setSourceModel*(this: ptr QIdentityProxyModel, sourceModel: ptr QAbstractItemModel) {.header:headerFile, importcpp:"#.setSourceModel(@)".} # Public
# 1 default parameters!
proc insertColumns*(this: ptr QIdentityProxyModel, column: cint, count: cint, parent: QModelIndex): bool {.header:headerFile, importcpp:"#.insertColumns(@)".} # Public
proc insertColumns*(this: ptr QIdentityProxyModel, column: cint, count: cint): bool {.header:headerFile, importcpp:"#.insertColumns(@)".} # Public
# 1 default parameters!
proc insertRows*(this: ptr QIdentityProxyModel, row: cint, count: cint, parent: QModelIndex): bool {.header:headerFile, importcpp:"#.insertRows(@)".} # Public
proc insertRows*(this: ptr QIdentityProxyModel, row: cint, count: cint): bool {.header:headerFile, importcpp:"#.insertRows(@)".} # Public
# 1 default parameters!
proc removeColumns*(this: ptr QIdentityProxyModel, column: cint, count: cint, parent: QModelIndex): bool {.header:headerFile, importcpp:"#.removeColumns(@)".} # Public
proc removeColumns*(this: ptr QIdentityProxyModel, column: cint, count: cint): bool {.header:headerFile, importcpp:"#.removeColumns(@)".} # Public
# 1 default parameters!
proc removeRows*(this: ptr QIdentityProxyModel, row: cint, count: cint, parent: QModelIndex): bool {.header:headerFile, importcpp:"#.removeRows(@)".} # Public
proc removeRows*(this: ptr QIdentityProxyModel, row: cint, count: cint): bool {.header:headerFile, importcpp:"#.removeRows(@)".} # Public
proc moveRows*(this: ptr QIdentityProxyModel, sourceParent: QModelIndex, sourceRow: cint, count: cint, destinationParent: QModelIndex, destinationChild: cint): bool {.header:headerFile, importcpp:"#.moveRows(@)".} # Public
proc moveColumns*(this: ptr QIdentityProxyModel, sourceParent: QModelIndex, sourceColumn: cint, count: cint, destinationParent: QModelIndex, destinationChild: cint): bool {.header:headerFile, importcpp:"#.moveColumns(@)".} # Public

export qstring
export qitemselectionmodel
export qnamespace
export qabstractitemmodel
export qmimedata
export qvariant
export qobject
export qabstractproxymodel
