const headerFile* = "QtCore/qversionnumber.h"

type
    # Classes found in the C++ code
    QVersionNumber* {.header:headerFile,importcpp:"QVersionNumber" ,pure,inheritable.} = object
    QTypeRevision* {.header:headerFile,importcpp:"QTypeRevision" ,pure,inheritable.} = object

# Stuff for class QVersionNumber

# Public constructors for QVersionNumber
proc newQVersionNumber*(): QVersionNumber {. header:headerFile, importcpp:"QVersionNumber(@)", constructor .} #
import nimqt/qtcore/qlist
proc newQVersionNumber*(seg: QList[cint]): QVersionNumber {. header:headerFile, importcpp:"QVersionNumber(@)", constructor .} #
proc newQVersionNumber*(maj: cint): QVersionNumber {. header:headerFile, importcpp:"QVersionNumber(@)", constructor .} #
proc newQVersionNumber*(maj: cint, min: cint): QVersionNumber {. header:headerFile, importcpp:"QVersionNumber(@)", constructor .} #
proc newQVersionNumber*(maj: cint, min: cint, mic: cint): QVersionNumber {. header:headerFile, importcpp:"QVersionNumber(@)", constructor .} #

# Public methods for QVersionNumber
proc isNull*(this: QVersionNumber): bool {.header:headerFile, importcpp:"#.isNull(@)".} # Public
proc isNormalized*(this: QVersionNumber): bool {.header:headerFile, importcpp:"#.isNormalized(@)".} # Public
proc majorVersion*(this: QVersionNumber): cint {.header:headerFile, importcpp:"#.majorVersion(@)".} # Public
proc minorVersion*(this: QVersionNumber): cint {.header:headerFile, importcpp:"#.minorVersion(@)".} # Public
proc microVersion*(this: QVersionNumber): cint {.header:headerFile, importcpp:"#.microVersion(@)".} # Public
proc normalized*(this: QVersionNumber): QVersionNumber {.header:headerFile, importcpp:"#.normalized(@)".} # Public
proc segments*(this: QVersionNumber): QList[cint] {.header:headerFile, importcpp:"#.segments(@)".} # Public
proc segmentAt*(this: QVersionNumber, index: cint): cint {.header:headerFile, importcpp:"#.segmentAt(@)".} # Public
proc segmentCount*(this: QVersionNumber): cint {.header:headerFile, importcpp:"#.segmentCount(@)".} # Public
proc isPrefixOf*(this: QVersionNumber, other: QVersionNumber): bool {.header:headerFile, importcpp:"#.isPrefixOf(@)".} # Public
proc static_QVersionNumber_compare*(v1: QVersionNumber, v2: QVersionNumber): cint {.header:headerFile, importcpp:"QVersionNumber::compare(@)".} # Public static
proc static_QVersionNumber_commonPrefix*(v1: QVersionNumber, v2: QVersionNumber): QVersionNumber {.header:headerFile, importcpp:"QVersionNumber::commonPrefix(@)".} # Public static
import nimqt/qtcore/qstring
proc toString*(this: QVersionNumber): QString {.header:headerFile, importcpp:"#.toString(@)".} # Public
import nimqt/qtcore/qanystringview
# 1 default parameters!
proc static_QVersionNumber_fromString*(string: QAnyStringView, suffixIndex: ptr cint): QVersionNumber {.header:headerFile, importcpp:"QVersionNumber::fromString(@)".} # Public static
proc static_QVersionNumber_fromString*(string: QAnyStringView): QVersionNumber {.header:headerFile, importcpp:"QVersionNumber::fromString(@)".} # Public static
# Stuff for class QTypeRevision

# Public constructors for QTypeRevision
proc newQTypeRevision*(): QTypeRevision {. header:headerFile, importcpp:"QTypeRevision(@)", constructor .} #

# Public methods for QTypeRevision
proc static_QTypeRevision_zero*(): QTypeRevision {.header:headerFile, importcpp:"QTypeRevision::zero(@)".} # Public static
proc hasMajorVersion*(this: QTypeRevision): bool {.header:headerFile, importcpp:"#.hasMajorVersion(@)".} # Public
proc majorVersion*(this: QTypeRevision): uint8 {.header:headerFile, importcpp:"#.majorVersion(@)".} # Public
proc hasMinorVersion*(this: QTypeRevision): bool {.header:headerFile, importcpp:"#.hasMinorVersion(@)".} # Public
proc minorVersion*(this: QTypeRevision): uint8 {.header:headerFile, importcpp:"#.minorVersion(@)".} # Public
proc isValid*(this: QTypeRevision): bool {.header:headerFile, importcpp:"#.isValid(@)".} # Public

export qstring
export qlist
export qanystringview
