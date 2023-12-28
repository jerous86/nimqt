const headerFile* = "QtCore/qflags.h"

type
    # Classes found in the C++ code
    QFlag* {.header:headerFile,importcpp:"QFlag" ,pure,inheritable.} = object
    QIncompatibleFlag* {.header:headerFile,importcpp:"QIncompatibleFlag" ,pure,inheritable.} = object
    QFlags*[Enum] {.header:headerFile,importcpp:"QFlags" ,pure,inheritable.} = object

# Stuff for class QFlag

# Public constructors for QFlag
proc newQFlag*(value: cint): QFlag {. header:headerFile, importcpp:"QFlag(@)", constructor .} #
proc newQFlag*(value: cuint): QFlag {. header:headerFile, importcpp:"QFlag(@)", constructor .} #
proc newQFlag*(value: cshort): QFlag {. header:headerFile, importcpp:"QFlag(@)", constructor .} #
proc newQFlag*(value: cushort): QFlag {. header:headerFile, importcpp:"QFlag(@)", constructor .} #
# Stuff for class QIncompatibleFlag

# Public constructors for QIncompatibleFlag
proc newQIncompatibleFlag*(i: cint): QIncompatibleFlag {. header:headerFile, importcpp:"QIncompatibleFlag(@)", constructor .} #
# Stuff for class QFlags

# Public constructors for QFlags
proc newQFlags*[Enum](): QFlags[Enum] {. header:headerFile, importcpp:"QFlags(@)", constructor .} #
proc newQFlags*[Enum](flags: Enum): QFlags[Enum] {. header:headerFile, importcpp:"QFlags(@)", constructor .} #
proc newQFlags*[Enum](flag: QFlag): QFlags[Enum] {. header:headerFile, importcpp:"QFlags(@)", constructor .} #

