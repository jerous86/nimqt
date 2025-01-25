const headerFile* = "QtCore/qdebug.h"

type
    # Enums found in the C++ code
    # Global
    QDebug_VerbosityLevel* {.header:headerFile,importcpp:"QDebug::VerbosityLevel".} = enum MinimumVerbosity = 0, DefaultVerbosity = 0x2, MaximumVerbosity = 0x7

import nimqt/qtcore/qiodevicebase
type
    # Classes found in the C++ code
    QDebug* {.header:headerFile,importcpp:"QDebug" ,pure.} = object of QIODeviceBase
    QDebugStateSaver* {.header:headerFile,importcpp:"QDebugStateSaver" ,pure,inheritable.} = object
    QNoDebug* {.header:headerFile,importcpp:"QNoDebug" ,pure,inheritable.} = object


type
    # typedefs found in the C++ code
    QDebug_OpenModeFlag * = QIODeviceBase_OpenModeFlag
    QDebug_OpenMode * = QIODeviceBase_OpenMode

# Stuff for class QDebug

# Public constructors for QDebug
import nimqt/qtcore/qiodevice
proc newQDebug*(device: ptr QIODevice): ptr QDebug {. header:headerFile, importcpp:"new QDebug(@)" .} #
import nimqt/qtcore/qstring
proc newQDebug*(string: ptr QString): ptr QDebug {. header:headerFile, importcpp:"new QDebug(@)" .} #
import nimqt/qtcore/qlogging
proc newQDebug*(t: QtMsgType): ptr QDebug {. header:headerFile, importcpp:"new QDebug(@)" .} #
proc newQDebug*(o: QDebug): ptr QDebug {. header:headerFile, importcpp:"new QDebug(@)" .} #
proc newQDebug*(other: QDebug): ptr QDebug {. header:headerFile, importcpp:"new QDebug(@)" .} #

# Public methods for QDebug
proc swap*(this: ptr QDebug, other: QDebug) {.header:headerFile, importcpp:"#.swap(@)".} # Public
proc resetFormat*(this: ptr QDebug): QDebug {.header:headerFile, importcpp:"#.resetFormat(@)".} # Public
proc space*(this: ptr QDebug): QDebug {.header:headerFile, importcpp:"#.space(@)".} # Public
proc nospace*(this: ptr QDebug): QDebug {.header:headerFile, importcpp:"#.nospace(@)".} # Public
proc maybeSpace*(this: ptr QDebug): QDebug {.header:headerFile, importcpp:"#.maybeSpace(@)".} # Public
proc verbosity*(this: ptr QDebug, verbosityLevel: cint): QDebug {.header:headerFile, importcpp:"#.verbosity(@)".} # Public
proc verbosity*(this: ptr QDebug): cint {.header:headerFile, importcpp:"#.verbosity(@)".} # Public
proc setVerbosity*(this: ptr QDebug, verbosityLevel: cint) {.header:headerFile, importcpp:"#.setVerbosity(@)".} # Public
proc autoInsertSpaces*(this: ptr QDebug): bool {.header:headerFile, importcpp:"#.autoInsertSpaces(@)".} # Public
proc setAutoInsertSpaces*(this: ptr QDebug, b: bool) {.header:headerFile, importcpp:"#.setAutoInsertSpaces(@)".} # Public
proc quote*(this: ptr QDebug): QDebug {.header:headerFile, importcpp:"#.quote(@)".} # Public
proc noquote*(this: ptr QDebug): QDebug {.header:headerFile, importcpp:"#.noquote(@)".} # Public
proc maybeQuote*(this: ptr QDebug, c: char): QDebug {.header:headerFile, importcpp:"#.maybeQuote(@)".} # Public
import nimqt/qtcore/qchar
proc `<<`*(this: ptr QDebug, t: QChar): QDebug {.header:headerFile, importcpp:"#.operator<<(@)".} # Public
proc `<<`*(this: ptr QDebug, t: bool): QDebug {.header:headerFile, importcpp:"#.operator<<(@)".} # Public
proc `<<`*(this: ptr QDebug, t: char): QDebug {.header:headerFile, importcpp:"#.operator<<(@)".} # Public
proc `<<`*(this: ptr QDebug, t: cshort): QDebug {.header:headerFile, importcpp:"#.operator<<(@)".} # Public
proc `<<`*(this: ptr QDebug, t: cushort): QDebug {.header:headerFile, importcpp:"#.operator<<(@)".} # Public
proc `<<`*(this: ptr QDebug, t: cuint): QDebug {.header:headerFile, importcpp:"#.operator<<(@)".} # Public
proc `<<`*(this: ptr QDebug, t: cint): QDebug {.header:headerFile, importcpp:"#.operator<<(@)".} # Public
when (not defined(windows)):
    proc `<<`*(this: ptr QDebug, t: clong): QDebug {.header:headerFile, importcpp:"#.operator<<(@)".} # Public
