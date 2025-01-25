const headerFile* = "QtCore/qdatastream.h"

type
    # Enums found in the C++ code
    # Global
    QDataStream_Version* {.header:headerFile,importcpp:"QDataStream::Version".} = enum Qt_1_0 = 0x1, Qt_2_0 = 0x2, Qt_2_1 = 0x3, Qt_3_0 = 0x4, 
        Qt_3_1 = 0x5, Qt_3_3 = 0x6, Qt_4_0 = 0x7, Qt_4_2 = 0x8, Qt_4_3 = 0x9, 
        Qt_4_4 = 0xa, Qt_4_5 = 0xb, Qt_4_6 = 0xc, Qt_5_0 = 0xd, Qt_5_1 = 0xe, 
        Qt_5_2 = 0xf, Qt_5_4 = 0x10, Qt_5_6 = 0x11, Qt_5_12 = 0x12, Qt_5_13 = 0x13, 
        Qt_6_0 = 0x14
    QDataStream_ByteOrder* {.header:headerFile,importcpp:"QDataStream::ByteOrder".} = enum BigEndian = 0, LittleEndian = 0x1
    QDataStream_Status* {.header:headerFile,importcpp:"QDataStream::Status".} = enum Ok = 0, ReadPastEnd = 0x1, ReadCorruptData = 0x2, WriteFailed = 0x3
    QDataStream_FloatingPointPrecision* {.header:headerFile,importcpp:"QDataStream::FloatingPointPrecision".} = enum SinglePrecision = 0, DoublePrecision = 0x1

import nimqt/qtcore/qiodevicebase
type
    # Classes found in the C++ code
    QDataStream* {.header:headerFile,importcpp:"QDataStream" ,pure.} = object of QIODeviceBase


type
    # typedefs found in the C++ code
    QDataStream_OpenModeFlag * = QIODeviceBase_OpenModeFlag
    QDataStream_OpenMode * = QIODeviceBase_OpenMode

# Consts
const
    # Global
    QDataStream_VersionQt_4_1* = 7 # from anonymous enum Qt_4_0
    QDataStream_VersionQt_4_7* = 12 # from anonymous enum Qt_4_6
    QDataStream_VersionQt_4_8* = 12 # from anonymous enum Qt_4_6
    QDataStream_VersionQt_4_9* = 12 # from anonymous enum Qt_4_6
    QDataStream_VersionQt_5_3* = 15 # from anonymous enum Qt_5_2
    QDataStream_VersionQt_5_5* = 16 # from anonymous enum Qt_5_4
    QDataStream_VersionQt_5_7* = 17 # from anonymous enum Qt_5_6
    QDataStream_VersionQt_5_8* = 17 # from anonymous enum Qt_5_6
    QDataStream_VersionQt_5_9* = 17 # from anonymous enum Qt_5_6
    QDataStream_VersionQt_5_10* = 17 # from anonymous enum Qt_5_6
    QDataStream_VersionQt_5_11* = 17 # from anonymous enum Qt_5_6
    QDataStream_VersionQt_5_14* = 19 # from anonymous enum Qt_5_13
    QDataStream_VersionQt_5_15* = 19 # from anonymous enum Qt_5_13
    QDataStream_VersionQt_6_1* = 20 # from anonymous enum Qt_6_0
    QDataStream_VersionQt_6_2* = 20 # from anonymous enum Qt_6_0
    QDataStream_VersionQt_6_3* = 20 # from anonymous enum Qt_6_0
    QDataStream_VersionQt_6_4* = 20 # from anonymous enum Qt_6_0
    QDataStream_VersionQt_DefaultCompiledVersion* = 20 # from anonymous enum Qt_6_0

# Stuff for class QDataStream

# Public constructors for QDataStream
proc newQDataStream*(): ptr QDataStream {. header:headerFile, importcpp:"new QDataStream(@)" .} #
import nimqt/qtcore/qiodevice
proc newQDataStream*(arg_0: ptr QIODevice): ptr QDataStream {. header:headerFile, importcpp:"new QDataStream(@)" .} #
import nimqt/qtcore/qbytearray
proc newQDataStream*(arg_0: ptr QByteArray, flags: QIODeviceBase_OpenMode): ptr QDataStream {. header:headerFile, importcpp:"new QDataStream(@)" .} #
proc newQDataStream*(arg_0: QByteArray): ptr QDataStream {. header:headerFile, importcpp:"new QDataStream(@)" .} #

