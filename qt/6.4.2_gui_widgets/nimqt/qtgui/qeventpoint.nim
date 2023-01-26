const headerFile* = "QtGui/qeventpoint.h"

# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}


type
    # Classes and enums found in the C++ code
    # Global
    QEventPoint_State* {.header:headerFile,importcpp:"QEventPoint::State".} = enum Unknown = 0, Stationary = 0x1, Pressed = 0x2, Updated = 0x3, 
        Released = 0x4
    QEventPoint* {.header:headerFile,importcpp:"QEventPoint" ,pure.} = object {.inheritable.}
{.push warning[Deprecated]: on.}
import nimqt/qtcore/qflags


type
    # typedefs found in the C++ code
    QEventPoint_States * = QFlags[QEventPoint_State]

# Stuff for class QEventPoint

# Public constructors for QEventPoint
import nimqt/qtgui/qpointingdevice
# 1 default parameters!
proc newQEventPoint*(id: cint, device: ptr QPointingDevice): QEventPoint {. header:headerFile, importcpp:"QEventPoint(@)", constructor .} #
proc newQEventPoint*(id: cint): QEventPoint {. header:headerFile, importcpp:"QEventPoint(@)", constructor .} #
proc newQEventPoint*(other: QEventPoint): QEventPoint {. header:headerFile, importcpp:"QEventPoint(@)", constructor .} #

# Public methods for QEventPoint
proc qt_check_for_QGADGET_macro*(this: QEventPoint) {.header:headerFile, importcpp:"#.qt_check_for_QGADGET_macro(@)".} # Public
proc `!=`*(this: QEventPoint, other: QEventPoint): bool {.header:headerFile, importcpp:"#.operator!=(@)".} # Public
proc swap*(this: QEventPoint, other: QEventPoint) {.header:headerFile, importcpp:"#.swap(@)".} # Public
import nimqt/qtgui/qvectornd
proc velocity*(this: QEventPoint): QVector2D {.header:headerFile, importcpp:"#.velocity(@)".} # Public
proc state*(this: QEventPoint): QEventPoint_State {.header:headerFile, importcpp:"#.state(@)".} # Public
proc device*(this: QEventPoint): ptr QPointingDevice {.header:headerFile, importcpp:"#.device(@)".} # Public
proc id*(this: QEventPoint): cint {.header:headerFile, importcpp:"#.id(@)".} # Public
proc uniqueId*(this: QEventPoint): QPointingDeviceUniqueId {.header:headerFile, importcpp:"#.uniqueId(@)".} # Public
proc timestamp*(this: QEventPoint): culong {.header:headerFile, importcpp:"#.timestamp(@)".} # Public
proc lastTimestamp*(this: QEventPoint): culong {.header:headerFile, importcpp:"#.lastTimestamp(@)".} # Public
proc pressTimestamp*(this: QEventPoint): culong {.header:headerFile, importcpp:"#.pressTimestamp(@)".} # Public
proc timeHeld*(this: QEventPoint): cfloat {.header:headerFile, importcpp:"#.timeHeld(@)".} # Public
proc pressure*(this: QEventPoint): cfloat {.header:headerFile, importcpp:"#.pressure(@)".} # Public
proc rotation*(this: QEventPoint): cfloat {.header:headerFile, importcpp:"#.rotation(@)".} # Public
proc isAccepted*(this: QEventPoint): bool {.header:headerFile, importcpp:"#.isAccepted(@)".} # Public
# 1 default parameters!
proc setAccepted*(this: QEventPoint, accepted: bool) {.header:headerFile, importcpp:"#.setAccepted(@)".} # Public
proc setAccepted*(this: QEventPoint) {.header:headerFile, importcpp:"#.setAccepted(@)".} # Public

export qvectornd
export qpointingdevice
export qflags