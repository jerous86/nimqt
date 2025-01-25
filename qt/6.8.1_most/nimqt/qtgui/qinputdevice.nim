const headerFile* = "QtGui/qinputdevice.h"

type
    # Enums found in the C++ code
    # Global
    QInputDevice_DeviceType* {.header:headerFile,importcpp:"QInputDevice::DeviceType".} = enum Unknown = 0, Mouse = 0x1, TouchScreen = 0x2, TouchPad = 0x4, 
        Puck = 0x8, Stylus = 0x10, Airbrush = 0x20, Keyboard = 0x1000, AllDevices = 0x7fffffff
    QInputDevice_Capability* {.header:headerFile,importcpp:"QInputDevice::Capability".} = enum None = 0, Position = 0x1, Area = 0x2, Pressure = 0x4, 
        Velocity = 0x8, NormalizedPosition = 0x20, MouseEmulation = 0x40, PixelScroll = 0x80, Scroll = 0x100, 
        Hover = 0x200, Rotation = 0x400, XTilt = 0x800, YTilt = 0x1000, TangentialPressure = 0x2000, 
        ZPosition = 0x4000, All = 0x7fffffff

import nimqt/qtcore/qobject
type
    # Classes found in the C++ code
    QInputDevice* {.header:headerFile,importcpp:"QInputDevice" ,pure.} = object of QObject
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
import nimqt/qtcore/qrect
proc availableVirtualGeometry*(this: ptr QInputDevice): QRect {.header:headerFile, importcpp:"#.availableVirtualGeometry(@)".} # Public
import nimqt/qtcore/qstringlist
proc static_QInputDevice_seatNames*(): QStringList {.header:headerFile, importcpp:"QInputDevice::seatNames(@)".} # Public static
import nimqt/qtcore/qlist
proc static_QInputDevice_devices*(): QList[ptr QInputDevice] {.header:headerFile, importcpp:"QInputDevice::devices(@)".} # Public static
# 1 default parameters!
proc static_QInputDevice_primaryKeyboard*(seatName: QString): ptr QInputDevice {.header:headerFile, importcpp:"QInputDevice::primaryKeyboard(@)".} # Public static
proc static_QInputDevice_primaryKeyboard*(): ptr QInputDevice {.header:headerFile, importcpp:"QInputDevice::primaryKeyboard(@)".} # Public static
proc availableVirtualGeometryChanged*(this: ptr QInputDevice, area: QRect) {.header:headerFile, importcpp:"#.availableVirtualGeometryChanged(@)".} # Public

export qstringlist
export qstring
export qlist
export qrect
export qflags
export qobject
