const headerFile* = "QtCore/qmimetype.h"

type
    # Classes found in the C++ code
    QMimeType* {.header:headerFile,importcpp:"QMimeType" ,pure,inheritable.} = object

# Stuff for class QMimeType

# Public constructors for QMimeType
proc newQMimeType*(): QMimeType {. header:headerFile, importcpp:"QMimeType(@)", constructor .} #
proc newQMimeType*(other: QMimeType): QMimeType {. header:headerFile, importcpp:"QMimeType(@)", constructor .} #

# Public methods for QMimeType
proc qt_check_for_QGADGET_macro*(this: QMimeType) {.header:headerFile, importcpp:"#.qt_check_for_QGADGET_macro(@)".} # Public
proc swap*(this: QMimeType, other: QMimeType) {.header:headerFile, importcpp:"#.swap(@)".} # Public
proc `!=`*(this: QMimeType, other: QMimeType): bool {.header:headerFile, importcpp:"#.operator!=(@)".} # Public
proc isValid*(this: QMimeType): bool {.header:headerFile, importcpp:"#.isValid(@)".} # Public
proc isDefault*(this: QMimeType): bool {.header:headerFile, importcpp:"#.isDefault(@)".} # Public
import nimqt/qtcore/qstring
proc name*(this: QMimeType): QString {.header:headerFile, importcpp:"#.name(@)".} # Public
proc comment*(this: QMimeType): QString {.header:headerFile, importcpp:"#.comment(@)".} # Public
proc genericIconName*(this: QMimeType): QString {.header:headerFile, importcpp:"#.genericIconName(@)".} # Public
proc iconName*(this: QMimeType): QString {.header:headerFile, importcpp:"#.iconName(@)".} # Public
import nimqt/qtcore/qstringlist
proc globPatterns*(this: QMimeType): QStringList {.header:headerFile, importcpp:"#.globPatterns(@)".} # Public
proc parentMimeTypes*(this: QMimeType): QStringList {.header:headerFile, importcpp:"#.parentMimeTypes(@)".} # Public
proc allAncestors*(this: QMimeType): QStringList {.header:headerFile, importcpp:"#.allAncestors(@)".} # Public
proc aliases*(this: QMimeType): QStringList {.header:headerFile, importcpp:"#.aliases(@)".} # Public
proc suffixes*(this: QMimeType): QStringList {.header:headerFile, importcpp:"#.suffixes(@)".} # Public
proc preferredSuffix*(this: QMimeType): QString {.header:headerFile, importcpp:"#.preferredSuffix(@)".} # Public
proc inherits*(this: QMimeType, mimeTypeName: QString): bool {.header:headerFile, importcpp:"#.inherits(@)".} # Public
proc filterString*(this: QMimeType): QString {.header:headerFile, importcpp:"#.filterString(@)".} # Public

export qstringlist
export qstring
