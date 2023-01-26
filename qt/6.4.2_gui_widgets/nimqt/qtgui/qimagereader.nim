const headerFile* = "QtGui/qimagereader.h"

# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}


type
    # Classes and enums found in the C++ code
    # Global
    QImageReader_ImageReaderError* {.header:headerFile,importcpp:"QImageReader::ImageReaderError".} = enum UnknownError = 0, FileNotFoundError = 0x1, DeviceError = 0x2, UnsupportedFormatError = 0x3, 
        InvalidDataError = 0x4
    QImageReader* {.header:headerFile,importcpp:"QImageReader" ,pure.} = object {.inheritable.}
{.push warning[Deprecated]: on.}

# Stuff for class QImageReader

# Public constructors for QImageReader
proc newQImageReader*(): QImageReader {. header:headerFile, importcpp:"QImageReader(@)", constructor .} #

# Public methods for QImageReader
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QImageReader_tr*(sourceText: ptr char, disambiguation: ptr char, n: cint): QString {.header:headerFile, importcpp:"QImageReader::tr(@)".} # Public static
proc static_QImageReader_tr*(sourceText: ptr char, disambiguation: ptr char): QString {.header:headerFile, importcpp:"QImageReader::tr(@)".} # Public static
proc setAutoDetectImageFormat*(this: QImageReader, enabled: bool) {.header:headerFile, importcpp:"#.setAutoDetectImageFormat(@)".} # Public
proc autoDetectImageFormat*(this: QImageReader): bool {.header:headerFile, importcpp:"#.autoDetectImageFormat(@)".} # Public
proc setDecideFormatFromContent*(this: QImageReader, ignored: bool) {.header:headerFile, importcpp:"#.setDecideFormatFromContent(@)".} # Public
proc decideFormatFromContent*(this: QImageReader): bool {.header:headerFile, importcpp:"#.decideFormatFromContent(@)".} # Public
proc setFileName*(this: QImageReader, fileName: QString) {.header:headerFile, importcpp:"#.setFileName(@)".} # Public
proc fileName*(this: QImageReader): QString {.header:headerFile, importcpp:"#.fileName(@)".} # Public
import nimqt/qtgui/qimage
proc imageFormat*(this: QImageReader): QImage_Format {.header:headerFile, importcpp:"#.imageFormat(@)".} # Public
proc text*(this: QImageReader, key: QString): QString {.header:headerFile, importcpp:"#.text(@)".} # Public
proc setQuality*(this: QImageReader, quality: cint) {.header:headerFile, importcpp:"#.setQuality(@)".} # Public
proc quality*(this: QImageReader): cint {.header:headerFile, importcpp:"#.quality(@)".} # Public
import nimqt/qtgui/qcolor
proc setBackgroundColor*(this: QImageReader, color: QColor) {.header:headerFile, importcpp:"#.setBackgroundColor(@)".} # Public
proc backgroundColor*(this: QImageReader): QColor {.header:headerFile, importcpp:"#.backgroundColor(@)".} # Public
proc supportsAnimation*(this: QImageReader): bool {.header:headerFile, importcpp:"#.supportsAnimation(@)".} # Public
import nimqt/qtgui/qimageiohandler
proc transformation*(this: QImageReader): QImageIOHandler_Transformations {.header:headerFile, importcpp:"#.transformation(@)".} # Public
proc setAutoTransform*(this: QImageReader, enabled: bool) {.header:headerFile, importcpp:"#.setAutoTransform(@)".} # Public
proc autoTransform*(this: QImageReader): bool {.header:headerFile, importcpp:"#.autoTransform(@)".} # Public
proc canRead*(this: QImageReader): bool {.header:headerFile, importcpp:"#.canRead(@)".} # Public
proc read*(this: QImageReader): QImage {.header:headerFile, importcpp:"#.read(@)".} # Public
proc read*(this: QImageReader, image: ptr QImage): bool {.header:headerFile, importcpp:"#.read(@)".} # Public
proc jumpToNextImage*(this: QImageReader): bool {.header:headerFile, importcpp:"#.jumpToNextImage(@)".} # Public
proc jumpToImage*(this: QImageReader, imageNumber: cint): bool {.header:headerFile, importcpp:"#.jumpToImage(@)".} # Public
proc loopCount*(this: QImageReader): cint {.header:headerFile, importcpp:"#.loopCount(@)".} # Public
proc imageCount*(this: QImageReader): cint {.header:headerFile, importcpp:"#.imageCount(@)".} # Public
proc nextImageDelay*(this: QImageReader): cint {.header:headerFile, importcpp:"#.nextImageDelay(@)".} # Public
proc currentImageNumber*(this: QImageReader): cint {.header:headerFile, importcpp:"#.currentImageNumber(@)".} # Public
proc error*(this: QImageReader): QImageReader_ImageReaderError {.header:headerFile, importcpp:"#.error(@)".} # Public
proc errorString*(this: QImageReader): QString {.header:headerFile, importcpp:"#.errorString(@)".} # Public
proc supportsOption*(this: QImageReader, option: QImageIOHandler_ImageOption): bool {.header:headerFile, importcpp:"#.supportsOption(@)".} # Public
proc static_QImageReader_allocationLimit*(): cint {.header:headerFile, importcpp:"QImageReader::allocationLimit(@)".} # Public static
proc static_QImageReader_setAllocationLimit*(mbLimit: cint) {.header:headerFile, importcpp:"QImageReader::setAllocationLimit(@)".} # Public static

export qstring
export qimage
export qimageiohandler
export qcolor