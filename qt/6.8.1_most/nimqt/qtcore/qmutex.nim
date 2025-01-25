const headerFile* = "QtCore/qmutex.h"

type
    # Classes found in the C++ code
    QBasicMutex* {.header:headerFile,importcpp:"QBasicMutex" ,pure,inheritable.} = object
    QMutex* {.header:headerFile,importcpp:"QMutex" ,pure.} = object of QBasicMutex
    QRecursiveMutex* {.header:headerFile,importcpp:"QRecursiveMutex" ,pure,inheritable.} = object
    QMutexLocker*[Mutex] {.header:headerFile,importcpp:"QMutexLocker" ,pure,inheritable.} = object

# Stuff for class QBasicMutex

# Public constructors for QBasicMutex
proc newQBasicMutex*(): ptr QBasicMutex {. header:headerFile, importcpp:"new QBasicMutex(@)" .} #

# Public methods for QBasicMutex
proc lock*(this: ptr QBasicMutex) {.header:headerFile, importcpp:"#.lock(@)".} # Public
proc unlock*(this: ptr QBasicMutex) {.header:headerFile, importcpp:"#.unlock(@)".} # Public
proc tryLock*(this: ptr QBasicMutex): bool {.header:headerFile, importcpp:"#.tryLock(@)".} # Public
# Stuff for class QMutex

# Public constructors for QMutex
proc newQMutex*(): ptr QMutex {. header:headerFile, importcpp:"new QMutex(@)" .} #

# Public methods for QMutex
proc lock*(this: ptr QMutex) {.header:headerFile, importcpp:"#.lock(@)".} # Public
proc unlock*(this: ptr QMutex) {.header:headerFile, importcpp:"#.unlock(@)".} # Public
proc tryLock*(this: ptr QMutex): bool {.header:headerFile, importcpp:"#.tryLock(@)".} # Public
proc tryLock*(this: ptr QMutex, timeout: cint): bool {.header:headerFile, importcpp:"#.tryLock(@)".} # Public
# Stuff for class QRecursiveMutex

# Public constructors for QRecursiveMutex
proc newQRecursiveMutex*(): QRecursiveMutex {. header:headerFile, importcpp:"QRecursiveMutex(@)", constructor .} #

# Public methods for QRecursiveMutex
proc lock*(this: QRecursiveMutex) {.header:headerFile, importcpp:"#.lock(@)".} # Public
# 1 default parameters!
proc tryLock*(this: QRecursiveMutex, timeout: cint): bool {.header:headerFile, importcpp:"#.tryLock(@)".} # Public
proc tryLock*(this: QRecursiveMutex): bool {.header:headerFile, importcpp:"#.tryLock(@)".} # Public
proc unlock*(this: QRecursiveMutex) {.header:headerFile, importcpp:"#.unlock(@)".} # Public
# Stuff for class QMutexLocker

# Public constructors for QMutexLocker
proc newQMutexLocker*[Mutex](mutex: ptr Mutex): QMutexLocker[Mutex] {. header:headerFile, importcpp:"QMutexLocker(@)", constructor .} #
proc newQMutexLocker*[Mutex](other: QMutexLocker[Mutex]): QMutexLocker[Mutex] {. header:headerFile, importcpp:"QMutexLocker(@)", constructor .} #

# Public methods for QMutexLocker
proc isLocked*[Mutex](this: QMutexLocker[Mutex]): bool {.header:headerFile, importcpp:"#.isLocked(@)".} # Public
proc unlock*[Mutex](this: QMutexLocker[Mutex]) {.header:headerFile, importcpp:"#.unlock(@)".} # Public
proc relock*[Mutex](this: QMutexLocker[Mutex]) {.header:headerFile, importcpp:"#.relock(@)".} # Public
proc swap*[Mutex](this: QMutexLocker[Mutex], other: QMutexLocker[Mutex]) {.header:headerFile, importcpp:"#.swap(@)".} # Public
proc mutex*[Mutex](this: QMutexLocker[Mutex]): ptr Mutex {.header:headerFile, importcpp:"#.mutex(@)".} # Public

