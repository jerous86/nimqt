const headerFile* = "QtCore/qfiledevice.h"

type
    # Enums found in the C++ code
    # Global
    QFileDevice_FileError* {.header:headerFile,importcpp:"QFileDevice::FileError".} = enum NoError = 0, ReadError = 0x1, WriteError = 0x2, FatalError = 0x3, 
        ResourceError = 0x4, OpenError = 0x5, AbortError = 0x6, TimeOutError = 0x7, UnspecifiedError = 0x8, 
        RemoveError = 0x9, RenameError = 0xa, PositionError = 0xb, ResizeError = 0xc, PermissionsError = 0xd, 
        CopyError = 0xe
    QFileDevice_FileTime* {.header:headerFile,importcpp:"QFileDevice::FileTime".} = enum FileAccessTime = 0, FileBirthTime = 0x1, FileMetadataChangeTime = 0x2, FileModificationTime = 0x3
    QFileDevice_Permission* {.header:headerFile,importcpp:"QFileDevice::Permission".} = enum ExeOther = 0x1, WriteOther = 0x2, ReadOther = 0x4, ExeGroup = 0x10, 
        WriteGroup = 0x20, ReadGroup = 0x40, ExeUser = 0x100, WriteUser = 0x200, ReadUser = 0x400, 
        ExeOwner = 0x1000, WriteOwner = 0x2000, ReadOwner = 0x4000
    QFileDevice_FileHandleFlag* {.header:headerFile,importcpp:"QFileDevice::FileHandleFlag".} = enum DontCloseHandle = 0, AutoCloseHandle = 0x1
    QFileDevice_MemoryMapFlag* {.header:headerFile,importcpp:"QFileDevice::MemoryMapFlag".} = enum NoOptions = 0, MapPrivateOption = 0x1

import nimqt/qtcore/qiodevice
type
    # Classes found in the C++ code
    QFileDevice* {.header:headerFile,importcpp:"QFileDevice" ,pure.} = object of QIODevice
import nimqt/qtcore/qiodevicebase
import nimqt/qtcore/qflags


type
    # typedefs found in the C++ code
    QFileDevice_OpenModeFlag * = QIODeviceBase_OpenModeFlag
    QFileDevice_OpenMode * = QIODeviceBase_OpenMode
    QFileDevice_Permissions * = QFlags[QFileDevice_Permission]
    QFileDevice_FileHandleFlags * = QFlags[QFileDevice_FileHandleFlag]
    QFileDevice_MemoryMapFlags * = QFlags[QFileDevice_MemoryMapFlag]

# Stuff for class QFileDevice

# Public methods for QFileDevice
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QFileDevice_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QFileDevice::tr(@)".} # Public static
proc static_QFileDevice_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QFileDevice::tr(@)".} # Public static
proc error*(this: ptr QFileDevice): QFileDevice_FileError {.header:headerFile, importcpp:"#.error(@)".} # Public
proc unsetError*(this: ptr QFileDevice) {.header:headerFile, importcpp:"#.unsetError(@)".} # Public
proc close*(this: ptr QFileDevice) {.header:headerFile, importcpp:"#.close(@)".} # Public
proc isSequential*(this: ptr QFileDevice): bool {.header:headerFile, importcpp:"#.isSequential(@)".} # Public
proc handle*(this: ptr QFileDevice): cint {.header:headerFile, importcpp:"#.handle(@)".} # Public
proc fileName*(this: ptr QFileDevice): QString {.header:headerFile, importcpp:"#.fileName(@)".} # Public
proc pos*(this: ptr QFileDevice): clonglong {.header:headerFile, importcpp:"#.pos(@)".} # Public
proc seek*(this: ptr QFileDevice, offset: clonglong): bool {.header:headerFile, importcpp:"#.seek(@)".} # Public
proc atEnd*(this: ptr QFileDevice): bool {.header:headerFile, importcpp:"#.atEnd(@)".} # Public
proc flush*(this: ptr QFileDevice): bool {.header:headerFile, importcpp:"#.flush(@)".} # Public
proc size*(this: ptr QFileDevice): clonglong {.header:headerFile, importcpp:"#.size(@)".} # Public
proc resize*(this: ptr QFileDevice, sz: clonglong): bool {.header:headerFile, importcpp:"#.resize(@)".} # Public
proc permissions*(this: ptr QFileDevice): QFlags[QFileDevice_Permission] {.header:headerFile, importcpp:"#.permissions(@)".} # Public
proc setPermissions*(this: ptr QFileDevice, permissionSpec: QFlags[QFileDevice_Permission]): bool {.header:headerFile, importcpp:"#.setPermissions(@)".} # Public
# 1 default parameters!
proc map*(this: ptr QFileDevice, offset: clonglong, size: clonglong, flags: QFlags[QFileDevice_MemoryMapFlag]): ptr char {.header:headerFile, importcpp:"#.map(@)".} # Public
proc map*(this: ptr QFileDevice, offset: clonglong, size: clonglong): ptr char {.header:headerFile, importcpp:"#.map(@)".} # Public
proc unmap*(this: ptr QFileDevice, address: ptr char): bool {.header:headerFile, importcpp:"#.unmap(@)".} # Public
import nimqt/qtcore/qdatetime
proc fileTime*(this: ptr QFileDevice, time: QFileDevice_FileTime): QDateTime {.header:headerFile, importcpp:"#.fileTime(@)".} # Public
proc setFileTime*(this: ptr QFileDevice, newDate: QDateTime, fileTime: QFileDevice_FileTime): bool {.header:headerFile, importcpp:"#.setFileTime(@)".} # Public

# Protected methods methods for QFileDevice
proc readData*(this: ptr QFileDevice, data: ptr char, maxlen: clonglong): clonglong {.header:headerFile, importcpp:"#.readData(@)".} # Protected
proc writeData*(this: ptr QFileDevice, data: ptr char, len: clonglong): clonglong {.header:headerFile, importcpp:"#.writeData(@)".} # Protected
proc readLineData*(this: ptr QFileDevice, data: ptr char, maxlen: clonglong): clonglong {.header:headerFile, importcpp:"#.readLineData(@)".} # Protected

export qstring
export qiodevicebase
export qdatetime
export qflags
export qiodevice
