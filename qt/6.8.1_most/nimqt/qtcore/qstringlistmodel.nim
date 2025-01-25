const headerFile* = "QtCore/qstringlistmodel.h"

import nimqt/qtcore/qabstractitemmodel
type
    # Classes found in the C++ code
    QStringListModel* {.header:headerFile,importcpp:"QStringListModel" ,pure.} = object of QAbstractListModel


type
    # typedefs found in the C++ code
    QStringListModel_LayoutChangeHint * = QAbstractItemModel_LayoutChangeHint
    QStringListModel_CheckIndexOption * = QAbstractItemModel_CheckIndexOption
    QStringListModel_CheckIndexOptions * = QAbstractItemModel_CheckIndexOptions

# Stuff for class QStringListModel

# Public constructors for QStringListModel
import nimqt/qtcore/qobject
# 1 default parameters!
proc newQStringListModel*(parent: ptr QObject): ptr QStringListModel {. header:headerFile, importcpp:"new QStringListModel(@)" .} #
proc newQStringListModel*(): ptr QStringListModel {. header:headerFile, importcpp:"new QStringListModel(@)" .} #
import nimqt/qtcore/qstringlist
# 1 default parameters!
proc newQStringListModel*(strings: QStringList, parent: ptr QObject): ptr QStringListModel {. header:headerFile, importcpp:"new QStringListModel(@)" .} #
proc newQStringListModel*(strings: QStringList): ptr QStringListModel {. header:headerFile, importcpp:"new QStringListModel(@)" .} #

# Public methods for QStringListModel
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QStringListModel_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QStringListModel::tr(@)".} # Public static
proc static_QStringListModel_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QStringListModel::tr(@)".} # Public static
# 1 default parameters!
proc rowCount*(this: ptr QStringListModel, parent: QModelIndex): cint {.header:headerFile, importcpp:"#.rowCount(@)".} # Public
proc rowCount*(this: ptr QStringListModel): cint {.header:headerFile, importcpp:"#.rowCount(@)".} # Public
proc sibling*(this: ptr QStringListModel, row: cint, column: cint, idx: QModelIndex): QModelIndex {.header:headerFile, importcpp:"#.sibling(@)".} # Public
import nimqt/qtcore/qvariant
# 1 default parameters!
proc data*(this: ptr QStringListModel, index: QModelIndex, role: cint): QVariant {.header:headerFile, importcpp:"#.data(@)".} # Public
proc data*(this: ptr QStringListModel, index: QModelIndex): QVariant {.header:headerFile, importcpp:"#.data(@)".} # Public
# 1 default parameters!
proc setData*(this: ptr QStringListModel, index: QModelIndex, value: QVariant, role: cint): bool {.header:headerFile, importcpp:"#.setData(@)".} # Public
proc setData*(this: ptr QStringListModel, index: QModelIndex, value: QVariant): bool {.header:headerFile, importcpp:"#.setData(@)".} # Public
proc clearItemData*(this: ptr QStringListModel, index: QModelIndex): bool {.header:headerFile, importcpp:"#.clearItemData(@)".} # Public
import nimqt/qtcore/qnamespace
proc flags*(this: ptr QStringListModel, index: QModelIndex): Qt_ItemFlags {.header:headerFile, importcpp:"#.flags(@)".} # Public
# 1 default parameters!
proc insertRows*(this: ptr QStringListModel, row: cint, count: cint, parent: QModelIndex): bool {.header:headerFile, importcpp:"#.insertRows(@)".} # Public
proc insertRows*(this: ptr QStringListModel, row: cint, count: cint): bool {.header:headerFile, importcpp:"#.insertRows(@)".} # Public
# 1 default parameters!
proc removeRows*(this: ptr QStringListModel, row: cint, count: cint, parent: QModelIndex): bool {.header:headerFile, importcpp:"#.removeRows(@)".} # Public
proc removeRows*(this: ptr QStringListModel, row: cint, count: cint): bool {.header:headerFile, importcpp:"#.removeRows(@)".} # Public
proc moveRows*(this: ptr QStringListModel, sourceParent: QModelIndex, sourceRow: cint, count: cint, destinationParent: QModelIndex, destinationChild: cint): bool {.header:headerFile, importcpp:"#.moveRows(@)".} # Public
import nimqt/qtcore/qmap
proc itemData*(this: ptr QStringListModel, index: QModelIndex): QMap[cint, QVariant] {.header:headerFile, importcpp:"#.itemData(@)".} # Public
proc setItemData*(this: ptr QStringListModel, index: QModelIndex, roles: QMap[cint, QVariant]): bool {.header:headerFile, importcpp:"#.setItemData(@)".} # Public
proc sort*(this: ptr QStringListModel, column: cint, order: Qt_SortOrder) {.header:headerFile, importcpp:"#.sort(@)".} # Public
proc stringList*(this: ptr QStringListModel): QStringList {.header:headerFile, importcpp:"#.stringList(@)".} # Public
proc setStringList*(this: ptr QStringListModel, strings: QStringList) {.header:headerFile, importcpp:"#.setStringList(@)".} # Public
proc supportedDropActions*(this: ptr QStringListModel): Qt_DropActions {.header:headerFile, importcpp:"#.supportedDropActions(@)".} # Public

export qmap
export qstringlist
export qstring
export qnamespace
export qabstractitemmodel
export qvariant
export qobject
