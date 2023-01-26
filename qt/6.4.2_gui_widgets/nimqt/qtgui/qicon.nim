const headerFile* = "QtGui/qicon.h"

# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}


type
    # Classes and enums found in the C++ code
    # Global
    QIcon_Mode* {.header:headerFile,importcpp:"QIcon::Mode".} = enum Normal = 0, Disabled = 0x1, Active = 0x2, Selected = 0x3
    QIcon_State* {.header:headerFile,importcpp:"QIcon::State".} = enum On = 0, Off = 0x1
    QIcon* {.header:headerFile,importcpp:"QIcon" ,pure.} = object {.inheritable.}
{.push warning[Deprecated]: on.}

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
proc pixmap*(this: QIcon, w: cint, h: cint, mode: QIcon_Mode, state: QIcon_State): QPixmap {.header:headerFile, importcpp:"#.pixmap(@)".} # Public
proc pixmap*(this: QIcon, extent: cint, mode: QIcon_Mode, state: QIcon_State): QPixmap {.header:headerFile, importcpp:"#.pixmap(@)".} # Public
proc name*(this: QIcon): QString {.header:headerFile, importcpp:"#.name(@)".} # Public
import nimqt/qtcore/qnamespace
import nimqt/qtgui/qpainter
# 1 default parameters!
proc paint*(this: QIcon, painter: ptr QPainter, x: cint, y: cint, w: cint, h: cint, alignment: Qt_Alignment, mode: QIcon_Mode, state: QIcon_State) {.header:headerFile, importcpp:"#.paint(@)".} # Public
proc paint*(this: QIcon, painter: ptr QPainter, x: cint, y: cint, w: cint, h: cint, alignment: Qt_Alignment, mode: QIcon_Mode) {.header:headerFile, importcpp:"#.paint(@)".} # Public
proc isNull*(this: QIcon): bool {.header:headerFile, importcpp:"#.isNull(@)".} # Public
proc isDetached*(this: QIcon): bool {.header:headerFile, importcpp:"#.isDetached(@)".} # Public
proc detach*(this: QIcon) {.header:headerFile, importcpp:"#.detach(@)".} # Public
proc cacheKey*(this: QIcon): clonglong {.header:headerFile, importcpp:"#.cacheKey(@)".} # Public
proc addPixmap*(this: QIcon, pixmap: QPixmap, mode: QIcon_Mode, state: QIcon_State) {.header:headerFile, importcpp:"#.addPixmap(@)".} # Public
proc setIsMask*(this: QIcon, isMask: bool) {.header:headerFile, importcpp:"#.setIsMask(@)".} # Public
proc isMask*(this: QIcon): bool {.header:headerFile, importcpp:"#.isMask(@)".} # Public
proc static_QIcon_fromTheme*(name: QString): QIcon {.header:headerFile, importcpp:"QIcon::fromTheme(@)".} # Public static
proc static_QIcon_fromTheme*(name: QString, fallback: QIcon): QIcon {.header:headerFile, importcpp:"QIcon::fromTheme(@)".} # Public static
proc static_QIcon_hasThemeIcon*(name: QString): bool {.header:headerFile, importcpp:"QIcon::hasThemeIcon(@)".} # Public static
proc static_QIcon_themeName*(): QString {.header:headerFile, importcpp:"QIcon::themeName(@)".} # Public static
proc static_QIcon_setThemeName*(path: QString) {.header:headerFile, importcpp:"QIcon::setThemeName(@)".} # Public static
proc static_QIcon_fallbackThemeName*(): QString {.header:headerFile, importcpp:"QIcon::fallbackThemeName(@)".} # Public static
proc static_QIcon_setFallbackThemeName*(name: QString) {.header:headerFile, importcpp:"QIcon::setFallbackThemeName(@)".} # Public static

export qiconengine
export qpixmap
export qstring
export qnamespace
export qpainter