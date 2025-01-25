const headerFile* = "QtGui/qpaintengine.h"

type
    # Enums found in the C++ code
    # Global
    QTextItem_RenderFlag* {.header:headerFile,importcpp:"QTextItem::RenderFlag".} = enum Dummy = -1, RightToLeft = 0x1, Overline = 0x10, Underline = 0x20, 
        StrikeOut = 0x40
    QPaintEngine_PaintEngineFeature* {.header:headerFile,importcpp:"QPaintEngine::PaintEngineFeature".} = enum AllFeatures = -1, PrimitiveTransform = 0x1, PatternTransform = 0x2, PixmapTransform = 0x4, 
        PatternBrush = 0x8, LinearGradientFill = 0x10, RadialGradientFill = 0x20, ConicalGradientFill = 0x40, AlphaBlend = 0x80, 
        PorterDuff = 0x100, PainterPaths = 0x200, Antialiasing = 0x400, BrushStroke = 0x800, ConstantOpacity = 0x1000, 
        MaskedBrush = 0x2000, PerspectiveTransform = 0x4000, BlendModes = 0x8000, ObjectBoundingModeGradients = 0x10000, RasterOpModes = 0x20000, 
        PaintOutsidePaintEvent = 0x20000000
    QPaintEngine_DirtyFlag* {.header:headerFile,importcpp:"QPaintEngine::DirtyFlag".} = enum DirtyPen = 0x1, DirtyBrush = 0x2, DirtyBrushOrigin = 0x4, DirtyFont = 0x8, 
        DirtyBackground = 0x10, DirtyBackgroundMode = 0x20, DirtyTransform = 0x40, DirtyClipRegion = 0x80, DirtyClipPath = 0x100, 
        DirtyHints = 0x200, DirtyCompositionMode = 0x400, DirtyClipEnabled = 0x800, DirtyOpacity = 0x1000, AllDirty = 0xffff
    QPaintEngine_PolygonDrawMode* {.header:headerFile,importcpp:"QPaintEngine::PolygonDrawMode".} = enum OddEvenMode = 0, WindingMode = 0x1, ConvexMode = 0x2, PolylineMode = 0x3
    QPaintEngine_Type* {.header:headerFile,importcpp:"QPaintEngine::Type".} = enum X11 = 0, Windows = 0x1, QuickDraw = 0x2, CoreGraphics = 0x3, 
        MacPrinter = 0x4, QWindowSystem = 0x5, OpenGL = 0x6, Picture = 0x7, SVG = 0x8, 
        Raster = 0x9, Direct3D = 0xa, Pdf = 0xb, OpenVG = 0xc, OpenGL2 = 0xd, 
        PaintBuffer = 0xe, Blitter = 0xf, Direct2D = 0x10, User = 0x32, MaxUser = 0x64

type
    # Classes found in the C++ code
    QTextItem* {.header:headerFile,importcpp:"QTextItem" ,pure,inheritable.} = object
    QPaintEngine* {.header:headerFile,importcpp:"QPaintEngine" ,pure,inheritable.} = object
    QPaintEngineState* {.header:headerFile,importcpp:"QPaintEngineState" ,pure,inheritable.} = object
import nimqt/qtcore/qflags


type
    # typedefs found in the C++ code
    QTextItem_RenderFlags * = QFlags[QTextItem_RenderFlag]
    QPaintEngine_PaintEngineFeatures * = QFlags[QPaintEngine_PaintEngineFeature]
    QPaintEngine_DirtyFlags * = QFlags[QPaintEngine_DirtyFlag]

# Stuff for class QTextItem

# Public methods for QTextItem
proc descent*(this: QTextItem): cfloat {.header:headerFile, importcpp:"#.descent(@)".} # Public
proc ascent*(this: QTextItem): cfloat {.header:headerFile, importcpp:"#.ascent(@)".} # Public
proc width*(this: QTextItem): cfloat {.header:headerFile, importcpp:"#.width(@)".} # Public
proc renderFlags*(this: QTextItem): QFlags[QTextItem_RenderFlag] {.header:headerFile, importcpp:"#.renderFlags(@)".} # Public
import nimqt/qtcore/qstring
proc text*(this: QTextItem): QString {.header:headerFile, importcpp:"#.text(@)".} # Public
import nimqt/qtgui/qfont
proc font*(this: QTextItem): QFont {.header:headerFile, importcpp:"#.font(@)".} # Public
# Stuff for class QPaintEngine

# Public constructors for QPaintEngine
# 1 default parameters!
proc newQPaintEngine*(features: QFlags[QPaintEngine_PaintEngineFeature]): QPaintEngine {. header:headerFile, importcpp:"QPaintEngine(@)", constructor .} #
proc newQPaintEngine*(): QPaintEngine {. header:headerFile, importcpp:"QPaintEngine(@)", constructor .} #

