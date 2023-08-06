const headerFile* = "QtCore/qelapsedtimer.h"

type
    # Enums found in the C++ code
    # Global
    QElapsedTimer_ClockType* {.header:headerFile,importcpp:"QElapsedTimer::ClockType".} = enum SystemTime = 0, MonotonicClock = 0x1, TickCounter = 0x2, MachAbsoluteTime = 0x3, 
        PerformanceCounter = 0x4

type
    # Classes found in the C++ code
    QElapsedTimer* {.header:headerFile,importcpp:"QElapsedTimer" ,pure,inheritable.} = object

# Stuff for class QElapsedTimer

# Public constructors for QElapsedTimer
proc newQElapsedTimer*(): QElapsedTimer {. header:headerFile, importcpp:"QElapsedTimer(@)", constructor .} #

# Public methods for QElapsedTimer
proc static_QElapsedTimer_clockType*(): QElapsedTimer_ClockType {.header:headerFile, importcpp:"QElapsedTimer::clockType(@)".} # Public static
proc static_QElapsedTimer_isMonotonic*(): bool {.header:headerFile, importcpp:"QElapsedTimer::isMonotonic(@)".} # Public static
proc start*(this: QElapsedTimer) {.header:headerFile, importcpp:"#.start(@)".} # Public
proc restart*(this: QElapsedTimer): clonglong {.header:headerFile, importcpp:"#.restart(@)".} # Public
proc invalidate*(this: QElapsedTimer) {.header:headerFile, importcpp:"#.invalidate(@)".} # Public
proc isValid*(this: QElapsedTimer): bool {.header:headerFile, importcpp:"#.isValid(@)".} # Public
proc nsecsElapsed*(this: QElapsedTimer): clonglong {.header:headerFile, importcpp:"#.nsecsElapsed(@)".} # Public
proc elapsed*(this: QElapsedTimer): clonglong {.header:headerFile, importcpp:"#.elapsed(@)".} # Public
proc hasExpired*(this: QElapsedTimer, timeout: clonglong): bool {.header:headerFile, importcpp:"#.hasExpired(@)".} # Public
proc msecsSinceReference*(this: QElapsedTimer): clonglong {.header:headerFile, importcpp:"#.msecsSinceReference(@)".} # Public
proc msecsTo*(this: QElapsedTimer, other: QElapsedTimer): clonglong {.header:headerFile, importcpp:"#.msecsTo(@)".} # Public
proc secsTo*(this: QElapsedTimer, other: QElapsedTimer): clonglong {.header:headerFile, importcpp:"#.secsTo(@)".} # Public

