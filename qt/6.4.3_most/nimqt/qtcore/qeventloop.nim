const headerFile* = "QtCore/qeventloop.h"

type
    # Enums found in the C++ code
    # Global
    QEventLoop_ProcessEventsFlag* {.header:headerFile,importcpp:"QEventLoop::ProcessEventsFlag".} = enum AllEvents = 0, ExcludeUserInputEvents = 0x1, ExcludeSocketNotifiers = 0x2, WaitForMoreEvents = 0x4, 
        X11ExcludeTimers = 0x8, EventLoopExec = 0x20, DialogExec = 0x40, ApplicationExec = 0x80

import nimqt/qtcore/qobject
type
    # Classes found in the C++ code
    QEventLoop* {.header:headerFile,importcpp:"QEventLoop" ,pure.} = object of QObject
    QEventLoopLocker* {.header:headerFile,importcpp:"QEventLoopLocker" ,pure,inheritable.} = object
import nimqt/qtcore/qflags


type
    # typedefs found in the C++ code
    QEventLoop_ProcessEventsFlags * = QFlags[QEventLoop_ProcessEventsFlag]

# Stuff for class QEventLoop

# Public constructors for QEventLoop
# 1 default parameters!
proc newQEventLoop*(parent: ptr QObject): ptr QEventLoop {. header:headerFile, importcpp:"new QEventLoop(@)" .} #
proc newQEventLoop*(): ptr QEventLoop {. header:headerFile, importcpp:"new QEventLoop(@)" .} #

# Public methods for QEventLoop
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QEventLoop_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QEventLoop::tr(@)".} # Public static
proc static_QEventLoop_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QEventLoop::tr(@)".} # Public static
# 1 default parameters!
proc processEvents*(this: ptr QEventLoop, flags: QFlags[QEventLoop_ProcessEventsFlag]): bool {.header:headerFile, importcpp:"#.processEvents(@)".} # Public
proc processEvents*(this: ptr QEventLoop): bool {.header:headerFile, importcpp:"#.processEvents(@)".} # Public
proc processEvents*(this: ptr QEventLoop, flags: QFlags[QEventLoop_ProcessEventsFlag], maximumTime: cint) {.header:headerFile, importcpp:"#.processEvents(@)".} # Public
# 1 default parameters!
proc exec*(this: ptr QEventLoop, flags: QFlags[QEventLoop_ProcessEventsFlag]): cint {.header:headerFile, importcpp:"#.exec(@)".} # Public
proc exec*(this: ptr QEventLoop): cint {.header:headerFile, importcpp:"#.exec(@)".} # Public
proc isRunning*(this: ptr QEventLoop): bool {.header:headerFile, importcpp:"#.isRunning(@)".} # Public
proc wakeUp*(this: ptr QEventLoop) {.header:headerFile, importcpp:"#.wakeUp(@)".} # Public
import nimqt/qtcore/qcoreevent
proc event*(this: ptr QEventLoop, event: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Public
# 1 default parameters!
proc exit*(this: ptr QEventLoop, returnCode: cint) {.header:headerFile, importcpp:"#.exit(@)".} # Public
proc exit*(this: ptr QEventLoop) {.header:headerFile, importcpp:"#.exit(@)".} # Public
proc quit*(this: ptr QEventLoop) {.header:headerFile, importcpp:"#.quit(@)".} # Public
# Stuff for class QEventLoopLocker

# Public constructors for QEventLoopLocker
proc newQEventLoopLocker*(): QEventLoopLocker {. header:headerFile, importcpp:"QEventLoopLocker(@)", constructor .} #
proc newQEventLoopLocker*(loop: ptr QEventLoop): QEventLoopLocker {. header:headerFile, importcpp:"QEventLoopLocker(@)", constructor .} #
import nimqt/qtcore/qthread
proc newQEventLoopLocker*(thread: ptr QThread): QEventLoopLocker {. header:headerFile, importcpp:"QEventLoopLocker(@)", constructor .} #

export qstring
export qthread
export qflags
export qobject
export qcoreevent
