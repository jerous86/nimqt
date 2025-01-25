const headerFile* = "QtCore/qstring.h"

type
    # Enums found in the C++ code
    # Global
    QString_SectionFlag* {.header:headerFile,importcpp:"QString::SectionFlag".} = enum SectionDefault = 0, SectionSkipEmpty = 0x1, SectionIncludeLeadingSep = 0x2, SectionIncludeTrailingSep = 0x4, 
        SectionCaseInsensitiveSeps = 0x8
    QString_NormalizationForm* {.header:headerFile,importcpp:"QString::NormalizationForm".} = enum NormalizationForm_D = 0, NormalizationForm_C = 0x1, NormalizationForm_KD = 0x2, NormalizationForm_KC = 0x3

type
    # Classes found in the C++ code
    QLatin1String* {.header:headerFile,importcpp:"QLatin1String" ,pure,inheritable.} = object
    QString* {.header:headerFile,importcpp:"QString" .} = object
import nimqt/qtcore/qflags
import nimqt/qtcore/qchar


type
    # typedefs found in the C++ code
    QLatin1String_value_type * = char
    QLatin1String_reference * = char
    QLatin1String_const_reference * = char
    QString_SectionFlags * = QFlags[QString_SectionFlag]
    QString_const_reference * = QChar
    QString_reference * = QChar
    QString_pointer * = ptr QChar
    QString_const_pointer * = ptr QChar
    QString_value_type * = QChar

# Stuff for class QLatin1String

# Public constructors for QLatin1String
proc newQLatin1String*(): QLatin1String {. header:headerFile, importcpp:"QLatin1String(@)", constructor .} #
proc newQLatin1String*(s: ptr char): QLatin1String {. header:headerFile, importcpp:"QLatin1String(@)", constructor .} #
proc newQLatin1String*(f: ptr char, l: ptr char): QLatin1String {. header:headerFile, importcpp:"QLatin1String(@)", constructor .} #
proc newQLatin1String*(s: ptr char, sz: cint): QLatin1String {. header:headerFile, importcpp:"QLatin1String(@)", constructor .} #
import nimqt/qtcore/qbytearray
proc newQLatin1String*(s: QByteArray): QLatin1String {. header:headerFile, importcpp:"QLatin1String(@)", constructor .} #
import nimqt/qtcore/qbytearrayview
proc newQLatin1String*(s: QByteArrayView): QLatin1String {. header:headerFile, importcpp:"QLatin1String(@)", constructor .} #

