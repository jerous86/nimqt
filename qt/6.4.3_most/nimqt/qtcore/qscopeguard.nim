const headerFile* = "QtCore/qscopeguard.h"

# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}
when (NimMajor, NimMinor, NimPatch) < (1, 9, 0):
    type
        # Classes found in the C++ code
        QScopeGuard*[F] {.header:headerFile,importcpp:"QScopeGuard" ,pure.} = object {.inheritable.}
elif (NimMajor, NimMinor, NimPatch) >= (1, 9, 0):
    type
        # Classes found in the C++ code
        QScopeGuard*[F] {.header:headerFile,importcpp:"QScopeGuard" ,pure,inheritable.} = object
{.push warning[Deprecated]: on.}

# Stuff for class QScopeGuard

# Public constructors for QScopeGuard
proc newQScopeGuard*[F](f: F): QScopeGuard[F] {. header:headerFile, importcpp:"QScopeGuard(@)", constructor .} #
proc newQScopeGuard*[F](other: QScopeGuard[F]): QScopeGuard[F] {. header:headerFile, importcpp:"QScopeGuard(@)", constructor .} #

# Public methods for QScopeGuard
proc dismiss*[F](this: QScopeGuard[F]) {.header:headerFile, importcpp:"#.dismiss(@)".} # Public

