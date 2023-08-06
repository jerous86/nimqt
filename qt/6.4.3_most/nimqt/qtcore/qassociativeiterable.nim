const headerFile* = "QtCore/qassociativeiterable.h"

type
    # Classes found in the C++ code
    QAssociativeIterable* {.header:headerFile,importcpp:"QAssociativeIterable" ,pure,inheritable.} = object

# Stuff for class QAssociativeIterable

# Public constructors for QAssociativeIterable
proc newQAssociativeIterable*(): QAssociativeIterable {. header:headerFile, importcpp:"QAssociativeIterable(@)", constructor .} #
import nimqt/qtcore/qmetacontainer
import nimqt/qtcore/qiterable
proc newQAssociativeIterable*(other: QIterable[QMetaAssociation]): QAssociativeIterable {. header:headerFile, importcpp:"QAssociativeIterable(@)", constructor .} #

# Public methods for QAssociativeIterable
import nimqt/qtcore/qvariant
proc containsKey*(this: QAssociativeIterable, key: QVariant): bool {.header:headerFile, importcpp:"#.containsKey(@)".} # Public
proc insertKey*(this: QAssociativeIterable, key: QVariant) {.header:headerFile, importcpp:"#.insertKey(@)".} # Public
proc removeKey*(this: QAssociativeIterable, key: QVariant) {.header:headerFile, importcpp:"#.removeKey(@)".} # Public
proc value*(this: QAssociativeIterable, key: QVariant): QVariant {.header:headerFile, importcpp:"#.value(@)".} # Public
proc setValue*(this: QAssociativeIterable, key: QVariant, mapped: QVariant) {.header:headerFile, importcpp:"#.setValue(@)".} # Public

export qmetacontainer
export qiterable
export qvariant
