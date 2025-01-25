const headerFile* = "QtCore/qcollator.h"

type
    # Classes found in the C++ code
    QCollatorSortKey* {.header:headerFile,importcpp:"QCollatorSortKey" ,pure,inheritable.} = object
    QCollator* {.header:headerFile,importcpp:"QCollator" ,pure,inheritable.} = object

# Stuff for class QCollatorSortKey

# Public constructors for QCollatorSortKey
proc newQCollatorSortKey*(other: QCollatorSortKey): QCollatorSortKey {. header:headerFile, importcpp:"QCollatorSortKey(@)", constructor .} #

# Public methods for QCollatorSortKey
proc swap*(this: QCollatorSortKey, other: QCollatorSortKey) {.header:headerFile, importcpp:"#.swap(@)".} # Public
proc compare*(this: QCollatorSortKey, key: QCollatorSortKey): cint {.header:headerFile, importcpp:"#.compare(@)".} # Public
# Stuff for class QCollator

# Public constructors for QCollator
proc newQCollator*(): QCollator {. header:headerFile, importcpp:"QCollator(@)", constructor .} #
import nimqt/qtcore/qlocale
proc newQCollator*(locale: QLocale): QCollator {. header:headerFile, importcpp:"QCollator(@)", constructor .} #
proc newQCollator*(arg_0: QCollator): QCollator {. header:headerFile, importcpp:"QCollator(@)", constructor .} #
proc newQCollator*(other: QCollator): QCollator {. header:headerFile, importcpp:"QCollator(@)", constructor .} #

# Public methods for QCollator
proc swap*(this: QCollator, other: QCollator) {.header:headerFile, importcpp:"#.swap(@)".} # Public
proc setLocale*(this: QCollator, locale: QLocale) {.header:headerFile, importcpp:"#.setLocale(@)".} # Public
proc locale*(this: QCollator): QLocale {.header:headerFile, importcpp:"#.locale(@)".} # Public
import nimqt/qtcore/qnamespace
proc caseSensitivity*(this: QCollator): Qt_CaseSensitivity {.header:headerFile, importcpp:"#.caseSensitivity(@)".} # Public
proc setCaseSensitivity*(this: QCollator, cs: Qt_CaseSensitivity) {.header:headerFile, importcpp:"#.setCaseSensitivity(@)".} # Public
proc setNumericMode*(this: QCollator, on: bool) {.header:headerFile, importcpp:"#.setNumericMode(@)".} # Public
proc numericMode*(this: QCollator): bool {.header:headerFile, importcpp:"#.numericMode(@)".} # Public
proc setIgnorePunctuation*(this: QCollator, on: bool) {.header:headerFile, importcpp:"#.setIgnorePunctuation(@)".} # Public
proc ignorePunctuation*(this: QCollator): bool {.header:headerFile, importcpp:"#.ignorePunctuation(@)".} # Public
import nimqt/qtcore/qstring
proc compare*(this: QCollator, s1: QString, s2: QString): cint {.header:headerFile, importcpp:"#.compare(@)".} # Public
import nimqt/qtcore/qchar
proc compare*(this: QCollator, s1: ptr QChar, len1: cint, s2: ptr QChar, len2: cint): cint {.header:headerFile, importcpp:"#.compare(@)".} # Public
proc sortKey*(this: QCollator, string: QString): QCollatorSortKey {.header:headerFile, importcpp:"#.sortKey(@)".} # Public

export qstring
export qlocale
export qnamespace
export qchar
