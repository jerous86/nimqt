const headerFile* = "QtGui/qimage.h"

type
    # Enums found in the C++ code
    # Global
    QImage_InvertMode* {.header:headerFile,importcpp:"QImage::InvertMode".} = enum InvertRgb = 0, InvertRgba = 0x1
    QImage_Format* {.header:headerFile,importcpp:"QImage::Format".} = enum Format_Invalid = 0, Format_Mono = 0x1, Format_MonoLSB = 0x2, Format_Indexed8 = 0x3, 
        Format_RGB32 = 0x4, Format_ARGB32 = 0x5, Format_ARGB32_Premultiplied = 0x6, Format_RGB16 = 0x7, Format_ARGB8565_Premultiplied = 0x8, 
        Format_RGB666 = 0x9, Format_ARGB6666_Premultiplied = 0xa, Format_RGB555 = 0xb, Format_ARGB8555_Premultiplied = 0xc, Format_RGB888 = 0xd, 
        Format_RGB444 = 0xe, Format_ARGB4444_Premultiplied = 0xf, Format_RGBX8888 = 0x10, Format_RGBA8888 = 0x11, Format_RGBA8888_Premultiplied = 0x12, 
        Format_BGR30 = 0x13, Format_A2BGR30_Premultiplied = 0x14, Format_RGB30 = 0x15, Format_A2RGB30_Premultiplied = 0x16, Format_Alpha8 = 0x17, 
        Format_Grayscale8 = 0x18, Format_RGBX64 = 0x19, Format_RGBA64 = 0x1a, Format_RGBA64_Premultiplied = 0x1b, Format_Grayscale16 = 0x1c, 
        Format_BGR888 = 0x1d, Format_RGBX16FPx4 = 0x1e, Format_RGBA16FPx4 = 0x1f, Format_RGBA16FPx4_Premultiplied = 0x20, Format_RGBX32FPx4 = 0x21, 
        Format_RGBA32FPx4 = 0x22, Format_RGBA32FPx4_Premultiplied = 0x23

import nimqt/qtgui/qpaintdevice
import nimqt/qtcore/qstring

type
    # Classes found in the C++ code
    QImage* {.header:headerFile,importcpp:"QImage" ,pure.} = object of QPaintDevice


type
    # typedefs found in the C++ code
    QImage_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric

# Stuff for class QImage

# Public constructors for QImage
proc newQImage*(): ptr QImage {. header:headerFile, importcpp:"new QImage(@)" .} #
proc newQImage*(width: cint, height: cint, format: QImage_Format): ptr QImage {. header:headerFile, importcpp:"new QImage(@)" .} #
proc newQImage*(fileName: QString): ptr QImage {. header:headerFile, importcpp:"new QImage(@)" .} #
proc newQImage*(other: QImage): ptr QImage {. header:headerFile, importcpp:"new QImage(@)" .} #