when (not defined(windows)):
    proc `<<`*(this: ptr QDebug, t: culong): QDebug {.header:headerFile, importcpp:"#.operator<<(@)".} # Public
proc `<<`*(this: ptr QDebug, t: clonglong): QDebug {.header:headerFile, importcpp:"#.operator<<(@)".} # Public
proc `<<`*(this: ptr QDebug, t: culonglong): QDebug {.header:headerFile, importcpp:"#.operator<<(@)".} # Public
proc `<<`*(this: ptr QDebug, t: cfloat): QDebug {.header:headerFile, importcpp:"#.operator<<(@)".} # Public
proc `<<`*(this: ptr QDebug, t: cdouble): QDebug {.header:headerFile, importcpp:"#.operator<<(@)".} # Public
proc `<<`*(this: ptr QDebug, t: ptr char): QDebug {.header:headerFile, importcpp:"#.operator<<(@)".} # Public
proc `<<`*(this: ptr QDebug, t: ptr cushort): QDebug {.header:headerFile, importcpp:"#.operator<<(@)".} # Public
proc `<<`*(this: ptr QDebug, t: QString): QDebug {.header:headerFile, importcpp:"#.operator<<(@)".} # Public
import nimqt/qtcore/qbytearray
proc `<<`*(this: ptr QDebug, t: QByteArray): QDebug {.header:headerFile, importcpp:"#.operator<<(@)".} # Public
import nimqt/qtcore/qbytearrayview
proc `<<`*(this: ptr QDebug, t: QByteArrayView): QDebug {.header:headerFile, importcpp:"#.operator<<(@)".} # Public
proc `<<`*(this: ptr QDebug, t: ptr): QDebug {.header:headerFile, importcpp:"#.operator<<(@)".} # Public
# Stuff for class QDebugStateSaver

# Public constructors for QDebugStateSaver
proc newQDebugStateSaver*(dbg: QDebug): QDebugStateSaver {. header:headerFile, importcpp:"QDebugStateSaver(@)", constructor .} #
# Stuff for class QNoDebug

# Public methods for QNoDebug
proc space*(this: QNoDebug): QNoDebug {.header:headerFile, importcpp:"#.space(@)".} # Public
proc nospace*(this: QNoDebug): QNoDebug {.header:headerFile, importcpp:"#.nospace(@)".} # Public
proc maybeSpace*(this: QNoDebug): QNoDebug {.header:headerFile, importcpp:"#.maybeSpace(@)".} # Public
proc quote*(this: QNoDebug): QNoDebug {.header:headerFile, importcpp:"#.quote(@)".} # Public
proc noquote*(this: QNoDebug): QNoDebug {.header:headerFile, importcpp:"#.noquote(@)".} # Public
proc maybeQuote*(this: QNoDebug, arg_1: char): QNoDebug {.header:headerFile, importcpp:"#.maybeQuote(@)".} # Public
proc verbosity*(this: QNoDebug, arg_1: cint): QNoDebug {.header:headerFile, importcpp:"#.verbosity(@)".} # Public

export qbytearrayview
export qlogging
export qstring
export qiodevicebase
export qbytearray
export qchar
export qiodevice
