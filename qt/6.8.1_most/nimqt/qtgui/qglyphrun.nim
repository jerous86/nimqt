const headerFile* = "QtGui/qglyphrun.h"

type
    # Enums found in the C++ code
    # Global
    QGlyphRun_GlyphRunFlag* {.header:headerFile,importcpp:"QGlyphRun::GlyphRunFlag".} = enum Overline = 0x1, Underline = 0x2, StrikeOut = 0x4, RightToLeft = 0x8, 
        SplitLigature = 0x10

type
    # Classes found in the C++ code
    QGlyphRun* {.header:headerFile,importcpp:"QGlyphRun" ,pure,inheritable.} = object
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
import nimqt/qtcore/qpoint
proc setRawData*(this: QGlyphRun, glyphIndexArray: ptr cuint, glyphPositionArray: ptr QPointF, size: cint) {.header:headerFile, importcpp:"#.setRawData(@)".} # Public
import nimqt/qtcore/qlist
proc glyphIndexes*(this: QGlyphRun): QList[cuint] {.header:headerFile, importcpp:"#.glyphIndexes(@)".} # Public
proc setGlyphIndexes*(this: QGlyphRun, glyphIndexes: QList[cuint]) {.header:headerFile, importcpp:"#.setGlyphIndexes(@)".} # Public
proc positions*(this: QGlyphRun): QList[QPointF] {.header:headerFile, importcpp:"#.positions(@)".} # Public
proc setPositions*(this: QGlyphRun, positions: QList[QPointF]) {.header:headerFile, importcpp:"#.setPositions(@)".} # Public
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
import nimqt/qtcore/qrect
proc setBoundingRect*(this: QGlyphRun, boundingRect: QRectF) {.header:headerFile, importcpp:"#.setBoundingRect(@)".} # Public
proc boundingRect*(this: QGlyphRun): QRectF {.header:headerFile, importcpp:"#.boundingRect(@)".} # Public
proc isEmpty*(this: QGlyphRun): bool {.header:headerFile, importcpp:"#.isEmpty(@)".} # Public

export qrawfont
export qlist
export qpoint
export qrect
export qflags
