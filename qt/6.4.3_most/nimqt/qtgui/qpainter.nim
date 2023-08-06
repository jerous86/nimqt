const headerFile* = "QtGui/qpainter.h"

type
    # Enums found in the C++ code
    # Global
    QPainter_RenderHint* {.header:headerFile,importcpp:"QPainter::RenderHint".} = enum Antialiasing = 0x1, TextAntialiasing = 0x2, SmoothPixmapTransform = 0x4, VerticalSubpixelPositioning = 0x8, 
        LosslessImageRendering = 0x40, NonCosmeticBrushPatterns = 0x80
    QPainter_PixmapFragmentHint* {.header:headerFile,importcpp:"QPainter::PixmapFragmentHint".} = enum OpaqueHint = 0x1
    QPainter_CompositionMode* {.header:headerFile,importcpp:"QPainter::CompositionMode".} = enum CompositionMode_SourceOver = 0, CompositionMode_DestinationOver = 0x1, CompositionMode_Clear = 0x2, CompositionMode_Source = 0x3, 
        CompositionMode_Destination = 0x4, CompositionMode_SourceIn = 0x5, CompositionMode_DestinationIn = 0x6, CompositionMode_SourceOut = 0x7, CompositionMode_DestinationOut = 0x8, 
        CompositionMode_SourceAtop = 0x9, CompositionMode_DestinationAtop = 0xa, CompositionMode_Xor = 0xb, CompositionMode_Plus = 0xc, CompositionMode_Multiply = 0xd, 
        CompositionMode_Screen = 0xe, CompositionMode_Overlay = 0xf, CompositionMode_Darken = 0x10, CompositionMode_Lighten = 0x11, CompositionMode_ColorDodge = 0x12, 
        CompositionMode_ColorBurn = 0x13, CompositionMode_HardLight = 0x14, CompositionMode_SoftLight = 0x15, CompositionMode_Difference = 0x16, CompositionMode_Exclusion = 0x17, 
        RasterOp_SourceOrDestination = 0x18, RasterOp_SourceAndDestination = 0x19, RasterOp_SourceXorDestination = 0x1a, RasterOp_NotSourceAndNotDestination = 0x1b, RasterOp_NotSourceOrNotDestination = 0x1c, 
        RasterOp_NotSourceXorDestination = 0x1d, RasterOp_NotSource = 0x1e, RasterOp_NotSourceAndDestination = 0x1f, RasterOp_SourceAndNotDestination = 0x20, RasterOp_NotSourceOrDestination = 0x21, 
        RasterOp_SourceOrNotDestination = 0x22, RasterOp_ClearDestination = 0x23, RasterOp_SetDestination = 0x24, RasterOp_NotDestination = 0x25

type
    # Classes found in the C++ code
    QPainter* {.header:headerFile,importcpp:"QPainter" ,pure,inheritable.} = object
    QPainter_PixmapFragment* {.header:headerFile,importcpp:"QPainter::PixmapFragment" ,pure,inheritable.} = object
import nimqt/qtcore/qflags


type
    # typedefs found in the C++ code
    QPainter_RenderHints * = QFlags[QPainter_RenderHint]
    QPainter_PixmapFragmentHints * = QFlags[QPainter_PixmapFragmentHint]

# Stuff for class QPainter

# Public constructors for QPainter
proc newQPainter*(): QPainter {. header:headerFile, importcpp:"QPainter(@)", constructor .} #
import nimqt/qtgui/qpaintdevice
proc newQPainter*(arg_0: ptr QPaintDevice): QPainter {. header:headerFile, importcpp:"QPainter(@)", constructor .} #

