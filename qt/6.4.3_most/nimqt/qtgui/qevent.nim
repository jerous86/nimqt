const headerFile* = "QtGui/qevent.h"

type
    # Enums found in the C++ code
    # Global
    QContextMenuEvent_Reason* {.header:headerFile,importcpp:"QContextMenuEvent::Reason".} = enum Mouse = 0, Keyboard = 0x1, Other = 0x2
    QInputMethodEvent_AttributeType* {.header:headerFile,importcpp:"QInputMethodEvent::AttributeType".} = enum TextFormat = 0, Cursor = 0x1, Language = 0x2, Ruby = 0x3, 
        Selection = 0x4
    QScrollEvent_ScrollState* {.header:headerFile,importcpp:"QScrollEvent::ScrollState".} = enum ScrollStarted = 0, ScrollUpdated = 0x1, ScrollFinished = 0x2

import nimqt/qtcore/qcoreevent
type
    # Classes found in the C++ code
    QInputEvent* {.header:headerFile,importcpp:"QInputEvent" ,pure.} = object of QEvent
    QPointerEvent* {.header:headerFile,importcpp:"QPointerEvent" ,pure.} = object of QInputEvent
    QSinglePointEvent* {.header:headerFile,importcpp:"QSinglePointEvent" ,pure.} = object of QPointerEvent
    QEnterEvent* {.header:headerFile,importcpp:"QEnterEvent" ,pure.} = object of QSinglePointEvent
    QMouseEvent* {.header:headerFile,importcpp:"QMouseEvent" ,pure.} = object of QSinglePointEvent
    QHoverEvent* {.header:headerFile,importcpp:"QHoverEvent" ,pure.} = object of QSinglePointEvent
    QWheelEvent* {.header:headerFile,importcpp:"QWheelEvent" ,pure.} = object of QSinglePointEvent
    QTabletEvent* {.header:headerFile,importcpp:"QTabletEvent" ,pure.} = object of QSinglePointEvent
    QNativeGestureEvent* {.header:headerFile,importcpp:"QNativeGestureEvent" ,pure.} = object of QSinglePointEvent
    QKeyEvent* {.header:headerFile,importcpp:"QKeyEvent" ,pure.} = object of QInputEvent
    QFocusEvent* {.header:headerFile,importcpp:"QFocusEvent" ,pure.} = object of QEvent
    QPaintEvent* {.header:headerFile,importcpp:"QPaintEvent" ,pure.} = object of QEvent
    QMoveEvent* {.header:headerFile,importcpp:"QMoveEvent" ,pure.} = object of QEvent
    QExposeEvent* {.header:headerFile,importcpp:"QExposeEvent" ,pure.} = object of QEvent
    QResizeEvent* {.header:headerFile,importcpp:"QResizeEvent" ,pure.} = object of QEvent
    QCloseEvent* {.header:headerFile,importcpp:"QCloseEvent" ,pure.} = object of QEvent
    QIconDragEvent* {.header:headerFile,importcpp:"QIconDragEvent" ,pure.} = object of QEvent
    QShowEvent* {.header:headerFile,importcpp:"QShowEvent" ,pure.} = object of QEvent
    QHideEvent* {.header:headerFile,importcpp:"QHideEvent" ,pure.} = object of QEvent
    QContextMenuEvent* {.header:headerFile,importcpp:"QContextMenuEvent" ,pure.} = object of QInputEvent
    QInputMethodEvent* {.header:headerFile,importcpp:"QInputMethodEvent" ,pure.} = object of QEvent
    QInputMethodEvent_Attribute* {.header:headerFile,importcpp:"QInputMethodEvent::Attribute" ,pure,inheritable.} = object
    QInputMethodQueryEvent* {.header:headerFile,importcpp:"QInputMethodQueryEvent" ,pure.} = object of QEvent
    QDropEvent* {.header:headerFile,importcpp:"QDropEvent" ,pure.} = object of QEvent
    QDragMoveEvent* {.header:headerFile,importcpp:"QDragMoveEvent" ,pure.} = object of QDropEvent
    QDragEnterEvent* {.header:headerFile,importcpp:"QDragEnterEvent" ,pure.} = object of QDragMoveEvent
    QDragLeaveEvent* {.header:headerFile,importcpp:"QDragLeaveEvent" ,pure.} = object of QEvent
    QHelpEvent* {.header:headerFile,importcpp:"QHelpEvent" ,pure.} = object of QEvent
    QStatusTipEvent* {.header:headerFile,importcpp:"QStatusTipEvent" ,pure.} = object of QEvent
    QWhatsThisClickedEvent* {.header:headerFile,importcpp:"QWhatsThisClickedEvent" ,pure.} = object of QEvent
    QActionEvent* {.header:headerFile,importcpp:"QActionEvent" ,pure.} = object of QEvent
    QFileOpenEvent* {.header:headerFile,importcpp:"QFileOpenEvent" ,pure.} = object of QEvent
    QToolBarChangeEvent* {.header:headerFile,importcpp:"QToolBarChangeEvent" ,pure.} = object of QEvent
    QShortcutEvent* {.header:headerFile,importcpp:"QShortcutEvent" ,pure.} = object of QEvent
    QWindowStateChangeEvent* {.header:headerFile,importcpp:"QWindowStateChangeEvent" ,pure.} = object of QEvent
    QTouchEvent* {.header:headerFile,importcpp:"QTouchEvent" ,pure.} = object of QPointerEvent
    QScrollPrepareEvent* {.header:headerFile,importcpp:"QScrollPrepareEvent" ,pure.} = object of QEvent
    QScrollEvent* {.header:headerFile,importcpp:"QScrollEvent" ,pure.} = object of QEvent
    QScreenOrientationChangeEvent* {.header:headerFile,importcpp:"QScreenOrientationChangeEvent" ,pure.} = object of QEvent
    QApplicationStateChangeEvent* {.header:headerFile,importcpp:"QApplicationStateChangeEvent" ,pure.} = object of QEvent
import nimqt/qtgui/qeventpoint


type
    # typedefs found in the C++ code
    QInputEvent_Type * = QEvent_Type
    QPointerEvent_Type * = QEvent_Type
    QSinglePointEvent_Type * = QEvent_Type
    QEnterEvent_Type * = QEvent_Type
    QMouseEvent_Type * = QEvent_Type
    QHoverEvent_Type * = QEvent_Type
    QWheelEvent_Type * = QEvent_Type
    QTabletEvent_Type * = QEvent_Type
    QNativeGestureEvent_Type * = QEvent_Type
    QKeyEvent_Type * = QEvent_Type
    QFocusEvent_Type * = QEvent_Type
    QPaintEvent_Type * = QEvent_Type
    QMoveEvent_Type * = QEvent_Type
    QExposeEvent_Type * = QEvent_Type
    QResizeEvent_Type * = QEvent_Type
    QCloseEvent_Type * = QEvent_Type
    QIconDragEvent_Type * = QEvent_Type
    QShowEvent_Type * = QEvent_Type
    QHideEvent_Type * = QEvent_Type
    QContextMenuEvent_Type * = QEvent_Type
    QInputMethodEvent_Type * = QEvent_Type
    QInputMethodQueryEvent_Type * = QEvent_Type
    QDropEvent_Type * = QEvent_Type
    QDragMoveEvent_Type * = QEvent_Type
    QDragEnterEvent_Type * = QEvent_Type
    QDragLeaveEvent_Type * = QEvent_Type
    QHelpEvent_Type * = QEvent_Type
    QStatusTipEvent_Type * = QEvent_Type
    QWhatsThisClickedEvent_Type * = QEvent_Type
    QActionEvent_Type * = QEvent_Type
    QFileOpenEvent_Type * = QEvent_Type
    QToolBarChangeEvent_Type * = QEvent_Type
    QShortcutEvent_Type * = QEvent_Type
    QWindowStateChangeEvent_Type * = QEvent_Type
    QTouchEvent_Type * = QEvent_Type
    QScrollPrepareEvent_Type * = QEvent_Type
    QScrollEvent_Type * = QEvent_Type
    QScreenOrientationChangeEvent_Type * = QEvent_Type
    QApplicationStateChangeEvent_Type * = QEvent_Type
    QTouchEvent_TouchPoint * = QEventPoint

# Consts
const
    # Global
    QWheelEvent_DefaultDeltasPerStep* = 120 # from anonymous enum DefaultDeltasPerStep

# Stuff for class QInputEvent

