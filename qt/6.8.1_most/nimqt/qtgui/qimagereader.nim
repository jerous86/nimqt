const headerFile* = "QtGui/qimagereader.h"

type
    # Enums found in the C++ code
    # Global
    QImageReader_ImageReaderError* {.header:headerFile,importcpp:"QImageReader::ImageReaderError".} = enum UnknownError = 0, FileNotFoundError = 0x1, DeviceError = 0x2, UnsupportedFormatError = 0x3, 
        InvalidDataError = 0x4

type
    # Classes found in the C++ code
    QImageReader* {.header:headerFile,importcpp:"QImageReader" ,pure,inheritable.} = object

# Stuff for class QImageReader

# Public constructors for QImageReader
proc newQImageReader*(): QImageReader {. header:headerFile, importcpp:"QImageReader(@)", constructor .} #
import nimqt/qtcore/qbytearray
import nimqt/qtcore/qiodevice
# 1 default parameters!
proc newQImageReader*(device: ptr QIODevice, format: QByteArray): QImageReader {. header:headerFile, importcpp:"QImageReader(@)", constructor .} #
proc newQImageReader*(device: ptr QIODevice): QImageReader {. header:headerFile, importcpp:"QImageReader(@)", constructor .} #
import nimqt/qtcore/qstring
# 1 default parameters!
proc newQImageReader*(fileName: QString, format: QByteArray): QImageReader {. header:headerFile, importcpp:"QImageReader(@)", constructor .} #
proc newQImageReader*(fileName: QString): QImageReader {. header:headerFile, importcpp:"QImageReader(@)", constructor .} #

