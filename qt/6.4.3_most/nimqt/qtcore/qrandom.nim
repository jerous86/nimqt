const headerFile* = "QtCore/qrandom.h"

type
    # Classes found in the C++ code
    QRandomGenerator* {.header:headerFile,importcpp:"QRandomGenerator" ,pure,inheritable.} = object
    QRandomGenerator64* {.header:headerFile,importcpp:"QRandomGenerator64" ,pure.} = object of QRandomGenerator


type
    # typedefs found in the C++ code
    QRandomGenerator_result_type * = cuint

# Stuff for class QRandomGenerator

# Public constructors for QRandomGenerator
# 1 default parameters!
proc newQRandomGenerator*(seedValue: cuint): ptr QRandomGenerator {. header:headerFile, importcpp:"new QRandomGenerator(@)" .} #
proc newQRandomGenerator*(): ptr QRandomGenerator {. header:headerFile, importcpp:"new QRandomGenerator(@)" .} #
proc newQRandomGenerator*(seedBuffer: ptr cuint, len: cint): ptr QRandomGenerator {. header:headerFile, importcpp:"new QRandomGenerator(@)" .} #
proc newQRandomGenerator*(begin: ptr cuint, `end`: ptr cuint): ptr QRandomGenerator {. header:headerFile, importcpp:"new QRandomGenerator(@)" .} #
proc newQRandomGenerator*(other: QRandomGenerator): ptr QRandomGenerator {. header:headerFile, importcpp:"new QRandomGenerator(@)" .} #

# Public methods for QRandomGenerator
proc generate*(this: ptr QRandomGenerator): cuint {.header:headerFile, importcpp:"#.generate(@)".} # Public
proc generate64*(this: ptr QRandomGenerator): culonglong {.header:headerFile, importcpp:"#.generate64(@)".} # Public
proc generateDouble*(this: ptr QRandomGenerator): cdouble {.header:headerFile, importcpp:"#.generateDouble(@)".} # Public
proc bounded*(this: ptr QRandomGenerator, highest: cdouble): cdouble {.header:headerFile, importcpp:"#.bounded(@)".} # Public
proc bounded*(this: ptr QRandomGenerator, highest: cuint): cuint {.header:headerFile, importcpp:"#.bounded(@)".} # Public
proc bounded*(this: ptr QRandomGenerator, lowest: cuint, highest: cuint): cuint {.header:headerFile, importcpp:"#.bounded(@)".} # Public
proc bounded*(this: ptr QRandomGenerator, highest: cint): cint {.header:headerFile, importcpp:"#.bounded(@)".} # Public
proc bounded*(this: ptr QRandomGenerator, lowest: cint, highest: cint): cint {.header:headerFile, importcpp:"#.bounded(@)".} # Public
proc bounded*(this: ptr QRandomGenerator, highest: culonglong): culonglong {.header:headerFile, importcpp:"#.bounded(@)".} # Public
proc bounded*(this: ptr QRandomGenerator, lowest: culonglong, highest: culonglong): culonglong {.header:headerFile, importcpp:"#.bounded(@)".} # Public
proc bounded*(this: ptr QRandomGenerator, highest: clonglong): clonglong {.header:headerFile, importcpp:"#.bounded(@)".} # Public
proc bounded*(this: ptr QRandomGenerator, lowest: clonglong, highest: clonglong): clonglong {.header:headerFile, importcpp:"#.bounded(@)".} # Public
proc bounded*(this: ptr QRandomGenerator, lowest: cint, highest: clonglong): clonglong {.header:headerFile, importcpp:"#.bounded(@)".} # Public
proc bounded*(this: ptr QRandomGenerator, lowest: clonglong, highest: cint): clonglong {.header:headerFile, importcpp:"#.bounded(@)".} # Public
proc bounded*(this: ptr QRandomGenerator, lowest: cuint, highest: culonglong): culonglong {.header:headerFile, importcpp:"#.bounded(@)".} # Public
proc bounded*(this: ptr QRandomGenerator, lowest: culonglong, highest: cuint): culonglong {.header:headerFile, importcpp:"#.bounded(@)".} # Public
proc generate*(this: ptr QRandomGenerator, begin: ptr cuint, `end`: ptr cuint) {.header:headerFile, importcpp:"#.generate(@)".} # Public
# 1 default parameters!
proc seed*(this: ptr QRandomGenerator, s: cuint) {.header:headerFile, importcpp:"#.seed(@)".} # Public
proc seed*(this: ptr QRandomGenerator) {.header:headerFile, importcpp:"#.seed(@)".} # Public
proc `discard`*(this: ptr QRandomGenerator, z: culonglong) {.header:headerFile, importcpp:"#.discard(@)".} # Public
proc static_QRandomGenerator_min*(): cuint {.header:headerFile, importcpp:"QRandomGenerator::min(@)".} # Public static
proc static_QRandomGenerator_max*(): cuint {.header:headerFile, importcpp:"QRandomGenerator::max(@)".} # Public static
proc static_QRandomGenerator_system*(): ptr QRandomGenerator {.header:headerFile, importcpp:"QRandomGenerator::system(@)".} # Public static
proc static_QRandomGenerator_global*(): ptr QRandomGenerator {.header:headerFile, importcpp:"QRandomGenerator::global(@)".} # Public static
proc static_QRandomGenerator_securelySeeded*(): QRandomGenerator {.header:headerFile, importcpp:"QRandomGenerator::securelySeeded(@)".} # Public static
# Stuff for class QRandomGenerator64

# Public methods for QRandomGenerator64
proc generate*(this: ptr QRandomGenerator64): culonglong {.header:headerFile, importcpp:"#.generate(@)".} # Public

