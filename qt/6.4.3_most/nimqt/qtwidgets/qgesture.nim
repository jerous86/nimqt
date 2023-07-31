const headerFile* = "QtWidgets/qgesture.h"

type
    # Enums found in the C++ code
    # Global
    QGesture_GestureCancelPolicy* {.header:headerFile,importcpp:"QGesture::GestureCancelPolicy".} = enum CancelNone = 0, CancelAllInContext = 0x1
    QPinchGesture_ChangeFlag* {.header:headerFile,importcpp:"QPinchGesture::ChangeFlag".} = enum ScaleFactorChanged = 0x1, RotationAngleChanged = 0x2, CenterPointChanged = 0x4
    QSwipeGesture_SwipeDirection* {.header:headerFile,importcpp:"QSwipeGesture::SwipeDirection".} = enum NoDirection = 0, Left = 0x1, Right = 0x2, Up = 0x3, 
        Down = 0x4

import nimqt/qtcore/qobject
import nimqt/qtcore/qcoreevent
type
    # Classes found in the C++ code
    QGesture* {.header:headerFile,importcpp:"QGesture" ,pure.} = object of QObject
    QPanGesture* {.header:headerFile,importcpp:"QPanGesture" ,pure.} = object of QGesture
    QPinchGesture* {.header:headerFile,importcpp:"QPinchGesture" ,pure.} = object of QGesture
    QSwipeGesture* {.header:headerFile,importcpp:"QSwipeGesture" ,pure.} = object of QGesture
    QTapGesture* {.header:headerFile,importcpp:"QTapGesture" ,pure.} = object of QGesture
    QTapAndHoldGesture* {.header:headerFile,importcpp:"QTapAndHoldGesture" ,pure.} = object of QGesture
    QGestureEvent* {.header:headerFile,importcpp:"QGestureEvent" ,pure.} = object of QEvent
import nimqt/qtcore/qflags


type
    # typedefs found in the C++ code
    QPanGesture_GestureCancelPolicy * = QGesture_GestureCancelPolicy
    QPinchGesture_GestureCancelPolicy * = QGesture_GestureCancelPolicy
    QSwipeGesture_GestureCancelPolicy * = QGesture_GestureCancelPolicy
    QTapGesture_GestureCancelPolicy * = QGesture_GestureCancelPolicy
    QTapAndHoldGesture_GestureCancelPolicy * = QGesture_GestureCancelPolicy
    QGestureEvent_Type * = QEvent_Type
    QPinchGesture_ChangeFlags * = QFlags[QPinchGesture_ChangeFlag]

# Stuff for class QGesture

# Public constructors for QGesture
# 1 default parameters!
proc newQGesture*(parent: ptr QObject): ptr QGesture {. header:headerFile, importcpp:"new QGesture(@)" .} #
proc newQGesture*(): ptr QGesture {. header:headerFile, importcpp:"new QGesture(@)" .} #

# Public methods for QGesture
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QGesture_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QGesture::tr(@)".} # Public static
proc static_QGesture_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QGesture::tr(@)".} # Public static
import nimqt/qtcore/qnamespace
proc gestureType*(this: ptr QGesture): Qt_GestureType {.header:headerFile, importcpp:"#.gestureType(@)".} # Public
proc state*(this: ptr QGesture): Qt_GestureState {.header:headerFile, importcpp:"#.state(@)".} # Public
import nimqt/qtcore/qpoint
proc hotSpot*(this: ptr QGesture): QPointF {.header:headerFile, importcpp:"#.hotSpot(@)".} # Public
proc setHotSpot*(this: ptr QGesture, value: QPointF) {.header:headerFile, importcpp:"#.setHotSpot(@)".} # Public
proc hasHotSpot*(this: ptr QGesture): bool {.header:headerFile, importcpp:"#.hasHotSpot(@)".} # Public
proc unsetHotSpot*(this: ptr QGesture) {.header:headerFile, importcpp:"#.unsetHotSpot(@)".} # Public
proc setGestureCancelPolicy*(this: ptr QGesture, policy: QGesture_GestureCancelPolicy) {.header:headerFile, importcpp:"#.setGestureCancelPolicy(@)".} # Public
proc gestureCancelPolicy*(this: ptr QGesture): QGesture_GestureCancelPolicy {.header:headerFile, importcpp:"#.gestureCancelPolicy(@)".} # Public
# Stuff for class QPanGesture

