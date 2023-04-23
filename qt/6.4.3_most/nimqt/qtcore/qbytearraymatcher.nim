const headerFile* = "QtCore/qbytearraymatcher.h"

# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}
when (NimMajor, NimMinor, NimPatch) < (1, 9, 0):
    type
        # Classes found in the C++ code
        QByteArrayMatcher* {.header:headerFile,importcpp:"QByteArrayMatcher" ,pure.} = object {.inheritable.}
elif (NimMajor, NimMinor, NimPatch) >= (1, 9, 0):
    type
        # Classes found in the C++ code
        QByteArrayMatcher* {.header:headerFile,importcpp:"QByteArrayMatcher" ,pure,inheritable.} = object
{.push warning[Deprecated]: on.}

# Stuff for class QByteArrayMatcher

# Public constructors for QByteArrayMatcher
proc newQByteArrayMatcher*(): QByteArrayMatcher {. header:headerFile, importcpp:"QByteArrayMatcher(@)", constructor .} #
import nimqt/qtcore/qbytearray
proc newQByteArrayMatcher*(pattern: QByteArray): QByteArrayMatcher {. header:headerFile, importcpp:"QByteArrayMatcher(@)", constructor .} #
import nimqt/qtcore/qbytearrayview
proc newQByteArrayMatcher*(pattern: QByteArrayView): QByteArrayMatcher {. header:headerFile, importcpp:"QByteArrayMatcher(@)", constructor .} #
proc newQByteArrayMatcher*(pattern: ptr char, length: cint): QByteArrayMatcher {. header:headerFile, importcpp:"QByteArrayMatcher(@)", constructor .} #
proc newQByteArrayMatcher*(other: QByteArrayMatcher): QByteArrayMatcher {. header:headerFile, importcpp:"QByteArrayMatcher(@)", constructor .} #

# Public methods for QByteArrayMatcher
proc setPattern*(this: QByteArrayMatcher, pattern: QByteArray) {.header:headerFile, importcpp:"#.setPattern(@)".} # Public
proc indexIn*(this: QByteArrayMatcher): cint {.header:headerFile, importcpp:"#.indexIn(@)".} # Public
proc pattern*(this: QByteArrayMatcher): QByteArray {.header:headerFile, importcpp:"#.pattern(@)".} # Public

export qbytearrayview
export qbytearray