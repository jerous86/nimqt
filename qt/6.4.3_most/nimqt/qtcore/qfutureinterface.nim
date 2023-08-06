const headerFile* = "QtCore/qfutureinterface.h"

type
    # Enums found in the C++ code
    # Global
    QFutureInterfaceBase_State* {.header:headerFile,importcpp:"QFutureInterfaceBase::State".} = enum NoState = 0, Running = 0x1, Started = 0x2, Finished = 0x4, 
        Canceled = 0x8, Suspending = 0x10, Suspended = 0x20, Throttled = 0x40, Pending = 0x80
    QFutureInterfaceBase_CancelMode* {.header:headerFile,importcpp:"QFutureInterfaceBase::CancelMode".} = enum CancelOnly = 0, CancelAndFinish = 0x1

type
    # Classes found in the C++ code
    QFutureInterfaceBase* {.header:headerFile,importcpp:"QFutureInterfaceBase" ,pure,inheritable.} = object
    QFutureInterface*[T] {.header:headerFile,importcpp:"QFutureInterface" ,pure.} = object of QFutureInterfaceBase


type
    # typedefs found in the C++ code
    QFutureInterface_State * = QFutureInterfaceBase_State
    QFutureInterface_CancelMode * = QFutureInterfaceBase_CancelMode

# Stuff for class QFutureInterfaceBase

# Public constructors for QFutureInterfaceBase
proc newQFutureInterfaceBase*(initialState: QFutureInterfaceBase_State): ptr QFutureInterfaceBase {. header:headerFile, importcpp:"new QFutureInterfaceBase(@)" .} #
proc newQFutureInterfaceBase*(other: QFutureInterfaceBase): ptr QFutureInterfaceBase {. header:headerFile, importcpp:"new QFutureInterfaceBase(@)" .} #