# Public constructors for QPanGesture
# 1 default parameters!
proc newQPanGesture*(parent: ptr QObject): ptr QPanGesture {. header:headerFile, importcpp:"new QPanGesture(@)" .} #
proc newQPanGesture*(): ptr QPanGesture {. header:headerFile, importcpp:"new QPanGesture(@)" .} #

# Public methods for QPanGesture
# 1 default parameters!
proc static_QPanGesture_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QPanGesture::tr(@)".} # Public static
proc static_QPanGesture_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QPanGesture::tr(@)".} # Public static
proc lastOffset*(this: ptr QPanGesture): QPointF {.header:headerFile, importcpp:"#.lastOffset(@)".} # Public
proc offset*(this: ptr QPanGesture): QPointF {.header:headerFile, importcpp:"#.offset(@)".} # Public
proc delta*(this: ptr QPanGesture): QPointF {.header:headerFile, importcpp:"#.delta(@)".} # Public
proc acceleration*(this: ptr QPanGesture): cfloat {.header:headerFile, importcpp:"#.acceleration(@)".} # Public
proc setLastOffset*(this: ptr QPanGesture, value: QPointF) {.header:headerFile, importcpp:"#.setLastOffset(@)".} # Public
proc setOffset*(this: ptr QPanGesture, value: QPointF) {.header:headerFile, importcpp:"#.setOffset(@)".} # Public
proc setAcceleration*(this: ptr QPanGesture, value: cfloat) {.header:headerFile, importcpp:"#.setAcceleration(@)".} # Public
# Stuff for class QPinchGesture

# Public constructors for QPinchGesture
# 1 default parameters!
proc newQPinchGesture*(parent: ptr QObject): ptr QPinchGesture {. header:headerFile, importcpp:"new QPinchGesture(@)" .} #
proc newQPinchGesture*(): ptr QPinchGesture {. header:headerFile, importcpp:"new QPinchGesture(@)" .} #

# Public methods for QPinchGesture
# 1 default parameters!
proc static_QPinchGesture_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QPinchGesture::tr(@)".} # Public static
proc static_QPinchGesture_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QPinchGesture::tr(@)".} # Public static
proc totalChangeFlags*(this: ptr QPinchGesture): QFlags[QPinchGesture_ChangeFlag] {.header:headerFile, importcpp:"#.totalChangeFlags(@)".} # Public
proc setTotalChangeFlags*(this: ptr QPinchGesture, value: QFlags[QPinchGesture_ChangeFlag]) {.header:headerFile, importcpp:"#.setTotalChangeFlags(@)".} # Public
proc changeFlags*(this: ptr QPinchGesture): QFlags[QPinchGesture_ChangeFlag] {.header:headerFile, importcpp:"#.changeFlags(@)".} # Public
proc setChangeFlags*(this: ptr QPinchGesture, value: QFlags[QPinchGesture_ChangeFlag]) {.header:headerFile, importcpp:"#.setChangeFlags(@)".} # Public
proc startCenterPoint*(this: ptr QPinchGesture): QPointF {.header:headerFile, importcpp:"#.startCenterPoint(@)".} # Public
proc lastCenterPoint*(this: ptr QPinchGesture): QPointF {.header:headerFile, importcpp:"#.lastCenterPoint(@)".} # Public
proc centerPoint*(this: ptr QPinchGesture): QPointF {.header:headerFile, importcpp:"#.centerPoint(@)".} # Public
proc setStartCenterPoint*(this: ptr QPinchGesture, value: QPointF) {.header:headerFile, importcpp:"#.setStartCenterPoint(@)".} # Public
proc setLastCenterPoint*(this: ptr QPinchGesture, value: QPointF) {.header:headerFile, importcpp:"#.setLastCenterPoint(@)".} # Public
proc setCenterPoint*(this: ptr QPinchGesture, value: QPointF) {.header:headerFile, importcpp:"#.setCenterPoint(@)".} # Public
proc totalScaleFactor*(this: ptr QPinchGesture): cfloat {.header:headerFile, importcpp:"#.totalScaleFactor(@)".} # Public
proc lastScaleFactor*(this: ptr QPinchGesture): cfloat {.header:headerFile, importcpp:"#.lastScaleFactor(@)".} # Public
proc scaleFactor*(this: ptr QPinchGesture): cfloat {.header:headerFile, importcpp:"#.scaleFactor(@)".} # Public
proc setTotalScaleFactor*(this: ptr QPinchGesture, value: cfloat) {.header:headerFile, importcpp:"#.setTotalScaleFactor(@)".} # Public
proc setLastScaleFactor*(this: ptr QPinchGesture, value: cfloat) {.header:headerFile, importcpp:"#.setLastScaleFactor(@)".} # Public
proc setScaleFactor*(this: ptr QPinchGesture, value: cfloat) {.header:headerFile, importcpp:"#.setScaleFactor(@)".} # Public
proc totalRotationAngle*(this: ptr QPinchGesture): cfloat {.header:headerFile, importcpp:"#.totalRotationAngle(@)".} # Public
proc lastRotationAngle*(this: ptr QPinchGesture): cfloat {.header:headerFile, importcpp:"#.lastRotationAngle(@)".} # Public
proc rotationAngle*(this: ptr QPinchGesture): cfloat {.header:headerFile, importcpp:"#.rotationAngle(@)".} # Public
proc setTotalRotationAngle*(this: ptr QPinchGesture, value: cfloat) {.header:headerFile, importcpp:"#.setTotalRotationAngle(@)".} # Public
proc setLastRotationAngle*(this: ptr QPinchGesture, value: cfloat) {.header:headerFile, importcpp:"#.setLastRotationAngle(@)".} # Public
proc setRotationAngle*(this: ptr QPinchGesture, value: cfloat) {.header:headerFile, importcpp:"#.setRotationAngle(@)".} # Public
# Stuff for class QSwipeGesture

