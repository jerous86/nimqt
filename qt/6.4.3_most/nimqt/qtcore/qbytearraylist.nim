const headerFile* = "QtCore/qbytearraylist.h"

# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}
when (NimMajor, NimMinor, NimPatch) < (1, 9, 0):
    type
        # Classes found in the C++ code
        QListSpecialMethods* {.header:headerFile,importcpp:"QListSpecialMethods" ,pure.} = object {.inheritable.}
elif (NimMajor, NimMinor, NimPatch) >= (1, 9, 0):
    type
        # Classes found in the C++ code
        QListSpecialMethods* {.header:headerFile,importcpp:"QListSpecialMethods" ,pure,inheritable.} = object
{.push warning[Deprecated]: on.}

# Stuff for class QListSpecialMethods

# Public methods for QListSpecialMethods
import nimqt/qtcore/qbytearrayview
import nimqt/qtcore/qbytearray
proc join*(this: QListSpecialMethods, sep: QByteArrayView): QByteArray {.header:headerFile, importcpp:"#.join(@)".} # Public
proc join*(this: QListSpecialMethods, sep: QByteArray): QByteArray {.header:headerFile, importcpp:"#.join(@)".} # Public
proc join*(this: QListSpecialMethods, sep: char): QByteArray {.header:headerFile, importcpp:"#.join(@)".} # Public

export qbytearrayview
export qbytearray