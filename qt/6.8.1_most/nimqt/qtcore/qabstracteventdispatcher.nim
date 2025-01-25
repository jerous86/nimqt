const headerFile* = "QtCore/qabstracteventdispatcher.h"

import nimqt/qtcore/qobject
type
    # Classes found in the C++ code
    QAbstractEventDispatcher* {.header:headerFile,importcpp:"QAbstractEventDispatcher" ,pure.} = object of QObject

# Stuff for class QAbstractEventDispatcher

# Public constructors for QAbstractEventDispatcher
# 1 default parameters!
proc newQAbstractEventDispatcher*(parent: ptr QObject): ptr QAbstractEventDispatcher {. header:headerFile, importcpp:"new QAbstractEventDispatcher(@)" .} #
proc newQAbstractEventDispatcher*(): ptr QAbstractEventDispatcher {. header:headerFile, importcpp:"new QAbstractEventDispatcher(@)" .} #

# Public methods for QAbstractEventDispatcher
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QAbstractEventDispatcher_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QAbstractEventDispatcher::tr(@)".} # Public static
proc static_QAbstractEventDispatcher_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QAbstractEventDispatcher::tr(@)".} # Public static
import nimqt/qtcore/qthread
# 1 default parameters!
proc static_QAbstractEventDispatcher_instance*(thread: ptr QThread): ptr QAbstractEventDispatcher {.header:headerFile, importcpp:"QAbstractEventDispatcher::instance(@)".} # Public static
proc static_QAbstractEventDispatcher_instance*(): ptr QAbstractEventDispatcher {.header:headerFile, importcpp:"QAbstractEventDispatcher::instance(@)".} # Public static
import nimqt/qtcore/qeventloop
proc processEvents*(this: ptr QAbstractEventDispatcher, flags: QEventLoop_ProcessEventsFlags): bool {.header:headerFile, importcpp:"#.processEvents(@)".} # Public
import nimqt/qtcore/qsocketnotifier
proc registerSocketNotifier*(this: ptr QAbstractEventDispatcher, notifier: ptr QSocketNotifier) {.header:headerFile, importcpp:"#.registerSocketNotifier(@)".} # Public
proc unregisterSocketNotifier*(this: ptr QAbstractEventDispatcher, notifier: ptr QSocketNotifier) {.header:headerFile, importcpp:"#.unregisterSocketNotifier(@)".} # Public
import nimqt/qtcore/qnamespace
proc registerTimer*(this: ptr QAbstractEventDispatcher, interval: clonglong, timerType: Qt_TimerType, `object`: ptr QObject): cint {.header:headerFile, importcpp:"#.registerTimer(@)".} # Public
proc registerTimer*(this: ptr QAbstractEventDispatcher, timerId: cint, interval: clonglong, timerType: Qt_TimerType, `object`: ptr QObject) {.header:headerFile, importcpp:"#.registerTimer(@)".} # Public
proc unregisterTimer*(this: ptr QAbstractEventDispatcher, timerId: cint): bool {.header:headerFile, importcpp:"#.unregisterTimer(@)".} # Public
proc unregisterTimers*(this: ptr QAbstractEventDispatcher, `object`: ptr QObject): bool {.header:headerFile, importcpp:"#.unregisterTimers(@)".} # Public
proc remainingTime*(this: ptr QAbstractEventDispatcher, timerId: cint): cint {.header:headerFile, importcpp:"#.remainingTime(@)".} # Public
proc wakeUp*(this: ptr QAbstractEventDispatcher) {.header:headerFile, importcpp:"#.wakeUp(@)".} # Public
proc interrupt*(this: ptr QAbstractEventDispatcher) {.header:headerFile, importcpp:"#.interrupt(@)".} # Public
proc startingUp*(this: ptr QAbstractEventDispatcher) {.header:headerFile, importcpp:"#.startingUp(@)".} # Public
proc closingDown*(this: ptr QAbstractEventDispatcher) {.header:headerFile, importcpp:"#.closingDown(@)".} # Public
import nimqt/qtcore/qabstractnativeeventfilter
proc installNativeEventFilter*(this: ptr QAbstractEventDispatcher, filterObj: ptr QAbstractNativeEventFilter) {.header:headerFile, importcpp:"#.installNativeEventFilter(@)".} # Public
proc removeNativeEventFilter*(this: ptr QAbstractEventDispatcher, filterObj: ptr QAbstractNativeEventFilter) {.header:headerFile, importcpp:"#.removeNativeEventFilter(@)".} # Public
import nimqt/qtcore/qbytearray
proc filterNativeEvent*(this: ptr QAbstractEventDispatcher, eventType: QByteArray, message: ptr, result: ptr cint): bool {.header:headerFile, importcpp:"#.filterNativeEvent(@)".} # Public
proc aboutToBlock*(this: ptr QAbstractEventDispatcher) {.header:headerFile, importcpp:"#.aboutToBlock(@)".} # Public
proc awake*(this: ptr QAbstractEventDispatcher) {.header:headerFile, importcpp:"#.awake(@)".} # Public

export qeventloop
export qstring
export qnamespace
export qthread
export qbytearray
export qsocketnotifier
export qabstractnativeeventfilter
export qobject