# Public constructors for QSwipeGesture
# 1 default parameters!
proc newQSwipeGesture*(parent: ptr QObject): ptr QSwipeGesture {. header:headerFile, importcpp:"new QSwipeGesture(@)" .} #
proc newQSwipeGesture*(): ptr QSwipeGesture {. header:headerFile, importcpp:"new QSwipeGesture(@)" .} #

# Public methods for QSwipeGesture
# 1 default parameters!
proc static_QSwipeGesture_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QSwipeGesture::tr(@)".} # Public static
proc static_QSwipeGesture_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QSwipeGesture::tr(@)".} # Public static
proc horizontalDirection*(this: ptr QSwipeGesture): QSwipeGesture_SwipeDirection {.header:headerFile, importcpp:"#.horizontalDirection(@)".} # Public
proc verticalDirection*(this: ptr QSwipeGesture): QSwipeGesture_SwipeDirection {.header:headerFile, importcpp:"#.verticalDirection(@)".} # Public
proc swipeAngle*(this: ptr QSwipeGesture): cfloat {.header:headerFile, importcpp:"#.swipeAngle(@)".} # Public
proc setSwipeAngle*(this: ptr QSwipeGesture, value: cfloat) {.header:headerFile, importcpp:"#.setSwipeAngle(@)".} # Public
# Stuff for class QTapGesture

# Public constructors for QTapGesture
# 1 default parameters!
proc newQTapGesture*(parent: ptr QObject): ptr QTapGesture {. header:headerFile, importcpp:"new QTapGesture(@)" .} #
proc newQTapGesture*(): ptr QTapGesture {. header:headerFile, importcpp:"new QTapGesture(@)" .} #

# Public methods for QTapGesture
# 1 default parameters!
proc static_QTapGesture_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QTapGesture::tr(@)".} # Public static
proc static_QTapGesture_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QTapGesture::tr(@)".} # Public static
proc position*(this: ptr QTapGesture): QPointF {.header:headerFile, importcpp:"#.position(@)".} # Public
proc setPosition*(this: ptr QTapGesture, pos: QPointF) {.header:headerFile, importcpp:"#.setPosition(@)".} # Public
# Stuff for class QTapAndHoldGesture

