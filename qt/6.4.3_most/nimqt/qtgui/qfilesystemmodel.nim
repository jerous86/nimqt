const headerFile* = "QtGui/qfilesystemmodel.h"

type
    # Enums found in the C++ code
    # Global
    QFileSystemModel_Roles* {.header:headerFile,importcpp:"QFileSystemModel::Roles".} = enum FileIconRole = 0x1, FilePathRole = 0x101, FileNameRole = 0x102, FilePermissions = 0x103
    QFileSystemModel_Option* {.header:headerFile,importcpp:"QFileSystemModel::Option".} = enum DontWatchForChanges = 0x1, DontResolveSymlinks = 0x2, DontUseCustomDirectoryIcons = 0x4

import nimqt/qtcore/qabstractitemmodel
type
    # Classes found in the C++ code
    QFileSystemModel* {.header:headerFile,importcpp:"QFileSystemModel" ,pure.} = object of QAbstractItemModel
import nimqt/qtcore/qflags


type
    # typedefs found in the C++ code
    QFileSystemModel_LayoutChangeHint * = QAbstractItemModel_LayoutChangeHint
    QFileSystemModel_CheckIndexOption * = QAbstractItemModel_CheckIndexOption
    QFileSystemModel_CheckIndexOptions * = QAbstractItemModel_CheckIndexOptions
    QFileSystemModel_Options * = QFlags[QFileSystemModel_Option]

# Stuff for class QFileSystemModel

# Public constructors for QFileSystemModel
import nimqt/qtcore/qobject
# 1 default parameters!
proc newQFileSystemModel*(parent: ptr QObject): ptr QFileSystemModel {. header:headerFile, importcpp:"new QFileSystemModel(@)" .} #
proc newQFileSystemModel*(): ptr QFileSystemModel {. header:headerFile, importcpp:"new QFileSystemModel(@)" .} #

