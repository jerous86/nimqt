const headerFile* = "QtCore/qtextstream.h"

type
    # Enums found in the C++ code
    # Global
    QTextStream_RealNumberNotation* {.header:headerFile,importcpp:"QTextStream::RealNumberNotation".} = enum SmartNotation = 0, FixedNotation = 0x1, ScientificNotation = 0x2
    QTextStream_FieldAlignment* {.header:headerFile,importcpp:"QTextStream::FieldAlignment".} = enum AlignLeft = 0, AlignRight = 0x1, AlignCenter = 0x2, AlignAccountingStyle = 0x3
    QTextStream_Status* {.header:headerFile,importcpp:"QTextStream::Status".} = enum Ok = 0, ReadPastEnd = 0x1, ReadCorruptData = 0x2, WriteFailed = 0x3
    QTextStream_NumberFlag* {.header:headerFile,importcpp:"QTextStream::NumberFlag".} = enum ShowBase = 0x1, ForcePoint = 0x2, ForceSign = 0x4, UppercaseBase = 0x8, 
        UppercaseDigits = 0x10

import nimqt/qtcore/qiodevicebase
type
    # Classes found in the C++ code
    QTextStream* {.header:headerFile,importcpp:"QTextStream" ,pure.} = object of QIODeviceBase
import nimqt/qtcore/qflags


type
    # typedefs found in the C++ code
    QTextStream_OpenModeFlag * = QIODeviceBase_OpenModeFlag
    QTextStream_OpenMode * = QIODeviceBase_OpenMode
    QTextStream_NumberFlags * = QFlags[QTextStream_NumberFlag]

# Stuff for class QTextStream

# Public constructors for QTextStream
proc newQTextStream*(): ptr QTextStream {. header:headerFile, importcpp:"new QTextStream(@)" .} #
import nimqt/qtcore/qiodevice
proc newQTextStream*(device: ptr QIODevice): ptr QTextStream {. header:headerFile, importcpp:"new QTextStream(@)" .} #
# 1 default parameters!
proc newQTextStream*(fileHandle: ptr FILE, openMode: QIODeviceBase_OpenMode): ptr QTextStream {. header:headerFile, importcpp:"new QTextStream(@)" .} #
proc newQTextStream*(fileHandle: ptr FILE): ptr QTextStream {. header:headerFile, importcpp:"new QTextStream(@)" .} #
import nimqt/qtcore/qstring
# 1 default parameters!
proc newQTextStream*(string: ptr QString, openMode: QIODeviceBase_OpenMode): ptr QTextStream {. header:headerFile, importcpp:"new QTextStream(@)" .} #
proc newQTextStream*(string: ptr QString): ptr QTextStream {. header:headerFile, importcpp:"new QTextStream(@)" .} #
import nimqt/qtcore/qbytearray
# 1 default parameters!
proc newQTextStream*(array: ptr QByteArray, openMode: QIODeviceBase_OpenMode): ptr QTextStream {. header:headerFile, importcpp:"new QTextStream(@)" .} #
proc newQTextStream*(array: ptr QByteArray): ptr QTextStream {. header:headerFile, importcpp:"new QTextStream(@)" .} #
# 1 default parameters!
proc newQTextStream*(array: QByteArray, openMode: QIODeviceBase_OpenMode): ptr QTextStream {. header:headerFile, importcpp:"new QTextStream(@)" .} #
proc newQTextStream*(array: QByteArray): ptr QTextStream {. header:headerFile, importcpp:"new QTextStream(@)" .} #

