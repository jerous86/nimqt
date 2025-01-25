const headerFile* = "QtCore/qfileinfo.h"

type
    # Classes found in the C++ code
    QFileInfo* {.header:headerFile,importcpp:"QFileInfo" ,pure,inheritable.} = object
import nimqt/qtcore/qlist


type
    # typedefs found in the C++ code
    QFileInfoList * = QList[QFileInfo]

# Stuff for class QFileInfo

# Public constructors for QFileInfo
proc newQFileInfo*(): QFileInfo {. header:headerFile, importcpp:"QFileInfo(@)", constructor .} #
import nimqt/qtcore/qstring
proc newQFileInfo*(file: QString): QFileInfo {. header:headerFile, importcpp:"QFileInfo(@)", constructor .} #
import nimqt/qtcore/qfiledevice
proc newQFileInfo*(file: QFileDevice): QFileInfo {. header:headerFile, importcpp:"QFileInfo(@)", constructor .} #
import nimqt/qtcore/qdir
proc newQFileInfo*(dir: QDir, file: QString): QFileInfo {. header:headerFile, importcpp:"QFileInfo(@)", constructor .} #
proc newQFileInfo*(fileinfo: QFileInfo): QFileInfo {. header:headerFile, importcpp:"QFileInfo(@)", constructor .} #

