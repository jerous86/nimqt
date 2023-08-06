const headerFile* = "QtCore/qitemselectionmodel.h"

type
    # Enums found in the C++ code
    # Global
    QItemSelectionModel_SelectionFlag* {.header:headerFile,importcpp:"QItemSelectionModel::SelectionFlag".} = enum NoUpdate = 0, Clear = 0x1, Select = 0x2, ClearAndSelect = 0x3, 
        Deselect = 0x4, Toggle = 0x8, Current = 0x10, SelectCurrent = 0x12, ToggleCurrent = 0x18, 
        Rows = 0x20, Columns = 0x40

import nimqt/qtcore/qobject
type
    # Classes found in the C++ code
    QItemSelectionRange* {.header:headerFile,importcpp:"QItemSelectionRange" ,pure,inheritable.} = object
    QItemSelectionModel* {.header:headerFile,importcpp:"QItemSelectionModel" ,pure.} = object of QObject
    QItemSelection* {.header:headerFile,importcpp:"QItemSelection" ,pure,inheritable.} = object
import nimqt/qtcore/qflags


type
    # typedefs found in the C++ code
    QItemSelectionModel_SelectionFlags * = QFlags[QItemSelectionModel_SelectionFlag]

# Stuff for class QItemSelectionRange

# Public constructors for QItemSelectionRange
proc newQItemSelectionRange*(): QItemSelectionRange {. header:headerFile, importcpp:"QItemSelectionRange(@)", constructor .} #
import nimqt/qtcore/qabstractitemmodel
proc newQItemSelectionRange*(topL: QModelIndex, bottomR: QModelIndex): QItemSelectionRange {. header:headerFile, importcpp:"QItemSelectionRange(@)", constructor .} #
proc newQItemSelectionRange*(index: QModelIndex): QItemSelectionRange {. header:headerFile, importcpp:"QItemSelectionRange(@)", constructor .} #

# Public methods for QItemSelectionRange
proc swap*(this: QItemSelectionRange, other: QItemSelectionRange) {.header:headerFile, importcpp:"#.swap(@)".} # Public
proc top*(this: QItemSelectionRange): cint {.header:headerFile, importcpp:"#.top(@)".} # Public
proc left*(this: QItemSelectionRange): cint {.header:headerFile, importcpp:"#.left(@)".} # Public
proc bottom*(this: QItemSelectionRange): cint {.header:headerFile, importcpp:"#.bottom(@)".} # Public
proc right*(this: QItemSelectionRange): cint {.header:headerFile, importcpp:"#.right(@)".} # Public
proc width*(this: QItemSelectionRange): cint {.header:headerFile, importcpp:"#.width(@)".} # Public
proc height*(this: QItemSelectionRange): cint {.header:headerFile, importcpp:"#.height(@)".} # Public
proc topLeft*(this: QItemSelectionRange): QPersistentModelIndex {.header:headerFile, importcpp:"#.topLeft(@)".} # Public
proc bottomRight*(this: QItemSelectionRange): QPersistentModelIndex {.header:headerFile, importcpp:"#.bottomRight(@)".} # Public
proc parent*(this: QItemSelectionRange): QModelIndex {.header:headerFile, importcpp:"#.parent(@)".} # Public
proc model*(this: QItemSelectionRange): ptr QAbstractItemModel {.header:headerFile, importcpp:"#.model(@)".} # Public
proc contains*(this: QItemSelectionRange, index: QModelIndex): bool {.header:headerFile, importcpp:"#.contains(@)".} # Public
proc contains*(this: QItemSelectionRange, row: cint, column: cint, parentIndex: QModelIndex): bool {.header:headerFile, importcpp:"#.contains(@)".} # Public
proc intersects*(this: QItemSelectionRange, other: QItemSelectionRange): bool {.header:headerFile, importcpp:"#.intersects(@)".} # Public
proc intersected*(this: QItemSelectionRange, other: QItemSelectionRange): QItemSelectionRange {.header:headerFile, importcpp:"#.intersected(@)".} # Public
proc `!=`*(this: QItemSelectionRange, other: QItemSelectionRange): bool {.header:headerFile, importcpp:"#.operator!=(@)".} # Public
proc isValid*(this: QItemSelectionRange): bool {.header:headerFile, importcpp:"#.isValid(@)".} # Public
proc isEmpty*(this: QItemSelectionRange): bool {.header:headerFile, importcpp:"#.isEmpty(@)".} # Public
proc indexes*(this: QItemSelectionRange): QModelIndexList {.header:headerFile, importcpp:"#.indexes(@)".} # Public
# Stuff for class QItemSelectionModel

