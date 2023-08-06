const headerFile* = "QtCore/qmimedatabase.h"

type
    # Enums found in the C++ code
    # Global
    QMimeDatabase_MatchMode* {.header:headerFile,importcpp:"QMimeDatabase::MatchMode".} = enum MatchDefault = 0, MatchExtension = 0x1, MatchContent = 0x2

type
    # Classes found in the C++ code
    QMimeDatabase* {.header:headerFile,importcpp:"QMimeDatabase" ,pure,inheritable.} = object

# Stuff for class QMimeDatabase

# Public constructors for QMimeDatabase
proc newQMimeDatabase*(): QMimeDatabase {. header:headerFile, importcpp:"QMimeDatabase(@)", constructor .} #

# Public methods for QMimeDatabase
import nimqt/qtcore/qmimetype
import nimqt/qtcore/qstring
proc mimeTypeForName*(this: QMimeDatabase, nameOrAlias: QString): QMimeType {.header:headerFile, importcpp:"#.mimeTypeForName(@)".} # Public
proc mimeTypeForFile*(this: QMimeDatabase, fileName: QString, mode: QMimeDatabase_MatchMode): QMimeType {.header:headerFile, importcpp:"#.mimeTypeForFile(@)".} # Public
import nimqt/qtcore/qfileinfo
proc mimeTypeForFile*(this: QMimeDatabase, fileInfo: QFileInfo, mode: QMimeDatabase_MatchMode): QMimeType {.header:headerFile, importcpp:"#.mimeTypeForFile(@)".} # Public
import nimqt/qtcore/qlist
proc mimeTypesForFileName*(this: QMimeDatabase, fileName: QString): QList[QMimeType] {.header:headerFile, importcpp:"#.mimeTypesForFileName(@)".} # Public
import nimqt/qtcore/qbytearray
proc mimeTypeForData*(this: QMimeDatabase, data: QByteArray): QMimeType {.header:headerFile, importcpp:"#.mimeTypeForData(@)".} # Public
import nimqt/qtcore/qiodevice
proc mimeTypeForData*(this: QMimeDatabase, device: ptr QIODevice): QMimeType {.header:headerFile, importcpp:"#.mimeTypeForData(@)".} # Public
import nimqt/qtcore/qurl
proc mimeTypeForUrl*(this: QMimeDatabase, url: QUrl): QMimeType {.header:headerFile, importcpp:"#.mimeTypeForUrl(@)".} # Public
proc mimeTypeForFileNameAndData*(this: QMimeDatabase, fileName: QString, device: ptr QIODevice): QMimeType {.header:headerFile, importcpp:"#.mimeTypeForFileNameAndData(@)".} # Public
proc mimeTypeForFileNameAndData*(this: QMimeDatabase, fileName: QString, data: QByteArray): QMimeType {.header:headerFile, importcpp:"#.mimeTypeForFileNameAndData(@)".} # Public
proc suffixForFileName*(this: QMimeDatabase, fileName: QString): QString {.header:headerFile, importcpp:"#.suffixForFileName(@)".} # Public
proc allMimeTypes*(this: QMimeDatabase): QList[QMimeType] {.header:headerFile, importcpp:"#.allMimeTypes(@)".} # Public

export qmimetype
export qurl
export qstring
export qbytearray
export qlist
export qfileinfo
export qiodevice
