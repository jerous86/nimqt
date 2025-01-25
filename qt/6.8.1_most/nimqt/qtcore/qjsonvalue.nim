const headerFile* = "QtCore/qjsonvalue.h"

type
    # Enums found in the C++ code
    # Global
    QJsonValue_Type* {.header:headerFile,importcpp:"QJsonValue::Type".} = enum Null = 0, Bool = 0x1, Double = 0x2, String = 0x3, 
        Array = 0x4, Object = 0x5, Undefined = 0x80

type
    # Classes found in the C++ code
    QJsonValue* {.header:headerFile,importcpp:"QJsonValue" ,pure,inheritable.} = object
    QJsonValueConstRef* {.header:headerFile,importcpp:"QJsonValueConstRef" ,pure,inheritable.} = object

# Stuff for class QJsonValue

# Public constructors for QJsonValue
proc newQJsonValue*(arg_0: QJsonValue_Type): QJsonValue {. header:headerFile, importcpp:"QJsonValue(@)", constructor .} #
proc newQJsonValue*(b: bool): QJsonValue {. header:headerFile, importcpp:"QJsonValue(@)", constructor .} #
proc newQJsonValue*(n: cdouble): QJsonValue {. header:headerFile, importcpp:"QJsonValue(@)", constructor .} #
proc newQJsonValue*(n: cint): QJsonValue {. header:headerFile, importcpp:"QJsonValue(@)", constructor .} #
proc newQJsonValue*(v: clonglong): QJsonValue {. header:headerFile, importcpp:"QJsonValue(@)", constructor .} #
import nimqt/qtcore/qstring
proc newQJsonValue*(s: QString): QJsonValue {. header:headerFile, importcpp:"QJsonValue(@)", constructor .} #
proc newQJsonValue*(s: ptr char): QJsonValue {. header:headerFile, importcpp:"QJsonValue(@)", constructor .} #
import nimqt/qtcore/qjsonarray
proc newQJsonValue*(a: QJsonArray): QJsonValue {. header:headerFile, importcpp:"QJsonValue(@)", constructor .} #
import nimqt/qtcore/qjsonobject
proc newQJsonValue*(o: QJsonObject): QJsonValue {. header:headerFile, importcpp:"QJsonValue(@)", constructor .} #
proc newQJsonValue*(other: QJsonValue): QJsonValue {. header:headerFile, importcpp:"QJsonValue(@)", constructor .} #

