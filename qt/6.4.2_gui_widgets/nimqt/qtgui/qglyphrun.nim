const headerFile* = "QtGui/qglyphrun.h"

# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}


type
    # Classes and enums found in the C++ code
    # Global
    QGlyphRun_GlyphRunFlag* {.header:headerFile,importcpp:"QGlyphRun::GlyphRunFlag".} = enum Overline = 0, Underline = 0x1, StrikeOut = 0x2, RightToLeft = 0x3, 
        SplitLigature = 0x4
    QGlyphRun* {.header:headerFile,importcpp:"QGlyphRun" ,pure.} = object {.inheritable.}
{.push warning[Deprecated]: on.}
import nimqt/qtcore/qflags


type
    # typedefs found in the C++ code
    QGlyphRun_GlyphRunFlags * = QFlags[QGlyphRun_GlyphRunFlag]

# Stuff for class QGlyphRun

# Public constructors for QGlyphRun
proc newQGlyphRun*(): QGlyphRun {. header:headerFile, importcpp:"QGlyphRun(@)", constructor .} #
proc newQGlyphRun*(other: QGlyphRun): QGlyphRun {. header:headerFile, importcpp:"QGlyphRun(@)", constructor .} #

# Public methods for QGlyphRun
proc swap*(this: QGlyphRun, other: QGlyphRun) {.header:headerFile, importcpp:"#.swap(@)".} # Public
import nimqt/qtgui/qrawfont
proc rawFont*(this: QGlyphRun): QRawFont {.header:headerFile, importcpp:"#.rawFont(@)".} # Public
proc setRawFont*(this: QGlyphRun, rawFont: QRawFont) {.header:headerFile, importcpp:"#.setRawFont(@)".} # Public
proc clear*(this: QGlyphRun) {.header:headerFile, importcpp:"#.clear(@)".} # Public
proc `!=`*(this: QGlyphRun, other: QGlyphRun): bool {.header:headerFile, importcpp:"#.operator!=(@)".} # Public
proc setOverline*(this: QGlyphRun, overline: bool) {.header:headerFile, importcpp:"#.setOverline(@)".} # Public
proc overline*(this: QGlyphRun): bool {.header:headerFile, importcpp:"#.overline(@)".} # Public
proc setUnderline*(this: QGlyphRun, underline: bool) {.header:headerFile, importcpp:"#.setUnderline(@)".} # Public
proc underline*(this: QGlyphRun): bool {.header:headerFile, importcpp:"#.underline(@)".} # Public
proc setStrikeOut*(this: QGlyphRun, strikeOut: bool) {.header:headerFile, importcpp:"#.setStrikeOut(@)".} # Public
proc strikeOut*(this: QGlyphRun): bool {.header:headerFile, importcpp:"#.strikeOut(@)".} # Public
proc setRightToLeft*(this: QGlyphRun, on: bool) {.header:headerFile, importcpp:"#.setRightToLeft(@)".} # Public
proc isRightToLeft*(this: QGlyphRun): bool {.header:headerFile, importcpp:"#.isRightToLeft(@)".} # Public
# 1 default parameters!
proc setFlag*(this: QGlyphRun, flag: QGlyphRun_GlyphRunFlag, enabled: bool) {.header:headerFile, importcpp:"#.setFlag(@)".} # Public
proc setFlag*(this: QGlyphRun, flag: QGlyphRun_GlyphRunFlag) {.header:headerFile, importcpp:"#.setFlag(@)".} # Public
proc setFlags*(this: QGlyphRun, flags: QFlags[QGlyphRun_GlyphRunFlag]) {.header:headerFile, importcpp:"#.setFlags(@)".} # Public
proc flags*(this: QGlyphRun): QFlags[QGlyphRun_GlyphRunFlag] {.header:headerFile, importcpp:"#.flags(@)".} # Public
proc isEmpty*(this: QGlyphRun): bool {.header:headerFile, importcpp:"#.isEmpty(@)".} # Public

export qrawfont
export qflags