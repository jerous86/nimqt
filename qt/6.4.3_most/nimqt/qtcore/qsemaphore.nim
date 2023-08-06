const headerFile* = "QtCore/qsemaphore.h"

type
    # Classes found in the C++ code
    QSemaphore* {.header:headerFile,importcpp:"QSemaphore" ,pure,inheritable.} = object
    QSemaphoreReleaser* {.header:headerFile,importcpp:"QSemaphoreReleaser" ,pure,inheritable.} = object

# Stuff for class QSemaphore

# Public constructors for QSemaphore
# 1 default parameters!
proc newQSemaphore*(n: cint): QSemaphore {. header:headerFile, importcpp:"QSemaphore(@)", constructor .} #
proc newQSemaphore*(): QSemaphore {. header:headerFile, importcpp:"QSemaphore(@)", constructor .} #

# Public methods for QSemaphore
# 1 default parameters!
proc acquire*(this: QSemaphore, n: cint) {.header:headerFile, importcpp:"#.acquire(@)".} # Public
proc acquire*(this: QSemaphore) {.header:headerFile, importcpp:"#.acquire(@)".} # Public
# 1 default parameters!
proc tryAcquire*(this: QSemaphore, n: cint): bool {.header:headerFile, importcpp:"#.tryAcquire(@)".} # Public
proc tryAcquire*(this: QSemaphore): bool {.header:headerFile, importcpp:"#.tryAcquire(@)".} # Public
proc tryAcquire*(this: QSemaphore, n: cint, timeout: cint): bool {.header:headerFile, importcpp:"#.tryAcquire(@)".} # Public
# 1 default parameters!
proc release*(this: QSemaphore, n: cint) {.header:headerFile, importcpp:"#.release(@)".} # Public
proc release*(this: QSemaphore) {.header:headerFile, importcpp:"#.release(@)".} # Public
proc available*(this: QSemaphore): cint {.header:headerFile, importcpp:"#.available(@)".} # Public
proc try_acquire*(this: QSemaphore): bool {.header:headerFile, importcpp:"#.try_acquire(@)".} # Public
# Stuff for class QSemaphoreReleaser

# Public constructors for QSemaphoreReleaser
proc newQSemaphoreReleaser*(): QSemaphoreReleaser {. header:headerFile, importcpp:"QSemaphoreReleaser(@)", constructor .} #
# 1 default parameters!
proc newQSemaphoreReleaser*(sem: QSemaphore, n: cint): QSemaphoreReleaser {. header:headerFile, importcpp:"QSemaphoreReleaser(@)", constructor .} #
proc newQSemaphoreReleaser*(sem: QSemaphore): QSemaphoreReleaser {. header:headerFile, importcpp:"QSemaphoreReleaser(@)", constructor .} #
# 1 default parameters!
proc newQSemaphoreReleaser*(sem: ptr QSemaphore, n: cint): QSemaphoreReleaser {. header:headerFile, importcpp:"QSemaphoreReleaser(@)", constructor .} #
proc newQSemaphoreReleaser*(sem: ptr QSemaphore): QSemaphoreReleaser {. header:headerFile, importcpp:"QSemaphoreReleaser(@)", constructor .} #
proc newQSemaphoreReleaser*(other: QSemaphoreReleaser): QSemaphoreReleaser {. header:headerFile, importcpp:"QSemaphoreReleaser(@)", constructor .} #

# Public methods for QSemaphoreReleaser
proc swap*(this: QSemaphoreReleaser, other: QSemaphoreReleaser) {.header:headerFile, importcpp:"#.swap(@)".} # Public
proc semaphore*(this: QSemaphoreReleaser): ptr QSemaphore {.header:headerFile, importcpp:"#.semaphore(@)".} # Public
proc cancel*(this: QSemaphoreReleaser): ptr QSemaphore {.header:headerFile, importcpp:"#.cancel(@)".} # Public

