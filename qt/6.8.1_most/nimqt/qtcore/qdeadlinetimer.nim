const headerFile* = "QtCore/qdeadlinetimer.h"

type
    # Enums found in the C++ code
    # Global
    QDeadlineTimer_ForeverConstant* {.header:headerFile,importcpp:"QDeadlineTimer::ForeverConstant".} = enum Forever = 0

type
    # Classes found in the C++ code
    QDeadlineTimer* {.header:headerFile,importcpp:"QDeadlineTimer" ,pure,inheritable.} = object

# Stuff for class QDeadlineTimer

# Public constructors for QDeadlineTimer
import nimqt/qtcore/qnamespace
proc newQDeadlineTimer*(`type`: Qt_TimerType): QDeadlineTimer {. header:headerFile, importcpp:"QDeadlineTimer(@)", constructor .} #
proc newQDeadlineTimer*(arg_0: QDeadlineTimer_ForeverConstant, `type`: Qt_TimerType): QDeadlineTimer {. header:headerFile, importcpp:"QDeadlineTimer(@)", constructor .} #
proc newQDeadlineTimer*(msecs: clonglong, `type`: Qt_TimerType): QDeadlineTimer {. header:headerFile, importcpp:"QDeadlineTimer(@)", constructor .} #

# Public methods for QDeadlineTimer
proc swap*(this: QDeadlineTimer, other: QDeadlineTimer) {.header:headerFile, importcpp:"#.swap(@)".} # Public
proc isForever*(this: QDeadlineTimer): bool {.header:headerFile, importcpp:"#.isForever(@)".} # Public
proc hasExpired*(this: QDeadlineTimer): bool {.header:headerFile, importcpp:"#.hasExpired(@)".} # Public
proc timerType*(this: QDeadlineTimer): Qt_TimerType {.header:headerFile, importcpp:"#.timerType(@)".} # Public
proc setTimerType*(this: QDeadlineTimer, `type`: Qt_TimerType) {.header:headerFile, importcpp:"#.setTimerType(@)".} # Public
proc remainingTime*(this: QDeadlineTimer): clonglong {.header:headerFile, importcpp:"#.remainingTime(@)".} # Public
proc remainingTimeNSecs*(this: QDeadlineTimer): clonglong {.header:headerFile, importcpp:"#.remainingTimeNSecs(@)".} # Public
proc setRemainingTime*(this: QDeadlineTimer, msecs: clonglong, `type`: Qt_TimerType) {.header:headerFile, importcpp:"#.setRemainingTime(@)".} # Public
# 1 default parameters!
proc setPreciseRemainingTime*(this: QDeadlineTimer, secs: clonglong, nsecs: clonglong, `type`: Qt_TimerType) {.header:headerFile, importcpp:"#.setPreciseRemainingTime(@)".} # Public
proc setPreciseRemainingTime*(this: QDeadlineTimer, secs: clonglong, nsecs: clonglong) {.header:headerFile, importcpp:"#.setPreciseRemainingTime(@)".} # Public
proc deadline*(this: QDeadlineTimer): clonglong {.header:headerFile, importcpp:"#.deadline(@)".} # Public
proc deadlineNSecs*(this: QDeadlineTimer): clonglong {.header:headerFile, importcpp:"#.deadlineNSecs(@)".} # Public
proc setDeadline*(this: QDeadlineTimer, msecs: clonglong, timerType: Qt_TimerType) {.header:headerFile, importcpp:"#.setDeadline(@)".} # Public
# 1 default parameters!
proc setPreciseDeadline*(this: QDeadlineTimer, secs: clonglong, nsecs: clonglong, `type`: Qt_TimerType) {.header:headerFile, importcpp:"#.setPreciseDeadline(@)".} # Public
proc setPreciseDeadline*(this: QDeadlineTimer, secs: clonglong, nsecs: clonglong) {.header:headerFile, importcpp:"#.setPreciseDeadline(@)".} # Public
proc static_QDeadlineTimer_addNSecs*(dt: QDeadlineTimer, nsecs: clonglong): QDeadlineTimer {.header:headerFile, importcpp:"QDeadlineTimer::addNSecs(@)".} # Public static
proc static_QDeadlineTimer_current*(timerType: Qt_TimerType): QDeadlineTimer {.header:headerFile, importcpp:"QDeadlineTimer::current(@)".} # Public static
proc `+=`*(this: QDeadlineTimer, msecs: clonglong): QDeadlineTimer {.header:headerFile, importcpp:"#.operator+=(@)".} # Public
proc `-=`*(this: QDeadlineTimer, msecs: clonglong): QDeadlineTimer {.header:headerFile, importcpp:"#.operator-=(@)".} # Public
proc q_data*(this: QDeadlineTimer): cint {.header:headerFile, importcpp:"#._q_data(@)".} # Public

export qnamespace
