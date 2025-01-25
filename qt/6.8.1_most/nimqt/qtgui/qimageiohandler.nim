const headerFile* = "QtGui/qimageiohandler.h"

type
    # Enums found in the C++ code
    # Global
    QImageIOHandler_ImageOption* {.header:headerFile,importcpp:"QImageIOHandler::ImageOption".} = enum Size = 0, ClipRect = 0x1, Description = 0x2, ScaledClipRect = 0x3, 
        ScaledSize = 0x4, CompressionRatio = 0x5, Gamma = 0x6, Quality = 0x7, Name = 0x8, 
        SubType = 0x9, IncrementalReading = 0xa, Endianness = 0xb, Animation = 0xc, BackgroundColor = 0xd, 
        ImageFormat = 0xe, SupportedSubTypes = 0xf, OptimizedWrite = 0x10, ProgressiveScanWrite = 0x11, ImageTransformation = 0x12
    QImageIOHandler_Transformation* {.header:headerFile,importcpp:"QImageIOHandler::Transformation".} = enum TransformationNone = 0, TransformationMirror = 0x1, TransformationFlip = 0x2, TransformationRotate180 = 0x3, 
        TransformationRotate90 = 0x4, TransformationMirrorAndRotate90 = 0x5, TransformationFlipAndRotate90 = 0x6, TransformationRotate270 = 0x7
    QImageIOPlugin_Capability* {.header:headerFile,importcpp:"QImageIOPlugin::Capability".} = enum CanRead = 0x1, CanWrite = 0x2, CanReadIncremental = 0x4

import nimqt/qtcore/qobject
type
    # Classes found in the C++ code
    QImageIOHandler* {.header:headerFile,importcpp:"QImageIOHandler" ,pure,inheritable.} = object
    QImageIOPlugin* {.header:headerFile,importcpp:"QImageIOPlugin" ,pure.} = object of QObject
import nimqt/qtcore/qflags


type
    # typedefs found in the C++ code
    QImageIOHandler_Transformations * = QFlags[QImageIOHandler_Transformation]
    QImageIOPlugin_Capabilities * = QFlags[QImageIOPlugin_Capability]

# Stuff for class QImageIOHandler

# Public constructors for QImageIOHandler
proc newQImageIOHandler*(): QImageIOHandler {. header:headerFile, importcpp:"QImageIOHandler(@)", constructor .} #

# Public methods for QImageIOHandler
import nimqt/qtcore/qiodevice
proc setDevice*(this: QImageIOHandler, device: ptr QIODevice) {.header:headerFile, importcpp:"#.setDevice(@)".} # Public
proc device*(this: QImageIOHandler): ptr QIODevice {.header:headerFile, importcpp:"#.device(@)".} # Public
import nimqt/qtcore/qbytearray
proc setFormat*(this: QImageIOHandler, format: QByteArray) {.header:headerFile, importcpp:"#.setFormat(@)".} # Public
proc format*(this: QImageIOHandler): QByteArray {.header:headerFile, importcpp:"#.format(@)".} # Public
proc canRead*(this: QImageIOHandler): bool {.header:headerFile, importcpp:"#.canRead(@)".} # Public
import nimqt/qtgui/qimage
proc read*(this: QImageIOHandler, image: ptr QImage): bool {.header:headerFile, importcpp:"#.read(@)".} # Public
proc write*(this: QImageIOHandler, image: QImage): bool {.header:headerFile, importcpp:"#.write(@)".} # Public
import nimqt/qtcore/qvariant
proc option*(this: QImageIOHandler, option: QImageIOHandler_ImageOption): QVariant {.header:headerFile, importcpp:"#.option(@)".} # Public
proc setOption*(this: QImageIOHandler, option: QImageIOHandler_ImageOption, value: QVariant) {.header:headerFile, importcpp:"#.setOption(@)".} # Public
proc supportsOption*(this: QImageIOHandler, option: QImageIOHandler_ImageOption): bool {.header:headerFile, importcpp:"#.supportsOption(@)".} # Public
proc jumpToNextImage*(this: QImageIOHandler): bool {.header:headerFile, importcpp:"#.jumpToNextImage(@)".} # Public
proc jumpToImage*(this: QImageIOHandler, imageNumber: cint): bool {.header:headerFile, importcpp:"#.jumpToImage(@)".} # Public
proc loopCount*(this: QImageIOHandler): cint {.header:headerFile, importcpp:"#.loopCount(@)".} # Public
proc imageCount*(this: QImageIOHandler): cint {.header:headerFile, importcpp:"#.imageCount(@)".} # Public
proc nextImageDelay*(this: QImageIOHandler): cint {.header:headerFile, importcpp:"#.nextImageDelay(@)".} # Public
proc currentImageNumber*(this: QImageIOHandler): cint {.header:headerFile, importcpp:"#.currentImageNumber(@)".} # Public
import nimqt/qtcore/qrect
proc currentImageRect*(this: QImageIOHandler): QRect {.header:headerFile, importcpp:"#.currentImageRect(@)".} # Public
import nimqt/qtcore/qsize
proc static_QImageIOHandler_allocateImage*(size: QSize, format: QImage_Format, image: ptr QImage): bool {.header:headerFile, importcpp:"QImageIOHandler::allocateImage(@)".} # Public static
# Stuff for class QImageIOPlugin

# Public constructors for QImageIOPlugin
# 1 default parameters!
proc newQImageIOPlugin*(parent: ptr QObject): ptr QImageIOPlugin {. header:headerFile, importcpp:"new QImageIOPlugin(@)" .} #
proc newQImageIOPlugin*(): ptr QImageIOPlugin {. header:headerFile, importcpp:"new QImageIOPlugin(@)" .} #

# Public methods for QImageIOPlugin
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QImageIOPlugin_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QImageIOPlugin::tr(@)".} # Public static
proc static_QImageIOPlugin_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QImageIOPlugin::tr(@)".} # Public static
proc capabilities*(this: ptr QImageIOPlugin, device: ptr QIODevice, format: QByteArray): QFlags[QImageIOPlugin_Capability] {.header:headerFile, importcpp:"#.capabilities(@)".} # Public
# 1 default parameters!
proc create*(this: ptr QImageIOPlugin, device: ptr QIODevice, format: QByteArray): ptr QImageIOHandler {.header:headerFile, importcpp:"#.create(@)".} # Public
proc create*(this: ptr QImageIOPlugin, device: ptr QIODevice): ptr QImageIOHandler {.header:headerFile, importcpp:"#.create(@)".} # Public

export qstring
export qsize
export qimage
export qbytearray
export qvariant
export qrect
export qflags
export qobject
export qiodevice
