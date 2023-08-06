const headerFile* = "QtGui/qpalette.h"

type
    # Enums found in the C++ code
    # Global
    QPalette_ColorGroup* {.header:headerFile,importcpp:"QPalette::ColorGroup".} = enum Active = 0, Disabled = 0x1, Inactive = 0x2, NColorGroups = 0x3, 
        Current = 0x4, All = 0x5
    QPalette_ColorRole* {.header:headerFile,importcpp:"QPalette::ColorRole".} = enum WindowText = 0, Button = 0x1, Light = 0x2, Midlight = 0x3, 
        Dark = 0x4, Mid = 0x5, Text = 0x6, BrightText = 0x7, ButtonText = 0x8, 
        Base = 0x9, Window = 0xa, Shadow = 0xb, Highlight = 0xc, HighlightedText = 0xd, 
        Link = 0xe, LinkVisited = 0xf, AlternateBase = 0x10, NoRole = 0x11, ToolTipBase = 0x12, 
        ToolTipText = 0x13, PlaceholderText = 0x14, NColorRoles = 0x15

type
    # Classes found in the C++ code
    QPalette* {.header:headerFile,importcpp:"QPalette" ,pure,inheritable.} = object


type
    # typedefs found in the C++ code
    QPalette_ResolveMask * = culonglong

# Consts
const
    # Global
    QPalette_ColorGroupNormal* = 0 # from anonymous enum Active

# Stuff for class QPalette

# Public constructors for QPalette
proc newQPalette*(): QPalette {. header:headerFile, importcpp:"QPalette(@)", constructor .} #
import nimqt/qtgui/qcolor
proc newQPalette*(button: QColor): QPalette {. header:headerFile, importcpp:"QPalette(@)", constructor .} #
import nimqt/qtcore/qnamespace
proc newQPalette*(button: Qt_GlobalColor): QPalette {. header:headerFile, importcpp:"QPalette(@)", constructor .} #
proc newQPalette*(button: QColor, window: QColor): QPalette {. header:headerFile, importcpp:"QPalette(@)", constructor .} #
import nimqt/qtgui/qbrush
proc newQPalette*(windowText: QBrush, button: QBrush, light: QBrush, dark: QBrush, mid: QBrush, text: QBrush, bright_text: QBrush, base: QBrush, window: QBrush): QPalette {. header:headerFile, importcpp:"QPalette(@)", constructor .} #
proc newQPalette*(windowText: QColor, window: QColor, light: QColor, dark: QColor, mid: QColor, text: QColor, base: QColor): QPalette {. header:headerFile, importcpp:"QPalette(@)", constructor .} #
proc newQPalette*(palette: QPalette): QPalette {. header:headerFile, importcpp:"QPalette(@)", constructor .} #
proc newQPalette*(other: QPalette): QPalette {. header:headerFile, importcpp:"QPalette(@)", constructor .} #

