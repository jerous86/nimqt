const headerFile* = "QtCore/qfactoryinterface.h"

type
    # Classes found in the C++ code
    QFactoryInterface* {.header:headerFile,importcpp:"QFactoryInterface" ,pure,inheritable.} = object

# Stuff for class QFactoryInterface

# Public methods for QFactoryInterface
import nimqt/qtcore/qstringlist
proc keys*(this: QFactoryInterface): QStringList {.header:headerFile, importcpp:"#.keys(@)".} # Public

export qstringlist
