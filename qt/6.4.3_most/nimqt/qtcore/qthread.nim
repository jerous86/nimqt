const headerFile* = "QtCore/qthread.h"

type
    # Enums found in the C++ code
    # Global
    QThread_Priority* {.header:headerFile,importcpp:"QThread::Priority".} = enum IdlePriority = 0, LowestPriority = 0x1, LowPriority = 0x2, NormalPriority = 0x3, 
        HighPriority = 0x4, HighestPriority = 0x5, TimeCriticalPriority = 0x6, InheritPriority = 0x7

import nimqt/qtcore/qobject
type
    # Classes found in the C++ code
    QThread* {.header:headerFile,importcpp:"QThread" ,pure.} = object of QObject

# Stuff for class QThread

# Public constructors for QThread
# 1 default parameters!
proc newQThread*(parent: ptr QObject): ptr QThread {. header:headerFile, importcpp:"new QThread(@)" .} #
proc newQThread*(): ptr QThread {. header:headerFile, importcpp:"new QThread(@)" .} #

# Public methods for QThread
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QThread_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QThread::tr(@)".} # Public static
proc static_QThread_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QThread::tr(@)".} # Public static
proc static_QThread_currentThread*(): ptr QThread {.header:headerFile, importcpp:"QThread::currentThread(@)".} # Public static
proc static_QThread_idealThreadCount*(): cint {.header:headerFile, importcpp:"QThread::idealThreadCount(@)".} # Public static
proc static_QThread_yieldCurrentThread*() {.header:headerFile, importcpp:"QThread::yieldCurrentThread(@)".} # Public static
proc setPriority*(this: ptr QThread, priority: QThread_Priority) {.header:headerFile, importcpp:"#.setPriority(@)".} # Public
proc priority*(this: ptr QThread): QThread_Priority {.header:headerFile, importcpp:"#.priority(@)".} # Public
proc isFinished*(this: ptr QThread): bool {.header:headerFile, importcpp:"#.isFinished(@)".} # Public
proc isRunning*(this: ptr QThread): bool {.header:headerFile, importcpp:"#.isRunning(@)".} # Public
proc requestInterruption*(this: ptr QThread) {.header:headerFile, importcpp:"#.requestInterruption(@)".} # Public
proc isInterruptionRequested*(this: ptr QThread): bool {.header:headerFile, importcpp:"#.isInterruptionRequested(@)".} # Public
proc setStackSize*(this: ptr QThread, stackSize: cuint) {.header:headerFile, importcpp:"#.setStackSize(@)".} # Public
proc stackSize*(this: ptr QThread): cuint {.header:headerFile, importcpp:"#.stackSize(@)".} # Public
import nimqt/qtcore/qcoreevent
proc event*(this: ptr QThread, event: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Public
proc loopLevel*(this: ptr QThread): cint {.header:headerFile, importcpp:"#.loopLevel(@)".} # Public
proc start*(this: ptr QThread, arg_0: QThread_Priority) {.header:headerFile, importcpp:"#.start(@)".} # Public
proc terminate*(this: ptr QThread) {.header:headerFile, importcpp:"#.terminate(@)".} # Public
# 1 default parameters!
proc exit*(this: ptr QThread, retcode: cint) {.header:headerFile, importcpp:"#.exit(@)".} # Public
proc exit*(this: ptr QThread) {.header:headerFile, importcpp:"#.exit(@)".} # Public
proc quit*(this: ptr QThread) {.header:headerFile, importcpp:"#.quit(@)".} # Public
import nimqt/qtcore/qdeadlinetimer
proc wait*(this: ptr QThread, deadline: QDeadlineTimer): bool {.header:headerFile, importcpp:"#.wait(@)".} # Public
proc wait*(this: ptr QThread, time: culong): bool {.header:headerFile, importcpp:"#.wait(@)".} # Public
proc static_QThread_sleep*(arg_0: culong) {.header:headerFile, importcpp:"QThread::sleep(@)".} # Public static
proc static_QThread_msleep*(arg_0: culong) {.header:headerFile, importcpp:"QThread::msleep(@)".} # Public static
proc static_QThread_usleep*(arg_0: culong) {.header:headerFile, importcpp:"QThread::usleep(@)".} # Public static

# Protected methods methods for QThread
proc run*(this: ptr QThread) {.header:headerFile, importcpp:"#.run(@)".} # Protected
proc exec*(this: ptr QThread): cint {.header:headerFile, importcpp:"#.exec(@)".} # Protected
# 1 default parameters!
proc static_QThread_setTerminationEnabled*(enabled: bool) {.header:headerFile, importcpp:"QThread::setTerminationEnabled(@)".} # Protected static
proc static_QThread_setTerminationEnabled*() {.header:headerFile, importcpp:"QThread::setTerminationEnabled(@)".} # Protected static

export qstring
export qdeadlinetimer
export qobject
export qcoreevent
