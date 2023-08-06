const headerFile* = "QtCore/qfuture.h"

type
    # Classes found in the C++ code
    QFuture*[T] {.header:headerFile,importcpp:"QFuture" ,pure,inheritable.} = object

# Stuff for class QFuture

# Public constructors for QFuture
proc newQFuture*[T](): QFuture[T] {. header:headerFile, importcpp:"QFuture(@)", constructor .} #

# Public methods for QFuture
proc cancel*[T](this: QFuture[T]) {.header:headerFile, importcpp:"#.cancel(@)".} # Public
proc isCanceled*[T](this: QFuture[T]): bool {.header:headerFile, importcpp:"#.isCanceled(@)".} # Public
proc setPaused*[T](this: QFuture[T], paused: bool) {.header:headerFile, importcpp:"#.setPaused(@)".} # Public
proc isPaused*[T](this: QFuture[T]): bool {.header:headerFile, importcpp:"#.isPaused(@)".} # Public
proc togglePaused*[T](this: QFuture[T]) {.header:headerFile, importcpp:"#.togglePaused(@)".} # Public
proc pause*[T](this: QFuture[T]) {.header:headerFile, importcpp:"#.pause(@)".} # Public
proc isSuspending*[T](this: QFuture[T]): bool {.header:headerFile, importcpp:"#.isSuspending(@)".} # Public
proc isSuspended*[T](this: QFuture[T]): bool {.header:headerFile, importcpp:"#.isSuspended(@)".} # Public
proc setSuspended*[T](this: QFuture[T], suspend: bool) {.header:headerFile, importcpp:"#.setSuspended(@)".} # Public
proc suspend*[T](this: QFuture[T]) {.header:headerFile, importcpp:"#.suspend(@)".} # Public
proc resume*[T](this: QFuture[T]) {.header:headerFile, importcpp:"#.resume(@)".} # Public
proc toggleSuspended*[T](this: QFuture[T]) {.header:headerFile, importcpp:"#.toggleSuspended(@)".} # Public
proc isStarted*[T](this: QFuture[T]): bool {.header:headerFile, importcpp:"#.isStarted(@)".} # Public
proc isFinished*[T](this: QFuture[T]): bool {.header:headerFile, importcpp:"#.isFinished(@)".} # Public
proc isRunning*[T](this: QFuture[T]): bool {.header:headerFile, importcpp:"#.isRunning(@)".} # Public
proc resultCount*[T](this: QFuture[T]): cint {.header:headerFile, importcpp:"#.resultCount(@)".} # Public
proc progressValue*[T](this: QFuture[T]): cint {.header:headerFile, importcpp:"#.progressValue(@)".} # Public
proc progressMinimum*[T](this: QFuture[T]): cint {.header:headerFile, importcpp:"#.progressMinimum(@)".} # Public
proc progressMaximum*[T](this: QFuture[T]): cint {.header:headerFile, importcpp:"#.progressMaximum(@)".} # Public
import nimqt/qtcore/qstring
proc progressText*[T](this: QFuture[T]): QString {.header:headerFile, importcpp:"#.progressText(@)".} # Public
proc waitForFinished*[T](this: QFuture[T]) {.header:headerFile, importcpp:"#.waitForFinished(@)".} # Public
proc isValid*[T](this: QFuture[T]): bool {.header:headerFile, importcpp:"#.isValid(@)".} # Public

export qstring
