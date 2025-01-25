const headerFile* = "QtCore/qvariant.h"

type
    # Enums found in the C++ code
    # Global
    QVariant_Type* {.header:headerFile,importcpp:"QVariant::Type".} = enum LastType = -1, Invalid = 0, Bool = 0x1, Int = 0x2, 
        UInt = 0x3, LongLong = 0x4, ULongLong = 0x5, Double = 0x6, Char = 0x7, 
        Map = 0x8, List = 0x9, String = 0xa, StringList = 0xb, ByteArray = 0xc, 
        BitArray = 0xd, Date = 0xe, Time = 0xf, DateTime = 0x10, Url = 0x11, 
        Locale = 0x12, Rect = 0x13, RectF = 0x14, Size = 0x15, SizeF = 0x16, 
        Line = 0x17, LineF = 0x18, Point = 0x19, PointF = 0x1a, Hash = 0x1c, 
        EasingCurve = 0x1d, Uuid = 0x1e, ModelIndex = 0x2a, RegularExpression = 0x2c, PersistentModelIndex = 0x32, 
        LastCoreType = 0x3a, Font = 0x1000, Pixmap = 0x1001, Brush = 0x1002, Color = 0x1003, 
        Palette = 0x1004, Icon = 0x1005, Image = 0x1006, Polygon = 0x1007, Region = 0x1008, 
        Bitmap = 0x1009, Cursor = 0x100a, KeySequence = 0x100b, Pen = 0x100c, TextLength = 0x100d, 
        TextFormat = 0x100e, Transform = 0x1010, Matrix4x4 = 0x1011, Vector2D = 0x1012, Vector3D = 0x1013, 
        Vector4D = 0x1014, Quaternion = 0x1015, PolygonF = 0x1016, LastGuiType = 0x1017, SizePolicy = 0x2000, 
        UserType = 0x10000

type
    # Classes found in the C++ code
    QVariant* {.header:headerFile,importcpp:"QVariant" ,pure,inheritable.} = object
    QVariantRef*[Pointer] {.header:headerFile,importcpp:"QVariantRef" ,pure,inheritable.} = object
    QVariantConstPointer* {.header:headerFile,importcpp:"QVariantConstPointer" ,pure,inheritable.} = object
    QVariantPointer*[Pointer] {.header:headerFile,importcpp:"QVariantPointer" ,pure,inheritable.} = object

# Stuff for class QVariant

