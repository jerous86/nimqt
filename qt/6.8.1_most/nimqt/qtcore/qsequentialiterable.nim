const headerFile* = "QtCore/qsequentialiterable.h"

type
    # Enums found in the C++ code
    # Global
    QSequentialIterable_Position* {.header:headerFile,importcpp:"QSequentialIterable::Position".} = enum Unspecified = 0, AtBegin = 0x1, AtEnd = 0x2

type
    # Classes found in the C++ code
    QSequentialIterable* {.header:headerFile,importcpp:"QSequentialIterable" ,pure,inheritable.} = object

# Stuff for class QSequentialIterable

# Public constructors for QSequentialIterable
proc newQSequentialIterable*(): QSequentialIterable {. header:headerFile, importcpp:"QSequentialIterable(@)", constructor .} #
import nimqt/qtcore/qmetacontainer
import nimqt/qtcore/qiterable
proc newQSequentialIterable*(other: QIterable[QMetaSequence]): QSequentialIterable {. header:headerFile, importcpp:"QSequentialIterable(@)", constructor .} #

# Public methods for QSequentialIterable
import nimqt/qtcore/qvariant
proc at*(this: QSequentialIterable, idx: cint): QVariant {.header:headerFile, importcpp:"#.at(@)".} # Public
proc set*(this: QSequentialIterable, idx: cint, value: QVariant) {.header:headerFile, importcpp:"#.set(@)".} # Public
proc addValue*(this: QSequentialIterable, value: QVariant, position: QSequentialIterable_Position) {.header:headerFile, importcpp:"#.addValue(@)".} # Public
proc removeValue*(this: QSequentialIterable, position: QSequentialIterable_Position) {.header:headerFile, importcpp:"#.removeValue(@)".} # Public

export qmetacontainer
export qiterable
export qvariant