# Public methods for QDataStream
proc device*(this: ptr QDataStream): ptr QIODevice {.header:headerFile, importcpp:"#.device(@)".} # Public
proc setDevice*(this: ptr QDataStream, arg_0: ptr QIODevice) {.header:headerFile, importcpp:"#.setDevice(@)".} # Public
proc atEnd*(this: ptr QDataStream): bool {.header:headerFile, importcpp:"#.atEnd(@)".} # Public
proc status*(this: ptr QDataStream): QDataStream_Status {.header:headerFile, importcpp:"#.status(@)".} # Public
proc setStatus*(this: ptr QDataStream, status: QDataStream_Status) {.header:headerFile, importcpp:"#.setStatus(@)".} # Public
proc resetStatus*(this: ptr QDataStream) {.header:headerFile, importcpp:"#.resetStatus(@)".} # Public
proc floatingPointPrecision*(this: ptr QDataStream): QDataStream_FloatingPointPrecision {.header:headerFile, importcpp:"#.floatingPointPrecision(@)".} # Public
proc setFloatingPointPrecision*(this: ptr QDataStream, precision: QDataStream_FloatingPointPrecision) {.header:headerFile, importcpp:"#.setFloatingPointPrecision(@)".} # Public
proc byteOrder*(this: ptr QDataStream): QDataStream_ByteOrder {.header:headerFile, importcpp:"#.byteOrder(@)".} # Public
proc setByteOrder*(this: ptr QDataStream, arg_0: QDataStream_ByteOrder) {.header:headerFile, importcpp:"#.setByteOrder(@)".} # Public
proc version*(this: ptr QDataStream): cint {.header:headerFile, importcpp:"#.version(@)".} # Public
proc setVersion*(this: ptr QDataStream, arg_0: cint) {.header:headerFile, importcpp:"#.setVersion(@)".} # Public
proc `>>`*(this: ptr QDataStream, i: char): QDataStream {.header:headerFile, importcpp:"#.operator>>(@)".} # Public
proc `>>`*(this: ptr QDataStream, i: cschar): QDataStream {.header:headerFile, importcpp:"#.operator>>(@)".} # Public
proc `>>`*(this: ptr QDataStream, i: uint8): QDataStream {.header:headerFile, importcpp:"#.operator>>(@)".} # Public
proc `>>`*(this: ptr QDataStream, i: cshort): QDataStream {.header:headerFile, importcpp:"#.operator>>(@)".} # Public
proc `>>`*(this: ptr QDataStream, i: cushort): QDataStream {.header:headerFile, importcpp:"#.operator>>(@)".} # Public
proc `>>`*(this: ptr QDataStream, i: clong): QDataStream {.header:headerFile, importcpp:"#.operator>>(@)".} # Public
proc `>>`*(this: ptr QDataStream, i: cuint): QDataStream {.header:headerFile, importcpp:"#.operator>>(@)".} # Public
proc `>>`*(this: ptr QDataStream, i: clonglong): QDataStream {.header:headerFile, importcpp:"#.operator>>(@)".} # Public
proc `>>`*(this: ptr QDataStream, i: culonglong): QDataStream {.header:headerFile, importcpp:"#.operator>>(@)".} # Public
proc `>>`*(this: ptr QDataStream, i: bool): QDataStream {.header:headerFile, importcpp:"#.operator>>(@)".} # Public
proc `>>`*(this: ptr QDataStream, f: cfloat): QDataStream {.header:headerFile, importcpp:"#.operator>>(@)".} # Public
proc `>>`*(this: ptr QDataStream, f: cdouble): QDataStream {.header:headerFile, importcpp:"#.operator>>(@)".} # Public
proc `>>`*(this: ptr QDataStream, str: char): QDataStream {.header:headerFile, importcpp:"#.operator>>(@)".} # Public
proc `>>`*(this: ptr QDataStream, c: cushort): QDataStream {.header:headerFile, importcpp:"#.operator>>(@)".} # Public
proc `>>`*(this: ptr QDataStream, c: cuint): QDataStream {.header:headerFile, importcpp:"#.operator>>(@)".} # Public
proc `<<`*(this: ptr QDataStream, i: char): QDataStream {.header:headerFile, importcpp:"#.operator<<(@)".} # Public
proc `<<`*(this: ptr QDataStream, i: cschar): QDataStream {.header:headerFile, importcpp:"#.operator<<(@)".} # Public
proc `<<`*(this: ptr QDataStream, i: uint8): QDataStream {.header:headerFile, importcpp:"#.operator<<(@)".} # Public
proc `<<`*(this: ptr QDataStream, i: cshort): QDataStream {.header:headerFile, importcpp:"#.operator<<(@)".} # Public
proc `<<`*(this: ptr QDataStream, i: cushort): QDataStream {.header:headerFile, importcpp:"#.operator<<(@)".} # Public
proc `<<`*(this: ptr QDataStream, i: clong): QDataStream {.header:headerFile, importcpp:"#.operator<<(@)".} # Public
proc `<<`*(this: ptr QDataStream, i: cuint): QDataStream {.header:headerFile, importcpp:"#.operator<<(@)".} # Public
proc `<<`*(this: ptr QDataStream, i: clonglong): QDataStream {.header:headerFile, importcpp:"#.operator<<(@)".} # Public
proc `<<`*(this: ptr QDataStream, i: culonglong): QDataStream {.header:headerFile, importcpp:"#.operator<<(@)".} # Public
proc `<<`*(this: ptr QDataStream, i: bool): QDataStream {.header:headerFile, importcpp:"#.operator<<(@)".} # Public
proc `<<`*(this: ptr QDataStream, f: cfloat): QDataStream {.header:headerFile, importcpp:"#.operator<<(@)".} # Public
proc `<<`*(this: ptr QDataStream, f: cdouble): QDataStream {.header:headerFile, importcpp:"#.operator<<(@)".} # Public
proc `<<`*(this: ptr QDataStream, str: ptr char): QDataStream {.header:headerFile, importcpp:"#.operator<<(@)".} # Public
proc `<<`*(this: ptr QDataStream, c: cushort): QDataStream {.header:headerFile, importcpp:"#.operator<<(@)".} # Public
proc `<<`*(this: ptr QDataStream, c: cuint): QDataStream {.header:headerFile, importcpp:"#.operator<<(@)".} # Public
proc readBytes*(this: ptr QDataStream, arg_1: char, len: cuint): QDataStream {.header:headerFile, importcpp:"#.readBytes(@)".} # Public
proc readRawData*(this: ptr QDataStream, arg_0: ptr char, len: cint): cint {.header:headerFile, importcpp:"#.readRawData(@)".} # Public
proc writeBytes*(this: ptr QDataStream, arg_1: ptr char, len: cuint): QDataStream {.header:headerFile, importcpp:"#.writeBytes(@)".} # Public
proc writeRawData*(this: ptr QDataStream, arg_0: ptr char, len: cint): cint {.header:headerFile, importcpp:"#.writeRawData(@)".} # Public
proc skipRawData*(this: ptr QDataStream, len: cint): cint {.header:headerFile, importcpp:"#.skipRawData(@)".} # Public
proc startTransaction*(this: ptr QDataStream) {.header:headerFile, importcpp:"#.startTransaction(@)".} # Public
proc commitTransaction*(this: ptr QDataStream): bool {.header:headerFile, importcpp:"#.commitTransaction(@)".} # Public
proc rollbackTransaction*(this: ptr QDataStream) {.header:headerFile, importcpp:"#.rollbackTransaction(@)".} # Public
proc abortTransaction*(this: ptr QDataStream) {.header:headerFile, importcpp:"#.abortTransaction(@)".} # Public
proc isDeviceTransactionStarted*(this: ptr QDataStream): bool {.header:headerFile, importcpp:"#.isDeviceTransactionStarted(@)".} # Public

export qiodevicebase
export qbytearray
export qiodevice
