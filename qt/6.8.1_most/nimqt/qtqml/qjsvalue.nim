const headerFile* = "QtQml/qjsvalue.h"

type
    # Enums found in the C++ code
    # Global
    QJSValue_SpecialValue* {.header:headerFile,importcpp:"QJSValue::SpecialValue".} = enum NullValue = 0, UndefinedValue = 0x1
    QJSValue_ErrorType* {.header:headerFile,importcpp:"QJSValue::ErrorType".} = enum NoError = 0, GenericError = 0x1, EvalError = 0x2, RangeError = 0x3, 
        ReferenceError = 0x4, SyntaxError = 0x5, TypeError = 0x6, URIError = 0x7
    QJSValue_ObjectConversionBehavior* {.header:headerFile,importcpp:"QJSValue::ObjectConversionBehavior".} = enum ConvertJSObjects = 0, RetainJSObjects = 0x1

type
    # Classes found in the C++ code
    QJSValue* {.header:headerFile,importcpp:"QJSValue" ,pure,inheritable.} = object
import nimqt/qtcore/qlist


type
    # typedefs found in the C++ code
    QJSValueList * = QList[QJSValue]

# Stuff for class QJSValue

# Public constructors for QJSValue
proc newQJSValue*(value: QJSValue_SpecialValue): QJSValue {. header:headerFile, importcpp:"QJSValue(@)", constructor .} #
proc newQJSValue*(other: QJSValue): QJSValue {. header:headerFile, importcpp:"QJSValue(@)", constructor .} #
proc newQJSValue*(value: bool): QJSValue {. header:headerFile, importcpp:"QJSValue(@)", constructor .} #
proc newQJSValue*(value: cint): QJSValue {. header:headerFile, importcpp:"QJSValue(@)", constructor .} #
proc newQJSValue*(value: cuint): QJSValue {. header:headerFile, importcpp:"QJSValue(@)", constructor .} #
proc newQJSValue*(value: cdouble): QJSValue {. header:headerFile, importcpp:"QJSValue(@)", constructor .} #
import nimqt/qtcore/qstring
proc newQJSValue*(value: QString): QJSValue {. header:headerFile, importcpp:"QJSValue(@)", constructor .} #
proc newQJSValue*(value: QLatin1String): QJSValue {. header:headerFile, importcpp:"QJSValue(@)", constructor .} #
proc newQJSValue*(str: ptr char): QJSValue {. header:headerFile, importcpp:"QJSValue(@)", constructor .} #

