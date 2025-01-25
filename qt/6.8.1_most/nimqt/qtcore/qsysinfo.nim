const headerFile* = "QtCore/qsysinfo.h"

type
    # Enums found in the C++ code
    # Global
    QSysInfo_Sizes* {.header:headerFile,importcpp:"QSysInfo::Sizes".} = enum WordSize = 0x40
    QSysInfo_Endian* {.header:headerFile,importcpp:"QSysInfo::Endian".} = enum BigEndian = 0, LittleEndian = 0x1

type
    # Classes found in the C++ code
    QSysInfo* {.header:headerFile,importcpp:"QSysInfo" ,pure,inheritable.} = object

# Consts
const
    # Global
    QSysInfo_EndianByteOrder* = 1 # from anonymous enum LittleEndian

# Stuff for class QSysInfo

# Public methods for QSysInfo
import nimqt/qtcore/qstring
proc static_QSysInfo_buildCpuArchitecture*(): QString {.header:headerFile, importcpp:"QSysInfo::buildCpuArchitecture(@)".} # Public static
proc static_QSysInfo_currentCpuArchitecture*(): QString {.header:headerFile, importcpp:"QSysInfo::currentCpuArchitecture(@)".} # Public static
proc static_QSysInfo_buildAbi*(): QString {.header:headerFile, importcpp:"QSysInfo::buildAbi(@)".} # Public static
proc static_QSysInfo_kernelType*(): QString {.header:headerFile, importcpp:"QSysInfo::kernelType(@)".} # Public static
proc static_QSysInfo_kernelVersion*(): QString {.header:headerFile, importcpp:"QSysInfo::kernelVersion(@)".} # Public static
proc static_QSysInfo_productType*(): QString {.header:headerFile, importcpp:"QSysInfo::productType(@)".} # Public static
proc static_QSysInfo_productVersion*(): QString {.header:headerFile, importcpp:"QSysInfo::productVersion(@)".} # Public static
proc static_QSysInfo_prettyProductName*(): QString {.header:headerFile, importcpp:"QSysInfo::prettyProductName(@)".} # Public static
proc static_QSysInfo_machineHostName*(): QString {.header:headerFile, importcpp:"QSysInfo::machineHostName(@)".} # Public static
import nimqt/qtcore/qbytearray
proc static_QSysInfo_machineUniqueId*(): QByteArray {.header:headerFile, importcpp:"QSysInfo::machineUniqueId(@)".} # Public static
proc static_QSysInfo_bootUniqueId*(): QByteArray {.header:headerFile, importcpp:"QSysInfo::bootUniqueId(@)".} # Public static

export qstring
export qbytearray
