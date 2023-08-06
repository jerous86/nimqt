const headerFile* = "QtCore/qbytearray.h"

type
    # Enums found in the C++ code
    # Global
    QByteArray_Base64Option* {.header:headerFile,importcpp:"QByteArray::Base64Option".} = enum Base64Encoding = 0, Base64UrlEncoding = 0x1, OmitTrailingEquals = 0x2, AbortOnBase64DecodingErrors = 0x4
    QByteArray_Base64DecodingStatus* {.header:headerFile,importcpp:"QByteArray::Base64DecodingStatus".} = enum Ok = 0, IllegalInputLength = 0x1, IllegalCharacter = 0x2, IllegalPadding = 0x3

type
    # Classes found in the C++ code
    QByteArray* {.header:headerFile,importcpp:"QByteArray" ,pure,inheritable.} = object
import nimqt/qtcore/qflags


type
    # typedefs found in the C++ code
    QByteArray_Base64Options * = QFlags[QByteArray_Base64Option]
    QByteArray_const_reference * = char
    QByteArray_reference * = char
    QByteArray_pointer * = ptr char
    QByteArray_const_pointer * = ptr char
    QByteArray_value_type * = char

# Consts
const
    # Global
    QByteArray_Base64OptionKeepTrailingEquals* = 0 # from anonymous enum Base64Encoding
    QByteArray_Base64OptionIgnoreBase64DecodingErrors* = 0 # from anonymous enum Base64Encoding

# Stuff for class QByteArray

# Public constructors for QByteArray
proc newQByteArray*(): QByteArray {. header:headerFile, importcpp:"QByteArray(@)", constructor .} #
proc newQByteArray*(arg_0: ptr char, size: cint): QByteArray {. header:headerFile, importcpp:"QByteArray(@)", constructor .} #
proc newQByteArray*(size: cint, c: char): QByteArray {. header:headerFile, importcpp:"QByteArray(@)", constructor .} #
import nimqt/qtcore/qnamespace
proc newQByteArray*(size: cint, arg_1: Qt_Initialization): QByteArray {. header:headerFile, importcpp:"QByteArray(@)", constructor .} #
proc newQByteArray*(arg_0: QByteArray): QByteArray {. header:headerFile, importcpp:"QByteArray(@)", constructor .} #
proc newQByteArray*(other: QByteArray): QByteArray {. header:headerFile, importcpp:"QByteArray(@)", constructor .} #