# Public methods for QLatin1String
proc toString*(this: QLatin1String): QString {.header:headerFile, importcpp:"#.toString(@)".} # Public
proc latin1*(this: QLatin1String): ptr char {.header:headerFile, importcpp:"#.latin1(@)".} # Public
proc size*(this: QLatin1String): cint {.header:headerFile, importcpp:"#.size(@)".} # Public
proc data*(this: QLatin1String): ptr char {.header:headerFile, importcpp:"#.data(@)".} # Public
proc constData*(this: QLatin1String): ptr char {.header:headerFile, importcpp:"#.constData(@)".} # Public
proc constBegin*(this: QLatin1String): ptr char {.header:headerFile, importcpp:"#.constBegin(@)".} # Public
proc constEnd*(this: QLatin1String): ptr char {.header:headerFile, importcpp:"#.constEnd(@)".} # Public
proc first*(this: QLatin1String): QLatin1Char {.header:headerFile, importcpp:"#.first(@)".} # Public
proc last*(this: QLatin1String): QLatin1Char {.header:headerFile, importcpp:"#.last(@)".} # Public
proc length*(this: QLatin1String): cint {.header:headerFile, importcpp:"#.length(@)".} # Public
proc isNull*(this: QLatin1String): bool {.header:headerFile, importcpp:"#.isNull(@)".} # Public
proc isEmpty*(this: QLatin1String): bool {.header:headerFile, importcpp:"#.isEmpty(@)".} # Public
proc empty*(this: QLatin1String): bool {.header:headerFile, importcpp:"#.empty(@)".} # Public
proc at*(this: QLatin1String, i: cint): QLatin1Char {.header:headerFile, importcpp:"#.at(@)".} # Public
proc `[]`*(this: QLatin1String, i: cint): QLatin1Char {.header:headerFile, importcpp:"#.operator[](@)".} # Public
proc front*(this: QLatin1String): QLatin1Char {.header:headerFile, importcpp:"#.front(@)".} # Public
proc back*(this: QLatin1String): QLatin1Char {.header:headerFile, importcpp:"#.back(@)".} # Public
proc compare*(this: QLatin1String, c: QChar): cint {.header:headerFile, importcpp:"#.compare(@)".} # Public
import nimqt/qtcore/qnamespace
proc compare*(this: QLatin1String, c: QChar, cs: Qt_CaseSensitivity): cint {.header:headerFile, importcpp:"#.compare(@)".} # Public
proc startsWith*(this: QLatin1String, c: QChar): bool {.header:headerFile, importcpp:"#.startsWith(@)".} # Public
proc startsWith*(this: QLatin1String, c: QChar, cs: Qt_CaseSensitivity): bool {.header:headerFile, importcpp:"#.startsWith(@)".} # Public
proc endsWith*(this: QLatin1String, c: QChar): bool {.header:headerFile, importcpp:"#.endsWith(@)".} # Public
proc endsWith*(this: QLatin1String, c: QChar, cs: Qt_CaseSensitivity): bool {.header:headerFile, importcpp:"#.endsWith(@)".} # Public
proc indexOf*(this: QLatin1String): cint {.header:headerFile, importcpp:"#.indexOf(@)".} # Public
proc contains*(this: QLatin1String, c: QChar, cs: Qt_CaseSensitivity): bool {.header:headerFile, importcpp:"#.contains(@)".} # Public
proc lastIndexOf*(this: QLatin1String): cint {.header:headerFile, importcpp:"#.lastIndexOf(@)".} # Public
proc count*(this: QLatin1String): cint {.header:headerFile, importcpp:"#.count(@)".} # Public
# 2 default parameters!
proc toShort*(this: QLatin1String, ok: ptr bool, base: cint): cshort {.header:headerFile, importcpp:"#.toShort(@)".} # Public
proc toShort*(this: QLatin1String, ok: ptr bool): cshort {.header:headerFile, importcpp:"#.toShort(@)".} # Public
proc toShort*(this: QLatin1String): cshort {.header:headerFile, importcpp:"#.toShort(@)".} # Public
# 2 default parameters!
proc toUShort*(this: QLatin1String, ok: ptr bool, base: cint): cushort {.header:headerFile, importcpp:"#.toUShort(@)".} # Public
proc toUShort*(this: QLatin1String, ok: ptr bool): cushort {.header:headerFile, importcpp:"#.toUShort(@)".} # Public
proc toUShort*(this: QLatin1String): cushort {.header:headerFile, importcpp:"#.toUShort(@)".} # Public
# 2 default parameters!
proc toInt*(this: QLatin1String, ok: ptr bool, base: cint): cint {.header:headerFile, importcpp:"#.toInt(@)".} # Public
proc toInt*(this: QLatin1String, ok: ptr bool): cint {.header:headerFile, importcpp:"#.toInt(@)".} # Public
proc toInt*(this: QLatin1String): cint {.header:headerFile, importcpp:"#.toInt(@)".} # Public
# 2 default parameters!
proc toUInt*(this: QLatin1String, ok: ptr bool, base: cint): cuint {.header:headerFile, importcpp:"#.toUInt(@)".} # Public
proc toUInt*(this: QLatin1String, ok: ptr bool): cuint {.header:headerFile, importcpp:"#.toUInt(@)".} # Public
proc toUInt*(this: QLatin1String): cuint {.header:headerFile, importcpp:"#.toUInt(@)".} # Public
# 2 default parameters!
proc toLong*(this: QLatin1String, ok: ptr bool, base: cint): clong {.header:headerFile, importcpp:"#.toLong(@)".} # Public
proc toLong*(this: QLatin1String, ok: ptr bool): clong {.header:headerFile, importcpp:"#.toLong(@)".} # Public
proc toLong*(this: QLatin1String): clong {.header:headerFile, importcpp:"#.toLong(@)".} # Public
# 2 default parameters!
proc toULong*(this: QLatin1String, ok: ptr bool, base: cint): culong {.header:headerFile, importcpp:"#.toULong(@)".} # Public
proc toULong*(this: QLatin1String, ok: ptr bool): culong {.header:headerFile, importcpp:"#.toULong(@)".} # Public
proc toULong*(this: QLatin1String): culong {.header:headerFile, importcpp:"#.toULong(@)".} # Public
# 2 default parameters!
proc toLongLong*(this: QLatin1String, ok: ptr bool, base: cint): clonglong {.header:headerFile, importcpp:"#.toLongLong(@)".} # Public
proc toLongLong*(this: QLatin1String, ok: ptr bool): clonglong {.header:headerFile, importcpp:"#.toLongLong(@)".} # Public
proc toLongLong*(this: QLatin1String): clonglong {.header:headerFile, importcpp:"#.toLongLong(@)".} # Public
# 2 default parameters!
proc toULongLong*(this: QLatin1String, ok: ptr bool, base: cint): culonglong {.header:headerFile, importcpp:"#.toULongLong(@)".} # Public
proc toULongLong*(this: QLatin1String, ok: ptr bool): culonglong {.header:headerFile, importcpp:"#.toULongLong(@)".} # Public
proc toULongLong*(this: QLatin1String): culonglong {.header:headerFile, importcpp:"#.toULongLong(@)".} # Public
# 1 default parameters!
proc toFloat*(this: QLatin1String, ok: ptr bool): cfloat {.header:headerFile, importcpp:"#.toFloat(@)".} # Public
proc toFloat*(this: QLatin1String): cfloat {.header:headerFile, importcpp:"#.toFloat(@)".} # Public
# 1 default parameters!
proc toDouble*(this: QLatin1String, ok: ptr bool): cdouble {.header:headerFile, importcpp:"#.toDouble(@)".} # Public
proc toDouble*(this: QLatin1String): cdouble {.header:headerFile, importcpp:"#.toDouble(@)".} # Public
proc chop*(this: QLatin1String, n: cint) {.header:headerFile, importcpp:"#.chop(@)".} # Public
proc truncate*(this: QLatin1String, n: cint) {.header:headerFile, importcpp:"#.truncate(@)".} # Public
proc `!=`*(this: QLatin1String, s: ptr char): bool {.header:headerFile, importcpp:"#.operator!=(@)".} # Public
proc `<`*(this: QLatin1String, s: ptr char): bool {.header:headerFile, importcpp:"#.operator<(@)".} # Public
proc `>`*(this: QLatin1String, s: ptr char): bool {.header:headerFile, importcpp:"#.operator>(@)".} # Public
proc `<=`*(this: QLatin1String, s: ptr char): bool {.header:headerFile, importcpp:"#.operator<=(@)".} # Public
proc `>=`*(this: QLatin1String, s: ptr char): bool {.header:headerFile, importcpp:"#.operator>=(@)".} # Public
proc `!=`*(this: QLatin1String, s: QByteArray): bool {.header:headerFile, importcpp:"#.operator!=(@)".} # Public
proc `<`*(this: QLatin1String, s: QByteArray): bool {.header:headerFile, importcpp:"#.operator<(@)".} # Public
proc `>`*(this: QLatin1String, s: QByteArray): bool {.header:headerFile, importcpp:"#.operator>(@)".} # Public
proc `<=`*(this: QLatin1String, s: QByteArray): bool {.header:headerFile, importcpp:"#.operator<=(@)".} # Public
proc `>=`*(this: QLatin1String, s: QByteArray): bool {.header:headerFile, importcpp:"#.operator>=(@)".} # Public
# Stuff for class QString

# Public constructors for QString
proc newQString*(): QString {. header:headerFile, importcpp:"QString(@)", constructor .} #
proc newQString*(unicode: ptr QChar, size: cint): QString {. header:headerFile, importcpp:"QString(@)", constructor .} #
proc newQString*(c: QChar): QString {. header:headerFile, importcpp:"QString(@)", constructor .} #
proc newQString*(size: cint, c: QChar): QString {. header:headerFile, importcpp:"QString(@)", constructor .} #
proc newQString*(arg_0: QString): QString {. header:headerFile, importcpp:"QString(@)", constructor .} #
proc newQString*(other: QString): QString {. header:headerFile, importcpp:"QString(@)", constructor .} #
proc newQString*(ch: ptr char): QString {. header:headerFile, importcpp:"QString(@)", constructor .} #
proc newQString*(a: QByteArray): QString {. header:headerFile, importcpp:"QString(@)", constructor .} #
proc newQString*(size: cint, arg_1: Qt_Initialization): QString {. header:headerFile, importcpp:"QString(@)", constructor .} #

