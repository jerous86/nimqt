const headerFile* = "QtCore/qfuturesynchronizer.h"

# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}
when (NimMajor, NimMinor, NimPatch) < (1, 9, 0):
    type
        # Classes found in the C++ code
        QFutureSynchronizer*[T] {.header:headerFile,importcpp:"QFutureSynchronizer" ,pure.} = object {.inheritable.}
elif (NimMajor, NimMinor, NimPatch) >= (1, 9, 0):
    type
        # Classes found in the C++ code
        QFutureSynchronizer*[T] {.header:headerFile,importcpp:"QFutureSynchronizer" ,pure,inheritable.} = object
{.push warning[Deprecated]: on.}

# Stuff for class QFutureSynchronizer

# Public constructors for QFutureSynchronizer
proc newQFutureSynchronizer*[T](arg_0: QFutureSynchronizer[T]): QFutureSynchronizer[T] {. header:headerFile, importcpp:"QFutureSynchronizer(@)", constructor .} #
proc newQFutureSynchronizer*[T](): QFutureSynchronizer[T] {. header:headerFile, importcpp:"QFutureSynchronizer(@)", constructor .} #
import nimqt/qtcore/qfuture
proc newQFutureSynchronizer*[T](future: QFuture[T]): QFutureSynchronizer[T] {. header:headerFile, importcpp:"QFutureSynchronizer(@)", constructor .} #

# Public methods for QFutureSynchronizer
proc setFuture*[T](this: QFutureSynchronizer[T], future: QFuture[T]) {.header:headerFile, importcpp:"#.setFuture(@)".} # Public
proc addFuture*[T](this: QFutureSynchronizer[T], future: QFuture[T]) {.header:headerFile, importcpp:"#.addFuture(@)".} # Public
proc waitForFinished*[T](this: QFutureSynchronizer[T]) {.header:headerFile, importcpp:"#.waitForFinished(@)".} # Public
proc clearFutures*[T](this: QFutureSynchronizer[T]) {.header:headerFile, importcpp:"#.clearFutures(@)".} # Public
import nimqt/qtcore/qlist
proc futures*[T](this: QFutureSynchronizer[T]): QList[QFuture[T]] {.header:headerFile, importcpp:"#.futures(@)".} # Public
proc setCancelOnWait*[T](this: QFutureSynchronizer[T], enabled: bool) {.header:headerFile, importcpp:"#.setCancelOnWait(@)".} # Public
proc cancelOnWait*[T](this: QFutureSynchronizer[T]): bool {.header:headerFile, importcpp:"#.cancelOnWait(@)".} # Public

export qfuture
export qlist