# Public methods for QJsonValue
proc swap*(this: QJsonValue, other: QJsonValue) {.header:headerFile, importcpp:"#.swap(@)".} # Public
import nimqt/qtcore/qvariant
proc static_QJsonValue_fromVariant*(variant: QVariant): QJsonValue {.header:headerFile, importcpp:"QJsonValue::fromVariant(@)".} # Public static
proc toVariant*(this: QJsonValue): QVariant {.header:headerFile, importcpp:"#.toVariant(@)".} # Public
proc `type`*(this: QJsonValue): QJsonValue_Type {.header:headerFile, importcpp:"#.type(@)".} # Public
proc isNull*(this: QJsonValue): bool {.header:headerFile, importcpp:"#.isNull(@)".} # Public
proc isBool*(this: QJsonValue): bool {.header:headerFile, importcpp:"#.isBool(@)".} # Public
proc isDouble*(this: QJsonValue): bool {.header:headerFile, importcpp:"#.isDouble(@)".} # Public
proc isString*(this: QJsonValue): bool {.header:headerFile, importcpp:"#.isString(@)".} # Public
proc isArray*(this: QJsonValue): bool {.header:headerFile, importcpp:"#.isArray(@)".} # Public
proc isObject*(this: QJsonValue): bool {.header:headerFile, importcpp:"#.isObject(@)".} # Public
proc isUndefined*(this: QJsonValue): bool {.header:headerFile, importcpp:"#.isUndefined(@)".} # Public
# 1 default parameters!
proc toBool*(this: QJsonValue, defaultValue: bool): bool {.header:headerFile, importcpp:"#.toBool(@)".} # Public
proc toBool*(this: QJsonValue): bool {.header:headerFile, importcpp:"#.toBool(@)".} # Public
# 1 default parameters!
proc toInt*(this: QJsonValue, defaultValue: cint): cint {.header:headerFile, importcpp:"#.toInt(@)".} # Public
proc toInt*(this: QJsonValue): cint {.header:headerFile, importcpp:"#.toInt(@)".} # Public
# 1 default parameters!
proc toInteger*(this: QJsonValue, defaultValue: clonglong): clonglong {.header:headerFile, importcpp:"#.toInteger(@)".} # Public
proc toInteger*(this: QJsonValue): clonglong {.header:headerFile, importcpp:"#.toInteger(@)".} # Public
# 1 default parameters!
proc toDouble*(this: QJsonValue, defaultValue: cdouble): cdouble {.header:headerFile, importcpp:"#.toDouble(@)".} # Public
proc toDouble*(this: QJsonValue): cdouble {.header:headerFile, importcpp:"#.toDouble(@)".} # Public
proc toString*(this: QJsonValue): QString {.header:headerFile, importcpp:"#.toString(@)".} # Public
proc toString*(this: QJsonValue, defaultValue: QString): QString {.header:headerFile, importcpp:"#.toString(@)".} # Public
proc toArray*(this: QJsonValue): QJsonArray {.header:headerFile, importcpp:"#.toArray(@)".} # Public
proc toArray*(this: QJsonValue, defaultValue: QJsonArray): QJsonArray {.header:headerFile, importcpp:"#.toArray(@)".} # Public
proc toObject*(this: QJsonValue): QJsonObject {.header:headerFile, importcpp:"#.toObject(@)".} # Public
proc toObject*(this: QJsonValue, defaultValue: QJsonObject): QJsonObject {.header:headerFile, importcpp:"#.toObject(@)".} # Public
proc `[]`*(this: QJsonValue, key: QString): QJsonValue {.header:headerFile, importcpp:"#.operator[](@)".} # Public
proc `[]`*(this: QJsonValue, i: cint): QJsonValue {.header:headerFile, importcpp:"#.operator[](@)".} # Public
proc `!=`*(this: QJsonValue, other: QJsonValue): bool {.header:headerFile, importcpp:"#.operator!=(@)".} # Public
# Stuff for class QJsonValueConstRef

# Public constructors for QJsonValueConstRef
proc newQJsonValueConstRef*(arg_0: QJsonValueConstRef): QJsonValueConstRef {. header:headerFile, importcpp:"QJsonValueConstRef(@)", constructor .} #

