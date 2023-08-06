const headerFile* = "QtCore/qpromise.h"

type
    # Classes found in the C++ code
    QPromise*[T] {.header:headerFile,importcpp:"QPromise" ,pure,inheritable.} = object

# Stuff for class QPromise

# Public constructors for QPromise
proc newQPromise*[T](): QPromise[T] {. header:headerFile, importcpp:"QPromise(@)", constructor .} #
proc newQPromise*[T](arg_0: QPromise[T]): QPromise[T] {. header:headerFile, importcpp:"QPromise(@)", constructor .} #
proc newQPromise*[T](other: QPromise[T]): QPromise[T] {. header:headerFile, importcpp:"QPromise(@)", constructor .} #
import nimqt/qtcore/qfutureinterface
proc newQPromise*[T](other: QFutureInterface[T]): QPromise[T] {. header:headerFile, importcpp:"QPromise(@)", constructor .} #

# Public methods for QPromise
import nimqt/qtcore/qfuture
proc future*[T](this: QPromise[T]): QFuture[T] {.header:headerFile, importcpp:"#.future(@)".} # Public
proc start*[T](this: QPromise[T]) {.header:headerFile, importcpp:"#.start(@)".} # Public
proc finish*[T](this: QPromise[T]) {.header:headerFile, importcpp:"#.finish(@)".} # Public
proc suspendIfRequested*[T](this: QPromise[T]) {.header:headerFile, importcpp:"#.suspendIfRequested(@)".} # Public
proc isCanceled*[T](this: QPromise[T]): bool {.header:headerFile, importcpp:"#.isCanceled(@)".} # Public
proc setProgressRange*[T](this: QPromise[T], minimum: cint, maximum: cint) {.header:headerFile, importcpp:"#.setProgressRange(@)".} # Public
proc setProgressValue*[T](this: QPromise[T], progressValue: cint) {.header:headerFile, importcpp:"#.setProgressValue(@)".} # Public
import nimqt/qtcore/qstring
proc setProgressValueAndText*[T](this: QPromise[T], progressValue: cint, progressText: QString) {.header:headerFile, importcpp:"#.setProgressValueAndText(@)".} # Public
proc swap*[T](this: QPromise[T], other: QPromise[T]) {.header:headerFile, importcpp:"#.swap(@)".} # Public

export qstring
export qfutureinterface
export qfuture
