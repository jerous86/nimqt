const headerFile* = "QtGui/qstatictext.h"

type
    # Enums found in the C++ code
    # Global
    QStaticText_PerformanceHint* {.header:headerFile,importcpp:"QStaticText::PerformanceHint".} = enum ModerateCaching = 0, AggressiveCaching = 0x1

type
    # Classes found in the C++ code
    QStaticText* {.header:headerFile,importcpp:"QStaticText" ,pure,inheritable.} = object

# Stuff for class QStaticText

# Public constructors for QStaticText
proc newQStaticText*(): QStaticText {. header:headerFile, importcpp:"QStaticText(@)", constructor .} #
import nimqt/qtcore/qstring
proc newQStaticText*(text: QString): QStaticText {. header:headerFile, importcpp:"QStaticText(@)", constructor .} #
proc newQStaticText*(other: QStaticText): QStaticText {. header:headerFile, importcpp:"QStaticText(@)", constructor .} #

# Public methods for QStaticText
proc swap*(this: QStaticText, other: QStaticText) {.header:headerFile, importcpp:"#.swap(@)".} # Public
proc setText*(this: QStaticText, text: QString) {.header:headerFile, importcpp:"#.setText(@)".} # Public
proc text*(this: QStaticText): QString {.header:headerFile, importcpp:"#.text(@)".} # Public
import nimqt/qtcore/qnamespace
proc setTextFormat*(this: QStaticText, textFormat: Qt_TextFormat) {.header:headerFile, importcpp:"#.setTextFormat(@)".} # Public
proc textFormat*(this: QStaticText): Qt_TextFormat {.header:headerFile, importcpp:"#.textFormat(@)".} # Public
proc setTextWidth*(this: QStaticText, textWidth: cfloat) {.header:headerFile, importcpp:"#.setTextWidth(@)".} # Public
proc textWidth*(this: QStaticText): cfloat {.header:headerFile, importcpp:"#.textWidth(@)".} # Public
import nimqt/qtgui/qtextoption
proc setTextOption*(this: QStaticText, textOption: QTextOption) {.header:headerFile, importcpp:"#.setTextOption(@)".} # Public
proc textOption*(this: QStaticText): QTextOption {.header:headerFile, importcpp:"#.textOption(@)".} # Public
import nimqt/qtcore/qsize
proc size*(this: QStaticText): QSizeF {.header:headerFile, importcpp:"#.size(@)".} # Public
import nimqt/qtgui/qfont
import nimqt/qtgui/qtransform
# 2 default parameters!
proc prepare*(this: QStaticText, matrix: QTransform, font: QFont) {.header:headerFile, importcpp:"#.prepare(@)".} # Public
proc prepare*(this: QStaticText, matrix: QTransform) {.header:headerFile, importcpp:"#.prepare(@)".} # Public
proc prepare*(this: QStaticText) {.header:headerFile, importcpp:"#.prepare(@)".} # Public
proc setPerformanceHint*(this: QStaticText, performanceHint: QStaticText_PerformanceHint) {.header:headerFile, importcpp:"#.setPerformanceHint(@)".} # Public
proc performanceHint*(this: QStaticText): QStaticText_PerformanceHint {.header:headerFile, importcpp:"#.performanceHint(@)".} # Public
proc `!=`*(this: QStaticText, arg_0: QStaticText): bool {.header:headerFile, importcpp:"#.operator!=(@)".} # Public

export qfont
export qstring
export qsize
export qtextoption
export qnamespace
export qtransform
