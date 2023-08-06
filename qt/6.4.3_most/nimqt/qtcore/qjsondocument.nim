const headerFile* = "QtCore/qjsondocument.h"

type
    # Enums found in the C++ code
    # Global
    QJsonParseError_ParseError* {.header:headerFile,importcpp:"QJsonParseError::ParseError".} = enum NoError = 0, UnterminatedObject = 0x1, MissingNameSeparator = 0x2, UnterminatedArray = 0x3, 
        MissingValueSeparator = 0x4, IllegalValue = 0x5, TerminationByNumber = 0x6, IllegalNumber = 0x7, IllegalEscapeSequence = 0x8, 
        IllegalUTF8String = 0x9, UnterminatedString = 0xa, MissingObject = 0xb, DeepNesting = 0xc, DocumentTooLarge = 0xd, 
        GarbageAtEnd = 0xe
    QJsonDocument_JsonFormat* {.header:headerFile,importcpp:"QJsonDocument::JsonFormat".} = enum Indented = 0, Compact = 0x1

type
    # Classes found in the C++ code
    QJsonParseError* {.header:headerFile,importcpp:"QJsonParseError" ,pure,inheritable.} = object
    QJsonDocument* {.header:headerFile,importcpp:"QJsonDocument" ,pure,inheritable.} = object

# Stuff for class QJsonParseError

# Public methods for QJsonParseError
import nimqt/qtcore/qstring
proc errorString*(this: QJsonParseError): QString {.header:headerFile, importcpp:"#.errorString(@)".} # Public
# Stuff for class QJsonDocument

# Public constructors for QJsonDocument
proc newQJsonDocument*(): QJsonDocument {. header:headerFile, importcpp:"QJsonDocument(@)", constructor .} #
import nimqt/qtcore/qjsonobject
proc newQJsonDocument*(`object`: QJsonObject): QJsonDocument {. header:headerFile, importcpp:"QJsonDocument(@)", constructor .} #
import nimqt/qtcore/qjsonarray
proc newQJsonDocument*(array: QJsonArray): QJsonDocument {. header:headerFile, importcpp:"QJsonDocument(@)", constructor .} #
proc newQJsonDocument*(other: QJsonDocument): QJsonDocument {. header:headerFile, importcpp:"QJsonDocument(@)", constructor .} #

# Public methods for QJsonDocument
proc swap*(this: QJsonDocument, other: QJsonDocument) {.header:headerFile, importcpp:"#.swap(@)".} # Public
import nimqt/qtcore/qvariant
proc static_QJsonDocument_fromVariant*(variant: QVariant): QJsonDocument {.header:headerFile, importcpp:"QJsonDocument::fromVariant(@)".} # Public static
proc toVariant*(this: QJsonDocument): QVariant {.header:headerFile, importcpp:"#.toVariant(@)".} # Public
import nimqt/qtcore/qbytearray
# 1 default parameters!
proc static_QJsonDocument_fromJson*(json: QByteArray, error: ptr QJsonParseError): QJsonDocument {.header:headerFile, importcpp:"QJsonDocument::fromJson(@)".} # Public static
proc static_QJsonDocument_fromJson*(json: QByteArray): QJsonDocument {.header:headerFile, importcpp:"QJsonDocument::fromJson(@)".} # Public static
proc toJson*(this: QJsonDocument, format: QJsonDocument_JsonFormat): QByteArray {.header:headerFile, importcpp:"#.toJson(@)".} # Public
proc isEmpty*(this: QJsonDocument): bool {.header:headerFile, importcpp:"#.isEmpty(@)".} # Public
proc isArray*(this: QJsonDocument): bool {.header:headerFile, importcpp:"#.isArray(@)".} # Public
proc isObject*(this: QJsonDocument): bool {.header:headerFile, importcpp:"#.isObject(@)".} # Public
proc `object`*(this: QJsonDocument): QJsonObject {.header:headerFile, importcpp:"#.object(@)".} # Public
proc array*(this: QJsonDocument): QJsonArray {.header:headerFile, importcpp:"#.array(@)".} # Public
proc setObject*(this: QJsonDocument, `object`: QJsonObject) {.header:headerFile, importcpp:"#.setObject(@)".} # Public
proc setArray*(this: QJsonDocument, array: QJsonArray) {.header:headerFile, importcpp:"#.setArray(@)".} # Public
import nimqt/qtcore/qjsonvalue
proc `[]`*(this: QJsonDocument, key: QString): QJsonValue {.header:headerFile, importcpp:"#.operator[](@)".} # Public
proc `[]`*(this: QJsonDocument, i: cint): QJsonValue {.header:headerFile, importcpp:"#.operator[](@)".} # Public
proc `!=`*(this: QJsonDocument, other: QJsonDocument): bool {.header:headerFile, importcpp:"#.operator!=(@)".} # Public
proc isNull*(this: QJsonDocument): bool {.header:headerFile, importcpp:"#.isNull(@)".} # Public

export qstring
export qjsonvalue
export qjsonarray
export qbytearray
export qvariant
export qjsonobject
