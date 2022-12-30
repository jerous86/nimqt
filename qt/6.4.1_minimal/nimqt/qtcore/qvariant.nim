const headerFile* = "QtCore/qvariant.h"

# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}


type
    # Classes and enums found in the C++ code
    # Global
    QVariant_Type* {.header:headerFile,importcpp:"QVariant::Type".} = enum Invalid = 0, Bool = 0x1, Int = 0x2, UInt = 0x3, 
        LongLong = 0x4, ULongLong = 0x5, Double = 0x6, Char = 0x7, Map = 0x8, 
        List = 0x9, String = 0xa, StringList = 0xb, ByteArray = 0xc, BitArray = 0xd, 
        Date = 0xe, Time = 0xf, DateTime = 0x10, Url = 0x11, Locale = 0x12, 
        Rect = 0x13, RectF = 0x14, Size = 0x15, SizeF = 0x16, Line = 0x17, 
        LineF = 0x18, Point = 0x19, PointF = 0x1a, RegularExpression = 0x1b, Hash = 0x1c, 
        EasingCurve = 0x1d, Uuid = 0x1e, ModelIndex = 0x1f, PersistentModelIndex = 0x20, LastCoreType = 0x21, 
        Font = 0x22, Pixmap = 0x23, Brush = 0x24, Color = 0x25, Palette = 0x26, 
        Image = 0x27, Polygon = 0x28, Region = 0x29, Bitmap = 0x2a, Cursor = 0x2b, 
        KeySequence = 0x2c, Pen = 0x2d, TextLength = 0x2e, TextFormat = 0x2f, Transform = 0x30, 
        Matrix4x4 = 0x31, Vector2D = 0x32, Vector3D = 0x33, Vector4D = 0x34, Quaternion = 0x35, 
        PolygonF = 0x36, Icon = 0x37, LastGuiType = 0x38, SizePolicy = 0x39, UserType = 0x3a, 
        LastType = 0x3b
    QVariant* {.header:headerFile,importcpp:"QVariant" ,pure.} = object {.inheritable.}
    QVariantRef*[Pointer] {.header:headerFile,importcpp:"QVariantRef" ,pure.} = object {.inheritable.}
    QVariantConstPointer* {.header:headerFile,importcpp:"QVariantConstPointer" ,pure.} = object {.inheritable.}
    QVariantPointer*[Pointer] {.header:headerFile,importcpp:"QVariantPointer" ,pure.} = object {.inheritable.}
{.push warning[Deprecated]: on.}

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
import nimqt/qtcore/qstring
proc newQVariant*(string: QString): QVariant {. header:headerFile, importcpp:"QVariant(@)", constructor .} # 
import nimqt/qtcore/qstringlist
proc newQVariant*(stringlist: QStringList): QVariant {. header:headerFile, importcpp:"QVariant(@)", constructor .} # 
import nimqt/qtcore/qlist
proc newQVariant*(list: QList[QVariant]): QVariant {. header:headerFile, importcpp:"QVariant(@)", constructor .} # 
import nimqt/qtcore/qsize
proc newQVariant*(size: QSize): QVariant {. header:headerFile, importcpp:"QVariant(@)", constructor .} # 
proc newQVariant*(size: QSizeF): QVariant {. header:headerFile, importcpp:"QVariant(@)", constructor .} # 
import nimqt/qtcore/qpoint
proc newQVariant*(pt: QPoint): QVariant {. header:headerFile, importcpp:"QVariant(@)", constructor .} # 
proc newQVariant*(pt: QPointF): QVariant {. header:headerFile, importcpp:"QVariant(@)", constructor .} # 
import nimqt/qtcore/qrect
proc newQVariant*(rect: QRect): QVariant {. header:headerFile, importcpp:"QVariant(@)", constructor .} # 
proc newQVariant*(rect: QRectF): QVariant {. header:headerFile, importcpp:"QVariant(@)", constructor .} # 
import nimqt/qtcore/qurl
proc newQVariant*(url: QUrl): QVariant {. header:headerFile, importcpp:"QVariant(@)", constructor .} # 
proc newQVariant*(`type`: QVariant_Type): QVariant {. header:headerFile, importcpp:"QVariant(@)", constructor .} # 