# Public methods for QTextStream
proc setAutoDetectUnicode*(this: ptr QTextStream, enabled: bool) {.header:headerFile, importcpp:"#.setAutoDetectUnicode(@)".} # Public
proc autoDetectUnicode*(this: ptr QTextStream): bool {.header:headerFile, importcpp:"#.autoDetectUnicode(@)".} # Public
proc setGenerateByteOrderMark*(this: ptr QTextStream, generate: bool) {.header:headerFile, importcpp:"#.setGenerateByteOrderMark(@)".} # Public
proc generateByteOrderMark*(this: ptr QTextStream): bool {.header:headerFile, importcpp:"#.generateByteOrderMark(@)".} # Public
import nimqt/qtcore/qlocale
proc setLocale*(this: ptr QTextStream, locale: QLocale) {.header:headerFile, importcpp:"#.setLocale(@)".} # Public
proc locale*(this: ptr QTextStream): QLocale {.header:headerFile, importcpp:"#.locale(@)".} # Public
proc setDevice*(this: ptr QTextStream, device: ptr QIODevice) {.header:headerFile, importcpp:"#.setDevice(@)".} # Public
proc device*(this: ptr QTextStream): ptr QIODevice {.header:headerFile, importcpp:"#.device(@)".} # Public
# 1 default parameters!
proc setString*(this: ptr QTextStream, string: ptr QString, openMode: QIODeviceBase_OpenMode) {.header:headerFile, importcpp:"#.setString(@)".} # Public
proc setString*(this: ptr QTextStream, string: ptr QString) {.header:headerFile, importcpp:"#.setString(@)".} # Public
proc string*(this: ptr QTextStream): ptr QString {.header:headerFile, importcpp:"#.string(@)".} # Public
proc status*(this: ptr QTextStream): QTextStream_Status {.header:headerFile, importcpp:"#.status(@)".} # Public
proc setStatus*(this: ptr QTextStream, status: QTextStream_Status) {.header:headerFile, importcpp:"#.setStatus(@)".} # Public
proc resetStatus*(this: ptr QTextStream) {.header:headerFile, importcpp:"#.resetStatus(@)".} # Public
proc atEnd*(this: ptr QTextStream): bool {.header:headerFile, importcpp:"#.atEnd(@)".} # Public
proc reset*(this: ptr QTextStream) {.header:headerFile, importcpp:"#.reset(@)".} # Public
proc flush*(this: ptr QTextStream) {.header:headerFile, importcpp:"#.flush(@)".} # Public
proc seek*(this: ptr QTextStream, pos: clonglong): bool {.header:headerFile, importcpp:"#.seek(@)".} # Public
proc pos*(this: ptr QTextStream): clonglong {.header:headerFile, importcpp:"#.pos(@)".} # Public
proc skipWhiteSpace*(this: ptr QTextStream) {.header:headerFile, importcpp:"#.skipWhiteSpace(@)".} # Public
# 1 default parameters!
proc readLine*(this: ptr QTextStream, maxlen: clonglong): QString {.header:headerFile, importcpp:"#.readLine(@)".} # Public
proc readLine*(this: ptr QTextStream): QString {.header:headerFile, importcpp:"#.readLine(@)".} # Public
# 1 default parameters!
proc readLineInto*(this: ptr QTextStream, line: ptr QString, maxlen: clonglong): bool {.header:headerFile, importcpp:"#.readLineInto(@)".} # Public
proc readLineInto*(this: ptr QTextStream, line: ptr QString): bool {.header:headerFile, importcpp:"#.readLineInto(@)".} # Public
proc readAll*(this: ptr QTextStream): QString {.header:headerFile, importcpp:"#.readAll(@)".} # Public
proc read*(this: ptr QTextStream, maxlen: clonglong): QString {.header:headerFile, importcpp:"#.read(@)".} # Public
proc setFieldAlignment*(this: ptr QTextStream, alignment: QTextStream_FieldAlignment) {.header:headerFile, importcpp:"#.setFieldAlignment(@)".} # Public
proc fieldAlignment*(this: ptr QTextStream): QTextStream_FieldAlignment {.header:headerFile, importcpp:"#.fieldAlignment(@)".} # Public
import nimqt/qtcore/qchar
proc setPadChar*(this: ptr QTextStream, ch: QChar) {.header:headerFile, importcpp:"#.setPadChar(@)".} # Public
proc padChar*(this: ptr QTextStream): QChar {.header:headerFile, importcpp:"#.padChar(@)".} # Public
proc setFieldWidth*(this: ptr QTextStream, width: cint) {.header:headerFile, importcpp:"#.setFieldWidth(@)".} # Public
proc fieldWidth*(this: ptr QTextStream): cint {.header:headerFile, importcpp:"#.fieldWidth(@)".} # Public
proc setNumberFlags*(this: ptr QTextStream, flags: QFlags[QTextStream_NumberFlag]) {.header:headerFile, importcpp:"#.setNumberFlags(@)".} # Public
proc numberFlags*(this: ptr QTextStream): QFlags[QTextStream_NumberFlag] {.header:headerFile, importcpp:"#.numberFlags(@)".} # Public
proc setIntegerBase*(this: ptr QTextStream, base: cint) {.header:headerFile, importcpp:"#.setIntegerBase(@)".} # Public
proc integerBase*(this: ptr QTextStream): cint {.header:headerFile, importcpp:"#.integerBase(@)".} # Public
proc setRealNumberNotation*(this: ptr QTextStream, notation: QTextStream_RealNumberNotation) {.header:headerFile, importcpp:"#.setRealNumberNotation(@)".} # Public
proc realNumberNotation*(this: ptr QTextStream): QTextStream_RealNumberNotation {.header:headerFile, importcpp:"#.realNumberNotation(@)".} # Public
proc setRealNumberPrecision*(this: ptr QTextStream, precision: cint) {.header:headerFile, importcpp:"#.setRealNumberPrecision(@)".} # Public
proc realNumberPrecision*(this: ptr QTextStream): cint {.header:headerFile, importcpp:"#.realNumberPrecision(@)".} # Public
proc `>>`*(this: ptr QTextStream, ch: QChar): QTextStream {.header:headerFile, importcpp:"#.operator>>(@)".} # Public
proc `>>`*(this: ptr QTextStream, ch: char): QTextStream {.header:headerFile, importcpp:"#.operator>>(@)".} # Public
proc `>>`*(this: ptr QTextStream, ch: cushort): QTextStream {.header:headerFile, importcpp:"#.operator>>(@)".} # Public
proc `>>`*(this: ptr QTextStream, i: cshort): QTextStream {.header:headerFile, importcpp:"#.operator>>(@)".} # Public
proc `>>`*(this: ptr QTextStream, i: cushort): QTextStream {.header:headerFile, importcpp:"#.operator>>(@)".} # Public
proc `>>`*(this: ptr QTextStream, i: cint): QTextStream {.header:headerFile, importcpp:"#.operator>>(@)".} # Public
proc `>>`*(this: ptr QTextStream, i: cuint): QTextStream {.header:headerFile, importcpp:"#.operator>>(@)".} # Public
when (not defined(windows)):
    proc `>>`*(this: ptr QTextStream, i: clong): QTextStream {.header:headerFile, importcpp:"#.operator>>(@)".} # Public
