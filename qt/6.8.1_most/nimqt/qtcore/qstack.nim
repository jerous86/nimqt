const headerFile* = "QtCore/qstack.h"

import nimqt/qtcore/qlist
type
    # Classes found in the C++ code
    QStack*[T] {.header:headerFile,importcpp:"QStack" ,pure.} = object of QList

# Stuff for class QStack

# Public methods for QStack
proc swap*[T](this: ptr QStack[T], other: QStack[T]) {.header:headerFile, importcpp:"#.swap(@)".} # Public
proc push*[T](this: ptr QStack[T], t: T) {.header:headerFile, importcpp:"#.push(@)".} # Public
proc pop*[T](this: ptr QStack[T]): T {.header:headerFile, importcpp:"#.pop(@)".} # Public
proc top*[T](this: ptr QStack[T]): T {.header:headerFile, importcpp:"#.top(@)".} # Public

export qlist
