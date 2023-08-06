const headerFile* = "QtCore/qabstractnativeeventfilter.h"

type
    # Classes found in the C++ code
    QAbstractNativeEventFilter* {.header:headerFile,importcpp:"QAbstractNativeEventFilter" ,pure,inheritable.} = object

# Stuff for class QAbstractNativeEventFilter

# Public constructors for QAbstractNativeEventFilter
proc newQAbstractNativeEventFilter*(): QAbstractNativeEventFilter {. header:headerFile, importcpp:"QAbstractNativeEventFilter(@)", constructor .} #

# Public methods for QAbstractNativeEventFilter
import nimqt/qtcore/qbytearray
proc nativeEventFilter*(this: QAbstractNativeEventFilter, eventType: QByteArray, message: ptr, result: ptr cint): bool {.header:headerFile, importcpp:"#.nativeEventFilter(@)".} # Public

export qbytearray
