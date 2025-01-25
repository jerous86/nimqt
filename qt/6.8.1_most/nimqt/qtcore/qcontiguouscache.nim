const headerFile* = "QtCore/qcontiguouscache.h"

type
    # Classes found in the C++ code
    QContiguousCacheData* {.header:headerFile,importcpp:"QContiguousCacheData" ,pure,inheritable.} = object
    QContiguousCacheTypedData*[T] {.header:headerFile,importcpp:"QContiguousCacheTypedData" ,pure.} = object of QContiguousCacheData
    QContiguousCache*[T] {.header:headerFile,importcpp:"QContiguousCache" ,pure,inheritable.} = object

# Stuff for class QContiguousCacheData

# Public methods for QContiguousCacheData
proc static_QContiguousCacheData_allocateData*(size: cint, alignment: cint): ptr QContiguousCacheData {.header:headerFile, importcpp:"QContiguousCacheData::allocateData(@)".} # Public static
proc static_QContiguousCacheData_freeData*(data: ptr QContiguousCacheData) {.header:headerFile, importcpp:"QContiguousCacheData::freeData(@)".} # Public static
# Stuff for class QContiguousCache

# Public constructors for QContiguousCache
# 1 default parameters!
proc newQContiguousCache*[T](capacity: cint): QContiguousCache[T] {. header:headerFile, importcpp:"QContiguousCache(@)", constructor .} #
proc newQContiguousCache*[T](): QContiguousCache[T] {. header:headerFile, importcpp:"QContiguousCache(@)", constructor .} #
proc newQContiguousCache*[T](v: QContiguousCache[T]): QContiguousCache[T] {. header:headerFile, importcpp:"QContiguousCache(@)", constructor .} #

# Public methods for QContiguousCache
proc detach*[T](this: QContiguousCache[T]) {.header:headerFile, importcpp:"#.detach(@)".} # Public
proc isDetached*[T](this: QContiguousCache[T]): bool {.header:headerFile, importcpp:"#.isDetached(@)".} # Public
proc swap*[T](this: QContiguousCache[T], other: QContiguousCache[T]) {.header:headerFile, importcpp:"#.swap(@)".} # Public
proc capacity*[T](this: QContiguousCache[T]): cint {.header:headerFile, importcpp:"#.capacity(@)".} # Public
proc count*[T](this: QContiguousCache[T]): cint {.header:headerFile, importcpp:"#.count(@)".} # Public
proc size*[T](this: QContiguousCache[T]): cint {.header:headerFile, importcpp:"#.size(@)".} # Public
proc isEmpty*[T](this: QContiguousCache[T]): bool {.header:headerFile, importcpp:"#.isEmpty(@)".} # Public
proc isFull*[T](this: QContiguousCache[T]): bool {.header:headerFile, importcpp:"#.isFull(@)".} # Public
proc available*[T](this: QContiguousCache[T]): cint {.header:headerFile, importcpp:"#.available(@)".} # Public
proc clear*[T](this: QContiguousCache[T]) {.header:headerFile, importcpp:"#.clear(@)".} # Public
proc setCapacity*[T](this: QContiguousCache[T], size: cint) {.header:headerFile, importcpp:"#.setCapacity(@)".} # Public
proc at*[T](this: QContiguousCache[T], pos: cint): T {.header:headerFile, importcpp:"#.at(@)".} # Public
proc `[]`*[T](this: QContiguousCache[T], i: cint): T {.header:headerFile, importcpp:"#.operator[](@)".} # Public
proc append*[T](this: QContiguousCache[T], value: T) {.header:headerFile, importcpp:"#.append(@)".} # Public
proc prepend*[T](this: QContiguousCache[T], value: T) {.header:headerFile, importcpp:"#.prepend(@)".} # Public
proc insert*[T](this: QContiguousCache[T], pos: cint, value: T) {.header:headerFile, importcpp:"#.insert(@)".} # Public
proc containsIndex*[T](this: QContiguousCache[T], pos: cint): bool {.header:headerFile, importcpp:"#.containsIndex(@)".} # Public
proc firstIndex*[T](this: QContiguousCache[T]): cint {.header:headerFile, importcpp:"#.firstIndex(@)".} # Public
proc lastIndex*[T](this: QContiguousCache[T]): cint {.header:headerFile, importcpp:"#.lastIndex(@)".} # Public
proc first*[T](this: QContiguousCache[T]): T {.header:headerFile, importcpp:"#.first(@)".} # Public
proc last*[T](this: QContiguousCache[T]): T {.header:headerFile, importcpp:"#.last(@)".} # Public
proc removeFirst*[T](this: QContiguousCache[T]) {.header:headerFile, importcpp:"#.removeFirst(@)".} # Public
proc takeFirst*[T](this: QContiguousCache[T]): T {.header:headerFile, importcpp:"#.takeFirst(@)".} # Public
proc removeLast*[T](this: QContiguousCache[T]) {.header:headerFile, importcpp:"#.removeLast(@)".} # Public
proc takeLast*[T](this: QContiguousCache[T]): T {.header:headerFile, importcpp:"#.takeLast(@)".} # Public
proc areIndexesValid*[T](this: QContiguousCache[T]): bool {.header:headerFile, importcpp:"#.areIndexesValid(@)".} # Public
proc normalizeIndexes*[T](this: QContiguousCache[T]) {.header:headerFile, importcpp:"#.normalizeIndexes(@)".} # Public

