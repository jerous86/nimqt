const headerFile* = "QtCore/qtimer.h"

import nimqt/qtcore/qobject
type
    # Classes found in the C++ code
    QTimer* {.header:headerFile,importcpp:"QTimer" ,pure.} = object of QObject

# Stuff for class QTimer

# Public constructors for QTimer
# 1 default parameters!
proc newQTimer*(parent: ptr QObject): ptr QTimer {. header:headerFile, importcpp:"new QTimer(@)" .} #
proc newQTimer*(): ptr QTimer {. header:headerFile, importcpp:"new QTimer(@)" .} #

# Public methods for QTimer
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QTimer_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QTimer::tr(@)".} # Public static
proc static_QTimer_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QTimer::tr(@)".} # Public static
proc isActive*(this: ptr QTimer): bool {.header:headerFile, importcpp:"#.isActive(@)".} # Public
import nimqt/qtcore/qproperty
proc bindableActive*(this: ptr QTimer): QBindable[bool] {.header:headerFile, importcpp:"#.bindableActive(@)".} # Public
proc timerId*(this: ptr QTimer): cint {.header:headerFile, importcpp:"#.timerId(@)".} # Public
proc setInterval*(this: ptr QTimer, msec: cint) {.header:headerFile, importcpp:"#.setInterval(@)".} # Public
proc interval*(this: ptr QTimer): cint {.header:headerFile, importcpp:"#.interval(@)".} # Public
proc bindableInterval*(this: ptr QTimer): QBindable[cint] {.header:headerFile, importcpp:"#.bindableInterval(@)".} # Public
proc remainingTime*(this: ptr QTimer): cint {.header:headerFile, importcpp:"#.remainingTime(@)".} # Public
import nimqt/qtcore/qnamespace
proc setTimerType*(this: ptr QTimer, atype: Qt_TimerType) {.header:headerFile, importcpp:"#.setTimerType(@)".} # Public
proc timerType*(this: ptr QTimer): Qt_TimerType {.header:headerFile, importcpp:"#.timerType(@)".} # Public
proc bindableTimerType*(this: ptr QTimer): QBindable[Qt_TimerType] {.header:headerFile, importcpp:"#.bindableTimerType(@)".} # Public
proc setSingleShot*(this: ptr QTimer, singleShot: bool) {.header:headerFile, importcpp:"#.setSingleShot(@)".} # Public
proc isSingleShot*(this: ptr QTimer): bool {.header:headerFile, importcpp:"#.isSingleShot(@)".} # Public
proc bindableSingleShot*(this: ptr QTimer): QBindable[bool] {.header:headerFile, importcpp:"#.bindableSingleShot(@)".} # Public
proc static_QTimer_singleShot*(msec: cint, receiver: ptr QObject, member: ptr char) {.header:headerFile, importcpp:"QTimer::singleShot(@)".} # Public static
proc static_QTimer_singleShot*(msec: cint, timerType: Qt_TimerType, receiver: ptr QObject, member: ptr char) {.header:headerFile, importcpp:"QTimer::singleShot(@)".} # Public static
proc start*(this: ptr QTimer, msec: cint) {.header:headerFile, importcpp:"#.start(@)".} # Public
proc start*(this: ptr QTimer) {.header:headerFile, importcpp:"#.start(@)".} # Public
proc stop*(this: ptr QTimer) {.header:headerFile, importcpp:"#.stop(@)".} # Public

# Protected methods methods for QTimer
import nimqt/qtcore/qcoreevent
proc timerEvent*(this: ptr QTimer, arg_0: ptr QTimerEvent) {.header:headerFile, importcpp:"#.timerEvent(@)".} # Protected

export qstring
export qproperty
export qnamespace
export qobject
export qcoreevent
