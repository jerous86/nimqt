const headerFile* = "QtCore/qstorageinfo.h"

type
    # Classes found in the C++ code
    QStorageInfo* {.header:headerFile,importcpp:"QStorageInfo" ,pure,inheritable.} = object

# Stuff for class QStorageInfo

# Public constructors for QStorageInfo
proc newQStorageInfo*(): QStorageInfo {. header:headerFile, importcpp:"QStorageInfo(@)", constructor .} #
import nimqt/qtcore/qstring
proc newQStorageInfo*(path: QString): QStorageInfo {. header:headerFile, importcpp:"QStorageInfo(@)", constructor .} #
import nimqt/qtcore/qdir
proc newQStorageInfo*(dir: QDir): QStorageInfo {. header:headerFile, importcpp:"QStorageInfo(@)", constructor .} #
proc newQStorageInfo*(other: QStorageInfo): QStorageInfo {. header:headerFile, importcpp:"QStorageInfo(@)", constructor .} #

# Public methods for QStorageInfo
proc swap*(this: QStorageInfo, other: QStorageInfo) {.header:headerFile, importcpp:"#.swap(@)".} # Public
proc setPath*(this: QStorageInfo, path: QString) {.header:headerFile, importcpp:"#.setPath(@)".} # Public
proc rootPath*(this: QStorageInfo): QString {.header:headerFile, importcpp:"#.rootPath(@)".} # Public
import nimqt/qtcore/qbytearray
proc device*(this: QStorageInfo): QByteArray {.header:headerFile, importcpp:"#.device(@)".} # Public
proc subvolume*(this: QStorageInfo): QByteArray {.header:headerFile, importcpp:"#.subvolume(@)".} # Public
proc fileSystemType*(this: QStorageInfo): QByteArray {.header:headerFile, importcpp:"#.fileSystemType(@)".} # Public
proc name*(this: QStorageInfo): QString {.header:headerFile, importcpp:"#.name(@)".} # Public
proc displayName*(this: QStorageInfo): QString {.header:headerFile, importcpp:"#.displayName(@)".} # Public
proc bytesTotal*(this: QStorageInfo): clonglong {.header:headerFile, importcpp:"#.bytesTotal(@)".} # Public
proc bytesFree*(this: QStorageInfo): clonglong {.header:headerFile, importcpp:"#.bytesFree(@)".} # Public
proc bytesAvailable*(this: QStorageInfo): clonglong {.header:headerFile, importcpp:"#.bytesAvailable(@)".} # Public
proc blockSize*(this: QStorageInfo): cint {.header:headerFile, importcpp:"#.blockSize(@)".} # Public
proc isRoot*(this: QStorageInfo): bool {.header:headerFile, importcpp:"#.isRoot(@)".} # Public
proc isReadOnly*(this: QStorageInfo): bool {.header:headerFile, importcpp:"#.isReadOnly(@)".} # Public
proc isReady*(this: QStorageInfo): bool {.header:headerFile, importcpp:"#.isReady(@)".} # Public
proc isValid*(this: QStorageInfo): bool {.header:headerFile, importcpp:"#.isValid(@)".} # Public
proc refresh*(this: QStorageInfo) {.header:headerFile, importcpp:"#.refresh(@)".} # Public
import nimqt/qtcore/qlist
proc static_QStorageInfo_mountedVolumes*(): QList[QStorageInfo] {.header:headerFile, importcpp:"QStorageInfo::mountedVolumes(@)".} # Public static
proc static_QStorageInfo_root*(): QStorageInfo {.header:headerFile, importcpp:"QStorageInfo::root(@)".} # Public static

export qstring
export qdir
export qbytearray
export qlist
