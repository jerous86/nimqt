const headerFile* = "QtGui/qfontinfo.h"

type
    # Classes found in the C++ code
    QFontInfo* {.header:headerFile,importcpp:"QFontInfo" ,pure,inheritable.} = object

# Stuff for class QFontInfo

# Public constructors for QFontInfo
import nimqt/qtgui/qfont
proc newQFontInfo*(arg_0: QFont): QFontInfo {. header:headerFile, importcpp:"QFontInfo(@)", constructor .} #
proc newQFontInfo*(arg_0: QFontInfo): QFontInfo {. header:headerFile, importcpp:"QFontInfo(@)", constructor .} #

# Public methods for QFontInfo
proc swap*(this: QFontInfo, other: QFontInfo) {.header:headerFile, importcpp:"#.swap(@)".} # Public
import nimqt/qtcore/qstring
proc family*(this: QFontInfo): QString {.header:headerFile, importcpp:"#.family(@)".} # Public
proc styleName*(this: QFontInfo): QString {.header:headerFile, importcpp:"#.styleName(@)".} # Public
proc pixelSize*(this: QFontInfo): cint {.header:headerFile, importcpp:"#.pixelSize(@)".} # Public
proc pointSize*(this: QFontInfo): cint {.header:headerFile, importcpp:"#.pointSize(@)".} # Public
proc pointSizeF*(this: QFontInfo): cfloat {.header:headerFile, importcpp:"#.pointSizeF(@)".} # Public
proc italic*(this: QFontInfo): bool {.header:headerFile, importcpp:"#.italic(@)".} # Public
proc style*(this: QFontInfo): QFont_Style {.header:headerFile, importcpp:"#.style(@)".} # Public
proc weight*(this: QFontInfo): cint {.header:headerFile, importcpp:"#.weight(@)".} # Public
proc bold*(this: QFontInfo): bool {.header:headerFile, importcpp:"#.bold(@)".} # Public
proc underline*(this: QFontInfo): bool {.header:headerFile, importcpp:"#.underline(@)".} # Public
proc overline*(this: QFontInfo): bool {.header:headerFile, importcpp:"#.overline(@)".} # Public
proc strikeOut*(this: QFontInfo): bool {.header:headerFile, importcpp:"#.strikeOut(@)".} # Public
proc fixedPitch*(this: QFontInfo): bool {.header:headerFile, importcpp:"#.fixedPitch(@)".} # Public
proc styleHint*(this: QFontInfo): QFont_StyleHint {.header:headerFile, importcpp:"#.styleHint(@)".} # Public
proc legacyWeight*(this: QFontInfo): cint {.header:headerFile, importcpp:"#.legacyWeight(@)".} # Public
proc exactMatch*(this: QFontInfo): bool {.header:headerFile, importcpp:"#.exactMatch(@)".} # Public

export qfont
export qstring
