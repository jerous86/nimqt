const headerFile* = "QtCore/qqueue.h"

import nimqt/qtcore/qlist
type
    # Classes found in the C++ code
    QQueue*[T] {.header:headerFile,importcpp:"QQueue" ,pure.} = object of QList

# Stuff for class QQueue

# Public methods for QQueue
proc swap*[T](this: ptr QQueue[T], other: QQueue[T]) {.header:headerFile, importcpp:"#.swap(@)".} # Public
proc enqueue*[T](this: ptr QQueue[T], t: T) {.header:headerFile, importcpp:"#.enqueue(@)".} # Public
proc dequeue*[T](this: ptr QQueue[T]): T {.header:headerFile, importcpp:"#.dequeue(@)".} # Public
proc head*[T](this: ptr QQueue[T]): T {.header:headerFile, importcpp:"#.head(@)".} # Public

export qlist