# Public methods for QPainter
proc qt_check_for_QGADGET_macro*(this: QPainter) {.header:headerFile, importcpp:"#.qt_check_for_QGADGET_macro(@)".} # Public
proc device*(this: QPainter): ptr QPaintDevice {.header:headerFile, importcpp:"#.device(@)".} # Public
proc begin*(this: QPainter, arg_0: ptr QPaintDevice): bool {.header:headerFile, importcpp:"#.begin(@)".} # Public
proc `end`*(this: QPainter): bool {.header:headerFile, importcpp:"#.end(@)".} # Public
proc isActive*(this: QPainter): bool {.header:headerFile, importcpp:"#.isActive(@)".} # Public
proc setCompositionMode*(this: QPainter, mode: QPainter_CompositionMode) {.header:headerFile, importcpp:"#.setCompositionMode(@)".} # Public
proc compositionMode*(this: QPainter): QPainter_CompositionMode {.header:headerFile, importcpp:"#.compositionMode(@)".} # Public
import nimqt/qtgui/qfont
proc font*(this: QPainter): QFont {.header:headerFile, importcpp:"#.font(@)".} # Public
proc setFont*(this: QPainter, f: QFont) {.header:headerFile, importcpp:"#.setFont(@)".} # Public
import nimqt/qtgui/qfontmetrics
proc fontMetrics*(this: QPainter): QFontMetrics {.header:headerFile, importcpp:"#.fontMetrics(@)".} # Public
import nimqt/qtgui/qfontinfo
proc fontInfo*(this: QPainter): QFontInfo {.header:headerFile, importcpp:"#.fontInfo(@)".} # Public
import nimqt/qtgui/qcolor
proc setPen*(this: QPainter, color: QColor) {.header:headerFile, importcpp:"#.setPen(@)".} # Public
import nimqt/qtgui/qpen
proc setPen*(this: QPainter, pen: QPen) {.header:headerFile, importcpp:"#.setPen(@)".} # Public
import nimqt/qtcore/qnamespace
proc setPen*(this: QPainter, style: Qt_PenStyle) {.header:headerFile, importcpp:"#.setPen(@)".} # Public
proc pen*(this: QPainter): QPen {.header:headerFile, importcpp:"#.pen(@)".} # Public
import nimqt/qtgui/qbrush
proc setBrush*(this: QPainter, brush: QBrush) {.header:headerFile, importcpp:"#.setBrush(@)".} # Public
proc setBrush*(this: QPainter, style: Qt_BrushStyle) {.header:headerFile, importcpp:"#.setBrush(@)".} # Public
proc brush*(this: QPainter): QBrush {.header:headerFile, importcpp:"#.brush(@)".} # Public
proc setBackgroundMode*(this: QPainter, mode: Qt_BGMode) {.header:headerFile, importcpp:"#.setBackgroundMode(@)".} # Public
proc backgroundMode*(this: QPainter): Qt_BGMode {.header:headerFile, importcpp:"#.backgroundMode(@)".} # Public
import nimqt/qtcore/qpoint
proc brushOrigin*(this: QPainter): QPoint {.header:headerFile, importcpp:"#.brushOrigin(@)".} # Public
proc setBrushOrigin*(this: QPainter, x: cint, y: cint) {.header:headerFile, importcpp:"#.setBrushOrigin(@)".} # Public
proc setBrushOrigin*(this: QPainter, arg_0: QPoint) {.header:headerFile, importcpp:"#.setBrushOrigin(@)".} # Public
proc setBrushOrigin*(this: QPainter, arg_0: QPointF) {.header:headerFile, importcpp:"#.setBrushOrigin(@)".} # Public
proc setBackground*(this: QPainter, bg: QBrush) {.header:headerFile, importcpp:"#.setBackground(@)".} # Public
proc background*(this: QPainter): QBrush {.header:headerFile, importcpp:"#.background(@)".} # Public
proc opacity*(this: QPainter): cfloat {.header:headerFile, importcpp:"#.opacity(@)".} # Public
proc setOpacity*(this: QPainter, opacity: cfloat) {.header:headerFile, importcpp:"#.setOpacity(@)".} # Public
import nimqt/qtgui/qregion
proc clipRegion*(this: QPainter): QRegion {.header:headerFile, importcpp:"#.clipRegion(@)".} # Public
import nimqt/qtgui/qpainterpath
proc clipPath*(this: QPainter): QPainterPath {.header:headerFile, importcpp:"#.clipPath(@)".} # Public
import nimqt/qtcore/qrect
proc setClipRect*(this: QPainter, arg_0: QRectF, op: Qt_ClipOperation) {.header:headerFile, importcpp:"#.setClipRect(@)".} # Public
proc setClipRect*(this: QPainter, arg_0: QRect, op: Qt_ClipOperation) {.header:headerFile, importcpp:"#.setClipRect(@)".} # Public
proc setClipRect*(this: QPainter, x: cint, y: cint, w: cint, h: cint, op: Qt_ClipOperation) {.header:headerFile, importcpp:"#.setClipRect(@)".} # Public
proc setClipRegion*(this: QPainter, arg_0: QRegion, op: Qt_ClipOperation) {.header:headerFile, importcpp:"#.setClipRegion(@)".} # Public
proc setClipPath*(this: QPainter, path: QPainterPath, op: Qt_ClipOperation) {.header:headerFile, importcpp:"#.setClipPath(@)".} # Public
proc setClipping*(this: QPainter, enable: bool) {.header:headerFile, importcpp:"#.setClipping(@)".} # Public
proc hasClipping*(this: QPainter): bool {.header:headerFile, importcpp:"#.hasClipping(@)".} # Public
proc clipBoundingRect*(this: QPainter): QRectF {.header:headerFile, importcpp:"#.clipBoundingRect(@)".} # Public
proc save*(this: QPainter) {.header:headerFile, importcpp:"#.save(@)".} # Public
proc restore*(this: QPainter) {.header:headerFile, importcpp:"#.restore(@)".} # Public
import nimqt/qtgui/qtransform
# 1 default parameters!
proc setTransform*(this: QPainter, transform: QTransform, combine: bool) {.header:headerFile, importcpp:"#.setTransform(@)".} # Public
proc setTransform*(this: QPainter, transform: QTransform) {.header:headerFile, importcpp:"#.setTransform(@)".} # Public
proc transform*(this: QPainter): QTransform {.header:headerFile, importcpp:"#.transform(@)".} # Public
proc deviceTransform*(this: QPainter): QTransform {.header:headerFile, importcpp:"#.deviceTransform(@)".} # Public
proc resetTransform*(this: QPainter) {.header:headerFile, importcpp:"#.resetTransform(@)".} # Public
# 1 default parameters!
proc setWorldTransform*(this: QPainter, matrix: QTransform, combine: bool) {.header:headerFile, importcpp:"#.setWorldTransform(@)".} # Public
proc setWorldTransform*(this: QPainter, matrix: QTransform) {.header:headerFile, importcpp:"#.setWorldTransform(@)".} # Public
proc worldTransform*(this: QPainter): QTransform {.header:headerFile, importcpp:"#.worldTransform(@)".} # Public
proc combinedTransform*(this: QPainter): QTransform {.header:headerFile, importcpp:"#.combinedTransform(@)".} # Public
proc setWorldMatrixEnabled*(this: QPainter, enabled: bool) {.header:headerFile, importcpp:"#.setWorldMatrixEnabled(@)".} # Public
proc worldMatrixEnabled*(this: QPainter): bool {.header:headerFile, importcpp:"#.worldMatrixEnabled(@)".} # Public
proc scale*(this: QPainter, sx: cfloat, sy: cfloat) {.header:headerFile, importcpp:"#.scale(@)".} # Public
proc shear*(this: QPainter, sh: cfloat, sv: cfloat) {.header:headerFile, importcpp:"#.shear(@)".} # Public
proc rotate*(this: QPainter, a: cfloat) {.header:headerFile, importcpp:"#.rotate(@)".} # Public
proc translate*(this: QPainter, offset: QPointF) {.header:headerFile, importcpp:"#.translate(@)".} # Public
proc translate*(this: QPainter, offset: QPoint) {.header:headerFile, importcpp:"#.translate(@)".} # Public
proc translate*(this: QPainter, dx: cfloat, dy: cfloat) {.header:headerFile, importcpp:"#.translate(@)".} # Public
proc window*(this: QPainter): QRect {.header:headerFile, importcpp:"#.window(@)".} # Public
proc setWindow*(this: QPainter, window: QRect) {.header:headerFile, importcpp:"#.setWindow(@)".} # Public
proc setWindow*(this: QPainter, x: cint, y: cint, w: cint, h: cint) {.header:headerFile, importcpp:"#.setWindow(@)".} # Public
proc viewport*(this: QPainter): QRect {.header:headerFile, importcpp:"#.viewport(@)".} # Public
proc setViewport*(this: QPainter, viewport: QRect) {.header:headerFile, importcpp:"#.setViewport(@)".} # Public
proc setViewport*(this: QPainter, x: cint, y: cint, w: cint, h: cint) {.header:headerFile, importcpp:"#.setViewport(@)".} # Public
proc setViewTransformEnabled*(this: QPainter, enable: bool) {.header:headerFile, importcpp:"#.setViewTransformEnabled(@)".} # Public
proc viewTransformEnabled*(this: QPainter): bool {.header:headerFile, importcpp:"#.viewTransformEnabled(@)".} # Public
proc strokePath*(this: QPainter, path: QPainterPath, pen: QPen) {.header:headerFile, importcpp:"#.strokePath(@)".} # Public
proc fillPath*(this: QPainter, path: QPainterPath, brush: QBrush) {.header:headerFile, importcpp:"#.fillPath(@)".} # Public
proc drawPath*(this: QPainter, path: QPainterPath) {.header:headerFile, importcpp:"#.drawPath(@)".} # Public
proc drawPoint*(this: QPainter, pt: QPointF) {.header:headerFile, importcpp:"#.drawPoint(@)".} # Public
proc drawPoint*(this: QPainter, p: QPoint) {.header:headerFile, importcpp:"#.drawPoint(@)".} # Public
proc drawPoint*(this: QPainter, x: cint, y: cint) {.header:headerFile, importcpp:"#.drawPoint(@)".} # Public
proc drawPoints*(this: QPainter, points: ptr QPointF, pointCount: cint) {.header:headerFile, importcpp:"#.drawPoints(@)".} # Public
import nimqt/qtgui/qpolygon
proc drawPoints*(this: QPainter, points: QPolygonF) {.header:headerFile, importcpp:"#.drawPoints(@)".} # Public
proc drawPoints*(this: QPainter, points: ptr QPoint, pointCount: cint) {.header:headerFile, importcpp:"#.drawPoints(@)".} # Public
proc drawPoints*(this: QPainter, points: QPolygon) {.header:headerFile, importcpp:"#.drawPoints(@)".} # Public
import nimqt/qtcore/qline
proc drawLine*(this: QPainter, line: QLineF) {.header:headerFile, importcpp:"#.drawLine(@)".} # Public
proc drawLine*(this: QPainter, line: QLine) {.header:headerFile, importcpp:"#.drawLine(@)".} # Public
proc drawLine*(this: QPainter, x1: cint, y1: cint, x2: cint, y2: cint) {.header:headerFile, importcpp:"#.drawLine(@)".} # Public
proc drawLine*(this: QPainter, p1: QPoint, p2: QPoint) {.header:headerFile, importcpp:"#.drawLine(@)".} # Public
proc drawLine*(this: QPainter, p1: QPointF, p2: QPointF) {.header:headerFile, importcpp:"#.drawLine(@)".} # Public
proc drawLines*(this: QPainter, lines: ptr QLineF, lineCount: cint) {.header:headerFile, importcpp:"#.drawLines(@)".} # Public
import nimqt/qtcore/qlist
proc drawLines*(this: QPainter, lines: QList[QLineF]) {.header:headerFile, importcpp:"#.drawLines(@)".} # Public
proc drawLines*(this: QPainter, pointPairs: ptr QPointF, lineCount: cint) {.header:headerFile, importcpp:"#.drawLines(@)".} # Public
proc drawLines*(this: QPainter, pointPairs: QList[QPointF]) {.header:headerFile, importcpp:"#.drawLines(@)".} # Public
proc drawLines*(this: QPainter, lines: ptr QLine, lineCount: cint) {.header:headerFile, importcpp:"#.drawLines(@)".} # Public
proc drawLines*(this: QPainter, lines: QList[QLine]) {.header:headerFile, importcpp:"#.drawLines(@)".} # Public
proc drawLines*(this: QPainter, pointPairs: ptr QPoint, lineCount: cint) {.header:headerFile, importcpp:"#.drawLines(@)".} # Public
proc drawLines*(this: QPainter, pointPairs: QList[QPoint]) {.header:headerFile, importcpp:"#.drawLines(@)".} # Public
proc drawRect*(this: QPainter, rect: QRectF) {.header:headerFile, importcpp:"#.drawRect(@)".} # Public
proc drawRect*(this: QPainter, x1: cint, y1: cint, w: cint, h: cint) {.header:headerFile, importcpp:"#.drawRect(@)".} # Public
proc drawRect*(this: QPainter, rect: QRect) {.header:headerFile, importcpp:"#.drawRect(@)".} # Public
proc drawRects*(this: QPainter, rects: ptr QRectF, rectCount: cint) {.header:headerFile, importcpp:"#.drawRects(@)".} # Public
proc drawRects*(this: QPainter, rectangles: QList[QRectF]) {.header:headerFile, importcpp:"#.drawRects(@)".} # Public
proc drawRects*(this: QPainter, rects: ptr QRect, rectCount: cint) {.header:headerFile, importcpp:"#.drawRects(@)".} # Public
proc drawRects*(this: QPainter, rectangles: QList[QRect]) {.header:headerFile, importcpp:"#.drawRects(@)".} # Public
proc drawEllipse*(this: QPainter, r: QRectF) {.header:headerFile, importcpp:"#.drawEllipse(@)".} # Public
proc drawEllipse*(this: QPainter, r: QRect) {.header:headerFile, importcpp:"#.drawEllipse(@)".} # Public
proc drawEllipse*(this: QPainter, x: cint, y: cint, w: cint, h: cint) {.header:headerFile, importcpp:"#.drawEllipse(@)".} # Public
proc drawEllipse*(this: QPainter, center: QPointF, rx: cfloat, ry: cfloat) {.header:headerFile, importcpp:"#.drawEllipse(@)".} # Public
proc drawEllipse*(this: QPainter, center: QPoint, rx: cint, ry: cint) {.header:headerFile, importcpp:"#.drawEllipse(@)".} # Public
proc drawPolyline*(this: QPainter, points: ptr QPointF, pointCount: cint) {.header:headerFile, importcpp:"#.drawPolyline(@)".} # Public
proc drawPolyline*(this: QPainter, polyline: QPolygonF) {.header:headerFile, importcpp:"#.drawPolyline(@)".} # Public
proc drawPolyline*(this: QPainter, points: ptr QPoint, pointCount: cint) {.header:headerFile, importcpp:"#.drawPolyline(@)".} # Public
proc drawPolyline*(this: QPainter, polygon: QPolygon) {.header:headerFile, importcpp:"#.drawPolyline(@)".} # Public
proc drawPolygon*(this: QPainter, points: ptr QPointF, pointCount: cint, fillRule: Qt_FillRule) {.header:headerFile, importcpp:"#.drawPolygon(@)".} # Public
proc drawPolygon*(this: QPainter, polygon: QPolygonF, fillRule: Qt_FillRule) {.header:headerFile, importcpp:"#.drawPolygon(@)".} # Public
proc drawPolygon*(this: QPainter, points: ptr QPoint, pointCount: cint, fillRule: Qt_FillRule) {.header:headerFile, importcpp:"#.drawPolygon(@)".} # Public
proc drawPolygon*(this: QPainter, polygon: QPolygon, fillRule: Qt_FillRule) {.header:headerFile, importcpp:"#.drawPolygon(@)".} # Public
proc drawConvexPolygon*(this: QPainter, points: ptr QPointF, pointCount: cint) {.header:headerFile, importcpp:"#.drawConvexPolygon(@)".} # Public
proc drawConvexPolygon*(this: QPainter, polygon: QPolygonF) {.header:headerFile, importcpp:"#.drawConvexPolygon(@)".} # Public
proc drawConvexPolygon*(this: QPainter, points: ptr QPoint, pointCount: cint) {.header:headerFile, importcpp:"#.drawConvexPolygon(@)".} # Public
proc drawConvexPolygon*(this: QPainter, polygon: QPolygon) {.header:headerFile, importcpp:"#.drawConvexPolygon(@)".} # Public
proc drawArc*(this: QPainter, rect: QRectF, a: cint, alen: cint) {.header:headerFile, importcpp:"#.drawArc(@)".} # Public
proc drawArc*(this: QPainter, arg_0: QRect, a: cint, alen: cint) {.header:headerFile, importcpp:"#.drawArc(@)".} # Public
proc drawArc*(this: QPainter, x: cint, y: cint, w: cint, h: cint, a: cint, alen: cint) {.header:headerFile, importcpp:"#.drawArc(@)".} # Public
proc drawPie*(this: QPainter, rect: QRectF, a: cint, alen: cint) {.header:headerFile, importcpp:"#.drawPie(@)".} # Public
proc drawPie*(this: QPainter, x: cint, y: cint, w: cint, h: cint, a: cint, alen: cint) {.header:headerFile, importcpp:"#.drawPie(@)".} # Public
proc drawPie*(this: QPainter, arg_0: QRect, a: cint, alen: cint) {.header:headerFile, importcpp:"#.drawPie(@)".} # Public
proc drawChord*(this: QPainter, rect: QRectF, a: cint, alen: cint) {.header:headerFile, importcpp:"#.drawChord(@)".} # Public
proc drawChord*(this: QPainter, x: cint, y: cint, w: cint, h: cint, a: cint, alen: cint) {.header:headerFile, importcpp:"#.drawChord(@)".} # Public
proc drawChord*(this: QPainter, arg_0: QRect, a: cint, alen: cint) {.header:headerFile, importcpp:"#.drawChord(@)".} # Public
proc drawRoundedRect*(this: QPainter, rect: QRectF, xRadius: cfloat, yRadius: cfloat, mode: Qt_SizeMode) {.header:headerFile, importcpp:"#.drawRoundedRect(@)".} # Public
proc drawRoundedRect*(this: QPainter, x: cint, y: cint, w: cint, h: cint, xRadius: cfloat, yRadius: cfloat, mode: Qt_SizeMode) {.header:headerFile, importcpp:"#.drawRoundedRect(@)".} # Public
proc drawRoundedRect*(this: QPainter, rect: QRect, xRadius: cfloat, yRadius: cfloat, mode: Qt_SizeMode) {.header:headerFile, importcpp:"#.drawRoundedRect(@)".} # Public
import nimqt/qtgui/qpixmap
# 1 default parameters!
proc drawTiledPixmap*(this: QPainter, rect: QRectF, pm: QPixmap, offset: QPointF) {.header:headerFile, importcpp:"#.drawTiledPixmap(@)".} # Public
proc drawTiledPixmap*(this: QPainter, rect: QRectF, pm: QPixmap) {.header:headerFile, importcpp:"#.drawTiledPixmap(@)".} # Public
# 2 default parameters!
proc drawTiledPixmap*(this: QPainter, x: cint, y: cint, w: cint, h: cint, arg_4: QPixmap, sx: cint, sy: cint) {.header:headerFile, importcpp:"#.drawTiledPixmap(@)".} # Public
proc drawTiledPixmap*(this: QPainter, x: cint, y: cint, w: cint, h: cint, arg_4: QPixmap, sx: cint) {.header:headerFile, importcpp:"#.drawTiledPixmap(@)".} # Public
proc drawTiledPixmap*(this: QPainter, x: cint, y: cint, w: cint, h: cint, arg_4: QPixmap) {.header:headerFile, importcpp:"#.drawTiledPixmap(@)".} # Public
# 1 default parameters!
proc drawTiledPixmap*(this: QPainter, arg_0: QRect, arg_1: QPixmap, arg_2: QPoint) {.header:headerFile, importcpp:"#.drawTiledPixmap(@)".} # Public
proc drawTiledPixmap*(this: QPainter, arg_0: QRect, arg_1: QPixmap) {.header:headerFile, importcpp:"#.drawTiledPixmap(@)".} # Public
import nimqt/qtgui/qpicture
proc drawPicture*(this: QPainter, p: QPointF, picture: QPicture) {.header:headerFile, importcpp:"#.drawPicture(@)".} # Public
proc drawPicture*(this: QPainter, x: cint, y: cint, picture: QPicture) {.header:headerFile, importcpp:"#.drawPicture(@)".} # Public
proc drawPicture*(this: QPainter, p: QPoint, picture: QPicture) {.header:headerFile, importcpp:"#.drawPicture(@)".} # Public
proc drawPixmap*(this: QPainter, targetRect: QRectF, pixmap: QPixmap, sourceRect: QRectF) {.header:headerFile, importcpp:"#.drawPixmap(@)".} # Public
proc drawPixmap*(this: QPainter, targetRect: QRect, pixmap: QPixmap, sourceRect: QRect) {.header:headerFile, importcpp:"#.drawPixmap(@)".} # Public
proc drawPixmap*(this: QPainter, x: cint, y: cint, w: cint, h: cint, pm: QPixmap, sx: cint, sy: cint, sw: cint, sh: cint) {.header:headerFile, importcpp:"#.drawPixmap(@)".} # Public
proc drawPixmap*(this: QPainter, x: cint, y: cint, pm: QPixmap, sx: cint, sy: cint, sw: cint, sh: cint) {.header:headerFile, importcpp:"#.drawPixmap(@)".} # Public
proc drawPixmap*(this: QPainter, p: QPointF, pm: QPixmap, sr: QRectF) {.header:headerFile, importcpp:"#.drawPixmap(@)".} # Public
proc drawPixmap*(this: QPainter, p: QPoint, pm: QPixmap, sr: QRect) {.header:headerFile, importcpp:"#.drawPixmap(@)".} # Public
proc drawPixmap*(this: QPainter, p: QPointF, pm: QPixmap) {.header:headerFile, importcpp:"#.drawPixmap(@)".} # Public
proc drawPixmap*(this: QPainter, p: QPoint, pm: QPixmap) {.header:headerFile, importcpp:"#.drawPixmap(@)".} # Public
proc drawPixmap*(this: QPainter, x: cint, y: cint, pm: QPixmap) {.header:headerFile, importcpp:"#.drawPixmap(@)".} # Public
proc drawPixmap*(this: QPainter, r: QRect, pm: QPixmap) {.header:headerFile, importcpp:"#.drawPixmap(@)".} # Public
proc drawPixmap*(this: QPainter, x: cint, y: cint, w: cint, h: cint, pm: QPixmap) {.header:headerFile, importcpp:"#.drawPixmap(@)".} # Public
# 1 default parameters!
proc drawPixmapFragments*(this: QPainter, fragments: ptr QPainter_PixmapFragment, fragmentCount: cint, pixmap: QPixmap, hints: QFlags[QPainter_PixmapFragmentHint]) {.header:headerFile, importcpp:"#.drawPixmapFragments(@)".} # Public
proc drawPixmapFragments*(this: QPainter, fragments: ptr QPainter_PixmapFragment, fragmentCount: cint, pixmap: QPixmap) {.header:headerFile, importcpp:"#.drawPixmapFragments(@)".} # Public
import nimqt/qtgui/qimage
# 1 default parameters!
proc drawImage*(this: QPainter, targetRect: QRectF, image: QImage, sourceRect: QRectF, flags: Qt_ImageConversionFlags) {.header:headerFile, importcpp:"#.drawImage(@)".} # Public
proc drawImage*(this: QPainter, targetRect: QRectF, image: QImage, sourceRect: QRectF) {.header:headerFile, importcpp:"#.drawImage(@)".} # Public
# 1 default parameters!
proc drawImage*(this: QPainter, targetRect: QRect, image: QImage, sourceRect: QRect, flags: Qt_ImageConversionFlags) {.header:headerFile, importcpp:"#.drawImage(@)".} # Public
proc drawImage*(this: QPainter, targetRect: QRect, image: QImage, sourceRect: QRect) {.header:headerFile, importcpp:"#.drawImage(@)".} # Public
# 1 default parameters!
proc drawImage*(this: QPainter, p: QPointF, image: QImage, sr: QRectF, flags: Qt_ImageConversionFlags) {.header:headerFile, importcpp:"#.drawImage(@)".} # Public
proc drawImage*(this: QPainter, p: QPointF, image: QImage, sr: QRectF) {.header:headerFile, importcpp:"#.drawImage(@)".} # Public
# 1 default parameters!
proc drawImage*(this: QPainter, p: QPoint, image: QImage, sr: QRect, flags: Qt_ImageConversionFlags) {.header:headerFile, importcpp:"#.drawImage(@)".} # Public
proc drawImage*(this: QPainter, p: QPoint, image: QImage, sr: QRect) {.header:headerFile, importcpp:"#.drawImage(@)".} # Public
proc drawImage*(this: QPainter, r: QRectF, image: QImage) {.header:headerFile, importcpp:"#.drawImage(@)".} # Public
proc drawImage*(this: QPainter, r: QRect, image: QImage) {.header:headerFile, importcpp:"#.drawImage(@)".} # Public
proc drawImage*(this: QPainter, p: QPointF, image: QImage) {.header:headerFile, importcpp:"#.drawImage(@)".} # Public
proc drawImage*(this: QPainter, p: QPoint, image: QImage) {.header:headerFile, importcpp:"#.drawImage(@)".} # Public
# 3 default parameters!
proc drawImage*(this: QPainter, x: cint, y: cint, image: QImage, sx: cint, sy: cint, sw: cint, sh: cint, flags: Qt_ImageConversionFlags) {.header:headerFile, importcpp:"#.drawImage(@)".} # Public
proc drawImage*(this: QPainter, x: cint, y: cint, image: QImage, sx: cint, sy: cint, sw: cint, sh: cint) {.header:headerFile, importcpp:"#.drawImage(@)".} # Public
proc drawImage*(this: QPainter, x: cint, y: cint, image: QImage, sx: cint, sy: cint, sw: cint) {.header:headerFile, importcpp:"#.drawImage(@)".} # Public
proc drawImage*(this: QPainter, x: cint, y: cint, image: QImage, sx: cint, sy: cint) {.header:headerFile, importcpp:"#.drawImage(@)".} # Public
proc setLayoutDirection*(this: QPainter, direction: Qt_LayoutDirection) {.header:headerFile, importcpp:"#.setLayoutDirection(@)".} # Public
proc layoutDirection*(this: QPainter): Qt_LayoutDirection {.header:headerFile, importcpp:"#.layoutDirection(@)".} # Public
import nimqt/qtgui/qglyphrun
proc drawGlyphRun*(this: QPainter, position: QPointF, glyphRun: QGlyphRun) {.header:headerFile, importcpp:"#.drawGlyphRun(@)".} # Public
import nimqt/qtgui/qstatictext
proc drawStaticText*(this: QPainter, topLeftPosition: QPointF, staticText: QStaticText) {.header:headerFile, importcpp:"#.drawStaticText(@)".} # Public
proc drawStaticText*(this: QPainter, topLeftPosition: QPoint, staticText: QStaticText) {.header:headerFile, importcpp:"#.drawStaticText(@)".} # Public
proc drawStaticText*(this: QPainter, left: cint, top: cint, staticText: QStaticText) {.header:headerFile, importcpp:"#.drawStaticText(@)".} # Public
import nimqt/qtcore/qstring
proc drawText*(this: QPainter, p: QPointF, s: QString) {.header:headerFile, importcpp:"#.drawText(@)".} # Public
proc drawText*(this: QPainter, p: QPoint, s: QString) {.header:headerFile, importcpp:"#.drawText(@)".} # Public
proc drawText*(this: QPainter, x: cint, y: cint, s: QString) {.header:headerFile, importcpp:"#.drawText(@)".} # Public
proc drawText*(this: QPainter, p: QPointF, str: QString, tf: cint, justificationPadding: cint) {.header:headerFile, importcpp:"#.drawText(@)".} # Public
# 1 default parameters!
proc drawText*(this: QPainter, r: QRectF, flags: cint, text: QString, br: ptr QRectF) {.header:headerFile, importcpp:"#.drawText(@)".} # Public
proc drawText*(this: QPainter, r: QRectF, flags: cint, text: QString) {.header:headerFile, importcpp:"#.drawText(@)".} # Public
# 1 default parameters!
proc drawText*(this: QPainter, r: QRect, flags: cint, text: QString, br: ptr QRect) {.header:headerFile, importcpp:"#.drawText(@)".} # Public
proc drawText*(this: QPainter, r: QRect, flags: cint, text: QString) {.header:headerFile, importcpp:"#.drawText(@)".} # Public
# 1 default parameters!
proc drawText*(this: QPainter, x: cint, y: cint, w: cint, h: cint, flags: cint, text: QString, br: ptr QRect) {.header:headerFile, importcpp:"#.drawText(@)".} # Public
proc drawText*(this: QPainter, x: cint, y: cint, w: cint, h: cint, flags: cint, text: QString) {.header:headerFile, importcpp:"#.drawText(@)".} # Public
import nimqt/qtgui/qtextoption
# 1 default parameters!
proc drawText*(this: QPainter, r: QRectF, text: QString, o: QTextOption) {.header:headerFile, importcpp:"#.drawText(@)".} # Public
proc drawText*(this: QPainter, r: QRectF, text: QString) {.header:headerFile, importcpp:"#.drawText(@)".} # Public
proc boundingRect*(this: QPainter, rect: QRectF, flags: cint, text: QString): QRectF {.header:headerFile, importcpp:"#.boundingRect(@)".} # Public
proc boundingRect*(this: QPainter, rect: QRect, flags: cint, text: QString): QRect {.header:headerFile, importcpp:"#.boundingRect(@)".} # Public
proc boundingRect*(this: QPainter, x: cint, y: cint, w: cint, h: cint, flags: cint, text: QString): QRect {.header:headerFile, importcpp:"#.boundingRect(@)".} # Public
# 1 default parameters!
proc boundingRect*(this: QPainter, rect: QRectF, text: QString, o: QTextOption): QRectF {.header:headerFile, importcpp:"#.boundingRect(@)".} # Public
proc boundingRect*(this: QPainter, rect: QRectF, text: QString): QRectF {.header:headerFile, importcpp:"#.boundingRect(@)".} # Public
import nimqt/qtgui/qpaintengine
proc drawTextItem*(this: QPainter, p: QPointF, ti: QTextItem) {.header:headerFile, importcpp:"#.drawTextItem(@)".} # Public
proc drawTextItem*(this: QPainter, x: cint, y: cint, ti: QTextItem) {.header:headerFile, importcpp:"#.drawTextItem(@)".} # Public
proc drawTextItem*(this: QPainter, p: QPoint, ti: QTextItem) {.header:headerFile, importcpp:"#.drawTextItem(@)".} # Public
proc fillRect*(this: QPainter, arg_0: QRectF, arg_1: QBrush) {.header:headerFile, importcpp:"#.fillRect(@)".} # Public
proc fillRect*(this: QPainter, x: cint, y: cint, w: cint, h: cint, arg_4: QBrush) {.header:headerFile, importcpp:"#.fillRect(@)".} # Public
proc fillRect*(this: QPainter, arg_0: QRect, arg_1: QBrush) {.header:headerFile, importcpp:"#.fillRect(@)".} # Public
proc fillRect*(this: QPainter, arg_0: QRectF, color: QColor) {.header:headerFile, importcpp:"#.fillRect(@)".} # Public
proc fillRect*(this: QPainter, x: cint, y: cint, w: cint, h: cint, color: QColor) {.header:headerFile, importcpp:"#.fillRect(@)".} # Public
proc fillRect*(this: QPainter, arg_0: QRect, color: QColor) {.header:headerFile, importcpp:"#.fillRect(@)".} # Public
proc fillRect*(this: QPainter, x: cint, y: cint, w: cint, h: cint, c: Qt_GlobalColor) {.header:headerFile, importcpp:"#.fillRect(@)".} # Public
proc fillRect*(this: QPainter, r: QRect, c: Qt_GlobalColor) {.header:headerFile, importcpp:"#.fillRect(@)".} # Public
proc fillRect*(this: QPainter, r: QRectF, c: Qt_GlobalColor) {.header:headerFile, importcpp:"#.fillRect(@)".} # Public
proc fillRect*(this: QPainter, x: cint, y: cint, w: cint, h: cint, style: Qt_BrushStyle) {.header:headerFile, importcpp:"#.fillRect(@)".} # Public
proc fillRect*(this: QPainter, r: QRect, style: Qt_BrushStyle) {.header:headerFile, importcpp:"#.fillRect(@)".} # Public
proc fillRect*(this: QPainter, r: QRectF, style: Qt_BrushStyle) {.header:headerFile, importcpp:"#.fillRect(@)".} # Public
proc fillRect*(this: QPainter, x: cint, y: cint, w: cint, h: cint, preset: QGradient_Preset) {.header:headerFile, importcpp:"#.fillRect(@)".} # Public
proc fillRect*(this: QPainter, r: QRect, preset: QGradient_Preset) {.header:headerFile, importcpp:"#.fillRect(@)".} # Public
proc fillRect*(this: QPainter, r: QRectF, preset: QGradient_Preset) {.header:headerFile, importcpp:"#.fillRect(@)".} # Public
proc eraseRect*(this: QPainter, arg_0: QRectF) {.header:headerFile, importcpp:"#.eraseRect(@)".} # Public
proc eraseRect*(this: QPainter, x: cint, y: cint, w: cint, h: cint) {.header:headerFile, importcpp:"#.eraseRect(@)".} # Public
proc eraseRect*(this: QPainter, arg_0: QRect) {.header:headerFile, importcpp:"#.eraseRect(@)".} # Public
# 1 default parameters!
proc setRenderHint*(this: QPainter, hint: QPainter_RenderHint, on: bool) {.header:headerFile, importcpp:"#.setRenderHint(@)".} # Public
proc setRenderHint*(this: QPainter, hint: QPainter_RenderHint) {.header:headerFile, importcpp:"#.setRenderHint(@)".} # Public
# 1 default parameters!
proc setRenderHints*(this: QPainter, hints: QFlags[QPainter_RenderHint], on: bool) {.header:headerFile, importcpp:"#.setRenderHints(@)".} # Public
proc setRenderHints*(this: QPainter, hints: QFlags[QPainter_RenderHint]) {.header:headerFile, importcpp:"#.setRenderHints(@)".} # Public
proc renderHints*(this: QPainter): QFlags[QPainter_RenderHint] {.header:headerFile, importcpp:"#.renderHints(@)".} # Public
proc testRenderHint*(this: QPainter, hint: QPainter_RenderHint): bool {.header:headerFile, importcpp:"#.testRenderHint(@)".} # Public
proc paintEngine*(this: QPainter): ptr QPaintEngine {.header:headerFile, importcpp:"#.paintEngine(@)".} # Public
proc beginNativePainting*(this: QPainter) {.header:headerFile, importcpp:"#.beginNativePainting(@)".} # Public
proc endNativePainting*(this: QPainter) {.header:headerFile, importcpp:"#.endNativePainting(@)".} # Public
# Stuff for class QPainter_PixmapFragment

