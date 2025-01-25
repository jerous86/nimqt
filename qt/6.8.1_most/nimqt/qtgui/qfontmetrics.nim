const headerFile* = "QtGui/qfontmetrics.h"

type
    # Classes found in the C++ code
    QFontMetrics* {.header:headerFile,importcpp:"QFontMetrics" ,pure,inheritable.} = object
    QFontMetricsF* {.header:headerFile,importcpp:"QFontMetricsF" ,pure,inheritable.} = object

# Stuff for class QFontMetrics

# Public constructors for QFontMetrics
import nimqt/qtgui/qfont
proc newQFontMetrics*(arg_0: QFont): QFontMetrics {. header:headerFile, importcpp:"QFontMetrics(@)", constructor .} #
import nimqt/qtgui/qpaintdevice
proc newQFontMetrics*(font: QFont, pd: ptr QPaintDevice): QFontMetrics {. header:headerFile, importcpp:"QFontMetrics(@)", constructor .} #
proc newQFontMetrics*(arg_0: QFontMetrics): QFontMetrics {. header:headerFile, importcpp:"QFontMetrics(@)", constructor .} #

# Public methods for QFontMetrics
proc swap*(this: QFontMetrics, other: QFontMetrics) {.header:headerFile, importcpp:"#.swap(@)".} # Public
proc ascent*(this: QFontMetrics): cint {.header:headerFile, importcpp:"#.ascent(@)".} # Public
proc capHeight*(this: QFontMetrics): cint {.header:headerFile, importcpp:"#.capHeight(@)".} # Public
proc descent*(this: QFontMetrics): cint {.header:headerFile, importcpp:"#.descent(@)".} # Public
proc height*(this: QFontMetrics): cint {.header:headerFile, importcpp:"#.height(@)".} # Public
proc leading*(this: QFontMetrics): cint {.header:headerFile, importcpp:"#.leading(@)".} # Public
proc lineSpacing*(this: QFontMetrics): cint {.header:headerFile, importcpp:"#.lineSpacing(@)".} # Public
proc minLeftBearing*(this: QFontMetrics): cint {.header:headerFile, importcpp:"#.minLeftBearing(@)".} # Public
proc minRightBearing*(this: QFontMetrics): cint {.header:headerFile, importcpp:"#.minRightBearing(@)".} # Public
proc maxWidth*(this: QFontMetrics): cint {.header:headerFile, importcpp:"#.maxWidth(@)".} # Public
proc xHeight*(this: QFontMetrics): cint {.header:headerFile, importcpp:"#.xHeight(@)".} # Public
proc averageCharWidth*(this: QFontMetrics): cint {.header:headerFile, importcpp:"#.averageCharWidth(@)".} # Public
import nimqt/qtcore/qchar
proc inFont*(this: QFontMetrics, arg_0: QChar): bool {.header:headerFile, importcpp:"#.inFont(@)".} # Public
proc inFontUcs4*(this: QFontMetrics, ucs4: cuint): bool {.header:headerFile, importcpp:"#.inFontUcs4(@)".} # Public
proc leftBearing*(this: QFontMetrics, arg_0: QChar): cint {.header:headerFile, importcpp:"#.leftBearing(@)".} # Public
proc rightBearing*(this: QFontMetrics, arg_0: QChar): cint {.header:headerFile, importcpp:"#.rightBearing(@)".} # Public
import nimqt/qtcore/qstring
proc horizontalAdvance*(this: QFontMetrics, arg_0: QString, len: cint): cint {.header:headerFile, importcpp:"#.horizontalAdvance(@)".} # Public
import nimqt/qtgui/qtextoption
proc horizontalAdvance*(this: QFontMetrics, arg_0: QString, textOption: QTextOption): cint {.header:headerFile, importcpp:"#.horizontalAdvance(@)".} # Public
proc horizontalAdvance*(this: QFontMetrics, arg_0: QChar): cint {.header:headerFile, importcpp:"#.horizontalAdvance(@)".} # Public
import nimqt/qtcore/qrect
proc boundingRect*(this: QFontMetrics, arg_1: QChar): QRect {.header:headerFile, importcpp:"#.boundingRect(@)".} # Public
proc boundingRect*(this: QFontMetrics, text: QString): QRect {.header:headerFile, importcpp:"#.boundingRect(@)".} # Public
proc boundingRect*(this: QFontMetrics, text: QString, textOption: QTextOption): QRect {.header:headerFile, importcpp:"#.boundingRect(@)".} # Public
# 2 default parameters!
proc boundingRect*(this: QFontMetrics, r: QRect, flags: cint, text: QString, tabstops: cint, tabarray: ptr cint): QRect {.header:headerFile, importcpp:"#.boundingRect(@)".} # Public
proc boundingRect*(this: QFontMetrics, r: QRect, flags: cint, text: QString, tabstops: cint): QRect {.header:headerFile, importcpp:"#.boundingRect(@)".} # Public
proc boundingRect*(this: QFontMetrics, r: QRect, flags: cint, text: QString): QRect {.header:headerFile, importcpp:"#.boundingRect(@)".} # Public
# 2 default parameters!
proc boundingRect*(this: QFontMetrics, x: cint, y: cint, w: cint, h: cint, flags: cint, text: QString, tabstops: cint, tabarray: ptr cint): QRect {.header:headerFile, importcpp:"#.boundingRect(@)".} # Public
proc boundingRect*(this: QFontMetrics, x: cint, y: cint, w: cint, h: cint, flags: cint, text: QString, tabstops: cint): QRect {.header:headerFile, importcpp:"#.boundingRect(@)".} # Public
proc boundingRect*(this: QFontMetrics, x: cint, y: cint, w: cint, h: cint, flags: cint, text: QString): QRect {.header:headerFile, importcpp:"#.boundingRect(@)".} # Public
import nimqt/qtcore/qsize
# 2 default parameters!
proc size*(this: QFontMetrics, flags: cint, str: QString, tabstops: cint, tabarray: ptr cint): QSize {.header:headerFile, importcpp:"#.size(@)".} # Public
proc size*(this: QFontMetrics, flags: cint, str: QString, tabstops: cint): QSize {.header:headerFile, importcpp:"#.size(@)".} # Public
proc size*(this: QFontMetrics, flags: cint, str: QString): QSize {.header:headerFile, importcpp:"#.size(@)".} # Public
proc tightBoundingRect*(this: QFontMetrics, text: QString): QRect {.header:headerFile, importcpp:"#.tightBoundingRect(@)".} # Public
proc tightBoundingRect*(this: QFontMetrics, text: QString, textOption: QTextOption): QRect {.header:headerFile, importcpp:"#.tightBoundingRect(@)".} # Public
import nimqt/qtcore/qnamespace
# 1 default parameters!
proc elidedText*(this: QFontMetrics, text: QString, mode: Qt_TextElideMode, width: cint, flags: cint): QString {.header:headerFile, importcpp:"#.elidedText(@)".} # Public
proc elidedText*(this: QFontMetrics, text: QString, mode: Qt_TextElideMode, width: cint): QString {.header:headerFile, importcpp:"#.elidedText(@)".} # Public
proc underlinePos*(this: QFontMetrics): cint {.header:headerFile, importcpp:"#.underlinePos(@)".} # Public
proc overlinePos*(this: QFontMetrics): cint {.header:headerFile, importcpp:"#.overlinePos(@)".} # Public
proc strikeOutPos*(this: QFontMetrics): cint {.header:headerFile, importcpp:"#.strikeOutPos(@)".} # Public
proc lineWidth*(this: QFontMetrics): cint {.header:headerFile, importcpp:"#.lineWidth(@)".} # Public
proc fontDpi*(this: QFontMetrics): cfloat {.header:headerFile, importcpp:"#.fontDpi(@)".} # Public
proc `!=`*(this: QFontMetrics, other: QFontMetrics): bool {.header:headerFile, importcpp:"#.operator!=(@)".} # Public
# Stuff for class QFontMetricsF

