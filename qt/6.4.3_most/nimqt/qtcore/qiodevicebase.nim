const headerFile* = "QtCore/qiodevicebase.h"

type
    # Enums found in the C++ code
    # Global
    QIODeviceBase_OpenModeFlag* {.header:headerFile,importcpp:"QIODeviceBase::OpenModeFlag".} = enum NotOpen = 0, ReadOnly = 0x1, WriteOnly = 0x2, ReadWrite = 0x3, 
        Append = 0x4, Truncate = 0x8, Text = 0x10, Unbuffered = 0x20, NewOnly = 0x40, 
        ExistingOnly = 0x80

type
    # Classes found in the C++ code
    QIODeviceBase* {.header:headerFile,importcpp:"QIODeviceBase" ,pure,inheritable.} = object
import nimqt/qtcore/qflags


type
    # typedefs found in the C++ code
    QIODeviceBase_OpenMode * = QFlags[QIODeviceBase_OpenModeFlag]


export qflags