# Public methods for QJsonValueConstRef
proc toVariant*(this: QJsonValueConstRef): QVariant {.header:headerFile, importcpp:"#.toVariant(@)".} # Public
proc `type`*(this: QJsonValueConstRef): QJsonValue_Type {.header:headerFile, importcpp:"#.type(@)".} # Public
proc isNull*(this: QJsonValueConstRef): bool {.header:headerFile, importcpp:"#.isNull(@)".} # Public
proc isBool*(this: QJsonValueConstRef): bool {.header:headerFile, importcpp:"#.isBool(@)".} # Public
proc isDouble*(this: QJsonValueConstRef): bool {.header:headerFile, importcpp:"#.isDouble(@)".} # Public
proc isString*(this: QJsonValueConstRef): bool {.header:headerFile, importcpp:"#.isString(@)".} # Public
proc isArray*(this: QJsonValueConstRef): bool {.header:headerFile, importcpp:"#.isArray(@)".} # Public
proc isObject*(this: QJsonValueConstRef): bool {.header:headerFile, importcpp:"#.isObject(@)".} # Public
proc isUndefined*(this: QJsonValueConstRef): bool {.header:headerFile, importcpp:"#.isUndefined(@)".} # Public
# 1 default parameters!
proc toBool*(this: QJsonValueConstRef, defaultValue: bool): bool {.header:headerFile, importcpp:"#.toBool(@)".} # Public
proc toBool*(this: QJsonValueConstRef): bool {.header:headerFile, importcpp:"#.toBool(@)".} # Public
# 1 default parameters!
proc toInt*(this: QJsonValueConstRef, defaultValue: cint): cint {.header:headerFile, importcpp:"#.toInt(@)".} # Public
proc toInt*(this: QJsonValueConstRef): cint {.header:headerFile, importcpp:"#.toInt(@)".} # Public
# 1 default parameters!
proc toInteger*(this: QJsonValueConstRef, defaultValue: clonglong): clonglong {.header:headerFile, importcpp:"#.toInteger(@)".} # Public
proc toInteger*(this: QJsonValueConstRef): clonglong {.header:headerFile, importcpp:"#.toInteger(@)".} # Public
# 1 default parameters!
proc toDouble*(this: QJsonValueConstRef, defaultValue: cdouble): cdouble {.header:headerFile, importcpp:"#.toDouble(@)".} # Public
proc toDouble*(this: QJsonValueConstRef): cdouble {.header:headerFile, importcpp:"#.toDouble(@)".} # Public
# 1 default parameters!
proc toString*(this: QJsonValueConstRef, defaultValue: QString): QString {.header:headerFile, importcpp:"#.toString(@)".} # Public
proc toString*(this: QJsonValueConstRef): QString {.header:headerFile, importcpp:"#.toString(@)".} # Public
proc toArray*(this: QJsonValueConstRef): QJsonArray {.header:headerFile, importcpp:"#.toArray(@)".} # Public
proc toObject*(this: QJsonValueConstRef): QJsonObject {.header:headerFile, importcpp:"#.toObject(@)".} # Public
proc `[]`*(this: QJsonValueConstRef, i: cint): QJsonValue {.header:headerFile, importcpp:"#.operator[](@)".} # Public
proc `!=`*(this: QJsonValueConstRef, other: QJsonValue): bool {.header:headerFile, importcpp:"#.operator!=(@)".} # Public

# Protected methods methods for QJsonValueConstRef
proc static_QJsonValueConstRef_concreteType*(self: QJsonValueConstRef): QJsonValue_Type {.header:headerFile, importcpp:"QJsonValueConstRef::concreteType(@)".} # Protected static
proc static_QJsonValueConstRef_concreteBool*(self: QJsonValueConstRef, defaultValue: bool): bool {.header:headerFile, importcpp:"QJsonValueConstRef::concreteBool(@)".} # Protected static
proc static_QJsonValueConstRef_concreteInt*(self: QJsonValueConstRef, defaultValue: clonglong, clamp: bool): clonglong {.header:headerFile, importcpp:"QJsonValueConstRef::concreteInt(@)".} # Protected static
proc static_QJsonValueConstRef_concreteDouble*(self: QJsonValueConstRef, defaultValue: cdouble): cdouble {.header:headerFile, importcpp:"QJsonValueConstRef::concreteDouble(@)".} # Protected static
proc static_QJsonValueConstRef_concreteString*(self: QJsonValueConstRef, defaultValue: QString): QString {.header:headerFile, importcpp:"QJsonValueConstRef::concreteString(@)".} # Protected static
proc static_QJsonValueConstRef_concrete*(self: QJsonValueConstRef): QJsonValue {.header:headerFile, importcpp:"QJsonValueConstRef::concrete(@)".} # Protected static
proc static_QJsonValueConstRef_objectKey*(self: QJsonValueConstRef): QString {.header:headerFile, importcpp:"QJsonValueConstRef::objectKey(@)".} # Protected static
proc objectKey*(this: QJsonValueConstRef): QString {.header:headerFile, importcpp:"#.objectKey(@)".} # Protected
proc rebind*(this: QJsonValueConstRef, other: QJsonValueConstRef) {.header:headerFile, importcpp:"#.rebind(@)".} # Protected

export qstring
export qjsonarray
export qvariant
export qjsonobject