# Public methods for QVariant
proc swap*(this:QVariant, other: QVariant) {.header:headerFile, importcpp:"#.swap(@)".} # Public 
proc userType*(this:QVariant): cint {.header:headerFile, importcpp:"#.userType(@)".} # Public 
proc typeId*(this:QVariant): cint {.header:headerFile, importcpp:"#.typeId(@)".} # Public 
proc typeName*(this:QVariant): ptr char {.header:headerFile, importcpp:"#.typeName(@)".} # Public 
proc canConvert*(this:QVariant, targetTypeId: cint): bool {.header:headerFile, importcpp:"#.canConvert(@)".} # Public 
proc isValid*(this:QVariant): bool {.header:headerFile, importcpp:"#.isValid(@)".} # Public 
proc isNull*(this:QVariant): bool {.header:headerFile, importcpp:"#.isNull(@)".} # Public 
proc clear*(this:QVariant) {.header:headerFile, importcpp:"#.clear(@)".} # Public 
proc detach*(this:QVariant) {.header:headerFile, importcpp:"#.detach(@)".} # Public 
proc isDetached*(this:QVariant): bool {.header:headerFile, importcpp:"#.isDetached(@)".} # Public 
# 1 default parameters!
proc toInt*(this:QVariant, ok: ptr bool): cint {.header:headerFile, importcpp:"#.toInt(@)".} # Public 
proc toInt*(this:QVariant): cint {.header:headerFile, importcpp:"#.toInt(@)".} # Public 
# 1 default parameters!
proc toUInt*(this:QVariant, ok: ptr bool): cuint {.header:headerFile, importcpp:"#.toUInt(@)".} # Public 
proc toUInt*(this:QVariant): cuint {.header:headerFile, importcpp:"#.toUInt(@)".} # Public 
# 1 default parameters!
proc toLongLong*(this:QVariant, ok: ptr bool): clonglong {.header:headerFile, importcpp:"#.toLongLong(@)".} # Public 
proc toLongLong*(this:QVariant): clonglong {.header:headerFile, importcpp:"#.toLongLong(@)".} # Public 
# 1 default parameters!
proc toULongLong*(this:QVariant, ok: ptr bool): culonglong {.header:headerFile, importcpp:"#.toULongLong(@)".} # Public 
proc toULongLong*(this:QVariant): culonglong {.header:headerFile, importcpp:"#.toULongLong(@)".} # Public 
proc toBool*(this:QVariant): bool {.header:headerFile, importcpp:"#.toBool(@)".} # Public 
# 1 default parameters!
proc toDouble*(this:QVariant, ok: ptr bool): cdouble {.header:headerFile, importcpp:"#.toDouble(@)".} # Public 
proc toDouble*(this:QVariant): cdouble {.header:headerFile, importcpp:"#.toDouble(@)".} # Public 
# 1 default parameters!
proc toFloat*(this:QVariant, ok: ptr bool): cfloat {.header:headerFile, importcpp:"#.toFloat(@)".} # Public 
proc toFloat*(this:QVariant): cfloat {.header:headerFile, importcpp:"#.toFloat(@)".} # Public 
# 1 default parameters!
proc toReal*(this:QVariant, ok: ptr bool): cfloat {.header:headerFile, importcpp:"#.toReal(@)".} # Public 
proc toReal*(this:QVariant): cfloat {.header:headerFile, importcpp:"#.toReal(@)".} # Public 
proc toByteArray*(this:QVariant): QByteArray {.header:headerFile, importcpp:"#.toByteArray(@)".} # Public 
proc toString*(this:QVariant): QString {.header:headerFile, importcpp:"#.toString(@)".} # Public 
proc toStringList*(this:QVariant): QStringList {.header:headerFile, importcpp:"#.toStringList(@)".} # Public 
proc toList*(this:QVariant): QList[QVariant] {.header:headerFile, importcpp:"#.toList(@)".} # Public 
proc toPoint*(this:QVariant): QPoint {.header:headerFile, importcpp:"#.toPoint(@)".} # Public 
proc toPointF*(this:QVariant): QPointF {.header:headerFile, importcpp:"#.toPointF(@)".} # Public 
proc toRect*(this:QVariant): QRect {.header:headerFile, importcpp:"#.toRect(@)".} # Public 
proc toSize*(this:QVariant): QSize {.header:headerFile, importcpp:"#.toSize(@)".} # Public 
proc toSizeF*(this:QVariant): QSizeF {.header:headerFile, importcpp:"#.toSizeF(@)".} # Public 
proc toRectF*(this:QVariant): QRectF {.header:headerFile, importcpp:"#.toRectF(@)".} # Public 
proc toUrl*(this:QVariant): QUrl {.header:headerFile, importcpp:"#.toUrl(@)".} # Public 
proc `type`*(this:QVariant): QVariant_Type {.header:headerFile, importcpp:"#.type(@)".} # Public 
proc static_QVariant_typeToName*(typeId: cint): ptr char {.header:headerFile, importcpp:"QVariant::typeToName(@)".} # Public static
proc static_QVariant_nameToType*(name: ptr char): QVariant_Type {.header:headerFile, importcpp:"QVariant::nameToType(@)".} # Public static
proc data*(this:QVariant): ptr  {.header:headerFile, importcpp:"#.data(@)".} # Public 
proc constData*(this:QVariant): ptr  {.header:headerFile, importcpp:"#.constData(@)".} # Public 
proc setValue*(this:QVariant, avalue: QVariant) {.header:headerFile, importcpp:"#.setValue(@)".} # Public 

