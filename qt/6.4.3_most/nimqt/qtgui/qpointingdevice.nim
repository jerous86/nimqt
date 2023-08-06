const headerFile* = "QtGui/qpointingdevice.h"

type
    # Enums found in the C++ code
    # Global
    QPointingDevice_PointerType* {.header:headerFile,importcpp:"QPointingDevice::PointerType".} = enum Unknown = 0, Generic = 0x1, Finger = 0x2, Pen = 0x4, 
        Eraser = 0x8, Cursor = 0x10, AllPointerTypes = 0x7fff
    QPointingDevice_GrabTransition* {.header:headerFile,importcpp:"QPointingDevice::GrabTransition".} = enum GrabPassive = 0x1, UngrabPassive = 0x2, CancelGrabPassive = 0x3, OverrideGrabPassive = 0x4, 
        GrabExclusive = 0x10, UngrabExclusive = 0x20, CancelGrabExclusive = 0x30

import nimqt/qtgui/qinputdevice
type
    # Classes found in the C++ code
    QPointingDeviceUniqueId* {.header:headerFile,importcpp:"QPointingDeviceUniqueId" ,pure,inheritable.} = object
    QPointingDevice* {.header:headerFile,importcpp:"QPointingDevice" ,pure.} = object of QInputDevice
import nimqt/qtcore/qflags


type
    # typedefs found in the C++ code
    QPointingDevice_DeviceType * = QInputDevice_DeviceType
    QPointingDevice_Capability * = QInputDevice_Capability
    QPointingDevice_DeviceTypes * = QInputDevice_DeviceTypes
    QPointingDevice_Capabilities * = QInputDevice_Capabilities
    QPointingDevice_PointerTypes * = QFlags[QPointingDevice_PointerType]

# Stuff for class QPointingDeviceUniqueId

# Public constructors for QPointingDeviceUniqueId
proc newQPointingDeviceUniqueId*(): QPointingDeviceUniqueId {. header:headerFile, importcpp:"QPointingDeviceUniqueId(@)", constructor .} #

# Public methods for QPointingDeviceUniqueId
proc qt_check_for_QGADGET_macro*(this: QPointingDeviceUniqueId) {.header:headerFile, importcpp:"#.qt_check_for_QGADGET_macro(@)".} # Public
proc static_QPointingDeviceUniqueId_fromNumericId*(id: clonglong): QPointingDeviceUniqueId {.header:headerFile, importcpp:"QPointingDeviceUniqueId::fromNumericId(@)".} # Public static
proc isValid*(this: QPointingDeviceUniqueId): bool {.header:headerFile, importcpp:"#.isValid(@)".} # Public
proc numericId*(this: QPointingDeviceUniqueId): clonglong {.header:headerFile, importcpp:"#.numericId(@)".} # Public
# Stuff for class QPointingDevice

# Public constructors for QPointingDevice
import nimqt/qtcore/qobject
# 1 default parameters!
proc newQPointingDevice*(parent: ptr QObject): ptr QPointingDevice {. header:headerFile, importcpp:"new QPointingDevice(@)" .} #
proc newQPointingDevice*(): ptr QPointingDevice {. header:headerFile, importcpp:"new QPointingDevice(@)" .} #
import nimqt/qtcore/qstring
# 2 default parameters!
proc newQPointingDevice*(name: QString, systemId: clonglong, devType: QInputDevice_DeviceType, pType: QPointingDevice_PointerType, caps: QInputDevice_Capabilities, maxPoints: cint, buttonCount: cint, seatName: QString, uniqueId: QPointingDeviceUniqueId, parent: ptr QObject): ptr QPointingDevice {. header:headerFile, importcpp:"new QPointingDevice(@)" .} #
proc newQPointingDevice*(name: QString, systemId: clonglong, devType: QInputDevice_DeviceType, pType: QPointingDevice_PointerType, caps: QInputDevice_Capabilities, maxPoints: cint, buttonCount: cint, seatName: QString, uniqueId: QPointingDeviceUniqueId): ptr QPointingDevice {. header:headerFile, importcpp:"new QPointingDevice(@)" .} #
proc newQPointingDevice*(name: QString, systemId: clonglong, devType: QInputDevice_DeviceType, pType: QPointingDevice_PointerType, caps: QInputDevice_Capabilities, maxPoints: cint, buttonCount: cint, seatName: QString): ptr QPointingDevice {. header:headerFile, importcpp:"new QPointingDevice(@)" .} #

# Public methods for QPointingDevice
# 1 default parameters!
proc static_QPointingDevice_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QPointingDevice::tr(@)".} # Public static
proc static_QPointingDevice_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QPointingDevice::tr(@)".} # Public static
proc setType*(this: ptr QPointingDevice, devType: QInputDevice_DeviceType) {.header:headerFile, importcpp:"#.setType(@)".} # Public
proc setCapabilities*(this: ptr QPointingDevice, caps: QInputDevice_Capabilities) {.header:headerFile, importcpp:"#.setCapabilities(@)".} # Public
proc setMaximumTouchPoints*(this: ptr QPointingDevice, c: cint) {.header:headerFile, importcpp:"#.setMaximumTouchPoints(@)".} # Public
proc pointerType*(this: ptr QPointingDevice): QPointingDevice_PointerType {.header:headerFile, importcpp:"#.pointerType(@)".} # Public
proc maximumPoints*(this: ptr QPointingDevice): cint {.header:headerFile, importcpp:"#.maximumPoints(@)".} # Public
proc buttonCount*(this: ptr QPointingDevice): cint {.header:headerFile, importcpp:"#.buttonCount(@)".} # Public
proc uniqueId*(this: ptr QPointingDevice): QPointingDeviceUniqueId {.header:headerFile, importcpp:"#.uniqueId(@)".} # Public
# 1 default parameters!
proc static_QPointingDevice_primaryPointingDevice*(seatName: QString): ptr QPointingDevice {.header:headerFile, importcpp:"QPointingDevice::primaryPointingDevice(@)".} # Public static
proc static_QPointingDevice_primaryPointingDevice*(): ptr QPointingDevice {.header:headerFile, importcpp:"QPointingDevice::primaryPointingDevice(@)".} # Public static
import nimqt/qtgui/qevent
import nimqt/qtgui/qeventpoint
proc grabChanged*(this: ptr QPointingDevice, grabber: ptr QObject, transition: QPointingDevice_GrabTransition, event: ptr QPointerEvent, point: QEventPoint) {.header:headerFile, importcpp:"#.grabChanged(@)".} # Public

export qevent
export qinputdevice
export qstring
export qeventpoint
export qflags
export qobject
