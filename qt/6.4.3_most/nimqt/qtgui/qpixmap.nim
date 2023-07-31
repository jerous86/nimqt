const headerFile* = "QtGui/qpixmap.h"

import nimqt/qtgui/qpaintdevice
type
    # Classes found in the C++ code
    QPixmap* {.header:headerFile,importcpp:"QPixmap" ,pure.} = object of QPaintDevice


type
    # typedefs found in the C++ code
    QPixmap_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric

# Stuff for class QPixmap

# Public constructors for QPixmap
proc newQPixmap*(): ptr QPixmap {. header:headerFile, importcpp:"new QPixmap(@)" .} #
proc newQPixmap*(w: cint, h: cint): ptr QPixmap {. header:headerFile, importcpp:"new QPixmap(@)" .} #
proc newQPixmap*(other: QPixmap): ptr QPixmap {. header:headerFile, importcpp:"new QPixmap(@)" .} #

# Public methods for QPixmap
proc swap*(this: ptr QPixmap, other: QPixmap) {.header:headerFile, importcpp:"#.swap(@)".} # Public
proc `!=`*(this: ptr QPixmap, arg_0: QPixmap): bool {.header:headerFile, importcpp:"#.operator!=(@)".} # Public
proc isNull*(this: ptr QPixmap): bool {.header:headerFile, importcpp:"#.isNull(@)".} # Public
proc devType*(this: ptr QPixmap): cint {.header:headerFile, importcpp:"#.devType(@)".} # Public
proc width*(this: ptr QPixmap): cint {.header:headerFile, importcpp:"#.width(@)".} # Public
proc height*(this: ptr QPixmap): cint {.header:headerFile, importcpp:"#.height(@)".} # Public
import nimqt/qtcore/qsize
proc size*(this: ptr QPixmap): QSize {.header:headerFile, importcpp:"#.size(@)".} # Public
import nimqt/qtcore/qrect
proc rect*(this: ptr QPixmap): QRect {.header:headerFile, importcpp:"#.rect(@)".} # Public
proc depth*(this: ptr QPixmap): cint {.header:headerFile, importcpp:"#.depth(@)".} # Public
proc static_QPixmap_defaultDepth*(): cint {.header:headerFile, importcpp:"QPixmap::defaultDepth(@)".} # Public static
import nimqt/qtgui/qcolor
# 1 default parameters!
proc fill*(this: ptr QPixmap, fillColor: QColor) {.header:headerFile, importcpp:"#.fill(@)".} # Public
proc fill*(this: ptr QPixmap) {.header:headerFile, importcpp:"#.fill(@)".} # Public
proc devicePixelRatio*(this: ptr QPixmap): cfloat {.header:headerFile, importcpp:"#.devicePixelRatio(@)".} # Public
proc setDevicePixelRatio*(this: ptr QPixmap, scaleFactor: cfloat) {.header:headerFile, importcpp:"#.setDevicePixelRatio(@)".} # Public
proc deviceIndependentSize*(this: ptr QPixmap): QSizeF {.header:headerFile, importcpp:"#.deviceIndependentSize(@)".} # Public
proc hasAlpha*(this: ptr QPixmap): bool {.header:headerFile, importcpp:"#.hasAlpha(@)".} # Public
proc hasAlphaChannel*(this: ptr QPixmap): bool {.header:headerFile, importcpp:"#.hasAlphaChannel(@)".} # Public
import nimqt/qtcore/qnamespace
proc scaled*(this: ptr QPixmap, w: cint, h: cint, aspectMode: Qt_AspectRatioMode, mode: Qt_TransformationMode): QPixmap {.header:headerFile, importcpp:"#.scaled(@)".} # Public
proc scaled*(this: ptr QPixmap, s: QSize, aspectMode: Qt_AspectRatioMode, mode: Qt_TransformationMode): QPixmap {.header:headerFile, importcpp:"#.scaled(@)".} # Public
proc scaledToWidth*(this: ptr QPixmap, w: cint, mode: Qt_TransformationMode): QPixmap {.header:headerFile, importcpp:"#.scaledToWidth(@)".} # Public
proc scaledToHeight*(this: ptr QPixmap, h: cint, mode: Qt_TransformationMode): QPixmap {.header:headerFile, importcpp:"#.scaledToHeight(@)".} # Public
import nimqt/qtgui/qtransform
proc transformed*(this: ptr QPixmap, arg_1: QTransform, mode: Qt_TransformationMode): QPixmap {.header:headerFile, importcpp:"#.transformed(@)".} # Public
proc static_QPixmap_trueMatrix*(m: QTransform, w: cint, h: cint): QTransform {.header:headerFile, importcpp:"QPixmap::trueMatrix(@)".} # Public static
import nimqt/qtgui/qimage
proc toImage*(this: ptr QPixmap): QImage {.header:headerFile, importcpp:"#.toImage(@)".} # Public
# 1 default parameters!
proc static_QPixmap_fromImage*(image: QImage, flags: Qt_ImageConversionFlags): QPixmap {.header:headerFile, importcpp:"QPixmap::fromImage(@)".} # Public static
proc static_QPixmap_fromImage*(image: QImage): QPixmap {.header:headerFile, importcpp:"QPixmap::fromImage(@)".} # Public static
import nimqt/qtgui/qimagereader
# 1 default parameters!
proc static_QPixmap_fromImageReader*(imageReader: ptr QImageReader, flags: Qt_ImageConversionFlags): QPixmap {.header:headerFile, importcpp:"QPixmap::fromImageReader(@)".} # Public static
proc static_QPixmap_fromImageReader*(imageReader: ptr QImageReader): QPixmap {.header:headerFile, importcpp:"QPixmap::fromImageReader(@)".} # Public static
# 1 default parameters!
import nimqt/qtcore/qstring
# 2 default parameters!
proc load*(this: ptr QPixmap, fileName: QString, format: ptr char, flags: Qt_ImageConversionFlags): bool {.header:headerFile, importcpp:"#.load(@)".} # Public
proc load*(this: ptr QPixmap, fileName: QString, format: ptr char): bool {.header:headerFile, importcpp:"#.load(@)".} # Public
proc load*(this: ptr QPixmap, fileName: QString): bool {.header:headerFile, importcpp:"#.load(@)".} # Public
# 2 default parameters!
proc loadFromData*(this: ptr QPixmap, buf: ptr char, len: cuint, format: ptr char, flags: Qt_ImageConversionFlags): bool {.header:headerFile, importcpp:"#.loadFromData(@)".} # Public
proc loadFromData*(this: ptr QPixmap, buf: ptr char, len: cuint, format: ptr char): bool {.header:headerFile, importcpp:"#.loadFromData(@)".} # Public
proc loadFromData*(this: ptr QPixmap, buf: ptr char, len: cuint): bool {.header:headerFile, importcpp:"#.loadFromData(@)".} # Public
import nimqt/qtcore/qbytearray
# 2 default parameters!
proc loadFromData*(this: ptr QPixmap, data: QByteArray, format: ptr char, flags: Qt_ImageConversionFlags): bool {.header:headerFile, importcpp:"#.loadFromData(@)".} # Public
proc loadFromData*(this: ptr QPixmap, data: QByteArray, format: ptr char): bool {.header:headerFile, importcpp:"#.loadFromData(@)".} # Public
proc loadFromData*(this: ptr QPixmap, data: QByteArray): bool {.header:headerFile, importcpp:"#.loadFromData(@)".} # Public
# 1 default parameters!
proc save*(this: ptr QPixmap, fileName: QString, format: ptr char, quality: cint): bool {.header:headerFile, importcpp:"#.save(@)".} # Public
proc save*(this: ptr QPixmap, fileName: QString, format: ptr char): bool {.header:headerFile, importcpp:"#.save(@)".} # Public
import nimqt/qtcore/qiodevice
# 1 default parameters!
proc save*(this: ptr QPixmap, device: ptr QIODevice, format: ptr char, quality: cint): bool {.header:headerFile, importcpp:"#.save(@)".} # Public
proc save*(this: ptr QPixmap, device: ptr QIODevice, format: ptr char): bool {.header:headerFile, importcpp:"#.save(@)".} # Public
# 1 default parameters!
proc convertFromImage*(this: ptr QPixmap, img: QImage, flags: Qt_ImageConversionFlags): bool {.header:headerFile, importcpp:"#.convertFromImage(@)".} # Public
proc convertFromImage*(this: ptr QPixmap, img: QImage): bool {.header:headerFile, importcpp:"#.convertFromImage(@)".} # Public
proc copy*(this: ptr QPixmap, x: cint, y: cint, width: cint, height: cint): QPixmap {.header:headerFile, importcpp:"#.copy(@)".} # Public
# 1 default parameters!
proc copy*(this: ptr QPixmap, rect: QRect): QPixmap {.header:headerFile, importcpp:"#.copy(@)".} # Public
proc copy*(this: ptr QPixmap): QPixmap {.header:headerFile, importcpp:"#.copy(@)".} # Public
import nimqt/qtgui/qregion
# 1 default parameters!
proc scroll*(this: ptr QPixmap, dx: cint, dy: cint, x: cint, y: cint, width: cint, height: cint, exposed: ptr QRegion) {.header:headerFile, importcpp:"#.scroll(@)".} # Public
proc scroll*(this: ptr QPixmap, dx: cint, dy: cint, x: cint, y: cint, width: cint, height: cint) {.header:headerFile, importcpp:"#.scroll(@)".} # Public
# 1 default parameters!
proc scroll*(this: ptr QPixmap, dx: cint, dy: cint, rect: QRect, exposed: ptr QRegion) {.header:headerFile, importcpp:"#.scroll(@)".} # Public
proc scroll*(this: ptr QPixmap, dx: cint, dy: cint, rect: QRect) {.header:headerFile, importcpp:"#.scroll(@)".} # Public
proc cacheKey*(this: ptr QPixmap): clonglong {.header:headerFile, importcpp:"#.cacheKey(@)".} # Public
proc isDetached*(this: ptr QPixmap): bool {.header:headerFile, importcpp:"#.isDetached(@)".} # Public
proc detach*(this: ptr QPixmap) {.header:headerFile, importcpp:"#.detach(@)".} # Public
import nimqt/qtgui/qpaintengine
proc paintEngine*(this: ptr QPixmap): ptr QPaintEngine {.header:headerFile, importcpp:"#.paintEngine(@)".} # Public
proc `!`*(this: ptr QPixmap): bool {.header:headerFile, importcpp:"#.operator!(@)".} # Public

# Protected methods methods for QPixmap
proc metric*(this: ptr QPixmap, arg_0: QPaintDevice_PaintDeviceMetric): cint {.header:headerFile, importcpp:"#.metric(@)".} # Protected
# 1 default parameters!
proc static_QPixmap_fromImageInPlace*(image: QImage, flags: Qt_ImageConversionFlags): QPixmap {.header:headerFile, importcpp:"QPixmap::fromImageInPlace(@)".} # Protected static
proc static_QPixmap_fromImageInPlace*(image: QImage): QPixmap {.header:headerFile, importcpp:"QPixmap::fromImageInPlace(@)".} # Protected static

export qpaintengine
export qstring
export qimagereader
export qsize
export qimage
export qnamespace
export qbytearray
export qregion
export qrect
export qpaintdevice
export qtransform
export qiodevice
export qcolor
