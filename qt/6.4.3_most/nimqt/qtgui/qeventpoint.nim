const headerFile* = "QtGui/qeventpoint.h"

type
    # Enums found in the C++ code
    # Global
    QEventPoint_State* {.header:headerFile,importcpp:"QEventPoint::State".} = enum Unknown = 0, Pressed = 0x1, Updated = 0x2, Stationary = 0x4, 
        Released = 0x8

type
    # Classes found in the C++ code
    QEventPoint* {.header:headerFile,importcpp:"QEventPoint" ,pure,inheritable.} = object
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
import nimqt/qtcore/qpoint
proc newQEventPoint*(pointId: cint, state: QEventPoint_State, scenePosition: QPointF, globalPosition: QPointF): QEventPoint {. header:headerFile, importcpp:"QEventPoint(@)", constructor .} #
proc newQEventPoint*(other: QEventPoint): QEventPoint {. header:headerFile, importcpp:"QEventPoint(@)", constructor .} #

# Public methods for QEventPoint
proc qt_check_for_QGADGET_macro*(this: QEventPoint) {.header:headerFile, importcpp:"#.qt_check_for_QGADGET_macro(@)".} # Public
proc `!=`*(this: QEventPoint, other: QEventPoint): bool {.header:headerFile, importcpp:"#.operator!=(@)".} # Public
proc swap*(this: QEventPoint, other: QEventPoint) {.header:headerFile, importcpp:"#.swap(@)".} # Public
proc position*(this: QEventPoint): QPointF {.header:headerFile, importcpp:"#.position(@)".} # Public
proc pressPosition*(this: QEventPoint): QPointF {.header:headerFile, importcpp:"#.pressPosition(@)".} # Public
proc grabPosition*(this: QEventPoint): QPointF {.header:headerFile, importcpp:"#.grabPosition(@)".} # Public
proc lastPosition*(this: QEventPoint): QPointF {.header:headerFile, importcpp:"#.lastPosition(@)".} # Public
proc scenePosition*(this: QEventPoint): QPointF {.header:headerFile, importcpp:"#.scenePosition(@)".} # Public
proc scenePressPosition*(this: QEventPoint): QPointF {.header:headerFile, importcpp:"#.scenePressPosition(@)".} # Public
proc sceneGrabPosition*(this: QEventPoint): QPointF {.header:headerFile, importcpp:"#.sceneGrabPosition(@)".} # Public
proc sceneLastPosition*(this: QEventPoint): QPointF {.header:headerFile, importcpp:"#.sceneLastPosition(@)".} # Public
proc globalPosition*(this: QEventPoint): QPointF {.header:headerFile, importcpp:"#.globalPosition(@)".} # Public
proc globalPressPosition*(this: QEventPoint): QPointF {.header:headerFile, importcpp:"#.globalPressPosition(@)".} # Public
proc globalGrabPosition*(this: QEventPoint): QPointF {.header:headerFile, importcpp:"#.globalGrabPosition(@)".} # Public
proc globalLastPosition*(this: QEventPoint): QPointF {.header:headerFile, importcpp:"#.globalLastPosition(@)".} # Public
proc normalizedPosition*(this: QEventPoint): QPointF {.header:headerFile, importcpp:"#.normalizedPosition(@)".} # Public
proc pos*(this: QEventPoint): QPointF {.header:headerFile, importcpp:"#.pos(@)".} # Public
proc startPos*(this: QEventPoint): QPointF {.header:headerFile, importcpp:"#.startPos(@)".} # Public
proc scenePos*(this: QEventPoint): QPointF {.header:headerFile, importcpp:"#.scenePos(@)".} # Public
proc startScenePos*(this: QEventPoint): QPointF {.header:headerFile, importcpp:"#.startScenePos(@)".} # Public
proc screenPos*(this: QEventPoint): QPointF {.header:headerFile, importcpp:"#.screenPos(@)".} # Public
proc startScreenPos*(this: QEventPoint): QPointF {.header:headerFile, importcpp:"#.startScreenPos(@)".} # Public
proc startNormalizedPos*(this: QEventPoint): QPointF {.header:headerFile, importcpp:"#.startNormalizedPos(@)".} # Public
proc normalizedPos*(this: QEventPoint): QPointF {.header:headerFile, importcpp:"#.normalizedPos(@)".} # Public
proc lastPos*(this: QEventPoint): QPointF {.header:headerFile, importcpp:"#.lastPos(@)".} # Public
proc lastScenePos*(this: QEventPoint): QPointF {.header:headerFile, importcpp:"#.lastScenePos(@)".} # Public
proc lastScreenPos*(this: QEventPoint): QPointF {.header:headerFile, importcpp:"#.lastScreenPos(@)".} # Public
proc lastNormalizedPos*(this: QEventPoint): QPointF {.header:headerFile, importcpp:"#.lastNormalizedPos(@)".} # Public
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
import nimqt/qtcore/qsize
proc ellipseDiameters*(this: QEventPoint): QSizeF {.header:headerFile, importcpp:"#.ellipseDiameters(@)".} # Public
proc isAccepted*(this: QEventPoint): bool {.header:headerFile, importcpp:"#.isAccepted(@)".} # Public
# 1 default parameters!
proc setAccepted*(this: QEventPoint, accepted: bool) {.header:headerFile, importcpp:"#.setAccepted(@)".} # Public
proc setAccepted*(this: QEventPoint) {.header:headerFile, importcpp:"#.setAccepted(@)".} # Public

export qvectornd
export qsize
export qpointingdevice
export qpoint
export qflags
