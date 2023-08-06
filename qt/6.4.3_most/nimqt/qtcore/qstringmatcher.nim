const headerFile* = "QtCore/qstringmatcher.h"

type
    # Classes found in the C++ code
    QStringMatcher* {.header:headerFile,importcpp:"QStringMatcher" ,pure,inheritable.} = object

# Stuff for class QStringMatcher

# Public constructors for QStringMatcher
proc newQStringMatcher*(): QStringMatcher {. header:headerFile, importcpp:"QStringMatcher(@)", constructor .} #
import nimqt/qtcore/qstring
import nimqt/qtcore/qnamespace
proc newQStringMatcher*(pattern: QString, cs: Qt_CaseSensitivity): QStringMatcher {. header:headerFile, importcpp:"QStringMatcher(@)", constructor .} #
import nimqt/qtcore/qchar
proc newQStringMatcher*(uc: ptr QChar, len: cint, cs: Qt_CaseSensitivity): QStringMatcher {. header:headerFile, importcpp:"QStringMatcher(@)", constructor .} #
proc newQStringMatcher*(other: QStringMatcher): QStringMatcher {. header:headerFile, importcpp:"QStringMatcher(@)", constructor .} #

# Public methods for QStringMatcher
proc setPattern*(this: QStringMatcher, pattern: QString) {.header:headerFile, importcpp:"#.setPattern(@)".} # Public
proc setCaseSensitivity*(this: QStringMatcher, cs: Qt_CaseSensitivity) {.header:headerFile, importcpp:"#.setCaseSensitivity(@)".} # Public
proc indexIn*(this: QStringMatcher): cint {.header:headerFile, importcpp:"#.indexIn(@)".} # Public
proc pattern*(this: QStringMatcher): QString {.header:headerFile, importcpp:"#.pattern(@)".} # Public
proc caseSensitivity*(this: QStringMatcher): Qt_CaseSensitivity {.header:headerFile, importcpp:"#.caseSensitivity(@)".} # Public

export qstring
export qnamespace
export qchar