# Public methods for QString
proc swap*(this: QString, other: QString) {.header:headerFile, importcpp:"#.swap(@)".} # Public
proc size*(this: QString): cint {.header:headerFile, importcpp:"#.size(@)".} # Public
proc count*(this: QString): cint {.header:headerFile, importcpp:"#.count(@)".} # Public
proc length*(this: QString): cint {.header:headerFile, importcpp:"#.length(@)".} # Public
proc isEmpty*(this: QString): bool {.header:headerFile, importcpp:"#.isEmpty(@)".} # Public
proc resize*(this: QString, size: cint) {.header:headerFile, importcpp:"#.resize(@)".} # Public
proc resize*(this: QString, size: cint, fillChar: QChar) {.header:headerFile, importcpp:"#.resize(@)".} # Public
proc fill*(this: QString, c: QChar, size: cint): QString {.header:headerFile, importcpp:"#.fill(@)".} # Public
proc truncate*(this: QString, pos: cint) {.header:headerFile, importcpp:"#.truncate(@)".} # Public
proc chop*(this: QString, n: cint) {.header:headerFile, importcpp:"#.chop(@)".} # Public
proc capacity*(this: QString): cint {.header:headerFile, importcpp:"#.capacity(@)".} # Public
proc reserve*(this: QString, size: cint) {.header:headerFile, importcpp:"#.reserve(@)".} # Public
proc squeeze*(this: QString) {.header:headerFile, importcpp:"#.squeeze(@)".} # Public
proc unicode*(this: QString): ptr QChar {.header:headerFile, importcpp:"#.unicode(@)".} # Public
proc data*(this: QString): ptr QChar {.header:headerFile, importcpp:"#.data(@)".} # Public
proc constData*(this: QString): ptr QChar {.header:headerFile, importcpp:"#.constData(@)".} # Public
proc detach*(this: QString) {.header:headerFile, importcpp:"#.detach(@)".} # Public
proc isDetached*(this: QString): bool {.header:headerFile, importcpp:"#.isDetached(@)".} # Public
proc isSharedWith*(this: QString, other: QString): bool {.header:headerFile, importcpp:"#.isSharedWith(@)".} # Public
proc clear*(this: QString) {.header:headerFile, importcpp:"#.clear(@)".} # Public
proc at*(this: QString, i: cint): QChar {.header:headerFile, importcpp:"#.at(@)".} # Public
proc `[]`*(this: QString, i: cint): QChar {.header:headerFile, importcpp:"#.operator[](@)".} # Public
proc front*(this: QString): QChar {.header:headerFile, importcpp:"#.front(@)".} # Public
proc back*(this: QString): QChar {.header:headerFile, importcpp:"#.back(@)".} # Public
# 3 default parameters!
proc arg*(this: QString, a: clonglong, fieldwidth: cint, base: cint, fillChar: QChar): QString {.header:headerFile, importcpp:"#.arg(@)".} # Public
proc arg*(this: QString, a: clonglong, fieldwidth: cint, base: cint): QString {.header:headerFile, importcpp:"#.arg(@)".} # Public
proc arg*(this: QString, a: clonglong, fieldwidth: cint): QString {.header:headerFile, importcpp:"#.arg(@)".} # Public
proc arg*(this: QString, a: clonglong): QString {.header:headerFile, importcpp:"#.arg(@)".} # Public
# 3 default parameters!
proc arg*(this: QString, a: culonglong, fieldwidth: cint, base: cint, fillChar: QChar): QString {.header:headerFile, importcpp:"#.arg(@)".} # Public
proc arg*(this: QString, a: culonglong, fieldwidth: cint, base: cint): QString {.header:headerFile, importcpp:"#.arg(@)".} # Public
proc arg*(this: QString, a: culonglong, fieldwidth: cint): QString {.header:headerFile, importcpp:"#.arg(@)".} # Public
proc arg*(this: QString, a: culonglong): QString {.header:headerFile, importcpp:"#.arg(@)".} # Public
# 3 default parameters!
proc arg*(this: QString, a: clong, fieldwidth: cint, base: cint, fillChar: QChar): QString {.header:headerFile, importcpp:"#.arg(@)".} # Public
proc arg*(this: QString, a: clong, fieldwidth: cint, base: cint): QString {.header:headerFile, importcpp:"#.arg(@)".} # Public
proc arg*(this: QString, a: clong, fieldwidth: cint): QString {.header:headerFile, importcpp:"#.arg(@)".} # Public
proc arg*(this: QString, a: clong): QString {.header:headerFile, importcpp:"#.arg(@)".} # Public
# 3 default parameters!
proc arg*(this: QString, a: culong, fieldwidth: cint, base: cint, fillChar: QChar): QString {.header:headerFile, importcpp:"#.arg(@)".} # Public
proc arg*(this: QString, a: culong, fieldwidth: cint, base: cint): QString {.header:headerFile, importcpp:"#.arg(@)".} # Public
proc arg*(this: QString, a: culong, fieldwidth: cint): QString {.header:headerFile, importcpp:"#.arg(@)".} # Public
proc arg*(this: QString, a: culong): QString {.header:headerFile, importcpp:"#.arg(@)".} # Public
# 3 default parameters!
when (not defined(windows)):
    proc arg*(this: QString, a: cint, fieldWidth: cint, base: cint, fillChar: QChar): QString {.header:headerFile, importcpp:"#.arg(@)".} # Public
when (not defined(windows)):
    proc arg*(this: QString, a: cint, fieldWidth: cint, base: cint): QString {.header:headerFile, importcpp:"#.arg(@)".} # Public
when (not defined(windows)):
    proc arg*(this: QString, a: cint, fieldWidth: cint): QString {.header:headerFile, importcpp:"#.arg(@)".} # Public
