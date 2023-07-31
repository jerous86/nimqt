const headerFile* = "QtCore/qtransposeproxymodel.h"

import nimqt/qtcore/qabstractproxymodel
type
    # Classes found in the C++ code
    QTransposeProxyModel* {.header:headerFile,importcpp:"QTransposeProxyModel" ,pure.} = object of QAbstractProxyModel
import nimqt/qtcore/qabstractitemmodel


type
    # typedefs found in the C++ code
    QTransposeProxyModel_LayoutChangeHint * = QAbstractItemModel_LayoutChangeHint
    QTransposeProxyModel_CheckIndexOption * = QAbstractItemModel_CheckIndexOption
    QTransposeProxyModel_CheckIndexOptions * = QAbstractItemModel_CheckIndexOptions

# Stuff for class QTransposeProxyModel

# Public constructors for QTransposeProxyModel
import nimqt/qtcore/qobject
# 1 default parameters!
proc newQTransposeProxyModel*(parent: ptr QObject): ptr QTransposeProxyModel {. header:headerFile, importcpp:"new QTransposeProxyModel(@)" .} #
proc newQTransposeProxyModel*(): ptr QTransposeProxyModel {. header:headerFile, importcpp:"new QTransposeProxyModel(@)" .} #

# Public methods for QTransposeProxyModel
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QTransposeProxyModel_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QTransposeProxyModel::tr(@)".} # Public static
proc static_QTransposeProxyModel_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QTransposeProxyModel::tr(@)".} # Public static
proc setSourceModel*(this: ptr QTransposeProxyModel, newSourceModel: ptr QAbstractItemModel) {.header:headerFile, importcpp:"#.setSourceModel(@)".} # Public
# 1 default parameters!
proc rowCount*(this: ptr QTransposeProxyModel, parent: QModelIndex): cint {.header:headerFile, importcpp:"#.rowCount(@)".} # Public
proc rowCount*(this: ptr QTransposeProxyModel): cint {.header:headerFile, importcpp:"#.rowCount(@)".} # Public
# 1 default parameters!
proc columnCount*(this: ptr QTransposeProxyModel, parent: QModelIndex): cint {.header:headerFile, importcpp:"#.columnCount(@)".} # Public
proc columnCount*(this: ptr QTransposeProxyModel): cint {.header:headerFile, importcpp:"#.columnCount(@)".} # Public
import nimqt/qtcore/qnamespace
import nimqt/qtcore/qvariant
# 1 default parameters!
proc headerData*(this: ptr QTransposeProxyModel, section: cint, orientation: Qt_Orientation, role: cint): QVariant {.header:headerFile, importcpp:"#.headerData(@)".} # Public
proc headerData*(this: ptr QTransposeProxyModel, section: cint, orientation: Qt_Orientation): QVariant {.header:headerFile, importcpp:"#.headerData(@)".} # Public
# 1 default parameters!
proc setHeaderData*(this: ptr QTransposeProxyModel, section: cint, orientation: Qt_Orientation, value: QVariant, role: cint): bool {.header:headerFile, importcpp:"#.setHeaderData(@)".} # Public
proc setHeaderData*(this: ptr QTransposeProxyModel, section: cint, orientation: Qt_Orientation, value: QVariant): bool {.header:headerFile, importcpp:"#.setHeaderData(@)".} # Public
import nimqt/qtcore/qmap
proc setItemData*(this: ptr QTransposeProxyModel, index: QModelIndex, roles: QMap[cint, QVariant]): bool {.header:headerFile, importcpp:"#.setItemData(@)".} # Public
import nimqt/qtcore/qsize
proc span*(this: ptr QTransposeProxyModel, index: QModelIndex): QSize {.header:headerFile, importcpp:"#.span(@)".} # Public
proc itemData*(this: ptr QTransposeProxyModel, index: QModelIndex): QMap[cint, QVariant] {.header:headerFile, importcpp:"#.itemData(@)".} # Public
proc mapFromSource*(this: ptr QTransposeProxyModel, sourceIndex: QModelIndex): QModelIndex {.header:headerFile, importcpp:"#.mapFromSource(@)".} # Public
proc mapToSource*(this: ptr QTransposeProxyModel, proxyIndex: QModelIndex): QModelIndex {.header:headerFile, importcpp:"#.mapToSource(@)".} # Public
proc parent*(this: ptr QTransposeProxyModel, index: QModelIndex): QModelIndex {.header:headerFile, importcpp:"#.parent(@)".} # Public
# 1 default parameters!
proc index*(this: ptr QTransposeProxyModel, row: cint, column: cint, parent: QModelIndex): QModelIndex {.header:headerFile, importcpp:"#.index(@)".} # Public
proc index*(this: ptr QTransposeProxyModel, row: cint, column: cint): QModelIndex {.header:headerFile, importcpp:"#.index(@)".} # Public
# 1 default parameters!
proc insertRows*(this: ptr QTransposeProxyModel, row: cint, count: cint, parent: QModelIndex): bool {.header:headerFile, importcpp:"#.insertRows(@)".} # Public
proc insertRows*(this: ptr QTransposeProxyModel, row: cint, count: cint): bool {.header:headerFile, importcpp:"#.insertRows(@)".} # Public
# 1 default parameters!
proc removeRows*(this: ptr QTransposeProxyModel, row: cint, count: cint, parent: QModelIndex): bool {.header:headerFile, importcpp:"#.removeRows(@)".} # Public
proc removeRows*(this: ptr QTransposeProxyModel, row: cint, count: cint): bool {.header:headerFile, importcpp:"#.removeRows(@)".} # Public
proc moveRows*(this: ptr QTransposeProxyModel, sourceParent: QModelIndex, sourceRow: cint, count: cint, destinationParent: QModelIndex, destinationChild: cint): bool {.header:headerFile, importcpp:"#.moveRows(@)".} # Public
# 1 default parameters!
proc insertColumns*(this: ptr QTransposeProxyModel, column: cint, count: cint, parent: QModelIndex): bool {.header:headerFile, importcpp:"#.insertColumns(@)".} # Public
proc insertColumns*(this: ptr QTransposeProxyModel, column: cint, count: cint): bool {.header:headerFile, importcpp:"#.insertColumns(@)".} # Public
# 1 default parameters!
proc removeColumns*(this: ptr QTransposeProxyModel, column: cint, count: cint, parent: QModelIndex): bool {.header:headerFile, importcpp:"#.removeColumns(@)".} # Public
proc removeColumns*(this: ptr QTransposeProxyModel, column: cint, count: cint): bool {.header:headerFile, importcpp:"#.removeColumns(@)".} # Public
proc moveColumns*(this: ptr QTransposeProxyModel, sourceParent: QModelIndex, sourceColumn: cint, count: cint, destinationParent: QModelIndex, destinationChild: cint): bool {.header:headerFile, importcpp:"#.moveColumns(@)".} # Public
proc sort*(this: ptr QTransposeProxyModel, column: cint, order: Qt_SortOrder) {.header:headerFile, importcpp:"#.sort(@)".} # Public

export qmap
export qstring
export qsize
export qnamespace
export qabstractitemmodel
export qvariant
export qobject
export qabstractproxymodel