# Public methods for QImage
proc qt_check_for_QGADGET_macro*(this: ptr QImage) {.header:headerFile, importcpp:"#.qt_check_for_QGADGET_macro(@)".} # Public
proc swap*(this: ptr QImage, other: QImage) {.header:headerFile, importcpp:"#.swap(@)".} # Public
proc isNull*(this: ptr QImage): bool {.header:headerFile, importcpp:"#.isNull(@)".} # Public
proc devType*(this: ptr QImage): cint {.header:headerFile, importcpp:"#.devType(@)".} # Public
proc `!=`*(this: ptr QImage, arg_0: QImage): bool {.header:headerFile, importcpp:"#.operator!=(@)".} # Public
proc detach*(this: ptr QImage) {.header:headerFile, importcpp:"#.detach(@)".} # Public
proc isDetached*(this: ptr QImage): bool {.header:headerFile, importcpp:"#.isDetached(@)".} # Public
import nimqt/qtcore/qrect
# 1 default parameters!
proc copy*(this: ptr QImage, rect: QRect): QImage {.header:headerFile, importcpp:"#.copy(@)".} # Public
proc copy*(this: ptr QImage): QImage {.header:headerFile, importcpp:"#.copy(@)".} # Public
proc copy*(this: ptr QImage, x: cint, y: cint, w: cint, h: cint): QImage {.header:headerFile, importcpp:"#.copy(@)".} # Public
proc format*(this: ptr QImage): QImage_Format {.header:headerFile, importcpp:"#.format(@)".} # Public
import nimqt/qtcore/qnamespace
# 1 default parameters!
proc convertToFormat*(this: ptr QImage, f: QImage_Format, flags: Qt_ImageConversionFlags): QImage {.header:headerFile, importcpp:"#.convertToFormat(@)".} # Public
proc convertToFormat*(this: ptr QImage, f: QImage_Format): QImage {.header:headerFile, importcpp:"#.convertToFormat(@)".} # Public
# 1 default parameters!
proc reinterpretAsFormat*(this: ptr QImage, f: QImage_Format): bool {.header:headerFile, importcpp:"#.reinterpretAsFormat(@)".} # Public
# 1 default parameters!
proc convertedTo*(this: ptr QImage, f: QImage_Format, flags: Qt_ImageConversionFlags): QImage {.header:headerFile, importcpp:"#.convertedTo(@)".} # Public
proc convertedTo*(this: ptr QImage, f: QImage_Format): QImage {.header:headerFile, importcpp:"#.convertedTo(@)".} # Public
# 1 default parameters!
# 1 default parameters!
proc convertTo*(this: ptr QImage, f: QImage_Format, flags: Qt_ImageConversionFlags) {.header:headerFile, importcpp:"#.convertTo(@)".} # Public
proc convertTo*(this: ptr QImage, f: QImage_Format) {.header:headerFile, importcpp:"#.convertTo(@)".} # Public
proc width*(this: ptr QImage): cint {.header:headerFile, importcpp:"#.width(@)".} # Public
proc height*(this: ptr QImage): cint {.header:headerFile, importcpp:"#.height(@)".} # Public
import nimqt/qtcore/qsize
proc size*(this: ptr QImage): QSize {.header:headerFile, importcpp:"#.size(@)".} # Public
proc rect*(this: ptr QImage): QRect {.header:headerFile, importcpp:"#.rect(@)".} # Public
proc depth*(this: ptr QImage): cint {.header:headerFile, importcpp:"#.depth(@)".} # Public
proc colorCount*(this: ptr QImage): cint {.header:headerFile, importcpp:"#.colorCount(@)".} # Public
proc bitPlaneCount*(this: ptr QImage): cint {.header:headerFile, importcpp:"#.bitPlaneCount(@)".} # Public
proc setColorCount*(this: ptr QImage, arg_0: cint) {.header:headerFile, importcpp:"#.setColorCount(@)".} # Public
proc allGray*(this: ptr QImage): bool {.header:headerFile, importcpp:"#.allGray(@)".} # Public
proc isGrayscale*(this: ptr QImage): bool {.header:headerFile, importcpp:"#.isGrayscale(@)".} # Public
proc bits*(this: ptr QImage): ptr char {.header:headerFile, importcpp:"#.bits(@)".} # Public
proc constBits*(this: ptr QImage): ptr char {.header:headerFile, importcpp:"#.constBits(@)".} # Public
proc sizeInBytes*(this: ptr QImage): cint {.header:headerFile, importcpp:"#.sizeInBytes(@)".} # Public
proc scanLine*(this: ptr QImage, arg_1: cint): ptr char {.header:headerFile, importcpp:"#.scanLine(@)".} # Public
proc constScanLine*(this: ptr QImage, arg_1: cint): ptr char {.header:headerFile, importcpp:"#.constScanLine(@)".} # Public
proc bytesPerLine*(this: ptr QImage): cint {.header:headerFile, importcpp:"#.bytesPerLine(@)".} # Public
proc valid*(this: ptr QImage, x: cint, y: cint): bool {.header:headerFile, importcpp:"#.valid(@)".} # Public
import nimqt/qtcore/qpoint
proc valid*(this: ptr QImage, pt: QPoint): bool {.header:headerFile, importcpp:"#.valid(@)".} # Public
proc pixelIndex*(this: ptr QImage, x: cint, y: cint): cint {.header:headerFile, importcpp:"#.pixelIndex(@)".} # Public
proc pixelIndex*(this: ptr QImage, pt: QPoint): cint {.header:headerFile, importcpp:"#.pixelIndex(@)".} # Public
proc setPixel*(this: ptr QImage, x: cint, y: cint, index_or_rgb: cuint) {.header:headerFile, importcpp:"#.setPixel(@)".} # Public
proc setPixel*(this: ptr QImage, pt: QPoint, index_or_rgb: cuint) {.header:headerFile, importcpp:"#.setPixel(@)".} # Public
import nimqt/qtgui/qcolor
proc pixelColor*(this: ptr QImage, x: cint, y: cint): QColor {.header:headerFile, importcpp:"#.pixelColor(@)".} # Public
proc pixelColor*(this: ptr QImage, pt: QPoint): QColor {.header:headerFile, importcpp:"#.pixelColor(@)".} # Public
proc setPixelColor*(this: ptr QImage, x: cint, y: cint, c: QColor) {.header:headerFile, importcpp:"#.setPixelColor(@)".} # Public
proc setPixelColor*(this: ptr QImage, pt: QPoint, c: QColor) {.header:headerFile, importcpp:"#.setPixelColor(@)".} # Public
proc devicePixelRatio*(this: ptr QImage): cfloat {.header:headerFile, importcpp:"#.devicePixelRatio(@)".} # Public
proc setDevicePixelRatio*(this: ptr QImage, scaleFactor: cfloat) {.header:headerFile, importcpp:"#.setDevicePixelRatio(@)".} # Public
proc deviceIndependentSize*(this: ptr QImage): QSizeF {.header:headerFile, importcpp:"#.deviceIndependentSize(@)".} # Public
proc fill*(this: ptr QImage, pixel: cuint) {.header:headerFile, importcpp:"#.fill(@)".} # Public
proc fill*(this: ptr QImage, color: QColor) {.header:headerFile, importcpp:"#.fill(@)".} # Public
proc fill*(this: ptr QImage, color: Qt_GlobalColor) {.header:headerFile, importcpp:"#.fill(@)".} # Public
proc hasAlphaChannel*(this: ptr QImage): bool {.header:headerFile, importcpp:"#.hasAlphaChannel(@)".} # Public
proc setAlphaChannel*(this: ptr QImage, alphaChannel: QImage) {.header:headerFile, importcpp:"#.setAlphaChannel(@)".} # Public
# 1 default parameters!
proc createAlphaMask*(this: ptr QImage, flags: Qt_ImageConversionFlags): QImage {.header:headerFile, importcpp:"#.createAlphaMask(@)".} # Public
proc createAlphaMask*(this: ptr QImage): QImage {.header:headerFile, importcpp:"#.createAlphaMask(@)".} # Public
# 1 default parameters!
proc createHeuristicMask*(this: ptr QImage, clipTight: bool): QImage {.header:headerFile, importcpp:"#.createHeuristicMask(@)".} # Public
proc createHeuristicMask*(this: ptr QImage): QImage {.header:headerFile, importcpp:"#.createHeuristicMask(@)".} # Public
proc scaled*(this: ptr QImage, w: cint, h: cint, aspectMode: Qt_AspectRatioMode, mode: Qt_TransformationMode): QImage {.header:headerFile, importcpp:"#.scaled(@)".} # Public
proc scaled*(this: ptr QImage, s: QSize, aspectMode: Qt_AspectRatioMode, mode: Qt_TransformationMode): QImage {.header:headerFile, importcpp:"#.scaled(@)".} # Public
proc scaledToWidth*(this: ptr QImage, w: cint, mode: Qt_TransformationMode): QImage {.header:headerFile, importcpp:"#.scaledToWidth(@)".} # Public
proc scaledToHeight*(this: ptr QImage, h: cint, mode: Qt_TransformationMode): QImage {.header:headerFile, importcpp:"#.scaledToHeight(@)".} # Public
import nimqt/qtgui/qtransform
proc transformed*(this: ptr QImage, matrix: QTransform, mode: Qt_TransformationMode): QImage {.header:headerFile, importcpp:"#.transformed(@)".} # Public
proc static_QImage_trueMatrix*(arg_1: QTransform, w: cint, h: cint): QTransform {.header:headerFile, importcpp:"QImage::trueMatrix(@)".} # Public static
# 2 default parameters!
proc mirrored*(this: ptr QImage, horizontally: bool, vertically: bool): QImage {.header:headerFile, importcpp:"#.mirrored(@)".} # Public
proc mirrored*(this: ptr QImage, horizontally: bool): QImage {.header:headerFile, importcpp:"#.mirrored(@)".} # Public
proc mirrored*(this: ptr QImage): QImage {.header:headerFile, importcpp:"#.mirrored(@)".} # Public
# 2 default parameters!
proc rgbSwapped*(this: ptr QImage): QImage {.header:headerFile, importcpp:"#.rgbSwapped(@)".} # Public
# 2 default parameters!
proc mirror*(this: ptr QImage, horizontally: bool, vertically: bool) {.header:headerFile, importcpp:"#.mirror(@)".} # Public
proc mirror*(this: ptr QImage, horizontally: bool) {.header:headerFile, importcpp:"#.mirror(@)".} # Public
proc mirror*(this: ptr QImage) {.header:headerFile, importcpp:"#.mirror(@)".} # Public
proc rgbSwap*(this: ptr QImage) {.header:headerFile, importcpp:"#.rgbSwap(@)".} # Public
proc invertPixels*(this: ptr QImage, arg_0: QImage_InvertMode) {.header:headerFile, importcpp:"#.invertPixels(@)".} # Public
import nimqt/qtgui/qcolorspace
proc colorSpace*(this: ptr QImage): QColorSpace {.header:headerFile, importcpp:"#.colorSpace(@)".} # Public
proc convertedToColorSpace*(this: ptr QImage, arg_1: QColorSpace): QImage {.header:headerFile, importcpp:"#.convertedToColorSpace(@)".} # Public
proc convertToColorSpace*(this: ptr QImage, arg_0: QColorSpace) {.header:headerFile, importcpp:"#.convertToColorSpace(@)".} # Public
proc setColorSpace*(this: ptr QImage, arg_0: QColorSpace) {.header:headerFile, importcpp:"#.setColorSpace(@)".} # Public
import nimqt/qtgui/qcolortransform
proc colorTransformed*(this: ptr QImage, transform: QColorTransform): QImage {.header:headerFile, importcpp:"#.colorTransformed(@)".} # Public
proc applyColorTransform*(this: ptr QImage, transform: QColorTransform) {.header:headerFile, importcpp:"#.applyColorTransform(@)".} # Public
import nimqt/qtcore/qiodevice
proc load*(this: ptr QImage, device: ptr QIODevice, format: ptr char): bool {.header:headerFile, importcpp:"#.load(@)".} # Public
import nimqt/qtcore/qstring
# 1 default parameters!
proc load*(this: ptr QImage, fileName: QString, format: ptr char): bool {.header:headerFile, importcpp:"#.load(@)".} # Public
proc load*(this: ptr QImage, fileName: QString): bool {.header:headerFile, importcpp:"#.load(@)".} # Public
import nimqt/qtcore/qbytearrayview
# 1 default parameters!
proc loadFromData*(this: ptr QImage, data: QByteArrayView, format: ptr char): bool {.header:headerFile, importcpp:"#.loadFromData(@)".} # Public
proc loadFromData*(this: ptr QImage, data: QByteArrayView): bool {.header:headerFile, importcpp:"#.loadFromData(@)".} # Public
# 1 default parameters!
proc loadFromData*(this: ptr QImage, buf: ptr char, len: cint, format: ptr char): bool {.header:headerFile, importcpp:"#.loadFromData(@)".} # Public
proc loadFromData*(this: ptr QImage, buf: ptr char, len: cint): bool {.header:headerFile, importcpp:"#.loadFromData(@)".} # Public
import nimqt/qtcore/qbytearray
# 1 default parameters!
proc loadFromData*(this: ptr QImage, data: QByteArray, format: ptr char): bool {.header:headerFile, importcpp:"#.loadFromData(@)".} # Public
proc loadFromData*(this: ptr QImage, data: QByteArray): bool {.header:headerFile, importcpp:"#.loadFromData(@)".} # Public
# 1 default parameters!
proc save*(this: ptr QImage, fileName: QString, format: ptr char, quality: cint): bool {.header:headerFile, importcpp:"#.save(@)".} # Public
proc save*(this: ptr QImage, fileName: QString, format: ptr char): bool {.header:headerFile, importcpp:"#.save(@)".} # Public
# 1 default parameters!
proc save*(this: ptr QImage, device: ptr QIODevice, format: ptr char, quality: cint): bool {.header:headerFile, importcpp:"#.save(@)".} # Public
proc save*(this: ptr QImage, device: ptr QIODevice, format: ptr char): bool {.header:headerFile, importcpp:"#.save(@)".} # Public
# 1 default parameters!
proc static_QImage_fromData*(data: QByteArrayView, format: ptr char): QImage {.header:headerFile, importcpp:"QImage::fromData(@)".} # Public static
proc static_QImage_fromData*(data: QByteArrayView): QImage {.header:headerFile, importcpp:"QImage::fromData(@)".} # Public static
# 1 default parameters!
proc static_QImage_fromData*(data: ptr char, size: cint, format: ptr char): QImage {.header:headerFile, importcpp:"QImage::fromData(@)".} # Public static
proc static_QImage_fromData*(data: ptr char, size: cint): QImage {.header:headerFile, importcpp:"QImage::fromData(@)".} # Public static
# 1 default parameters!
proc static_QImage_fromData*(data: QByteArray, format: ptr char): QImage {.header:headerFile, importcpp:"QImage::fromData(@)".} # Public static
proc static_QImage_fromData*(data: QByteArray): QImage {.header:headerFile, importcpp:"QImage::fromData(@)".} # Public static
proc cacheKey*(this: ptr QImage): clonglong {.header:headerFile, importcpp:"#.cacheKey(@)".} # Public
import nimqt/qtgui/qpaintengine
proc paintEngine*(this: ptr QImage): ptr QPaintEngine {.header:headerFile, importcpp:"#.paintEngine(@)".} # Public
proc dotsPerMeterX*(this: ptr QImage): cint {.header:headerFile, importcpp:"#.dotsPerMeterX(@)".} # Public
proc dotsPerMeterY*(this: ptr QImage): cint {.header:headerFile, importcpp:"#.dotsPerMeterY(@)".} # Public
proc setDotsPerMeterX*(this: ptr QImage, arg_0: cint) {.header:headerFile, importcpp:"#.setDotsPerMeterX(@)".} # Public
proc setDotsPerMeterY*(this: ptr QImage, arg_0: cint) {.header:headerFile, importcpp:"#.setDotsPerMeterY(@)".} # Public
proc offset*(this: ptr QImage): QPoint {.header:headerFile, importcpp:"#.offset(@)".} # Public
proc setOffset*(this: ptr QImage, arg_0: QPoint) {.header:headerFile, importcpp:"#.setOffset(@)".} # Public
import nimqt/qtcore/qstringlist
proc textKeys*(this: ptr QImage): QStringList {.header:headerFile, importcpp:"#.textKeys(@)".} # Public
# 1 default parameters!
proc text*(this: ptr QImage, key: QString): QString {.header:headerFile, importcpp:"#.text(@)".} # Public
proc text*(this: ptr QImage): QString {.header:headerFile, importcpp:"#.text(@)".} # Public
proc setText*(this: ptr QImage, key: QString, value: QString) {.header:headerFile, importcpp:"#.setText(@)".} # Public
import nimqt/qtgui/qpixelformat
proc pixelFormat*(this: ptr QImage): QPixelFormat {.header:headerFile, importcpp:"#.pixelFormat(@)".} # Public
proc static_QImage_toPixelFormat*(format: QImage_Format): QPixelFormat {.header:headerFile, importcpp:"QImage::toPixelFormat(@)".} # Public static
proc static_QImage_toImageFormat*(format: QPixelFormat): QImage_Format {.header:headerFile, importcpp:"QImage::toImageFormat(@)".} # Public static

