const headerFile* = "QtCore/qbytearraylist.h"

type
    # Classes found in the C++ code
    QListSpecialMethods* {.header:headerFile,importcpp:"QListSpecialMethods" ,pure,inheritable.} = object

# Stuff for class QListSpecialMethods

# Public methods for QListSpecialMethods
import nimqt/qtcore/qbytearrayview
import nimqt/qtcore/qbytearray
proc join*(this: QListSpecialMethods, sep: QByteArrayView): QByteArray {.header:headerFile, importcpp:"#.join(@)".} # Public
proc join*(this: QListSpecialMethods, sep: QByteArray): QByteArray {.header:headerFile, importcpp:"#.join(@)".} # Public
proc join*(this: QListSpecialMethods, sep: char): QByteArray {.header:headerFile, importcpp:"#.join(@)".} # Public

export qbytearrayview
export qbytearray
