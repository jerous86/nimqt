const headerFile* = "QtCore/qhash.h"

type
    # Classes found in the C++ code
    QHashDummyValue* {.header:headerFile,importcpp:"QHashDummyValue" ,pure,inheritable.} = object
    QHash*[Key, T] {.header:headerFile,importcpp:"QHash" ,pure,inheritable.} = object
    QMultiHash*[Key, T] {.header:headerFile,importcpp:"QMultiHash" ,pure,inheritable.} = object

# Stuff for class QHash

# Public constructors for QHash
proc newQHash*[Key, T](): QHash[Key, T] {. header:headerFile, importcpp:"QHash(@)", constructor .} #
proc newQHash*[Key, T](other: QHash[Key, T]): QHash[Key, T] {. header:headerFile, importcpp:"QHash(@)", constructor .} #

# Public methods for QHash
proc swap*[Key, T](this: QHash[Key, T], other: QHash[Key, T]) {.header:headerFile, importcpp:"#.swap(@)".} # Public
proc size*[Key, T](this: QHash[Key, T]): cint {.header:headerFile, importcpp:"#.size(@)".} # Public
proc isEmpty*[Key, T](this: QHash[Key, T]): bool {.header:headerFile, importcpp:"#.isEmpty(@)".} # Public
proc capacity*[Key, T](this: QHash[Key, T]): cint {.header:headerFile, importcpp:"#.capacity(@)".} # Public
proc reserve*[Key, T](this: QHash[Key, T], size: cint) {.header:headerFile, importcpp:"#.reserve(@)".} # Public
proc squeeze*[Key, T](this: QHash[Key, T]) {.header:headerFile, importcpp:"#.squeeze(@)".} # Public
proc detach*[Key, T](this: QHash[Key, T]) {.header:headerFile, importcpp:"#.detach(@)".} # Public
proc isDetached*[Key, T](this: QHash[Key, T]): bool {.header:headerFile, importcpp:"#.isDetached(@)".} # Public
proc isSharedWith*[Key, T](this: QHash[Key, T], other: QHash[Key, T]): bool {.header:headerFile, importcpp:"#.isSharedWith(@)".} # Public
proc clear*[Key, T](this: QHash[Key, T]) {.header:headerFile, importcpp:"#.clear(@)".} # Public
proc remove*[Key, T](this: QHash[Key, T], key: Key): bool {.header:headerFile, importcpp:"#.remove(@)".} # Public
proc take*[Key, T](this: QHash[Key, T], key: Key): T {.header:headerFile, importcpp:"#.take(@)".} # Public
proc contains*[Key, T](this: QHash[Key, T], key: Key): bool {.header:headerFile, importcpp:"#.contains(@)".} # Public
proc count*[Key, T](this: QHash[Key, T]): cint {.header:headerFile, importcpp:"#.count(@)".} # Public
proc key*[Key, T](this: QHash[Key, T], value: T): Key {.header:headerFile, importcpp:"#.key(@)".} # Public
proc key*[Key, T](this: QHash[Key, T], value: T, defaultKey: Key): Key {.header:headerFile, importcpp:"#.key(@)".} # Public
proc value*[Key, T](this: QHash[Key, T], key: Key): T {.header:headerFile, importcpp:"#.value(@)".} # Public
proc value*[Key, T](this: QHash[Key, T], key: Key, defaultValue: T): T {.header:headerFile, importcpp:"#.value(@)".} # Public
proc `[]`*[Key, T](this: QHash[Key, T], key: Key): T {.header:headerFile, importcpp:"#.operator[](@)".} # Public
import nimqt/qtcore/qlist
proc keys*[Key, T](this: QHash[Key, T]): QList[Key] {.header:headerFile, importcpp:"#.keys(@)".} # Public
proc keys*[Key, T](this: QHash[Key, T], value: T): QList[Key] {.header:headerFile, importcpp:"#.keys(@)".} # Public
proc values*[Key, T](this: QHash[Key, T]): QList[T] {.header:headerFile, importcpp:"#.values(@)".} # Public
proc asKeyValueRange*[Key, T](this: QHash[Key, T]): auto {.header:headerFile, importcpp:"#.asKeyValueRange(@)".} # Public
proc equal_range*[Key, T](this: QHash[Key, T]): cint {.header:headerFile, importcpp:"#.equal_range(@)".} # Public
proc insert*[Key, T](this: QHash[Key, T], hash: QHash[Key, T]) {.header:headerFile, importcpp:"#.insert(@)".} # Public
proc load_factor*[Key, T](this: QHash[Key, T]): cfloat {.header:headerFile, importcpp:"#.load_factor(@)".} # Public
proc static_QHash_max_load_factor*[Key, T](): cfloat {.header:headerFile, importcpp:"QHash::max_load_factor(@)".} # Public static
proc bucket_count*[Key, T](this: QHash[Key, T]): csize_t {.header:headerFile, importcpp:"#.bucket_count(@)".} # Public
proc static_QHash_max_bucket_count*[Key, T](): csize_t {.header:headerFile, importcpp:"QHash::max_bucket_count(@)".} # Public static
proc empty*[Key, T](this: QHash[Key, T]): bool {.header:headerFile, importcpp:"#.empty(@)".} # Public
# Stuff for class QMultiHash