when (not defined(windows)):
    proc arg*(this: QString, a: cint): QString {.header:headerFile, importcpp:"#.arg(@)".} # Public
# 3 default parameters!
when (not defined(windows)):
    proc arg*(this: QString, a: cuint, fieldWidth: cint, base: cint, fillChar: QChar): QString {.header:headerFile, importcpp:"#.arg(@)".} # Public
when (not defined(windows)):
    proc arg*(this: QString, a: cuint, fieldWidth: cint, base: cint): QString {.header:headerFile, importcpp:"#.arg(@)".} # Public
when (not defined(windows)):
    proc arg*(this: QString, a: cuint, fieldWidth: cint): QString {.header:headerFile, importcpp:"#.arg(@)".} # Public
when (not defined(windows)):
    proc arg*(this: QString, a: cuint): QString {.header:headerFile, importcpp:"#.arg(@)".} # Public
# 3 default parameters!
proc arg*(this: QString, a: cshort, fieldWidth: cint, base: cint, fillChar: QChar): QString {.header:headerFile, importcpp:"#.arg(@)".} # Public
proc arg*(this: QString, a: cshort, fieldWidth: cint, base: cint): QString {.header:headerFile, importcpp:"#.arg(@)".} # Public
proc arg*(this: QString, a: cshort, fieldWidth: cint): QString {.header:headerFile, importcpp:"#.arg(@)".} # Public
proc arg*(this: QString, a: cshort): QString {.header:headerFile, importcpp:"#.arg(@)".} # Public
# 3 default parameters!
proc arg*(this: QString, a: cushort, fieldWidth: cint, base: cint, fillChar: QChar): QString {.header:headerFile, importcpp:"#.arg(@)".} # Public
proc arg*(this: QString, a: cushort, fieldWidth: cint, base: cint): QString {.header:headerFile, importcpp:"#.arg(@)".} # Public
proc arg*(this: QString, a: cushort, fieldWidth: cint): QString {.header:headerFile, importcpp:"#.arg(@)".} # Public
proc arg*(this: QString, a: cushort): QString {.header:headerFile, importcpp:"#.arg(@)".} # Public
# 2 default parameters!
proc arg*(this: QString, a: cdouble, fieldWidth: cint, format: char, precision: cint, fillChar: QChar): QString {.header:headerFile, importcpp:"#.arg(@)".} # Public
proc arg*(this: QString, a: cdouble, fieldWidth: cint, format: char, precision: cint): QString {.header:headerFile, importcpp:"#.arg(@)".} # Public
proc arg*(this: QString, a: cdouble, fieldWidth: cint, format: char): QString {.header:headerFile, importcpp:"#.arg(@)".} # Public
# 2 default parameters!
proc arg*(this: QString, a: char, fieldWidth: cint, fillChar: QChar): QString {.header:headerFile, importcpp:"#.arg(@)".} # Public
proc arg*(this: QString, a: char, fieldWidth: cint): QString {.header:headerFile, importcpp:"#.arg(@)".} # Public
proc arg*(this: QString, a: char): QString {.header:headerFile, importcpp:"#.arg(@)".} # Public
# 2 default parameters!
proc arg*(this: QString, a: QChar, fieldWidth: cint, fillChar: QChar): QString {.header:headerFile, importcpp:"#.arg(@)".} # Public
proc arg*(this: QString, a: QChar, fieldWidth: cint): QString {.header:headerFile, importcpp:"#.arg(@)".} # Public
proc arg*(this: QString, a: QChar): QString {.header:headerFile, importcpp:"#.arg(@)".} # Public
# 2 default parameters!
proc arg*(this: QString, a: QString, fieldWidth: cint, fillChar: QChar): QString {.header:headerFile, importcpp:"#.arg(@)".} # Public
proc arg*(this: QString, a: QString, fieldWidth: cint): QString {.header:headerFile, importcpp:"#.arg(@)".} # Public
proc arg*(this: QString, a: QString): QString {.header:headerFile, importcpp:"#.arg(@)".} # Public
proc static_QString_asprintf*(format: ptr char): QString {.header:headerFile, importcpp:"QString::asprintf(@)".} # Public static
proc indexOf*(this: QString): cint {.header:headerFile, importcpp:"#.indexOf(@)".} # Public
proc lastIndexOf*(this: QString): cint {.header:headerFile, importcpp:"#.lastIndexOf(@)".} # Public
proc contains*(this: QString, c: QChar, cs: Qt_CaseSensitivity): bool {.header:headerFile, importcpp:"#.contains(@)".} # Public
proc contains*(this: QString, s: QString, cs: Qt_CaseSensitivity): bool {.header:headerFile, importcpp:"#.contains(@)".} # Public
import nimqt/qtcore/qregularexpression
# 1 default parameters!
proc contains*(this: QString, re: QRegularExpression, rmatch: ptr QRegularExpressionMatch): bool {.header:headerFile, importcpp:"#.contains(@)".} # Public
proc contains*(this: QString, re: QRegularExpression): bool {.header:headerFile, importcpp:"#.contains(@)".} # Public
# 1 default parameters!
proc section*(this: QString, sep: QChar, start: cint, `end`: cint, flags: QFlags[QString_SectionFlag]): QString {.header:headerFile, importcpp:"#.section(@)".} # Public
proc section*(this: QString, sep: QChar, start: cint, `end`: cint): QString {.header:headerFile, importcpp:"#.section(@)".} # Public
# 1 default parameters!
proc section*(this: QString, in_sep: QString, start: cint, `end`: cint, flags: QFlags[QString_SectionFlag]): QString {.header:headerFile, importcpp:"#.section(@)".} # Public
proc section*(this: QString, in_sep: QString, start: cint, `end`: cint): QString {.header:headerFile, importcpp:"#.section(@)".} # Public
# 1 default parameters!
proc section*(this: QString, re: QRegularExpression, start: cint, `end`: cint, flags: QFlags[QString_SectionFlag]): QString {.header:headerFile, importcpp:"#.section(@)".} # Public
proc section*(this: QString, re: QRegularExpression, start: cint, `end`: cint): QString {.header:headerFile, importcpp:"#.section(@)".} # Public
proc left*(this: QString, n: cint): QString {.header:headerFile, importcpp:"#.left(@)".} # Public
proc right*(this: QString, n: cint): QString {.header:headerFile, importcpp:"#.right(@)".} # Public
proc mid*(this: QString, position: cint, n: cint): QString {.header:headerFile, importcpp:"#.mid(@)".} # Public
proc first*(this: QString, n: cint): QString {.header:headerFile, importcpp:"#.first(@)".} # Public
proc last*(this: QString, n: cint): QString {.header:headerFile, importcpp:"#.last(@)".} # Public
proc sliced*(this: QString, pos: cint): QString {.header:headerFile, importcpp:"#.sliced(@)".} # Public
proc sliced*(this: QString, pos: cint, n: cint): QString {.header:headerFile, importcpp:"#.sliced(@)".} # Public
proc chopped*(this: QString, n: cint): QString {.header:headerFile, importcpp:"#.chopped(@)".} # Public
proc startsWith*(this: QString, s: QString, cs: Qt_CaseSensitivity): bool {.header:headerFile, importcpp:"#.startsWith(@)".} # Public
proc startsWith*(this: QString, c: QChar, cs: Qt_CaseSensitivity): bool {.header:headerFile, importcpp:"#.startsWith(@)".} # Public
proc endsWith*(this: QString, s: QString, cs: Qt_CaseSensitivity): bool {.header:headerFile, importcpp:"#.endsWith(@)".} # Public
proc endsWith*(this: QString, c: QChar, cs: Qt_CaseSensitivity): bool {.header:headerFile, importcpp:"#.endsWith(@)".} # Public
proc isUpper*(this: QString): bool {.header:headerFile, importcpp:"#.isUpper(@)".} # Public
proc isLower*(this: QString): bool {.header:headerFile, importcpp:"#.isLower(@)".} # Public
# 2 default parameters!
proc leftJustified*(this: QString, width: cint, fill: QChar, trunc: bool): QString {.header:headerFile, importcpp:"#.leftJustified(@)".} # Public
proc leftJustified*(this: QString, width: cint, fill: QChar): QString {.header:headerFile, importcpp:"#.leftJustified(@)".} # Public
proc leftJustified*(this: QString, width: cint): QString {.header:headerFile, importcpp:"#.leftJustified(@)".} # Public
# 2 default parameters!
proc rightJustified*(this: QString, width: cint, fill: QChar, trunc: bool): QString {.header:headerFile, importcpp:"#.rightJustified(@)".} # Public
proc rightJustified*(this: QString, width: cint, fill: QChar): QString {.header:headerFile, importcpp:"#.rightJustified(@)".} # Public
proc rightJustified*(this: QString, width: cint): QString {.header:headerFile, importcpp:"#.rightJustified(@)".} # Public
proc toLower*(this: QString): QString {.header:headerFile, importcpp:"#.toLower(@)".} # Public
proc toUpper*(this: QString): QString {.header:headerFile, importcpp:"#.toUpper(@)".} # Public
proc toCaseFolded*(this: QString): QString {.header:headerFile, importcpp:"#.toCaseFolded(@)".} # Public
proc trimmed*(this: QString): QString {.header:headerFile, importcpp:"#.trimmed(@)".} # Public
proc simplified*(this: QString): QString {.header:headerFile, importcpp:"#.simplified(@)".} # Public
proc toHtmlEscaped*(this: QString): QString {.header:headerFile, importcpp:"#.toHtmlEscaped(@)".} # Public
proc insert*(this: QString, i: cint, c: QChar): QString {.header:headerFile, importcpp:"#.insert(@)".} # Public
proc insert*(this: QString, i: cint, uc: ptr QChar, len: cint): QString {.header:headerFile, importcpp:"#.insert(@)".} # Public
proc insert*(this: QString, i: cint, s: QString): QString {.header:headerFile, importcpp:"#.insert(@)".} # Public
proc append*(this: QString, c: QChar): QString {.header:headerFile, importcpp:"#.append(@)".} # Public
proc append*(this: QString, uc: ptr QChar, len: cint): QString {.header:headerFile, importcpp:"#.append(@)".} # Public
proc append*(this: QString, s: QString): QString {.header:headerFile, importcpp:"#.append(@)".} # Public
proc prepend*(this: QString, c: QChar): QString {.header:headerFile, importcpp:"#.prepend(@)".} # Public
proc prepend*(this: QString, uc: ptr QChar, len: cint): QString {.header:headerFile, importcpp:"#.prepend(@)".} # Public
proc prepend*(this: QString, s: QString): QString {.header:headerFile, importcpp:"#.prepend(@)".} # Public
proc `+=`*(this: QString, c: QChar): QString {.header:headerFile, importcpp:"#.operator+=(@)".} # Public
proc `+=`*(this: QString, s: QString): QString {.header:headerFile, importcpp:"#.operator+=(@)".} # Public
proc remove*(this: QString, i: cint, len: cint): QString {.header:headerFile, importcpp:"#.remove(@)".} # Public
proc remove*(this: QString, c: QChar, cs: Qt_CaseSensitivity): QString {.header:headerFile, importcpp:"#.remove(@)".} # Public
proc remove*(this: QString, s: QString, cs: Qt_CaseSensitivity): QString {.header:headerFile, importcpp:"#.remove(@)".} # Public
proc replace*(this: QString, i: cint, len: cint, after: QChar): QString {.header:headerFile, importcpp:"#.replace(@)".} # Public
proc replace*(this: QString, i: cint, len: cint, s: ptr QChar, slen: cint): QString {.header:headerFile, importcpp:"#.replace(@)".} # Public
proc replace*(this: QString, i: cint, len: cint, after: QString): QString {.header:headerFile, importcpp:"#.replace(@)".} # Public
proc replace*(this: QString, before: QChar, after: QChar, cs: Qt_CaseSensitivity): QString {.header:headerFile, importcpp:"#.replace(@)".} # Public
proc replace*(this: QString, before: ptr QChar, blen: cint, after: ptr QChar, alen: cint, cs: Qt_CaseSensitivity): QString {.header:headerFile, importcpp:"#.replace(@)".} # Public
proc replace*(this: QString, before: QString, after: QString, cs: Qt_CaseSensitivity): QString {.header:headerFile, importcpp:"#.replace(@)".} # Public
proc replace*(this: QString, c: QChar, after: QString, cs: Qt_CaseSensitivity): QString {.header:headerFile, importcpp:"#.replace(@)".} # Public
proc replace*(this: QString, re: QRegularExpression, after: QString): QString {.header:headerFile, importcpp:"#.replace(@)".} # Public
proc remove*(this: QString, re: QRegularExpression): QString {.header:headerFile, importcpp:"#.remove(@)".} # Public
proc normalized*(this: QString, mode: QString_NormalizationForm, version: QChar_UnicodeVersion): QString {.header:headerFile, importcpp:"#.normalized(@)".} # Public
proc repeated*(this: QString, times: cint): QString {.header:headerFile, importcpp:"#.repeated(@)".} # Public
proc utf16*(this: QString): ptr cushort {.header:headerFile, importcpp:"#.utf16(@)".} # Public
proc toLatin1*(this: QString): QByteArray {.header:headerFile, importcpp:"#.toLatin1(@)".} # Public
proc toUtf8*(this: QString): QByteArray {.header:headerFile, importcpp:"#.toUtf8(@)".} # Public
proc toLocal8Bit*(this: QString): QByteArray {.header:headerFile, importcpp:"#.toLocal8Bit(@)".} # Public
import nimqt/qtcore/qlist
proc toUcs4*(this: QString): QList[cuint] {.header:headerFile, importcpp:"#.toUcs4(@)".} # Public
proc static_QString_fromLatin1*(ba: QByteArrayView): QString {.header:headerFile, importcpp:"QString::fromLatin1(@)".} # Public static
proc static_QString_fromLatin1*(ba: QByteArray): QString {.header:headerFile, importcpp:"QString::fromLatin1(@)".} # Public static
proc static_QString_fromLatin1*(str: ptr char, size: cint): QString {.header:headerFile, importcpp:"QString::fromLatin1(@)".} # Public static
proc static_QString_fromUtf8*(utf8: QByteArrayView): QString {.header:headerFile, importcpp:"QString::fromUtf8(@)".} # Public static
proc static_QString_fromUtf8*(ba: QByteArray): QString {.header:headerFile, importcpp:"QString::fromUtf8(@)".} # Public static
proc static_QString_fromUtf8*(utf8: ptr char, size: cint): QString {.header:headerFile, importcpp:"QString::fromUtf8(@)".} # Public static
proc static_QString_fromLocal8Bit*(ba: QByteArrayView): QString {.header:headerFile, importcpp:"QString::fromLocal8Bit(@)".} # Public static
proc static_QString_fromLocal8Bit*(ba: QByteArray): QString {.header:headerFile, importcpp:"QString::fromLocal8Bit(@)".} # Public static
proc static_QString_fromLocal8Bit*(str: ptr char, size: cint): QString {.header:headerFile, importcpp:"QString::fromLocal8Bit(@)".} # Public static
proc static_QString_fromUtf16*(arg_1: ptr cushort, size: cint): QString {.header:headerFile, importcpp:"QString::fromUtf16(@)".} # Public static
proc static_QString_fromRawData*(arg_1: ptr QChar, size: cint): QString {.header:headerFile, importcpp:"QString::fromRawData(@)".} # Public static
proc static_QString_fromUtf16*(str: ptr cushort, size: cint): QString {.header:headerFile, importcpp:"QString::fromUtf16(@)".} # Public static
proc setRawData*(this: QString, unicode: ptr QChar, size: cint): QString {.header:headerFile, importcpp:"#.setRawData(@)".} # Public
proc setUnicode*(this: QString, unicode: ptr QChar, size: cint): QString {.header:headerFile, importcpp:"#.setUnicode(@)".} # Public
proc setUtf16*(this: QString, utf16: ptr cushort, size: cint): QString {.header:headerFile, importcpp:"#.setUtf16(@)".} # Public
proc compare*(this: QString, s: QString, cs: Qt_CaseSensitivity): cint {.header:headerFile, importcpp:"#.compare(@)".} # Public
proc compare*(this: QString, ch: QChar, cs: Qt_CaseSensitivity): cint {.header:headerFile, importcpp:"#.compare(@)".} # Public
proc static_QString_compare*(s1: QString, s2: QString, cs: Qt_CaseSensitivity): cint {.header:headerFile, importcpp:"QString::compare(@)".} # Public static
proc localeAwareCompare*(this: QString, s: QString): cint {.header:headerFile, importcpp:"#.localeAwareCompare(@)".} # Public
proc static_QString_localeAwareCompare*(s1: QString, s2: QString): cint {.header:headerFile, importcpp:"QString::localeAwareCompare(@)".} # Public static
# 2 default parameters!
proc toShort*(this: QString, ok: ptr bool, base: cint): cshort {.header:headerFile, importcpp:"#.toShort(@)".} # Public
proc toShort*(this: QString, ok: ptr bool): cshort {.header:headerFile, importcpp:"#.toShort(@)".} # Public
proc toShort*(this: QString): cshort {.header:headerFile, importcpp:"#.toShort(@)".} # Public
# 2 default parameters!
proc toUShort*(this: QString, ok: ptr bool, base: cint): cushort {.header:headerFile, importcpp:"#.toUShort(@)".} # Public
proc toUShort*(this: QString, ok: ptr bool): cushort {.header:headerFile, importcpp:"#.toUShort(@)".} # Public
proc toUShort*(this: QString): cushort {.header:headerFile, importcpp:"#.toUShort(@)".} # Public
# 2 default parameters!
proc toInt*(this: QString, ok: ptr bool, base: cint): cint {.header:headerFile, importcpp:"#.toInt(@)".} # Public
proc toInt*(this: QString, ok: ptr bool): cint {.header:headerFile, importcpp:"#.toInt(@)".} # Public
proc toInt*(this: QString): cint {.header:headerFile, importcpp:"#.toInt(@)".} # Public
# 2 default parameters!
proc toUInt*(this: QString, ok: ptr bool, base: cint): cuint {.header:headerFile, importcpp:"#.toUInt(@)".} # Public
proc toUInt*(this: QString, ok: ptr bool): cuint {.header:headerFile, importcpp:"#.toUInt(@)".} # Public
proc toUInt*(this: QString): cuint {.header:headerFile, importcpp:"#.toUInt(@)".} # Public
# 2 default parameters!
proc toLong*(this: QString, ok: ptr bool, base: cint): clong {.header:headerFile, importcpp:"#.toLong(@)".} # Public
proc toLong*(this: QString, ok: ptr bool): clong {.header:headerFile, importcpp:"#.toLong(@)".} # Public
proc toLong*(this: QString): clong {.header:headerFile, importcpp:"#.toLong(@)".} # Public
# 2 default parameters!
proc toULong*(this: QString, ok: ptr bool, base: cint): culong {.header:headerFile, importcpp:"#.toULong(@)".} # Public
proc toULong*(this: QString, ok: ptr bool): culong {.header:headerFile, importcpp:"#.toULong(@)".} # Public
proc toULong*(this: QString): culong {.header:headerFile, importcpp:"#.toULong(@)".} # Public
# 2 default parameters!
proc toLongLong*(this: QString, ok: ptr bool, base: cint): clonglong {.header:headerFile, importcpp:"#.toLongLong(@)".} # Public
proc toLongLong*(this: QString, ok: ptr bool): clonglong {.header:headerFile, importcpp:"#.toLongLong(@)".} # Public
proc toLongLong*(this: QString): clonglong {.header:headerFile, importcpp:"#.toLongLong(@)".} # Public
# 2 default parameters!
proc toULongLong*(this: QString, ok: ptr bool, base: cint): culonglong {.header:headerFile, importcpp:"#.toULongLong(@)".} # Public
proc toULongLong*(this: QString, ok: ptr bool): culonglong {.header:headerFile, importcpp:"#.toULongLong(@)".} # Public
proc toULongLong*(this: QString): culonglong {.header:headerFile, importcpp:"#.toULongLong(@)".} # Public
# 1 default parameters!
proc toFloat*(this: QString, ok: ptr bool): cfloat {.header:headerFile, importcpp:"#.toFloat(@)".} # Public
proc toFloat*(this: QString): cfloat {.header:headerFile, importcpp:"#.toFloat(@)".} # Public
# 1 default parameters!
proc toDouble*(this: QString, ok: ptr bool): cdouble {.header:headerFile, importcpp:"#.toDouble(@)".} # Public
proc toDouble*(this: QString): cdouble {.header:headerFile, importcpp:"#.toDouble(@)".} # Public
# 1 default parameters!
proc setNum*(this: QString, arg_1: cshort, base: cint): QString {.header:headerFile, importcpp:"#.setNum(@)".} # Public
proc setNum*(this: QString, arg_1: cshort): QString {.header:headerFile, importcpp:"#.setNum(@)".} # Public
# 1 default parameters!
proc setNum*(this: QString, arg_1: cushort, base: cint): QString {.header:headerFile, importcpp:"#.setNum(@)".} # Public
proc setNum*(this: QString, arg_1: cushort): QString {.header:headerFile, importcpp:"#.setNum(@)".} # Public
# 1 default parameters!
proc setNum*(this: QString, arg_1: cint, base: cint): QString {.header:headerFile, importcpp:"#.setNum(@)".} # Public
proc setNum*(this: QString, arg_1: cint): QString {.header:headerFile, importcpp:"#.setNum(@)".} # Public
# 1 default parameters!
proc setNum*(this: QString, arg_1: cuint, base: cint): QString {.header:headerFile, importcpp:"#.setNum(@)".} # Public
proc setNum*(this: QString, arg_1: cuint): QString {.header:headerFile, importcpp:"#.setNum(@)".} # Public
# 1 default parameters!
when (not defined(windows)):
    proc setNum*(this: QString, arg_1: clong, base: cint): QString {.header:headerFile, importcpp:"#.setNum(@)".} # Public
