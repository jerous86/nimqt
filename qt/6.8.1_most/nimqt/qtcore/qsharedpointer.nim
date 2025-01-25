const headerFile* = "QtCore/qsharedpointer.h"

type
    # Classes found in the C++ code
    QSharedPointer*[T] {.header:headerFile,importcpp:"QSharedPointer" ,pure,inheritable.} = object
    QWeakPointer*[T] {.header:headerFile,importcpp:"QWeakPointer" ,pure,inheritable.} = object
    QEnableSharedFromThis*[T] {.header:headerFile,importcpp:"QEnableSharedFromThis" ,pure,inheritable.} = object

# Stuff for class QSharedPointer

# Public constructors for QSharedPointer
proc newQSharedPointer*[T](): QSharedPointer[T] {. header:headerFile, importcpp:"QSharedPointer(@)", constructor .} #
proc newQSharedPointer*[T](other: QSharedPointer[T]): QSharedPointer[T] {. header:headerFile, importcpp:"QSharedPointer(@)", constructor .} #
proc newQSharedPointer*[T](other: cint): QSharedPointer[T] {. header:headerFile, importcpp:"QSharedPointer(@)", constructor .} #

# Public methods for QSharedPointer
proc data*[T](this: QSharedPointer[T]): ptr T {.header:headerFile, importcpp:"#.data(@)".} # Public
proc get*[T](this: QSharedPointer[T]): ptr T {.header:headerFile, importcpp:"#.get(@)".} # Public
proc isNull*[T](this: QSharedPointer[T]): bool {.header:headerFile, importcpp:"#.isNull(@)".} # Public
proc `!`*[T](this: QSharedPointer[T]): bool {.header:headerFile, importcpp:"#.operator!(@)".} # Public
proc `*`*[T](this: QSharedPointer[T]): T {.header:headerFile, importcpp:"#.operator*(@)".} # Public
proc `->`*[T](this: QSharedPointer[T]): ptr T {.header:headerFile, importcpp:"#.operator->(@)".} # Public
proc swap*[T](this: QSharedPointer[T], other: QSharedPointer[T]) {.header:headerFile, importcpp:"#.swap(@)".} # Public
proc toWeakRef*[T](this: QSharedPointer[T]): cint {.header:headerFile, importcpp:"#.toWeakRef(@)".} # Public
proc clear*[T](this: QSharedPointer[T]) {.header:headerFile, importcpp:"#.clear(@)".} # Public
proc reset*[T](this: QSharedPointer[T]) {.header:headerFile, importcpp:"#.reset(@)".} # Public
proc reset*[T](this: QSharedPointer[T], t: ptr T) {.header:headerFile, importcpp:"#.reset(@)".} # Public
# Stuff for class QWeakPointer

# Public constructors for QWeakPointer
proc newQWeakPointer*[T](): QWeakPointer[T] {. header:headerFile, importcpp:"QWeakPointer(@)", constructor .} #
proc newQWeakPointer*[T](other: QWeakPointer[T]): QWeakPointer[T] {. header:headerFile, importcpp:"QWeakPointer(@)", constructor .} #
proc newQWeakPointer*[T](other: QSharedPointer[T]): QWeakPointer[T] {. header:headerFile, importcpp:"QWeakPointer(@)", constructor .} #
proc newQWeakPointer*[T](other: ptr cint): QWeakPointer[T] {. header:headerFile, importcpp:"QWeakPointer(@)", constructor .} #

# Public methods for QWeakPointer
proc isNull*[T](this: QWeakPointer[T]): bool {.header:headerFile, importcpp:"#.isNull(@)".} # Public
proc `!`*[T](this: QWeakPointer[T]): bool {.header:headerFile, importcpp:"#.operator!(@)".} # Public
proc swap*[T](this: QWeakPointer[T], other: QWeakPointer[T]) {.header:headerFile, importcpp:"#.swap(@)".} # Public
proc data*[T](this: QWeakPointer[T]): ptr T {.header:headerFile, importcpp:"#.data(@)".} # Public
proc clear*[T](this: QWeakPointer[T]) {.header:headerFile, importcpp:"#.clear(@)".} # Public
proc toStrongRef*[T](this: QWeakPointer[T]): QSharedPointer[T] {.header:headerFile, importcpp:"#.toStrongRef(@)".} # Public
proc lock*[T](this: QWeakPointer[T]): QSharedPointer[T] {.header:headerFile, importcpp:"#.lock(@)".} # Public
# Stuff for class QEnableSharedFromThis

# Public methods for QEnableSharedFromThis
proc sharedFromThis*[T](this: QEnableSharedFromThis[T]): QSharedPointer[T] {.header:headerFile, importcpp:"#.sharedFromThis(@)".} # Public