# Public constructors for QItemSelectionModel
# 1 default parameters!
proc newQItemSelectionModel*(model: ptr QAbstractItemModel): ptr QItemSelectionModel {. header:headerFile, importcpp:"new QItemSelectionModel(@)" .} #
proc newQItemSelectionModel*(): ptr QItemSelectionModel {. header:headerFile, importcpp:"new QItemSelectionModel(@)" .} #
proc newQItemSelectionModel*(model: ptr QAbstractItemModel, parent: ptr QObject): ptr QItemSelectionModel {. header:headerFile, importcpp:"new QItemSelectionModel(@)" .} #

# Public methods for QItemSelectionModel
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QItemSelectionModel_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QItemSelectionModel::tr(@)".} # Public static
proc static_QItemSelectionModel_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QItemSelectionModel::tr(@)".} # Public static
proc currentIndex*(this: ptr QItemSelectionModel): QModelIndex {.header:headerFile, importcpp:"#.currentIndex(@)".} # Public
proc isSelected*(this: ptr QItemSelectionModel, index: QModelIndex): bool {.header:headerFile, importcpp:"#.isSelected(@)".} # Public
# 1 default parameters!
proc isRowSelected*(this: ptr QItemSelectionModel, row: cint, parent: QModelIndex): bool {.header:headerFile, importcpp:"#.isRowSelected(@)".} # Public
proc isRowSelected*(this: ptr QItemSelectionModel, row: cint): bool {.header:headerFile, importcpp:"#.isRowSelected(@)".} # Public
# 1 default parameters!
proc isColumnSelected*(this: ptr QItemSelectionModel, column: cint, parent: QModelIndex): bool {.header:headerFile, importcpp:"#.isColumnSelected(@)".} # Public
proc isColumnSelected*(this: ptr QItemSelectionModel, column: cint): bool {.header:headerFile, importcpp:"#.isColumnSelected(@)".} # Public
# 1 default parameters!
proc rowIntersectsSelection*(this: ptr QItemSelectionModel, row: cint, parent: QModelIndex): bool {.header:headerFile, importcpp:"#.rowIntersectsSelection(@)".} # Public
proc rowIntersectsSelection*(this: ptr QItemSelectionModel, row: cint): bool {.header:headerFile, importcpp:"#.rowIntersectsSelection(@)".} # Public
# 1 default parameters!
proc columnIntersectsSelection*(this: ptr QItemSelectionModel, column: cint, parent: QModelIndex): bool {.header:headerFile, importcpp:"#.columnIntersectsSelection(@)".} # Public
proc columnIntersectsSelection*(this: ptr QItemSelectionModel, column: cint): bool {.header:headerFile, importcpp:"#.columnIntersectsSelection(@)".} # Public
proc hasSelection*(this: ptr QItemSelectionModel): bool {.header:headerFile, importcpp:"#.hasSelection(@)".} # Public
proc selectedIndexes*(this: ptr QItemSelectionModel): QModelIndexList {.header:headerFile, importcpp:"#.selectedIndexes(@)".} # Public
# 1 default parameters!
proc selectedRows*(this: ptr QItemSelectionModel, column: cint): QModelIndexList {.header:headerFile, importcpp:"#.selectedRows(@)".} # Public
proc selectedRows*(this: ptr QItemSelectionModel): QModelIndexList {.header:headerFile, importcpp:"#.selectedRows(@)".} # Public
# 1 default parameters!
proc selectedColumns*(this: ptr QItemSelectionModel, row: cint): QModelIndexList {.header:headerFile, importcpp:"#.selectedColumns(@)".} # Public
proc selectedColumns*(this: ptr QItemSelectionModel): QModelIndexList {.header:headerFile, importcpp:"#.selectedColumns(@)".} # Public
proc selection*(this: ptr QItemSelectionModel): QItemSelection {.header:headerFile, importcpp:"#.selection(@)".} # Public
proc model*(this: ptr QItemSelectionModel): ptr QAbstractItemModel {.header:headerFile, importcpp:"#.model(@)".} # Public
import nimqt/qtcore/qproperty
proc bindableModel*(this: ptr QItemSelectionModel): QBindable[ptr QAbstractItemModel] {.header:headerFile, importcpp:"#.bindableModel(@)".} # Public
proc setModel*(this: ptr QItemSelectionModel, model: ptr QAbstractItemModel) {.header:headerFile, importcpp:"#.setModel(@)".} # Public
proc setCurrentIndex*(this: ptr QItemSelectionModel, index: QModelIndex, command: QFlags[QItemSelectionModel_SelectionFlag]) {.header:headerFile, importcpp:"#.setCurrentIndex(@)".} # Public
proc select*(this: ptr QItemSelectionModel, index: QModelIndex, command: QFlags[QItemSelectionModel_SelectionFlag]) {.header:headerFile, importcpp:"#.select(@)".} # Public
proc select*(this: ptr QItemSelectionModel, selection: QItemSelection, command: QFlags[QItemSelectionModel_SelectionFlag]) {.header:headerFile, importcpp:"#.select(@)".} # Public
proc clear*(this: ptr QItemSelectionModel) {.header:headerFile, importcpp:"#.clear(@)".} # Public
proc reset*(this: ptr QItemSelectionModel) {.header:headerFile, importcpp:"#.reset(@)".} # Public
proc clearSelection*(this: ptr QItemSelectionModel) {.header:headerFile, importcpp:"#.clearSelection(@)".} # Public
proc clearCurrentIndex*(this: ptr QItemSelectionModel) {.header:headerFile, importcpp:"#.clearCurrentIndex(@)".} # Public
proc selectionChanged*(this: ptr QItemSelectionModel, selected: QItemSelection, deselected: QItemSelection) {.header:headerFile, importcpp:"#.selectionChanged(@)".} # Public
proc currentChanged*(this: ptr QItemSelectionModel, current: QModelIndex, previous: QModelIndex) {.header:headerFile, importcpp:"#.currentChanged(@)".} # Public
proc currentRowChanged*(this: ptr QItemSelectionModel, current: QModelIndex, previous: QModelIndex) {.header:headerFile, importcpp:"#.currentRowChanged(@)".} # Public
proc currentColumnChanged*(this: ptr QItemSelectionModel, current: QModelIndex, previous: QModelIndex) {.header:headerFile, importcpp:"#.currentColumnChanged(@)".} # Public
proc modelChanged*(this: ptr QItemSelectionModel, model: ptr QAbstractItemModel) {.header:headerFile, importcpp:"#.modelChanged(@)".} # Public