# Public methods for QJSValue
proc isBool*(this: QJSValue): bool {.header:headerFile, importcpp:"#.isBool(@)".} # Public
proc isNumber*(this: QJSValue): bool {.header:headerFile, importcpp:"#.isNumber(@)".} # Public
proc isNull*(this: QJSValue): bool {.header:headerFile, importcpp:"#.isNull(@)".} # Public
proc isString*(this: QJSValue): bool {.header:headerFile, importcpp:"#.isString(@)".} # Public
proc isUndefined*(this: QJSValue): bool {.header:headerFile, importcpp:"#.isUndefined(@)".} # Public
proc isVariant*(this: QJSValue): bool {.header:headerFile, importcpp:"#.isVariant(@)".} # Public
proc isQObject*(this: QJSValue): bool {.header:headerFile, importcpp:"#.isQObject(@)".} # Public
proc isObject*(this: QJSValue): bool {.header:headerFile, importcpp:"#.isObject(@)".} # Public
proc isDate*(this: QJSValue): bool {.header:headerFile, importcpp:"#.isDate(@)".} # Public
proc isRegExp*(this: QJSValue): bool {.header:headerFile, importcpp:"#.isRegExp(@)".} # Public
proc isArray*(this: QJSValue): bool {.header:headerFile, importcpp:"#.isArray(@)".} # Public
proc isError*(this: QJSValue): bool {.header:headerFile, importcpp:"#.isError(@)".} # Public
proc isUrl*(this: QJSValue): bool {.header:headerFile, importcpp:"#.isUrl(@)".} # Public
proc toString*(this: QJSValue): QString {.header:headerFile, importcpp:"#.toString(@)".} # Public
proc toNumber*(this: QJSValue): cdouble {.header:headerFile, importcpp:"#.toNumber(@)".} # Public
proc toInt*(this: QJSValue): clong {.header:headerFile, importcpp:"#.toInt(@)".} # Public
proc toUInt*(this: QJSValue): cuint {.header:headerFile, importcpp:"#.toUInt(@)".} # Public
proc toBool*(this: QJSValue): bool {.header:headerFile, importcpp:"#.toBool(@)".} # Public
import nimqt/qtcore/qvariant
proc toVariant*(this: QJSValue): QVariant {.header:headerFile, importcpp:"#.toVariant(@)".} # Public
proc toVariant*(this: QJSValue, behavior: QJSValue_ObjectConversionBehavior): QVariant {.header:headerFile, importcpp:"#.toVariant(@)".} # Public
import nimqt/qtcore/qobject
proc toQObject*(this: QJSValue): ptr QObject {.header:headerFile, importcpp:"#.toQObject(@)".} # Public
import nimqt/qtcore/qdatetime
proc toDateTime*(this: QJSValue): QDateTime {.header:headerFile, importcpp:"#.toDateTime(@)".} # Public
proc equals*(this: QJSValue, other: QJSValue): bool {.header:headerFile, importcpp:"#.equals(@)".} # Public
proc strictlyEquals*(this: QJSValue, other: QJSValue): bool {.header:headerFile, importcpp:"#.strictlyEquals(@)".} # Public
proc prototype*(this: QJSValue): QJSValue {.header:headerFile, importcpp:"#.prototype(@)".} # Public
proc setPrototype*(this: QJSValue, prototype: QJSValue) {.header:headerFile, importcpp:"#.setPrototype(@)".} # Public
proc property*(this: QJSValue, name: QString): QJSValue {.header:headerFile, importcpp:"#.property(@)".} # Public
proc setProperty*(this: QJSValue, name: QString, value: QJSValue) {.header:headerFile, importcpp:"#.setProperty(@)".} # Public
proc hasProperty*(this: QJSValue, name: QString): bool {.header:headerFile, importcpp:"#.hasProperty(@)".} # Public
proc hasOwnProperty*(this: QJSValue, name: QString): bool {.header:headerFile, importcpp:"#.hasOwnProperty(@)".} # Public
proc property*(this: QJSValue, arrayIndex: cuint): QJSValue {.header:headerFile, importcpp:"#.property(@)".} # Public
proc setProperty*(this: QJSValue, arrayIndex: cuint, value: QJSValue) {.header:headerFile, importcpp:"#.setProperty(@)".} # Public
proc deleteProperty*(this: QJSValue, name: QString): bool {.header:headerFile, importcpp:"#.deleteProperty(@)".} # Public
proc isCallable*(this: QJSValue): bool {.header:headerFile, importcpp:"#.isCallable(@)".} # Public
# 1 default parameters!
proc call*(this: QJSValue, args: QJSValueList): QJSValue {.header:headerFile, importcpp:"#.call(@)".} # Public
proc call*(this: QJSValue): QJSValue {.header:headerFile, importcpp:"#.call(@)".} # Public
# 1 default parameters!
proc callWithInstance*(this: QJSValue, instance: QJSValue, args: QJSValueList): QJSValue {.header:headerFile, importcpp:"#.callWithInstance(@)".} # Public
proc callWithInstance*(this: QJSValue, instance: QJSValue): QJSValue {.header:headerFile, importcpp:"#.callWithInstance(@)".} # Public
# 1 default parameters!
proc callAsConstructor*(this: QJSValue, args: QJSValueList): QJSValue {.header:headerFile, importcpp:"#.callAsConstructor(@)".} # Public
proc callAsConstructor*(this: QJSValue): QJSValue {.header:headerFile, importcpp:"#.callAsConstructor(@)".} # Public
proc errorType*(this: QJSValue): QJSValue_ErrorType {.header:headerFile, importcpp:"#.errorType(@)".} # Public

export qstring
export qlist
export qdatetime
export qvariant
export qobject
