const headerFile* = "QtCore/qoperatingsystemversion.h"

type
    # Enums found in the C++ code
    # Global
    QOperatingSystemVersionBase_OSType* {.header:headerFile,importcpp:"QOperatingSystemVersionBase::OSType".} = enum Unknown = 0, Windows = 0x1, MacOS = 0x2, IOS = 0x3, 
        TvOS = 0x4, WatchOS = 0x5, Android = 0x6
    eQOperatingSystemVersion_OSType* {.header:headerFile,importcpp:"QOperatingSystemVersion::OSType".} = enum Unknown = 0, Windows = 0x1, MacOS = 0x2, IOS = 0x3, 
        TvOS = 0x4, WatchOS = 0x5, Android = 0x6

type
    # Classes found in the C++ code
    QOperatingSystemVersionBase* {.header:headerFile,importcpp:"QOperatingSystemVersionBase" ,pure,inheritable.} = object
    QOperatingSystemVersion* {.header:headerFile,importcpp:"QOperatingSystemVersion" ,pure.} = object of QOperatingSystemVersionBase


type
    # typedefs found in the C++ code
    QOperatingSystemVersion_OSType * = QOperatingSystemVersionBase_OSType

# Stuff for class QOperatingSystemVersionBase

# Public constructors for QOperatingSystemVersionBase
proc newQOperatingSystemVersionBase*(osType: QOperatingSystemVersionBase_OSType, vmajor: cint, vminor: cint, vmicro: cint): ptr QOperatingSystemVersionBase {. header:headerFile, importcpp:"new QOperatingSystemVersionBase(@)" .} #

# Public methods for QOperatingSystemVersionBase
proc static_QOperatingSystemVersionBase_current*(): QOperatingSystemVersionBase {.header:headerFile, importcpp:"QOperatingSystemVersionBase::current(@)".} # Public static
import nimqt/qtcore/qstring
proc static_QOperatingSystemVersionBase_name*(osversion: QOperatingSystemVersionBase): QString {.header:headerFile, importcpp:"QOperatingSystemVersionBase::name(@)".} # Public static
proc static_QOperatingSystemVersionBase_currentType*(): QOperatingSystemVersionBase_OSType {.header:headerFile, importcpp:"QOperatingSystemVersionBase::currentType(@)".} # Public static
import nimqt/qtcore/qversionnumber
proc version*(this: ptr QOperatingSystemVersionBase): QVersionNumber {.header:headerFile, importcpp:"#.version(@)".} # Public
proc majorVersion*(this: ptr QOperatingSystemVersionBase): cint {.header:headerFile, importcpp:"#.majorVersion(@)".} # Public
proc minorVersion*(this: ptr QOperatingSystemVersionBase): cint {.header:headerFile, importcpp:"#.minorVersion(@)".} # Public
proc microVersion*(this: ptr QOperatingSystemVersionBase): cint {.header:headerFile, importcpp:"#.microVersion(@)".} # Public
proc segmentCount*(this: ptr QOperatingSystemVersionBase): cint {.header:headerFile, importcpp:"#.segmentCount(@)".} # Public
proc `type`*(this: ptr QOperatingSystemVersionBase): QOperatingSystemVersionBase_OSType {.header:headerFile, importcpp:"#.type(@)".} # Public
proc name*(this: ptr QOperatingSystemVersionBase): QString {.header:headerFile, importcpp:"#.name(@)".} # Public

# Protected methods methods for QOperatingSystemVersionBase
proc static_QOperatingSystemVersionBase_compare*(v1: QOperatingSystemVersionBase, v2: QOperatingSystemVersionBase): cint {.header:headerFile, importcpp:"QOperatingSystemVersionBase::compare(@)".} # Protected static
# Stuff for class QOperatingSystemVersion

# Public constructors for QOperatingSystemVersion
proc newQOperatingSystemVersion*(osversion: QOperatingSystemVersionBase): ptr QOperatingSystemVersion {. header:headerFile, importcpp:"new QOperatingSystemVersion(@)" .} #
proc newQOperatingSystemVersion*(osType: eQOperatingSystemVersion_OSType, vmajor: cint, vminor: cint, vmicro: cint): ptr QOperatingSystemVersion {. header:headerFile, importcpp:"new QOperatingSystemVersion(@)" .} #

# Public methods for QOperatingSystemVersion
proc static_QOperatingSystemVersion_current*(): QOperatingSystemVersion {.header:headerFile, importcpp:"QOperatingSystemVersion::current(@)".} # Public static
proc static_QOperatingSystemVersion_currentType*(): eQOperatingSystemVersion_OSType {.header:headerFile, importcpp:"QOperatingSystemVersion::currentType(@)".} # Public static
proc version*(this: ptr QOperatingSystemVersion): QVersionNumber {.header:headerFile, importcpp:"#.version(@)".} # Public
proc majorVersion*(this: ptr QOperatingSystemVersion): cint {.header:headerFile, importcpp:"#.majorVersion(@)".} # Public
proc minorVersion*(this: ptr QOperatingSystemVersion): cint {.header:headerFile, importcpp:"#.minorVersion(@)".} # Public
proc microVersion*(this: ptr QOperatingSystemVersion): cint {.header:headerFile, importcpp:"#.microVersion(@)".} # Public
proc segmentCount*(this: ptr QOperatingSystemVersion): cint {.header:headerFile, importcpp:"#.segmentCount(@)".} # Public
proc `type`*(this: ptr QOperatingSystemVersion): eQOperatingSystemVersion_OSType {.header:headerFile, importcpp:"#.type(@)".} # Public
proc name*(this: ptr QOperatingSystemVersion): QString {.header:headerFile, importcpp:"#.name(@)".} # Public

export qversionnumber
export qstring
