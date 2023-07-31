const headerFile* = "QtGui/qiconengineplugin.h"

import nimqt/qtcore/qobject
type
    # Classes found in the C++ code
    QIconEnginePlugin* {.header:headerFile,importcpp:"QIconEnginePlugin" ,pure.} = object of QObject

# Stuff for class QIconEnginePlugin

# Public constructors for QIconEnginePlugin
# 1 default parameters!
proc newQIconEnginePlugin*(parent: ptr QObject): ptr QIconEnginePlugin {. header:headerFile, importcpp:"new QIconEnginePlugin(@)" .} #
proc newQIconEnginePlugin*(): ptr QIconEnginePlugin {. header:headerFile, importcpp:"new QIconEnginePlugin(@)" .} #

# Public methods for QIconEnginePlugin
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QIconEnginePlugin_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QIconEnginePlugin::tr(@)".} # Public static
proc static_QIconEnginePlugin_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QIconEnginePlugin::tr(@)".} # Public static
import nimqt/qtgui/qiconengine
# 1 default parameters!
proc create*(this: ptr QIconEnginePlugin, filename: QString): ptr QIconEngine {.header:headerFile, importcpp:"#.create(@)".} # Public
proc create*(this: ptr QIconEnginePlugin): ptr QIconEngine {.header:headerFile, importcpp:"#.create(@)".} # Public

export qiconengine
export qstring
export qobject
