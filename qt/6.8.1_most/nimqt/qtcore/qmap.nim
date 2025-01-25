const headerFile* = "QtCore/qmap.h"

type
    # Classes found in the C++ code
    QMap*[Key, T] {.header:headerFile,importcpp:"QMap" ,pure,inheritable.} = object
    QMultiMap*[Key, T] {.header:headerFile,importcpp:"QMultiMap" ,pure,inheritable.} = object

# Stuff for class QMap

# Public constructors for QMap
proc newQMap*[Key, T](): QMap[Key, T] {. header:headerFile, importcpp:"QMap(@)", constructor .} #
proc newQMap*[Key, T](other: cint): QMap[Key, T] {. header:headerFile, importcpp:"QMap(@)", constructor .} #

# Public methods for QMap
proc swap*[Key, T](this: QMap[Key, T], other: QMap[Key, T]) {.header:headerFile, importcpp:"#.swap(@)".} # Public
proc toStdMap*[Key, T](this: QMap[Key, T]): cint {.header:headerFile, importcpp:"#.toStdMap(@)".} # Public
proc size*[Key, T](this: QMap[Key, T]): cint {.header:headerFile, importcpp:"#.size(@)".} # Public
proc isEmpty*[Key, T](this: QMap[Key, T]): bool {.header:headerFile, importcpp:"#.isEmpty(@)".} # Public
proc detach*[Key, T](this: QMap[Key, T]) {.header:headerFile, importcpp:"#.detach(@)".} # Public
proc isDetached*[Key, T](this: QMap[Key, T]): bool {.header:headerFile, importcpp:"#.isDetached(@)".} # Public
proc isSharedWith*[Key, T](this: QMap[Key, T], other: QMap[Key, T]): bool {.header:headerFile, importcpp:"#.isSharedWith(@)".} # Public
proc clear*[Key, T](this: QMap[Key, T]) {.header:headerFile, importcpp:"#.clear(@)".} # Public
proc remove*[Key, T](this: QMap[Key, T]): cint {.header:headerFile, importcpp:"#.remove(@)".} # Public
proc take*[Key, T](this: QMap[Key, T], key: Key): T {.header:headerFile, importcpp:"#.take(@)".} # Public
proc contains*[Key, T](this: QMap[Key, T], key: Key): bool {.header:headerFile, importcpp:"#.contains(@)".} # Public
proc key*[Key, T](this: QMap[Key, T], value: T, defaultKey: Key): Key {.header:headerFile, importcpp:"#.key(@)".} # Public
proc value*[Key, T](this: QMap[Key, T], key: Key, defaultValue: T): T {.header:headerFile, importcpp:"#.value(@)".} # Public
proc `[]`*[Key, T](this: QMap[Key, T], key: Key): T {.header:headerFile, importcpp:"#.operator[](@)".} # Public
import nimqt/qtcore/qlist
proc keys*[Key, T](this: QMap[Key, T]): QList[Key] {.header:headerFile, importcpp:"#.keys(@)".} # Public
proc keys*[Key, T](this: QMap[Key, T], value: T): QList[Key] {.header:headerFile, importcpp:"#.keys(@)".} # Public
proc values*[Key, T](this: QMap[Key, T]): QList[T] {.header:headerFile, importcpp:"#.values(@)".} # Public
proc count*[Key, T](this: QMap[Key, T]): cint {.header:headerFile, importcpp:"#.count(@)".} # Public
proc firstKey*[Key, T](this: QMap[Key, T]): Key {.header:headerFile, importcpp:"#.firstKey(@)".} # Public
proc lastKey*[Key, T](this: QMap[Key, T]): Key {.header:headerFile, importcpp:"#.lastKey(@)".} # Public
proc first*[Key, T](this: QMap[Key, T]): T {.header:headerFile, importcpp:"#.first(@)".} # Public
proc last*[Key, T](this: QMap[Key, T]): T {.header:headerFile, importcpp:"#.last(@)".} # Public
proc asKeyValueRange*[Key, T](this: QMap[Key, T]): auto {.header:headerFile, importcpp:"#.asKeyValueRange(@)".} # Public
proc insert*[Key, T](this: QMap[Key, T], map: QMap[Key, T]) {.header:headerFile, importcpp:"#.insert(@)".} # Public
proc empty*[Key, T](this: QMap[Key, T]): bool {.header:headerFile, importcpp:"#.empty(@)".} # Public
proc equal_range*[Key, T](this: QMap[Key, T]): cint {.header:headerFile, importcpp:"#.equal_range(@)".} # Public
# Stuff for class QMultiMap

# Public constructors for QMultiMap
proc newQMultiMap*[Key, T](): QMultiMap[Key, T] {. header:headerFile, importcpp:"QMultiMap(@)", constructor .} #
proc newQMultiMap*[Key, T](other: QMap[Key, T]): QMultiMap[Key, T] {. header:headerFile, importcpp:"QMultiMap(@)", constructor .} #
proc newQMultiMap*[Key, T](other: cint): QMultiMap[Key, T] {. header:headerFile, importcpp:"QMultiMap(@)", constructor .} #

