const headerFile* = "QtCore/qsortfilterproxymodel.h"

import nimqt/qtcore/qabstractproxymodel
type
    # Classes found in the C++ code
    QSortFilterProxyModel* {.header:headerFile,importcpp:"QSortFilterProxyModel" ,pure.} = object of QAbstractProxyModel
import nimqt/qtcore/qabstractitemmodel


type
    # typedefs found in the C++ code
    QSortFilterProxyModel_LayoutChangeHint * = QAbstractItemModel_LayoutChangeHint
    QSortFilterProxyModel_CheckIndexOption * = QAbstractItemModel_CheckIndexOption
    QSortFilterProxyModel_CheckIndexOptions * = QAbstractItemModel_CheckIndexOptions

# Stuff for class QSortFilterProxyModel

# Public constructors for QSortFilterProxyModel
import nimqt/qtcore/qobject
# 1 default parameters!
proc newQSortFilterProxyModel*(parent: ptr QObject): ptr QSortFilterProxyModel {. header:headerFile, importcpp:"new QSortFilterProxyModel(@)" .} #
proc newQSortFilterProxyModel*(): ptr QSortFilterProxyModel {. header:headerFile, importcpp:"new QSortFilterProxyModel(@)" .} #

# Public methods for QSortFilterProxyModel
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QSortFilterProxyModel_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QSortFilterProxyModel::tr(@)".} # Public static
proc static_QSortFilterProxyModel_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QSortFilterProxyModel::tr(@)".} # Public static
proc setSourceModel*(this: ptr QSortFilterProxyModel, sourceModel: ptr QAbstractItemModel) {.header:headerFile, importcpp:"#.setSourceModel(@)".} # Public
proc mapToSource*(this: ptr QSortFilterProxyModel, proxyIndex: QModelIndex): QModelIndex {.header:headerFile, importcpp:"#.mapToSource(@)".} # Public
proc mapFromSource*(this: ptr QSortFilterProxyModel, sourceIndex: QModelIndex): QModelIndex {.header:headerFile, importcpp:"#.mapFromSource(@)".} # Public
import nimqt/qtcore/qitemselectionmodel
proc mapSelectionToSource*(this: ptr QSortFilterProxyModel, proxySelection: QItemSelection): QItemSelection {.header:headerFile, importcpp:"#.mapSelectionToSource(@)".} # Public
proc mapSelectionFromSource*(this: ptr QSortFilterProxyModel, sourceSelection: QItemSelection): QItemSelection {.header:headerFile, importcpp:"#.mapSelectionFromSource(@)".} # Public
import nimqt/qtcore/qregularexpression
proc filterRegularExpression*(this: ptr QSortFilterProxyModel): QRegularExpression {.header:headerFile, importcpp:"#.filterRegularExpression(@)".} # Public
import nimqt/qtcore/qproperty
proc bindableFilterRegularExpression*(this: ptr QSortFilterProxyModel): QBindable[QRegularExpression] {.header:headerFile, importcpp:"#.bindableFilterRegularExpression(@)".} # Public
proc filterKeyColumn*(this: ptr QSortFilterProxyModel): cint {.header:headerFile, importcpp:"#.filterKeyColumn(@)".} # Public
proc setFilterKeyColumn*(this: ptr QSortFilterProxyModel, column: cint) {.header:headerFile, importcpp:"#.setFilterKeyColumn(@)".} # Public
proc bindableFilterKeyColumn*(this: ptr QSortFilterProxyModel): QBindable[cint] {.header:headerFile, importcpp:"#.bindableFilterKeyColumn(@)".} # Public
import nimqt/qtcore/qnamespace
proc filterCaseSensitivity*(this: ptr QSortFilterProxyModel): Qt_CaseSensitivity {.header:headerFile, importcpp:"#.filterCaseSensitivity(@)".} # Public
proc setFilterCaseSensitivity*(this: ptr QSortFilterProxyModel, cs: Qt_CaseSensitivity) {.header:headerFile, importcpp:"#.setFilterCaseSensitivity(@)".} # Public
proc bindableFilterCaseSensitivity*(this: ptr QSortFilterProxyModel): QBindable[Qt_CaseSensitivity] {.header:headerFile, importcpp:"#.bindableFilterCaseSensitivity(@)".} # Public
proc sortCaseSensitivity*(this: ptr QSortFilterProxyModel): Qt_CaseSensitivity {.header:headerFile, importcpp:"#.sortCaseSensitivity(@)".} # Public
proc setSortCaseSensitivity*(this: ptr QSortFilterProxyModel, cs: Qt_CaseSensitivity) {.header:headerFile, importcpp:"#.setSortCaseSensitivity(@)".} # Public
proc bindableSortCaseSensitivity*(this: ptr QSortFilterProxyModel): QBindable[Qt_CaseSensitivity] {.header:headerFile, importcpp:"#.bindableSortCaseSensitivity(@)".} # Public
proc isSortLocaleAware*(this: ptr QSortFilterProxyModel): bool {.header:headerFile, importcpp:"#.isSortLocaleAware(@)".} # Public
proc setSortLocaleAware*(this: ptr QSortFilterProxyModel, on: bool) {.header:headerFile, importcpp:"#.setSortLocaleAware(@)".} # Public
proc bindableIsSortLocaleAware*(this: ptr QSortFilterProxyModel): QBindable[bool] {.header:headerFile, importcpp:"#.bindableIsSortLocaleAware(@)".} # Public
proc sortColumn*(this: ptr QSortFilterProxyModel): cint {.header:headerFile, importcpp:"#.sortColumn(@)".} # Public
proc sortOrder*(this: ptr QSortFilterProxyModel): Qt_SortOrder {.header:headerFile, importcpp:"#.sortOrder(@)".} # Public
proc dynamicSortFilter*(this: ptr QSortFilterProxyModel): bool {.header:headerFile, importcpp:"#.dynamicSortFilter(@)".} # Public
proc setDynamicSortFilter*(this: ptr QSortFilterProxyModel, enable: bool) {.header:headerFile, importcpp:"#.setDynamicSortFilter(@)".} # Public
proc bindableDynamicSortFilter*(this: ptr QSortFilterProxyModel): QBindable[bool] {.header:headerFile, importcpp:"#.bindableDynamicSortFilter(@)".} # Public
proc sortRole*(this: ptr QSortFilterProxyModel): cint {.header:headerFile, importcpp:"#.sortRole(@)".} # Public
proc setSortRole*(this: ptr QSortFilterProxyModel, role: cint) {.header:headerFile, importcpp:"#.setSortRole(@)".} # Public
proc bindableSortRole*(this: ptr QSortFilterProxyModel): QBindable[cint] {.header:headerFile, importcpp:"#.bindableSortRole(@)".} # Public
proc filterRole*(this: ptr QSortFilterProxyModel): cint {.header:headerFile, importcpp:"#.filterRole(@)".} # Public
proc setFilterRole*(this: ptr QSortFilterProxyModel, role: cint) {.header:headerFile, importcpp:"#.setFilterRole(@)".} # Public
proc bindableFilterRole*(this: ptr QSortFilterProxyModel): QBindable[cint] {.header:headerFile, importcpp:"#.bindableFilterRole(@)".} # Public
proc isRecursiveFilteringEnabled*(this: ptr QSortFilterProxyModel): bool {.header:headerFile, importcpp:"#.isRecursiveFilteringEnabled(@)".} # Public
proc setRecursiveFilteringEnabled*(this: ptr QSortFilterProxyModel, recursive: bool) {.header:headerFile, importcpp:"#.setRecursiveFilteringEnabled(@)".} # Public
proc bindableRecursiveFilteringEnabled*(this: ptr QSortFilterProxyModel): QBindable[bool] {.header:headerFile, importcpp:"#.bindableRecursiveFilteringEnabled(@)".} # Public
proc autoAcceptChildRows*(this: ptr QSortFilterProxyModel): bool {.header:headerFile, importcpp:"#.autoAcceptChildRows(@)".} # Public
proc setAutoAcceptChildRows*(this: ptr QSortFilterProxyModel, accept: bool) {.header:headerFile, importcpp:"#.setAutoAcceptChildRows(@)".} # Public
proc bindableAutoAcceptChildRows*(this: ptr QSortFilterProxyModel): QBindable[bool] {.header:headerFile, importcpp:"#.bindableAutoAcceptChildRows(@)".} # Public
proc setFilterRegularExpression*(this: ptr QSortFilterProxyModel, pattern: QString) {.header:headerFile, importcpp:"#.setFilterRegularExpression(@)".} # Public
proc setFilterRegularExpression*(this: ptr QSortFilterProxyModel, regularExpression: QRegularExpression) {.header:headerFile, importcpp:"#.setFilterRegularExpression(@)".} # Public
proc setFilterWildcard*(this: ptr QSortFilterProxyModel, pattern: QString) {.header:headerFile, importcpp:"#.setFilterWildcard(@)".} # Public
proc setFilterFixedString*(this: ptr QSortFilterProxyModel, pattern: QString) {.header:headerFile, importcpp:"#.setFilterFixedString(@)".} # Public
proc invalidate*(this: ptr QSortFilterProxyModel) {.header:headerFile, importcpp:"#.invalidate(@)".} # Public
# 1 default parameters!
proc index*(this: ptr QSortFilterProxyModel, row: cint, column: cint, parent: QModelIndex): QModelIndex {.header:headerFile, importcpp:"#.index(@)".} # Public
proc index*(this: ptr QSortFilterProxyModel, row: cint, column: cint): QModelIndex {.header:headerFile, importcpp:"#.index(@)".} # Public
proc parent*(this: ptr QSortFilterProxyModel, child: QModelIndex): QModelIndex {.header:headerFile, importcpp:"#.parent(@)".} # Public
proc sibling*(this: ptr QSortFilterProxyModel, row: cint, column: cint, idx: QModelIndex): QModelIndex {.header:headerFile, importcpp:"#.sibling(@)".} # Public
# 1 default parameters!
proc rowCount*(this: ptr QSortFilterProxyModel, parent: QModelIndex): cint {.header:headerFile, importcpp:"#.rowCount(@)".} # Public
proc rowCount*(this: ptr QSortFilterProxyModel): cint {.header:headerFile, importcpp:"#.rowCount(@)".} # Public
# 1 default parameters!
proc columnCount*(this: ptr QSortFilterProxyModel, parent: QModelIndex): cint {.header:headerFile, importcpp:"#.columnCount(@)".} # Public
proc columnCount*(this: ptr QSortFilterProxyModel): cint {.header:headerFile, importcpp:"#.columnCount(@)".} # Public
# 1 default parameters!
proc hasChildren*(this: ptr QSortFilterProxyModel, parent: QModelIndex): bool {.header:headerFile, importcpp:"#.hasChildren(@)".} # Public
proc hasChildren*(this: ptr QSortFilterProxyModel): bool {.header:headerFile, importcpp:"#.hasChildren(@)".} # Public
import nimqt/qtcore/qvariant
# 1 default parameters!
proc data*(this: ptr QSortFilterProxyModel, index: QModelIndex, role: cint): QVariant {.header:headerFile, importcpp:"#.data(@)".} # Public
proc data*(this: ptr QSortFilterProxyModel, index: QModelIndex): QVariant {.header:headerFile, importcpp:"#.data(@)".} # Public
# 1 default parameters!
proc setData*(this: ptr QSortFilterProxyModel, index: QModelIndex, value: QVariant, role: cint): bool {.header:headerFile, importcpp:"#.setData(@)".} # Public
proc setData*(this: ptr QSortFilterProxyModel, index: QModelIndex, value: QVariant): bool {.header:headerFile, importcpp:"#.setData(@)".} # Public
# 1 default parameters!
proc headerData*(this: ptr QSortFilterProxyModel, section: cint, orientation: Qt_Orientation, role: cint): QVariant {.header:headerFile, importcpp:"#.headerData(@)".} # Public
proc headerData*(this: ptr QSortFilterProxyModel, section: cint, orientation: Qt_Orientation): QVariant {.header:headerFile, importcpp:"#.headerData(@)".} # Public
# 1 default parameters!
proc setHeaderData*(this: ptr QSortFilterProxyModel, section: cint, orientation: Qt_Orientation, value: QVariant, role: cint): bool {.header:headerFile, importcpp:"#.setHeaderData(@)".} # Public
proc setHeaderData*(this: ptr QSortFilterProxyModel, section: cint, orientation: Qt_Orientation, value: QVariant): bool {.header:headerFile, importcpp:"#.setHeaderData(@)".} # Public
import nimqt/qtcore/qmimedata
proc mimeData*(this: ptr QSortFilterProxyModel, indexes: QModelIndexList): ptr QMimeData {.header:headerFile, importcpp:"#.mimeData(@)".} # Public
proc dropMimeData*(this: ptr QSortFilterProxyModel, data: ptr QMimeData, action: Qt_DropAction, row: cint, column: cint, parent: QModelIndex): bool {.header:headerFile, importcpp:"#.dropMimeData(@)".} # Public
# 1 default parameters!
proc insertRows*(this: ptr QSortFilterProxyModel, row: cint, count: cint, parent: QModelIndex): bool {.header:headerFile, importcpp:"#.insertRows(@)".} # Public
proc insertRows*(this: ptr QSortFilterProxyModel, row: cint, count: cint): bool {.header:headerFile, importcpp:"#.insertRows(@)".} # Public
# 1 default parameters!
proc insertColumns*(this: ptr QSortFilterProxyModel, column: cint, count: cint, parent: QModelIndex): bool {.header:headerFile, importcpp:"#.insertColumns(@)".} # Public
proc insertColumns*(this: ptr QSortFilterProxyModel, column: cint, count: cint): bool {.header:headerFile, importcpp:"#.insertColumns(@)".} # Public
# 1 default parameters!
proc removeRows*(this: ptr QSortFilterProxyModel, row: cint, count: cint, parent: QModelIndex): bool {.header:headerFile, importcpp:"#.removeRows(@)".} # Public
proc removeRows*(this: ptr QSortFilterProxyModel, row: cint, count: cint): bool {.header:headerFile, importcpp:"#.removeRows(@)".} # Public
# 1 default parameters!
proc removeColumns*(this: ptr QSortFilterProxyModel, column: cint, count: cint, parent: QModelIndex): bool {.header:headerFile, importcpp:"#.removeColumns(@)".} # Public
proc removeColumns*(this: ptr QSortFilterProxyModel, column: cint, count: cint): bool {.header:headerFile, importcpp:"#.removeColumns(@)".} # Public
proc fetchMore*(this: ptr QSortFilterProxyModel, parent: QModelIndex) {.header:headerFile, importcpp:"#.fetchMore(@)".} # Public
proc canFetchMore*(this: ptr QSortFilterProxyModel, parent: QModelIndex): bool {.header:headerFile, importcpp:"#.canFetchMore(@)".} # Public
proc flags*(this: ptr QSortFilterProxyModel, index: QModelIndex): Qt_ItemFlags {.header:headerFile, importcpp:"#.flags(@)".} # Public
proc buddy*(this: ptr QSortFilterProxyModel, index: QModelIndex): QModelIndex {.header:headerFile, importcpp:"#.buddy(@)".} # Public
# 2 default parameters!
proc match*(this: ptr QSortFilterProxyModel, start: QModelIndex, role: cint, value: QVariant, hits: cint, flags: Qt_MatchFlags): QModelIndexList {.header:headerFile, importcpp:"#.match(@)".} # Public
proc match*(this: ptr QSortFilterProxyModel, start: QModelIndex, role: cint, value: QVariant, hits: cint): QModelIndexList {.header:headerFile, importcpp:"#.match(@)".} # Public
proc match*(this: ptr QSortFilterProxyModel, start: QModelIndex, role: cint, value: QVariant): QModelIndexList {.header:headerFile, importcpp:"#.match(@)".} # Public
import nimqt/qtcore/qsize
proc span*(this: ptr QSortFilterProxyModel, index: QModelIndex): QSize {.header:headerFile, importcpp:"#.span(@)".} # Public
proc sort*(this: ptr QSortFilterProxyModel, column: cint, order: Qt_SortOrder) {.header:headerFile, importcpp:"#.sort(@)".} # Public
import nimqt/qtcore/qstringlist
proc mimeTypes*(this: ptr QSortFilterProxyModel): QStringList {.header:headerFile, importcpp:"#.mimeTypes(@)".} # Public
proc supportedDropActions*(this: ptr QSortFilterProxyModel): Qt_DropActions {.header:headerFile, importcpp:"#.supportedDropActions(@)".} # Public
proc dynamicSortFilterChanged*(this: ptr QSortFilterProxyModel, dynamicSortFilter: bool) {.header:headerFile, importcpp:"#.dynamicSortFilterChanged(@)".} # Public
proc filterCaseSensitivityChanged*(this: ptr QSortFilterProxyModel, filterCaseSensitivity: Qt_CaseSensitivity) {.header:headerFile, importcpp:"#.filterCaseSensitivityChanged(@)".} # Public
proc sortCaseSensitivityChanged*(this: ptr QSortFilterProxyModel, sortCaseSensitivity: Qt_CaseSensitivity) {.header:headerFile, importcpp:"#.sortCaseSensitivityChanged(@)".} # Public
proc sortLocaleAwareChanged*(this: ptr QSortFilterProxyModel, sortLocaleAware: bool) {.header:headerFile, importcpp:"#.sortLocaleAwareChanged(@)".} # Public
proc sortRoleChanged*(this: ptr QSortFilterProxyModel, sortRole: cint) {.header:headerFile, importcpp:"#.sortRoleChanged(@)".} # Public
proc filterRoleChanged*(this: ptr QSortFilterProxyModel, filterRole: cint) {.header:headerFile, importcpp:"#.filterRoleChanged(@)".} # Public
proc recursiveFilteringEnabledChanged*(this: ptr QSortFilterProxyModel, recursiveFilteringEnabled: bool) {.header:headerFile, importcpp:"#.recursiveFilteringEnabledChanged(@)".} # Public
proc autoAcceptChildRowsChanged*(this: ptr QSortFilterProxyModel, autoAcceptChildRows: bool) {.header:headerFile, importcpp:"#.autoAcceptChildRowsChanged(@)".} # Public

