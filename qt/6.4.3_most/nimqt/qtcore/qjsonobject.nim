const headerFile* = "QtCore/qjsonobject.h"

type
    # Classes found in the C++ code
    QJsonObject* {.header:headerFile,importcpp:"QJsonObject" ,pure,inheritable.} = object
import nimqt/qtcore/qjsonvalue
import nimqt/qtcore/qstring


type
    # typedefs found in the C++ code
    QJsonObject_mapped_type * = QJsonValue
    QJsonObject_key_type * = QString

# Stuff for class QJsonObject

# Public constructors for QJsonObject
proc newQJsonObject*(): QJsonObject {. header:headerFile, importcpp:"QJsonObject(@)", constructor .} #
proc newQJsonObject*(args: cint): QJsonObject {. header:headerFile, importcpp:"QJsonObject(@)", constructor .} #
proc newQJsonObject*(other: QJsonObject): QJsonObject {. header:headerFile, importcpp:"QJsonObject(@)", constructor .} #

# Public methods for QJsonObject
proc swap*(this: QJsonObject, other: QJsonObject) {.header:headerFile, importcpp:"#.swap(@)".} # Public
import nimqt/qtcore/qstringlist
proc keys*(this: QJsonObject): QStringList {.header:headerFile, importcpp:"#.keys(@)".} # Public
proc size*(this: QJsonObject): cint {.header:headerFile, importcpp:"#.size(@)".} # Public
proc count*(this: QJsonObject): cint {.header:headerFile, importcpp:"#.count(@)".} # Public
proc length*(this: QJsonObject): cint {.header:headerFile, importcpp:"#.length(@)".} # Public
proc isEmpty*(this: QJsonObject): bool {.header:headerFile, importcpp:"#.isEmpty(@)".} # Public
proc value*(this: QJsonObject, key: QString): QJsonValue {.header:headerFile, importcpp:"#.value(@)".} # Public
proc `[]`*(this: QJsonObject, key: QString): QJsonValue {.header:headerFile, importcpp:"#.operator[](@)".} # Public
proc remove*(this: QJsonObject, key: QString) {.header:headerFile, importcpp:"#.remove(@)".} # Public
proc take*(this: QJsonObject, key: QString): QJsonValue {.header:headerFile, importcpp:"#.take(@)".} # Public
proc contains*(this: QJsonObject, key: QString): bool {.header:headerFile, importcpp:"#.contains(@)".} # Public
proc `!=`*(this: QJsonObject, other: QJsonObject): bool {.header:headerFile, importcpp:"#.operator!=(@)".} # Public
proc empty*(this: QJsonObject): bool {.header:headerFile, importcpp:"#.empty(@)".} # Public

export qstringlist
export qstring
export qjsonvalue
