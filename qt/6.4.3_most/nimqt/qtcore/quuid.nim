const headerFile* = "QtCore/quuid.h"

type
    # Enums found in the C++ code
    # Global
    QUuid_Variant* {.header:headerFile,importcpp:"QUuid::Variant".} = enum VarUnknown = -1, NCS = 0, DCE = 0x2, Microsoft = 0x6, 
        Reserved = 0x7
    QUuid_Version* {.header:headerFile,importcpp:"QUuid::Version".} = enum VerUnknown = -1, Time = 0x1, EmbeddedPOSIX = 0x2, Md5 = 0x3, 
        Random = 0x4, Sha1 = 0x5
    QUuid_StringFormat* {.header:headerFile,importcpp:"QUuid::StringFormat".} = enum WithBraces = 0, WithoutBraces = 0x1, Id128 = 0x3

type
    # Classes found in the C++ code
    QUuid* {.header:headerFile,importcpp:"QUuid" ,pure,inheritable.} = object

# Consts
const
    # Global
    QUuid_VersionName* = 3 # from anonymous enum Md5

# Stuff for class QUuid

# Public constructors for QUuid
proc newQUuid*(): QUuid {. header:headerFile, importcpp:"QUuid(@)", constructor .} #
proc newQUuid*(l: cuint, w1: cushort, w2: cushort, b1: char, b2: char, b3: char, b4: char, b5: char, b6: char, b7: char, b8: char): QUuid {. header:headerFile, importcpp:"QUuid(@)", constructor .} #
import nimqt/qtcore/qanystringview
proc newQUuid*(string: QAnyStringView): QUuid {. header:headerFile, importcpp:"QUuid(@)", constructor .} #

# Public methods for QUuid
proc static_QUuid_fromString*(string: QAnyStringView): QUuid {.header:headerFile, importcpp:"QUuid::fromString(@)".} # Public static
import nimqt/qtcore/qstring
proc toString*(this: QUuid, mode: QUuid_StringFormat): QString {.header:headerFile, importcpp:"#.toString(@)".} # Public
import nimqt/qtcore/qbytearray
proc toByteArray*(this: QUuid, mode: QUuid_StringFormat): QByteArray {.header:headerFile, importcpp:"#.toByteArray(@)".} # Public
proc toRfc4122*(this: QUuid): QByteArray {.header:headerFile, importcpp:"#.toRfc4122(@)".} # Public
import nimqt/qtcore/qbytearrayview
proc static_QUuid_fromRfc4122*(arg_1: QByteArrayView): QUuid {.header:headerFile, importcpp:"QUuid::fromRfc4122(@)".} # Public static
proc isNull*(this: QUuid): bool {.header:headerFile, importcpp:"#.isNull(@)".} # Public
proc `!=`*(this: QUuid, orig: QUuid): bool {.header:headerFile, importcpp:"#.operator!=(@)".} # Public
proc `<`*(this: QUuid, other: QUuid): bool {.header:headerFile, importcpp:"#.operator<(@)".} # Public
proc `>`*(this: QUuid, other: QUuid): bool {.header:headerFile, importcpp:"#.operator>(@)".} # Public
proc static_QUuid_createUuid*(): QUuid {.header:headerFile, importcpp:"QUuid::createUuid(@)".} # Public static
proc static_QUuid_createUuidV3*(ns: QUuid, baseData: QByteArray): QUuid {.header:headerFile, importcpp:"QUuid::createUuidV3(@)".} # Public static
proc static_QUuid_createUuidV5*(ns: QUuid, baseData: QByteArray): QUuid {.header:headerFile, importcpp:"QUuid::createUuidV5(@)".} # Public static
proc static_QUuid_createUuidV3*(ns: QUuid, baseData: QString): QUuid {.header:headerFile, importcpp:"QUuid::createUuidV3(@)".} # Public static
proc static_QUuid_createUuidV5*(ns: QUuid, baseData: QString): QUuid {.header:headerFile, importcpp:"QUuid::createUuidV5(@)".} # Public static
proc variant*(this: QUuid): QUuid_Variant {.header:headerFile, importcpp:"#.variant(@)".} # Public
proc version*(this: QUuid): QUuid_Version {.header:headerFile, importcpp:"#.version(@)".} # Public

export qbytearrayview
export qstring
export qbytearray
export qanystringview
