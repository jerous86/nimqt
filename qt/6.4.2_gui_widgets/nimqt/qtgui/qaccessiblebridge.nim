const headerFile* = "QtGui/qaccessiblebridge.h"

import nimqt/qtcore/qobject
# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}


type
    # Classes and enums found in the C++ code
    QAccessibleBridge* {.header:headerFile,importcpp:"QAccessibleBridge" ,pure.} = object {.inheritable.}
    QAccessibleBridgePlugin* {.header:headerFile,importcpp:"QAccessibleBridgePlugin" ,pure.} = object of QObject
{.push warning[Deprecated]: on.}

# Stuff for class QAccessibleBridge

# Public methods for QAccessibleBridge
import nimqt/qtgui/qaccessible
proc setRootObject*(this: QAccessibleBridge, arg_0: ptr QAccessibleInterface) {.header:headerFile, importcpp:"#.setRootObject(@)".} # Public
proc notifyAccessibilityUpdate*(this: QAccessibleBridge, event: ptr QAccessibleEvent) {.header:headerFile, importcpp:"#.notifyAccessibilityUpdate(@)".} # Public
# Stuff for class QAccessibleBridgePlugin

# Public constructors for QAccessibleBridgePlugin
# 1 default parameters!
proc newQAccessibleBridgePlugin*(parent: ptr QObject): ptr QAccessibleBridgePlugin {. header:headerFile, importcpp:"new QAccessibleBridgePlugin(@)" .} #
proc newQAccessibleBridgePlugin*(): ptr QAccessibleBridgePlugin {. header:headerFile, importcpp:"new QAccessibleBridgePlugin(@)" .} #

# Public methods for QAccessibleBridgePlugin
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QAccessibleBridgePlugin_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QAccessibleBridgePlugin::tr(@)".} # Public static
proc static_QAccessibleBridgePlugin_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QAccessibleBridgePlugin::tr(@)".} # Public static
proc create*(this: ptr QAccessibleBridgePlugin, key: QString): ptr QAccessibleBridge {.header:headerFile, importcpp:"#.create(@)".} # Public

export qstring
export qobject
export qaccessible