# Protected methods methods for QItemSelectionModel
proc emitSelectionChanged*(this: ptr QItemSelectionModel, newSelection: QItemSelection, oldSelection: QItemSelection) {.header:headerFile, importcpp:"#.emitSelectionChanged(@)".} # Protected
# Stuff for class QItemSelection

# Public constructors for QItemSelection
proc newQItemSelection*(topLeft: QModelIndex, bottomRight: QModelIndex): QItemSelection {. header:headerFile, importcpp:"QItemSelection(@)", constructor .} #

# Public methods for QItemSelection
proc select*(this: QItemSelection, topLeft: QModelIndex, bottomRight: QModelIndex) {.header:headerFile, importcpp:"#.select(@)".} # Public
proc contains*(this: QItemSelection, index: QModelIndex): bool {.header:headerFile, importcpp:"#.contains(@)".} # Public
proc indexes*(this: QItemSelection): QModelIndexList {.header:headerFile, importcpp:"#.indexes(@)".} # Public
proc merge*(this: QItemSelection, other: QItemSelection, command: QItemSelectionModel_SelectionFlags) {.header:headerFile, importcpp:"#.merge(@)".} # Public
proc static_QItemSelection_split*(range: QItemSelectionRange, other: QItemSelectionRange, result: ptr QItemSelection) {.header:headerFile, importcpp:"QItemSelection::split(@)".} # Public static

export qstring
export qproperty
export qabstractitemmodel
export qflags
export qobject
