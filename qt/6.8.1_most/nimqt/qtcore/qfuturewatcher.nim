const headerFile* = "QtCore/qfuturewatcher.h"

import nimqt/qtcore/qobject
type
    # Classes found in the C++ code
    QFutureWatcherBase* {.header:headerFile,importcpp:"QFutureWatcherBase" ,pure.} = object of QObject
    QFutureWatcher*[T] {.header:headerFile,importcpp:"QFutureWatcher" ,pure.} = object of QFutureWatcherBase

# Stuff for class QFutureWatcherBase

# Public constructors for QFutureWatcherBase
# 1 default parameters!
proc newQFutureWatcherBase*(parent: ptr QObject): ptr QFutureWatcherBase {. header:headerFile, importcpp:"new QFutureWatcherBase(@)" .} #
proc newQFutureWatcherBase*(): ptr QFutureWatcherBase {. header:headerFile, importcpp:"new QFutureWatcherBase(@)" .} #

# Public methods for QFutureWatcherBase
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QFutureWatcherBase_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QFutureWatcherBase::tr(@)".} # Public static
proc static_QFutureWatcherBase_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QFutureWatcherBase::tr(@)".} # Public static
proc progressValue*(this: ptr QFutureWatcherBase): cint {.header:headerFile, importcpp:"#.progressValue(@)".} # Public
proc progressMinimum*(this: ptr QFutureWatcherBase): cint {.header:headerFile, importcpp:"#.progressMinimum(@)".} # Public
proc progressMaximum*(this: ptr QFutureWatcherBase): cint {.header:headerFile, importcpp:"#.progressMaximum(@)".} # Public
proc progressText*(this: ptr QFutureWatcherBase): QString {.header:headerFile, importcpp:"#.progressText(@)".} # Public
proc isStarted*(this: ptr QFutureWatcherBase): bool {.header:headerFile, importcpp:"#.isStarted(@)".} # Public
proc isFinished*(this: ptr QFutureWatcherBase): bool {.header:headerFile, importcpp:"#.isFinished(@)".} # Public
proc isRunning*(this: ptr QFutureWatcherBase): bool {.header:headerFile, importcpp:"#.isRunning(@)".} # Public
proc isCanceled*(this: ptr QFutureWatcherBase): bool {.header:headerFile, importcpp:"#.isCanceled(@)".} # Public
proc isPaused*(this: ptr QFutureWatcherBase): bool {.header:headerFile, importcpp:"#.isPaused(@)".} # Public
proc isSuspending*(this: ptr QFutureWatcherBase): bool {.header:headerFile, importcpp:"#.isSuspending(@)".} # Public
proc isSuspended*(this: ptr QFutureWatcherBase): bool {.header:headerFile, importcpp:"#.isSuspended(@)".} # Public
proc waitForFinished*(this: ptr QFutureWatcherBase) {.header:headerFile, importcpp:"#.waitForFinished(@)".} # Public
proc setPendingResultsLimit*(this: ptr QFutureWatcherBase, limit: cint) {.header:headerFile, importcpp:"#.setPendingResultsLimit(@)".} # Public
import nimqt/qtcore/qcoreevent
proc event*(this: ptr QFutureWatcherBase, event: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Public
proc started*(this: ptr QFutureWatcherBase) {.header:headerFile, importcpp:"#.started(@)".} # Public
proc finished*(this: ptr QFutureWatcherBase) {.header:headerFile, importcpp:"#.finished(@)".} # Public
proc canceled*(this: ptr QFutureWatcherBase) {.header:headerFile, importcpp:"#.canceled(@)".} # Public
proc paused*(this: ptr QFutureWatcherBase) {.header:headerFile, importcpp:"#.paused(@)".} # Public
proc suspending*(this: ptr QFutureWatcherBase) {.header:headerFile, importcpp:"#.suspending(@)".} # Public
proc suspended*(this: ptr QFutureWatcherBase) {.header:headerFile, importcpp:"#.suspended(@)".} # Public
proc resumed*(this: ptr QFutureWatcherBase) {.header:headerFile, importcpp:"#.resumed(@)".} # Public
proc resultReadyAt*(this: ptr QFutureWatcherBase, resultIndex: cint) {.header:headerFile, importcpp:"#.resultReadyAt(@)".} # Public
proc resultsReadyAt*(this: ptr QFutureWatcherBase, beginIndex: cint, endIndex: cint) {.header:headerFile, importcpp:"#.resultsReadyAt(@)".} # Public
proc progressRangeChanged*(this: ptr QFutureWatcherBase, minimum: cint, maximum: cint) {.header:headerFile, importcpp:"#.progressRangeChanged(@)".} # Public
proc progressValueChanged*(this: ptr QFutureWatcherBase, progressValue: cint) {.header:headerFile, importcpp:"#.progressValueChanged(@)".} # Public
proc progressTextChanged*(this: ptr QFutureWatcherBase, progressText: QString) {.header:headerFile, importcpp:"#.progressTextChanged(@)".} # Public
proc cancel*(this: ptr QFutureWatcherBase) {.header:headerFile, importcpp:"#.cancel(@)".} # Public
proc setSuspended*(this: ptr QFutureWatcherBase, suspend: bool) {.header:headerFile, importcpp:"#.setSuspended(@)".} # Public
proc suspend*(this: ptr QFutureWatcherBase) {.header:headerFile, importcpp:"#.suspend(@)".} # Public
proc resume*(this: ptr QFutureWatcherBase) {.header:headerFile, importcpp:"#.resume(@)".} # Public
proc toggleSuspended*(this: ptr QFutureWatcherBase) {.header:headerFile, importcpp:"#.toggleSuspended(@)".} # Public
proc setPaused*(this: ptr QFutureWatcherBase, paused: bool) {.header:headerFile, importcpp:"#.setPaused(@)".} # Public
proc pause*(this: ptr QFutureWatcherBase) {.header:headerFile, importcpp:"#.pause(@)".} # Public
proc togglePaused*(this: ptr QFutureWatcherBase) {.header:headerFile, importcpp:"#.togglePaused(@)".} # Public

# Protected methods methods for QFutureWatcherBase
proc connectOutputInterface*(this: ptr QFutureWatcherBase) {.header:headerFile, importcpp:"#.connectOutputInterface(@)".} # Protected
# 1 default parameters!
proc disconnectOutputInterface*(this: ptr QFutureWatcherBase, pendingAssignment: bool) {.header:headerFile, importcpp:"#.disconnectOutputInterface(@)".} # Protected
proc disconnectOutputInterface*(this: ptr QFutureWatcherBase) {.header:headerFile, importcpp:"#.disconnectOutputInterface(@)".} # Protected
# Stuff for class QFutureWatcher

# Public constructors for QFutureWatcher
# 1 default parameters!
proc newQFutureWatcher*[T](parent: ptr QObject): ptr QFutureWatcher[T] {. header:headerFile, importcpp:"new QFutureWatcher(@)" .} #
proc newQFutureWatcher*[T](): ptr QFutureWatcher[T] {. header:headerFile, importcpp:"new QFutureWatcher(@)" .} #

# Public methods for QFutureWatcher
import nimqt/qtcore/qfuture
proc setFuture*[T](this: ptr QFutureWatcher[T], future: QFuture[T]) {.header:headerFile, importcpp:"#.setFuture(@)".} # Public
proc future*[T](this: ptr QFutureWatcher[T]): QFuture[T] {.header:headerFile, importcpp:"#.future(@)".} # Public
proc progressValue*[T](this: ptr QFutureWatcher[T]): cint {.header:headerFile, importcpp:"#.progressValue(@)".} # Public
proc progressMinimum*[T](this: ptr QFutureWatcher[T]): cint {.header:headerFile, importcpp:"#.progressMinimum(@)".} # Public
proc progressMaximum*[T](this: ptr QFutureWatcher[T]): cint {.header:headerFile, importcpp:"#.progressMaximum(@)".} # Public
proc progressText*[T](this: ptr QFutureWatcher[T]): QString {.header:headerFile, importcpp:"#.progressText(@)".} # Public
proc isStarted*[T](this: ptr QFutureWatcher[T]): bool {.header:headerFile, importcpp:"#.isStarted(@)".} # Public
proc isFinished*[T](this: ptr QFutureWatcher[T]): bool {.header:headerFile, importcpp:"#.isFinished(@)".} # Public
proc isRunning*[T](this: ptr QFutureWatcher[T]): bool {.header:headerFile, importcpp:"#.isRunning(@)".} # Public
proc isCanceled*[T](this: ptr QFutureWatcher[T]): bool {.header:headerFile, importcpp:"#.isCanceled(@)".} # Public
proc isPaused*[T](this: ptr QFutureWatcher[T]): bool {.header:headerFile, importcpp:"#.isPaused(@)".} # Public
proc isSuspending*[T](this: ptr QFutureWatcher[T]): bool {.header:headerFile, importcpp:"#.isSuspending(@)".} # Public
proc isSuspended*[T](this: ptr QFutureWatcher[T]): bool {.header:headerFile, importcpp:"#.isSuspended(@)".} # Public
proc waitForFinished*[T](this: ptr QFutureWatcher[T]) {.header:headerFile, importcpp:"#.waitForFinished(@)".} # Public
proc setPendingResultsLimit*[T](this: ptr QFutureWatcher[T], limit: cint) {.header:headerFile, importcpp:"#.setPendingResultsLimit(@)".} # Public
proc started*[T](this: ptr QFutureWatcher[T]) {.header:headerFile, importcpp:"#.started(@)".} # Public
proc finished*[T](this: ptr QFutureWatcher[T]) {.header:headerFile, importcpp:"#.finished(@)".} # Public
proc canceled*[T](this: ptr QFutureWatcher[T]) {.header:headerFile, importcpp:"#.canceled(@)".} # Public
proc paused*[T](this: ptr QFutureWatcher[T]) {.header:headerFile, importcpp:"#.paused(@)".} # Public
proc suspending*[T](this: ptr QFutureWatcher[T]) {.header:headerFile, importcpp:"#.suspending(@)".} # Public
proc suspended*[T](this: ptr QFutureWatcher[T]) {.header:headerFile, importcpp:"#.suspended(@)".} # Public
proc resumed*[T](this: ptr QFutureWatcher[T]) {.header:headerFile, importcpp:"#.resumed(@)".} # Public
proc resultReadyAt*[T](this: ptr QFutureWatcher[T], resultIndex: cint) {.header:headerFile, importcpp:"#.resultReadyAt(@)".} # Public
proc resultsReadyAt*[T](this: ptr QFutureWatcher[T], beginIndex: cint, endIndex: cint) {.header:headerFile, importcpp:"#.resultsReadyAt(@)".} # Public
proc progressRangeChanged*[T](this: ptr QFutureWatcher[T], minimum: cint, maximum: cint) {.header:headerFile, importcpp:"#.progressRangeChanged(@)".} # Public
proc progressValueChanged*[T](this: ptr QFutureWatcher[T], progressValue: cint) {.header:headerFile, importcpp:"#.progressValueChanged(@)".} # Public
proc progressTextChanged*[T](this: ptr QFutureWatcher[T], progressText: QString) {.header:headerFile, importcpp:"#.progressTextChanged(@)".} # Public
proc cancel*[T](this: ptr QFutureWatcher[T]) {.header:headerFile, importcpp:"#.cancel(@)".} # Public
proc setSuspended*[T](this: ptr QFutureWatcher[T], suspend: bool) {.header:headerFile, importcpp:"#.setSuspended(@)".} # Public
proc suspend*[T](this: ptr QFutureWatcher[T]) {.header:headerFile, importcpp:"#.suspend(@)".} # Public
proc resume*[T](this: ptr QFutureWatcher[T]) {.header:headerFile, importcpp:"#.resume(@)".} # Public
proc toggleSuspended*[T](this: ptr QFutureWatcher[T]) {.header:headerFile, importcpp:"#.toggleSuspended(@)".} # Public
proc setPaused*[T](this: ptr QFutureWatcher[T], paused: bool) {.header:headerFile, importcpp:"#.setPaused(@)".} # Public
proc pause*[T](this: ptr QFutureWatcher[T]) {.header:headerFile, importcpp:"#.pause(@)".} # Public
proc togglePaused*[T](this: ptr QFutureWatcher[T]) {.header:headerFile, importcpp:"#.togglePaused(@)".} # Public

export qstring
export qfuture
export qobject
export qcoreevent
