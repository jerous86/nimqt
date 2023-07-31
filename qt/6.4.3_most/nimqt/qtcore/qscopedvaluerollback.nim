const headerFile* = "QtCore/qscopedvaluerollback.h"

# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}
when (NimMajor, NimMinor, NimPatch) < (1, 9, 0):
    type
        # Classes found in the C++ code
        QScopedValueRollback*[T] {.header:headerFile,importcpp:"QScopedValueRollback" ,pure.} = object {.inheritable.}
elif (NimMajor, NimMinor, NimPatch) >= (1, 9, 0):
    type
        # Classes found in the C++ code
        QScopedValueRollback*[T] {.header:headerFile,importcpp:"QScopedValueRollback" ,pure,inheritable.} = object
{.push warning[Deprecated]: on.}

# Stuff for class QScopedValueRollback

# Public constructors for QScopedValueRollback
proc newQScopedValueRollback*[T](`var`: T): QScopedValueRollback[T] {. header:headerFile, importcpp:"QScopedValueRollback(@)", constructor .} #
proc newQScopedValueRollback*[T](`var`: T, value: T): QScopedValueRollback[T] {. header:headerFile, importcpp:"QScopedValueRollback(@)", constructor .} #

# Public methods for QScopedValueRollback
proc commit*[T](this: QScopedValueRollback[T]) {.header:headerFile, importcpp:"#.commit(@)".} # Public

