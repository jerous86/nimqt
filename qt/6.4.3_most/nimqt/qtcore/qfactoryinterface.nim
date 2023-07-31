const headerFile* = "QtCore/qfactoryinterface.h"

# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}
when (NimMajor, NimMinor, NimPatch) < (1, 9, 0):
    type
        # Classes found in the C++ code
        QFactoryInterface* {.header:headerFile,importcpp:"QFactoryInterface" ,pure.} = object {.inheritable.}
elif (NimMajor, NimMinor, NimPatch) >= (1, 9, 0):
    type
        # Classes found in the C++ code
        QFactoryInterface* {.header:headerFile,importcpp:"QFactoryInterface" ,pure,inheritable.} = object
{.push warning[Deprecated]: on.}

# Stuff for class QFactoryInterface

# Public methods for QFactoryInterface
import nimqt/qtcore/qstringlist
proc keys*(this: QFactoryInterface): QStringList {.header:headerFile, importcpp:"#.keys(@)".} # Public

export qstringlist
