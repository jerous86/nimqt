const headerFile* = "QtGui/qimagewriter.h"

# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}


type
    # Classes and enums found in the C++ code
    # Global
    QImageWriter_ImageWriterError* {.header:headerFile,importcpp:"QImageWriter::ImageWriterError".} = enum UnknownError = 0, DeviceError = 0x1, UnsupportedFormatError = 0x2, InvalidImageError = 0x3
    QImageWriter* {.header:headerFile,importcpp:"QImageWriter" ,pure.} = object {.inheritable.}
{.push warning[Deprecated]: on.}

# Stuff for class QImageWriter

# Public constructors for QImageWriter
proc newQImageWriter*(): QImageWriter {. header:headerFile, importcpp:"QImageWriter(@)", constructor .} #

# Public methods for QImageWriter
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QImageWriter_tr*(sourceText: ptr char, disambiguation: ptr char, n: cint): QString {.header:headerFile, importcpp:"QImageWriter::tr(@)".} # Public static
proc static_QImageWriter_tr*(sourceText: ptr char, disambiguation: ptr char): QString {.header:headerFile, importcpp:"QImageWriter::tr(@)".} # Public static
proc setFileName*(this: QImageWriter, fileName: QString) {.header:headerFile, importcpp:"#.setFileName(@)".} # Public
proc fileName*(this: QImageWriter): QString {.header:headerFile, importcpp:"#.fileName(@)".} # Public
proc setQuality*(this: QImageWriter, quality: cint) {.header:headerFile, importcpp:"#.setQuality(@)".} # Public
proc quality*(this: QImageWriter): cint {.header:headerFile, importcpp:"#.quality(@)".} # Public
proc setCompression*(this: QImageWriter, compression: cint) {.header:headerFile, importcpp:"#.setCompression(@)".} # Public
proc compression*(this: QImageWriter): cint {.header:headerFile, importcpp:"#.compression(@)".} # Public
proc setOptimizedWrite*(this: QImageWriter, optimize: bool) {.header:headerFile, importcpp:"#.setOptimizedWrite(@)".} # Public
proc optimizedWrite*(this: QImageWriter): bool {.header:headerFile, importcpp:"#.optimizedWrite(@)".} # Public
proc setProgressiveScanWrite*(this: QImageWriter, progressive: bool) {.header:headerFile, importcpp:"#.setProgressiveScanWrite(@)".} # Public
proc progressiveScanWrite*(this: QImageWriter): bool {.header:headerFile, importcpp:"#.progressiveScanWrite(@)".} # Public
import nimqt/qtgui/qimageiohandler
proc transformation*(this: QImageWriter): QImageIOHandler_Transformations {.header:headerFile, importcpp:"#.transformation(@)".} # Public
proc setTransformation*(this: QImageWriter, orientation: QImageIOHandler_Transformations) {.header:headerFile, importcpp:"#.setTransformation(@)".} # Public
proc setText*(this: QImageWriter, key: QString, text: QString) {.header:headerFile, importcpp:"#.setText(@)".} # Public
proc canWrite*(this: QImageWriter): bool {.header:headerFile, importcpp:"#.canWrite(@)".} # Public
import nimqt/qtgui/qimage
proc write*(this: QImageWriter, image: QImage): bool {.header:headerFile, importcpp:"#.write(@)".} # Public
proc error*(this: QImageWriter): QImageWriter_ImageWriterError {.header:headerFile, importcpp:"#.error(@)".} # Public
proc errorString*(this: QImageWriter): QString {.header:headerFile, importcpp:"#.errorString(@)".} # Public
proc supportsOption*(this: QImageWriter, option: QImageIOHandler_ImageOption): bool {.header:headerFile, importcpp:"#.supportsOption(@)".} # Public

export qstring
export qimage
export qimageiohandler