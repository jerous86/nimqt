const headerFile* = "QtCore/qpluginloader.h"

import nimqt/qtcore/qobject
type
    # Classes found in the C++ code
    QPluginLoader* {.header:headerFile,importcpp:"QPluginLoader" ,pure.} = object of QObject

# Stuff for class QPluginLoader

# Public constructors for QPluginLoader
# 1 default parameters!
proc newQPluginLoader*(parent: ptr QObject): ptr QPluginLoader {. header:headerFile, importcpp:"new QPluginLoader(@)" .} #
proc newQPluginLoader*(): ptr QPluginLoader {. header:headerFile, importcpp:"new QPluginLoader(@)" .} #
import nimqt/qtcore/qstring
# 1 default parameters!
proc newQPluginLoader*(fileName: QString, parent: ptr QObject): ptr QPluginLoader {. header:headerFile, importcpp:"new QPluginLoader(@)" .} #
proc newQPluginLoader*(fileName: QString): ptr QPluginLoader {. header:headerFile, importcpp:"new QPluginLoader(@)" .} #

# Public methods for QPluginLoader
# 1 default parameters!
proc static_QPluginLoader_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QPluginLoader::tr(@)".} # Public static
proc static_QPluginLoader_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QPluginLoader::tr(@)".} # Public static
proc instance*(this: ptr QPluginLoader): ptr QObject {.header:headerFile, importcpp:"#.instance(@)".} # Public
import nimqt/qtcore/qjsonobject
proc metaData*(this: ptr QPluginLoader): QJsonObject {.header:headerFile, importcpp:"#.metaData(@)".} # Public
proc static_QPluginLoader_staticInstances*(): QObjectList {.header:headerFile, importcpp:"QPluginLoader::staticInstances(@)".} # Public static
import nimqt/qtcore/qplugin
import nimqt/qtcore/qlist
proc static_QPluginLoader_staticPlugins*(): QList[QStaticPlugin] {.header:headerFile, importcpp:"QPluginLoader::staticPlugins(@)".} # Public static
proc load*(this: ptr QPluginLoader): bool {.header:headerFile, importcpp:"#.load(@)".} # Public
proc unload*(this: ptr QPluginLoader): bool {.header:headerFile, importcpp:"#.unload(@)".} # Public
proc isLoaded*(this: ptr QPluginLoader): bool {.header:headerFile, importcpp:"#.isLoaded(@)".} # Public
proc setFileName*(this: ptr QPluginLoader, fileName: QString) {.header:headerFile, importcpp:"#.setFileName(@)".} # Public
proc fileName*(this: ptr QPluginLoader): QString {.header:headerFile, importcpp:"#.fileName(@)".} # Public
proc errorString*(this: ptr QPluginLoader): QString {.header:headerFile, importcpp:"#.errorString(@)".} # Public
import nimqt/qtcore/qlibrary
proc setLoadHints*(this: ptr QPluginLoader, loadHints: QLibrary_LoadHints) {.header:headerFile, importcpp:"#.setLoadHints(@)".} # Public
proc loadHints*(this: ptr QPluginLoader): QLibrary_LoadHints {.header:headerFile, importcpp:"#.loadHints(@)".} # Public

export qplugin
export qstring
export qlist
export qlibrary
export qobject
export qjsonobject