# Public constructors for QTapAndHoldGesture
# 1 default parameters!
proc newQTapAndHoldGesture*(parent: ptr QObject): ptr QTapAndHoldGesture {. header:headerFile, importcpp:"new QTapAndHoldGesture(@)" .} #
proc newQTapAndHoldGesture*(): ptr QTapAndHoldGesture {. header:headerFile, importcpp:"new QTapAndHoldGesture(@)" .} #

# Public methods for QTapAndHoldGesture
# 1 default parameters!
proc static_QTapAndHoldGesture_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QTapAndHoldGesture::tr(@)".} # Public static
proc static_QTapAndHoldGesture_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QTapAndHoldGesture::tr(@)".} # Public static
proc position*(this: ptr QTapAndHoldGesture): QPointF {.header:headerFile, importcpp:"#.position(@)".} # Public
proc setPosition*(this: ptr QTapAndHoldGesture, pos: QPointF) {.header:headerFile, importcpp:"#.setPosition(@)".} # Public
proc static_QTapAndHoldGesture_setTimeout*(msecs: cint) {.header:headerFile, importcpp:"QTapAndHoldGesture::setTimeout(@)".} # Public static
proc static_QTapAndHoldGesture_timeout*(): cint {.header:headerFile, importcpp:"QTapAndHoldGesture::timeout(@)".} # Public static
# Stuff for class QGestureEvent

# Public constructors for QGestureEvent
import nimqt/qtcore/qlist
proc newQGestureEvent*(gestures: QList[ptr QGesture]): ptr QGestureEvent {. header:headerFile, importcpp:"new QGestureEvent(@)" .} #

# Public methods for QGestureEvent
proc gestures*(this: ptr QGestureEvent): QList[ptr QGesture] {.header:headerFile, importcpp:"#.gestures(@)".} # Public
proc gesture*(this: ptr QGestureEvent, `type`: Qt_GestureType): ptr QGesture {.header:headerFile, importcpp:"#.gesture(@)".} # Public
proc activeGestures*(this: ptr QGestureEvent): QList[ptr QGesture] {.header:headerFile, importcpp:"#.activeGestures(@)".} # Public
proc canceledGestures*(this: ptr QGestureEvent): QList[ptr QGesture] {.header:headerFile, importcpp:"#.canceledGestures(@)".} # Public
proc setAccepted*(this: ptr QGestureEvent, arg_0: ptr QGesture, arg_1: bool) {.header:headerFile, importcpp:"#.setAccepted(@)".} # Public
proc accept*(this: ptr QGestureEvent, arg_0: ptr QGesture) {.header:headerFile, importcpp:"#.accept(@)".} # Public
proc ignore*(this: ptr QGestureEvent, arg_0: ptr QGesture) {.header:headerFile, importcpp:"#.ignore(@)".} # Public
proc isAccepted*(this: ptr QGestureEvent, arg_0: ptr QGesture): bool {.header:headerFile, importcpp:"#.isAccepted(@)".} # Public
proc setAccepted*(this: ptr QGestureEvent, arg_0: Qt_GestureType, arg_1: bool) {.header:headerFile, importcpp:"#.setAccepted(@)".} # Public
proc accept*(this: ptr QGestureEvent, arg_0: Qt_GestureType) {.header:headerFile, importcpp:"#.accept(@)".} # Public
proc ignore*(this: ptr QGestureEvent, arg_0: Qt_GestureType) {.header:headerFile, importcpp:"#.ignore(@)".} # Public
proc isAccepted*(this: ptr QGestureEvent, arg_0: Qt_GestureType): bool {.header:headerFile, importcpp:"#.isAccepted(@)".} # Public
import nimqt/qtwidgets/qwidget
proc setWidget*(this: ptr QGestureEvent, widget: ptr QWidget) {.header:headerFile, importcpp:"#.setWidget(@)".} # Public
proc widget*(this: ptr QGestureEvent): ptr QWidget {.header:headerFile, importcpp:"#.widget(@)".} # Public
proc mapToGraphicsScene*(this: ptr QGestureEvent, gesturePoint: QPointF): QPointF {.header:headerFile, importcpp:"#.mapToGraphicsScene(@)".} # Public

export qstring
export qnamespace
export qlist
export qpoint
export qwidget
export qflags
export qobject
export qcoreevent