# Public methods for QPaintEngine
proc isActive*(this: QPaintEngine): bool {.header:headerFile, importcpp:"#.isActive(@)".} # Public
proc setActive*(this: QPaintEngine, newState: bool) {.header:headerFile, importcpp:"#.setActive(@)".} # Public
import nimqt/qtgui/qpaintdevice
proc begin*(this: QPaintEngine, pdev: ptr QPaintDevice): bool {.header:headerFile, importcpp:"#.begin(@)".} # Public
proc `end`*(this: QPaintEngine): bool {.header:headerFile, importcpp:"#.end(@)".} # Public
proc updateState*(this: QPaintEngine, state: QPaintEngineState) {.header:headerFile, importcpp:"#.updateState(@)".} # Public
import nimqt/qtcore/qrect
proc drawRects*(this: QPaintEngine, rects: ptr QRect, rectCount: cint) {.header:headerFile, importcpp:"#.drawRects(@)".} # Public
proc drawRects*(this: QPaintEngine, rects: ptr QRectF, rectCount: cint) {.header:headerFile, importcpp:"#.drawRects(@)".} # Public
import nimqt/qtcore/qline
proc drawLines*(this: QPaintEngine, lines: ptr QLine, lineCount: cint) {.header:headerFile, importcpp:"#.drawLines(@)".} # Public
proc drawLines*(this: QPaintEngine, lines: ptr QLineF, lineCount: cint) {.header:headerFile, importcpp:"#.drawLines(@)".} # Public
proc drawEllipse*(this: QPaintEngine, r: QRectF) {.header:headerFile, importcpp:"#.drawEllipse(@)".} # Public
proc drawEllipse*(this: QPaintEngine, r: QRect) {.header:headerFile, importcpp:"#.drawEllipse(@)".} # Public
import nimqt/qtgui/qpainterpath
proc drawPath*(this: QPaintEngine, path: QPainterPath) {.header:headerFile, importcpp:"#.drawPath(@)".} # Public
import nimqt/qtcore/qpoint
proc drawPoints*(this: QPaintEngine, points: ptr QPointF, pointCount: cint) {.header:headerFile, importcpp:"#.drawPoints(@)".} # Public
proc drawPoints*(this: QPaintEngine, points: ptr QPoint, pointCount: cint) {.header:headerFile, importcpp:"#.drawPoints(@)".} # Public
proc drawPolygon*(this: QPaintEngine, points: ptr QPointF, pointCount: cint, mode: QPaintEngine_PolygonDrawMode) {.header:headerFile, importcpp:"#.drawPolygon(@)".} # Public
proc drawPolygon*(this: QPaintEngine, points: ptr QPoint, pointCount: cint, mode: QPaintEngine_PolygonDrawMode) {.header:headerFile, importcpp:"#.drawPolygon(@)".} # Public
import nimqt/qtgui/qpixmap
proc drawPixmap*(this: QPaintEngine, r: QRectF, pm: QPixmap, sr: QRectF) {.header:headerFile, importcpp:"#.drawPixmap(@)".} # Public
proc drawTextItem*(this: QPaintEngine, p: QPointF, textItem: QTextItem) {.header:headerFile, importcpp:"#.drawTextItem(@)".} # Public
proc drawTiledPixmap*(this: QPaintEngine, r: QRectF, pixmap: QPixmap, s: QPointF) {.header:headerFile, importcpp:"#.drawTiledPixmap(@)".} # Public
import nimqt/qtgui/qimage
import nimqt/qtcore/qnamespace
# 1 default parameters!
proc drawImage*(this: QPaintEngine, r: QRectF, pm: QImage, sr: QRectF, flags: Qt_ImageConversionFlags) {.header:headerFile, importcpp:"#.drawImage(@)".} # Public
proc drawImage*(this: QPaintEngine, r: QRectF, pm: QImage, sr: QRectF) {.header:headerFile, importcpp:"#.drawImage(@)".} # Public
proc setPaintDevice*(this: QPaintEngine, device: ptr QPaintDevice) {.header:headerFile, importcpp:"#.setPaintDevice(@)".} # Public
proc paintDevice*(this: QPaintEngine): ptr QPaintDevice {.header:headerFile, importcpp:"#.paintDevice(@)".} # Public
import nimqt/qtgui/qregion
proc setSystemClip*(this: QPaintEngine, baseClip: QRegion) {.header:headerFile, importcpp:"#.setSystemClip(@)".} # Public
proc systemClip*(this: QPaintEngine): QRegion {.header:headerFile, importcpp:"#.systemClip(@)".} # Public
proc setSystemRect*(this: QPaintEngine, rect: QRect) {.header:headerFile, importcpp:"#.setSystemRect(@)".} # Public
proc systemRect*(this: QPaintEngine): QRect {.header:headerFile, importcpp:"#.systemRect(@)".} # Public
proc coordinateOffset*(this: QPaintEngine): QPoint {.header:headerFile, importcpp:"#.coordinateOffset(@)".} # Public
proc `type`*(this: QPaintEngine): QPaintEngine_Type {.header:headerFile, importcpp:"#.type(@)".} # Public
proc fix_neg_rect*(this: QPaintEngine, x: ptr cint, y: ptr cint, w: ptr cint, h: ptr cint) {.header:headerFile, importcpp:"#.fix_neg_rect(@)".} # Public
proc testDirty*(this: QPaintEngine, df: QFlags[QPaintEngine_DirtyFlag]): bool {.header:headerFile, importcpp:"#.testDirty(@)".} # Public
proc setDirty*(this: QPaintEngine, df: QFlags[QPaintEngine_DirtyFlag]) {.header:headerFile, importcpp:"#.setDirty(@)".} # Public
proc clearDirty*(this: QPaintEngine, df: QFlags[QPaintEngine_DirtyFlag]) {.header:headerFile, importcpp:"#.clearDirty(@)".} # Public
proc hasFeature*(this: QPaintEngine, feature: QFlags[QPaintEngine_PaintEngineFeature]): bool {.header:headerFile, importcpp:"#.hasFeature(@)".} # Public
import nimqt/qtgui/qpainter
proc painter*(this: QPaintEngine): ptr QPainter {.header:headerFile, importcpp:"#.painter(@)".} # Public
proc syncState*(this: QPaintEngine) {.header:headerFile, importcpp:"#.syncState(@)".} # Public
proc isExtended*(this: QPaintEngine): bool {.header:headerFile, importcpp:"#.isExtended(@)".} # Public
import nimqt/qtcore/qsize
proc createPixmap*(this: QPaintEngine, size: QSize): QPixmap {.header:headerFile, importcpp:"#.createPixmap(@)".} # Public
# 1 default parameters!
proc createPixmapFromImage*(this: QPaintEngine, image: QImage, flags: Qt_ImageConversionFlags): QPixmap {.header:headerFile, importcpp:"#.createPixmapFromImage(@)".} # Public
proc createPixmapFromImage*(this: QPaintEngine, image: QImage): QPixmap {.header:headerFile, importcpp:"#.createPixmapFromImage(@)".} # Public
# Stuff for class QPaintEngineState