# Public constructors for QInputEvent
import nimqt/qtgui/qinputdevice
import nimqt/qtcore/qnamespace
# 1 default parameters!
proc newQInputEvent*(`type`: QEvent_Type, m_dev: ptr QInputDevice, modifiers: Qt_KeyboardModifiers): ptr QInputEvent {. header:headerFile, importcpp:"new QInputEvent(@)" .} #
proc newQInputEvent*(`type`: QEvent_Type, m_dev: ptr QInputDevice): ptr QInputEvent {. header:headerFile, importcpp:"new QInputEvent(@)" .} #

# Public methods for QInputEvent
proc clone*(this: ptr QInputEvent): ptr QInputEvent {.header:headerFile, importcpp:"#.clone(@)".} # Public
proc device*(this: ptr QInputEvent): ptr QInputDevice {.header:headerFile, importcpp:"#.device(@)".} # Public
proc deviceType*(this: ptr QInputEvent): QInputDevice_DeviceType {.header:headerFile, importcpp:"#.deviceType(@)".} # Public
proc modifiers*(this: ptr QInputEvent): Qt_KeyboardModifiers {.header:headerFile, importcpp:"#.modifiers(@)".} # Public
proc setModifiers*(this: ptr QInputEvent, modifiers: Qt_KeyboardModifiers) {.header:headerFile, importcpp:"#.setModifiers(@)".} # Public
proc timestamp*(this: ptr QInputEvent): culonglong {.header:headerFile, importcpp:"#.timestamp(@)".} # Public
proc setTimestamp*(this: ptr QInputEvent, timestamp: culonglong) {.header:headerFile, importcpp:"#.setTimestamp(@)".} # Public
# Stuff for class QPointerEvent

# Public constructors for QPointerEvent
import nimqt/qtcore/qlist
import nimqt/qtgui/qpointingdevice
# 2 default parameters!
proc newQPointerEvent*(`type`: QEvent_Type, dev: ptr QPointingDevice, modifiers: Qt_KeyboardModifiers, points: QList[QEventPoint]): ptr QPointerEvent {. header:headerFile, importcpp:"new QPointerEvent(@)" .} #
proc newQPointerEvent*(`type`: QEvent_Type, dev: ptr QPointingDevice, modifiers: Qt_KeyboardModifiers): ptr QPointerEvent {. header:headerFile, importcpp:"new QPointerEvent(@)" .} #
proc newQPointerEvent*(`type`: QEvent_Type, dev: ptr QPointingDevice): ptr QPointerEvent {. header:headerFile, importcpp:"new QPointerEvent(@)" .} #

# Public methods for QPointerEvent
proc clone*(this: ptr QPointerEvent): ptr QPointerEvent {.header:headerFile, importcpp:"#.clone(@)".} # Public
proc pointingDevice*(this: ptr QPointerEvent): ptr QPointingDevice {.header:headerFile, importcpp:"#.pointingDevice(@)".} # Public
proc pointerType*(this: ptr QPointerEvent): QPointingDevice_PointerType {.header:headerFile, importcpp:"#.pointerType(@)".} # Public
proc setTimestamp*(this: ptr QPointerEvent, timestamp: culonglong) {.header:headerFile, importcpp:"#.setTimestamp(@)".} # Public
proc pointCount*(this: ptr QPointerEvent): cint {.header:headerFile, importcpp:"#.pointCount(@)".} # Public
proc point*(this: ptr QPointerEvent, i: cint): QEventPoint {.header:headerFile, importcpp:"#.point(@)".} # Public
proc points*(this: ptr QPointerEvent): QList[QEventPoint] {.header:headerFile, importcpp:"#.points(@)".} # Public
proc pointById*(this: ptr QPointerEvent, id: cint): ptr QEventPoint {.header:headerFile, importcpp:"#.pointById(@)".} # Public
proc allPointsGrabbed*(this: ptr QPointerEvent): bool {.header:headerFile, importcpp:"#.allPointsGrabbed(@)".} # Public
proc isBeginEvent*(this: ptr QPointerEvent): bool {.header:headerFile, importcpp:"#.isBeginEvent(@)".} # Public
proc isUpdateEvent*(this: ptr QPointerEvent): bool {.header:headerFile, importcpp:"#.isUpdateEvent(@)".} # Public
proc isEndEvent*(this: ptr QPointerEvent): bool {.header:headerFile, importcpp:"#.isEndEvent(@)".} # Public
proc allPointsAccepted*(this: ptr QPointerEvent): bool {.header:headerFile, importcpp:"#.allPointsAccepted(@)".} # Public
proc setAccepted*(this: ptr QPointerEvent, accepted: bool) {.header:headerFile, importcpp:"#.setAccepted(@)".} # Public
import nimqt/qtcore/qobject
proc exclusiveGrabber*(this: ptr QPointerEvent, point: QEventPoint): ptr QObject {.header:headerFile, importcpp:"#.exclusiveGrabber(@)".} # Public
proc setExclusiveGrabber*(this: ptr QPointerEvent, point: QEventPoint, exclusiveGrabber: ptr QObject) {.header:headerFile, importcpp:"#.setExclusiveGrabber(@)".} # Public
import nimqt/qtcore/qpointer
proc passiveGrabbers*(this: ptr QPointerEvent, point: QEventPoint): QList[QPointer[QObject]] {.header:headerFile, importcpp:"#.passiveGrabbers(@)".} # Public
proc clearPassiveGrabbers*(this: ptr QPointerEvent, point: QEventPoint) {.header:headerFile, importcpp:"#.clearPassiveGrabbers(@)".} # Public
proc addPassiveGrabber*(this: ptr QPointerEvent, point: QEventPoint, grabber: ptr QObject): bool {.header:headerFile, importcpp:"#.addPassiveGrabber(@)".} # Public
proc removePassiveGrabber*(this: ptr QPointerEvent, point: QEventPoint, grabber: ptr QObject): bool {.header:headerFile, importcpp:"#.removePassiveGrabber(@)".} # Public
# Stuff for class QSinglePointEvent

# Public methods for QSinglePointEvent
proc qt_check_for_QGADGET_macro*(this: ptr QSinglePointEvent) {.header:headerFile, importcpp:"#.qt_check_for_QGADGET_macro(@)".} # Public
proc clone*(this: ptr QSinglePointEvent): ptr QSinglePointEvent {.header:headerFile, importcpp:"#.clone(@)".} # Public
proc button*(this: ptr QSinglePointEvent): Qt_MouseButton {.header:headerFile, importcpp:"#.button(@)".} # Public
proc buttons*(this: ptr QSinglePointEvent): Qt_MouseButtons {.header:headerFile, importcpp:"#.buttons(@)".} # Public
import nimqt/qtcore/qpoint
proc position*(this: ptr QSinglePointEvent): QPointF {.header:headerFile, importcpp:"#.position(@)".} # Public
proc scenePosition*(this: ptr QSinglePointEvent): QPointF {.header:headerFile, importcpp:"#.scenePosition(@)".} # Public
proc globalPosition*(this: ptr QSinglePointEvent): QPointF {.header:headerFile, importcpp:"#.globalPosition(@)".} # Public
proc isBeginEvent*(this: ptr QSinglePointEvent): bool {.header:headerFile, importcpp:"#.isBeginEvent(@)".} # Public
proc isUpdateEvent*(this: ptr QSinglePointEvent): bool {.header:headerFile, importcpp:"#.isUpdateEvent(@)".} # Public
proc isEndEvent*(this: ptr QSinglePointEvent): bool {.header:headerFile, importcpp:"#.isEndEvent(@)".} # Public
proc exclusivePointGrabber*(this: ptr QSinglePointEvent): ptr QObject {.header:headerFile, importcpp:"#.exclusivePointGrabber(@)".} # Public
proc setExclusivePointGrabber*(this: ptr QSinglePointEvent, exclusiveGrabber: ptr QObject) {.header:headerFile, importcpp:"#.setExclusivePointGrabber(@)".} # Public
# Stuff for class QEnterEvent

# Public constructors for QEnterEvent
# 1 default parameters!
proc newQEnterEvent*(localPos: QPointF, scenePos: QPointF, globalPos: QPointF, device: ptr QPointingDevice): ptr QEnterEvent {. header:headerFile, importcpp:"new QEnterEvent(@)" .} #
proc newQEnterEvent*(localPos: QPointF, scenePos: QPointF, globalPos: QPointF): ptr QEnterEvent {. header:headerFile, importcpp:"new QEnterEvent(@)" .} #

