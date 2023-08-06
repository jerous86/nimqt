const headerFile* = "QtCore/qreadwritelock.h"

type
    # Enums found in the C++ code
    # Global
    QReadWriteLock_RecursionMode* {.header:headerFile,importcpp:"QReadWriteLock::RecursionMode".} = enum NonRecursive = 0, Recursive = 0x1

type
    # Classes found in the C++ code
    QReadWriteLock* {.header:headerFile,importcpp:"QReadWriteLock" ,pure,inheritable.} = object
    QReadLocker* {.header:headerFile,importcpp:"QReadLocker" ,pure,inheritable.} = object
    QWriteLocker* {.header:headerFile,importcpp:"QWriteLocker" ,pure,inheritable.} = object

# Stuff for class QReadWriteLock

# Public constructors for QReadWriteLock
proc newQReadWriteLock*(recursionMode: QReadWriteLock_RecursionMode): QReadWriteLock {. header:headerFile, importcpp:"QReadWriteLock(@)", constructor .} #

# Public methods for QReadWriteLock
proc lockForRead*(this: QReadWriteLock) {.header:headerFile, importcpp:"#.lockForRead(@)".} # Public
proc tryLockForRead*(this: QReadWriteLock): bool {.header:headerFile, importcpp:"#.tryLockForRead(@)".} # Public
proc tryLockForRead*(this: QReadWriteLock, timeout: cint): bool {.header:headerFile, importcpp:"#.tryLockForRead(@)".} # Public
proc lockForWrite*(this: QReadWriteLock) {.header:headerFile, importcpp:"#.lockForWrite(@)".} # Public
proc tryLockForWrite*(this: QReadWriteLock): bool {.header:headerFile, importcpp:"#.tryLockForWrite(@)".} # Public
proc tryLockForWrite*(this: QReadWriteLock, timeout: cint): bool {.header:headerFile, importcpp:"#.tryLockForWrite(@)".} # Public
proc unlock*(this: QReadWriteLock) {.header:headerFile, importcpp:"#.unlock(@)".} # Public
# Stuff for class QReadLocker

# Public constructors for QReadLocker
proc newQReadLocker*(readWriteLock: ptr QReadWriteLock): QReadLocker {. header:headerFile, importcpp:"QReadLocker(@)", constructor .} #

# Public methods for QReadLocker
proc unlock*(this: QReadLocker) {.header:headerFile, importcpp:"#.unlock(@)".} # Public
proc relock*(this: QReadLocker) {.header:headerFile, importcpp:"#.relock(@)".} # Public
proc readWriteLock*(this: QReadLocker): ptr QReadWriteLock {.header:headerFile, importcpp:"#.readWriteLock(@)".} # Public
# Stuff for class QWriteLocker

# Public constructors for QWriteLocker
proc newQWriteLocker*(readWriteLock: ptr QReadWriteLock): QWriteLocker {. header:headerFile, importcpp:"QWriteLocker(@)", constructor .} #

# Public methods for QWriteLocker
proc unlock*(this: QWriteLocker) {.header:headerFile, importcpp:"#.unlock(@)".} # Public
proc relock*(this: QWriteLocker) {.header:headerFile, importcpp:"#.relock(@)".} # Public
proc readWriteLock*(this: QWriteLocker): ptr QReadWriteLock {.header:headerFile, importcpp:"#.readWriteLock(@)".} # Public