# Protected methods methods for QSortFilterProxyModel
proc filterAcceptsRow*(this: ptr QSortFilterProxyModel, source_row: cint, source_parent: QModelIndex): bool {.header:headerFile, importcpp:"#.filterAcceptsRow(@)".} # Protected
proc filterAcceptsColumn*(this: ptr QSortFilterProxyModel, source_column: cint, source_parent: QModelIndex): bool {.header:headerFile, importcpp:"#.filterAcceptsColumn(@)".} # Protected
proc lessThan*(this: ptr QSortFilterProxyModel, source_left: QModelIndex, source_right: QModelIndex): bool {.header:headerFile, importcpp:"#.lessThan(@)".} # Protected
proc invalidateFilter*(this: ptr QSortFilterProxyModel) {.header:headerFile, importcpp:"#.invalidateFilter(@)".} # Protected
proc invalidateRowsFilter*(this: ptr QSortFilterProxyModel) {.header:headerFile, importcpp:"#.invalidateRowsFilter(@)".} # Protected
proc invalidateColumnsFilter*(this: ptr QSortFilterProxyModel) {.header:headerFile, importcpp:"#.invalidateColumnsFilter(@)".} # Protected

export qstringlist
export qstring
export qproperty
export qsize
export qregularexpression
export qitemselectionmodel
export qnamespace
export qabstractitemmodel
export qmimedata
export qvariant
export qobject
export qabstractproxymodel