# Public methods for QPalette
proc qt_check_for_QGADGET_macro*(this: QPalette) {.header:headerFile, importcpp:"#.qt_check_for_QGADGET_macro(@)".} # Public
proc swap*(this: QPalette, other: QPalette) {.header:headerFile, importcpp:"#.swap(@)".} # Public
proc currentColorGroup*(this: QPalette): QPalette_ColorGroup {.header:headerFile, importcpp:"#.currentColorGroup(@)".} # Public
proc setCurrentColorGroup*(this: QPalette, cg: QPalette_ColorGroup) {.header:headerFile, importcpp:"#.setCurrentColorGroup(@)".} # Public
proc color*(this: QPalette, cg: QPalette_ColorGroup, cr: QPalette_ColorRole): QColor {.header:headerFile, importcpp:"#.color(@)".} # Public
proc brush*(this: QPalette, cg: QPalette_ColorGroup, cr: QPalette_ColorRole): QBrush {.header:headerFile, importcpp:"#.brush(@)".} # Public
proc setColor*(this: QPalette, cg: QPalette_ColorGroup, cr: QPalette_ColorRole, color: QColor) {.header:headerFile, importcpp:"#.setColor(@)".} # Public
proc setColor*(this: QPalette, cr: QPalette_ColorRole, color: QColor) {.header:headerFile, importcpp:"#.setColor(@)".} # Public
proc setBrush*(this: QPalette, cr: QPalette_ColorRole, brush: QBrush) {.header:headerFile, importcpp:"#.setBrush(@)".} # Public
proc isBrushSet*(this: QPalette, cg: QPalette_ColorGroup, cr: QPalette_ColorRole): bool {.header:headerFile, importcpp:"#.isBrushSet(@)".} # Public
proc setBrush*(this: QPalette, cg: QPalette_ColorGroup, cr: QPalette_ColorRole, brush: QBrush) {.header:headerFile, importcpp:"#.setBrush(@)".} # Public
proc setColorGroup*(this: QPalette, cr: QPalette_ColorGroup, windowText: QBrush, button: QBrush, light: QBrush, dark: QBrush, mid: QBrush, text: QBrush, bright_text: QBrush, base: QBrush, window: QBrush) {.header:headerFile, importcpp:"#.setColorGroup(@)".} # Public
proc isEqual*(this: QPalette, cr1: QPalette_ColorGroup, cr2: QPalette_ColorGroup): bool {.header:headerFile, importcpp:"#.isEqual(@)".} # Public
proc color*(this: QPalette, cr: QPalette_ColorRole): QColor {.header:headerFile, importcpp:"#.color(@)".} # Public
proc brush*(this: QPalette, cr: QPalette_ColorRole): QBrush {.header:headerFile, importcpp:"#.brush(@)".} # Public
proc windowText*(this: QPalette): QBrush {.header:headerFile, importcpp:"#.windowText(@)".} # Public
proc button*(this: QPalette): QBrush {.header:headerFile, importcpp:"#.button(@)".} # Public
proc light*(this: QPalette): QBrush {.header:headerFile, importcpp:"#.light(@)".} # Public
proc dark*(this: QPalette): QBrush {.header:headerFile, importcpp:"#.dark(@)".} # Public
proc mid*(this: QPalette): QBrush {.header:headerFile, importcpp:"#.mid(@)".} # Public
proc text*(this: QPalette): QBrush {.header:headerFile, importcpp:"#.text(@)".} # Public
proc base*(this: QPalette): QBrush {.header:headerFile, importcpp:"#.base(@)".} # Public
proc alternateBase*(this: QPalette): QBrush {.header:headerFile, importcpp:"#.alternateBase(@)".} # Public
proc toolTipBase*(this: QPalette): QBrush {.header:headerFile, importcpp:"#.toolTipBase(@)".} # Public
proc toolTipText*(this: QPalette): QBrush {.header:headerFile, importcpp:"#.toolTipText(@)".} # Public
proc window*(this: QPalette): QBrush {.header:headerFile, importcpp:"#.window(@)".} # Public
proc midlight*(this: QPalette): QBrush {.header:headerFile, importcpp:"#.midlight(@)".} # Public
proc brightText*(this: QPalette): QBrush {.header:headerFile, importcpp:"#.brightText(@)".} # Public
proc buttonText*(this: QPalette): QBrush {.header:headerFile, importcpp:"#.buttonText(@)".} # Public
proc shadow*(this: QPalette): QBrush {.header:headerFile, importcpp:"#.shadow(@)".} # Public
proc highlight*(this: QPalette): QBrush {.header:headerFile, importcpp:"#.highlight(@)".} # Public
proc highlightedText*(this: QPalette): QBrush {.header:headerFile, importcpp:"#.highlightedText(@)".} # Public
proc link*(this: QPalette): QBrush {.header:headerFile, importcpp:"#.link(@)".} # Public
proc linkVisited*(this: QPalette): QBrush {.header:headerFile, importcpp:"#.linkVisited(@)".} # Public
proc placeholderText*(this: QPalette): QBrush {.header:headerFile, importcpp:"#.placeholderText(@)".} # Public
proc `!=`*(this: QPalette, p: QPalette): bool {.header:headerFile, importcpp:"#.operator!=(@)".} # Public
proc isCopyOf*(this: QPalette, p: QPalette): bool {.header:headerFile, importcpp:"#.isCopyOf(@)".} # Public
proc cacheKey*(this: QPalette): clonglong {.header:headerFile, importcpp:"#.cacheKey(@)".} # Public
proc resolve*(this: QPalette, other: QPalette): QPalette {.header:headerFile, importcpp:"#.resolve(@)".} # Public
proc resolveMask*(this: QPalette): culonglong {.header:headerFile, importcpp:"#.resolveMask(@)".} # Public
proc setResolveMask*(this: QPalette, mask: culonglong) {.header:headerFile, importcpp:"#.setResolveMask(@)".} # Public

export qnamespace
export qbrush
export qcolor
