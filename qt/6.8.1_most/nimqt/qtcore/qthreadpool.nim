const headerFile* = "QtCore/qthreadpool.h"

import nimqt/qtcore/qobject
type
    # Classes found in the C++ code
    QThreadPool* {.header:headerFile,importcpp:"QThreadPool" ,pure.} = object of QObject

# Stuff for class QThreadPool

# Public constructors for QThreadPool
# 1 default parameters!
proc newQThreadPool*(parent: ptr QObject): ptr QThreadPool {. header:headerFile, importcpp:"new QThreadPool(@)" .} #
proc newQThreadPool*(): ptr QThreadPool {. header:headerFile, importcpp:"new QThreadPool(@)" .} #

# Public methods for QThreadPool
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QThreadPool_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QThreadPool::tr(@)".} # Public static
proc static_QThreadPool_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QThreadPool::tr(@)".} # Public static
proc static_QThreadPool_globalInstance*(): ptr QThreadPool {.header:headerFile, importcpp:"QThreadPool::globalInstance(@)".} # Public static
import nimqt/qtcore/qrunnable
# 1 default parameters!
proc start*(this: ptr QThreadPool, runnable: ptr QRunnable, priority: cint) {.header:headerFile, importcpp:"#.start(@)".} # Public
proc start*(this: ptr QThreadPool, runnable: ptr QRunnable) {.header:headerFile, importcpp:"#.start(@)".} # Public
proc tryStart*(this: ptr QThreadPool, runnable: ptr QRunnable): bool {.header:headerFile, importcpp:"#.tryStart(@)".} # Public
proc startOnReservedThread*(this: ptr QThreadPool, runnable: ptr QRunnable) {.header:headerFile, importcpp:"#.startOnReservedThread(@)".} # Public
proc expiryTimeout*(this: ptr QThreadPool): cint {.header:headerFile, importcpp:"#.expiryTimeout(@)".} # Public
proc setExpiryTimeout*(this: ptr QThreadPool, expiryTimeout: cint) {.header:headerFile, importcpp:"#.setExpiryTimeout(@)".} # Public
proc maxThreadCount*(this: ptr QThreadPool): cint {.header:headerFile, importcpp:"#.maxThreadCount(@)".} # Public
proc setMaxThreadCount*(this: ptr QThreadPool, maxThreadCount: cint) {.header:headerFile, importcpp:"#.setMaxThreadCount(@)".} # Public
proc activeThreadCount*(this: ptr QThreadPool): cint {.header:headerFile, importcpp:"#.activeThreadCount(@)".} # Public
proc setStackSize*(this: ptr QThreadPool, stackSize: cuint) {.header:headerFile, importcpp:"#.setStackSize(@)".} # Public
proc stackSize*(this: ptr QThreadPool): cuint {.header:headerFile, importcpp:"#.stackSize(@)".} # Public
import nimqt/qtcore/qthread
proc setThreadPriority*(this: ptr QThreadPool, priority: QThread_Priority) {.header:headerFile, importcpp:"#.setThreadPriority(@)".} # Public
proc threadPriority*(this: ptr QThreadPool): QThread_Priority {.header:headerFile, importcpp:"#.threadPriority(@)".} # Public
proc reserveThread*(this: ptr QThreadPool) {.header:headerFile, importcpp:"#.reserveThread(@)".} # Public
proc releaseThread*(this: ptr QThreadPool) {.header:headerFile, importcpp:"#.releaseThread(@)".} # Public
proc waitForDone*(this: ptr QThreadPool, msecs: cint): bool {.header:headerFile, importcpp:"#.waitForDone(@)".} # Public
proc clear*(this: ptr QThreadPool) {.header:headerFile, importcpp:"#.clear(@)".} # Public
proc contains*(this: ptr QThreadPool, thread: ptr QThread): bool {.header:headerFile, importcpp:"#.contains(@)".} # Public
proc tryTake*(this: ptr QThreadPool, runnable: ptr QRunnable): bool {.header:headerFile, importcpp:"#.tryTake(@)".} # Public

export qstring
export qthread
export qrunnable
export qobject