# Public methods for QFlags
proc `&=`*[Enum](this: QFlags[Enum], mask: cint): QFlags[Enum] {.header:headerFile, importcpp:"#.operator&=(@)".} # Public
proc `&=`*[Enum](this: QFlags[Enum], mask: cuint): QFlags[Enum] {.header:headerFile, importcpp:"#.operator&=(@)".} # Public
proc `&=`*[Enum](this: QFlags[Enum], mask: QFlags[Enum]): QFlags[Enum] {.header:headerFile, importcpp:"#.operator&=(@)".} # Public
proc `&=`*[Enum](this: QFlags[Enum], mask: Enum): QFlags[Enum] {.header:headerFile, importcpp:"#.operator&=(@)".} # Public
proc `|=`*[Enum](this: QFlags[Enum], other: QFlags[Enum]): QFlags[Enum] {.header:headerFile, importcpp:"#.operator|=(@)".} # Public
proc `|=`*[Enum](this: QFlags[Enum], other: Enum): QFlags[Enum] {.header:headerFile, importcpp:"#.operator|=(@)".} # Public
proc `^=`*[Enum](this: QFlags[Enum], other: QFlags[Enum]): QFlags[Enum] {.header:headerFile, importcpp:"#.operator^=(@)".} # Public
proc `^=`*[Enum](this: QFlags[Enum], other: Enum): QFlags[Enum] {.header:headerFile, importcpp:"#.operator^=(@)".} # Public
proc `!`*[Enum](this: QFlags[Enum]): bool {.header:headerFile, importcpp:"#.operator!(@)".} # Public
proc `|`*[Enum](this: QFlags[Enum], other: QFlags[Enum]): QFlags[Enum] {.header:headerFile, importcpp:"#.operator|(@)".} # Public
proc `|`*[Enum](this: QFlags[Enum], other: Enum): QFlags[Enum] {.header:headerFile, importcpp:"#.operator|(@)".} # Public
proc `^`*[Enum](this: QFlags[Enum], other: QFlags[Enum]): QFlags[Enum] {.header:headerFile, importcpp:"#.operator^(@)".} # Public
proc `^`*[Enum](this: QFlags[Enum], other: Enum): QFlags[Enum] {.header:headerFile, importcpp:"#.operator^(@)".} # Public
proc `&`*[Enum](this: QFlags[Enum], mask: cint): QFlags[Enum] {.header:headerFile, importcpp:"#.operator&(@)".} # Public
proc `&`*[Enum](this: QFlags[Enum], mask: cuint): QFlags[Enum] {.header:headerFile, importcpp:"#.operator&(@)".} # Public
proc `&`*[Enum](this: QFlags[Enum], other: QFlags[Enum]): QFlags[Enum] {.header:headerFile, importcpp:"#.operator&(@)".} # Public
proc `&`*[Enum](this: QFlags[Enum], other: Enum): QFlags[Enum] {.header:headerFile, importcpp:"#.operator&(@)".} # Public
proc `~`*[Enum](this: QFlags[Enum]): QFlags[Enum] {.header:headerFile, importcpp:"#.operator~(@)".} # Public
proc `+`*[Enum](this: QFlags[Enum], other: QFlags[Enum]) {.header:headerFile, importcpp:"#.operator+(@)".} # Public
proc `+`*[Enum](this: QFlags[Enum], other: Enum) {.header:headerFile, importcpp:"#.operator+(@)".} # Public
proc `+`*[Enum](this: QFlags[Enum], other: cint) {.header:headerFile, importcpp:"#.operator+(@)".} # Public
proc `-`*[Enum](this: QFlags[Enum], other: QFlags[Enum]) {.header:headerFile, importcpp:"#.operator-(@)".} # Public
proc `-`*[Enum](this: QFlags[Enum], other: Enum) {.header:headerFile, importcpp:"#.operator-(@)".} # Public
proc `-`*[Enum](this: QFlags[Enum], other: cint) {.header:headerFile, importcpp:"#.operator-(@)".} # Public
proc testFlag*[Enum](this: QFlags[Enum], flag: Enum): bool {.header:headerFile, importcpp:"#.testFlag(@)".} # Public
proc testFlags*[Enum](this: QFlags[Enum], flags: QFlags[Enum]): bool {.header:headerFile, importcpp:"#.testFlags(@)".} # Public
proc testAnyFlag*[Enum](this: QFlags[Enum], flag: Enum): bool {.header:headerFile, importcpp:"#.testAnyFlag(@)".} # Public
proc testAnyFlags*[Enum](this: QFlags[Enum], flags: QFlags[Enum]): bool {.header:headerFile, importcpp:"#.testAnyFlags(@)".} # Public
# 1 default parameters!
proc setFlag*[Enum](this: QFlags[Enum], flag: Enum, on: bool): QFlags[Enum] {.header:headerFile, importcpp:"#.setFlag(@)".} # Public
proc setFlag*[Enum](this: QFlags[Enum], flag: Enum): QFlags[Enum] {.header:headerFile, importcpp:"#.setFlag(@)".} # Public


# Additional code for qtcore/qflags

import sets
import macros

func incl*[T](this: var QFlags[T], x:T) = this=this.setFlag(x, on=true)
func excl*[T](this: var QFlags[T], x:T) = this=this.setFlag(x, on=false)

func fromContainer[C,T](xs:C): QFlags[T] =
    var ret=newQFlags[T]()
    for x in xs:
        ret=ret.setFlag(x)
    ret
func fromSet*[T](xs:set[T]): QFlags[T] = fromContainer[set[T], T](xs)
func fromHashSet*[T](xs:HashSet[T]): QFlags[T] = fromContainer[HashSet[T], T](xs)
func fromArray*[T](xs:openArray[T]): QFlags[T] = fromContainer[openArray[T], T](xs)

func toSet*[Enum](this: QFlags[Enum]): set[Enum] =
    for e in Enum:
        if this.testFlag(e): 
            try: result.incl e
            except: discard
func toHashSet*[Enum](this: QFlags[Enum]): HashSet[Enum] =
    macro enumFullArray(a: typed): untyped = newNimNode(nnkBracket).add(a.getType[1][1..^1])
    for e in enumFullArray(Enum):
        if this.testFlag(e): 
            try: result.incl e
            except: discard

proc newQFlags*[Enum](flags: openArray[Enum]): QFlags[Enum] =
    for x in flags:
        discard result |= x
        
