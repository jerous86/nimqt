const headerFile* = "QtCore/qfiledevice.h"

import nimqt/qtcore/qiodevice
# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}


type
    # Classes and enums found in the C++ code
    # Global
    QFileDevice_FileError* {.header:headerFile,importcpp:"QFileDevice::FileError".} = enum NoError = 0, ReadError = 0x1, WriteError = 0x2, FatalError = 0x3, 
        ResourceError = 0x4, OpenError = 0x5, AbortError = 0x6, TimeOutError = 0x7, UnspecifiedError = 0x8, 
        RemoveError = 0x9, RenameError = 0xa, PositionError = 0xb, ResizeError = 0xc, PermissionsError = 0xd, 
        CopyError = 0xe
    QFileDevice_FileTime* {.header:headerFile,importcpp:"QFileDevice::FileTime".} = enum FileAccessTime = 0, FileBirthTime = 0x1, FileMetadataChangeTime = 0x2, FileModificationTime = 0x3
    QFileDevice_Permission* {.header:headerFile,importcpp:"QFileDevice::Permission".} = enum ReadOwner = 0, WriteOwner = 0x1, ExeOwner = 0x2, ReadUser = 0x3, 
        WriteUser = 0x4, ExeUser = 0x5, ReadGroup = 0x6, WriteGroup = 0x7, ExeGroup = 0x8, 
        ReadOther = 0x9, WriteOther = 0xa, ExeOther = 0xb
    QFileDevice_FileHandleFlag* {.header:headerFile,importcpp:"QFileDevice::FileHandleFlag".} = enum AutoCloseHandle = 0, DontCloseHandle = 0x1
    QFileDevice_MemoryMapFlag* {.header:headerFile,importcpp:"QFileDevice::MemoryMapFlag".} = enum NoOptions = 0, MapPrivateOption = 0x1
    QFileDevice* {.header:headerFile,importcpp:"QFileDevice" ,pure.} = object of QIODevice
{.push warning[Deprecated]: on.}
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

# Protected methods methods for QFileDevice
proc readData*(this: ptr QFileDevice, data: ptr char, maxlen: clonglong): clonglong {.header:headerFile, importcpp:"#.readData(@)".} # Protected
proc writeData*(this: ptr QFileDevice, data: ptr char, len: clonglong): clonglong {.header:headerFile, importcpp:"#.writeData(@)".} # Protected
proc readLineData*(this: ptr QFileDevice, data: ptr char, maxlen: clonglong): clonglong {.header:headerFile, importcpp:"#.readLineData(@)".} # Protected

export qstring
export qiodevicebase
export qflags
export qiodevice