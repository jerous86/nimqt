const headerFile* = "QtGui/qgenericpluginfactory.h"

type
    # Classes found in the C++ code
    QGenericPluginFactory* {.header:headerFile,importcpp:"QGenericPluginFactory" ,pure,inheritable.} = object

# Stuff for class QGenericPluginFactory

# Public methods for QGenericPluginFactory
import nimqt/qtcore/qstringlist
proc static_QGenericPluginFactory_keys*(): QStringList {.header:headerFile, importcpp:"QGenericPluginFactory::keys(@)".} # Public static
import nimqt/qtcore/qstring
import nimqt/qtcore/qobject
proc static_QGenericPluginFactory_create*(arg_1: QString, arg_2: QString): ptr QObject {.header:headerFile, importcpp:"QGenericPluginFactory::create(@)".} # Public static

export qstringlist
export qstring
export qobject
