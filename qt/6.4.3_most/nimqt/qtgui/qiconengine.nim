const headerFile* = "QtGui/qiconengine.h"

type
    # Enums found in the C++ code
    # Global
    QIconEngine_IconEngineHook* {.header:headerFile,importcpp:"QIconEngine::IconEngineHook".} = enum IsNullHook = 0x3, ScaledPixmapHook = 0x4

type
    # Classes found in the C++ code
    QIconEngine* {.header:headerFile,importcpp:"QIconEngine" ,pure,inheritable.} = object
    QIconEngine_ScaledPixmapArgument* {.header:headerFile,importcpp:"QIconEngine::ScaledPixmapArgument" ,pure,inheritable.} = object

# Stuff for class QIconEngine

# Public constructors for QIconEngine
proc newQIconEngine*(): QIconEngine {. header:headerFile, importcpp:"QIconEngine(@)", constructor .} #

# Public methods for QIconEngine
import nimqt/qtgui/qpainter
import nimqt/qtcore/qrect
import nimqt/qtgui/qicon
proc paint*(this: QIconEngine, painter: ptr QPainter, rect: QRect, mode: QIcon_Mode, state: QIcon_State) {.header:headerFile, importcpp:"#.paint(@)".} # Public
import nimqt/qtcore/qsize
proc actualSize*(this: QIconEngine, size: QSize, mode: QIcon_Mode, state: QIcon_State): QSize {.header:headerFile, importcpp:"#.actualSize(@)".} # Public
import nimqt/qtgui/qpixmap
proc pixmap*(this: QIconEngine, size: QSize, mode: QIcon_Mode, state: QIcon_State): QPixmap {.header:headerFile, importcpp:"#.pixmap(@)".} # Public
proc addPixmap*(this: QIconEngine, pixmap: QPixmap, mode: QIcon_Mode, state: QIcon_State) {.header:headerFile, importcpp:"#.addPixmap(@)".} # Public
import nimqt/qtcore/qstring
proc addFile*(this: QIconEngine, fileName: QString, size: QSize, mode: QIcon_Mode, state: QIcon_State) {.header:headerFile, importcpp:"#.addFile(@)".} # Public
proc key*(this: QIconEngine): QString {.header:headerFile, importcpp:"#.key(@)".} # Public
proc clone*(this: QIconEngine): ptr QIconEngine {.header:headerFile, importcpp:"#.clone(@)".} # Public
import nimqt/qtcore/qdatastream
proc read*(this: QIconEngine, `in`: QDataStream): bool {.header:headerFile, importcpp:"#.read(@)".} # Public
proc write*(this: QIconEngine, `out`: QDataStream): bool {.header:headerFile, importcpp:"#.write(@)".} # Public
import nimqt/qtcore/qlist
proc availableSizes*(this: QIconEngine, mode: QIcon_Mode, state: QIcon_State): QList[QSize] {.header:headerFile, importcpp:"#.availableSizes(@)".} # Public
proc iconName*(this: QIconEngine): QString {.header:headerFile, importcpp:"#.iconName(@)".} # Public
proc isNull*(this: QIconEngine): bool {.header:headerFile, importcpp:"#.isNull(@)".} # Public
proc scaledPixmap*(this: QIconEngine, size: QSize, mode: QIcon_Mode, state: QIcon_State, scale: cfloat): QPixmap {.header:headerFile, importcpp:"#.scaledPixmap(@)".} # Public
proc virtual_hook*(this: QIconEngine, id: cint, data: ptr) {.header:headerFile, importcpp:"#.virtual_hook(@)".} # Public

export qpixmap
export qstring
export qdatastream
export qsize
export qlist
export qpainter
export qrect
export qicon