# Public methods for QEnterEvent
proc clone*(this: ptr QEnterEvent): ptr QEnterEvent {.header:headerFile, importcpp:"#.clone(@)".} # Public
proc pos*(this: ptr QEnterEvent): QPoint {.header:headerFile, importcpp:"#.pos(@)".} # Public
proc globalPos*(this: ptr QEnterEvent): QPoint {.header:headerFile, importcpp:"#.globalPos(@)".} # Public
proc x*(this: ptr QEnterEvent): cint {.header:headerFile, importcpp:"#.x(@)".} # Public
proc y*(this: ptr QEnterEvent): cint {.header:headerFile, importcpp:"#.y(@)".} # Public
proc globalX*(this: ptr QEnterEvent): cint {.header:headerFile, importcpp:"#.globalX(@)".} # Public
proc globalY*(this: ptr QEnterEvent): cint {.header:headerFile, importcpp:"#.globalY(@)".} # Public
proc localPos*(this: ptr QEnterEvent): QPointF {.header:headerFile, importcpp:"#.localPos(@)".} # Public
proc windowPos*(this: ptr QEnterEvent): QPointF {.header:headerFile, importcpp:"#.windowPos(@)".} # Public
proc screenPos*(this: ptr QEnterEvent): QPointF {.header:headerFile, importcpp:"#.screenPos(@)".} # Public
# Stuff for class QMouseEvent

# Public constructors for QMouseEvent
# 1 default parameters!
proc newQMouseEvent*(`type`: QEvent_Type, localPos: QPointF, button: Qt_MouseButton, buttons: Qt_MouseButtons, modifiers: Qt_KeyboardModifiers, device: ptr QPointingDevice): ptr QMouseEvent {. header:headerFile, importcpp:"new QMouseEvent(@)" .} #
proc newQMouseEvent*(`type`: QEvent_Type, localPos: QPointF, button: Qt_MouseButton, buttons: Qt_MouseButtons, modifiers: Qt_KeyboardModifiers): ptr QMouseEvent {. header:headerFile, importcpp:"new QMouseEvent(@)" .} #
# 1 default parameters!
proc newQMouseEvent*(`type`: QEvent_Type, localPos: QPointF, globalPos: QPointF, button: Qt_MouseButton, buttons: Qt_MouseButtons, modifiers: Qt_KeyboardModifiers, device: ptr QPointingDevice): ptr QMouseEvent {. header:headerFile, importcpp:"new QMouseEvent(@)" .} #
proc newQMouseEvent*(`type`: QEvent_Type, localPos: QPointF, globalPos: QPointF, button: Qt_MouseButton, buttons: Qt_MouseButtons, modifiers: Qt_KeyboardModifiers): ptr QMouseEvent {. header:headerFile, importcpp:"new QMouseEvent(@)" .} #
# 1 default parameters!
proc newQMouseEvent*(`type`: QEvent_Type, localPos: QPointF, scenePos: QPointF, globalPos: QPointF, button: Qt_MouseButton, buttons: Qt_MouseButtons, modifiers: Qt_KeyboardModifiers, device: ptr QPointingDevice): ptr QMouseEvent {. header:headerFile, importcpp:"new QMouseEvent(@)" .} #
proc newQMouseEvent*(`type`: QEvent_Type, localPos: QPointF, scenePos: QPointF, globalPos: QPointF, button: Qt_MouseButton, buttons: Qt_MouseButtons, modifiers: Qt_KeyboardModifiers): ptr QMouseEvent {. header:headerFile, importcpp:"new QMouseEvent(@)" .} #
# 1 default parameters!
proc newQMouseEvent*(`type`: QEvent_Type, localPos: QPointF, scenePos: QPointF, globalPos: QPointF, button: Qt_MouseButton, buttons: Qt_MouseButtons, modifiers: Qt_KeyboardModifiers, source: Qt_MouseEventSource, device: ptr QPointingDevice): ptr QMouseEvent {. header:headerFile, importcpp:"new QMouseEvent(@)" .} #
proc newQMouseEvent*(`type`: QEvent_Type, localPos: QPointF, scenePos: QPointF, globalPos: QPointF, button: Qt_MouseButton, buttons: Qt_MouseButtons, modifiers: Qt_KeyboardModifiers, source: Qt_MouseEventSource): ptr QMouseEvent {. header:headerFile, importcpp:"new QMouseEvent(@)" .} #

# Public methods for QMouseEvent
proc clone*(this: ptr QMouseEvent): ptr QMouseEvent {.header:headerFile, importcpp:"#.clone(@)".} # Public
proc pos*(this: ptr QMouseEvent): QPoint {.header:headerFile, importcpp:"#.pos(@)".} # Public
proc globalPos*(this: ptr QMouseEvent): QPoint {.header:headerFile, importcpp:"#.globalPos(@)".} # Public
proc x*(this: ptr QMouseEvent): cint {.header:headerFile, importcpp:"#.x(@)".} # Public
proc y*(this: ptr QMouseEvent): cint {.header:headerFile, importcpp:"#.y(@)".} # Public
proc globalX*(this: ptr QMouseEvent): cint {.header:headerFile, importcpp:"#.globalX(@)".} # Public
proc globalY*(this: ptr QMouseEvent): cint {.header:headerFile, importcpp:"#.globalY(@)".} # Public
proc localPos*(this: ptr QMouseEvent): QPointF {.header:headerFile, importcpp:"#.localPos(@)".} # Public
proc windowPos*(this: ptr QMouseEvent): QPointF {.header:headerFile, importcpp:"#.windowPos(@)".} # Public
proc screenPos*(this: ptr QMouseEvent): QPointF {.header:headerFile, importcpp:"#.screenPos(@)".} # Public
proc source*(this: ptr QMouseEvent): Qt_MouseEventSource {.header:headerFile, importcpp:"#.source(@)".} # Public
proc flags*(this: ptr QMouseEvent): Qt_MouseEventFlags {.header:headerFile, importcpp:"#.flags(@)".} # Public
# Stuff for class QHoverEvent

# Public constructors for QHoverEvent
# 2 default parameters!
proc newQHoverEvent*(`type`: QEvent_Type, scenePos: QPointF, globalPos: QPointF, oldPos: QPointF, modifiers: Qt_KeyboardModifiers, device: ptr QPointingDevice): ptr QHoverEvent {. header:headerFile, importcpp:"new QHoverEvent(@)" .} #
proc newQHoverEvent*(`type`: QEvent_Type, scenePos: QPointF, globalPos: QPointF, oldPos: QPointF, modifiers: Qt_KeyboardModifiers): ptr QHoverEvent {. header:headerFile, importcpp:"new QHoverEvent(@)" .} #
proc newQHoverEvent*(`type`: QEvent_Type, scenePos: QPointF, globalPos: QPointF, oldPos: QPointF): ptr QHoverEvent {. header:headerFile, importcpp:"new QHoverEvent(@)" .} #
# 2 default parameters!
proc newQHoverEvent*(`type`: QEvent_Type, pos: QPointF, oldPos: QPointF, modifiers: Qt_KeyboardModifiers, device: ptr QPointingDevice): ptr QHoverEvent {. header:headerFile, importcpp:"new QHoverEvent(@)" .} #
proc newQHoverEvent*(`type`: QEvent_Type, pos: QPointF, oldPos: QPointF, modifiers: Qt_KeyboardModifiers): ptr QHoverEvent {. header:headerFile, importcpp:"new QHoverEvent(@)" .} #
proc newQHoverEvent*(`type`: QEvent_Type, pos: QPointF, oldPos: QPointF): ptr QHoverEvent {. header:headerFile, importcpp:"new QHoverEvent(@)" .} #

# Public methods for QHoverEvent
proc clone*(this: ptr QHoverEvent): ptr QHoverEvent {.header:headerFile, importcpp:"#.clone(@)".} # Public
proc pos*(this: ptr QHoverEvent): QPoint {.header:headerFile, importcpp:"#.pos(@)".} # Public
proc posF*(this: ptr QHoverEvent): QPointF {.header:headerFile, importcpp:"#.posF(@)".} # Public
proc isUpdateEvent*(this: ptr QHoverEvent): bool {.header:headerFile, importcpp:"#.isUpdateEvent(@)".} # Public
proc oldPos*(this: ptr QHoverEvent): QPoint {.header:headerFile, importcpp:"#.oldPos(@)".} # Public
proc oldPosF*(this: ptr QHoverEvent): QPointF {.header:headerFile, importcpp:"#.oldPosF(@)".} # Public
# Stuff for class QWheelEvent

