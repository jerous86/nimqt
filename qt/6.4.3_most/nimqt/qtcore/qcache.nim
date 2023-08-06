const headerFile* = "QtCore/qcache.h"

type
    # Classes found in the C++ code
    QCache*[Key, T] {.header:headerFile,importcpp:"QCache" ,pure,inheritable.} = object
    QCache_Value*[Key, T] {.header:headerFile,importcpp:"QCache::Value" ,pure,inheritable.} = object
    QCache_Chain*[Key, T] {.header:headerFile,importcpp:"QCache::Chain" ,pure,inheritable.} = object

# Stuff for class QCache

# Public constructors for QCache
proc newQCache*[Key, T](arg_0: QCache[Key, T]): QCache[Key, T] {. header:headerFile, importcpp:"QCache(@)", constructor .} #
# 1 default parameters!
proc newQCache*[Key, T](maxCost: cint): QCache[Key, T] {. header:headerFile, importcpp:"QCache(@)", constructor .} #
proc newQCache*[Key, T](): QCache[Key, T] {. header:headerFile, importcpp:"QCache(@)", constructor .} #

# Public methods for QCache
proc relink*[Key, T](this: QCache[Key, T], key: Key): ptr T {.header:headerFile, importcpp:"#.relink(@)".} # Public
proc trim*[Key, T](this: QCache[Key, T], m: cint) {.header:headerFile, importcpp:"#.trim(@)".} # Public
proc maxCost*[Key, T](this: QCache[Key, T]): cint {.header:headerFile, importcpp:"#.maxCost(@)".} # Public
proc setMaxCost*[Key, T](this: QCache[Key, T], m: cint) {.header:headerFile, importcpp:"#.setMaxCost(@)".} # Public
proc totalCost*[Key, T](this: QCache[Key, T]): cint {.header:headerFile, importcpp:"#.totalCost(@)".} # Public
proc size*[Key, T](this: QCache[Key, T]): cint {.header:headerFile, importcpp:"#.size(@)".} # Public
proc count*[Key, T](this: QCache[Key, T]): cint {.header:headerFile, importcpp:"#.count(@)".} # Public
proc isEmpty*[Key, T](this: QCache[Key, T]): bool {.header:headerFile, importcpp:"#.isEmpty(@)".} # Public
import nimqt/qtcore/qlist
proc keys*[Key, T](this: QCache[Key, T]): QList[Key] {.header:headerFile, importcpp:"#.keys(@)".} # Public
proc clear*[Key, T](this: QCache[Key, T]) {.header:headerFile, importcpp:"#.clear(@)".} # Public
# 1 default parameters!
proc insert*[Key, T](this: QCache[Key, T], key: Key, `object`: ptr T, cost: cint): bool {.header:headerFile, importcpp:"#.insert(@)".} # Public
proc insert*[Key, T](this: QCache[Key, T], key: Key, `object`: ptr T): bool {.header:headerFile, importcpp:"#.insert(@)".} # Public
proc `object`*[Key, T](this: QCache[Key, T], key: Key): ptr T {.header:headerFile, importcpp:"#.object(@)".} # Public
proc `[]`*[Key, T](this: QCache[Key, T], key: Key): ptr T {.header:headerFile, importcpp:"#.operator[](@)".} # Public
proc contains*[Key, T](this: QCache[Key, T], key: Key): bool {.header:headerFile, importcpp:"#.contains(@)".} # Public
proc remove*[Key, T](this: QCache[Key, T], key: Key): bool {.header:headerFile, importcpp:"#.remove(@)".} # Public
proc take*[Key, T](this: QCache[Key, T], key: Key): ptr T {.header:headerFile, importcpp:"#.take(@)".} # Public
# Stuff for class QCache_Value

# Public constructors for QCache_Value
proc newQCache_Value*[Key, T](): QCache_Value[Key, T] {. header:headerFile, importcpp:"QCache_Value(@)", constructor .} #
proc newQCache_Value*[Key, T](tt: ptr T, c: cint): QCache_Value[Key, T] {. header:headerFile, importcpp:"QCache_Value(@)", constructor .} #
proc newQCache_Value*[Key, T](other: QCache_Value[Key, T]): QCache_Value[Key, T] {. header:headerFile, importcpp:"QCache_Value(@)", constructor .} #
# Stuff for class QCache_Chain

# Public constructors for QCache_Chain
proc newQCache_Chain*[Key, T](): QCache_Chain[Key, T] {. header:headerFile, importcpp:"QCache_Chain(@)", constructor .} #

export qlist
