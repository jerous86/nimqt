const headerFile* = "QtGui/qpageranges.h"

type
    # Classes found in the C++ code
    QPageRanges* {.header:headerFile,importcpp:"QPageRanges" ,pure,inheritable.} = object
    QPageRanges_Range* {.header:headerFile,importcpp:"QPageRanges::Range" ,pure,inheritable.} = object

# Stuff for class QPageRanges

# Public constructors for QPageRanges
proc newQPageRanges*(): QPageRanges {. header:headerFile, importcpp:"QPageRanges(@)", constructor .} #
proc newQPageRanges*(other: QPageRanges): QPageRanges {. header:headerFile, importcpp:"QPageRanges(@)", constructor .} #

# Public methods for QPageRanges
proc swap*(this: QPageRanges, other: QPageRanges) {.header:headerFile, importcpp:"#.swap(@)".} # Public
proc addPage*(this: QPageRanges, pageNumber: cint) {.header:headerFile, importcpp:"#.addPage(@)".} # Public
proc addRange*(this: QPageRanges, `from`: cint, to: cint) {.header:headerFile, importcpp:"#.addRange(@)".} # Public
import nimqt/qtcore/qlist
proc toRangeList*(this: QPageRanges): QList[QPageRanges_Range] {.header:headerFile, importcpp:"#.toRangeList(@)".} # Public
proc clear*(this: QPageRanges) {.header:headerFile, importcpp:"#.clear(@)".} # Public
import nimqt/qtcore/qstring
proc toString*(this: QPageRanges): QString {.header:headerFile, importcpp:"#.toString(@)".} # Public
proc static_QPageRanges_fromString*(ranges: QString): QPageRanges {.header:headerFile, importcpp:"QPageRanges::fromString(@)".} # Public static
proc contains*(this: QPageRanges, pageNumber: cint): bool {.header:headerFile, importcpp:"#.contains(@)".} # Public
proc isEmpty*(this: QPageRanges): bool {.header:headerFile, importcpp:"#.isEmpty(@)".} # Public
proc firstPage*(this: QPageRanges): cint {.header:headerFile, importcpp:"#.firstPage(@)".} # Public
proc lastPage*(this: QPageRanges): cint {.header:headerFile, importcpp:"#.lastPage(@)".} # Public
proc detach*(this: QPageRanges) {.header:headerFile, importcpp:"#.detach(@)".} # Public
# Stuff for class QPageRanges_Range

# Public methods for QPageRanges_Range
proc contains*(this: QPageRanges_Range, pageNumber: cint): bool {.header:headerFile, importcpp:"#.contains(@)".} # Public

export qstring
export qlist
