const headerFile* = "QtCore/qbytearrayview.h"

type
    # Classes found in the C++ code
    QByteArrayView* {.header:headerFile,importcpp:"QByteArrayView" ,pure,inheritable.} = object


type
    # typedefs found in the C++ code
    QByteArrayView_storage_type * = char
    QByteArrayView_value_type * = char
    QByteArrayView_reference * = char
    QByteArrayView_const_reference * = char
    QByteArrayView_pointer * = ptr char
    QByteArrayView_const_pointer * = ptr char

# Stuff for class QByteArrayView

# Public constructors for QByteArrayView
proc newQByteArrayView*(): QByteArrayView {. header:headerFile, importcpp:"QByteArrayView(@)", constructor .} #
import nimqt/qtcore/qbytearray
proc newQByteArrayView*(data: QByteArray): QByteArrayView {. header:headerFile, importcpp:"QByteArrayView(@)", constructor .} #

# Public methods for QByteArrayView
proc toByteArray*(this: QByteArrayView): QByteArray {.header:headerFile, importcpp:"#.toByteArray(@)".} # Public
proc size*(this: QByteArrayView): cint {.header:headerFile, importcpp:"#.size(@)".} # Public
proc data*(this: QByteArrayView): ptr char {.header:headerFile, importcpp:"#.data(@)".} # Public
proc `[]`*(this: QByteArrayView, n: cint): char {.header:headerFile, importcpp:"#.operator[](@)".} # Public
proc at*(this: QByteArrayView, n: cint): char {.header:headerFile, importcpp:"#.at(@)".} # Public
proc first*(this: QByteArrayView, n: cint): QByteArrayView {.header:headerFile, importcpp:"#.first(@)".} # Public
proc last*(this: QByteArrayView, n: cint): QByteArrayView {.header:headerFile, importcpp:"#.last(@)".} # Public
proc sliced*(this: QByteArrayView, pos: cint): QByteArrayView {.header:headerFile, importcpp:"#.sliced(@)".} # Public
proc sliced*(this: QByteArrayView, pos: cint, n: cint): QByteArrayView {.header:headerFile, importcpp:"#.sliced(@)".} # Public
proc chopped*(this: QByteArrayView, len: cint): QByteArrayView {.header:headerFile, importcpp:"#.chopped(@)".} # Public
proc truncate*(this: QByteArrayView, n: cint) {.header:headerFile, importcpp:"#.truncate(@)".} # Public
proc chop*(this: QByteArrayView, n: cint) {.header:headerFile, importcpp:"#.chop(@)".} # Public
proc trimmed*(this: QByteArrayView): QByteArrayView {.header:headerFile, importcpp:"#.trimmed(@)".} # Public
# 2 default parameters!
proc toShort*(this: QByteArrayView, ok: ptr bool, base: cint): cshort {.header:headerFile, importcpp:"#.toShort(@)".} # Public
proc toShort*(this: QByteArrayView, ok: ptr bool): cshort {.header:headerFile, importcpp:"#.toShort(@)".} # Public
proc toShort*(this: QByteArrayView): cshort {.header:headerFile, importcpp:"#.toShort(@)".} # Public
# 2 default parameters!
proc toUShort*(this: QByteArrayView, ok: ptr bool, base: cint): cushort {.header:headerFile, importcpp:"#.toUShort(@)".} # Public
proc toUShort*(this: QByteArrayView, ok: ptr bool): cushort {.header:headerFile, importcpp:"#.toUShort(@)".} # Public
proc toUShort*(this: QByteArrayView): cushort {.header:headerFile, importcpp:"#.toUShort(@)".} # Public
# 2 default parameters!
proc toInt*(this: QByteArrayView, ok: ptr bool, base: cint): cint {.header:headerFile, importcpp:"#.toInt(@)".} # Public
proc toInt*(this: QByteArrayView, ok: ptr bool): cint {.header:headerFile, importcpp:"#.toInt(@)".} # Public
proc toInt*(this: QByteArrayView): cint {.header:headerFile, importcpp:"#.toInt(@)".} # Public
# 2 default parameters!
proc toUInt*(this: QByteArrayView, ok: ptr bool, base: cint): cuint {.header:headerFile, importcpp:"#.toUInt(@)".} # Public
proc toUInt*(this: QByteArrayView, ok: ptr bool): cuint {.header:headerFile, importcpp:"#.toUInt(@)".} # Public
proc toUInt*(this: QByteArrayView): cuint {.header:headerFile, importcpp:"#.toUInt(@)".} # Public
# 2 default parameters!
proc toLong*(this: QByteArrayView, ok: ptr bool, base: cint): clong {.header:headerFile, importcpp:"#.toLong(@)".} # Public
proc toLong*(this: QByteArrayView, ok: ptr bool): clong {.header:headerFile, importcpp:"#.toLong(@)".} # Public
proc toLong*(this: QByteArrayView): clong {.header:headerFile, importcpp:"#.toLong(@)".} # Public
# 2 default parameters!
proc toULong*(this: QByteArrayView, ok: ptr bool, base: cint): culong {.header:headerFile, importcpp:"#.toULong(@)".} # Public
proc toULong*(this: QByteArrayView, ok: ptr bool): culong {.header:headerFile, importcpp:"#.toULong(@)".} # Public
proc toULong*(this: QByteArrayView): culong {.header:headerFile, importcpp:"#.toULong(@)".} # Public
# 2 default parameters!
proc toLongLong*(this: QByteArrayView, ok: ptr bool, base: cint): clonglong {.header:headerFile, importcpp:"#.toLongLong(@)".} # Public
proc toLongLong*(this: QByteArrayView, ok: ptr bool): clonglong {.header:headerFile, importcpp:"#.toLongLong(@)".} # Public
proc toLongLong*(this: QByteArrayView): clonglong {.header:headerFile, importcpp:"#.toLongLong(@)".} # Public
# 2 default parameters!
proc toULongLong*(this: QByteArrayView, ok: ptr bool, base: cint): culonglong {.header:headerFile, importcpp:"#.toULongLong(@)".} # Public
proc toULongLong*(this: QByteArrayView, ok: ptr bool): culonglong {.header:headerFile, importcpp:"#.toULongLong(@)".} # Public
proc toULongLong*(this: QByteArrayView): culonglong {.header:headerFile, importcpp:"#.toULongLong(@)".} # Public
# 1 default parameters!
proc toFloat*(this: QByteArrayView, ok: ptr bool): cfloat {.header:headerFile, importcpp:"#.toFloat(@)".} # Public
proc toFloat*(this: QByteArrayView): cfloat {.header:headerFile, importcpp:"#.toFloat(@)".} # Public
# 1 default parameters!
proc toDouble*(this: QByteArrayView, ok: ptr bool): cdouble {.header:headerFile, importcpp:"#.toDouble(@)".} # Public
proc toDouble*(this: QByteArrayView): cdouble {.header:headerFile, importcpp:"#.toDouble(@)".} # Public
proc startsWith*(this: QByteArrayView, other: QByteArrayView): bool {.header:headerFile, importcpp:"#.startsWith(@)".} # Public
proc startsWith*(this: QByteArrayView, c: char): bool {.header:headerFile, importcpp:"#.startsWith(@)".} # Public
proc endsWith*(this: QByteArrayView, other: QByteArrayView): bool {.header:headerFile, importcpp:"#.endsWith(@)".} # Public
proc endsWith*(this: QByteArrayView, c: char): bool {.header:headerFile, importcpp:"#.endsWith(@)".} # Public
proc indexOf*(this: QByteArrayView): cint {.header:headerFile, importcpp:"#.indexOf(@)".} # Public
proc contains*(this: QByteArrayView, a: QByteArrayView): bool {.header:headerFile, importcpp:"#.contains(@)".} # Public
proc contains*(this: QByteArrayView, c: char): bool {.header:headerFile, importcpp:"#.contains(@)".} # Public
proc lastIndexOf*(this: QByteArrayView): cint {.header:headerFile, importcpp:"#.lastIndexOf(@)".} # Public
proc count*(this: QByteArrayView): cint {.header:headerFile, importcpp:"#.count(@)".} # Public
import nimqt/qtcore/qnamespace
proc compare*(this: QByteArrayView, a: QByteArrayView, cs: Qt_CaseSensitivity): cint {.header:headerFile, importcpp:"#.compare(@)".} # Public
proc isValidUtf8*(this: QByteArrayView): bool {.header:headerFile, importcpp:"#.isValidUtf8(@)".} # Public
proc empty*(this: QByteArrayView): bool {.header:headerFile, importcpp:"#.empty(@)".} # Public
proc front*(this: QByteArrayView): char {.header:headerFile, importcpp:"#.front(@)".} # Public
proc back*(this: QByteArrayView): char {.header:headerFile, importcpp:"#.back(@)".} # Public
proc isNull*(this: QByteArrayView): bool {.header:headerFile, importcpp:"#.isNull(@)".} # Public
proc isEmpty*(this: QByteArrayView): bool {.header:headerFile, importcpp:"#.isEmpty(@)".} # Public
proc length*(this: QByteArrayView): cint {.header:headerFile, importcpp:"#.length(@)".} # Public
proc first*(this: QByteArrayView): char {.header:headerFile, importcpp:"#.first(@)".} # Public
proc last*(this: QByteArrayView): char {.header:headerFile, importcpp:"#.last(@)".} # Public

export qnamespace
export qbytearray
