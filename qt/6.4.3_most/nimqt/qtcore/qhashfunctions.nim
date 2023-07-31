const headerFile* = "QtCore/qhashfunctions.h"

# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}
when (NimMajor, NimMinor, NimPatch) < (1, 9, 0):
    type
        # Classes found in the C++ code
        QHashSeed* {.header:headerFile,importcpp:"QHashSeed" ,pure.} = object {.inheritable.}
elif (NimMajor, NimMinor, NimPatch) >= (1, 9, 0):
    type
        # Classes found in the C++ code
        QHashSeed* {.header:headerFile,importcpp:"QHashSeed" ,pure,inheritable.} = object
{.push warning[Deprecated]: on.}

# Stuff for class QHashSeed

# Public constructors for QHashSeed
# 1 default parameters!
proc newQHashSeed*(d: csize_t): QHashSeed {. header:headerFile, importcpp:"QHashSeed(@)", constructor .} #
proc newQHashSeed*(): QHashSeed {. header:headerFile, importcpp:"QHashSeed(@)", constructor .} #

# Public methods for QHashSeed
proc static_QHashSeed_globalSeed*(): QHashSeed {.header:headerFile, importcpp:"QHashSeed::globalSeed(@)".} # Public static
proc static_QHashSeed_setDeterministicGlobalSeed*() {.header:headerFile, importcpp:"QHashSeed::setDeterministicGlobalSeed(@)".} # Public static
proc static_QHashSeed_resetRandomGlobalSeed*() {.header:headerFile, importcpp:"QHashSeed::resetRandomGlobalSeed(@)".} # Public static