# Public constructors for QWheelEvent
# 1 default parameters!
proc newQWheelEvent*(pos: QPointF, globalPos: QPointF, pixelDelta: QPoint, angleDelta: QPoint, buttons: Qt_MouseButtons, modifiers: Qt_KeyboardModifiers, phase: Qt_ScrollPhase, inverted: bool, source: Qt_MouseEventSource, device: ptr QPointingDevice): ptr QWheelEvent {. header:headerFile, importcpp:"new QWheelEvent(@)" .} #
proc newQWheelEvent*(pos: QPointF, globalPos: QPointF, pixelDelta: QPoint, angleDelta: QPoint, buttons: Qt_MouseButtons, modifiers: Qt_KeyboardModifiers, phase: Qt_ScrollPhase, inverted: bool, source: Qt_MouseEventSource): ptr QWheelEvent {. header:headerFile, importcpp:"new QWheelEvent(@)" .} #

# Public methods for QWheelEvent
proc qt_check_for_QGADGET_macro*(this: ptr QWheelEvent) {.header:headerFile, importcpp:"#.qt_check_for_QGADGET_macro(@)".} # Public
proc clone*(this: ptr QWheelEvent): ptr QWheelEvent {.header:headerFile, importcpp:"#.clone(@)".} # Public
proc pixelDelta*(this: ptr QWheelEvent): QPoint {.header:headerFile, importcpp:"#.pixelDelta(@)".} # Public
proc angleDelta*(this: ptr QWheelEvent): QPoint {.header:headerFile, importcpp:"#.angleDelta(@)".} # Public
proc phase*(this: ptr QWheelEvent): Qt_ScrollPhase {.header:headerFile, importcpp:"#.phase(@)".} # Public
proc inverted*(this: ptr QWheelEvent): bool {.header:headerFile, importcpp:"#.inverted(@)".} # Public
proc isInverted*(this: ptr QWheelEvent): bool {.header:headerFile, importcpp:"#.isInverted(@)".} # Public
proc hasPixelDelta*(this: ptr QWheelEvent): bool {.header:headerFile, importcpp:"#.hasPixelDelta(@)".} # Public
proc isBeginEvent*(this: ptr QWheelEvent): bool {.header:headerFile, importcpp:"#.isBeginEvent(@)".} # Public
proc isUpdateEvent*(this: ptr QWheelEvent): bool {.header:headerFile, importcpp:"#.isUpdateEvent(@)".} # Public
proc isEndEvent*(this: ptr QWheelEvent): bool {.header:headerFile, importcpp:"#.isEndEvent(@)".} # Public
proc source*(this: ptr QWheelEvent): Qt_MouseEventSource {.header:headerFile, importcpp:"#.source(@)".} # Public
# Stuff for class QTabletEvent

# Public constructors for QTabletEvent
proc newQTabletEvent*(t: QEvent_Type, device: ptr QPointingDevice, pos: QPointF, globalPos: QPointF, pressure: cfloat, xTilt: cfloat, yTilt: cfloat, tangentialPressure: cfloat, rotation: cfloat, z: cfloat, keyState: Qt_KeyboardModifiers, button: Qt_MouseButton, buttons: Qt_MouseButtons): ptr QTabletEvent {. header:headerFile, importcpp:"new QTabletEvent(@)" .} #

# Public methods for QTabletEvent
proc clone*(this: ptr QTabletEvent): ptr QTabletEvent {.header:headerFile, importcpp:"#.clone(@)".} # Public
proc pos*(this: ptr QTabletEvent): QPoint {.header:headerFile, importcpp:"#.pos(@)".} # Public
proc globalPos*(this: ptr QTabletEvent): QPoint {.header:headerFile, importcpp:"#.globalPos(@)".} # Public
proc posF*(this: ptr QTabletEvent): QPointF {.header:headerFile, importcpp:"#.posF(@)".} # Public
proc globalPosF*(this: ptr QTabletEvent): QPointF {.header:headerFile, importcpp:"#.globalPosF(@)".} # Public
proc x*(this: ptr QTabletEvent): cint {.header:headerFile, importcpp:"#.x(@)".} # Public
proc y*(this: ptr QTabletEvent): cint {.header:headerFile, importcpp:"#.y(@)".} # Public
proc globalX*(this: ptr QTabletEvent): cint {.header:headerFile, importcpp:"#.globalX(@)".} # Public
proc globalY*(this: ptr QTabletEvent): cint {.header:headerFile, importcpp:"#.globalY(@)".} # Public
proc hiResGlobalX*(this: ptr QTabletEvent): cfloat {.header:headerFile, importcpp:"#.hiResGlobalX(@)".} # Public
proc hiResGlobalY*(this: ptr QTabletEvent): cfloat {.header:headerFile, importcpp:"#.hiResGlobalY(@)".} # Public
proc uniqueId*(this: ptr QTabletEvent): clonglong {.header:headerFile, importcpp:"#.uniqueId(@)".} # Public
proc pressure*(this: ptr QTabletEvent): cfloat {.header:headerFile, importcpp:"#.pressure(@)".} # Public
proc rotation*(this: ptr QTabletEvent): cfloat {.header:headerFile, importcpp:"#.rotation(@)".} # Public
proc z*(this: ptr QTabletEvent): cfloat {.header:headerFile, importcpp:"#.z(@)".} # Public
proc tangentialPressure*(this: ptr QTabletEvent): cfloat {.header:headerFile, importcpp:"#.tangentialPressure(@)".} # Public
proc xTilt*(this: ptr QTabletEvent): cfloat {.header:headerFile, importcpp:"#.xTilt(@)".} # Public
proc yTilt*(this: ptr QTabletEvent): cfloat {.header:headerFile, importcpp:"#.yTilt(@)".} # Public
# Stuff for class QNativeGestureEvent

# Public constructors for QNativeGestureEvent
proc newQNativeGestureEvent*(`type`: Qt_NativeGestureType, dev: ptr QPointingDevice, localPos: QPointF, scenePos: QPointF, globalPos: QPointF, value: cfloat, sequenceId: culonglong, intArgument: culonglong): ptr QNativeGestureEvent {. header:headerFile, importcpp:"new QNativeGestureEvent(@)" .} #
# 1 default parameters!
proc newQNativeGestureEvent*(`type`: Qt_NativeGestureType, dev: ptr QPointingDevice, fingerCount: cint, localPos: QPointF, scenePos: QPointF, globalPos: QPointF, value: cfloat, delta: QPointF, sequenceId: culonglong): ptr QNativeGestureEvent {. header:headerFile, importcpp:"new QNativeGestureEvent(@)" .} #
proc newQNativeGestureEvent*(`type`: Qt_NativeGestureType, dev: ptr QPointingDevice, fingerCount: cint, localPos: QPointF, scenePos: QPointF, globalPos: QPointF, value: cfloat, delta: QPointF): ptr QNativeGestureEvent {. header:headerFile, importcpp:"new QNativeGestureEvent(@)" .} #

# Public methods for QNativeGestureEvent
proc clone*(this: ptr QNativeGestureEvent): ptr QNativeGestureEvent {.header:headerFile, importcpp:"#.clone(@)".} # Public
proc gestureType*(this: ptr QNativeGestureEvent): Qt_NativeGestureType {.header:headerFile, importcpp:"#.gestureType(@)".} # Public
proc fingerCount*(this: ptr QNativeGestureEvent): cint {.header:headerFile, importcpp:"#.fingerCount(@)".} # Public
proc value*(this: ptr QNativeGestureEvent): cfloat {.header:headerFile, importcpp:"#.value(@)".} # Public
proc delta*(this: ptr QNativeGestureEvent): QPointF {.header:headerFile, importcpp:"#.delta(@)".} # Public
proc pos*(this: ptr QNativeGestureEvent): QPoint {.header:headerFile, importcpp:"#.pos(@)".} # Public
proc globalPos*(this: ptr QNativeGestureEvent): QPoint {.header:headerFile, importcpp:"#.globalPos(@)".} # Public
proc localPos*(this: ptr QNativeGestureEvent): QPointF {.header:headerFile, importcpp:"#.localPos(@)".} # Public
proc windowPos*(this: ptr QNativeGestureEvent): QPointF {.header:headerFile, importcpp:"#.windowPos(@)".} # Public
proc screenPos*(this: ptr QNativeGestureEvent): QPointF {.header:headerFile, importcpp:"#.screenPos(@)".} # Public
# Stuff for class QKeyEvent

