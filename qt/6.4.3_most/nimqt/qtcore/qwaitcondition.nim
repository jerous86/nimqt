const headerFile* = "QtCore/qwaitcondition.h"

# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}
when (NimMajor, NimMinor, NimPatch) < (1, 9, 0):
    type
        # Classes found in the C++ code
        QWaitCondition* {.header:headerFile,importcpp:"QWaitCondition" ,pure.} = object {.inheritable.}
elif (NimMajor, NimMinor, NimPatch) >= (1, 9, 0):
    type
        # Classes found in the C++ code
        QWaitCondition* {.header:headerFile,importcpp:"QWaitCondition" ,pure,inheritable.} = object
{.push warning[Deprecated]: on.}

# Stuff for class QWaitCondition

# Public constructors for QWaitCondition
proc newQWaitCondition*(): QWaitCondition {. header:headerFile, importcpp:"QWaitCondition(@)", constructor .} #

# Public methods for QWaitCondition
import nimqt/qtcore/qdeadlinetimer
import nimqt/qtcore/qmutex
proc wait*(this: QWaitCondition, lockedMutex: ptr QMutex, deadline: QDeadlineTimer): bool {.header:headerFile, importcpp:"#.wait(@)".} # Public
proc wait*(this: QWaitCondition, lockedMutex: ptr QMutex, time: culong): bool {.header:headerFile, importcpp:"#.wait(@)".} # Public
import nimqt/qtcore/qreadwritelock
proc wait*(this: QWaitCondition, lockedReadWriteLock: ptr QReadWriteLock, deadline: QDeadlineTimer): bool {.header:headerFile, importcpp:"#.wait(@)".} # Public
proc wait*(this: QWaitCondition, lockedReadWriteLock: ptr QReadWriteLock, time: culong): bool {.header:headerFile, importcpp:"#.wait(@)".} # Public
proc wakeOne*(this: QWaitCondition) {.header:headerFile, importcpp:"#.wakeOne(@)".} # Public
proc wakeAll*(this: QWaitCondition) {.header:headerFile, importcpp:"#.wakeAll(@)".} # Public
proc notify_one*(this: QWaitCondition) {.header:headerFile, importcpp:"#.notify_one(@)".} # Public
proc notify_all*(this: QWaitCondition) {.header:headerFile, importcpp:"#.notify_all(@)".} # Public

export qdeadlinetimer
export qmutex
export qreadwritelock
