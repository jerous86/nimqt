const headerFile* = "QtCore/qtextboundaryfinder.h"

type
    # Enums found in the C++ code
    # Global
    QTextBoundaryFinder_BoundaryType* {.header:headerFile,importcpp:"QTextBoundaryFinder::BoundaryType".} = enum Grapheme = 0, Word = 0x1, Sentence = 0x2, Line = 0x3
    QTextBoundaryFinder_BoundaryReason* {.header:headerFile,importcpp:"QTextBoundaryFinder::BoundaryReason".} = enum NotAtBoundary = 0, BreakOpportunity = 0x1f, StartOfItem = 0x20, EndOfItem = 0x40, 
        MandatoryBreak = 0x80, SoftHyphen = 0x100

type
    # Classes found in the C++ code
    QTextBoundaryFinder* {.header:headerFile,importcpp:"QTextBoundaryFinder" ,pure,inheritable.} = object
import nimqt/qtcore/qflags


type
    # typedefs found in the C++ code
    QTextBoundaryFinder_BoundaryReasons * = QFlags[QTextBoundaryFinder_BoundaryReason]

# Stuff for class QTextBoundaryFinder

# Public constructors for QTextBoundaryFinder
proc newQTextBoundaryFinder*(): QTextBoundaryFinder {. header:headerFile, importcpp:"QTextBoundaryFinder(@)", constructor .} #
proc newQTextBoundaryFinder*(other: QTextBoundaryFinder): QTextBoundaryFinder {. header:headerFile, importcpp:"QTextBoundaryFinder(@)", constructor .} #
import nimqt/qtcore/qstring
proc newQTextBoundaryFinder*(`type`: QTextBoundaryFinder_BoundaryType, string: QString): QTextBoundaryFinder {. header:headerFile, importcpp:"QTextBoundaryFinder(@)", constructor .} #
import nimqt/qtcore/qchar
# 2 default parameters!
proc newQTextBoundaryFinder*(`type`: QTextBoundaryFinder_BoundaryType, chars: ptr QChar, length: cint, buffer: ptr char, bufferSize: cint): QTextBoundaryFinder {. header:headerFile, importcpp:"QTextBoundaryFinder(@)", constructor .} #
proc newQTextBoundaryFinder*(`type`: QTextBoundaryFinder_BoundaryType, chars: ptr QChar, length: cint, buffer: ptr char): QTextBoundaryFinder {. header:headerFile, importcpp:"QTextBoundaryFinder(@)", constructor .} #
proc newQTextBoundaryFinder*(`type`: QTextBoundaryFinder_BoundaryType, chars: ptr QChar, length: cint): QTextBoundaryFinder {. header:headerFile, importcpp:"QTextBoundaryFinder(@)", constructor .} #

# Public methods for QTextBoundaryFinder
proc isValid*(this: QTextBoundaryFinder): bool {.header:headerFile, importcpp:"#.isValid(@)".} # Public
proc `type`*(this: QTextBoundaryFinder): QTextBoundaryFinder_BoundaryType {.header:headerFile, importcpp:"#.type(@)".} # Public
proc string*(this: QTextBoundaryFinder): QString {.header:headerFile, importcpp:"#.string(@)".} # Public
proc toStart*(this: QTextBoundaryFinder) {.header:headerFile, importcpp:"#.toStart(@)".} # Public
proc toEnd*(this: QTextBoundaryFinder) {.header:headerFile, importcpp:"#.toEnd(@)".} # Public
proc position*(this: QTextBoundaryFinder): cint {.header:headerFile, importcpp:"#.position(@)".} # Public
proc setPosition*(this: QTextBoundaryFinder, position: cint) {.header:headerFile, importcpp:"#.setPosition(@)".} # Public
proc toNextBoundary*(this: QTextBoundaryFinder): cint {.header:headerFile, importcpp:"#.toNextBoundary(@)".} # Public
proc toPreviousBoundary*(this: QTextBoundaryFinder): cint {.header:headerFile, importcpp:"#.toPreviousBoundary(@)".} # Public
proc isAtBoundary*(this: QTextBoundaryFinder): bool {.header:headerFile, importcpp:"#.isAtBoundary(@)".} # Public
proc boundaryReasons*(this: QTextBoundaryFinder): QFlags[QTextBoundaryFinder_BoundaryReason] {.header:headerFile, importcpp:"#.boundaryReasons(@)".} # Public

export qstring
export qchar
export qflags