# Protected methods methods for QVariant
proc create*(this:QVariant, `type`: cint, copy: ptr ) {.header:headerFile, importcpp:"#.create(@)".} # Protected 
proc equals*(this:QVariant, other: QVariant): bool {.header:headerFile, importcpp:"#.equals(@)".} # Protected 
proc view*(this:QVariant, `type`: cint, `ptr`: ptr ): bool {.header:headerFile, importcpp:"#.view(@)".} # Protected 
# Stuff for class QVariantRef

# Public constructors for QVariantRef
proc newQVariantRef*[Pointer](reference: ptr Pointer): QVariantRef[Pointer] {. header:headerFile, importcpp:"QVariantRef(@)", constructor .} # 
proc newQVariantRef*[Pointer](arg_0: QVariantRef[Pointer]): QVariantRef[Pointer] {. header:headerFile, importcpp:"QVariantRef(@)", constructor .} # 
# Stuff for class QVariantConstPointer

# Public constructors for QVariantConstPointer
proc newQVariantConstPointer*(variant: QVariant): QVariantConstPointer {. header:headerFile, importcpp:"QVariantConstPointer(@)", constructor .} # 

# Public methods for QVariantConstPointer
proc `*`*(this:QVariantConstPointer): QVariant {.header:headerFile, importcpp:"#.operator*(@)".} # Public 
proc `->`*(this:QVariantConstPointer): ptr QVariant {.header:headerFile, importcpp:"#.operator->(@)".} # Public 
# Stuff for class QVariantPointer

# Public constructors for QVariantPointer
proc newQVariantPointer*[Pointer](pointer: ptr Pointer): QVariantPointer[Pointer] {. header:headerFile, importcpp:"QVariantPointer(@)", constructor .} # 

# Public methods for QVariantPointer
proc `*`*[Pointer](this:QVariantPointer[Pointer]): QVariantRef[Pointer] {.header:headerFile, importcpp:"#.operator*(@)".} # Public 
proc `->`*[Pointer](this:QVariantPointer[Pointer]): Pointer {.header:headerFile, importcpp:"#.operator->(@)".} # Public 

export qstringlist
export qurl
export qstring
export qsize
export qbytearray
export qlist
export qpoint
export qrect