when (not defined(windows)):
    proc setNum*(this: QString, arg_1: clong): QString {.header:headerFile, importcpp:"#.setNum(@)".} # Public
# 1 default parameters!
when (not defined(windows)):
    proc setNum*(this: QString, arg_1: culong, base: cint): QString {.header:headerFile, importcpp:"#.setNum(@)".} # Public
when (not defined(windows)):
    proc setNum*(this: QString, arg_1: culong): QString {.header:headerFile, importcpp:"#.setNum(@)".} # Public
# 1 default parameters!
proc setNum*(this: QString, arg_1: clonglong, base: cint): QString {.header:headerFile, importcpp:"#.setNum(@)".} # Public
proc setNum*(this: QString, arg_1: clonglong): QString {.header:headerFile, importcpp:"#.setNum(@)".} # Public
# 1 default parameters!
proc setNum*(this: QString, arg_1: culonglong, base: cint): QString {.header:headerFile, importcpp:"#.setNum(@)".} # Public
proc setNum*(this: QString, arg_1: culonglong): QString {.header:headerFile, importcpp:"#.setNum(@)".} # Public
# 1 default parameters!
proc setNum*(this: QString, arg_1: cfloat, format: char, precision: cint): QString {.header:headerFile, importcpp:"#.setNum(@)".} # Public
proc setNum*(this: QString, arg_1: cfloat, format: char): QString {.header:headerFile, importcpp:"#.setNum(@)".} # Public
# 1 default parameters!
proc setNum*(this: QString, arg_1: cdouble, format: char, precision: cint): QString {.header:headerFile, importcpp:"#.setNum(@)".} # Public
proc setNum*(this: QString, arg_1: cdouble, format: char): QString {.header:headerFile, importcpp:"#.setNum(@)".} # Public
# 1 default parameters!
proc static_QString_number*(arg_1: cint, base: cint): QString {.header:headerFile, importcpp:"QString::number(@)".} # Public static
proc static_QString_number*(arg_1: cint): QString {.header:headerFile, importcpp:"QString::number(@)".} # Public static
# 1 default parameters!
proc static_QString_number*(arg_1: cuint, base: cint): QString {.header:headerFile, importcpp:"QString::number(@)".} # Public static
proc static_QString_number*(arg_1: cuint): QString {.header:headerFile, importcpp:"QString::number(@)".} # Public static
# 1 default parameters!
when (not defined(windows)):
    proc static_QString_number*(arg_1: clong, base: cint): QString {.header:headerFile, importcpp:"QString::number(@)".} # Public static
