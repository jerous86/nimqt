const headerFile* = "QtCore/qsystemsemaphore.h"

type
    # Enums found in the C++ code
    # Global
    QSystemSemaphore_AccessMode* {.header:headerFile,importcpp:"QSystemSemaphore::AccessMode".} = enum Open = 0, Create = 0x1
    QSystemSemaphore_SystemSemaphoreError* {.header:headerFile,importcpp:"QSystemSemaphore::SystemSemaphoreError".} = enum NoError = 0, PermissionDenied = 0x1, KeyError = 0x2, AlreadyExists = 0x3, 
        NotFound = 0x4, OutOfResources = 0x5, UnknownError = 0x6

type
    # Classes found in the C++ code
    QSystemSemaphore* {.header:headerFile,importcpp:"QSystemSemaphore" ,pure,inheritable.} = object

# Stuff for class QSystemSemaphore

# Public constructors for QSystemSemaphore
import nimqt/qtcore/qstring
# 1 default parameters!
proc newQSystemSemaphore*(key: QString, initialValue: cint, mode: QSystemSemaphore_AccessMode): QSystemSemaphore {. header:headerFile, importcpp:"QSystemSemaphore(@)", constructor .} #
proc newQSystemSemaphore*(key: QString, initialValue: cint): QSystemSemaphore {. header:headerFile, importcpp:"QSystemSemaphore(@)", constructor .} #

# Public methods for QSystemSemaphore
# 1 default parameters!
proc static_QSystemSemaphore_tr*(sourceText: ptr char, disambiguation: ptr char, n: cint): QString {.header:headerFile, importcpp:"QSystemSemaphore::tr(@)".} # Public static
proc static_QSystemSemaphore_tr*(sourceText: ptr char, disambiguation: ptr char): QString {.header:headerFile, importcpp:"QSystemSemaphore::tr(@)".} # Public static
# 1 default parameters!
proc setKey*(this: QSystemSemaphore, key: QString, initialValue: cint, mode: QSystemSemaphore_AccessMode) {.header:headerFile, importcpp:"#.setKey(@)".} # Public
proc setKey*(this: QSystemSemaphore, key: QString, initialValue: cint) {.header:headerFile, importcpp:"#.setKey(@)".} # Public
proc key*(this: QSystemSemaphore): QString {.header:headerFile, importcpp:"#.key(@)".} # Public
proc acquire*(this: QSystemSemaphore): bool {.header:headerFile, importcpp:"#.acquire(@)".} # Public
# 1 default parameters!
proc release*(this: QSystemSemaphore, n: cint): bool {.header:headerFile, importcpp:"#.release(@)".} # Public
proc release*(this: QSystemSemaphore): bool {.header:headerFile, importcpp:"#.release(@)".} # Public
proc error*(this: QSystemSemaphore): QSystemSemaphore_SystemSemaphoreError {.header:headerFile, importcpp:"#.error(@)".} # Public
proc errorString*(this: QSystemSemaphore): QString {.header:headerFile, importcpp:"#.errorString(@)".} # Public

export qstring
