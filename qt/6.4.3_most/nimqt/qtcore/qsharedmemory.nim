const headerFile* = "QtCore/qsharedmemory.h"

type
    # Enums found in the C++ code
    # Global
    QSharedMemory_AccessMode* {.header:headerFile,importcpp:"QSharedMemory::AccessMode".} = enum ReadOnly = 0, ReadWrite = 0x1
    QSharedMemory_SharedMemoryError* {.header:headerFile,importcpp:"QSharedMemory::SharedMemoryError".} = enum NoError = 0, PermissionDenied = 0x1, InvalidSize = 0x2, KeyError = 0x3, 
        AlreadyExists = 0x4, NotFound = 0x5, LockError = 0x6, OutOfResources = 0x7, UnknownError = 0x8

import nimqt/qtcore/qobject
type
    # Classes found in the C++ code
    QSharedMemory* {.header:headerFile,importcpp:"QSharedMemory" ,pure.} = object of QObject

# Stuff for class QSharedMemory

# Public constructors for QSharedMemory
# 1 default parameters!
proc newQSharedMemory*(parent: ptr QObject): ptr QSharedMemory {. header:headerFile, importcpp:"new QSharedMemory(@)" .} #
proc newQSharedMemory*(): ptr QSharedMemory {. header:headerFile, importcpp:"new QSharedMemory(@)" .} #
import nimqt/qtcore/qstring
# 1 default parameters!
proc newQSharedMemory*(key: QString, parent: ptr QObject): ptr QSharedMemory {. header:headerFile, importcpp:"new QSharedMemory(@)" .} #
proc newQSharedMemory*(key: QString): ptr QSharedMemory {. header:headerFile, importcpp:"new QSharedMemory(@)" .} #

# Public methods for QSharedMemory
# 1 default parameters!
proc static_QSharedMemory_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QSharedMemory::tr(@)".} # Public static
proc static_QSharedMemory_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QSharedMemory::tr(@)".} # Public static
proc setKey*(this: ptr QSharedMemory, key: QString) {.header:headerFile, importcpp:"#.setKey(@)".} # Public
proc key*(this: ptr QSharedMemory): QString {.header:headerFile, importcpp:"#.key(@)".} # Public
proc setNativeKey*(this: ptr QSharedMemory, key: QString) {.header:headerFile, importcpp:"#.setNativeKey(@)".} # Public
proc nativeKey*(this: ptr QSharedMemory): QString {.header:headerFile, importcpp:"#.nativeKey(@)".} # Public
proc create*(this: ptr QSharedMemory, size: cint, mode: QSharedMemory_AccessMode): bool {.header:headerFile, importcpp:"#.create(@)".} # Public
proc size*(this: ptr QSharedMemory): cint {.header:headerFile, importcpp:"#.size(@)".} # Public
proc attach*(this: ptr QSharedMemory, mode: QSharedMemory_AccessMode): bool {.header:headerFile, importcpp:"#.attach(@)".} # Public
proc isAttached*(this: ptr QSharedMemory): bool {.header:headerFile, importcpp:"#.isAttached(@)".} # Public
proc detach*(this: ptr QSharedMemory): bool {.header:headerFile, importcpp:"#.detach(@)".} # Public
proc data*(this: ptr QSharedMemory): ptr  {.header:headerFile, importcpp:"#.data(@)".} # Public
proc constData*(this: ptr QSharedMemory): ptr  {.header:headerFile, importcpp:"#.constData(@)".} # Public
proc lock*(this: ptr QSharedMemory): bool {.header:headerFile, importcpp:"#.lock(@)".} # Public
proc unlock*(this: ptr QSharedMemory): bool {.header:headerFile, importcpp:"#.unlock(@)".} # Public
proc error*(this: ptr QSharedMemory): QSharedMemory_SharedMemoryError {.header:headerFile, importcpp:"#.error(@)".} # Public
proc errorString*(this: ptr QSharedMemory): QString {.header:headerFile, importcpp:"#.errorString(@)".} # Public

export qstring
export qobject
