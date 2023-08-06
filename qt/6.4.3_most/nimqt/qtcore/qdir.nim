const headerFile* = "QtCore/qdir.h"

type
    # Enums found in the C++ code
    # Global
    QDir_Filter* {.header:headerFile,importcpp:"QDir::Filter".} = enum NoFilter = -1, Dirs = 0x1, Files = 0x2, Drives = 0x4, 
        AllEntries = 0x7, NoSymLinks = 0x8, TypeMask = 0xf, Readable = 0x10, Writable = 0x20, 
        Executable = 0x40, PermissionMask = 0x70, Modified = 0x80, Hidden = 0x100, System = 0x200, 
        AccessMask = 0x3f0, AllDirs = 0x400, CaseSensitive = 0x800, NoDot = 0x2000, NoDotDot = 0x4000, 
        NoDotAndDotDot = 0x6000
    QDir_SortFlag* {.header:headerFile,importcpp:"QDir::SortFlag".} = enum NoSort = -1, Name = 0, Time = 0x1, Size = 0x2, 
        Unsorted = 0x3, DirsFirst = 0x4, Reversed = 0x8, IgnoreCase = 0x10, DirsLast = 0x20, 
        LocaleAware = 0x40, Type = 0x80

type
    # Classes found in the C++ code
    QDir* {.header:headerFile,importcpp:"QDir" ,pure,inheritable.} = object
import nimqt/qtcore/qflags


type
    # typedefs found in the C++ code
    QDir_Filters * = QFlags[QDir_Filter]
    QDir_SortFlags * = QFlags[QDir_SortFlag]

# Consts
const
    # Global
    QDir_SortFlagSortByMask* = 3 # from anonymous enum Unsorted

# Stuff for class QDir

# Public constructors for QDir
proc newQDir*(arg_0: QDir): QDir {. header:headerFile, importcpp:"QDir(@)", constructor .} #
import nimqt/qtcore/qstring
# 1 default parameters!
proc newQDir*(path: QString): QDir {. header:headerFile, importcpp:"QDir(@)", constructor .} #
proc newQDir*(): QDir {. header:headerFile, importcpp:"QDir(@)", constructor .} #
# 2 default parameters!
proc newQDir*(path: QString, nameFilter: QString, sort: QFlags[QDir_SortFlag], filter: QFlags[QDir_Filter]): QDir {. header:headerFile, importcpp:"QDir(@)", constructor .} #
proc newQDir*(path: QString, nameFilter: QString, sort: QFlags[QDir_SortFlag]): QDir {. header:headerFile, importcpp:"QDir(@)", constructor .} #
proc newQDir*(path: QString, nameFilter: QString): QDir {. header:headerFile, importcpp:"QDir(@)", constructor .} #

