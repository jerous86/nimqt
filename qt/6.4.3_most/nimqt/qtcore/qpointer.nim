const headerFile* = "QtCore/qpointer.h"

# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}
when (NimMajor, NimMinor, NimPatch) < (1, 9, 0):
    type
        # Classes found in the C++ code
        QPointer*[T] {.header:headerFile,importcpp:"QPointer" ,pure.} = object {.inheritable.}
elif (NimMajor, NimMinor, NimPatch) >= (1, 9, 0):
    type
        # Classes found in the C++ code
        QPointer*[T] {.header:headerFile,importcpp:"QPointer" ,pure,inheritable.} = object
{.push warning[Deprecated]: on.}

# Stuff for class QPointer

# Public constructors for QPointer
proc newQPointer*[T](): QPointer[T] {. header:headerFile, importcpp:"QPointer(@)", constructor .} #
proc newQPointer*[T](p: ptr T): QPointer[T] {. header:headerFile, importcpp:"QPointer(@)", constructor .} #

# Public methods for QPointer
proc swap*[T](this: QPointer[T], other: QPointer[T]) {.header:headerFile, importcpp:"#.swap(@)".} # Public
proc data*[T](this: QPointer[T]): ptr T {.header:headerFile, importcpp:"#.data(@)".} # Public
proc get*[T](this: QPointer[T]): ptr T {.header:headerFile, importcpp:"#.get(@)".} # Public
proc `->`*[T](this: QPointer[T]): ptr T {.header:headerFile, importcpp:"#.operator->(@)".} # Public
proc `*`*[T](this: QPointer[T]): T {.header:headerFile, importcpp:"#.operator*(@)".} # Public
proc isNull*[T](this: QPointer[T]): bool {.header:headerFile, importcpp:"#.isNull(@)".} # Public
proc clear*[T](this: QPointer[T]) {.header:headerFile, importcpp:"#.clear(@)".} # Public
