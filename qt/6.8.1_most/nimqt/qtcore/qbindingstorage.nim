const headerFile* = "QtCore/qbindingstorage.h"

type
    # Classes found in the C++ code
    QBindingStatus* {.header:headerFile,importcpp:"QBindingStatus" ,pure,inheritable.} = object
    QBindingStorage* {.header:headerFile,importcpp:"QBindingStorage" ,pure,inheritable.} = object

# Stuff for class QBindingStorage

# Public constructors for QBindingStorage
proc newQBindingStorage*(): QBindingStorage {. header:headerFile, importcpp:"QBindingStorage(@)", constructor .} #

# Public methods for QBindingStorage
proc isEmpty*(this: QBindingStorage): bool {.header:headerFile, importcpp:"#.isEmpty(@)".} # Public
proc isValid*(this: QBindingStorage): bool {.header:headerFile, importcpp:"#.isValid(@)".} # Public

