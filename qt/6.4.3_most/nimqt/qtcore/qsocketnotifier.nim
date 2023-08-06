const headerFile* = "QtCore/qsocketnotifier.h"

type
    # Enums found in the C++ code
    # Global
    QSocketNotifier_Type* {.header:headerFile,importcpp:"QSocketNotifier::Type".} = enum Read = 0, Write = 0x1, Exception = 0x2

import nimqt/qtcore/qobject
type
    # Classes found in the C++ code
    QSocketNotifier* {.header:headerFile,importcpp:"QSocketNotifier" ,pure.} = object of QObject
    QSocketDescriptor* {.header:headerFile,importcpp:"QSocketDescriptor" ,pure,inheritable.} = object

# Stuff for class QSocketNotifier

# Public constructors for QSocketNotifier
# 1 default parameters!
proc newQSocketNotifier*(arg_0: QSocketNotifier_Type, parent: ptr QObject): ptr QSocketNotifier {. header:headerFile, importcpp:"new QSocketNotifier(@)" .} #
proc newQSocketNotifier*(arg_0: QSocketNotifier_Type): ptr QSocketNotifier {. header:headerFile, importcpp:"new QSocketNotifier(@)" .} #
# 1 default parameters!
proc newQSocketNotifier*(socket: cint, arg_1: QSocketNotifier_Type, parent: ptr QObject): ptr QSocketNotifier {. header:headerFile, importcpp:"new QSocketNotifier(@)" .} #
proc newQSocketNotifier*(socket: cint, arg_1: QSocketNotifier_Type): ptr QSocketNotifier {. header:headerFile, importcpp:"new QSocketNotifier(@)" .} #

# Public methods for QSocketNotifier
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QSocketNotifier_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QSocketNotifier::tr(@)".} # Public static
proc static_QSocketNotifier_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QSocketNotifier::tr(@)".} # Public static
proc setSocket*(this: ptr QSocketNotifier, socket: cint) {.header:headerFile, importcpp:"#.setSocket(@)".} # Public
proc socket*(this: ptr QSocketNotifier): cint {.header:headerFile, importcpp:"#.socket(@)".} # Public
proc `type`*(this: ptr QSocketNotifier): QSocketNotifier_Type {.header:headerFile, importcpp:"#.type(@)".} # Public
proc isValid*(this: ptr QSocketNotifier): bool {.header:headerFile, importcpp:"#.isValid(@)".} # Public
proc isEnabled*(this: ptr QSocketNotifier): bool {.header:headerFile, importcpp:"#.isEnabled(@)".} # Public
proc setEnabled*(this: ptr QSocketNotifier, arg_0: bool) {.header:headerFile, importcpp:"#.setEnabled(@)".} # Public

# Protected methods methods for QSocketNotifier
import nimqt/qtcore/qcoreevent
proc event*(this: ptr QSocketNotifier, arg_0: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Protected
# Stuff for class QSocketDescriptor

# Public constructors for QSocketDescriptor
proc newQSocketDescriptor*(desc: cint): QSocketDescriptor {. header:headerFile, importcpp:"QSocketDescriptor(@)", constructor .} #

# Public methods for QSocketDescriptor
proc isValid*(this: QSocketDescriptor): bool {.header:headerFile, importcpp:"#.isValid(@)".} # Public

export qstring
export qobject
export qcoreevent
