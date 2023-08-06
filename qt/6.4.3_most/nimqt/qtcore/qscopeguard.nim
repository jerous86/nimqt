const headerFile* = "QtCore/qscopeguard.h"

type
    # Classes found in the C++ code
    QScopeGuard*[F] {.header:headerFile,importcpp:"QScopeGuard" ,pure,inheritable.} = object

# Stuff for class QScopeGuard

# Public constructors for QScopeGuard
proc newQScopeGuard*[F](f: F): QScopeGuard[F] {. header:headerFile, importcpp:"QScopeGuard(@)", constructor .} #
proc newQScopeGuard*[F](other: QScopeGuard[F]): QScopeGuard[F] {. header:headerFile, importcpp:"QScopeGuard(@)", constructor .} #

# Public methods for QScopeGuard
proc dismiss*[F](this: QScopeGuard[F]) {.header:headerFile, importcpp:"#.dismiss(@)".} # Public