# Public constructors for QVariant
proc newQVariant*(): QVariant {. header:headerFile, importcpp:"QVariant(@)", constructor .} #
proc newQVariant*(other: QVariant): QVariant {. header:headerFile, importcpp:"QVariant(@)", constructor .} #
proc newQVariant*(i: cint): QVariant {. header:headerFile, importcpp:"QVariant(@)", constructor .} #
proc newQVariant*(ui: cuint): QVariant {. header:headerFile, importcpp:"QVariant(@)", constructor .} #
proc newQVariant*(ll: clonglong): QVariant {. header:headerFile, importcpp:"QVariant(@)", constructor .} #
proc newQVariant*(ull: culonglong): QVariant {. header:headerFile, importcpp:"QVariant(@)", constructor .} #
proc newQVariant*(b: bool): QVariant {. header:headerFile, importcpp:"QVariant(@)", constructor .} #
proc newQVariant*(d: cdouble): QVariant {. header:headerFile, importcpp:"QVariant(@)", constructor .} #
proc newQVariant*(f: cfloat): QVariant {. header:headerFile, importcpp:"QVariant(@)", constructor .} #
proc newQVariant*(str: ptr char): QVariant {. header:headerFile, importcpp:"QVariant(@)", constructor .} #
import nimqt/qtcore/qbytearray
proc newQVariant*(bytearray: QByteArray): QVariant {. header:headerFile, importcpp:"QVariant(@)", constructor .} #
import nimqt/qtcore/qbitarray
proc newQVariant*(bitarray: QBitArray): QVariant {. header:headerFile, importcpp:"QVariant(@)", constructor .} #
import nimqt/qtcore/qstring
proc newQVariant*(string: QString): QVariant {. header:headerFile, importcpp:"QVariant(@)", constructor .} #
import nimqt/qtcore/qstringlist
proc newQVariant*(stringlist: QStringList): QVariant {. header:headerFile, importcpp:"QVariant(@)", constructor .} #
import nimqt/qtcore/qchar
proc newQVariant*(qchar: QChar): QVariant {. header:headerFile, importcpp:"QVariant(@)", constructor .} #
import nimqt/qtcore/qdatetime
proc newQVariant*(date: QDate): QVariant {. header:headerFile, importcpp:"QVariant(@)", constructor .} #
proc newQVariant*(time: QTime): QVariant {. header:headerFile, importcpp:"QVariant(@)", constructor .} #
proc newQVariant*(datetime: QDateTime): QVariant {. header:headerFile, importcpp:"QVariant(@)", constructor .} #
import nimqt/qtcore/qlist
proc newQVariant*(list: QList[QVariant]): QVariant {. header:headerFile, importcpp:"QVariant(@)", constructor .} #
import nimqt/qtcore/qmap
proc newQVariant*(map: QMap[QString, QVariant]): QVariant {. header:headerFile, importcpp:"QVariant(@)", constructor .} #
import nimqt/qtcore/qhash
proc newQVariant*(hash: QHash[QString, QVariant]): QVariant {. header:headerFile, importcpp:"QVariant(@)", constructor .} #
import nimqt/qtcore/qsize
proc newQVariant*(size: QSize): QVariant {. header:headerFile, importcpp:"QVariant(@)", constructor .} #
proc newQVariant*(size: QSizeF): QVariant {. header:headerFile, importcpp:"QVariant(@)", constructor .} #
import nimqt/qtcore/qpoint
proc newQVariant*(pt: QPoint): QVariant {. header:headerFile, importcpp:"QVariant(@)", constructor .} #
proc newQVariant*(pt: QPointF): QVariant {. header:headerFile, importcpp:"QVariant(@)", constructor .} #
import nimqt/qtcore/qline
proc newQVariant*(line: QLine): QVariant {. header:headerFile, importcpp:"QVariant(@)", constructor .} #
proc newQVariant*(line: QLineF): QVariant {. header:headerFile, importcpp:"QVariant(@)", constructor .} #
import nimqt/qtcore/qrect
proc newQVariant*(rect: QRect): QVariant {. header:headerFile, importcpp:"QVariant(@)", constructor .} #
proc newQVariant*(rect: QRectF): QVariant {. header:headerFile, importcpp:"QVariant(@)", constructor .} #
import nimqt/qtcore/qlocale
proc newQVariant*(locale: QLocale): QVariant {. header:headerFile, importcpp:"QVariant(@)", constructor .} #
import nimqt/qtcore/qregularexpression
proc newQVariant*(re: QRegularExpression): QVariant {. header:headerFile, importcpp:"QVariant(@)", constructor .} #
import nimqt/qtcore/qeasingcurve
proc newQVariant*(easing: QEasingCurve): QVariant {. header:headerFile, importcpp:"QVariant(@)", constructor .} #
import nimqt/qtcore/quuid
proc newQVariant*(uuid: QUuid): QVariant {. header:headerFile, importcpp:"QVariant(@)", constructor .} #
import nimqt/qtcore/qurl
proc newQVariant*(url: QUrl): QVariant {. header:headerFile, importcpp:"QVariant(@)", constructor .} #
import nimqt/qtcore/qjsonvalue
proc newQVariant*(jsonValue: QJsonValue): QVariant {. header:headerFile, importcpp:"QVariant(@)", constructor .} #
import nimqt/qtcore/qjsonobject
proc newQVariant*(jsonObject: QJsonObject): QVariant {. header:headerFile, importcpp:"QVariant(@)", constructor .} #
import nimqt/qtcore/qjsonarray
proc newQVariant*(jsonArray: QJsonArray): QVariant {. header:headerFile, importcpp:"QVariant(@)", constructor .} #
import nimqt/qtcore/qjsondocument
proc newQVariant*(jsonDocument: QJsonDocument): QVariant {. header:headerFile, importcpp:"QVariant(@)", constructor .} #
proc newQVariant*(`type`: QVariant_Type): QVariant {. header:headerFile, importcpp:"QVariant(@)", constructor .} #

