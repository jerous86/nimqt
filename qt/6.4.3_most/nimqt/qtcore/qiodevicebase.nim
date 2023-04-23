const headerFile* = "QtCore/qiodevicebase.h"

type
    # Enums found in the C++ code
    # Global
    QIODeviceBase_OpenModeFlag* {.header:headerFile,importcpp:"QIODeviceBase::OpenModeFlag".} = enum NotOpen = 0, ReadOnly = 0x1, WriteOnly = 0x2, ReadWrite = 0x3, 
        Append = 0x4, Truncate = 0x8, Text = 0x10, Unbuffered = 0x20, NewOnly = 0x40, 
        ExistingOnly = 0x80

# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}
when (NimMajor, NimMinor, NimPatch) < (1, 9, 0):
    type
        # Classes found in the C++ code
        QIODeviceBase* {.header:headerFile,importcpp:"QIODeviceBase" ,pure.} = object {.inheritable.}
elif (NimMajor, NimMinor, NimPatch) >= (1, 9, 0):
    type
        # Classes found in the C++ code
        QIODeviceBase* {.header:headerFile,importcpp:"QIODeviceBase" ,pure,inheritable.} = object
{.push warning[Deprecated]: on.}
import nimqt/qtcore/qflags


type
    # typedefs found in the C++ code
    QIODeviceBase_OpenMode * = QFlags[QIODeviceBase_OpenModeFlag]


export qflags