const headerFile* = "QtGui/qicon.h"

type
    # Enums found in the C++ code
    # Global
    QIcon_Mode* {.header:headerFile,importcpp:"QIcon::Mode".} = enum Normal = 0, Disabled = 0x1, Active = 0x2, Selected = 0x3
    QIcon_State* {.header:headerFile,importcpp:"QIcon::State".} = enum On = 0, Off = 0x1

type
    # Classes found in the C++ code
    QIcon* {.header:headerFile,importcpp:"QIcon" ,pure,inheritable.} = object

# Stuff for class QIcon

# Public constructors for QIcon
proc newQIcon*(): QIcon {. header:headerFile, importcpp:"QIcon(@)", constructor .} #
import nimqt/qtgui/qpixmap
proc newQIcon*(pixmap: QPixmap): QIcon {. header:headerFile, importcpp:"QIcon(@)", constructor .} #
proc newQIcon*(other: QIcon): QIcon {. header:headerFile, importcpp:"QIcon(@)", constructor .} #
import nimqt/qtcore/qstring
proc newQIcon*(fileName: QString): QIcon {. header:headerFile, importcpp:"QIcon(@)", constructor .} #
import nimqt/qtgui/qiconengine
proc newQIcon*(engine: ptr QIconEngine): QIcon {. header:headerFile, importcpp:"QIcon(@)", constructor .} #

# Public methods for QIcon
proc swap*(this: QIcon, other: QIcon) {.header:headerFile, importcpp:"#.swap(@)".} # Public
proc `!=`*(this: QIcon, arg_0: QIcon): bool {.header:headerFile, importcpp:"#.operator!=(@)".} # Public
import nimqt/qtcore/qsize
proc pixmap*(this: QIcon, size: QSize, mode: QIcon_Mode, state: QIcon_State): QPixmap {.header:headerFile, importcpp:"#.pixmap(@)".} # Public
proc pixmap*(this: QIcon, w: cint, h: cint, mode: QIcon_Mode, state: QIcon_State): QPixmap {.header:headerFile, importcpp:"#.pixmap(@)".} # Public
proc pixmap*(this: QIcon, extent: cint, mode: QIcon_Mode, state: QIcon_State): QPixmap {.header:headerFile, importcpp:"#.pixmap(@)".} # Public
proc pixmap*(this: QIcon, size: QSize, devicePixelRatio: cfloat, mode: QIcon_Mode, state: QIcon_State): QPixmap {.header:headerFile, importcpp:"#.pixmap(@)".} # Public
proc actualSize*(this: QIcon, size: QSize, mode: QIcon_Mode, state: QIcon_State): QSize {.header:headerFile, importcpp:"#.actualSize(@)".} # Public
proc name*(this: QIcon): QString {.header:headerFile, importcpp:"#.name(@)".} # Public
import nimqt/qtcore/qnamespace
import nimqt/qtgui/qpainter
import nimqt/qtcore/qrect
# 1 default parameters!
proc paint*(this: QIcon, painter: ptr QPainter, rect: QRect, alignment: Qt_Alignment, mode: QIcon_Mode, state: QIcon_State) {.header:headerFile, importcpp:"#.paint(@)".} # Public
proc paint*(this: QIcon, painter: ptr QPainter, rect: QRect, alignment: Qt_Alignment, mode: QIcon_Mode) {.header:headerFile, importcpp:"#.paint(@)".} # Public
# 1 default parameters!
proc paint*(this: QIcon, painter: ptr QPainter, x: cint, y: cint, w: cint, h: cint, alignment: Qt_Alignment, mode: QIcon_Mode, state: QIcon_State) {.header:headerFile, importcpp:"#.paint(@)".} # Public
proc paint*(this: QIcon, painter: ptr QPainter, x: cint, y: cint, w: cint, h: cint, alignment: Qt_Alignment, mode: QIcon_Mode) {.header:headerFile, importcpp:"#.paint(@)".} # Public
proc isNull*(this: QIcon): bool {.header:headerFile, importcpp:"#.isNull(@)".} # Public
proc isDetached*(this: QIcon): bool {.header:headerFile, importcpp:"#.isDetached(@)".} # Public
proc detach*(this: QIcon) {.header:headerFile, importcpp:"#.detach(@)".} # Public
proc cacheKey*(this: QIcon): clonglong {.header:headerFile, importcpp:"#.cacheKey(@)".} # Public
proc addPixmap*(this: QIcon, pixmap: QPixmap, mode: QIcon_Mode, state: QIcon_State) {.header:headerFile, importcpp:"#.addPixmap(@)".} # Public
# 1 default parameters!
proc addFile*(this: QIcon, fileName: QString, size: QSize, mode: QIcon_Mode, state: QIcon_State) {.header:headerFile, importcpp:"#.addFile(@)".} # Public
proc addFile*(this: QIcon, fileName: QString, size: QSize, mode: QIcon_Mode) {.header:headerFile, importcpp:"#.addFile(@)".} # Public
import nimqt/qtcore/qlist
proc availableSizes*(this: QIcon, mode: QIcon_Mode, state: QIcon_State): QList[QSize] {.header:headerFile, importcpp:"#.availableSizes(@)".} # Public
proc setIsMask*(this: QIcon, isMask: bool) {.header:headerFile, importcpp:"#.setIsMask(@)".} # Public
proc isMask*(this: QIcon): bool {.header:headerFile, importcpp:"#.isMask(@)".} # Public
proc static_QIcon_fromTheme*(name: QString): QIcon {.header:headerFile, importcpp:"QIcon::fromTheme(@)".} # Public static
proc static_QIcon_fromTheme*(name: QString, fallback: QIcon): QIcon {.header:headerFile, importcpp:"QIcon::fromTheme(@)".} # Public static
proc static_QIcon_hasThemeIcon*(name: QString): bool {.header:headerFile, importcpp:"QIcon::hasThemeIcon(@)".} # Public static
import nimqt/qtcore/qstringlist
proc static_QIcon_themeSearchPaths*(): QStringList {.header:headerFile, importcpp:"QIcon::themeSearchPaths(@)".} # Public static
proc static_QIcon_setThemeSearchPaths*(searchpath: QStringList) {.header:headerFile, importcpp:"QIcon::setThemeSearchPaths(@)".} # Public static
proc static_QIcon_fallbackSearchPaths*(): QStringList {.header:headerFile, importcpp:"QIcon::fallbackSearchPaths(@)".} # Public static
proc static_QIcon_setFallbackSearchPaths*(paths: QStringList) {.header:headerFile, importcpp:"QIcon::setFallbackSearchPaths(@)".} # Public static
proc static_QIcon_themeName*(): QString {.header:headerFile, importcpp:"QIcon::themeName(@)".} # Public static
proc static_QIcon_setThemeName*(path: QString) {.header:headerFile, importcpp:"QIcon::setThemeName(@)".} # Public static
proc static_QIcon_fallbackThemeName*(): QString {.header:headerFile, importcpp:"QIcon::fallbackThemeName(@)".} # Public static
proc static_QIcon_setFallbackThemeName*(name: QString) {.header:headerFile, importcpp:"QIcon::setFallbackThemeName(@)".} # Public static

export qiconengine
export qpixmap
export qstringlist
export qstring
export qsize
export qnamespace
export qlist
export qpainter
export qrect