# Public methods for QFutureInterfaceBase
proc reportStarted*(this: ptr QFutureInterfaceBase) {.header:headerFile, importcpp:"#.reportStarted(@)".} # Public
proc reportFinished*(this: ptr QFutureInterfaceBase) {.header:headerFile, importcpp:"#.reportFinished(@)".} # Public
proc reportCanceled*(this: ptr QFutureInterfaceBase) {.header:headerFile, importcpp:"#.reportCanceled(@)".} # Public
import nimqt/qtcore/qrunnable
proc setRunnable*(this: ptr QFutureInterfaceBase, runnable: ptr QRunnable) {.header:headerFile, importcpp:"#.setRunnable(@)".} # Public
import nimqt/qtcore/qthreadpool
proc setThreadPool*(this: ptr QFutureInterfaceBase, pool: ptr QThreadPool) {.header:headerFile, importcpp:"#.setThreadPool(@)".} # Public
proc threadPool*(this: ptr QFutureInterfaceBase): ptr QThreadPool {.header:headerFile, importcpp:"#.threadPool(@)".} # Public
proc setFilterMode*(this: ptr QFutureInterfaceBase, enable: bool) {.header:headerFile, importcpp:"#.setFilterMode(@)".} # Public
proc setProgressRange*(this: ptr QFutureInterfaceBase, minimum: cint, maximum: cint) {.header:headerFile, importcpp:"#.setProgressRange(@)".} # Public
proc progressMinimum*(this: ptr QFutureInterfaceBase): cint {.header:headerFile, importcpp:"#.progressMinimum(@)".} # Public
proc progressMaximum*(this: ptr QFutureInterfaceBase): cint {.header:headerFile, importcpp:"#.progressMaximum(@)".} # Public
proc isProgressUpdateNeeded*(this: ptr QFutureInterfaceBase): bool {.header:headerFile, importcpp:"#.isProgressUpdateNeeded(@)".} # Public
proc setProgressValue*(this: ptr QFutureInterfaceBase, progressValue: cint) {.header:headerFile, importcpp:"#.setProgressValue(@)".} # Public
proc progressValue*(this: ptr QFutureInterfaceBase): cint {.header:headerFile, importcpp:"#.progressValue(@)".} # Public
import nimqt/qtcore/qstring
proc setProgressValueAndText*(this: ptr QFutureInterfaceBase, progressValue: cint, progressText: QString) {.header:headerFile, importcpp:"#.setProgressValueAndText(@)".} # Public
proc progressText*(this: ptr QFutureInterfaceBase): QString {.header:headerFile, importcpp:"#.progressText(@)".} # Public
proc setExpectedResultCount*(this: ptr QFutureInterfaceBase, resultCount: cint) {.header:headerFile, importcpp:"#.setExpectedResultCount(@)".} # Public
proc expectedResultCount*(this: ptr QFutureInterfaceBase): cint {.header:headerFile, importcpp:"#.expectedResultCount(@)".} # Public
proc resultCount*(this: ptr QFutureInterfaceBase): cint {.header:headerFile, importcpp:"#.resultCount(@)".} # Public
proc queryState*(this: ptr QFutureInterfaceBase, state: QFutureInterfaceBase_State): bool {.header:headerFile, importcpp:"#.queryState(@)".} # Public
proc isRunning*(this: ptr QFutureInterfaceBase): bool {.header:headerFile, importcpp:"#.isRunning(@)".} # Public
proc isStarted*(this: ptr QFutureInterfaceBase): bool {.header:headerFile, importcpp:"#.isStarted(@)".} # Public
proc isCanceled*(this: ptr QFutureInterfaceBase): bool {.header:headerFile, importcpp:"#.isCanceled(@)".} # Public
proc isFinished*(this: ptr QFutureInterfaceBase): bool {.header:headerFile, importcpp:"#.isFinished(@)".} # Public
proc isPaused*(this: ptr QFutureInterfaceBase): bool {.header:headerFile, importcpp:"#.isPaused(@)".} # Public
proc setPaused*(this: ptr QFutureInterfaceBase, paused: bool) {.header:headerFile, importcpp:"#.setPaused(@)".} # Public
proc togglePaused*(this: ptr QFutureInterfaceBase) {.header:headerFile, importcpp:"#.togglePaused(@)".} # Public
proc isSuspending*(this: ptr QFutureInterfaceBase): bool {.header:headerFile, importcpp:"#.isSuspending(@)".} # Public
proc isSuspended*(this: ptr QFutureInterfaceBase): bool {.header:headerFile, importcpp:"#.isSuspended(@)".} # Public
proc isThrottled*(this: ptr QFutureInterfaceBase): bool {.header:headerFile, importcpp:"#.isThrottled(@)".} # Public
proc isResultReadyAt*(this: ptr QFutureInterfaceBase, index: cint): bool {.header:headerFile, importcpp:"#.isResultReadyAt(@)".} # Public
proc isValid*(this: ptr QFutureInterfaceBase): bool {.header:headerFile, importcpp:"#.isValid(@)".} # Public
proc loadState*(this: ptr QFutureInterfaceBase): cint {.header:headerFile, importcpp:"#.loadState(@)".} # Public
proc cancel*(this: ptr QFutureInterfaceBase) {.header:headerFile, importcpp:"#.cancel(@)".} # Public
proc cancelAndFinish*(this: ptr QFutureInterfaceBase) {.header:headerFile, importcpp:"#.cancelAndFinish(@)".} # Public
proc setSuspended*(this: ptr QFutureInterfaceBase, suspend: bool) {.header:headerFile, importcpp:"#.setSuspended(@)".} # Public
proc toggleSuspended*(this: ptr QFutureInterfaceBase) {.header:headerFile, importcpp:"#.toggleSuspended(@)".} # Public
proc reportSuspended*(this: ptr QFutureInterfaceBase) {.header:headerFile, importcpp:"#.reportSuspended(@)".} # Public
proc setThrottled*(this: ptr QFutureInterfaceBase, enable: bool) {.header:headerFile, importcpp:"#.setThrottled(@)".} # Public
proc waitForFinished*(this: ptr QFutureInterfaceBase) {.header:headerFile, importcpp:"#.waitForFinished(@)".} # Public
proc waitForNextResult*(this: ptr QFutureInterfaceBase): bool {.header:headerFile, importcpp:"#.waitForNextResult(@)".} # Public
proc waitForResult*(this: ptr QFutureInterfaceBase, resultIndex: cint) {.header:headerFile, importcpp:"#.waitForResult(@)".} # Public
proc waitForResume*(this: ptr QFutureInterfaceBase) {.header:headerFile, importcpp:"#.waitForResume(@)".} # Public
proc suspendIfRequested*(this: ptr QFutureInterfaceBase) {.header:headerFile, importcpp:"#.suspendIfRequested(@)".} # Public
import nimqt/qtcore/qmutex
proc mutex*(this: ptr QFutureInterfaceBase): QMutex {.header:headerFile, importcpp:"#.mutex(@)".} # Public
proc `!=`*(this: ptr QFutureInterfaceBase, other: QFutureInterfaceBase): bool {.header:headerFile, importcpp:"#.operator!=(@)".} # Public
proc swap*(this: ptr QFutureInterfaceBase, other: QFutureInterfaceBase) {.header:headerFile, importcpp:"#.swap(@)".} # Public
proc isChainCanceled*(this: ptr QFutureInterfaceBase): bool {.header:headerFile, importcpp:"#.isChainCanceled(@)".} # Public

