const headerFile* = "QtGui/qgenericpluginfactory.h"

# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}


type
    # Classes and enums found in the C++ code
    QGenericPluginFactory* {.header:headerFile,importcpp:"QGenericPluginFactory" ,pure.} = object {.inheritable.}
{.push warning[Deprecated]: on.}

# Stuff for class QGenericPluginFactory

# Public methods for QGenericPluginFactory
import nimqt/qtcore/qstring
import nimqt/qtcore/qobject
proc static_QGenericPluginFactory_create*(arg_1: QString, arg_2: QString): ptr QObject {.header:headerFile, importcpp:"QGenericPluginFactory::create(@)".} # Public static

export qstring
export qobject