const headerFile* = "QtWidgets/qstyleplugin.h"

import nimqt/qtcore/qobject
type
    # Classes found in the C++ code
    QStylePlugin* {.header:headerFile,importcpp:"QStylePlugin" ,pure.} = object of QObject

# Stuff for class QStylePlugin

# Public constructors for QStylePlugin
# 1 default parameters!
proc newQStylePlugin*(parent: ptr QObject): ptr QStylePlugin {. header:headerFile, importcpp:"new QStylePlugin(@)" .} #
proc newQStylePlugin*(): ptr QStylePlugin {. header:headerFile, importcpp:"new QStylePlugin(@)" .} #

# Public methods for QStylePlugin
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QStylePlugin_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QStylePlugin::tr(@)".} # Public static
proc static_QStylePlugin_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QStylePlugin::tr(@)".} # Public static
import nimqt/qtwidgets/qstyle
proc create*(this: ptr QStylePlugin, key: QString): ptr QStyle {.header:headerFile, importcpp:"#.create(@)".} # Public

export qstring
export qstyle
export qobject
