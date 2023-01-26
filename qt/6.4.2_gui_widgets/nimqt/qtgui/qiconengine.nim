const headerFile* = "QtGui/qiconengine.h"

# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}


type
    # Classes and enums found in the C++ code
    # Global
    QIconEngine_IconEngineHook* {.header:headerFile,importcpp:"QIconEngine::IconEngineHook".} = enum IsNullHook = 0, ScaledPixmapHook = 0x1
    QIconEngine* {.header:headerFile,importcpp:"QIconEngine" ,pure.} = object {.inheritable.}
    QIconEngine_ScaledPixmapArgument* {.header:headerFile,importcpp:"QIconEngine::ScaledPixmapArgument" ,pure.} = object {.inheritable.}
{.push warning[Deprecated]: on.}

# Stuff for class QIconEngine

# Public constructors for QIconEngine
proc newQIconEngine*(): QIconEngine {. header:headerFile, importcpp:"QIconEngine(@)", constructor .} #

# Public methods for QIconEngine
import nimqt/qtgui/qpixmap
import nimqt/qtgui/qicon
proc addPixmap*(this: QIconEngine, pixmap: QPixmap, mode: QIcon_Mode, state: QIcon_State) {.header:headerFile, importcpp:"#.addPixmap(@)".} # Public
import nimqt/qtcore/qstring
proc key*(this: QIconEngine): QString {.header:headerFile, importcpp:"#.key(@)".} # Public
proc clone*(this: QIconEngine): ptr QIconEngine {.header:headerFile, importcpp:"#.clone(@)".} # Public
proc iconName*(this: QIconEngine): QString {.header:headerFile, importcpp:"#.iconName(@)".} # Public
proc isNull*(this: QIconEngine): bool {.header:headerFile, importcpp:"#.isNull(@)".} # Public
proc virtual_hook*(this: QIconEngine, id: cint, data: ptr) {.header:headerFile, importcpp:"#.virtual_hook(@)".} # Public

export qpixmap
export qstring
export qicon