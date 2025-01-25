const headerFile* = "QtGui/qrawfont.h"

type
    # Enums found in the C++ code
    # Global
    QRawFont_AntialiasingType* {.header:headerFile,importcpp:"QRawFont::AntialiasingType".} = enum PixelAntialiasing = 0, SubPixelAntialiasing = 0x1
    QRawFont_LayoutFlag* {.header:headerFile,importcpp:"QRawFont::LayoutFlag".} = enum SeparateAdvances = 0, KernedAdvances = 0x1, UseDesignMetrics = 0x2

type
    # Classes found in the C++ code
    QRawFont* {.header:headerFile,importcpp:"QRawFont" ,pure,inheritable.} = object
import nimqt/qtcore/qflags


type
    # typedefs found in the C++ code
    QRawFont_LayoutFlags * = QFlags[QRawFont_LayoutFlag]

# Stuff for class QRawFont

# Public constructors for QRawFont
proc newQRawFont*(): QRawFont {. header:headerFile, importcpp:"QRawFont(@)", constructor .} #
import nimqt/qtgui/qfont
import nimqt/qtcore/qstring
proc newQRawFont*(fileName: QString, pixelSize: cfloat, hintingPreference: QFont_HintingPreference): QRawFont {. header:headerFile, importcpp:"QRawFont(@)", constructor .} #
import nimqt/qtcore/qbytearray
proc newQRawFont*(fontData: QByteArray, pixelSize: cfloat, hintingPreference: QFont_HintingPreference): QRawFont {. header:headerFile, importcpp:"QRawFont(@)", constructor .} #
proc newQRawFont*(other: QRawFont): QRawFont {. header:headerFile, importcpp:"QRawFont(@)", constructor .} #

