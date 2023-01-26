const headerFile* = "QtGui/qfontmetrics.h"

# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}


type
    # Classes and enums found in the C++ code
    QFontMetrics* {.header:headerFile,importcpp:"QFontMetrics" ,pure.} = object {.inheritable.}
    QFontMetricsF* {.header:headerFile,importcpp:"QFontMetricsF" ,pure.} = object {.inheritable.}
{.push warning[Deprecated]: on.}

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
proc inFontUcs4*(this: QFontMetrics, ucs4: cuint): bool {.header:headerFile, importcpp:"#.inFontUcs4(@)".} # Public
import nimqt/qtcore/qstring
proc horizontalAdvance*(this: QFontMetrics, arg_0: QString, len: cint): cint {.header:headerFile, importcpp:"#.horizontalAdvance(@)".} # Public
import nimqt/qtgui/qtextoption
proc horizontalAdvance*(this: QFontMetrics, arg_0: QString, textOption: QTextOption): cint {.header:headerFile, importcpp:"#.horizontalAdvance(@)".} # Public
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
proc inFontUcs4*(this: QFontMetricsF, ucs4: cuint): bool {.header:headerFile, importcpp:"#.inFontUcs4(@)".} # Public
proc horizontalAdvance*(this: QFontMetricsF, string: QString, length: cint): cfloat {.header:headerFile, importcpp:"#.horizontalAdvance(@)".} # Public
proc horizontalAdvance*(this: QFontMetricsF, string: QString, textOption: QTextOption): cfloat {.header:headerFile, importcpp:"#.horizontalAdvance(@)".} # Public
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
export qtextoption
export qnamespace
export qpaintdevice