# Public methods for QPaintEngineState
proc state*(this: QPaintEngineState): QPaintEngine_DirtyFlags {.header:headerFile, importcpp:"#.state(@)".} # Public
import nimqt/qtgui/qpen
proc pen*(this: QPaintEngineState): QPen {.header:headerFile, importcpp:"#.pen(@)".} # Public
import nimqt/qtgui/qbrush
proc brush*(this: QPaintEngineState): QBrush {.header:headerFile, importcpp:"#.brush(@)".} # Public
proc brushOrigin*(this: QPaintEngineState): QPointF {.header:headerFile, importcpp:"#.brushOrigin(@)".} # Public
proc backgroundBrush*(this: QPaintEngineState): QBrush {.header:headerFile, importcpp:"#.backgroundBrush(@)".} # Public
proc backgroundMode*(this: QPaintEngineState): Qt_BGMode {.header:headerFile, importcpp:"#.backgroundMode(@)".} # Public
proc font*(this: QPaintEngineState): QFont {.header:headerFile, importcpp:"#.font(@)".} # Public
import nimqt/qtgui/qtransform
proc transform*(this: QPaintEngineState): QTransform {.header:headerFile, importcpp:"#.transform(@)".} # Public
proc clipOperation*(this: QPaintEngineState): Qt_ClipOperation {.header:headerFile, importcpp:"#.clipOperation(@)".} # Public
proc clipRegion*(this: QPaintEngineState): QRegion {.header:headerFile, importcpp:"#.clipRegion(@)".} # Public
proc clipPath*(this: QPaintEngineState): QPainterPath {.header:headerFile, importcpp:"#.clipPath(@)".} # Public
proc isClipEnabled*(this: QPaintEngineState): bool {.header:headerFile, importcpp:"#.isClipEnabled(@)".} # Public
proc renderHints*(this: QPaintEngineState): QPainter_RenderHints {.header:headerFile, importcpp:"#.renderHints(@)".} # Public
proc compositionMode*(this: QPaintEngineState): QPainter_CompositionMode {.header:headerFile, importcpp:"#.compositionMode(@)".} # Public
proc opacity*(this: QPaintEngineState): cfloat {.header:headerFile, importcpp:"#.opacity(@)".} # Public
proc painter*(this: QPaintEngineState): ptr QPainter {.header:headerFile, importcpp:"#.painter(@)".} # Public
proc brushNeedsResolving*(this: QPaintEngineState): bool {.header:headerFile, importcpp:"#.brushNeedsResolving(@)".} # Public
proc penNeedsResolving*(this: QPaintEngineState): bool {.header:headerFile, importcpp:"#.penNeedsResolving(@)".} # Public

export qfont
export qpixmap
export qstring
export qsize
export qimage
export qnamespace
export qpainterpath
export qpainter
export qbrush
export qpoint
export qline
export qregion
export qrect
export qflags
export qpaintdevice
export qtransform
export qpen