when (not defined(windows)):
    proc static_QString_number*(arg_1: clong): QString {.header:headerFile, importcpp:"QString::number(@)".} # Public static
# 1 default parameters!
when (not defined(windows)):
    proc static_QString_number*(arg_1: culong, base: cint): QString {.header:headerFile, importcpp:"QString::number(@)".} # Public static
when (not defined(windows)):
    proc static_QString_number*(arg_1: culong): QString {.header:headerFile, importcpp:"QString::number(@)".} # Public static
# 1 default parameters!
proc static_QString_number*(arg_1: clonglong, base: cint): QString {.header:headerFile, importcpp:"QString::number(@)".} # Public static
proc static_QString_number*(arg_1: clonglong): QString {.header:headerFile, importcpp:"QString::number(@)".} # Public static
# 1 default parameters!
proc static_QString_number*(arg_1: culonglong, base: cint): QString {.header:headerFile, importcpp:"QString::number(@)".} # Public static
proc static_QString_number*(arg_1: culonglong): QString {.header:headerFile, importcpp:"QString::number(@)".} # Public static
# 1 default parameters!
proc static_QString_number*(arg_1: cdouble, format: char, precision: cint): QString {.header:headerFile, importcpp:"QString::number(@)".} # Public static
proc static_QString_number*(arg_1: cdouble, format: char): QString {.header:headerFile, importcpp:"QString::number(@)".} # Public static
proc prepend*(this: QString, s: ptr char): QString {.header:headerFile, importcpp:"#.prepend(@)".} # Public
proc prepend*(this: QString, s: QByteArray): QString {.header:headerFile, importcpp:"#.prepend(@)".} # Public
proc append*(this: QString, s: ptr char): QString {.header:headerFile, importcpp:"#.append(@)".} # Public
proc append*(this: QString, s: QByteArray): QString {.header:headerFile, importcpp:"#.append(@)".} # Public
proc insert*(this: QString, i: cint, s: ptr char): QString {.header:headerFile, importcpp:"#.insert(@)".} # Public
proc insert*(this: QString, i: cint, s: QByteArray): QString {.header:headerFile, importcpp:"#.insert(@)".} # Public
proc `+=`*(this: QString, s: ptr char): QString {.header:headerFile, importcpp:"#.operator+=(@)".} # Public
proc `+=`*(this: QString, s: QByteArray): QString {.header:headerFile, importcpp:"#.operator+=(@)".} # Public
proc `!=`*(this: QString, s: ptr char): bool {.header:headerFile, importcpp:"#.operator!=(@)".} # Public
proc `<`*(this: QString, s: ptr char): bool {.header:headerFile, importcpp:"#.operator<(@)".} # Public
proc `<=`*(this: QString, s: ptr char): bool {.header:headerFile, importcpp:"#.operator<=(@)".} # Public
proc `>`*(this: QString, s: ptr char): bool {.header:headerFile, importcpp:"#.operator>(@)".} # Public
proc `>=`*(this: QString, s: ptr char): bool {.header:headerFile, importcpp:"#.operator>=(@)".} # Public
proc `!=`*(this: QString, s: QByteArray): bool {.header:headerFile, importcpp:"#.operator!=(@)".} # Public
proc `<`*(this: QString, s: QByteArray): bool {.header:headerFile, importcpp:"#.operator<(@)".} # Public
proc `>`*(this: QString, s: QByteArray): bool {.header:headerFile, importcpp:"#.operator>(@)".} # Public
proc `<=`*(this: QString, s: QByteArray): bool {.header:headerFile, importcpp:"#.operator<=(@)".} # Public
proc `>=`*(this: QString, s: QByteArray): bool {.header:headerFile, importcpp:"#.operator>=(@)".} # Public
proc push_back*(this: QString, c: QChar) {.header:headerFile, importcpp:"#.push_back(@)".} # Public
proc push_back*(this: QString, s: QString) {.header:headerFile, importcpp:"#.push_back(@)".} # Public
proc push_front*(this: QString, c: QChar) {.header:headerFile, importcpp:"#.push_front(@)".} # Public
proc push_front*(this: QString, s: QString) {.header:headerFile, importcpp:"#.push_front(@)".} # Public
proc shrink_to_fit*(this: QString) {.header:headerFile, importcpp:"#.shrink_to_fit(@)".} # Public
proc isSimpleText*(this: QString): bool {.header:headerFile, importcpp:"#.isSimpleText(@)".} # Public
proc isRightToLeft*(this: QString): bool {.header:headerFile, importcpp:"#.isRightToLeft(@)".} # Public
proc isValidUtf16*(this: QString): bool {.header:headerFile, importcpp:"#.isValidUtf16(@)".} # Public

