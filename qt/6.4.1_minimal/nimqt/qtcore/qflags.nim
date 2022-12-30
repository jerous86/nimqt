const headerFile* = "QtCore/qflags.h"

# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}


type
    # Classes and enums found in the C++ code
    QFlag* {.header:headerFile,importcpp:"QFlag" ,pure.} = object {.inheritable.}
    QIncompatibleFlag* {.header:headerFile,importcpp:"QIncompatibleFlag" ,pure.} = object {.inheritable.}
    QFlags*[Enum] {.header:headerFile,importcpp:"QFlags" ,pure.} = object {.inheritable.}
{.push warning[Deprecated]: on.}

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
proc `&=`*[Enum](this:QFlags[Enum], mask: cint): QFlags[Enum] {.header:headerFile, importcpp:"#.operator&=(@)".} # Public 
proc `&=`*[Enum](this:QFlags[Enum], mask: cuint): QFlags[Enum] {.header:headerFile, importcpp:"#.operator&=(@)".} # Public 
proc `&=`*[Enum](this:QFlags[Enum], mask: QFlags[Enum]): QFlags[Enum] {.header:headerFile, importcpp:"#.operator&=(@)".} # Public 
proc `&=`*[Enum](this:QFlags[Enum], mask: Enum): QFlags[Enum] {.header:headerFile, importcpp:"#.operator&=(@)".} # Public 
proc `|=`*[Enum](this:QFlags[Enum], other: QFlags[Enum]): QFlags[Enum] {.header:headerFile, importcpp:"#.operator|=(@)".} # Public 
proc `|=`*[Enum](this:QFlags[Enum], other: Enum): QFlags[Enum] {.header:headerFile, importcpp:"#.operator|=(@)".} # Public 
proc `^=`*[Enum](this:QFlags[Enum], other: QFlags[Enum]): QFlags[Enum] {.header:headerFile, importcpp:"#.operator^=(@)".} # Public 
proc `^=`*[Enum](this:QFlags[Enum], other: Enum): QFlags[Enum] {.header:headerFile, importcpp:"#.operator^=(@)".} # Public 
proc `!`*[Enum](this:QFlags[Enum]): bool {.header:headerFile, importcpp:"#.operator!(@)".} # Public 
proc `|`*[Enum](this:QFlags[Enum], other: QFlags[Enum]): QFlags[Enum] {.header:headerFile, importcpp:"#.operator|(@)".} # Public 
proc `|`*[Enum](this:QFlags[Enum], other: Enum): QFlags[Enum] {.header:headerFile, importcpp:"#.operator|(@)".} # Public 
proc `^`*[Enum](this:QFlags[Enum], other: QFlags[Enum]): QFlags[Enum] {.header:headerFile, importcpp:"#.operator^(@)".} # Public 
proc `^`*[Enum](this:QFlags[Enum], other: Enum): QFlags[Enum] {.header:headerFile, importcpp:"#.operator^(@)".} # Public 
proc `&`*[Enum](this:QFlags[Enum], mask: cint): QFlags[Enum] {.header:headerFile, importcpp:"#.operator&(@)".} # Public 
proc `&`*[Enum](this:QFlags[Enum], mask: cuint): QFlags[Enum] {.header:headerFile, importcpp:"#.operator&(@)".} # Public 
proc `&`*[Enum](this:QFlags[Enum], other: QFlags[Enum]): QFlags[Enum] {.header:headerFile, importcpp:"#.operator&(@)".} # Public 
proc `&`*[Enum](this:QFlags[Enum], other: Enum): QFlags[Enum] {.header:headerFile, importcpp:"#.operator&(@)".} # Public 
proc `~`*[Enum](this:QFlags[Enum]): QFlags[Enum] {.header:headerFile, importcpp:"#.operator~(@)".} # Public 
proc `+`*[Enum](this:QFlags[Enum], other: QFlags[Enum]) {.header:headerFile, importcpp:"#.operator+(@)".} # Public 
proc `+`*[Enum](this:QFlags[Enum], other: Enum) {.header:headerFile, importcpp:"#.operator+(@)".} # Public 
proc `+`*[Enum](this:QFlags[Enum], other: cint) {.header:headerFile, importcpp:"#.operator+(@)".} # Public 
proc `-`*[Enum](this:QFlags[Enum], other: QFlags[Enum]) {.header:headerFile, importcpp:"#.operator-(@)".} # Public 
proc `-`*[Enum](this:QFlags[Enum], other: Enum) {.header:headerFile, importcpp:"#.operator-(@)".} # Public 
proc `-`*[Enum](this:QFlags[Enum], other: cint) {.header:headerFile, importcpp:"#.operator-(@)".} # Public 
proc testFlag*[Enum](this:QFlags[Enum], flag: Enum): bool {.header:headerFile, importcpp:"#.testFlag(@)".} # Public 
proc testFlags*[Enum](this:QFlags[Enum], flags: QFlags[Enum]): bool {.header:headerFile, importcpp:"#.testFlags(@)".} # Public 
proc testAnyFlag*[Enum](this:QFlags[Enum], flag: Enum): bool {.header:headerFile, importcpp:"#.testAnyFlag(@)".} # Public 
proc testAnyFlags*[Enum](this:QFlags[Enum], flags: QFlags[Enum]): bool {.header:headerFile, importcpp:"#.testAnyFlags(@)".} # Public 
# 1 default parameters!
proc setFlag*[Enum](this:QFlags[Enum], flag: Enum, on: bool): QFlags[Enum] {.header:headerFile, importcpp:"#.setFlag(@)".} # Public 
proc setFlag*[Enum](this:QFlags[Enum], flag: Enum): QFlags[Enum] {.header:headerFile, importcpp:"#.setFlag(@)".} # Public 

# Additional code for qtcore/qflags
func toSet*[Enum](this:QFlags[Enum]): set[Enum] =
    for e in Enum:
        if this.testFlag(e): 
            try: result.incl e
            except: discard

