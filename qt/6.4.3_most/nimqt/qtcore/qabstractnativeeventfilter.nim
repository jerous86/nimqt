const headerFile* = "QtCore/qabstractnativeeventfilter.h"

# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}
when (NimMajor, NimMinor, NimPatch) < (1, 9, 0):
    type
        # Classes found in the C++ code
        QAbstractNativeEventFilter* {.header:headerFile,importcpp:"QAbstractNativeEventFilter" ,pure.} = object {.inheritable.}
elif (NimMajor, NimMinor, NimPatch) >= (1, 9, 0):
    type
        # Classes found in the C++ code
        QAbstractNativeEventFilter* {.header:headerFile,importcpp:"QAbstractNativeEventFilter" ,pure,inheritable.} = object
{.push warning[Deprecated]: on.}

# Stuff for class QAbstractNativeEventFilter

# Public constructors for QAbstractNativeEventFilter
proc newQAbstractNativeEventFilter*(): QAbstractNativeEventFilter {. header:headerFile, importcpp:"QAbstractNativeEventFilter(@)", constructor .} #

# Public methods for QAbstractNativeEventFilter
import nimqt/qtcore/qbytearray
proc nativeEventFilter*(this: QAbstractNativeEventFilter, eventType: QByteArray, message: ptr, result: ptr cint): bool {.header:headerFile, importcpp:"#.nativeEventFilter(@)".} # Public

export qbytearray
