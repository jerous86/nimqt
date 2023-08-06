const headerFile* = "QtCore/qshareddata.h"

type
    # Classes found in the C++ code
    QSharedData* {.header:headerFile,importcpp:"QSharedData" ,pure,inheritable.} = object
    QAdoptSharedDataTag* {.header:headerFile,importcpp:"QAdoptSharedDataTag" ,pure,inheritable.} = object
    QSharedDataPointer*[T] {.header:headerFile,importcpp:"QSharedDataPointer" ,pure,inheritable.} = object
    QExplicitlySharedDataPointer*[T] {.header:headerFile,importcpp:"QExplicitlySharedDataPointer" ,pure,inheritable.} = object

# Stuff for class QSharedData

# Public constructors for QSharedData
proc newQSharedData*(): QSharedData {. header:headerFile, importcpp:"QSharedData(@)", constructor .} #
proc newQSharedData*(arg_0: QSharedData): QSharedData {. header:headerFile, importcpp:"QSharedData(@)", constructor .} #
# Stuff for class QAdoptSharedDataTag

# Public constructors for QAdoptSharedDataTag
proc newQAdoptSharedDataTag*(): QAdoptSharedDataTag {. header:headerFile, importcpp:"QAdoptSharedDataTag(@)", constructor .} #
# Stuff for class QSharedDataPointer

# Public constructors for QSharedDataPointer
proc newQSharedDataPointer*[T](): QSharedDataPointer[T] {. header:headerFile, importcpp:"QSharedDataPointer(@)", constructor .} #
proc newQSharedDataPointer*[T](data: ptr T): QSharedDataPointer[T] {. header:headerFile, importcpp:"QSharedDataPointer(@)", constructor .} #
proc newQSharedDataPointer*[T](data: ptr T, arg_1: QAdoptSharedDataTag): QSharedDataPointer[T] {. header:headerFile, importcpp:"QSharedDataPointer(@)", constructor .} #
proc newQSharedDataPointer*[T](o: QSharedDataPointer[T]): QSharedDataPointer[T] {. header:headerFile, importcpp:"QSharedDataPointer(@)", constructor .} #

# Public methods for QSharedDataPointer
proc detach*[T](this: QSharedDataPointer[T]) {.header:headerFile, importcpp:"#.detach(@)".} # Public
proc `*`*[T](this: QSharedDataPointer[T]): T {.header:headerFile, importcpp:"#.operator*(@)".} # Public
proc `->`*[T](this: QSharedDataPointer[T]): ptr T {.header:headerFile, importcpp:"#.operator->(@)".} # Public
proc data*[T](this: QSharedDataPointer[T]): ptr T {.header:headerFile, importcpp:"#.data(@)".} # Public
proc get*[T](this: QSharedDataPointer[T]): ptr T {.header:headerFile, importcpp:"#.get(@)".} # Public
proc constData*[T](this: QSharedDataPointer[T]): ptr T {.header:headerFile, importcpp:"#.constData(@)".} # Public
proc take*[T](this: QSharedDataPointer[T]): ptr T {.header:headerFile, importcpp:"#.take(@)".} # Public
# 1 default parameters!
proc reset*[T](this: QSharedDataPointer[T], `ptr`: ptr T) {.header:headerFile, importcpp:"#.reset(@)".} # Public
proc reset*[T](this: QSharedDataPointer[T]) {.header:headerFile, importcpp:"#.reset(@)".} # Public
proc `!`*[T](this: QSharedDataPointer[T]): bool {.header:headerFile, importcpp:"#.operator!(@)".} # Public
proc swap*[T](this: QSharedDataPointer[T], other: QSharedDataPointer[T]) {.header:headerFile, importcpp:"#.swap(@)".} # Public

# Protected methods methods for QSharedDataPointer
proc clone*[T](this: QSharedDataPointer[T]): ptr T {.header:headerFile, importcpp:"#.clone(@)".} # Protected
# Stuff for class QExplicitlySharedDataPointer

# Public constructors for QExplicitlySharedDataPointer
proc newQExplicitlySharedDataPointer*[T](): QExplicitlySharedDataPointer[T] {. header:headerFile, importcpp:"QExplicitlySharedDataPointer(@)", constructor .} #
proc newQExplicitlySharedDataPointer*[T](data: ptr T): QExplicitlySharedDataPointer[T] {. header:headerFile, importcpp:"QExplicitlySharedDataPointer(@)", constructor .} #
proc newQExplicitlySharedDataPointer*[T](data: ptr T, arg_1: QAdoptSharedDataTag): QExplicitlySharedDataPointer[T] {. header:headerFile, importcpp:"QExplicitlySharedDataPointer(@)", constructor .} #
proc newQExplicitlySharedDataPointer*[T](o: QExplicitlySharedDataPointer[T]): QExplicitlySharedDataPointer[T] {. header:headerFile, importcpp:"QExplicitlySharedDataPointer(@)", constructor .} #

# Public methods for QExplicitlySharedDataPointer
proc `*`*[T](this: QExplicitlySharedDataPointer[T]): T {.header:headerFile, importcpp:"#.operator*(@)".} # Public
proc `->`*[T](this: QExplicitlySharedDataPointer[T]): ptr T {.header:headerFile, importcpp:"#.operator->(@)".} # Public
proc data*[T](this: QExplicitlySharedDataPointer[T]): ptr T {.header:headerFile, importcpp:"#.data(@)".} # Public
proc get*[T](this: QExplicitlySharedDataPointer[T]): ptr T {.header:headerFile, importcpp:"#.get(@)".} # Public
proc constData*[T](this: QExplicitlySharedDataPointer[T]): ptr T {.header:headerFile, importcpp:"#.constData(@)".} # Public
proc take*[T](this: QExplicitlySharedDataPointer[T]): ptr T {.header:headerFile, importcpp:"#.take(@)".} # Public
proc detach*[T](this: QExplicitlySharedDataPointer[T]) {.header:headerFile, importcpp:"#.detach(@)".} # Public
# 1 default parameters!
proc reset*[T](this: QExplicitlySharedDataPointer[T], `ptr`: ptr T) {.header:headerFile, importcpp:"#.reset(@)".} # Public
proc reset*[T](this: QExplicitlySharedDataPointer[T]) {.header:headerFile, importcpp:"#.reset(@)".} # Public
proc `!`*[T](this: QExplicitlySharedDataPointer[T]): bool {.header:headerFile, importcpp:"#.operator!(@)".} # Public
proc swap*[T](this: QExplicitlySharedDataPointer[T], other: QExplicitlySharedDataPointer[T]) {.header:headerFile, importcpp:"#.swap(@)".} # Public

# Protected methods methods for QExplicitlySharedDataPointer
proc clone*[T](this: QExplicitlySharedDataPointer[T]): ptr T {.header:headerFile, importcpp:"#.clone(@)".} # Protected

