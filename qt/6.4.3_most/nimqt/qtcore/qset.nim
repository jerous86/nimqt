const headerFile* = "QtCore/qset.h"

type
    # Classes found in the C++ code
    QSet*[T] {.header:headerFile,importcpp:"QSet" ,pure,inheritable.} = object

# Stuff for class QSet

# Public constructors for QSet
proc newQSet*[T](): QSet[T] {. header:headerFile, importcpp:"QSet(@)", constructor .} #

# Public methods for QSet
proc swap*[T](this: QSet[T], other: QSet[T]) {.header:headerFile, importcpp:"#.swap(@)".} # Public
proc size*[T](this: QSet[T]): cint {.header:headerFile, importcpp:"#.size(@)".} # Public
proc isEmpty*[T](this: QSet[T]): bool {.header:headerFile, importcpp:"#.isEmpty(@)".} # Public
proc capacity*[T](this: QSet[T]): cint {.header:headerFile, importcpp:"#.capacity(@)".} # Public
proc reserve*[T](this: QSet[T], size: cint) {.header:headerFile, importcpp:"#.reserve(@)".} # Public
proc squeeze*[T](this: QSet[T]) {.header:headerFile, importcpp:"#.squeeze(@)".} # Public
proc detach*[T](this: QSet[T]) {.header:headerFile, importcpp:"#.detach(@)".} # Public
proc isDetached*[T](this: QSet[T]): bool {.header:headerFile, importcpp:"#.isDetached(@)".} # Public
proc clear*[T](this: QSet[T]) {.header:headerFile, importcpp:"#.clear(@)".} # Public
proc remove*[T](this: QSet[T], value: T): bool {.header:headerFile, importcpp:"#.remove(@)".} # Public
proc contains*[T](this: QSet[T], value: T): bool {.header:headerFile, importcpp:"#.contains(@)".} # Public
proc contains*[T](this: QSet[T], set: QSet[T]): bool {.header:headerFile, importcpp:"#.contains(@)".} # Public
proc count*[T](this: QSet[T]): cint {.header:headerFile, importcpp:"#.count(@)".} # Public
proc unite*[T](this: QSet[T], other: QSet[T]): QSet[T] {.header:headerFile, importcpp:"#.unite(@)".} # Public
proc intersect*[T](this: QSet[T], other: QSet[T]): QSet[T] {.header:headerFile, importcpp:"#.intersect(@)".} # Public
proc intersects*[T](this: QSet[T], other: QSet[T]): bool {.header:headerFile, importcpp:"#.intersects(@)".} # Public
proc subtract*[T](this: QSet[T], other: QSet[T]): QSet[T] {.header:headerFile, importcpp:"#.subtract(@)".} # Public
proc empty*[T](this: QSet[T]): bool {.header:headerFile, importcpp:"#.empty(@)".} # Public
proc `<<`*[T](this: QSet[T], value: T): QSet[T] {.header:headerFile, importcpp:"#.operator<<(@)".} # Public
proc `|=`*[T](this: QSet[T], other: QSet[T]): QSet[T] {.header:headerFile, importcpp:"#.operator|=(@)".} # Public
proc `|=`*[T](this: QSet[T], value: T): QSet[T] {.header:headerFile, importcpp:"#.operator|=(@)".} # Public
proc `&=`*[T](this: QSet[T], other: QSet[T]): QSet[T] {.header:headerFile, importcpp:"#.operator&=(@)".} # Public
proc `&=`*[T](this: QSet[T], value: T): QSet[T] {.header:headerFile, importcpp:"#.operator&=(@)".} # Public
proc `+=`*[T](this: QSet[T], other: QSet[T]): QSet[T] {.header:headerFile, importcpp:"#.operator+=(@)".} # Public
proc `+=`*[T](this: QSet[T], value: T): QSet[T] {.header:headerFile, importcpp:"#.operator+=(@)".} # Public
proc `-=`*[T](this: QSet[T], other: QSet[T]): QSet[T] {.header:headerFile, importcpp:"#.operator-=(@)".} # Public
proc `-=`*[T](this: QSet[T], value: T): QSet[T] {.header:headerFile, importcpp:"#.operator-=(@)".} # Public
proc `|`*[T](this: QSet[T], other: QSet[T]): QSet[T] {.header:headerFile, importcpp:"#.operator|(@)".} # Public
proc `&`*[T](this: QSet[T], other: QSet[T]): QSet[T] {.header:headerFile, importcpp:"#.operator&(@)".} # Public
proc `+`*[T](this: QSet[T], other: QSet[T]): QSet[T] {.header:headerFile, importcpp:"#.operator+(@)".} # Public
proc `-`*[T](this: QSet[T], other: QSet[T]): QSet[T] {.header:headerFile, importcpp:"#.operator-(@)".} # Public
import nimqt/qtcore/qlist
proc values*[T](this: QSet[T]): QList[T] {.header:headerFile, importcpp:"#.values(@)".} # Public

export qlist
