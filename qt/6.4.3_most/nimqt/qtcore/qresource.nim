const headerFile* = "QtCore/qresource.h"

type
    # Enums found in the C++ code
    # Global
    QResource_Compression* {.header:headerFile,importcpp:"QResource::Compression".} = enum NoCompression = 0, ZlibCompression = 0x1, ZstdCompression = 0x2

type
    # Classes found in the C++ code
    QResource* {.header:headerFile,importcpp:"QResource" ,pure,inheritable.} = object

# Stuff for class QResource

# Public constructors for QResource
import nimqt/qtcore/qstring
import nimqt/qtcore/qlocale
# 2 default parameters!
proc newQResource*(file: QString, locale: QLocale): QResource {. header:headerFile, importcpp:"QResource(@)", constructor .} #
proc newQResource*(file: QString): QResource {. header:headerFile, importcpp:"QResource(@)", constructor .} #
proc newQResource*(): QResource {. header:headerFile, importcpp:"QResource(@)", constructor .} #

# Public methods for QResource
proc setFileName*(this: QResource, file: QString) {.header:headerFile, importcpp:"#.setFileName(@)".} # Public
proc fileName*(this: QResource): QString {.header:headerFile, importcpp:"#.fileName(@)".} # Public
proc absoluteFilePath*(this: QResource): QString {.header:headerFile, importcpp:"#.absoluteFilePath(@)".} # Public
proc setLocale*(this: QResource, locale: QLocale) {.header:headerFile, importcpp:"#.setLocale(@)".} # Public
proc locale*(this: QResource): QLocale {.header:headerFile, importcpp:"#.locale(@)".} # Public
proc isValid*(this: QResource): bool {.header:headerFile, importcpp:"#.isValid(@)".} # Public
proc compressionAlgorithm*(this: QResource): QResource_Compression {.header:headerFile, importcpp:"#.compressionAlgorithm(@)".} # Public
proc size*(this: QResource): clonglong {.header:headerFile, importcpp:"#.size(@)".} # Public
proc data*(this: QResource): ptr char {.header:headerFile, importcpp:"#.data(@)".} # Public
proc uncompressedSize*(this: QResource): clonglong {.header:headerFile, importcpp:"#.uncompressedSize(@)".} # Public
import nimqt/qtcore/qbytearray
proc uncompressedData*(this: QResource): QByteArray {.header:headerFile, importcpp:"#.uncompressedData(@)".} # Public
import nimqt/qtcore/qdatetime
proc lastModified*(this: QResource): QDateTime {.header:headerFile, importcpp:"#.lastModified(@)".} # Public
# 1 default parameters!
proc static_QResource_registerResource*(rccFilename: QString, resourceRoot: QString): bool {.header:headerFile, importcpp:"QResource::registerResource(@)".} # Public static
proc static_QResource_registerResource*(rccFilename: QString): bool {.header:headerFile, importcpp:"QResource::registerResource(@)".} # Public static
# 1 default parameters!
proc static_QResource_unregisterResource*(rccFilename: QString, resourceRoot: QString): bool {.header:headerFile, importcpp:"QResource::unregisterResource(@)".} # Public static
proc static_QResource_unregisterResource*(rccFilename: QString): bool {.header:headerFile, importcpp:"QResource::unregisterResource(@)".} # Public static
# 1 default parameters!
proc static_QResource_registerResource*(rccData: ptr char, resourceRoot: QString): bool {.header:headerFile, importcpp:"QResource::registerResource(@)".} # Public static
proc static_QResource_registerResource*(rccData: ptr char): bool {.header:headerFile, importcpp:"QResource::registerResource(@)".} # Public static
# 1 default parameters!
proc static_QResource_unregisterResource*(rccData: ptr char, resourceRoot: QString): bool {.header:headerFile, importcpp:"QResource::unregisterResource(@)".} # Public static
proc static_QResource_unregisterResource*(rccData: ptr char): bool {.header:headerFile, importcpp:"QResource::unregisterResource(@)".} # Public static

# Protected methods methods for QResource
proc isDir*(this: QResource): bool {.header:headerFile, importcpp:"#.isDir(@)".} # Protected
proc isFile*(this: QResource): bool {.header:headerFile, importcpp:"#.isFile(@)".} # Protected
import nimqt/qtcore/qstringlist
proc children*(this: QResource): QStringList {.header:headerFile, importcpp:"#.children(@)".} # Protected

export qstringlist
export qstring
export qlocale
export qbytearray
export qdatetime
