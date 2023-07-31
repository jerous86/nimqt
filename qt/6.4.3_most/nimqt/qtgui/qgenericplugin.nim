const headerFile* = "QtGui/qgenericplugin.h"

import nimqt/qtcore/qobject
type
    # Classes found in the C++ code
    QGenericPlugin* {.header:headerFile,importcpp:"QGenericPlugin" ,pure.} = object of QObject

# Stuff for class QGenericPlugin

# Public constructors for QGenericPlugin
# 1 default parameters!
proc newQGenericPlugin*(parent: ptr QObject): ptr QGenericPlugin {. header:headerFile, importcpp:"new QGenericPlugin(@)" .} #
proc newQGenericPlugin*(): ptr QGenericPlugin {. header:headerFile, importcpp:"new QGenericPlugin(@)" .} #

# Public methods for QGenericPlugin
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QGenericPlugin_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QGenericPlugin::tr(@)".} # Public static
proc static_QGenericPlugin_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QGenericPlugin::tr(@)".} # Public static
proc create*(this: ptr QGenericPlugin, name: QString, spec: QString): ptr QObject {.header:headerFile, importcpp:"#.create(@)".} # Public

export qstring
export qobject