# Public methods for QRawFont
proc swap*(this: QRawFont, other: QRawFont) {.header:headerFile, importcpp:"#.swap(@)".} # Public
proc isValid*(this: QRawFont): bool {.header:headerFile, importcpp:"#.isValid(@)".} # Public
proc `!=`*(this: QRawFont, other: QRawFont): bool {.header:headerFile, importcpp:"#.operator!=(@)".} # Public
proc familyName*(this: QRawFont): QString {.header:headerFile, importcpp:"#.familyName(@)".} # Public
proc styleName*(this: QRawFont): QString {.header:headerFile, importcpp:"#.styleName(@)".} # Public
proc style*(this: QRawFont): QFont_Style {.header:headerFile, importcpp:"#.style(@)".} # Public
proc weight*(this: QRawFont): cint {.header:headerFile, importcpp:"#.weight(@)".} # Public
import nimqt/qtcore/qlist
proc glyphIndexesForString*(this: QRawFont, text: QString): QList[cuint] {.header:headerFile, importcpp:"#.glyphIndexesForString(@)".} # Public
import nimqt/qtcore/qpoint
proc advancesForGlyphIndexes*(this: QRawFont, glyphIndexes: QList[cuint]): QList[QPointF] {.header:headerFile, importcpp:"#.advancesForGlyphIndexes(@)".} # Public
proc advancesForGlyphIndexes*(this: QRawFont, glyphIndexes: QList[cuint], layoutFlags: QFlags[QRawFont_LayoutFlag]): QList[QPointF] {.header:headerFile, importcpp:"#.advancesForGlyphIndexes(@)".} # Public
import nimqt/qtcore/qchar
proc glyphIndexesForChars*(this: QRawFont, chars: ptr QChar, numChars: cint, glyphIndexes: ptr cuint, numGlyphs: ptr cint): bool {.header:headerFile, importcpp:"#.glyphIndexesForChars(@)".} # Public
proc advancesForGlyphIndexes*(this: QRawFont, glyphIndexes: ptr cuint, advances: ptr QPointF, numGlyphs: cint): bool {.header:headerFile, importcpp:"#.advancesForGlyphIndexes(@)".} # Public
proc advancesForGlyphIndexes*(this: QRawFont, glyphIndexes: ptr cuint, advances: ptr QPointF, numGlyphs: cint, layoutFlags: QFlags[QRawFont_LayoutFlag]): bool {.header:headerFile, importcpp:"#.advancesForGlyphIndexes(@)".} # Public
import nimqt/qtgui/qimage
import nimqt/qtgui/qtransform
# 1 default parameters!
proc alphaMapForGlyph*(this: QRawFont, glyphIndex: cuint, antialiasingType: QRawFont_AntialiasingType, transform: QTransform): QImage {.header:headerFile, importcpp:"#.alphaMapForGlyph(@)".} # Public
proc alphaMapForGlyph*(this: QRawFont, glyphIndex: cuint, antialiasingType: QRawFont_AntialiasingType): QImage {.header:headerFile, importcpp:"#.alphaMapForGlyph(@)".} # Public
import nimqt/qtgui/qpainterpath
proc pathForGlyph*(this: QRawFont, glyphIndex: cuint): QPainterPath {.header:headerFile, importcpp:"#.pathForGlyph(@)".} # Public
import nimqt/qtcore/qrect
proc boundingRect*(this: QRawFont, glyphIndex: cuint): QRectF {.header:headerFile, importcpp:"#.boundingRect(@)".} # Public
proc setPixelSize*(this: QRawFont, pixelSize: cfloat) {.header:headerFile, importcpp:"#.setPixelSize(@)".} # Public
proc pixelSize*(this: QRawFont): cfloat {.header:headerFile, importcpp:"#.pixelSize(@)".} # Public
proc hintingPreference*(this: QRawFont): QFont_HintingPreference {.header:headerFile, importcpp:"#.hintingPreference(@)".} # Public
proc ascent*(this: QRawFont): cfloat {.header:headerFile, importcpp:"#.ascent(@)".} # Public
proc capHeight*(this: QRawFont): cfloat {.header:headerFile, importcpp:"#.capHeight(@)".} # Public
proc descent*(this: QRawFont): cfloat {.header:headerFile, importcpp:"#.descent(@)".} # Public
proc leading*(this: QRawFont): cfloat {.header:headerFile, importcpp:"#.leading(@)".} # Public
proc xHeight*(this: QRawFont): cfloat {.header:headerFile, importcpp:"#.xHeight(@)".} # Public
proc averageCharWidth*(this: QRawFont): cfloat {.header:headerFile, importcpp:"#.averageCharWidth(@)".} # Public
proc maxCharWidth*(this: QRawFont): cfloat {.header:headerFile, importcpp:"#.maxCharWidth(@)".} # Public
proc lineThickness*(this: QRawFont): cfloat {.header:headerFile, importcpp:"#.lineThickness(@)".} # Public
proc underlinePosition*(this: QRawFont): cfloat {.header:headerFile, importcpp:"#.underlinePosition(@)".} # Public
proc unitsPerEm*(this: QRawFont): cfloat {.header:headerFile, importcpp:"#.unitsPerEm(@)".} # Public
proc loadFromFile*(this: QRawFont, fileName: QString, pixelSize: cfloat, hintingPreference: QFont_HintingPreference) {.header:headerFile, importcpp:"#.loadFromFile(@)".} # Public
proc loadFromData*(this: QRawFont, fontData: QByteArray, pixelSize: cfloat, hintingPreference: QFont_HintingPreference) {.header:headerFile, importcpp:"#.loadFromData(@)".} # Public
proc supportsCharacter*(this: QRawFont, ucs4: cuint): bool {.header:headerFile, importcpp:"#.supportsCharacter(@)".} # Public
proc supportsCharacter*(this: QRawFont, character: QChar): bool {.header:headerFile, importcpp:"#.supportsCharacter(@)".} # Public
import nimqt/qtgui/qfontdatabase
proc supportedWritingSystems*(this: QRawFont): QList[QFontDatabase_WritingSystem] {.header:headerFile, importcpp:"#.supportedWritingSystems(@)".} # Public
proc fontTable*(this: QRawFont, tagName: ptr char): QByteArray {.header:headerFile, importcpp:"#.fontTable(@)".} # Public
proc static_QRawFont_fromFont*(font: QFont, writingSystem: QFontDatabase_WritingSystem): QRawFont {.header:headerFile, importcpp:"QRawFont::fromFont(@)".} # Public static

export qfont
export qstring
export qfontdatabase
export qimage
export qpainterpath
export qbytearray
export qlist
export qpoint
export qchar
export qrect
export qflags
export qtransform
