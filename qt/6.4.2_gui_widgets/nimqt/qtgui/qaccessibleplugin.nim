const headerFile* = "QtGui/qaccessibleplugin.h"

import nimqt/qtcore/qobject
# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}


type
    # Classes and enums found in the C++ code
    QAccessiblePlugin* {.header:headerFile,importcpp:"QAccessiblePlugin" ,pure.} = object of QObject
{.push warning[Deprecated]: on.}

# Stuff for class QAccessiblePlugin

# Public constructors for QAccessiblePlugin
# 1 default parameters!
proc newQAccessiblePlugin*(parent: ptr QObject): ptr QAccessiblePlugin {. header:headerFile, importcpp:"new QAccessiblePlugin(@)" .} #
proc newQAccessiblePlugin*(): ptr QAccessiblePlugin {. header:headerFile, importcpp:"new QAccessiblePlugin(@)" .} #

# Public methods for QAccessiblePlugin
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QAccessiblePlugin_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QAccessiblePlugin::tr(@)".} # Public static
proc static_QAccessiblePlugin_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QAccessiblePlugin::tr(@)".} # Public static
import nimqt/qtgui/qaccessible
proc create*(this: ptr QAccessiblePlugin, key: QString, `object`: ptr QObject): ptr QAccessibleInterface {.header:headerFile, importcpp:"#.create(@)".} # Public

export qstring
export qobject
export qaccessible