# Public constructors for QKeyEvent
import nimqt/qtcore/qstring
# 3 default parameters!
proc newQKeyEvent*(`type`: QEvent_Type, key: cint, modifiers: Qt_KeyboardModifiers, text: QString, autorep: bool, count: cushort): ptr QKeyEvent {. header:headerFile, importcpp:"new QKeyEvent(@)" .} #
proc newQKeyEvent*(`type`: QEvent_Type, key: cint, modifiers: Qt_KeyboardModifiers, text: QString, autorep: bool): ptr QKeyEvent {. header:headerFile, importcpp:"new QKeyEvent(@)" .} #
proc newQKeyEvent*(`type`: QEvent_Type, key: cint, modifiers: Qt_KeyboardModifiers, text: QString): ptr QKeyEvent {. header:headerFile, importcpp:"new QKeyEvent(@)" .} #
proc newQKeyEvent*(`type`: QEvent_Type, key: cint, modifiers: Qt_KeyboardModifiers): ptr QKeyEvent {. header:headerFile, importcpp:"new QKeyEvent(@)" .} #
# 4 default parameters!
proc newQKeyEvent*(`type`: QEvent_Type, key: cint, modifiers: Qt_KeyboardModifiers, nativeScanCode: cuint, nativeVirtualKey: cuint, nativeModifiers: cuint, text: QString, autorep: bool, count: cushort, device: ptr QInputDevice): ptr QKeyEvent {. header:headerFile, importcpp:"new QKeyEvent(@)" .} #
proc newQKeyEvent*(`type`: QEvent_Type, key: cint, modifiers: Qt_KeyboardModifiers, nativeScanCode: cuint, nativeVirtualKey: cuint, nativeModifiers: cuint, text: QString, autorep: bool, count: cushort): ptr QKeyEvent {. header:headerFile, importcpp:"new QKeyEvent(@)" .} #
proc newQKeyEvent*(`type`: QEvent_Type, key: cint, modifiers: Qt_KeyboardModifiers, nativeScanCode: cuint, nativeVirtualKey: cuint, nativeModifiers: cuint, text: QString, autorep: bool): ptr QKeyEvent {. header:headerFile, importcpp:"new QKeyEvent(@)" .} #
proc newQKeyEvent*(`type`: QEvent_Type, key: cint, modifiers: Qt_KeyboardModifiers, nativeScanCode: cuint, nativeVirtualKey: cuint, nativeModifiers: cuint, text: QString): ptr QKeyEvent {. header:headerFile, importcpp:"new QKeyEvent(@)" .} #
proc newQKeyEvent*(`type`: QEvent_Type, key: cint, modifiers: Qt_KeyboardModifiers, nativeScanCode: cuint, nativeVirtualKey: cuint, nativeModifiers: cuint): ptr QKeyEvent {. header:headerFile, importcpp:"new QKeyEvent(@)" .} #

# Public methods for QKeyEvent
proc clone*(this: ptr QKeyEvent): ptr QKeyEvent {.header:headerFile, importcpp:"#.clone(@)".} # Public
proc key*(this: ptr QKeyEvent): cint {.header:headerFile, importcpp:"#.key(@)".} # Public
import nimqt/qtgui/qkeysequence
proc matches*(this: ptr QKeyEvent, key: QKeySequence_StandardKey): bool {.header:headerFile, importcpp:"#.matches(@)".} # Public
proc modifiers*(this: ptr QKeyEvent): Qt_KeyboardModifiers {.header:headerFile, importcpp:"#.modifiers(@)".} # Public
proc keyCombination*(this: ptr QKeyEvent): QKeyCombination {.header:headerFile, importcpp:"#.keyCombination(@)".} # Public
proc text*(this: ptr QKeyEvent): QString {.header:headerFile, importcpp:"#.text(@)".} # Public
proc isAutoRepeat*(this: ptr QKeyEvent): bool {.header:headerFile, importcpp:"#.isAutoRepeat(@)".} # Public
proc count*(this: ptr QKeyEvent): cint {.header:headerFile, importcpp:"#.count(@)".} # Public
proc nativeScanCode*(this: ptr QKeyEvent): cuint {.header:headerFile, importcpp:"#.nativeScanCode(@)".} # Public
proc nativeVirtualKey*(this: ptr QKeyEvent): cuint {.header:headerFile, importcpp:"#.nativeVirtualKey(@)".} # Public
proc nativeModifiers*(this: ptr QKeyEvent): cuint {.header:headerFile, importcpp:"#.nativeModifiers(@)".} # Public
# Stuff for class QFocusEvent

# Public constructors for QFocusEvent
proc newQFocusEvent*(`type`: QEvent_Type, reason: Qt_FocusReason): ptr QFocusEvent {. header:headerFile, importcpp:"new QFocusEvent(@)" .} #

# Public methods for QFocusEvent
proc clone*(this: ptr QFocusEvent): ptr QFocusEvent {.header:headerFile, importcpp:"#.clone(@)".} # Public
proc gotFocus*(this: ptr QFocusEvent): bool {.header:headerFile, importcpp:"#.gotFocus(@)".} # Public
proc lostFocus*(this: ptr QFocusEvent): bool {.header:headerFile, importcpp:"#.lostFocus(@)".} # Public
proc reason*(this: ptr QFocusEvent): Qt_FocusReason {.header:headerFile, importcpp:"#.reason(@)".} # Public
# Stuff for class QPaintEvent

# Public constructors for QPaintEvent
import nimqt/qtgui/qregion
proc newQPaintEvent*(paintRegion: QRegion): ptr QPaintEvent {. header:headerFile, importcpp:"new QPaintEvent(@)" .} #
import nimqt/qtcore/qrect
proc newQPaintEvent*(paintRect: QRect): ptr QPaintEvent {. header:headerFile, importcpp:"new QPaintEvent(@)" .} #

# Public methods for QPaintEvent
proc clone*(this: ptr QPaintEvent): ptr QPaintEvent {.header:headerFile, importcpp:"#.clone(@)".} # Public
proc rect*(this: ptr QPaintEvent): QRect {.header:headerFile, importcpp:"#.rect(@)".} # Public
proc region*(this: ptr QPaintEvent): QRegion {.header:headerFile, importcpp:"#.region(@)".} # Public
# Stuff for class QMoveEvent

# Public constructors for QMoveEvent
proc newQMoveEvent*(pos: QPoint, oldPos: QPoint): ptr QMoveEvent {. header:headerFile, importcpp:"new QMoveEvent(@)" .} #

# Public methods for QMoveEvent
proc clone*(this: ptr QMoveEvent): ptr QMoveEvent {.header:headerFile, importcpp:"#.clone(@)".} # Public
proc pos*(this: ptr QMoveEvent): QPoint {.header:headerFile, importcpp:"#.pos(@)".} # Public
proc oldPos*(this: ptr QMoveEvent): QPoint {.header:headerFile, importcpp:"#.oldPos(@)".} # Public
# Stuff for class QExposeEvent

# Public constructors for QExposeEvent
proc newQExposeEvent*(m_region: QRegion): ptr QExposeEvent {. header:headerFile, importcpp:"new QExposeEvent(@)" .} #

# Public methods for QExposeEvent
proc clone*(this: ptr QExposeEvent): ptr QExposeEvent {.header:headerFile, importcpp:"#.clone(@)".} # Public
proc region*(this: ptr QExposeEvent): QRegion {.header:headerFile, importcpp:"#.region(@)".} # Public
# Stuff for class QResizeEvent

# Public constructors for QResizeEvent
import nimqt/qtcore/qsize
proc newQResizeEvent*(size: QSize, oldSize: QSize): ptr QResizeEvent {. header:headerFile, importcpp:"new QResizeEvent(@)" .} #

# Public methods for QResizeEvent
proc clone*(this: ptr QResizeEvent): ptr QResizeEvent {.header:headerFile, importcpp:"#.clone(@)".} # Public
proc size*(this: ptr QResizeEvent): QSize {.header:headerFile, importcpp:"#.size(@)".} # Public
proc oldSize*(this: ptr QResizeEvent): QSize {.header:headerFile, importcpp:"#.oldSize(@)".} # Public
# Stuff for class QCloseEvent

# Public constructors for QCloseEvent
proc newQCloseEvent*(): ptr QCloseEvent {. header:headerFile, importcpp:"new QCloseEvent(@)" .} #

# Public methods for QCloseEvent
proc clone*(this: ptr QCloseEvent): ptr QCloseEvent {.header:headerFile, importcpp:"#.clone(@)".} # Public
# Stuff for class QIconDragEvent

# Public constructors for QIconDragEvent
proc newQIconDragEvent*(): ptr QIconDragEvent {. header:headerFile, importcpp:"new QIconDragEvent(@)" .} #

# Public methods for QIconDragEvent
proc clone*(this: ptr QIconDragEvent): ptr QIconDragEvent {.header:headerFile, importcpp:"#.clone(@)".} # Public
# Stuff for class QShowEvent

