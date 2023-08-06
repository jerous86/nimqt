const headerFile* = "QtGui/qimagewriter.h"

type
    # Enums found in the C++ code
    # Global
    QImageWriter_ImageWriterError* {.header:headerFile,importcpp:"QImageWriter::ImageWriterError".} = enum UnknownError = 0, DeviceError = 0x1, UnsupportedFormatError = 0x2, InvalidImageError = 0x3

type
    # Classes found in the C++ code
    QImageWriter* {.header:headerFile,importcpp:"QImageWriter" ,pure,inheritable.} = object

# Stuff for class QImageWriter

# Public constructors for QImageWriter
proc newQImageWriter*(): QImageWriter {. header:headerFile, importcpp:"QImageWriter(@)", constructor .} #
import nimqt/qtcore/qbytearray
import nimqt/qtcore/qiodevice
proc newQImageWriter*(device: ptr QIODevice, format: QByteArray): QImageWriter {. header:headerFile, importcpp:"QImageWriter(@)", constructor .} #
import nimqt/qtcore/qstring
# 1 default parameters!
proc newQImageWriter*(fileName: QString, format: QByteArray): QImageWriter {. header:headerFile, importcpp:"QImageWriter(@)", constructor .} #
proc newQImageWriter*(fileName: QString): QImageWriter {. header:headerFile, importcpp:"QImageWriter(@)", constructor .} #

# Public methods for QImageWriter
# 1 default parameters!
proc static_QImageWriter_tr*(sourceText: ptr char, disambiguation: ptr char, n: cint): QString {.header:headerFile, importcpp:"QImageWriter::tr(@)".} # Public static
proc static_QImageWriter_tr*(sourceText: ptr char, disambiguation: ptr char): QString {.header:headerFile, importcpp:"QImageWriter::tr(@)".} # Public static
proc setFormat*(this: QImageWriter, format: QByteArray) {.header:headerFile, importcpp:"#.setFormat(@)".} # Public
proc format*(this: QImageWriter): QByteArray {.header:headerFile, importcpp:"#.format(@)".} # Public
proc setDevice*(this: QImageWriter, device: ptr QIODevice) {.header:headerFile, importcpp:"#.setDevice(@)".} # Public
proc device*(this: QImageWriter): ptr QIODevice {.header:headerFile, importcpp:"#.device(@)".} # Public
proc setFileName*(this: QImageWriter, fileName: QString) {.header:headerFile, importcpp:"#.setFileName(@)".} # Public
proc fileName*(this: QImageWriter): QString {.header:headerFile, importcpp:"#.fileName(@)".} # Public
proc setQuality*(this: QImageWriter, quality: cint) {.header:headerFile, importcpp:"#.setQuality(@)".} # Public
proc quality*(this: QImageWriter): cint {.header:headerFile, importcpp:"#.quality(@)".} # Public
proc setCompression*(this: QImageWriter, compression: cint) {.header:headerFile, importcpp:"#.setCompression(@)".} # Public
proc compression*(this: QImageWriter): cint {.header:headerFile, importcpp:"#.compression(@)".} # Public
proc setSubType*(this: QImageWriter, `type`: QByteArray) {.header:headerFile, importcpp:"#.setSubType(@)".} # Public
proc subType*(this: QImageWriter): QByteArray {.header:headerFile, importcpp:"#.subType(@)".} # Public
import nimqt/qtcore/qlist
proc supportedSubTypes*(this: QImageWriter): QList[QByteArray] {.header:headerFile, importcpp:"#.supportedSubTypes(@)".} # Public
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
proc static_QImageWriter_supportedImageFormats*(): QList[QByteArray] {.header:headerFile, importcpp:"QImageWriter::supportedImageFormats(@)".} # Public static
proc static_QImageWriter_supportedMimeTypes*(): QList[QByteArray] {.header:headerFile, importcpp:"QImageWriter::supportedMimeTypes(@)".} # Public static
proc static_QImageWriter_imageFormatsForMimeType*(mimeType: QByteArray): QList[QByteArray] {.header:headerFile, importcpp:"QImageWriter::imageFormatsForMimeType(@)".} # Public static

export qstring
export qimage
export qbytearray
export qlist
export qiodevice
export qimageiohandler
