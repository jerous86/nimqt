const headerFile* = "QtCore/qscopedpointer.h"

type
    # Classes found in the C++ code
    QScopedPointerDeleter*[T] {.header:headerFile,importcpp:"QScopedPointerDeleter" ,pure,inheritable.} = object
    QScopedPointerArrayDeleter*[T] {.header:headerFile,importcpp:"QScopedPointerArrayDeleter" ,pure,inheritable.} = object
    QScopedPointerPodDeleter* {.header:headerFile,importcpp:"QScopedPointerPodDeleter" ,pure,inheritable.} = object
    QScopedPointerObjectDeleteLater*[T] {.header:headerFile,importcpp:"QScopedPointerObjectDeleteLater" ,pure,inheritable.} = object
    QScopedPointer*[T, Cleanup] {.header:headerFile,importcpp:"QScopedPointer" ,pure,inheritable.} = object
    QScopedArrayPointer*[T, Cleanup] {.header:headerFile,importcpp:"QScopedArrayPointer" ,pure.} = object of QScopedPointer
import nimqt/qtcore/qobject


type
    # typedefs found in the C++ code
    QScopedPointerDeleteLater * = QScopedPointerObjectDeleteLater[QObject]

# Stuff for class QScopedPointerDeleter

# Public methods for QScopedPointerDeleter
proc static_QScopedPointerDeleter_cleanup*[T](pointer: ptr T) {.header:headerFile, importcpp:"QScopedPointerDeleter::cleanup(@)".} # Public static
# Stuff for class QScopedPointerArrayDeleter

# Public methods for QScopedPointerArrayDeleter
proc static_QScopedPointerArrayDeleter_cleanup*[T](pointer: ptr T) {.header:headerFile, importcpp:"QScopedPointerArrayDeleter::cleanup(@)".} # Public static
# Stuff for class QScopedPointerPodDeleter

# Public methods for QScopedPointerPodDeleter
proc static_QScopedPointerPodDeleter_cleanup*(pointer: ptr) {.header:headerFile, importcpp:"QScopedPointerPodDeleter::cleanup(@)".} # Public static
# Stuff for class QScopedPointerObjectDeleteLater

# Public methods for QScopedPointerObjectDeleteLater
proc static_QScopedPointerObjectDeleteLater_cleanup*[T](pointer: ptr T) {.header:headerFile, importcpp:"QScopedPointerObjectDeleteLater::cleanup(@)".} # Public static
# Stuff for class QScopedPointer

# Public constructors for QScopedPointer
# 1 default parameters!
proc newQScopedPointer*[T, Cleanup](p: ptr T): QScopedPointer[T, Cleanup] {. header:headerFile, importcpp:"QScopedPointer(@)", constructor .} #
proc newQScopedPointer*[T, Cleanup](): QScopedPointer[T, Cleanup] {. header:headerFile, importcpp:"QScopedPointer(@)", constructor .} #

# Public methods for QScopedPointer
proc `*`*[T, Cleanup](this: QScopedPointer[T, Cleanup]): T {.header:headerFile, importcpp:"#.operator*(@)".} # Public
proc `->`*[T, Cleanup](this: QScopedPointer[T, Cleanup]): ptr T {.header:headerFile, importcpp:"#.operator->(@)".} # Public
proc `!`*[T, Cleanup](this: QScopedPointer[T, Cleanup]): bool {.header:headerFile, importcpp:"#.operator!(@)".} # Public
proc data*[T, Cleanup](this: QScopedPointer[T, Cleanup]): ptr T {.header:headerFile, importcpp:"#.data(@)".} # Public
proc get*[T, Cleanup](this: QScopedPointer[T, Cleanup]): ptr T {.header:headerFile, importcpp:"#.get(@)".} # Public
proc isNull*[T, Cleanup](this: QScopedPointer[T, Cleanup]): bool {.header:headerFile, importcpp:"#.isNull(@)".} # Public
# 1 default parameters!
proc reset*[T, Cleanup](this: QScopedPointer[T, Cleanup], other: ptr T) {.header:headerFile, importcpp:"#.reset(@)".} # Public
proc reset*[T, Cleanup](this: QScopedPointer[T, Cleanup]) {.header:headerFile, importcpp:"#.reset(@)".} # Public
proc take*[T, Cleanup](this: QScopedPointer[T, Cleanup]): ptr T {.header:headerFile, importcpp:"#.take(@)".} # Public
proc swap*[T, Cleanup](this: QScopedPointer[T, Cleanup], other: QScopedPointer[T, Cleanup]) {.header:headerFile, importcpp:"#.swap(@)".} # Public
# Stuff for class QScopedArrayPointer

# Public constructors for QScopedArrayPointer
proc newQScopedArrayPointer*[T, Cleanup](): ptr QScopedArrayPointer[T, Cleanup] {. header:headerFile, importcpp:"new QScopedArrayPointer(@)" .} #

# Public methods for QScopedArrayPointer
proc `[]`*[T, Cleanup](this: ptr QScopedArrayPointer[T, Cleanup], i: cint): T {.header:headerFile, importcpp:"#.operator[](@)".} # Public
proc swap*[T, Cleanup](this: ptr QScopedArrayPointer[T, Cleanup], other: QScopedArrayPointer[T, Cleanup]) {.header:headerFile, importcpp:"#.swap(@)".} # Public

export qobject