# Public constructors for QFontMetricsF
proc newQFontMetricsF*(font: QFont): QFontMetricsF {. header:headerFile, importcpp:"QFontMetricsF(@)", constructor .} #
proc newQFontMetricsF*(font: QFont, pd: ptr QPaintDevice): QFontMetricsF {. header:headerFile, importcpp:"QFontMetricsF(@)", constructor .} #
proc newQFontMetricsF*(arg_0: QFontMetrics): QFontMetricsF {. header:headerFile, importcpp:"QFontMetricsF(@)", constructor .} #
proc newQFontMetricsF*(arg_0: QFontMetricsF): QFontMetricsF {. header:headerFile, importcpp:"QFontMetricsF(@)", constructor .} #

# Public methods for QFontMetricsF
proc swap*(this: QFontMetricsF, other: QFontMetricsF) {.header:headerFile, importcpp:"#.swap(@)".} # Public
proc ascent*(this: QFontMetricsF): cfloat {.header:headerFile, importcpp:"#.ascent(@)".} # Public
proc capHeight*(this: QFontMetricsF): cfloat {.header:headerFile, importcpp:"#.capHeight(@)".} # Public
proc descent*(this: QFontMetricsF): cfloat {.header:headerFile, importcpp:"#.descent(@)".} # Public
proc height*(this: QFontMetricsF): cfloat {.header:headerFile, importcpp:"#.height(@)".} # Public
proc leading*(this: QFontMetricsF): cfloat {.header:headerFile, importcpp:"#.leading(@)".} # Public
proc lineSpacing*(this: QFontMetricsF): cfloat {.header:headerFile, importcpp:"#.lineSpacing(@)".} # Public
proc minLeftBearing*(this: QFontMetricsF): cfloat {.header:headerFile, importcpp:"#.minLeftBearing(@)".} # Public
proc minRightBearing*(this: QFontMetricsF): cfloat {.header:headerFile, importcpp:"#.minRightBearing(@)".} # Public
proc maxWidth*(this: QFontMetricsF): cfloat {.header:headerFile, importcpp:"#.maxWidth(@)".} # Public
proc xHeight*(this: QFontMetricsF): cfloat {.header:headerFile, importcpp:"#.xHeight(@)".} # Public
proc averageCharWidth*(this: QFontMetricsF): cfloat {.header:headerFile, importcpp:"#.averageCharWidth(@)".} # Public
proc inFont*(this: QFontMetricsF, arg_0: QChar): bool {.header:headerFile, importcpp:"#.inFont(@)".} # Public
proc inFontUcs4*(this: QFontMetricsF, ucs4: cuint): bool {.header:headerFile, importcpp:"#.inFontUcs4(@)".} # Public
proc leftBearing*(this: QFontMetricsF, arg_1: QChar): cfloat {.header:headerFile, importcpp:"#.leftBearing(@)".} # Public
proc rightBearing*(this: QFontMetricsF, arg_1: QChar): cfloat {.header:headerFile, importcpp:"#.rightBearing(@)".} # Public
proc horizontalAdvance*(this: QFontMetricsF, string: QString, length: cint): cfloat {.header:headerFile, importcpp:"#.horizontalAdvance(@)".} # Public
proc horizontalAdvance*(this: QFontMetricsF, arg_1: QChar): cfloat {.header:headerFile, importcpp:"#.horizontalAdvance(@)".} # Public
proc horizontalAdvance*(this: QFontMetricsF, string: QString, textOption: QTextOption): cfloat {.header:headerFile, importcpp:"#.horizontalAdvance(@)".} # Public
proc boundingRect*(this: QFontMetricsF, string: QString): QRectF {.header:headerFile, importcpp:"#.boundingRect(@)".} # Public
proc boundingRect*(this: QFontMetricsF, text: QString, textOption: QTextOption): QRectF {.header:headerFile, importcpp:"#.boundingRect(@)".} # Public
proc boundingRect*(this: QFontMetricsF, arg_1: QChar): QRectF {.header:headerFile, importcpp:"#.boundingRect(@)".} # Public
# 2 default parameters!
proc boundingRect*(this: QFontMetricsF, r: QRectF, flags: cint, string: QString, tabstops: cint, tabarray: ptr cint): QRectF {.header:headerFile, importcpp:"#.boundingRect(@)".} # Public
proc boundingRect*(this: QFontMetricsF, r: QRectF, flags: cint, string: QString, tabstops: cint): QRectF {.header:headerFile, importcpp:"#.boundingRect(@)".} # Public
proc boundingRect*(this: QFontMetricsF, r: QRectF, flags: cint, string: QString): QRectF {.header:headerFile, importcpp:"#.boundingRect(@)".} # Public
# 2 default parameters!
proc size*(this: QFontMetricsF, flags: cint, str: QString, tabstops: cint, tabarray: ptr cint): QSizeF {.header:headerFile, importcpp:"#.size(@)".} # Public
proc size*(this: QFontMetricsF, flags: cint, str: QString, tabstops: cint): QSizeF {.header:headerFile, importcpp:"#.size(@)".} # Public
proc size*(this: QFontMetricsF, flags: cint, str: QString): QSizeF {.header:headerFile, importcpp:"#.size(@)".} # Public
proc tightBoundingRect*(this: QFontMetricsF, text: QString): QRectF {.header:headerFile, importcpp:"#.tightBoundingRect(@)".} # Public
proc tightBoundingRect*(this: QFontMetricsF, text: QString, textOption: QTextOption): QRectF {.header:headerFile, importcpp:"#.tightBoundingRect(@)".} # Public
# 1 default parameters!
proc elidedText*(this: QFontMetricsF, text: QString, mode: Qt_TextElideMode, width: cfloat, flags: cint): QString {.header:headerFile, importcpp:"#.elidedText(@)".} # Public
proc elidedText*(this: QFontMetricsF, text: QString, mode: Qt_TextElideMode, width: cfloat): QString {.header:headerFile, importcpp:"#.elidedText(@)".} # Public
proc underlinePos*(this: QFontMetricsF): cfloat {.header:headerFile, importcpp:"#.underlinePos(@)".} # Public
proc overlinePos*(this: QFontMetricsF): cfloat {.header:headerFile, importcpp:"#.overlinePos(@)".} # Public
proc strikeOutPos*(this: QFontMetricsF): cfloat {.header:headerFile, importcpp:"#.strikeOutPos(@)".} # Public
proc lineWidth*(this: QFontMetricsF): cfloat {.header:headerFile, importcpp:"#.lineWidth(@)".} # Public
proc fontDpi*(this: QFontMetricsF): cfloat {.header:headerFile, importcpp:"#.fontDpi(@)".} # Public
proc `!=`*(this: QFontMetricsF, other: QFontMetricsF): bool {.header:headerFile, importcpp:"#.operator!=(@)".} # Public

export qfont
export qstring
export qsize
export qtextoption
export qnamespace
export qchar
export qrect
export qpaintdevice
