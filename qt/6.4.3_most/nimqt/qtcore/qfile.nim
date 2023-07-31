const headerFile* = "QtCore/qfile.h"

import nimqt/qtcore/qfiledevice
type
    # Classes found in the C++ code
    QFile* {.header:headerFile,importcpp:"QFile" ,pure.} = object of QFileDevice
import nimqt/qtcore/qiodevicebase


type
    # typedefs found in the C++ code
    QFile_FileError * = QFileDevice_FileError
    QFile_FileTime * = QFileDevice_FileTime
    QFile_Permission * = QFileDevice_Permission
    QFile_FileHandleFlag * = QFileDevice_FileHandleFlag
    QFile_MemoryMapFlag * = QFileDevice_MemoryMapFlag
    QFile_Permissions * = QFileDevice_Permissions
    QFile_FileHandleFlags * = QFileDevice_FileHandleFlags
    QFile_MemoryMapFlags * = QFileDevice_MemoryMapFlags
    QFile_OpenModeFlag * = QIODeviceBase_OpenModeFlag
    QFile_OpenMode * = QIODeviceBase_OpenMode

# Stuff for class QFile

# Public constructors for QFile
proc newQFile*(): ptr QFile {. header:headerFile, importcpp:"new QFile(@)" .} #
import nimqt/qtcore/qstring
proc newQFile*(name: QString): ptr QFile {. header:headerFile, importcpp:"new QFile(@)" .} #
import nimqt/qtcore/qobject
proc newQFile*(parent: ptr QObject): ptr QFile {. header:headerFile, importcpp:"new QFile(@)" .} #
proc newQFile*(name: QString, parent: ptr QObject): ptr QFile {. header:headerFile, importcpp:"new QFile(@)" .} #

# Public methods for QFile
# 1 default parameters!
proc static_QFile_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QFile::tr(@)".} # Public static
proc static_QFile_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QFile::tr(@)".} # Public static
proc fileName*(this: ptr QFile): QString {.header:headerFile, importcpp:"#.fileName(@)".} # Public
proc setFileName*(this: ptr QFile, name: QString) {.header:headerFile, importcpp:"#.setFileName(@)".} # Public
import nimqt/qtcore/qbytearray
proc static_QFile_encodeName*(fileName: QString): QByteArray {.header:headerFile, importcpp:"QFile::encodeName(@)".} # Public static
proc static_QFile_decodeName*(localFileName: QByteArray): QString {.header:headerFile, importcpp:"QFile::decodeName(@)".} # Public static
proc static_QFile_decodeName*(localFileName: ptr char): QString {.header:headerFile, importcpp:"QFile::decodeName(@)".} # Public static
proc exists*(this: ptr QFile): bool {.header:headerFile, importcpp:"#.exists(@)".} # Public
proc static_QFile_exists*(fileName: QString): bool {.header:headerFile, importcpp:"QFile::exists(@)".} # Public static
proc symLinkTarget*(this: ptr QFile): QString {.header:headerFile, importcpp:"#.symLinkTarget(@)".} # Public
proc static_QFile_symLinkTarget*(fileName: QString): QString {.header:headerFile, importcpp:"QFile::symLinkTarget(@)".} # Public static
proc remove*(this: ptr QFile): bool {.header:headerFile, importcpp:"#.remove(@)".} # Public
proc static_QFile_remove*(fileName: QString): bool {.header:headerFile, importcpp:"QFile::remove(@)".} # Public static
proc moveToTrash*(this: ptr QFile): bool {.header:headerFile, importcpp:"#.moveToTrash(@)".} # Public
# 1 default parameters!
proc static_QFile_moveToTrash*(fileName: QString, pathInTrash: ptr QString): bool {.header:headerFile, importcpp:"QFile::moveToTrash(@)".} # Public static
proc static_QFile_moveToTrash*(fileName: QString): bool {.header:headerFile, importcpp:"QFile::moveToTrash(@)".} # Public static
proc rename*(this: ptr QFile, newName: QString): bool {.header:headerFile, importcpp:"#.rename(@)".} # Public
proc static_QFile_rename*(oldName: QString, newName: QString): bool {.header:headerFile, importcpp:"QFile::rename(@)".} # Public static
proc link*(this: ptr QFile, newName: QString): bool {.header:headerFile, importcpp:"#.link(@)".} # Public
proc static_QFile_link*(fileName: QString, newName: QString): bool {.header:headerFile, importcpp:"QFile::link(@)".} # Public static
proc copy*(this: ptr QFile, newName: QString): bool {.header:headerFile, importcpp:"#.copy(@)".} # Public
proc static_QFile_copy*(fileName: QString, newName: QString): bool {.header:headerFile, importcpp:"QFile::copy(@)".} # Public static
proc open*(this: ptr QFile, flags: QIODeviceBase_OpenMode): bool {.header:headerFile, importcpp:"#.open(@)".} # Public
proc open*(this: ptr QFile, flags: QIODeviceBase_OpenMode, permissions: QFileDevice_Permissions): bool {.header:headerFile, importcpp:"#.open(@)".} # Public
# 1 default parameters!
proc open*(this: ptr QFile, f: ptr FILE, ioFlags: QIODeviceBase_OpenMode, handleFlags: QFileDevice_FileHandleFlags): bool {.header:headerFile, importcpp:"#.open(@)".} # Public
proc open*(this: ptr QFile, f: ptr FILE, ioFlags: QIODeviceBase_OpenMode): bool {.header:headerFile, importcpp:"#.open(@)".} # Public
# 1 default parameters!
proc open*(this: ptr QFile, fd: cint, ioFlags: QIODeviceBase_OpenMode, handleFlags: QFileDevice_FileHandleFlags): bool {.header:headerFile, importcpp:"#.open(@)".} # Public
proc open*(this: ptr QFile, fd: cint, ioFlags: QIODeviceBase_OpenMode): bool {.header:headerFile, importcpp:"#.open(@)".} # Public
proc size*(this: ptr QFile): clonglong {.header:headerFile, importcpp:"#.size(@)".} # Public
proc resize*(this: ptr QFile, sz: clonglong): bool {.header:headerFile, importcpp:"#.resize(@)".} # Public
proc static_QFile_resize*(filename: QString, sz: clonglong): bool {.header:headerFile, importcpp:"QFile::resize(@)".} # Public static
proc permissions*(this: ptr QFile): QFileDevice_Permissions {.header:headerFile, importcpp:"#.permissions(@)".} # Public
proc static_QFile_permissions*(filename: QString): QFileDevice_Permissions {.header:headerFile, importcpp:"QFile::permissions(@)".} # Public static
proc setPermissions*(this: ptr QFile, permissionSpec: QFileDevice_Permissions): bool {.header:headerFile, importcpp:"#.setPermissions(@)".} # Public
proc static_QFile_setPermissions*(filename: QString, permissionSpec: QFileDevice_Permissions): bool {.header:headerFile, importcpp:"QFile::setPermissions(@)".} # Public static

export qfiledevice
export qstring
export qiodevicebase
export qbytearray
export qobject