# Public methods for QVariant
proc swap*(this: QVariant, other: QVariant) {.header:headerFile, importcpp:"#.swap(@)".} # Public
proc userType*(this: QVariant): cint {.header:headerFile, importcpp:"#.userType(@)".} # Public
proc typeId*(this: QVariant): cint {.header:headerFile, importcpp:"#.typeId(@)".} # Public
proc typeName*(this: QVariant): ptr char {.header:headerFile, importcpp:"#.typeName(@)".} # Public
proc canConvert*(this: QVariant, targetTypeId: cint): bool {.header:headerFile, importcpp:"#.canConvert(@)".} # Public
proc isValid*(this: QVariant): bool {.header:headerFile, importcpp:"#.isValid(@)".} # Public
proc isNull*(this: QVariant): bool {.header:headerFile, importcpp:"#.isNull(@)".} # Public
proc clear*(this: QVariant) {.header:headerFile, importcpp:"#.clear(@)".} # Public
proc detach*(this: QVariant) {.header:headerFile, importcpp:"#.detach(@)".} # Public
proc isDetached*(this: QVariant): bool {.header:headerFile, importcpp:"#.isDetached(@)".} # Public
# 1 default parameters!
proc toInt*(this: QVariant, ok: ptr bool): cint {.header:headerFile, importcpp:"#.toInt(@)".} # Public
proc toInt*(this: QVariant): cint {.header:headerFile, importcpp:"#.toInt(@)".} # Public
# 1 default parameters!
proc toUInt*(this: QVariant, ok: ptr bool): cuint {.header:headerFile, importcpp:"#.toUInt(@)".} # Public
proc toUInt*(this: QVariant): cuint {.header:headerFile, importcpp:"#.toUInt(@)".} # Public
# 1 default parameters!
proc toLongLong*(this: QVariant, ok: ptr bool): clonglong {.header:headerFile, importcpp:"#.toLongLong(@)".} # Public
proc toLongLong*(this: QVariant): clonglong {.header:headerFile, importcpp:"#.toLongLong(@)".} # Public
# 1 default parameters!
proc toULongLong*(this: QVariant, ok: ptr bool): culonglong {.header:headerFile, importcpp:"#.toULongLong(@)".} # Public
proc toULongLong*(this: QVariant): culonglong {.header:headerFile, importcpp:"#.toULongLong(@)".} # Public
proc toBool*(this: QVariant): bool {.header:headerFile, importcpp:"#.toBool(@)".} # Public
# 1 default parameters!
proc toDouble*(this: QVariant, ok: ptr bool): cdouble {.header:headerFile, importcpp:"#.toDouble(@)".} # Public
proc toDouble*(this: QVariant): cdouble {.header:headerFile, importcpp:"#.toDouble(@)".} # Public
# 1 default parameters!
proc toFloat*(this: QVariant, ok: ptr bool): cfloat {.header:headerFile, importcpp:"#.toFloat(@)".} # Public
proc toFloat*(this: QVariant): cfloat {.header:headerFile, importcpp:"#.toFloat(@)".} # Public
# 1 default parameters!
proc toReal*(this: QVariant, ok: ptr bool): cfloat {.header:headerFile, importcpp:"#.toReal(@)".} # Public
proc toReal*(this: QVariant): cfloat {.header:headerFile, importcpp:"#.toReal(@)".} # Public
proc toByteArray*(this: QVariant): QByteArray {.header:headerFile, importcpp:"#.toByteArray(@)".} # Public
proc toBitArray*(this: QVariant): QBitArray {.header:headerFile, importcpp:"#.toBitArray(@)".} # Public
proc toString*(this: QVariant): QString {.header:headerFile, importcpp:"#.toString(@)".} # Public
proc toStringList*(this: QVariant): QStringList {.header:headerFile, importcpp:"#.toStringList(@)".} # Public
proc toChar*(this: QVariant): QChar {.header:headerFile, importcpp:"#.toChar(@)".} # Public
proc toDate*(this: QVariant): QDate {.header:headerFile, importcpp:"#.toDate(@)".} # Public
proc toTime*(this: QVariant): QTime {.header:headerFile, importcpp:"#.toTime(@)".} # Public
proc toDateTime*(this: QVariant): QDateTime {.header:headerFile, importcpp:"#.toDateTime(@)".} # Public
proc toList*(this: QVariant): QList[QVariant] {.header:headerFile, importcpp:"#.toList(@)".} # Public
proc toMap*(this: QVariant): QMap[QString, QVariant] {.header:headerFile, importcpp:"#.toMap(@)".} # Public
proc toHash*(this: QVariant): QHash[QString, QVariant] {.header:headerFile, importcpp:"#.toHash(@)".} # Public
proc toPoint*(this: QVariant): QPoint {.header:headerFile, importcpp:"#.toPoint(@)".} # Public
proc toPointF*(this: QVariant): QPointF {.header:headerFile, importcpp:"#.toPointF(@)".} # Public
proc toRect*(this: QVariant): QRect {.header:headerFile, importcpp:"#.toRect(@)".} # Public
proc toSize*(this: QVariant): QSize {.header:headerFile, importcpp:"#.toSize(@)".} # Public
proc toSizeF*(this: QVariant): QSizeF {.header:headerFile, importcpp:"#.toSizeF(@)".} # Public
proc toLine*(this: QVariant): QLine {.header:headerFile, importcpp:"#.toLine(@)".} # Public
proc toLineF*(this: QVariant): QLineF {.header:headerFile, importcpp:"#.toLineF(@)".} # Public
proc toRectF*(this: QVariant): QRectF {.header:headerFile, importcpp:"#.toRectF(@)".} # Public
proc toLocale*(this: QVariant): QLocale {.header:headerFile, importcpp:"#.toLocale(@)".} # Public
proc toRegularExpression*(this: QVariant): QRegularExpression {.header:headerFile, importcpp:"#.toRegularExpression(@)".} # Public
proc toEasingCurve*(this: QVariant): QEasingCurve {.header:headerFile, importcpp:"#.toEasingCurve(@)".} # Public
proc toUuid*(this: QVariant): QUuid {.header:headerFile, importcpp:"#.toUuid(@)".} # Public
proc toUrl*(this: QVariant): QUrl {.header:headerFile, importcpp:"#.toUrl(@)".} # Public
proc toJsonValue*(this: QVariant): QJsonValue {.header:headerFile, importcpp:"#.toJsonValue(@)".} # Public
proc toJsonObject*(this: QVariant): QJsonObject {.header:headerFile, importcpp:"#.toJsonObject(@)".} # Public
proc toJsonArray*(this: QVariant): QJsonArray {.header:headerFile, importcpp:"#.toJsonArray(@)".} # Public
proc toJsonDocument*(this: QVariant): QJsonDocument {.header:headerFile, importcpp:"#.toJsonDocument(@)".} # Public
proc `type`*(this: QVariant): QVariant_Type {.header:headerFile, importcpp:"#.type(@)".} # Public
proc static_QVariant_typeToName*(typeId: cint): ptr char {.header:headerFile, importcpp:"QVariant::typeToName(@)".} # Public static
proc static_QVariant_nameToType*(name: ptr char): QVariant_Type {.header:headerFile, importcpp:"QVariant::nameToType(@)".} # Public static
proc data*(this: QVariant): ptr  {.header:headerFile, importcpp:"#.data(@)".} # Public
proc constData*(this: QVariant): ptr  {.header:headerFile, importcpp:"#.constData(@)".} # Public
proc setValue*(this: QVariant, avalue: QVariant) {.header:headerFile, importcpp:"#.setValue(@)".} # Public
import nimqt/qtcore/qcompare
proc static_QVariant_compare*(lhs: QVariant, rhs: QVariant): QPartialOrdering {.header:headerFile, importcpp:"QVariant::compare(@)".} # Public static