# Public methods for QByteArray
proc swap*(this: QByteArray, other: QByteArray) {.header:headerFile, importcpp:"#.swap(@)".} # Public
proc isEmpty*(this: QByteArray): bool {.header:headerFile, importcpp:"#.isEmpty(@)".} # Public
proc resize*(this: QByteArray, size: cint) {.header:headerFile, importcpp:"#.resize(@)".} # Public
proc resize*(this: QByteArray, size: cint, c: char) {.header:headerFile, importcpp:"#.resize(@)".} # Public
proc fill*(this: QByteArray, c: char, size: cint): QByteArray {.header:headerFile, importcpp:"#.fill(@)".} # Public
proc capacity*(this: QByteArray): cint {.header:headerFile, importcpp:"#.capacity(@)".} # Public
proc reserve*(this: QByteArray, size: cint) {.header:headerFile, importcpp:"#.reserve(@)".} # Public
proc squeeze*(this: QByteArray) {.header:headerFile, importcpp:"#.squeeze(@)".} # Public
proc data*(this: QByteArray): ptr char {.header:headerFile, importcpp:"#.data(@)".} # Public
proc detach*(this: QByteArray) {.header:headerFile, importcpp:"#.detach(@)".} # Public
proc isDetached*(this: QByteArray): bool {.header:headerFile, importcpp:"#.isDetached(@)".} # Public
proc isSharedWith*(this: QByteArray, other: QByteArray): bool {.header:headerFile, importcpp:"#.isSharedWith(@)".} # Public
proc clear*(this: QByteArray) {.header:headerFile, importcpp:"#.clear(@)".} # Public
proc at*(this: QByteArray, i: cint): char {.header:headerFile, importcpp:"#.at(@)".} # Public
proc `[]`*(this: QByteArray, i: cint): char {.header:headerFile, importcpp:"#.operator[](@)".} # Public
proc front*(this: QByteArray): char {.header:headerFile, importcpp:"#.front(@)".} # Public
proc back*(this: QByteArray): char {.header:headerFile, importcpp:"#.back(@)".} # Public
proc indexOf*(this: QByteArray): cint {.header:headerFile, importcpp:"#.indexOf(@)".} # Public
proc lastIndexOf*(this: QByteArray): cint {.header:headerFile, importcpp:"#.lastIndexOf(@)".} # Public
proc contains*(this: QByteArray, c: char): bool {.header:headerFile, importcpp:"#.contains(@)".} # Public
import nimqt/qtcore/qbytearrayview
proc contains*(this: QByteArray, bv: QByteArrayView): bool {.header:headerFile, importcpp:"#.contains(@)".} # Public
proc count*(this: QByteArray): cint {.header:headerFile, importcpp:"#.count(@)".} # Public
proc compare*(this: QByteArray, a: QByteArrayView, cs: Qt_CaseSensitivity): cint {.header:headerFile, importcpp:"#.compare(@)".} # Public
proc left*(this: QByteArray, len: cint): QByteArray {.header:headerFile, importcpp:"#.left(@)".} # Public
proc right*(this: QByteArray, len: cint): QByteArray {.header:headerFile, importcpp:"#.right(@)".} # Public
proc mid*(this: QByteArray, index: cint, len: cint): QByteArray {.header:headerFile, importcpp:"#.mid(@)".} # Public
proc first*(this: QByteArray, n: cint): QByteArray {.header:headerFile, importcpp:"#.first(@)".} # Public
proc last*(this: QByteArray, n: cint): QByteArray {.header:headerFile, importcpp:"#.last(@)".} # Public
proc sliced*(this: QByteArray, pos: cint): QByteArray {.header:headerFile, importcpp:"#.sliced(@)".} # Public
proc sliced*(this: QByteArray, pos: cint, n: cint): QByteArray {.header:headerFile, importcpp:"#.sliced(@)".} # Public
proc chopped*(this: QByteArray, len: cint): QByteArray {.header:headerFile, importcpp:"#.chopped(@)".} # Public
proc startsWith*(this: QByteArray, bv: QByteArrayView): bool {.header:headerFile, importcpp:"#.startsWith(@)".} # Public
proc startsWith*(this: QByteArray, c: char): bool {.header:headerFile, importcpp:"#.startsWith(@)".} # Public
proc endsWith*(this: QByteArray, c: char): bool {.header:headerFile, importcpp:"#.endsWith(@)".} # Public
proc endsWith*(this: QByteArray, bv: QByteArrayView): bool {.header:headerFile, importcpp:"#.endsWith(@)".} # Public
proc isUpper*(this: QByteArray): bool {.header:headerFile, importcpp:"#.isUpper(@)".} # Public
proc isLower*(this: QByteArray): bool {.header:headerFile, importcpp:"#.isLower(@)".} # Public
proc isValidUtf8*(this: QByteArray): bool {.header:headerFile, importcpp:"#.isValidUtf8(@)".} # Public
proc truncate*(this: QByteArray, pos: cint) {.header:headerFile, importcpp:"#.truncate(@)".} # Public
proc chop*(this: QByteArray, n: cint) {.header:headerFile, importcpp:"#.chop(@)".} # Public
proc toLower*(this: QByteArray): QByteArray {.header:headerFile, importcpp:"#.toLower(@)".} # Public
proc toUpper*(this: QByteArray): QByteArray {.header:headerFile, importcpp:"#.toUpper(@)".} # Public
proc trimmed*(this: QByteArray): QByteArray {.header:headerFile, importcpp:"#.trimmed(@)".} # Public
proc simplified*(this: QByteArray): QByteArray {.header:headerFile, importcpp:"#.simplified(@)".} # Public
# 1 default parameters!
proc leftJustified*(this: QByteArray, width: cint, fill: char, truncate: bool): QByteArray {.header:headerFile, importcpp:"#.leftJustified(@)".} # Public
proc leftJustified*(this: QByteArray, width: cint, fill: char): QByteArray {.header:headerFile, importcpp:"#.leftJustified(@)".} # Public
# 1 default parameters!
proc rightJustified*(this: QByteArray, width: cint, fill: char, truncate: bool): QByteArray {.header:headerFile, importcpp:"#.rightJustified(@)".} # Public
proc rightJustified*(this: QByteArray, width: cint, fill: char): QByteArray {.header:headerFile, importcpp:"#.rightJustified(@)".} # Public
proc prepend*(this: QByteArray, c: char): QByteArray {.header:headerFile, importcpp:"#.prepend(@)".} # Public
proc prepend*(this: QByteArray, count: cint, c: char): QByteArray {.header:headerFile, importcpp:"#.prepend(@)".} # Public
proc prepend*(this: QByteArray, s: ptr char): QByteArray {.header:headerFile, importcpp:"#.prepend(@)".} # Public
proc prepend*(this: QByteArray, s: ptr char, len: cint): QByteArray {.header:headerFile, importcpp:"#.prepend(@)".} # Public
proc prepend*(this: QByteArray, a: QByteArray): QByteArray {.header:headerFile, importcpp:"#.prepend(@)".} # Public
proc prepend*(this: QByteArray, a: QByteArrayView): QByteArray {.header:headerFile, importcpp:"#.prepend(@)".} # Public
proc append*(this: QByteArray, c: char): QByteArray {.header:headerFile, importcpp:"#.append(@)".} # Public
proc append*(this: QByteArray, count: cint, c: char): QByteArray {.header:headerFile, importcpp:"#.append(@)".} # Public
proc append*(this: QByteArray, s: ptr char): QByteArray {.header:headerFile, importcpp:"#.append(@)".} # Public
proc append*(this: QByteArray, s: ptr char, len: cint): QByteArray {.header:headerFile, importcpp:"#.append(@)".} # Public
proc append*(this: QByteArray, a: QByteArray): QByteArray {.header:headerFile, importcpp:"#.append(@)".} # Public
proc append*(this: QByteArray, a: QByteArrayView): QByteArray {.header:headerFile, importcpp:"#.append(@)".} # Public
proc insert*(this: QByteArray, i: cint, data: QByteArrayView): QByteArray {.header:headerFile, importcpp:"#.insert(@)".} # Public
proc insert*(this: QByteArray, i: cint, s: ptr char): QByteArray {.header:headerFile, importcpp:"#.insert(@)".} # Public
proc insert*(this: QByteArray, i: cint, data: QByteArray): QByteArray {.header:headerFile, importcpp:"#.insert(@)".} # Public
proc insert*(this: QByteArray, i: cint, count: cint, c: char): QByteArray {.header:headerFile, importcpp:"#.insert(@)".} # Public
proc insert*(this: QByteArray, i: cint, c: char): QByteArray {.header:headerFile, importcpp:"#.insert(@)".} # Public
proc insert*(this: QByteArray, i: cint, s: ptr char, len: cint): QByteArray {.header:headerFile, importcpp:"#.insert(@)".} # Public
proc remove*(this: QByteArray, index: cint, len: cint): QByteArray {.header:headerFile, importcpp:"#.remove(@)".} # Public
proc replace*(this: QByteArray, index: cint, len: cint, s: ptr char, alen: cint): QByteArray {.header:headerFile, importcpp:"#.replace(@)".} # Public
proc replace*(this: QByteArray, index: cint, len: cint, s: QByteArrayView): QByteArray {.header:headerFile, importcpp:"#.replace(@)".} # Public
proc replace*(this: QByteArray, before: char, after: QByteArrayView): QByteArray {.header:headerFile, importcpp:"#.replace(@)".} # Public
proc replace*(this: QByteArray, before: ptr char, bsize: cint, after: ptr char, asize: cint): QByteArray {.header:headerFile, importcpp:"#.replace(@)".} # Public
proc replace*(this: QByteArray, before: QByteArrayView, after: QByteArrayView): QByteArray {.header:headerFile, importcpp:"#.replace(@)".} # Public
proc replace*(this: QByteArray, before: char, after: char): QByteArray {.header:headerFile, importcpp:"#.replace(@)".} # Public
proc `+=`*(this: QByteArray, c: char): QByteArray {.header:headerFile, importcpp:"#.operator+=(@)".} # Public
proc `+=`*(this: QByteArray, s: ptr char): QByteArray {.header:headerFile, importcpp:"#.operator+=(@)".} # Public
proc `+=`*(this: QByteArray, a: QByteArray): QByteArray {.header:headerFile, importcpp:"#.operator+=(@)".} # Public
proc `+=`*(this: QByteArray, a: QByteArrayView): QByteArray {.header:headerFile, importcpp:"#.operator+=(@)".} # Public
import nimqt/qtcore/qlist
proc split*(this: QByteArray, sep: char): QList[QByteArray] {.header:headerFile, importcpp:"#.split(@)".} # Public
proc repeated*(this: QByteArray, times: cint): QByteArray {.header:headerFile, importcpp:"#.repeated(@)".} # Public
# 2 default parameters!
proc toShort*(this: QByteArray, ok: ptr bool, base: cint): cshort {.header:headerFile, importcpp:"#.toShort(@)".} # Public
proc toShort*(this: QByteArray, ok: ptr bool): cshort {.header:headerFile, importcpp:"#.toShort(@)".} # Public
proc toShort*(this: QByteArray): cshort {.header:headerFile, importcpp:"#.toShort(@)".} # Public
# 2 default parameters!
proc toUShort*(this: QByteArray, ok: ptr bool, base: cint): cushort {.header:headerFile, importcpp:"#.toUShort(@)".} # Public
proc toUShort*(this: QByteArray, ok: ptr bool): cushort {.header:headerFile, importcpp:"#.toUShort(@)".} # Public
proc toUShort*(this: QByteArray): cushort {.header:headerFile, importcpp:"#.toUShort(@)".} # Public
# 2 default parameters!
proc toInt*(this: QByteArray, ok: ptr bool, base: cint): cint {.header:headerFile, importcpp:"#.toInt(@)".} # Public
proc toInt*(this: QByteArray, ok: ptr bool): cint {.header:headerFile, importcpp:"#.toInt(@)".} # Public
proc toInt*(this: QByteArray): cint {.header:headerFile, importcpp:"#.toInt(@)".} # Public
# 2 default parameters!
proc toUInt*(this: QByteArray, ok: ptr bool, base: cint): cuint {.header:headerFile, importcpp:"#.toUInt(@)".} # Public
proc toUInt*(this: QByteArray, ok: ptr bool): cuint {.header:headerFile, importcpp:"#.toUInt(@)".} # Public
proc toUInt*(this: QByteArray): cuint {.header:headerFile, importcpp:"#.toUInt(@)".} # Public
# 2 default parameters!
proc toLong*(this: QByteArray, ok: ptr bool, base: cint): clong {.header:headerFile, importcpp:"#.toLong(@)".} # Public
proc toLong*(this: QByteArray, ok: ptr bool): clong {.header:headerFile, importcpp:"#.toLong(@)".} # Public
proc toLong*(this: QByteArray): clong {.header:headerFile, importcpp:"#.toLong(@)".} # Public
# 2 default parameters!
proc toULong*(this: QByteArray, ok: ptr bool, base: cint): culong {.header:headerFile, importcpp:"#.toULong(@)".} # Public
proc toULong*(this: QByteArray, ok: ptr bool): culong {.header:headerFile, importcpp:"#.toULong(@)".} # Public
proc toULong*(this: QByteArray): culong {.header:headerFile, importcpp:"#.toULong(@)".} # Public
# 2 default parameters!
proc toLongLong*(this: QByteArray, ok: ptr bool, base: cint): clonglong {.header:headerFile, importcpp:"#.toLongLong(@)".} # Public
proc toLongLong*(this: QByteArray, ok: ptr bool): clonglong {.header:headerFile, importcpp:"#.toLongLong(@)".} # Public
proc toLongLong*(this: QByteArray): clonglong {.header:headerFile, importcpp:"#.toLongLong(@)".} # Public
# 2 default parameters!
proc toULongLong*(this: QByteArray, ok: ptr bool, base: cint): culonglong {.header:headerFile, importcpp:"#.toULongLong(@)".} # Public
proc toULongLong*(this: QByteArray, ok: ptr bool): culonglong {.header:headerFile, importcpp:"#.toULongLong(@)".} # Public
proc toULongLong*(this: QByteArray): culonglong {.header:headerFile, importcpp:"#.toULongLong(@)".} # Public
# 1 default parameters!
proc toFloat*(this: QByteArray, ok: ptr bool): cfloat {.header:headerFile, importcpp:"#.toFloat(@)".} # Public
proc toFloat*(this: QByteArray): cfloat {.header:headerFile, importcpp:"#.toFloat(@)".} # Public
# 1 default parameters!
proc toDouble*(this: QByteArray, ok: ptr bool): cdouble {.header:headerFile, importcpp:"#.toDouble(@)".} # Public
proc toDouble*(this: QByteArray): cdouble {.header:headerFile, importcpp:"#.toDouble(@)".} # Public
# 1 default parameters!
proc toBase64*(this: QByteArray, options: QFlags[QByteArray_Base64Option]): QByteArray {.header:headerFile, importcpp:"#.toBase64(@)".} # Public
proc toBase64*(this: QByteArray): QByteArray {.header:headerFile, importcpp:"#.toBase64(@)".} # Public
proc toHex*(this: QByteArray, separator: char): QByteArray {.header:headerFile, importcpp:"#.toHex(@)".} # Public
# 2 default parameters!
proc toPercentEncoding*(this: QByteArray, exclude: QByteArray, `include`: QByteArray, percent: char): QByteArray {.header:headerFile, importcpp:"#.toPercentEncoding(@)".} # Public
proc toPercentEncoding*(this: QByteArray, exclude: QByteArray, `include`: QByteArray): QByteArray {.header:headerFile, importcpp:"#.toPercentEncoding(@)".} # Public
proc toPercentEncoding*(this: QByteArray, exclude: QByteArray): QByteArray {.header:headerFile, importcpp:"#.toPercentEncoding(@)".} # Public
proc percentDecoded*(this: QByteArray, percent: char): QByteArray {.header:headerFile, importcpp:"#.percentDecoded(@)".} # Public
# 1 default parameters!
proc setNum*(this: QByteArray, arg_1: cshort, base: cint): QByteArray {.header:headerFile, importcpp:"#.setNum(@)".} # Public
proc setNum*(this: QByteArray, arg_1: cshort): QByteArray {.header:headerFile, importcpp:"#.setNum(@)".} # Public
# 1 default parameters!
proc setNum*(this: QByteArray, arg_1: cushort, base: cint): QByteArray {.header:headerFile, importcpp:"#.setNum(@)".} # Public
proc setNum*(this: QByteArray, arg_1: cushort): QByteArray {.header:headerFile, importcpp:"#.setNum(@)".} # Public
# 1 default parameters!
proc setNum*(this: QByteArray, arg_1: cint, base: cint): QByteArray {.header:headerFile, importcpp:"#.setNum(@)".} # Public
proc setNum*(this: QByteArray, arg_1: cint): QByteArray {.header:headerFile, importcpp:"#.setNum(@)".} # Public
# 1 default parameters!
proc setNum*(this: QByteArray, arg_1: cuint, base: cint): QByteArray {.header:headerFile, importcpp:"#.setNum(@)".} # Public
proc setNum*(this: QByteArray, arg_1: cuint): QByteArray {.header:headerFile, importcpp:"#.setNum(@)".} # Public
# 1 default parameters!
when (not defined(windows)):
    proc setNum*(this: QByteArray, arg_1: clong, base: cint): QByteArray {.header:headerFile, importcpp:"#.setNum(@)".} # Public