# Protected methods methods for QImage
proc metric*(this: ptr QImage, metric: QPaintDevice_PaintDeviceMetric): cint {.header:headerFile, importcpp:"#.metric(@)".} # Protected
proc mirrored_helper*(this: ptr QImage, horizontal: bool, vertical: bool): QImage {.header:headerFile, importcpp:"#.mirrored_helper(@)".} # Protected
proc rgbSwapped_helper*(this: ptr QImage): QImage {.header:headerFile, importcpp:"#.rgbSwapped_helper(@)".} # Protected
proc mirrored_inplace*(this: ptr QImage, horizontal: bool, vertical: bool) {.header:headerFile, importcpp:"#.mirrored_inplace(@)".} # Protected
proc rgbSwapped_inplace*(this: ptr QImage) {.header:headerFile, importcpp:"#.rgbSwapped_inplace(@)".} # Protected
proc convertToFormat_helper*(this: ptr QImage, format: QImage_Format, flags: Qt_ImageConversionFlags): QImage {.header:headerFile, importcpp:"#.convertToFormat_helper(@)".} # Protected
proc convertToFormat_inplace*(this: ptr QImage, format: QImage_Format, flags: Qt_ImageConversionFlags): bool {.header:headerFile, importcpp:"#.convertToFormat_inplace(@)".} # Protected
proc smoothScaled*(this: ptr QImage, w: cint, h: cint): QImage {.header:headerFile, importcpp:"#.smoothScaled(@)".} # Protected
# 1 default parameters!
proc detachMetadata*(this: ptr QImage, invalidateCache: bool) {.header:headerFile, importcpp:"#.detachMetadata(@)".} # Protected
proc detachMetadata*(this: ptr QImage) {.header:headerFile, importcpp:"#.detachMetadata(@)".} # Protected

export qpaintengine
export qbytearrayview
export qcolorspace
export qpixelformat
export qstringlist
export qcolortransform
export qstring
export qsize
export qnamespace
export qbytearray
export qpoint
export qrect
export qpaintdevice
export qtransform
export qiodevice
export qcolor