# Public constructors for QMultiHash
proc newQMultiHash*[Key, T](): QMultiHash[Key, T] {. header:headerFile, importcpp:"QMultiHash(@)", constructor .} #
proc newQMultiHash*[Key, T](other: QMultiHash[Key, T]): QMultiHash[Key, T] {. header:headerFile, importcpp:"QMultiHash(@)", constructor .} #
proc newQMultiHash*[Key, T](other: QHash[Key, T]): QMultiHash[Key, T] {. header:headerFile, importcpp:"QMultiHash(@)", constructor .} #

# Public methods for QMultiHash
proc swap*[Key, T](this: QMultiHash[Key, T], other: QMultiHash[Key, T]) {.header:headerFile, importcpp:"#.swap(@)".} # Public
proc size*[Key, T](this: QMultiHash[Key, T]): cint {.header:headerFile, importcpp:"#.size(@)".} # Public
proc isEmpty*[Key, T](this: QMultiHash[Key, T]): bool {.header:headerFile, importcpp:"#.isEmpty(@)".} # Public
proc capacity*[Key, T](this: QMultiHash[Key, T]): cint {.header:headerFile, importcpp:"#.capacity(@)".} # Public
proc reserve*[Key, T](this: QMultiHash[Key, T], size: cint) {.header:headerFile, importcpp:"#.reserve(@)".} # Public
proc squeeze*[Key, T](this: QMultiHash[Key, T]) {.header:headerFile, importcpp:"#.squeeze(@)".} # Public
proc detach*[Key, T](this: QMultiHash[Key, T]) {.header:headerFile, importcpp:"#.detach(@)".} # Public
proc isDetached*[Key, T](this: QMultiHash[Key, T]): bool {.header:headerFile, importcpp:"#.isDetached(@)".} # Public
proc isSharedWith*[Key, T](this: QMultiHash[Key, T], other: QMultiHash[Key, T]): bool {.header:headerFile, importcpp:"#.isSharedWith(@)".} # Public
proc clear*[Key, T](this: QMultiHash[Key, T]) {.header:headerFile, importcpp:"#.clear(@)".} # Public
proc remove*[Key, T](this: QMultiHash[Key, T]): cint {.header:headerFile, importcpp:"#.remove(@)".} # Public
proc take*[Key, T](this: QMultiHash[Key, T], key: Key): T {.header:headerFile, importcpp:"#.take(@)".} # Public
proc contains*[Key, T](this: QMultiHash[Key, T], key: Key): bool {.header:headerFile, importcpp:"#.contains(@)".} # Public
proc key*[Key, T](this: QMultiHash[Key, T], value: T): Key {.header:headerFile, importcpp:"#.key(@)".} # Public
proc key*[Key, T](this: QMultiHash[Key, T], value: T, defaultKey: Key): Key {.header:headerFile, importcpp:"#.key(@)".} # Public
proc value*[Key, T](this: QMultiHash[Key, T], key: Key): T {.header:headerFile, importcpp:"#.value(@)".} # Public
proc value*[Key, T](this: QMultiHash[Key, T], key: Key, defaultValue: T): T {.header:headerFile, importcpp:"#.value(@)".} # Public
proc `[]`*[Key, T](this: QMultiHash[Key, T], key: Key): T {.header:headerFile, importcpp:"#.operator[](@)".} # Public
proc uniqueKeys*[Key, T](this: QMultiHash[Key, T]): QList[Key] {.header:headerFile, importcpp:"#.uniqueKeys(@)".} # Public
proc keys*[Key, T](this: QMultiHash[Key, T]): QList[Key] {.header:headerFile, importcpp:"#.keys(@)".} # Public
proc keys*[Key, T](this: QMultiHash[Key, T], value: T): QList[Key] {.header:headerFile, importcpp:"#.keys(@)".} # Public
proc values*[Key, T](this: QMultiHash[Key, T]): QList[T] {.header:headerFile, importcpp:"#.values(@)".} # Public
proc values*[Key, T](this: QMultiHash[Key, T], key: Key): QList[T] {.header:headerFile, importcpp:"#.values(@)".} # Public
proc asKeyValueRange*[Key, T](this: QMultiHash[Key, T]): auto {.header:headerFile, importcpp:"#.asKeyValueRange(@)".} # Public
proc count*[Key, T](this: QMultiHash[Key, T]): cint {.header:headerFile, importcpp:"#.count(@)".} # Public
proc load_factor*[Key, T](this: QMultiHash[Key, T]): cfloat {.header:headerFile, importcpp:"#.load_factor(@)".} # Public
proc static_QMultiHash_max_load_factor*[Key, T](): cfloat {.header:headerFile, importcpp:"QMultiHash::max_load_factor(@)".} # Public static
proc bucket_count*[Key, T](this: QMultiHash[Key, T]): csize_t {.header:headerFile, importcpp:"#.bucket_count(@)".} # Public
proc static_QMultiHash_max_bucket_count*[Key, T](): csize_t {.header:headerFile, importcpp:"QMultiHash::max_bucket_count(@)".} # Public static
proc empty*[Key, T](this: QMultiHash[Key, T]): bool {.header:headerFile, importcpp:"#.empty(@)".} # Public
proc `+=`*[Key, T](this: QMultiHash[Key, T], other: QMultiHash[Key, T]): QMultiHash[Key, T] {.header:headerFile, importcpp:"#.operator+=(@)".} # Public
proc `+`*[Key, T](this: QMultiHash[Key, T], other: QMultiHash[Key, T]): QMultiHash[Key, T] {.header:headerFile, importcpp:"#.operator+(@)".} # Public
proc contains*[Key, T](this: QMultiHash[Key, T], key: Key, value: T): bool {.header:headerFile, importcpp:"#.contains(@)".} # Public
proc unite*[Key, T](this: QMultiHash[Key, T], other: QMultiHash[Key, T]): QMultiHash[Key, T] {.header:headerFile, importcpp:"#.unite(@)".} # Public
proc unite*[Key, T](this: QMultiHash[Key, T], other: QHash[Key, T]): QMultiHash[Key, T] {.header:headerFile, importcpp:"#.unite(@)".} # Public
proc equal_range*[Key, T](this: QMultiHash[Key, T]): cint {.header:headerFile, importcpp:"#.equal_range(@)".} # Public

export qlist
