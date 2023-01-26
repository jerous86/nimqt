const headerFile* = "QtGui/qinputdevice.h"

import nimqt/qtcore/qobject
# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}


type
    # Classes and enums found in the C++ code
    # Global
    QInputDevice_DeviceType* {.header:headerFile,importcpp:"QInputDevice::DeviceType".} = enum Unknown = 0, Mouse = 0x1, TouchScreen = 0x2, TouchPad = 0x3, 
        Puck = 0x4, Stylus = 0x5, Airbrush = 0x6, Keyboard = 0x7, AllDevices = 0x8
    QInputDevice_Capability* {.header:headerFile,importcpp:"QInputDevice::Capability".} = enum None = 0, Position = 0x1, Area = 0x2, Pressure = 0x3, 
        Velocity = 0x4, NormalizedPosition = 0x5, MouseEmulation = 0x6, PixelScroll = 0x7, Scroll = 0x8, 
        Hover = 0x9, Rotation = 0xa, XTilt = 0xb, YTilt = 0xc, TangentialPressure = 0xd, 
        ZPosition = 0xe, All = 0xf
    QInputDevice* {.header:headerFile,importcpp:"QInputDevice" ,pure.} = object of QObject
{.push warning[Deprecated]: on.}
import nimqt/qtcore/qflags


type
    # typedefs found in the C++ code
    QInputDevice_DeviceTypes * = QFlags[QInputDevice_DeviceType]
    QInputDevice_Capabilities * = QFlags[QInputDevice_Capability]

# Stuff for class QInputDevice

# Public constructors for QInputDevice
# 1 default parameters!
proc newQInputDevice*(parent: ptr QObject): ptr QInputDevice {. header:headerFile, importcpp:"new QInputDevice(@)" .} #
proc newQInputDevice*(): ptr QInputDevice {. header:headerFile, importcpp:"new QInputDevice(@)" .} #
import nimqt/qtcore/qstring
# 2 default parameters!
proc newQInputDevice*(name: QString, systemId: clonglong, `type`: QInputDevice_DeviceType, seatName: QString, parent: ptr QObject): ptr QInputDevice {. header:headerFile, importcpp:"new QInputDevice(@)" .} #
proc newQInputDevice*(name: QString, systemId: clonglong, `type`: QInputDevice_DeviceType, seatName: QString): ptr QInputDevice {. header:headerFile, importcpp:"new QInputDevice(@)" .} #
proc newQInputDevice*(name: QString, systemId: clonglong, `type`: QInputDevice_DeviceType): ptr QInputDevice {. header:headerFile, importcpp:"new QInputDevice(@)" .} #

# Public methods for QInputDevice
# 1 default parameters!
proc static_QInputDevice_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QInputDevice::tr(@)".} # Public static
proc static_QInputDevice_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QInputDevice::tr(@)".} # Public static
proc name*(this: ptr QInputDevice): QString {.header:headerFile, importcpp:"#.name(@)".} # Public
proc `type`*(this: ptr QInputDevice): QInputDevice_DeviceType {.header:headerFile, importcpp:"#.type(@)".} # Public
proc capabilities*(this: ptr QInputDevice): QFlags[QInputDevice_Capability] {.header:headerFile, importcpp:"#.capabilities(@)".} # Public
proc hasCapability*(this: ptr QInputDevice, cap: QInputDevice_Capability): bool {.header:headerFile, importcpp:"#.hasCapability(@)".} # Public
proc systemId*(this: ptr QInputDevice): clonglong {.header:headerFile, importcpp:"#.systemId(@)".} # Public
proc seatName*(this: ptr QInputDevice): QString {.header:headerFile, importcpp:"#.seatName(@)".} # Public
# 1 default parameters!
proc static_QInputDevice_primaryKeyboard*(seatName: QString): ptr QInputDevice {.header:headerFile, importcpp:"QInputDevice::primaryKeyboard(@)".} # Public static
proc static_QInputDevice_primaryKeyboard*(): ptr QInputDevice {.header:headerFile, importcpp:"QInputDevice::primaryKeyboard(@)".} # Public static

export qstring
export qflags
export qobject