# Public methods for QMultiMap
proc swap*[Key, T](this: QMultiMap[Key, T], other: QMultiMap[Key, T]) {.header:headerFile, importcpp:"#.swap(@)".} # Public
proc toStdMap*[Key, T](this: QMultiMap[Key, T]): cint {.header:headerFile, importcpp:"#.toStdMap(@)".} # Public
proc toStdMultiMap*[Key, T](this: QMultiMap[Key, T]): cint {.header:headerFile, importcpp:"#.toStdMultiMap(@)".} # Public
proc size*[Key, T](this: QMultiMap[Key, T]): cint {.header:headerFile, importcpp:"#.size(@)".} # Public
proc isEmpty*[Key, T](this: QMultiMap[Key, T]): bool {.header:headerFile, importcpp:"#.isEmpty(@)".} # Public
proc detach*[Key, T](this: QMultiMap[Key, T]) {.header:headerFile, importcpp:"#.detach(@)".} # Public
proc isDetached*[Key, T](this: QMultiMap[Key, T]): bool {.header:headerFile, importcpp:"#.isDetached(@)".} # Public
proc isSharedWith*[Key, T](this: QMultiMap[Key, T], other: QMultiMap[Key, T]): bool {.header:headerFile, importcpp:"#.isSharedWith(@)".} # Public
proc clear*[Key, T](this: QMultiMap[Key, T]) {.header:headerFile, importcpp:"#.clear(@)".} # Public
proc remove*[Key, T](this: QMultiMap[Key, T]): cint {.header:headerFile, importcpp:"#.remove(@)".} # Public
proc take*[Key, T](this: QMultiMap[Key, T], key: Key): T {.header:headerFile, importcpp:"#.take(@)".} # Public
proc contains*[Key, T](this: QMultiMap[Key, T], key: Key): bool {.header:headerFile, importcpp:"#.contains(@)".} # Public
proc contains*[Key, T](this: QMultiMap[Key, T], key: Key, value: T): bool {.header:headerFile, importcpp:"#.contains(@)".} # Public
proc key*[Key, T](this: QMultiMap[Key, T], value: T, defaultKey: Key): Key {.header:headerFile, importcpp:"#.key(@)".} # Public
proc value*[Key, T](this: QMultiMap[Key, T], key: Key, defaultValue: T): T {.header:headerFile, importcpp:"#.value(@)".} # Public
proc keys*[Key, T](this: QMultiMap[Key, T]): QList[Key] {.header:headerFile, importcpp:"#.keys(@)".} # Public
proc keys*[Key, T](this: QMultiMap[Key, T], value: T): QList[Key] {.header:headerFile, importcpp:"#.keys(@)".} # Public
proc uniqueKeys*[Key, T](this: QMultiMap[Key, T]): QList[Key] {.header:headerFile, importcpp:"#.uniqueKeys(@)".} # Public
proc values*[Key, T](this: QMultiMap[Key, T]): QList[T] {.header:headerFile, importcpp:"#.values(@)".} # Public
proc values*[Key, T](this: QMultiMap[Key, T], key: Key): QList[T] {.header:headerFile, importcpp:"#.values(@)".} # Public
proc count*[Key, T](this: QMultiMap[Key, T]): cint {.header:headerFile, importcpp:"#.count(@)".} # Public
proc firstKey*[Key, T](this: QMultiMap[Key, T]): Key {.header:headerFile, importcpp:"#.firstKey(@)".} # Public
proc lastKey*[Key, T](this: QMultiMap[Key, T]): Key {.header:headerFile, importcpp:"#.lastKey(@)".} # Public
proc first*[Key, T](this: QMultiMap[Key, T]): T {.header:headerFile, importcpp:"#.first(@)".} # Public
proc last*[Key, T](this: QMultiMap[Key, T]): T {.header:headerFile, importcpp:"#.last(@)".} # Public
proc asKeyValueRange*[Key, T](this: QMultiMap[Key, T]): auto {.header:headerFile, importcpp:"#.asKeyValueRange(@)".} # Public
proc insert*[Key, T](this: QMultiMap[Key, T], map: QMultiMap[Key, T]) {.header:headerFile, importcpp:"#.insert(@)".} # Public
proc empty*[Key, T](this: QMultiMap[Key, T]): bool {.header:headerFile, importcpp:"#.empty(@)".} # Public
proc equal_range*[Key, T](this: QMultiMap[Key, T]): cint {.header:headerFile, importcpp:"#.equal_range(@)".} # Public
proc unite*[Key, T](this: QMultiMap[Key, T], other: QMultiMap[Key, T]): QMultiMap[Key, T] {.header:headerFile, importcpp:"#.unite(@)".} # Public

export qlist