when (not defined(windows)):
    proc `>>`*(this: ptr QTextStream, i: culong): QTextStream {.header:headerFile, importcpp:"#.operator>>(@)".} # Public
proc `>>`*(this: ptr QTextStream, i: clonglong): QTextStream {.header:headerFile, importcpp:"#.operator>>(@)".} # Public
proc `>>`*(this: ptr QTextStream, i: culonglong): QTextStream {.header:headerFile, importcpp:"#.operator>>(@)".} # Public
proc `>>`*(this: ptr QTextStream, f: cfloat): QTextStream {.header:headerFile, importcpp:"#.operator>>(@)".} # Public
proc `>>`*(this: ptr QTextStream, f: cdouble): QTextStream {.header:headerFile, importcpp:"#.operator>>(@)".} # Public
proc `>>`*(this: ptr QTextStream, s: QString): QTextStream {.header:headerFile, importcpp:"#.operator>>(@)".} # Public
proc `>>`*(this: ptr QTextStream, array: QByteArray): QTextStream {.header:headerFile, importcpp:"#.operator>>(@)".} # Public
proc `>>`*(this: ptr QTextStream, c: ptr char): QTextStream {.header:headerFile, importcpp:"#.operator>>(@)".} # Public
proc `<<`*(this: ptr QTextStream, ch: QChar): QTextStream {.header:headerFile, importcpp:"#.operator<<(@)".} # Public
proc `<<`*(this: ptr QTextStream, ch: char): QTextStream {.header:headerFile, importcpp:"#.operator<<(@)".} # Public
proc `<<`*(this: ptr QTextStream, ch: cushort): QTextStream {.header:headerFile, importcpp:"#.operator<<(@)".} # Public
proc `<<`*(this: ptr QTextStream, i: cshort): QTextStream {.header:headerFile, importcpp:"#.operator<<(@)".} # Public
proc `<<`*(this: ptr QTextStream, i: cushort): QTextStream {.header:headerFile, importcpp:"#.operator<<(@)".} # Public
proc `<<`*(this: ptr QTextStream, i: cint): QTextStream {.header:headerFile, importcpp:"#.operator<<(@)".} # Public
proc `<<`*(this: ptr QTextStream, i: cuint): QTextStream {.header:headerFile, importcpp:"#.operator<<(@)".} # Public
when (not defined(windows)):
    proc `<<`*(this: ptr QTextStream, i: clong): QTextStream {.header:headerFile, importcpp:"#.operator<<(@)".} # Public
when (not defined(windows)):
    proc `<<`*(this: ptr QTextStream, i: culong): QTextStream {.header:headerFile, importcpp:"#.operator<<(@)".} # Public
proc `<<`*(this: ptr QTextStream, i: clonglong): QTextStream {.header:headerFile, importcpp:"#.operator<<(@)".} # Public
proc `<<`*(this: ptr QTextStream, i: culonglong): QTextStream {.header:headerFile, importcpp:"#.operator<<(@)".} # Public
proc `<<`*(this: ptr QTextStream, f: cfloat): QTextStream {.header:headerFile, importcpp:"#.operator<<(@)".} # Public
proc `<<`*(this: ptr QTextStream, f: cdouble): QTextStream {.header:headerFile, importcpp:"#.operator<<(@)".} # Public
proc `<<`*(this: ptr QTextStream, s: QString): QTextStream {.header:headerFile, importcpp:"#.operator<<(@)".} # Public
proc `<<`*(this: ptr QTextStream, array: QByteArray): QTextStream {.header:headerFile, importcpp:"#.operator<<(@)".} # Public
proc `<<`*(this: ptr QTextStream, c: ptr char): QTextStream {.header:headerFile, importcpp:"#.operator<<(@)".} # Public
proc `<<`*(this: ptr QTextStream, `ptr`: ptr): QTextStream {.header:headerFile, importcpp:"#.operator<<(@)".} # Public

export qstring
export qlocale
export qiodevicebase
export qbytearray
export qchar
export qflags
export qiodevice