# Public methods for QDir
proc swap*(this: QDir, other: QDir) {.header:headerFile, importcpp:"#.swap(@)".} # Public
proc setPath*(this: QDir, path: QString) {.header:headerFile, importcpp:"#.setPath(@)".} # Public
proc path*(this: QDir): QString {.header:headerFile, importcpp:"#.path(@)".} # Public
proc absolutePath*(this: QDir): QString {.header:headerFile, importcpp:"#.absolutePath(@)".} # Public
proc canonicalPath*(this: QDir): QString {.header:headerFile, importcpp:"#.canonicalPath(@)".} # Public
import nimqt/qtcore/qstringlist
proc static_QDir_setSearchPaths*(prefix: QString, searchPaths: QStringList) {.header:headerFile, importcpp:"QDir::setSearchPaths(@)".} # Public static
proc static_QDir_addSearchPath*(prefix: QString, path: QString) {.header:headerFile, importcpp:"QDir::addSearchPath(@)".} # Public static
proc static_QDir_searchPaths*(prefix: QString): QStringList {.header:headerFile, importcpp:"QDir::searchPaths(@)".} # Public static
proc dirName*(this: QDir): QString {.header:headerFile, importcpp:"#.dirName(@)".} # Public
proc filePath*(this: QDir, fileName: QString): QString {.header:headerFile, importcpp:"#.filePath(@)".} # Public
proc absoluteFilePath*(this: QDir, fileName: QString): QString {.header:headerFile, importcpp:"#.absoluteFilePath(@)".} # Public
proc relativeFilePath*(this: QDir, fileName: QString): QString {.header:headerFile, importcpp:"#.relativeFilePath(@)".} # Public
proc static_QDir_toNativeSeparators*(pathName: QString): QString {.header:headerFile, importcpp:"QDir::toNativeSeparators(@)".} # Public static
proc static_QDir_fromNativeSeparators*(pathName: QString): QString {.header:headerFile, importcpp:"QDir::fromNativeSeparators(@)".} # Public static
proc cd*(this: QDir, dirName: QString): bool {.header:headerFile, importcpp:"#.cd(@)".} # Public
proc cdUp*(this: QDir): bool {.header:headerFile, importcpp:"#.cdUp(@)".} # Public
proc nameFilters*(this: QDir): QStringList {.header:headerFile, importcpp:"#.nameFilters(@)".} # Public
proc setNameFilters*(this: QDir, nameFilters: QStringList) {.header:headerFile, importcpp:"#.setNameFilters(@)".} # Public
proc filter*(this: QDir): QFlags[QDir_Filter] {.header:headerFile, importcpp:"#.filter(@)".} # Public
proc setFilter*(this: QDir, filter: QFlags[QDir_Filter]) {.header:headerFile, importcpp:"#.setFilter(@)".} # Public
proc sorting*(this: QDir): QFlags[QDir_SortFlag] {.header:headerFile, importcpp:"#.sorting(@)".} # Public
proc setSorting*(this: QDir, sort: QFlags[QDir_SortFlag]) {.header:headerFile, importcpp:"#.setSorting(@)".} # Public
proc count*(this: QDir): cuint {.header:headerFile, importcpp:"#.count(@)".} # Public
# 1 default parameters!
proc isEmpty*(this: QDir, filters: QFlags[QDir_Filter]): bool {.header:headerFile, importcpp:"#.isEmpty(@)".} # Public
proc isEmpty*(this: QDir): bool {.header:headerFile, importcpp:"#.isEmpty(@)".} # Public
proc `[]`*(this: QDir, arg_1: cint): QString {.header:headerFile, importcpp:"#.operator[](@)".} # Public
proc static_QDir_nameFiltersFromString*(nameFilter: QString): QStringList {.header:headerFile, importcpp:"QDir::nameFiltersFromString(@)".} # Public static
# 2 default parameters!
proc entryList*(this: QDir, filters: QFlags[QDir_Filter], sort: QFlags[QDir_SortFlag]): QStringList {.header:headerFile, importcpp:"#.entryList(@)".} # Public
proc entryList*(this: QDir, filters: QFlags[QDir_Filter]): QStringList {.header:headerFile, importcpp:"#.entryList(@)".} # Public
proc entryList*(this: QDir): QStringList {.header:headerFile, importcpp:"#.entryList(@)".} # Public
# 2 default parameters!
proc entryList*(this: QDir, nameFilters: QStringList, filters: QFlags[QDir_Filter], sort: QFlags[QDir_SortFlag]): QStringList {.header:headerFile, importcpp:"#.entryList(@)".} # Public
proc entryList*(this: QDir, nameFilters: QStringList, filters: QFlags[QDir_Filter]): QStringList {.header:headerFile, importcpp:"#.entryList(@)".} # Public
proc entryList*(this: QDir, nameFilters: QStringList): QStringList {.header:headerFile, importcpp:"#.entryList(@)".} # Public
import nimqt/qtcore/qfileinfo
# 2 default parameters!
proc entryInfoList*(this: QDir, filters: QFlags[QDir_Filter], sort: QFlags[QDir_SortFlag]): QFileInfoList {.header:headerFile, importcpp:"#.entryInfoList(@)".} # Public
proc entryInfoList*(this: QDir, filters: QFlags[QDir_Filter]): QFileInfoList {.header:headerFile, importcpp:"#.entryInfoList(@)".} # Public
proc entryInfoList*(this: QDir): QFileInfoList {.header:headerFile, importcpp:"#.entryInfoList(@)".} # Public
# 2 default parameters!
proc entryInfoList*(this: QDir, nameFilters: QStringList, filters: QFlags[QDir_Filter], sort: QFlags[QDir_SortFlag]): QFileInfoList {.header:headerFile, importcpp:"#.entryInfoList(@)".} # Public
proc entryInfoList*(this: QDir, nameFilters: QStringList, filters: QFlags[QDir_Filter]): QFileInfoList {.header:headerFile, importcpp:"#.entryInfoList(@)".} # Public
proc entryInfoList*(this: QDir, nameFilters: QStringList): QFileInfoList {.header:headerFile, importcpp:"#.entryInfoList(@)".} # Public
proc mkdir*(this: QDir, dirName: QString): bool {.header:headerFile, importcpp:"#.mkdir(@)".} # Public
import nimqt/qtcore/qfile
proc mkdir*(this: QDir, dirName: QString, permissions: QFile_Permissions): bool {.header:headerFile, importcpp:"#.mkdir(@)".} # Public
proc rmdir*(this: QDir, dirName: QString): bool {.header:headerFile, importcpp:"#.rmdir(@)".} # Public
proc mkpath*(this: QDir, dirPath: QString): bool {.header:headerFile, importcpp:"#.mkpath(@)".} # Public
proc rmpath*(this: QDir, dirPath: QString): bool {.header:headerFile, importcpp:"#.rmpath(@)".} # Public
proc removeRecursively*(this: QDir): bool {.header:headerFile, importcpp:"#.removeRecursively(@)".} # Public
proc isReadable*(this: QDir): bool {.header:headerFile, importcpp:"#.isReadable(@)".} # Public
proc exists*(this: QDir): bool {.header:headerFile, importcpp:"#.exists(@)".} # Public
proc isRoot*(this: QDir): bool {.header:headerFile, importcpp:"#.isRoot(@)".} # Public
proc static_QDir_isRelativePath*(path: QString): bool {.header:headerFile, importcpp:"QDir::isRelativePath(@)".} # Public static
proc static_QDir_isAbsolutePath*(path: QString): bool {.header:headerFile, importcpp:"QDir::isAbsolutePath(@)".} # Public static
proc isRelative*(this: QDir): bool {.header:headerFile, importcpp:"#.isRelative(@)".} # Public
proc isAbsolute*(this: QDir): bool {.header:headerFile, importcpp:"#.isAbsolute(@)".} # Public
proc makeAbsolute*(this: QDir): bool {.header:headerFile, importcpp:"#.makeAbsolute(@)".} # Public
proc `!=`*(this: QDir, dir: QDir): bool {.header:headerFile, importcpp:"#.operator!=(@)".} # Public
proc remove*(this: QDir, fileName: QString): bool {.header:headerFile, importcpp:"#.remove(@)".} # Public
proc rename*(this: QDir, oldName: QString, newName: QString): bool {.header:headerFile, importcpp:"#.rename(@)".} # Public
proc exists*(this: QDir, name: QString): bool {.header:headerFile, importcpp:"#.exists(@)".} # Public
proc static_QDir_drives*(): QFileInfoList {.header:headerFile, importcpp:"QDir::drives(@)".} # Public static
import nimqt/qtcore/qchar
proc static_QDir_listSeparator*(): QChar {.header:headerFile, importcpp:"QDir::listSeparator(@)".} # Public static
proc static_QDir_separator*(): QChar {.header:headerFile, importcpp:"QDir::separator(@)".} # Public static
proc static_QDir_setCurrent*(path: QString): bool {.header:headerFile, importcpp:"QDir::setCurrent(@)".} # Public static
proc static_QDir_current*(): QDir {.header:headerFile, importcpp:"QDir::current(@)".} # Public static
proc static_QDir_currentPath*(): QString {.header:headerFile, importcpp:"QDir::currentPath(@)".} # Public static
proc static_QDir_home*(): QDir {.header:headerFile, importcpp:"QDir::home(@)".} # Public static
proc static_QDir_homePath*(): QString {.header:headerFile, importcpp:"QDir::homePath(@)".} # Public static
proc static_QDir_root*(): QDir {.header:headerFile, importcpp:"QDir::root(@)".} # Public static
proc static_QDir_rootPath*(): QString {.header:headerFile, importcpp:"QDir::rootPath(@)".} # Public static
proc static_QDir_temp*(): QDir {.header:headerFile, importcpp:"QDir::temp(@)".} # Public static
proc static_QDir_tempPath*(): QString {.header:headerFile, importcpp:"QDir::tempPath(@)".} # Public static
proc static_QDir_match*(filters: QStringList, fileName: QString): bool {.header:headerFile, importcpp:"QDir::match(@)".} # Public static
proc static_QDir_match*(filter: QString, fileName: QString): bool {.header:headerFile, importcpp:"QDir::match(@)".} # Public static
proc static_QDir_cleanPath*(path: QString): QString {.header:headerFile, importcpp:"QDir::cleanPath(@)".} # Public static
proc refresh*(this: QDir) {.header:headerFile, importcpp:"#.refresh(@)".} # Public

export qstringlist
export qstring
export qfileinfo
export qfile
export qchar
export qflags