# Public constructors for QShowEvent
proc newQShowEvent*(): ptr QShowEvent {. header:headerFile, importcpp:"new QShowEvent(@)" .} #

# Public methods for QShowEvent
proc clone*(this: ptr QShowEvent): ptr QShowEvent {.header:headerFile, importcpp:"#.clone(@)".} # Public
# Stuff for class QHideEvent

# Public constructors for QHideEvent
proc newQHideEvent*(): ptr QHideEvent {. header:headerFile, importcpp:"new QHideEvent(@)" .} #

# Public methods for QHideEvent
proc clone*(this: ptr QHideEvent): ptr QHideEvent {.header:headerFile, importcpp:"#.clone(@)".} # Public
# Stuff for class QContextMenuEvent

# Public constructors for QContextMenuEvent
# 1 default parameters!
proc newQContextMenuEvent*(reason: QContextMenuEvent_Reason, pos: QPoint, globalPos: QPoint, modifiers: Qt_KeyboardModifiers): ptr QContextMenuEvent {. header:headerFile, importcpp:"new QContextMenuEvent(@)" .} #
proc newQContextMenuEvent*(reason: QContextMenuEvent_Reason, pos: QPoint, globalPos: QPoint): ptr QContextMenuEvent {. header:headerFile, importcpp:"new QContextMenuEvent(@)" .} #
proc newQContextMenuEvent*(reason: QContextMenuEvent_Reason, pos: QPoint): ptr QContextMenuEvent {. header:headerFile, importcpp:"new QContextMenuEvent(@)" .} #

# Public methods for QContextMenuEvent
proc clone*(this: ptr QContextMenuEvent): ptr QContextMenuEvent {.header:headerFile, importcpp:"#.clone(@)".} # Public
proc x*(this: ptr QContextMenuEvent): cint {.header:headerFile, importcpp:"#.x(@)".} # Public
proc y*(this: ptr QContextMenuEvent): cint {.header:headerFile, importcpp:"#.y(@)".} # Public
proc globalX*(this: ptr QContextMenuEvent): cint {.header:headerFile, importcpp:"#.globalX(@)".} # Public
proc globalY*(this: ptr QContextMenuEvent): cint {.header:headerFile, importcpp:"#.globalY(@)".} # Public
proc pos*(this: ptr QContextMenuEvent): QPoint {.header:headerFile, importcpp:"#.pos(@)".} # Public
proc globalPos*(this: ptr QContextMenuEvent): QPoint {.header:headerFile, importcpp:"#.globalPos(@)".} # Public
proc reason*(this: ptr QContextMenuEvent): QContextMenuEvent_Reason {.header:headerFile, importcpp:"#.reason(@)".} # Public
# Stuff for class QInputMethodEvent

# Public constructors for QInputMethodEvent
proc newQInputMethodEvent*(): ptr QInputMethodEvent {. header:headerFile, importcpp:"new QInputMethodEvent(@)" .} #
proc newQInputMethodEvent*(preeditText: QString, attributes: QList[QInputMethodEvent_Attribute]): ptr QInputMethodEvent {. header:headerFile, importcpp:"new QInputMethodEvent(@)" .} #

# Public methods for QInputMethodEvent
proc clone*(this: ptr QInputMethodEvent): ptr QInputMethodEvent {.header:headerFile, importcpp:"#.clone(@)".} # Public
# 2 default parameters!
proc setCommitString*(this: ptr QInputMethodEvent, commitString: QString, replaceFrom: cint, replaceLength: cint) {.header:headerFile, importcpp:"#.setCommitString(@)".} # Public
proc setCommitString*(this: ptr QInputMethodEvent, commitString: QString, replaceFrom: cint) {.header:headerFile, importcpp:"#.setCommitString(@)".} # Public
proc setCommitString*(this: ptr QInputMethodEvent, commitString: QString) {.header:headerFile, importcpp:"#.setCommitString(@)".} # Public
proc attributes*(this: ptr QInputMethodEvent): QList[QInputMethodEvent_Attribute] {.header:headerFile, importcpp:"#.attributes(@)".} # Public
proc preeditString*(this: ptr QInputMethodEvent): QString {.header:headerFile, importcpp:"#.preeditString(@)".} # Public
proc commitString*(this: ptr QInputMethodEvent): QString {.header:headerFile, importcpp:"#.commitString(@)".} # Public
proc replacementStart*(this: ptr QInputMethodEvent): cint {.header:headerFile, importcpp:"#.replacementStart(@)".} # Public
proc replacementLength*(this: ptr QInputMethodEvent): cint {.header:headerFile, importcpp:"#.replacementLength(@)".} # Public
# Stuff for class QInputMethodEvent_Attribute

# Public constructors for QInputMethodEvent_Attribute
import nimqt/qtcore/qvariant
proc newQInputMethodEvent_Attribute*(typ: QInputMethodEvent_AttributeType, s: cint, l: cint, val: QVariant): QInputMethodEvent_Attribute {. header:headerFile, importcpp:"QInputMethodEvent_Attribute(@)", constructor .} #
proc newQInputMethodEvent_Attribute*(typ: QInputMethodEvent_AttributeType, s: cint, l: cint): QInputMethodEvent_Attribute {. header:headerFile, importcpp:"QInputMethodEvent_Attribute(@)", constructor .} #
# Stuff for class QInputMethodQueryEvent

# Public constructors for QInputMethodQueryEvent
proc newQInputMethodQueryEvent*(queries: Qt_InputMethodQueries): ptr QInputMethodQueryEvent {. header:headerFile, importcpp:"new QInputMethodQueryEvent(@)" .} #

# Public methods for QInputMethodQueryEvent
proc clone*(this: ptr QInputMethodQueryEvent): ptr QInputMethodQueryEvent {.header:headerFile, importcpp:"#.clone(@)".} # Public
proc queries*(this: ptr QInputMethodQueryEvent): Qt_InputMethodQueries {.header:headerFile, importcpp:"#.queries(@)".} # Public
proc setValue*(this: ptr QInputMethodQueryEvent, query: Qt_InputMethodQuery, value: QVariant) {.header:headerFile, importcpp:"#.setValue(@)".} # Public
proc value*(this: ptr QInputMethodQueryEvent, query: Qt_InputMethodQuery): QVariant {.header:headerFile, importcpp:"#.value(@)".} # Public
# Stuff for class QDropEvent

# Public constructors for QDropEvent
import nimqt/qtcore/qmimedata
proc newQDropEvent*(pos: QPointF, actions: Qt_DropActions, data: ptr QMimeData, buttons: Qt_MouseButtons, modifiers: Qt_KeyboardModifiers, `type`: QEvent_Type): ptr QDropEvent {. header:headerFile, importcpp:"new QDropEvent(@)" .} #

# Public methods for QDropEvent
proc clone*(this: ptr QDropEvent): ptr QDropEvent {.header:headerFile, importcpp:"#.clone(@)".} # Public
proc pos*(this: ptr QDropEvent): QPoint {.header:headerFile, importcpp:"#.pos(@)".} # Public
proc posF*(this: ptr QDropEvent): QPointF {.header:headerFile, importcpp:"#.posF(@)".} # Public
proc mouseButtons*(this: ptr QDropEvent): Qt_MouseButtons {.header:headerFile, importcpp:"#.mouseButtons(@)".} # Public
proc keyboardModifiers*(this: ptr QDropEvent): Qt_KeyboardModifiers {.header:headerFile, importcpp:"#.keyboardModifiers(@)".} # Public
proc position*(this: ptr QDropEvent): QPointF {.header:headerFile, importcpp:"#.position(@)".} # Public
proc buttons*(this: ptr QDropEvent): Qt_MouseButtons {.header:headerFile, importcpp:"#.buttons(@)".} # Public
proc modifiers*(this: ptr QDropEvent): Qt_KeyboardModifiers {.header:headerFile, importcpp:"#.modifiers(@)".} # Public
proc possibleActions*(this: ptr QDropEvent): Qt_DropActions {.header:headerFile, importcpp:"#.possibleActions(@)".} # Public
proc proposedAction*(this: ptr QDropEvent): Qt_DropAction {.header:headerFile, importcpp:"#.proposedAction(@)".} # Public
proc acceptProposedAction*(this: ptr QDropEvent) {.header:headerFile, importcpp:"#.acceptProposedAction(@)".} # Public
proc dropAction*(this: ptr QDropEvent): Qt_DropAction {.header:headerFile, importcpp:"#.dropAction(@)".} # Public
proc setDropAction*(this: ptr QDropEvent, action: Qt_DropAction) {.header:headerFile, importcpp:"#.setDropAction(@)".} # Public
proc source*(this: ptr QDropEvent): ptr QObject {.header:headerFile, importcpp:"#.source(@)".} # Public
proc mimeData*(this: ptr QDropEvent): ptr QMimeData {.header:headerFile, importcpp:"#.mimeData(@)".} # Public
# Stuff for class QDragMoveEvent

