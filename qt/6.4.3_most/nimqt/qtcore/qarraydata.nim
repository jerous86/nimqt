const headerFile* = "QtCore/qarraydata.h"

type
    # Enums found in the C++ code
    # Global
    QArrayData_AllocationOption* {.header:headerFile,importcpp:"QArrayData::AllocationOption".} = enum Grow = 0, KeepSize = 0x1
    QArrayData_GrowthPosition* {.header:headerFile,importcpp:"QArrayData::GrowthPosition".} = enum GrowsAtEnd = 0, GrowsAtBeginning = 0x1
    QArrayData_ArrayOption* {.header:headerFile,importcpp:"QArrayData::ArrayOption".} = enum ArrayOptionDefault = 0, CapacityReserved = 0x1

type
    # Classes found in the C++ code
    QArrayData* {.header:headerFile,importcpp:"QArrayData" ,pure,inheritable.} = object
import nimqt/qtcore/qflags


type
    # typedefs found in the C++ code
    QArrayData_ArrayOptions * = QFlags[QArrayData_ArrayOption]

# Stuff for class QArrayData

# Public methods for QArrayData
proc allocatedCapacity*(this: QArrayData): cint {.header:headerFile, importcpp:"#.allocatedCapacity(@)".} # Public
proc constAllocatedCapacity*(this: QArrayData): cint {.header:headerFile, importcpp:"#.constAllocatedCapacity(@)".} # Public
proc `ref`*(this: QArrayData): bool {.header:headerFile, importcpp:"#.ref(@)".} # Public
proc deref*(this: QArrayData): bool {.header:headerFile, importcpp:"#.deref(@)".} # Public
proc isShared*(this: QArrayData): bool {.header:headerFile, importcpp:"#.isShared(@)".} # Public
proc needsDetach*(this: QArrayData): bool {.header:headerFile, importcpp:"#.needsDetach(@)".} # Public
proc detachCapacity*(this: QArrayData): cint {.header:headerFile, importcpp:"#.detachCapacity(@)".} # Public
proc static_QArrayData_allocate*(pdata: ptr ptr QArrayData, objectSize: cint, alignment: cint, capacity: cint, option: QArrayData_AllocationOption): ptr  {.header:headerFile, importcpp:"QArrayData::allocate(@)".} # Public static
proc static_QArrayData_reallocateUnaligned*(): cint {.header:headerFile, importcpp:"QArrayData::reallocateUnaligned(@)".} # Public static
proc static_QArrayData_deallocate*(data: ptr QArrayData, objectSize: cint, alignment: cint) {.header:headerFile, importcpp:"QArrayData::deallocate(@)".} # Public static

export qflags