# Public methods for QFileSystemModel
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QFileSystemModel_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QFileSystemModel::tr(@)".} # Public static
proc static_QFileSystemModel_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QFileSystemModel::tr(@)".} # Public static
proc rootPathChanged*(this: ptr QFileSystemModel, newPath: QString) {.header:headerFile, importcpp:"#.rootPathChanged(@)".} # Public
proc fileRenamed*(this: ptr QFileSystemModel, path: QString, oldName: QString, newName: QString) {.header:headerFile, importcpp:"#.fileRenamed(@)".} # Public
proc directoryLoaded*(this: ptr QFileSystemModel, path: QString) {.header:headerFile, importcpp:"#.directoryLoaded(@)".} # Public
# 1 default parameters!
proc index*(this: ptr QFileSystemModel, row: cint, column: cint, parent: QModelIndex): QModelIndex {.header:headerFile, importcpp:"#.index(@)".} # Public
proc index*(this: ptr QFileSystemModel, row: cint, column: cint): QModelIndex {.header:headerFile, importcpp:"#.index(@)".} # Public
# 1 default parameters!
proc index*(this: ptr QFileSystemModel, path: QString, column: cint): QModelIndex {.header:headerFile, importcpp:"#.index(@)".} # Public
proc index*(this: ptr QFileSystemModel, path: QString): QModelIndex {.header:headerFile, importcpp:"#.index(@)".} # Public
proc parent*(this: ptr QFileSystemModel, child: QModelIndex): QModelIndex {.header:headerFile, importcpp:"#.parent(@)".} # Public
proc sibling*(this: ptr QFileSystemModel, row: cint, column: cint, idx: QModelIndex): QModelIndex {.header:headerFile, importcpp:"#.sibling(@)".} # Public
# 1 default parameters!
proc hasChildren*(this: ptr QFileSystemModel, parent: QModelIndex): bool {.header:headerFile, importcpp:"#.hasChildren(@)".} # Public
proc hasChildren*(this: ptr QFileSystemModel): bool {.header:headerFile, importcpp:"#.hasChildren(@)".} # Public
proc canFetchMore*(this: ptr QFileSystemModel, parent: QModelIndex): bool {.header:headerFile, importcpp:"#.canFetchMore(@)".} # Public
proc fetchMore*(this: ptr QFileSystemModel, parent: QModelIndex) {.header:headerFile, importcpp:"#.fetchMore(@)".} # Public
# 1 default parameters!
proc rowCount*(this: ptr QFileSystemModel, parent: QModelIndex): cint {.header:headerFile, importcpp:"#.rowCount(@)".} # Public
proc rowCount*(this: ptr QFileSystemModel): cint {.header:headerFile, importcpp:"#.rowCount(@)".} # Public
# 1 default parameters!
proc columnCount*(this: ptr QFileSystemModel, parent: QModelIndex): cint {.header:headerFile, importcpp:"#.columnCount(@)".} # Public
proc columnCount*(this: ptr QFileSystemModel): cint {.header:headerFile, importcpp:"#.columnCount(@)".} # Public
import nimqt/qtcore/qvariant
# 1 default parameters!
proc myComputer*(this: ptr QFileSystemModel, role: cint): QVariant {.header:headerFile, importcpp:"#.myComputer(@)".} # Public
proc myComputer*(this: ptr QFileSystemModel): QVariant {.header:headerFile, importcpp:"#.myComputer(@)".} # Public
# 1 default parameters!
proc data*(this: ptr QFileSystemModel, index: QModelIndex, role: cint): QVariant {.header:headerFile, importcpp:"#.data(@)".} # Public
proc data*(this: ptr QFileSystemModel, index: QModelIndex): QVariant {.header:headerFile, importcpp:"#.data(@)".} # Public
# 1 default parameters!
proc setData*(this: ptr QFileSystemModel, index: QModelIndex, value: QVariant, role: cint): bool {.header:headerFile, importcpp:"#.setData(@)".} # Public
proc setData*(this: ptr QFileSystemModel, index: QModelIndex, value: QVariant): bool {.header:headerFile, importcpp:"#.setData(@)".} # Public
import nimqt/qtcore/qnamespace
# 1 default parameters!
proc headerData*(this: ptr QFileSystemModel, section: cint, orientation: Qt_Orientation, role: cint): QVariant {.header:headerFile, importcpp:"#.headerData(@)".} # Public
proc headerData*(this: ptr QFileSystemModel, section: cint, orientation: Qt_Orientation): QVariant {.header:headerFile, importcpp:"#.headerData(@)".} # Public
proc flags*(this: ptr QFileSystemModel, index: QModelIndex): Qt_ItemFlags {.header:headerFile, importcpp:"#.flags(@)".} # Public
proc sort*(this: ptr QFileSystemModel, column: cint, order: Qt_SortOrder) {.header:headerFile, importcpp:"#.sort(@)".} # Public
import nimqt/qtcore/qstringlist
proc mimeTypes*(this: ptr QFileSystemModel): QStringList {.header:headerFile, importcpp:"#.mimeTypes(@)".} # Public
import nimqt/qtcore/qmimedata
proc mimeData*(this: ptr QFileSystemModel, indexes: QModelIndexList): ptr QMimeData {.header:headerFile, importcpp:"#.mimeData(@)".} # Public
proc dropMimeData*(this: ptr QFileSystemModel, data: ptr QMimeData, action: Qt_DropAction, row: cint, column: cint, parent: QModelIndex): bool {.header:headerFile, importcpp:"#.dropMimeData(@)".} # Public
proc supportedDropActions*(this: ptr QFileSystemModel): Qt_DropActions {.header:headerFile, importcpp:"#.supportedDropActions(@)".} # Public
import nimqt/qtcore/qbytearray
import nimqt/qtcore/qhash
proc roleNames*(this: ptr QFileSystemModel): QHash[cint, QByteArray] {.header:headerFile, importcpp:"#.roleNames(@)".} # Public
proc setRootPath*(this: ptr QFileSystemModel, path: QString): QModelIndex {.header:headerFile, importcpp:"#.setRootPath(@)".} # Public
proc rootPath*(this: ptr QFileSystemModel): QString {.header:headerFile, importcpp:"#.rootPath(@)".} # Public
import nimqt/qtcore/qdir
proc rootDirectory*(this: ptr QFileSystemModel): QDir {.header:headerFile, importcpp:"#.rootDirectory(@)".} # Public
import nimqt/qtgui/qabstractfileiconprovider
proc setIconProvider*(this: ptr QFileSystemModel, provider: ptr QAbstractFileIconProvider) {.header:headerFile, importcpp:"#.setIconProvider(@)".} # Public
proc iconProvider*(this: ptr QFileSystemModel): ptr QAbstractFileIconProvider {.header:headerFile, importcpp:"#.iconProvider(@)".} # Public
proc setFilter*(this: ptr QFileSystemModel, filters: QDir_Filters) {.header:headerFile, importcpp:"#.setFilter(@)".} # Public
proc filter*(this: ptr QFileSystemModel): QDir_Filters {.header:headerFile, importcpp:"#.filter(@)".} # Public
proc setResolveSymlinks*(this: ptr QFileSystemModel, enable: bool) {.header:headerFile, importcpp:"#.setResolveSymlinks(@)".} # Public
proc resolveSymlinks*(this: ptr QFileSystemModel): bool {.header:headerFile, importcpp:"#.resolveSymlinks(@)".} # Public
proc setReadOnly*(this: ptr QFileSystemModel, enable: bool) {.header:headerFile, importcpp:"#.setReadOnly(@)".} # Public
proc isReadOnly*(this: ptr QFileSystemModel): bool {.header:headerFile, importcpp:"#.isReadOnly(@)".} # Public
proc setNameFilterDisables*(this: ptr QFileSystemModel, enable: bool) {.header:headerFile, importcpp:"#.setNameFilterDisables(@)".} # Public
proc nameFilterDisables*(this: ptr QFileSystemModel): bool {.header:headerFile, importcpp:"#.nameFilterDisables(@)".} # Public
proc setNameFilters*(this: ptr QFileSystemModel, filters: QStringList) {.header:headerFile, importcpp:"#.setNameFilters(@)".} # Public
proc nameFilters*(this: ptr QFileSystemModel): QStringList {.header:headerFile, importcpp:"#.nameFilters(@)".} # Public
# 1 default parameters!
proc setOption*(this: ptr QFileSystemModel, option: QFileSystemModel_Option, on: bool) {.header:headerFile, importcpp:"#.setOption(@)".} # Public
proc setOption*(this: ptr QFileSystemModel, option: QFileSystemModel_Option) {.header:headerFile, importcpp:"#.setOption(@)".} # Public
proc testOption*(this: ptr QFileSystemModel, option: QFileSystemModel_Option): bool {.header:headerFile, importcpp:"#.testOption(@)".} # Public
proc setOptions*(this: ptr QFileSystemModel, options: QFlags[QFileSystemModel_Option]) {.header:headerFile, importcpp:"#.setOptions(@)".} # Public
proc options*(this: ptr QFileSystemModel): QFlags[QFileSystemModel_Option] {.header:headerFile, importcpp:"#.options(@)".} # Public
proc filePath*(this: ptr QFileSystemModel, index: QModelIndex): QString {.header:headerFile, importcpp:"#.filePath(@)".} # Public
proc isDir*(this: ptr QFileSystemModel, index: QModelIndex): bool {.header:headerFile, importcpp:"#.isDir(@)".} # Public
proc size*(this: ptr QFileSystemModel, index: QModelIndex): clonglong {.header:headerFile, importcpp:"#.size(@)".} # Public
proc `type`*(this: ptr QFileSystemModel, index: QModelIndex): QString {.header:headerFile, importcpp:"#.type(@)".} # Public
import nimqt/qtcore/qdatetime
proc lastModified*(this: ptr QFileSystemModel, index: QModelIndex): QDateTime {.header:headerFile, importcpp:"#.lastModified(@)".} # Public
proc mkdir*(this: ptr QFileSystemModel, parent: QModelIndex, name: QString): QModelIndex {.header:headerFile, importcpp:"#.mkdir(@)".} # Public
proc rmdir*(this: ptr QFileSystemModel, index: QModelIndex): bool {.header:headerFile, importcpp:"#.rmdir(@)".} # Public
proc fileName*(this: ptr QFileSystemModel, index: QModelIndex): QString {.header:headerFile, importcpp:"#.fileName(@)".} # Public
import nimqt/qtgui/qicon
proc fileIcon*(this: ptr QFileSystemModel, index: QModelIndex): QIcon {.header:headerFile, importcpp:"#.fileIcon(@)".} # Public
import nimqt/qtcore/qfile
proc permissions*(this: ptr QFileSystemModel, index: QModelIndex): QFile_Permissions {.header:headerFile, importcpp:"#.permissions(@)".} # Public
import nimqt/qtcore/qfileinfo
proc fileInfo*(this: ptr QFileSystemModel, index: QModelIndex): QFileInfo {.header:headerFile, importcpp:"#.fileInfo(@)".} # Public
proc remove*(this: ptr QFileSystemModel, index: QModelIndex): bool {.header:headerFile, importcpp:"#.remove(@)".} # Public

# Protected methods methods for QFileSystemModel
import nimqt/qtcore/qcoreevent
proc timerEvent*(this: ptr QFileSystemModel, event: ptr QTimerEvent) {.header:headerFile, importcpp:"#.timerEvent(@)".} # Protected
proc event*(this: ptr QFileSystemModel, event: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Protected

export qstringlist
export qstring
export qnamespace
export qdir
export qbytearray
export qdatetime
export qabstractitemmodel
export qfileinfo
export qabstractfileiconprovider
export qhash
export qmimedata
export qvariant
export qfile
export qflags
export qobject
export qcoreevent
export qicon