# Public constructors for QDragMoveEvent
proc newQDragMoveEvent*(pos: QPoint, actions: Qt_DropActions, data: ptr QMimeData, buttons: Qt_MouseButtons, modifiers: Qt_KeyboardModifiers, `type`: QEvent_Type): ptr QDragMoveEvent {. header:headerFile, importcpp:"new QDragMoveEvent(@)" .} #

# Public methods for QDragMoveEvent
proc clone*(this: ptr QDragMoveEvent): ptr QDragMoveEvent {.header:headerFile, importcpp:"#.clone(@)".} # Public
proc answerRect*(this: ptr QDragMoveEvent): QRect {.header:headerFile, importcpp:"#.answerRect(@)".} # Public
proc accept*(this: ptr QDragMoveEvent) {.header:headerFile, importcpp:"#.accept(@)".} # Public
proc ignore*(this: ptr QDragMoveEvent) {.header:headerFile, importcpp:"#.ignore(@)".} # Public
proc accept*(this: ptr QDragMoveEvent, r: QRect) {.header:headerFile, importcpp:"#.accept(@)".} # Public
proc ignore*(this: ptr QDragMoveEvent, r: QRect) {.header:headerFile, importcpp:"#.ignore(@)".} # Public
# Stuff for class QDragEnterEvent

# Public constructors for QDragEnterEvent
proc newQDragEnterEvent*(pos: QPoint, actions: Qt_DropActions, data: ptr QMimeData, buttons: Qt_MouseButtons, modifiers: Qt_KeyboardModifiers): ptr QDragEnterEvent {. header:headerFile, importcpp:"new QDragEnterEvent(@)" .} #

# Public methods for QDragEnterEvent
proc clone*(this: ptr QDragEnterEvent): ptr QDragEnterEvent {.header:headerFile, importcpp:"#.clone(@)".} # Public
# Stuff for class QDragLeaveEvent

# Public constructors for QDragLeaveEvent
proc newQDragLeaveEvent*(): ptr QDragLeaveEvent {. header:headerFile, importcpp:"new QDragLeaveEvent(@)" .} #

# Public methods for QDragLeaveEvent
proc clone*(this: ptr QDragLeaveEvent): ptr QDragLeaveEvent {.header:headerFile, importcpp:"#.clone(@)".} # Public
# Stuff for class QHelpEvent

# Public constructors for QHelpEvent
proc newQHelpEvent*(`type`: QEvent_Type, pos: QPoint, globalPos: QPoint): ptr QHelpEvent {. header:headerFile, importcpp:"new QHelpEvent(@)" .} #

# Public methods for QHelpEvent
proc clone*(this: ptr QHelpEvent): ptr QHelpEvent {.header:headerFile, importcpp:"#.clone(@)".} # Public
proc x*(this: ptr QHelpEvent): cint {.header:headerFile, importcpp:"#.x(@)".} # Public
proc y*(this: ptr QHelpEvent): cint {.header:headerFile, importcpp:"#.y(@)".} # Public
proc globalX*(this: ptr QHelpEvent): cint {.header:headerFile, importcpp:"#.globalX(@)".} # Public
proc globalY*(this: ptr QHelpEvent): cint {.header:headerFile, importcpp:"#.globalY(@)".} # Public
proc pos*(this: ptr QHelpEvent): QPoint {.header:headerFile, importcpp:"#.pos(@)".} # Public
proc globalPos*(this: ptr QHelpEvent): QPoint {.header:headerFile, importcpp:"#.globalPos(@)".} # Public
# Stuff for class QStatusTipEvent

# Public constructors for QStatusTipEvent
proc newQStatusTipEvent*(tip: QString): ptr QStatusTipEvent {. header:headerFile, importcpp:"new QStatusTipEvent(@)" .} #

# Public methods for QStatusTipEvent
proc clone*(this: ptr QStatusTipEvent): ptr QStatusTipEvent {.header:headerFile, importcpp:"#.clone(@)".} # Public
proc tip*(this: ptr QStatusTipEvent): QString {.header:headerFile, importcpp:"#.tip(@)".} # Public
# Stuff for class QWhatsThisClickedEvent

# Public constructors for QWhatsThisClickedEvent
proc newQWhatsThisClickedEvent*(href: QString): ptr QWhatsThisClickedEvent {. header:headerFile, importcpp:"new QWhatsThisClickedEvent(@)" .} #

# Public methods for QWhatsThisClickedEvent
proc clone*(this: ptr QWhatsThisClickedEvent): ptr QWhatsThisClickedEvent {.header:headerFile, importcpp:"#.clone(@)".} # Public
proc href*(this: ptr QWhatsThisClickedEvent): QString {.header:headerFile, importcpp:"#.href(@)".} # Public
# Stuff for class QActionEvent

# Public constructors for QActionEvent
import nimqt/qtgui/qaction
# 1 default parameters!
proc newQActionEvent*(`type`: cint, action: ptr QAction, before: ptr QAction): ptr QActionEvent {. header:headerFile, importcpp:"new QActionEvent(@)" .} #
proc newQActionEvent*(`type`: cint, action: ptr QAction): ptr QActionEvent {. header:headerFile, importcpp:"new QActionEvent(@)" .} #

# Public methods for QActionEvent
proc clone*(this: ptr QActionEvent): ptr QActionEvent {.header:headerFile, importcpp:"#.clone(@)".} # Public
proc action*(this: ptr QActionEvent): ptr QAction {.header:headerFile, importcpp:"#.action(@)".} # Public
proc before*(this: ptr QActionEvent): ptr QAction {.header:headerFile, importcpp:"#.before(@)".} # Public
# Stuff for class QFileOpenEvent

# Public constructors for QFileOpenEvent
proc newQFileOpenEvent*(file: QString): ptr QFileOpenEvent {. header:headerFile, importcpp:"new QFileOpenEvent(@)" .} #
import nimqt/qtcore/qurl
proc newQFileOpenEvent*(url: QUrl): ptr QFileOpenEvent {. header:headerFile, importcpp:"new QFileOpenEvent(@)" .} #

# Public methods for QFileOpenEvent
proc clone*(this: ptr QFileOpenEvent): ptr QFileOpenEvent {.header:headerFile, importcpp:"#.clone(@)".} # Public
proc file*(this: ptr QFileOpenEvent): QString {.header:headerFile, importcpp:"#.file(@)".} # Public
proc url*(this: ptr QFileOpenEvent): QUrl {.header:headerFile, importcpp:"#.url(@)".} # Public
import nimqt/qtcore/qfile
import nimqt/qtcore/qiodevice
proc openFile*(this: ptr QFileOpenEvent, file: QFile, flags: QIODevice_OpenMode): bool {.header:headerFile, importcpp:"#.openFile(@)".} # Public
# Stuff for class QToolBarChangeEvent

# Public constructors for QToolBarChangeEvent
proc newQToolBarChangeEvent*(t: bool): ptr QToolBarChangeEvent {. header:headerFile, importcpp:"new QToolBarChangeEvent(@)" .} #

# Public methods for QToolBarChangeEvent
proc clone*(this: ptr QToolBarChangeEvent): ptr QToolBarChangeEvent {.header:headerFile, importcpp:"#.clone(@)".} # Public
proc toggle*(this: ptr QToolBarChangeEvent): bool {.header:headerFile, importcpp:"#.toggle(@)".} # Public
# Stuff for class QShortcutEvent

# Public constructors for QShortcutEvent
# 1 default parameters!
proc newQShortcutEvent*(key: QKeySequence, id: cint, ambiguous: bool): ptr QShortcutEvent {. header:headerFile, importcpp:"new QShortcutEvent(@)" .} #
proc newQShortcutEvent*(key: QKeySequence, id: cint): ptr QShortcutEvent {. header:headerFile, importcpp:"new QShortcutEvent(@)" .} #