when (not defined(windows)):
    proc setNum*(this: QByteArray, arg_1: clong): QByteArray {.header:headerFile, importcpp:"#.setNum(@)".} # Public
# 1 default parameters!
when (not defined(windows)):
    proc setNum*(this: QByteArray, arg_1: culong, base: cint): QByteArray {.header:headerFile, importcpp:"#.setNum(@)".} # Public
when (not defined(windows)):
    proc setNum*(this: QByteArray, arg_1: culong): QByteArray {.header:headerFile, importcpp:"#.setNum(@)".} # Public
# 1 default parameters!
proc setNum*(this: QByteArray, arg_1: clonglong, base: cint): QByteArray {.header:headerFile, importcpp:"#.setNum(@)".} # Public
proc setNum*(this: QByteArray, arg_1: clonglong): QByteArray {.header:headerFile, importcpp:"#.setNum(@)".} # Public
# 1 default parameters!
proc setNum*(this: QByteArray, arg_1: culonglong, base: cint): QByteArray {.header:headerFile, importcpp:"#.setNum(@)".} # Public
proc setNum*(this: QByteArray, arg_1: culonglong): QByteArray {.header:headerFile, importcpp:"#.setNum(@)".} # Public
# 1 default parameters!
proc setNum*(this: QByteArray, arg_1: cfloat, format: char, precision: cint): QByteArray {.header:headerFile, importcpp:"#.setNum(@)".} # Public
proc setNum*(this: QByteArray, arg_1: cfloat, format: char): QByteArray {.header:headerFile, importcpp:"#.setNum(@)".} # Public
# 1 default parameters!
proc setNum*(this: QByteArray, arg_1: cdouble, format: char, precision: cint): QByteArray {.header:headerFile, importcpp:"#.setNum(@)".} # Public
proc setNum*(this: QByteArray, arg_1: cdouble, format: char): QByteArray {.header:headerFile, importcpp:"#.setNum(@)".} # Public
# 1 default parameters!
proc static_QByteArray_number*(arg_1: cint, base: cint): QByteArray {.header:headerFile, importcpp:"QByteArray::number(@)".} # Public static
proc static_QByteArray_number*(arg_1: cint): QByteArray {.header:headerFile, importcpp:"QByteArray::number(@)".} # Public static
# 1 default parameters!
proc static_QByteArray_number*(arg_1: cuint, base: cint): QByteArray {.header:headerFile, importcpp:"QByteArray::number(@)".} # Public static
proc static_QByteArray_number*(arg_1: cuint): QByteArray {.header:headerFile, importcpp:"QByteArray::number(@)".} # Public static
# 1 default parameters!
when (not defined(windows)):
    proc static_QByteArray_number*(arg_1: clong, base: cint): QByteArray {.header:headerFile, importcpp:"QByteArray::number(@)".} # Public static