export qbytearrayview
export qregularexpression
export qnamespace
export qbytearray
export qlist
export qchar
export qflags

# Additional code for qtcore/qstring
proc newQString(s:cstring): QString {.header:headerFile, importcpp:"QString(@)",constructor.}
proc newQString*(s:string): QString = newQString(s.cstring)
proc Q*(s:string): QString = newQString(s.cstring)
# Qt stores data as UTF-16, while nim assumes utf-8 (well, it doesn't care about unicode)
# so we convert it here for display
func `$`*(s:QString): string = 
    let xs=s.toUtf8
    for i in 0..<xs.length: result.add xs[i]
func `$`*(s:ptr QString): string = $(s[])
# Fix bug cpp2xml[1]
proc indexOf*(this: QLatin1String, s:QString, `from`:cint = -1, case_sensitivity=CaseSensitive): cint {.header:headerFile, importcpp:"#.indexOf(@)".}
proc lastIndexOf*(this: QLatin1String, s:QString, `from`:cint = -1, case_sensitivity=CaseSensitive): cint {.header:headerFile, importcpp:"#.lastIndexOf(@)".}
proc indexOf*(this: QString, s:QString, `from`:cint = -1, case_sensitivity=CaseSensitive): cint {.header:headerFile, importcpp:"#.indexOf(@)".}
proc lastIndexOf*(this: QString, s:QString, `from`:cint = -1, case_sensitivity=CaseSensitive): cint {.header:headerFile, importcpp:"#.lastIndexOf(@)".}
proc `==`*(this,r: QString): bool {.header:headerFile, importcpp:"operator==(@)".}