# Public methods for QPainter_PixmapFragment
# 4 default parameters!
proc static_QPainter_PixmapFragment_create*(pos: QPointF, sourceRect: QRectF, scaleX: cfloat, scaleY: cfloat, rotation: cfloat, opacity: cfloat): QPainter_PixmapFragment {.header:headerFile, importcpp:"QPainter::PixmapFragment::create(@)".} # Public static
proc static_QPainter_PixmapFragment_create*(pos: QPointF, sourceRect: QRectF, scaleX: cfloat, scaleY: cfloat, rotation: cfloat): QPainter_PixmapFragment {.header:headerFile, importcpp:"QPainter::PixmapFragment::create(@)".} # Public static
proc static_QPainter_PixmapFragment_create*(pos: QPointF, sourceRect: QRectF, scaleX: cfloat, scaleY: cfloat): QPainter_PixmapFragment {.header:headerFile, importcpp:"QPainter::PixmapFragment::create(@)".} # Public static
proc static_QPainter_PixmapFragment_create*(pos: QPointF, sourceRect: QRectF, scaleX: cfloat): QPainter_PixmapFragment {.header:headerFile, importcpp:"QPainter::PixmapFragment::create(@)".} # Public static
proc static_QPainter_PixmapFragment_create*(pos: QPointF, sourceRect: QRectF): QPainter_PixmapFragment {.header:headerFile, importcpp:"QPainter::PixmapFragment::create(@)".} # Public static

export qpaintengine
export qfontinfo
export qstatictext
export qfont
export qpixmap
export qfontmetrics
export qstring
export qtextoption
export qpicture
export qimage
export qnamespace
export qpainterpath
export qlist
export qglyphrun
export qpolygon
export qbrush
export qpoint
export qregion
export qline
export qrect
export qflags
export qpaintdevice
export qtransform
export qpen
export qcolor
