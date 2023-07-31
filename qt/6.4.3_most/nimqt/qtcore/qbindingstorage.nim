const headerFile* = "QtCore/qbindingstorage.h"

# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}
when (NimMajor, NimMinor, NimPatch) < (1, 9, 0):
    type
        # Classes found in the C++ code
        QBindingStatus* {.header:headerFile,importcpp:"QBindingStatus" ,pure.} = object {.inheritable.}
        QBindingStorage* {.header:headerFile,importcpp:"QBindingStorage" ,pure.} = object {.inheritable.}
elif (NimMajor, NimMinor, NimPatch) >= (1, 9, 0):
    type
        # Classes found in the C++ code
        QBindingStatus* {.header:headerFile,importcpp:"QBindingStatus" ,pure,inheritable.} = object
        QBindingStorage* {.header:headerFile,importcpp:"QBindingStorage" ,pure,inheritable.} = object
{.push warning[Deprecated]: on.}

# Stuff for class QBindingStorage

# Public constructors for QBindingStorage
proc newQBindingStorage*(): QBindingStorage {. header:headerFile, importcpp:"QBindingStorage(@)", constructor .} #

# Public methods for QBindingStorage
proc isEmpty*(this: QBindingStorage): bool {.header:headerFile, importcpp:"#.isEmpty(@)".} # Public
proc isValid*(this: QBindingStorage): bool {.header:headerFile, importcpp:"#.isValid(@)".} # Public