# Protected methods methods for QFutureInterfaceBase
proc refT*(this: ptr QFutureInterfaceBase): bool {.header:headerFile, importcpp:"#.refT(@)".} # Protected
proc derefT*(this: ptr QFutureInterfaceBase): bool {.header:headerFile, importcpp:"#.derefT(@)".} # Protected
proc reset*(this: ptr QFutureInterfaceBase) {.header:headerFile, importcpp:"#.reset(@)".} # Protected
proc cleanContinuation*(this: ptr QFutureInterfaceBase) {.header:headerFile, importcpp:"#.cleanContinuation(@)".} # Protected
proc runContinuation*(this: ptr QFutureInterfaceBase) {.header:headerFile, importcpp:"#.runContinuation(@)".} # Protected
proc setLaunchAsync*(this: ptr QFutureInterfaceBase, value: bool) {.header:headerFile, importcpp:"#.setLaunchAsync(@)".} # Protected
proc launchAsync*(this: ptr QFutureInterfaceBase): bool {.header:headerFile, importcpp:"#.launchAsync(@)".} # Protected
proc isRunningOrPending*(this: ptr QFutureInterfaceBase): bool {.header:headerFile, importcpp:"#.isRunningOrPending(@)".} # Protected
proc cancel*(this: ptr QFutureInterfaceBase, mode: QFutureInterfaceBase_CancelMode) {.header:headerFile, importcpp:"#.cancel(@)".} # Protected
# Stuff for class QFutureInterface

# Public constructors for QFutureInterface
proc newQFutureInterface*[T](other: QFutureInterface[T]): ptr QFutureInterface[T] {. header:headerFile, importcpp:"new QFutureInterface(@)" .} #

# Public methods for QFutureInterface
proc reportResult*[T](this: ptr QFutureInterface[T], result: ptr T, index: cint): bool {.header:headerFile, importcpp:"#.reportResult(@)".} # Public
proc reportAndMoveResult*[T](this: ptr QFutureInterface[T], result: T, index: cint): bool {.header:headerFile, importcpp:"#.reportAndMoveResult(@)".} # Public
proc reportResult*[T](this: ptr QFutureInterface[T], result: T, index: cint): bool {.header:headerFile, importcpp:"#.reportResult(@)".} # Public
proc reportFinished*[T](this: ptr QFutureInterface[T], result: ptr T): bool {.header:headerFile, importcpp:"#.reportFinished(@)".} # Public
proc reportFinished*[T](this: ptr QFutureInterface[T]) {.header:headerFile, importcpp:"#.reportFinished(@)".} # Public
proc resultReference*[T](this: ptr QFutureInterface[T], index: cint): T {.header:headerFile, importcpp:"#.resultReference(@)".} # Public
proc resultPointer*[T](this: ptr QFutureInterface[T], index: cint): ptr T {.header:headerFile, importcpp:"#.resultPointer(@)".} # Public
import nimqt/qtcore/qlist
proc results*[T](this: ptr QFutureInterface[T]): QList[T] {.header:headerFile, importcpp:"#.results(@)".} # Public
proc takeResult*[T](this: ptr QFutureInterface[T]): T {.header:headerFile, importcpp:"#.takeResult(@)".} # Public
# Stuff for class QFutureInterface

# Public methods for QFutureInterface
proc reportResult*(this: ptr QFutureInterface, arg_0: ptr, arg_1: cint): bool {.header:headerFile, importcpp:"#.reportResult(@)".} # Public
proc reportFinished*(this: ptr QFutureInterface, arg_0: ptr): bool {.header:headerFile, importcpp:"#.reportFinished(@)".} # Public
proc reportFinished*(this: ptr QFutureInterface) {.header:headerFile, importcpp:"#.reportFinished(@)".} # Public

export qstring
export qlist
export qrunnable
export qmutex
export qthreadpool
