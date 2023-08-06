const headerFile* = "QtCore/qjsonarray.h"

type
    # Classes found in the C++ code
    QJsonArray* {.header:headerFile,importcpp:"QJsonArray" ,pure,inheritable.} = object
import nimqt/qtcore/qjsonvalue


type
    # typedefs found in the C++ code
    QJsonArray_value_type * = QJsonValue
    QJsonArray_pointer * = ptr QJsonValue
    QJsonArray_const_pointer * = ptr QJsonValue
    QJsonArray_const_reference * = QJsonValue

# Stuff for class QJsonArray

# Public constructors for QJsonArray
proc newQJsonArray*(): QJsonArray {. header:headerFile, importcpp:"QJsonArray(@)", constructor .} #
proc newQJsonArray*(other: QJsonArray): QJsonArray {. header:headerFile, importcpp:"QJsonArray(@)", constructor .} #

# Public methods for QJsonArray
import nimqt/qtcore/qstringlist
proc static_QJsonArray_fromStringList*(list: QStringList): QJsonArray {.header:headerFile, importcpp:"QJsonArray::fromStringList(@)".} # Public static
proc size*(this: QJsonArray): cint {.header:headerFile, importcpp:"#.size(@)".} # Public
proc count*(this: QJsonArray): cint {.header:headerFile, importcpp:"#.count(@)".} # Public
proc isEmpty*(this: QJsonArray): bool {.header:headerFile, importcpp:"#.isEmpty(@)".} # Public
proc at*(this: QJsonArray, i: cint): QJsonValue {.header:headerFile, importcpp:"#.at(@)".} # Public
proc first*(this: QJsonArray): QJsonValue {.header:headerFile, importcpp:"#.first(@)".} # Public
proc last*(this: QJsonArray): QJsonValue {.header:headerFile, importcpp:"#.last(@)".} # Public
proc prepend*(this: QJsonArray, value: QJsonValue) {.header:headerFile, importcpp:"#.prepend(@)".} # Public
proc append*(this: QJsonArray, value: QJsonValue) {.header:headerFile, importcpp:"#.append(@)".} # Public
proc removeAt*(this: QJsonArray, i: cint) {.header:headerFile, importcpp:"#.removeAt(@)".} # Public
proc takeAt*(this: QJsonArray, i: cint): QJsonValue {.header:headerFile, importcpp:"#.takeAt(@)".} # Public
proc removeFirst*(this: QJsonArray) {.header:headerFile, importcpp:"#.removeFirst(@)".} # Public
proc removeLast*(this: QJsonArray) {.header:headerFile, importcpp:"#.removeLast(@)".} # Public
proc insert*(this: QJsonArray, i: cint, value: QJsonValue) {.header:headerFile, importcpp:"#.insert(@)".} # Public
proc replace*(this: QJsonArray, i: cint, value: QJsonValue) {.header:headerFile, importcpp:"#.replace(@)".} # Public
proc contains*(this: QJsonArray, element: QJsonValue): bool {.header:headerFile, importcpp:"#.contains(@)".} # Public
proc `[]`*(this: QJsonArray, i: cint): QJsonValue {.header:headerFile, importcpp:"#.operator[](@)".} # Public
proc `!=`*(this: QJsonArray, other: QJsonArray): bool {.header:headerFile, importcpp:"#.operator!=(@)".} # Public
proc swap*(this: QJsonArray, other: QJsonArray) {.header:headerFile, importcpp:"#.swap(@)".} # Public
proc `+`*(this: QJsonArray, v: QJsonValue): QJsonArray {.header:headerFile, importcpp:"#.operator+(@)".} # Public
proc `+=`*(this: QJsonArray, v: QJsonValue): QJsonArray {.header:headerFile, importcpp:"#.operator+=(@)".} # Public
proc `<<`*(this: QJsonArray, v: QJsonValue): QJsonArray {.header:headerFile, importcpp:"#.operator<<(@)".} # Public
proc push_back*(this: QJsonArray, t: QJsonValue) {.header:headerFile, importcpp:"#.push_back(@)".} # Public
proc push_front*(this: QJsonArray, t: QJsonValue) {.header:headerFile, importcpp:"#.push_front(@)".} # Public
proc pop_front*(this: QJsonArray) {.header:headerFile, importcpp:"#.pop_front(@)".} # Public
proc pop_back*(this: QJsonArray) {.header:headerFile, importcpp:"#.pop_back(@)".} # Public
proc empty*(this: QJsonArray): bool {.header:headerFile, importcpp:"#.empty(@)".} # Public

export qstringlist
export qjsonvalue
