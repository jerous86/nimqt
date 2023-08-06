const headerFile* = "QtCore/qglobalstatic.h"

type
    # Enums found in the C++ code
    # Global
    QtGlobalStatic_GuardValues* {.header:headerFile,importcpp:"QtGlobalStatic::GuardValues".} = enum Destroyed = -2, Initialized = -1, Uninitialized = 0, Initializing = 0x1

type
    # Classes found in the C++ code
    QGlobalStatic*[Holder] {.header:headerFile,importcpp:"QGlobalStatic" ,pure,inheritable.} = object

# Stuff for class QGlobalStatic

# Public methods for QGlobalStatic
proc isDestroyed*[Holder](this: QGlobalStatic[Holder]): bool {.header:headerFile, importcpp:"#.isDestroyed(@)".} # Public
proc exists*[Holder](this: QGlobalStatic[Holder]): bool {.header:headerFile, importcpp:"#.exists(@)".} # Public

# Protected methods methods for QGlobalStatic
proc static_QGlobalStatic_guardValue*[Holder](): QtGlobalStatic_GuardValues {.header:headerFile, importcpp:"QGlobalStatic::guardValue(@)".} # Protected static

