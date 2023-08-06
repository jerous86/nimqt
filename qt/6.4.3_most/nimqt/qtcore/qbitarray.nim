const headerFile* = "QtCore/qbitarray.h"

type
    # Classes found in the C++ code
    QBitArray* {.header:headerFile,importcpp:"QBitArray" ,pure,inheritable.} = object

# Stuff for class QBitArray

# Public constructors for QBitArray
proc newQBitArray*(): QBitArray {. header:headerFile, importcpp:"QBitArray(@)", constructor .} #
# 1 default parameters!
proc newQBitArray*(size: cint, val: bool): QBitArray {. header:headerFile, importcpp:"QBitArray(@)", constructor .} #
proc newQBitArray*(size: cint): QBitArray {. header:headerFile, importcpp:"QBitArray(@)", constructor .} #
proc newQBitArray*(other: QBitArray): QBitArray {. header:headerFile, importcpp:"QBitArray(@)", constructor .} #

# Public methods for QBitArray
proc swap*(this: QBitArray, other: QBitArray) {.header:headerFile, importcpp:"#.swap(@)".} # Public
proc size*(this: QBitArray): cint {.header:headerFile, importcpp:"#.size(@)".} # Public
proc count*(this: QBitArray): cint {.header:headerFile, importcpp:"#.count(@)".} # Public
proc isEmpty*(this: QBitArray): bool {.header:headerFile, importcpp:"#.isEmpty(@)".} # Public
proc isNull*(this: QBitArray): bool {.header:headerFile, importcpp:"#.isNull(@)".} # Public
proc resize*(this: QBitArray, size: cint) {.header:headerFile, importcpp:"#.resize(@)".} # Public
proc detach*(this: QBitArray) {.header:headerFile, importcpp:"#.detach(@)".} # Public
proc isDetached*(this: QBitArray): bool {.header:headerFile, importcpp:"#.isDetached(@)".} # Public
proc clear*(this: QBitArray) {.header:headerFile, importcpp:"#.clear(@)".} # Public
proc testBit*(this: QBitArray, i: cint): bool {.header:headerFile, importcpp:"#.testBit(@)".} # Public
proc setBit*(this: QBitArray, i: cint) {.header:headerFile, importcpp:"#.setBit(@)".} # Public
proc setBit*(this: QBitArray, i: cint, val: bool) {.header:headerFile, importcpp:"#.setBit(@)".} # Public
proc clearBit*(this: QBitArray, i: cint) {.header:headerFile, importcpp:"#.clearBit(@)".} # Public
proc toggleBit*(this: QBitArray, i: cint): bool {.header:headerFile, importcpp:"#.toggleBit(@)".} # Public
proc at*(this: QBitArray, i: cint): bool {.header:headerFile, importcpp:"#.at(@)".} # Public
proc `[]`*(this: QBitArray, i: cint): bool {.header:headerFile, importcpp:"#.operator[](@)".} # Public
proc `&=`*(this: QBitArray, arg_1: QBitArray): QBitArray {.header:headerFile, importcpp:"#.operator&=(@)".} # Public
proc `|=`*(this: QBitArray, arg_1: QBitArray): QBitArray {.header:headerFile, importcpp:"#.operator|=(@)".} # Public
proc `^=`*(this: QBitArray, arg_1: QBitArray): QBitArray {.header:headerFile, importcpp:"#.operator^=(@)".} # Public
proc `~`*(this: QBitArray): QBitArray {.header:headerFile, importcpp:"#.operator~(@)".} # Public
proc `!=`*(this: QBitArray, other: QBitArray): bool {.header:headerFile, importcpp:"#.operator!=(@)".} # Public
proc fill*(this: QBitArray, val: bool, size: cint): bool {.header:headerFile, importcpp:"#.fill(@)".} # Public
proc fill*(this: QBitArray, val: bool, first: cint, last: cint) {.header:headerFile, importcpp:"#.fill(@)".} # Public
proc truncate*(this: QBitArray, pos: cint) {.header:headerFile, importcpp:"#.truncate(@)".} # Public
proc bits*(this: QBitArray): ptr char {.header:headerFile, importcpp:"#.bits(@)".} # Public
proc static_QBitArray_fromBits*(data: ptr char, len: cint): QBitArray {.header:headerFile, importcpp:"QBitArray::fromBits(@)".} # Public static
import nimqt/qtcore/qsysinfo
# 1 default parameters!
proc toUInt32*(this: QBitArray, endianness: QSysInfo_Endian, ok: ptr bool): cuint {.header:headerFile, importcpp:"#.toUInt32(@)".} # Public
proc toUInt32*(this: QBitArray, endianness: QSysInfo_Endian): cuint {.header:headerFile, importcpp:"#.toUInt32(@)".} # Public

export qsysinfo