# Protected methods methods for QVariant
proc create*(this: QVariant, `type`: cint, copy: ptr) {.header:headerFile, importcpp:"#.create(@)".} # Protected
proc equals*(this: QVariant, other: QVariant): bool {.header:headerFile, importcpp:"#.equals(@)".} # Protected
proc view*(this: QVariant, `type`: cint, `ptr`: ptr): bool {.header:headerFile, importcpp:"#.view(@)".} # Protected
# Stuff for class QVariantRef

# Public constructors for QVariantRef
proc newQVariantRef*[Pointer](reference: ptr Pointer): QVariantRef[Pointer] {. header:headerFile, importcpp:"QVariantRef(@)", constructor .} #
proc newQVariantRef*[Pointer](arg_0: QVariantRef[Pointer]): QVariantRef[Pointer] {. header:headerFile, importcpp:"QVariantRef(@)", constructor .} #
# Stuff for class QVariantConstPointer

# Public constructors for QVariantConstPointer
proc newQVariantConstPointer*(variant: QVariant): QVariantConstPointer {. header:headerFile, importcpp:"QVariantConstPointer(@)", constructor .} #

# Public methods for QVariantConstPointer
proc `*`*(this: QVariantConstPointer): QVariant {.header:headerFile, importcpp:"#.operator*(@)".} # Public
proc `->`*(this: QVariantConstPointer): ptr QVariant {.header:headerFile, importcpp:"#.operator->(@)".} # Public
# Stuff for class QVariantPointer

# Public constructors for QVariantPointer
proc newQVariantPointer*[Pointer](pointer: ptr Pointer): QVariantPointer[Pointer] {. header:headerFile, importcpp:"QVariantPointer(@)", constructor .} #

# Public methods for QVariantPointer
proc `*`*[Pointer](this: QVariantPointer[Pointer]): QVariantRef[Pointer] {.header:headerFile, importcpp:"#.operator*(@)".} # Public
proc `->`*[Pointer](this: QVariantPointer[Pointer]): Pointer {.header:headerFile, importcpp:"#.operator->(@)".} # Public

export qmap
export qstringlist
export qurl
export qstring
export quuid
export qjsondocument
export qlocale
export qsize
export qregularexpression
export qjsonvalue
export qbitarray
export qjsonarray
export qeasingcurve
export qbytearray
export qlist
export qdatetime
export qhash
export qpoint
export qline
export qchar
export qrect
export qcompare
export qjsonobject