# Public methods for QImageReader
# 1 default parameters!
proc static_QImageReader_tr*(sourceText: ptr char, disambiguation: ptr char, n: cint): QString {.header:headerFile, importcpp:"QImageReader::tr(@)".} # Public static
proc static_QImageReader_tr*(sourceText: ptr char, disambiguation: ptr char): QString {.header:headerFile, importcpp:"QImageReader::tr(@)".} # Public static
proc setFormat*(this: QImageReader, format: QByteArray) {.header:headerFile, importcpp:"#.setFormat(@)".} # Public
proc format*(this: QImageReader): QByteArray {.header:headerFile, importcpp:"#.format(@)".} # Public
proc setAutoDetectImageFormat*(this: QImageReader, enabled: bool) {.header:headerFile, importcpp:"#.setAutoDetectImageFormat(@)".} # Public
proc autoDetectImageFormat*(this: QImageReader): bool {.header:headerFile, importcpp:"#.autoDetectImageFormat(@)".} # Public
proc setDecideFormatFromContent*(this: QImageReader, ignored: bool) {.header:headerFile, importcpp:"#.setDecideFormatFromContent(@)".} # Public
proc decideFormatFromContent*(this: QImageReader): bool {.header:headerFile, importcpp:"#.decideFormatFromContent(@)".} # Public
proc setDevice*(this: QImageReader, device: ptr QIODevice) {.header:headerFile, importcpp:"#.setDevice(@)".} # Public
proc device*(this: QImageReader): ptr QIODevice {.header:headerFile, importcpp:"#.device(@)".} # Public
proc setFileName*(this: QImageReader, fileName: QString) {.header:headerFile, importcpp:"#.setFileName(@)".} # Public
proc fileName*(this: QImageReader): QString {.header:headerFile, importcpp:"#.fileName(@)".} # Public
import nimqt/qtcore/qsize
proc size*(this: QImageReader): QSize {.header:headerFile, importcpp:"#.size(@)".} # Public
import nimqt/qtgui/qimage
proc imageFormat*(this: QImageReader): QImage_Format {.header:headerFile, importcpp:"#.imageFormat(@)".} # Public
import nimqt/qtcore/qstringlist
proc textKeys*(this: QImageReader): QStringList {.header:headerFile, importcpp:"#.textKeys(@)".} # Public
proc text*(this: QImageReader, key: QString): QString {.header:headerFile, importcpp:"#.text(@)".} # Public
import nimqt/qtcore/qrect
proc setClipRect*(this: QImageReader, rect: QRect) {.header:headerFile, importcpp:"#.setClipRect(@)".} # Public
proc clipRect*(this: QImageReader): QRect {.header:headerFile, importcpp:"#.clipRect(@)".} # Public
proc setScaledSize*(this: QImageReader, size: QSize) {.header:headerFile, importcpp:"#.setScaledSize(@)".} # Public
proc scaledSize*(this: QImageReader): QSize {.header:headerFile, importcpp:"#.scaledSize(@)".} # Public
proc setQuality*(this: QImageReader, quality: cint) {.header:headerFile, importcpp:"#.setQuality(@)".} # Public
proc quality*(this: QImageReader): cint {.header:headerFile, importcpp:"#.quality(@)".} # Public
proc setScaledClipRect*(this: QImageReader, rect: QRect) {.header:headerFile, importcpp:"#.setScaledClipRect(@)".} # Public
proc scaledClipRect*(this: QImageReader): QRect {.header:headerFile, importcpp:"#.scaledClipRect(@)".} # Public
import nimqt/qtgui/qcolor
proc setBackgroundColor*(this: QImageReader, color: QColor) {.header:headerFile, importcpp:"#.setBackgroundColor(@)".} # Public
proc backgroundColor*(this: QImageReader): QColor {.header:headerFile, importcpp:"#.backgroundColor(@)".} # Public
proc supportsAnimation*(this: QImageReader): bool {.header:headerFile, importcpp:"#.supportsAnimation(@)".} # Public
import nimqt/qtgui/qimageiohandler
proc transformation*(this: QImageReader): QImageIOHandler_Transformations {.header:headerFile, importcpp:"#.transformation(@)".} # Public
proc setAutoTransform*(this: QImageReader, enabled: bool) {.header:headerFile, importcpp:"#.setAutoTransform(@)".} # Public
proc autoTransform*(this: QImageReader): bool {.header:headerFile, importcpp:"#.autoTransform(@)".} # Public
proc subType*(this: QImageReader): QByteArray {.header:headerFile, importcpp:"#.subType(@)".} # Public
import nimqt/qtcore/qlist
proc supportedSubTypes*(this: QImageReader): QList[QByteArray] {.header:headerFile, importcpp:"#.supportedSubTypes(@)".} # Public
proc canRead*(this: QImageReader): bool {.header:headerFile, importcpp:"#.canRead(@)".} # Public
proc read*(this: QImageReader): QImage {.header:headerFile, importcpp:"#.read(@)".} # Public
proc read*(this: QImageReader, image: ptr QImage): bool {.header:headerFile, importcpp:"#.read(@)".} # Public
proc jumpToNextImage*(this: QImageReader): bool {.header:headerFile, importcpp:"#.jumpToNextImage(@)".} # Public
proc jumpToImage*(this: QImageReader, imageNumber: cint): bool {.header:headerFile, importcpp:"#.jumpToImage(@)".} # Public
proc loopCount*(this: QImageReader): cint {.header:headerFile, importcpp:"#.loopCount(@)".} # Public
proc imageCount*(this: QImageReader): cint {.header:headerFile, importcpp:"#.imageCount(@)".} # Public
proc nextImageDelay*(this: QImageReader): cint {.header:headerFile, importcpp:"#.nextImageDelay(@)".} # Public
proc currentImageNumber*(this: QImageReader): cint {.header:headerFile, importcpp:"#.currentImageNumber(@)".} # Public
proc currentImageRect*(this: QImageReader): QRect {.header:headerFile, importcpp:"#.currentImageRect(@)".} # Public
proc error*(this: QImageReader): QImageReader_ImageReaderError {.header:headerFile, importcpp:"#.error(@)".} # Public
proc errorString*(this: QImageReader): QString {.header:headerFile, importcpp:"#.errorString(@)".} # Public
proc supportsOption*(this: QImageReader, option: QImageIOHandler_ImageOption): bool {.header:headerFile, importcpp:"#.supportsOption(@)".} # Public
proc static_QImageReader_imageFormat*(fileName: QString): QByteArray {.header:headerFile, importcpp:"QImageReader::imageFormat(@)".} # Public static
proc static_QImageReader_imageFormat*(device: ptr QIODevice): QByteArray {.header:headerFile, importcpp:"QImageReader::imageFormat(@)".} # Public static
proc static_QImageReader_supportedImageFormats*(): QList[QByteArray] {.header:headerFile, importcpp:"QImageReader::supportedImageFormats(@)".} # Public static
proc static_QImageReader_supportedMimeTypes*(): QList[QByteArray] {.header:headerFile, importcpp:"QImageReader::supportedMimeTypes(@)".} # Public static
proc static_QImageReader_imageFormatsForMimeType*(mimeType: QByteArray): QList[QByteArray] {.header:headerFile, importcpp:"QImageReader::imageFormatsForMimeType(@)".} # Public static
proc static_QImageReader_allocationLimit*(): cint {.header:headerFile, importcpp:"QImageReader::allocationLimit(@)".} # Public static
proc static_QImageReader_setAllocationLimit*(mbLimit: cint) {.header:headerFile, importcpp:"QImageReader::setAllocationLimit(@)".} # Public static

export qstringlist
export qstring
export qsize
export qimage
export qbytearray
export qlist
export qrect
export qiodevice
export qimageiohandler
export qcolor