# Public methods for QFileInfo
proc swap*(this: QFileInfo, other: QFileInfo) {.header:headerFile, importcpp:"#.swap(@)".} # Public
proc `!=`*(this: QFileInfo, fileinfo: QFileInfo): bool {.header:headerFile, importcpp:"#.operator!=(@)".} # Public
proc setFile*(this: QFileInfo, file: QString) {.header:headerFile, importcpp:"#.setFile(@)".} # Public
proc setFile*(this: QFileInfo, file: QFileDevice) {.header:headerFile, importcpp:"#.setFile(@)".} # Public
proc setFile*(this: QFileInfo, dir: QDir, file: QString) {.header:headerFile, importcpp:"#.setFile(@)".} # Public
proc exists*(this: QFileInfo): bool {.header:headerFile, importcpp:"#.exists(@)".} # Public
proc static_QFileInfo_exists*(file: QString): bool {.header:headerFile, importcpp:"QFileInfo::exists(@)".} # Public static
proc refresh*(this: QFileInfo) {.header:headerFile, importcpp:"#.refresh(@)".} # Public
proc filePath*(this: QFileInfo): QString {.header:headerFile, importcpp:"#.filePath(@)".} # Public
proc absoluteFilePath*(this: QFileInfo): QString {.header:headerFile, importcpp:"#.absoluteFilePath(@)".} # Public
proc canonicalFilePath*(this: QFileInfo): QString {.header:headerFile, importcpp:"#.canonicalFilePath(@)".} # Public
proc fileName*(this: QFileInfo): QString {.header:headerFile, importcpp:"#.fileName(@)".} # Public
proc baseName*(this: QFileInfo): QString {.header:headerFile, importcpp:"#.baseName(@)".} # Public
proc completeBaseName*(this: QFileInfo): QString {.header:headerFile, importcpp:"#.completeBaseName(@)".} # Public
proc suffix*(this: QFileInfo): QString {.header:headerFile, importcpp:"#.suffix(@)".} # Public
proc bundleName*(this: QFileInfo): QString {.header:headerFile, importcpp:"#.bundleName(@)".} # Public
proc completeSuffix*(this: QFileInfo): QString {.header:headerFile, importcpp:"#.completeSuffix(@)".} # Public
proc path*(this: QFileInfo): QString {.header:headerFile, importcpp:"#.path(@)".} # Public
proc absolutePath*(this: QFileInfo): QString {.header:headerFile, importcpp:"#.absolutePath(@)".} # Public
proc canonicalPath*(this: QFileInfo): QString {.header:headerFile, importcpp:"#.canonicalPath(@)".} # Public
proc dir*(this: QFileInfo): QDir {.header:headerFile, importcpp:"#.dir(@)".} # Public
proc absoluteDir*(this: QFileInfo): QDir {.header:headerFile, importcpp:"#.absoluteDir(@)".} # Public
proc isReadable*(this: QFileInfo): bool {.header:headerFile, importcpp:"#.isReadable(@)".} # Public
proc isWritable*(this: QFileInfo): bool {.header:headerFile, importcpp:"#.isWritable(@)".} # Public
proc isExecutable*(this: QFileInfo): bool {.header:headerFile, importcpp:"#.isExecutable(@)".} # Public
proc isHidden*(this: QFileInfo): bool {.header:headerFile, importcpp:"#.isHidden(@)".} # Public
proc isNativePath*(this: QFileInfo): bool {.header:headerFile, importcpp:"#.isNativePath(@)".} # Public
proc isRelative*(this: QFileInfo): bool {.header:headerFile, importcpp:"#.isRelative(@)".} # Public
proc isAbsolute*(this: QFileInfo): bool {.header:headerFile, importcpp:"#.isAbsolute(@)".} # Public
proc makeAbsolute*(this: QFileInfo): bool {.header:headerFile, importcpp:"#.makeAbsolute(@)".} # Public
proc isFile*(this: QFileInfo): bool {.header:headerFile, importcpp:"#.isFile(@)".} # Public
proc isDir*(this: QFileInfo): bool {.header:headerFile, importcpp:"#.isDir(@)".} # Public
proc isSymLink*(this: QFileInfo): bool {.header:headerFile, importcpp:"#.isSymLink(@)".} # Public
proc isSymbolicLink*(this: QFileInfo): bool {.header:headerFile, importcpp:"#.isSymbolicLink(@)".} # Public
proc isShortcut*(this: QFileInfo): bool {.header:headerFile, importcpp:"#.isShortcut(@)".} # Public
proc isAlias*(this: QFileInfo): bool {.header:headerFile, importcpp:"#.isAlias(@)".} # Public
proc isJunction*(this: QFileInfo): bool {.header:headerFile, importcpp:"#.isJunction(@)".} # Public
proc isRoot*(this: QFileInfo): bool {.header:headerFile, importcpp:"#.isRoot(@)".} # Public
proc isBundle*(this: QFileInfo): bool {.header:headerFile, importcpp:"#.isBundle(@)".} # Public
proc symLinkTarget*(this: QFileInfo): QString {.header:headerFile, importcpp:"#.symLinkTarget(@)".} # Public
proc junctionTarget*(this: QFileInfo): QString {.header:headerFile, importcpp:"#.junctionTarget(@)".} # Public
proc owner*(this: QFileInfo): QString {.header:headerFile, importcpp:"#.owner(@)".} # Public
proc ownerId*(this: QFileInfo): cuint {.header:headerFile, importcpp:"#.ownerId(@)".} # Public
proc group*(this: QFileInfo): QString {.header:headerFile, importcpp:"#.group(@)".} # Public
proc groupId*(this: QFileInfo): cuint {.header:headerFile, importcpp:"#.groupId(@)".} # Public
import nimqt/qtcore/qfile
proc permission*(this: QFileInfo, permissions: QFile_Permissions): bool {.header:headerFile, importcpp:"#.permission(@)".} # Public
proc permissions*(this: QFileInfo): QFile_Permissions {.header:headerFile, importcpp:"#.permissions(@)".} # Public
proc size*(this: QFileInfo): clonglong {.header:headerFile, importcpp:"#.size(@)".} # Public
import nimqt/qtcore/qdatetime
proc birthTime*(this: QFileInfo): QDateTime {.header:headerFile, importcpp:"#.birthTime(@)".} # Public
proc metadataChangeTime*(this: QFileInfo): QDateTime {.header:headerFile, importcpp:"#.metadataChangeTime(@)".} # Public
proc lastModified*(this: QFileInfo): QDateTime {.header:headerFile, importcpp:"#.lastModified(@)".} # Public
proc lastRead*(this: QFileInfo): QDateTime {.header:headerFile, importcpp:"#.lastRead(@)".} # Public
proc fileTime*(this: QFileInfo, time: QFile_FileTime): QDateTime {.header:headerFile, importcpp:"#.fileTime(@)".} # Public
proc caching*(this: QFileInfo): bool {.header:headerFile, importcpp:"#.caching(@)".} # Public
proc setCaching*(this: QFileInfo, on: bool) {.header:headerFile, importcpp:"#.setCaching(@)".} # Public
proc stat*(this: QFileInfo) {.header:headerFile, importcpp:"#.stat(@)".} # Public

export qfiledevice
export qstring
export qdir
export qlist
export qdatetime
export qfile