# Public methods for QShortcutEvent
proc clone*(this: ptr QShortcutEvent): ptr QShortcutEvent {.header:headerFile, importcpp:"#.clone(@)".} # Public
proc key*(this: ptr QShortcutEvent): QKeySequence {.header:headerFile, importcpp:"#.key(@)".} # Public
proc shortcutId*(this: ptr QShortcutEvent): cint {.header:headerFile, importcpp:"#.shortcutId(@)".} # Public
proc isAmbiguous*(this: ptr QShortcutEvent): bool {.header:headerFile, importcpp:"#.isAmbiguous(@)".} # Public
# Stuff for class QWindowStateChangeEvent

# Public constructors for QWindowStateChangeEvent
# 1 default parameters!
proc newQWindowStateChangeEvent*(oldState: Qt_WindowStates, isOverride: bool): ptr QWindowStateChangeEvent {. header:headerFile, importcpp:"new QWindowStateChangeEvent(@)" .} #
proc newQWindowStateChangeEvent*(oldState: Qt_WindowStates): ptr QWindowStateChangeEvent {. header:headerFile, importcpp:"new QWindowStateChangeEvent(@)" .} #

# Public methods for QWindowStateChangeEvent
proc clone*(this: ptr QWindowStateChangeEvent): ptr QWindowStateChangeEvent {.header:headerFile, importcpp:"#.clone(@)".} # Public
proc oldState*(this: ptr QWindowStateChangeEvent): Qt_WindowStates {.header:headerFile, importcpp:"#.oldState(@)".} # Public
proc isOverride*(this: ptr QWindowStateChangeEvent): bool {.header:headerFile, importcpp:"#.isOverride(@)".} # Public
# Stuff for class QTouchEvent

# Public constructors for QTouchEvent
# 3 default parameters!
proc newQTouchEvent*(eventType: QEvent_Type, device: ptr QPointingDevice, modifiers: Qt_KeyboardModifiers, touchPoints: QList[QEventPoint]): ptr QTouchEvent {. header:headerFile, importcpp:"new QTouchEvent(@)" .} #
proc newQTouchEvent*(eventType: QEvent_Type, device: ptr QPointingDevice, modifiers: Qt_KeyboardModifiers): ptr QTouchEvent {. header:headerFile, importcpp:"new QTouchEvent(@)" .} #
proc newQTouchEvent*(eventType: QEvent_Type, device: ptr QPointingDevice): ptr QTouchEvent {. header:headerFile, importcpp:"new QTouchEvent(@)" .} #
proc newQTouchEvent*(eventType: QEvent_Type): ptr QTouchEvent {. header:headerFile, importcpp:"new QTouchEvent(@)" .} #
# 1 default parameters!
proc newQTouchEvent*(eventType: QEvent_Type, device: ptr QPointingDevice, modifiers: Qt_KeyboardModifiers, touchPointStates: QEventPoint_States, touchPoints: QList[QEventPoint]): ptr QTouchEvent {. header:headerFile, importcpp:"new QTouchEvent(@)" .} #
proc newQTouchEvent*(eventType: QEvent_Type, device: ptr QPointingDevice, modifiers: Qt_KeyboardModifiers, touchPointStates: QEventPoint_States): ptr QTouchEvent {. header:headerFile, importcpp:"new QTouchEvent(@)" .} #

# Public methods for QTouchEvent
proc clone*(this: ptr QTouchEvent): ptr QTouchEvent {.header:headerFile, importcpp:"#.clone(@)".} # Public
proc target*(this: ptr QTouchEvent): ptr QObject {.header:headerFile, importcpp:"#.target(@)".} # Public
proc touchPointStates*(this: ptr QTouchEvent): QEventPoint_States {.header:headerFile, importcpp:"#.touchPointStates(@)".} # Public
proc touchPoints*(this: ptr QTouchEvent): QList[QEventPoint] {.header:headerFile, importcpp:"#.touchPoints(@)".} # Public
proc isBeginEvent*(this: ptr QTouchEvent): bool {.header:headerFile, importcpp:"#.isBeginEvent(@)".} # Public
proc isUpdateEvent*(this: ptr QTouchEvent): bool {.header:headerFile, importcpp:"#.isUpdateEvent(@)".} # Public
proc isEndEvent*(this: ptr QTouchEvent): bool {.header:headerFile, importcpp:"#.isEndEvent(@)".} # Public
# Stuff for class QScrollPrepareEvent

# Public constructors for QScrollPrepareEvent
proc newQScrollPrepareEvent*(startPos: QPointF): ptr QScrollPrepareEvent {. header:headerFile, importcpp:"new QScrollPrepareEvent(@)" .} #

# Public methods for QScrollPrepareEvent
proc clone*(this: ptr QScrollPrepareEvent): ptr QScrollPrepareEvent {.header:headerFile, importcpp:"#.clone(@)".} # Public
proc startPos*(this: ptr QScrollPrepareEvent): QPointF {.header:headerFile, importcpp:"#.startPos(@)".} # Public
proc viewportSize*(this: ptr QScrollPrepareEvent): QSizeF {.header:headerFile, importcpp:"#.viewportSize(@)".} # Public
proc contentPosRange*(this: ptr QScrollPrepareEvent): QRectF {.header:headerFile, importcpp:"#.contentPosRange(@)".} # Public
proc contentPos*(this: ptr QScrollPrepareEvent): QPointF {.header:headerFile, importcpp:"#.contentPos(@)".} # Public
proc setViewportSize*(this: ptr QScrollPrepareEvent, size: QSizeF) {.header:headerFile, importcpp:"#.setViewportSize(@)".} # Public
proc setContentPosRange*(this: ptr QScrollPrepareEvent, rect: QRectF) {.header:headerFile, importcpp:"#.setContentPosRange(@)".} # Public
proc setContentPos*(this: ptr QScrollPrepareEvent, pos: QPointF) {.header:headerFile, importcpp:"#.setContentPos(@)".} # Public
# Stuff for class QScrollEvent

# Public constructors for QScrollEvent
proc newQScrollEvent*(contentPos: QPointF, overshoot: QPointF, scrollState: QScrollEvent_ScrollState): ptr QScrollEvent {. header:headerFile, importcpp:"new QScrollEvent(@)" .} #

# Public methods for QScrollEvent
proc clone*(this: ptr QScrollEvent): ptr QScrollEvent {.header:headerFile, importcpp:"#.clone(@)".} # Public
proc contentPos*(this: ptr QScrollEvent): QPointF {.header:headerFile, importcpp:"#.contentPos(@)".} # Public
proc overshootDistance*(this: ptr QScrollEvent): QPointF {.header:headerFile, importcpp:"#.overshootDistance(@)".} # Public
proc scrollState*(this: ptr QScrollEvent): QScrollEvent_ScrollState {.header:headerFile, importcpp:"#.scrollState(@)".} # Public
# Stuff for class QScreenOrientationChangeEvent

# Public constructors for QScreenOrientationChangeEvent
import nimqt/qtgui/qscreen
proc newQScreenOrientationChangeEvent*(screen: ptr QScreen, orientation: Qt_ScreenOrientation): ptr QScreenOrientationChangeEvent {. header:headerFile, importcpp:"new QScreenOrientationChangeEvent(@)" .} #

# Public methods for QScreenOrientationChangeEvent
proc clone*(this: ptr QScreenOrientationChangeEvent): ptr QScreenOrientationChangeEvent {.header:headerFile, importcpp:"#.clone(@)".} # Public
proc screen*(this: ptr QScreenOrientationChangeEvent): ptr QScreen {.header:headerFile, importcpp:"#.screen(@)".} # Public
proc orientation*(this: ptr QScreenOrientationChangeEvent): Qt_ScreenOrientation {.header:headerFile, importcpp:"#.orientation(@)".} # Public
# Stuff for class QApplicationStateChangeEvent

# Public constructors for QApplicationStateChangeEvent
proc newQApplicationStateChangeEvent*(state: Qt_ApplicationState): ptr QApplicationStateChangeEvent {. header:headerFile, importcpp:"new QApplicationStateChangeEvent(@)" .} #

# Public methods for QApplicationStateChangeEvent
proc clone*(this: ptr QApplicationStateChangeEvent): ptr QApplicationStateChangeEvent {.header:headerFile, importcpp:"#.clone(@)".} # Public
proc applicationState*(this: ptr QApplicationStateChangeEvent): Qt_ApplicationState {.header:headerFile, importcpp:"#.applicationState(@)".} # Public

export qurl
export qscreen
export qinputdevice
export qstring
export qsize
export qpointer
export qaction
export qnamespace
export qlist
export qkeysequence
export qmimedata
export qpointingdevice
export qpoint
export qvariant
export qeventpoint
export qregion
export qfile
export qrect
export qobject
export qcoreevent
export qiodevice