when (not defined(windows)):
    proc static_QByteArray_number*(arg_1: clong): QByteArray {.header:headerFile, importcpp:"QByteArray::number(@)".} # Public static
# 1 default parameters!
when (not defined(windows)):
    proc static_QByteArray_number*(arg_1: culong, base: cint): QByteArray {.header:headerFile, importcpp:"QByteArray::number(@)".} # Public static
when (not defined(windows)):
    proc static_QByteArray_number*(arg_1: culong): QByteArray {.header:headerFile, importcpp:"QByteArray::number(@)".} # Public static
# 1 default parameters!
proc static_QByteArray_number*(arg_1: clonglong, base: cint): QByteArray {.header:headerFile, importcpp:"QByteArray::number(@)".} # Public static
proc static_QByteArray_number*(arg_1: clonglong): QByteArray {.header:headerFile, importcpp:"QByteArray::number(@)".} # Public static
# 1 default parameters!
proc static_QByteArray_number*(arg_1: culonglong, base: cint): QByteArray {.header:headerFile, importcpp:"QByteArray::number(@)".} # Public static
proc static_QByteArray_number*(arg_1: culonglong): QByteArray {.header:headerFile, importcpp:"QByteArray::number(@)".} # Public static
# 1 default parameters!
proc static_QByteArray_number*(arg_1: cdouble, format: char, precision: cint): QByteArray {.header:headerFile, importcpp:"QByteArray::number(@)".} # Public static
proc static_QByteArray_number*(arg_1: cdouble, format: char): QByteArray {.header:headerFile, importcpp:"QByteArray::number(@)".} # Public static
# 1 default parameters!
proc static_QByteArray_fromBase64*(base64: QByteArray, options: QFlags[QByteArray_Base64Option]): QByteArray {.header:headerFile, importcpp:"QByteArray::fromBase64(@)".} # Public static
proc static_QByteArray_fromBase64*(base64: QByteArray): QByteArray {.header:headerFile, importcpp:"QByteArray::fromBase64(@)".} # Public static
proc static_QByteArray_fromHex*(hexEncoded: QByteArray): QByteArray {.header:headerFile, importcpp:"QByteArray::fromHex(@)".} # Public static
proc static_QByteArray_fromPercentEncoding*(pctEncoded: QByteArray, percent: char): QByteArray {.header:headerFile, importcpp:"QByteArray::fromPercentEncoding(@)".} # Public static
proc push_back*(this: QByteArray, c: char) {.header:headerFile, importcpp:"#.push_back(@)".} # Public
proc push_back*(this: QByteArray, s: ptr char) {.header:headerFile, importcpp:"#.push_back(@)".} # Public
proc push_back*(this: QByteArray, a: QByteArray) {.header:headerFile, importcpp:"#.push_back(@)".} # Public
proc push_back*(this: QByteArray, a: QByteArrayView) {.header:headerFile, importcpp:"#.push_back(@)".} # Public
proc push_front*(this: QByteArray, c: char) {.header:headerFile, importcpp:"#.push_front(@)".} # Public
proc push_front*(this: QByteArray, c: ptr char) {.header:headerFile, importcpp:"#.push_front(@)".} # Public
proc push_front*(this: QByteArray, a: QByteArray) {.header:headerFile, importcpp:"#.push_front(@)".} # Public
proc push_front*(this: QByteArray, a: QByteArrayView) {.header:headerFile, importcpp:"#.push_front(@)".} # Public
proc shrink_to_fit*(this: QByteArray) {.header:headerFile, importcpp:"#.shrink_to_fit(@)".} # Public
proc size*(this: QByteArray): cint {.header:headerFile, importcpp:"#.size(@)".} # Public
proc length*(this: QByteArray): cint {.header:headerFile, importcpp:"#.length(@)".} # Public
proc isNull*(this: QByteArray): bool {.header:headerFile, importcpp:"#.isNull(@)".} # Public

export qbytearrayview
export qnamespace
export qlist
export qflags

# Additional code for qtcore/qbytearray
func newQByteArray*(xs: seq[char]): QbyteArray = (if xs.len>0: newQByteArray(xs[0].unsafeAddr, xs.len.cint) else: newQByteArray())
func len*(list: QByteArray): int = list.size
iterator items*(list: QByteArray): char =
    for i in 0..<list.len: yield list.at(i.cint)
