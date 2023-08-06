const headerFile* = "QtCore/qscopedvaluerollback.h"

type
    # Classes found in the C++ code
    QScopedValueRollback*[T] {.header:headerFile,importcpp:"QScopedValueRollback" ,pure,inheritable.} = object

# Stuff for class QScopedValueRollback

# Public constructors for QScopedValueRollback
proc newQScopedValueRollback*[T](`var`: T): QScopedValueRollback[T] {. header:headerFile, importcpp:"QScopedValueRollback(@)", constructor .} #
proc newQScopedValueRollback*[T](`var`: T, value: T): QScopedValueRollback[T] {. header:headerFile, importcpp:"QScopedValueRollback(@)", constructor .} #

# Public methods for QScopedValueRollback
proc commit*[T](this: QScopedValueRollback[T]) {.header:headerFile, importcpp:"#.commit(@)".} # Public

