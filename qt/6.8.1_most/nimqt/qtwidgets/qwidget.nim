const headerFile* = "QtWidgets/qwidget.h"

type
    # Enums found in the C++ code
    # Global
    QWidget_RenderFlag* {.header:headerFile,importcpp:"QWidget::RenderFlag".} = enum DrawWindowBackground = 0x1, DrawChildren = 0x2, IgnoreMask = 0x4

import nimqt/qtcore/qobject
type
    # Classes found in the C++ code
    QWidgetData* {.header:headerFile,importcpp:"QWidgetData" ,pure,inheritable.} = object
    QWidget* {.header:headerFile,importcpp:"QWidget" ,pure.} = object of QObject
import nimqt/qtgui/qpaintdevice
import nimqt/qtcore/qflags


type
    # typedefs found in the C++ code
    QWidget_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric
    QWidget_RenderFlags * = QFlags[QWidget_RenderFlag]

# Stuff for class QWidget

# Public constructors for QWidget
import nimqt/qtcore/qnamespace
# 2 default parameters!
proc newQWidget*(parent: ptr QWidget, f: Qt_WindowFlags): ptr QWidget {. header:headerFile, importcpp:"new QWidget(@)" .} #
proc newQWidget*(parent: ptr QWidget): ptr QWidget {. header:headerFile, importcpp:"new QWidget(@)" .} #
proc newQWidget*(): ptr QWidget {. header:headerFile, importcpp:"new QWidget(@)" .} #

# Public methods for QWidget
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QWidget_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QWidget::tr(@)".} # Public static
proc static_QWidget_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QWidget::tr(@)".} # Public static
proc devType*(this: ptr QWidget): cint {.header:headerFile, importcpp:"#.devType(@)".} # Public
proc createWinId*(this: ptr QWidget) {.header:headerFile, importcpp:"#.createWinId(@)".} # Public
import nimqt/qtwidgets/qstyle
proc style*(this: ptr QWidget): ptr QStyle {.header:headerFile, importcpp:"#.style(@)".} # Public
proc setStyle*(this: ptr QWidget, arg_0: ptr QStyle) {.header:headerFile, importcpp:"#.setStyle(@)".} # Public
proc isTopLevel*(this: ptr QWidget): bool {.header:headerFile, importcpp:"#.isTopLevel(@)".} # Public
proc isWindow*(this: ptr QWidget): bool {.header:headerFile, importcpp:"#.isWindow(@)".} # Public
proc isModal*(this: ptr QWidget): bool {.header:headerFile, importcpp:"#.isModal(@)".} # Public
proc windowModality*(this: ptr QWidget): Qt_WindowModality {.header:headerFile, importcpp:"#.windowModality(@)".} # Public
proc setWindowModality*(this: ptr QWidget, windowModality: Qt_WindowModality) {.header:headerFile, importcpp:"#.setWindowModality(@)".} # Public
proc isEnabled*(this: ptr QWidget): bool {.header:headerFile, importcpp:"#.isEnabled(@)".} # Public
proc isEnabledTo*(this: ptr QWidget, arg_0: ptr QWidget): bool {.header:headerFile, importcpp:"#.isEnabledTo(@)".} # Public
proc setEnabled*(this: ptr QWidget, arg_0: bool) {.header:headerFile, importcpp:"#.setEnabled(@)".} # Public
proc setDisabled*(this: ptr QWidget, arg_0: bool) {.header:headerFile, importcpp:"#.setDisabled(@)".} # Public
proc setWindowModified*(this: ptr QWidget, arg_0: bool) {.header:headerFile, importcpp:"#.setWindowModified(@)".} # Public
import nimqt/qtcore/qrect
proc frameGeometry*(this: ptr QWidget): QRect {.header:headerFile, importcpp:"#.frameGeometry(@)".} # Public
proc geometry*(this: ptr QWidget): QRect {.header:headerFile, importcpp:"#.geometry(@)".} # Public
proc normalGeometry*(this: ptr QWidget): QRect {.header:headerFile, importcpp:"#.normalGeometry(@)".} # Public
proc x*(this: ptr QWidget): cint {.header:headerFile, importcpp:"#.x(@)".} # Public
proc y*(this: ptr QWidget): cint {.header:headerFile, importcpp:"#.y(@)".} # Public
import nimqt/qtcore/qpoint
proc pos*(this: ptr QWidget): QPoint {.header:headerFile, importcpp:"#.pos(@)".} # Public
import nimqt/qtcore/qsize
proc frameSize*(this: ptr QWidget): QSize {.header:headerFile, importcpp:"#.frameSize(@)".} # Public
proc size*(this: ptr QWidget): QSize {.header:headerFile, importcpp:"#.size(@)".} # Public
proc width*(this: ptr QWidget): cint {.header:headerFile, importcpp:"#.width(@)".} # Public
proc height*(this: ptr QWidget): cint {.header:headerFile, importcpp:"#.height(@)".} # Public
proc rect*(this: ptr QWidget): QRect {.header:headerFile, importcpp:"#.rect(@)".} # Public
proc childrenRect*(this: ptr QWidget): QRect {.header:headerFile, importcpp:"#.childrenRect(@)".} # Public
import nimqt/qtgui/qregion
proc childrenRegion*(this: ptr QWidget): QRegion {.header:headerFile, importcpp:"#.childrenRegion(@)".} # Public
proc minimumSize*(this: ptr QWidget): QSize {.header:headerFile, importcpp:"#.minimumSize(@)".} # Public
proc maximumSize*(this: ptr QWidget): QSize {.header:headerFile, importcpp:"#.maximumSize(@)".} # Public
proc minimumWidth*(this: ptr QWidget): cint {.header:headerFile, importcpp:"#.minimumWidth(@)".} # Public
proc minimumHeight*(this: ptr QWidget): cint {.header:headerFile, importcpp:"#.minimumHeight(@)".} # Public
proc maximumWidth*(this: ptr QWidget): cint {.header:headerFile, importcpp:"#.maximumWidth(@)".} # Public
proc maximumHeight*(this: ptr QWidget): cint {.header:headerFile, importcpp:"#.maximumHeight(@)".} # Public
proc setMinimumSize*(this: ptr QWidget, arg_0: QSize) {.header:headerFile, importcpp:"#.setMinimumSize(@)".} # Public
proc setMinimumSize*(this: ptr QWidget, minw: cint, minh: cint) {.header:headerFile, importcpp:"#.setMinimumSize(@)".} # Public
proc setMaximumSize*(this: ptr QWidget, arg_0: QSize) {.header:headerFile, importcpp:"#.setMaximumSize(@)".} # Public
proc setMaximumSize*(this: ptr QWidget, maxw: cint, maxh: cint) {.header:headerFile, importcpp:"#.setMaximumSize(@)".} # Public
proc setMinimumWidth*(this: ptr QWidget, minw: cint) {.header:headerFile, importcpp:"#.setMinimumWidth(@)".} # Public
proc setMinimumHeight*(this: ptr QWidget, minh: cint) {.header:headerFile, importcpp:"#.setMinimumHeight(@)".} # Public
proc setMaximumWidth*(this: ptr QWidget, maxw: cint) {.header:headerFile, importcpp:"#.setMaximumWidth(@)".} # Public
proc setMaximumHeight*(this: ptr QWidget, maxh: cint) {.header:headerFile, importcpp:"#.setMaximumHeight(@)".} # Public
proc setupUi*(this: ptr QWidget, widget: ptr QWidget) {.header:headerFile, importcpp:"#.setupUi(@)".} # Public
proc sizeIncrement*(this: ptr QWidget): QSize {.header:headerFile, importcpp:"#.sizeIncrement(@)".} # Public
proc setSizeIncrement*(this: ptr QWidget, arg_0: QSize) {.header:headerFile, importcpp:"#.setSizeIncrement(@)".} # Public
proc setSizeIncrement*(this: ptr QWidget, w: cint, h: cint) {.header:headerFile, importcpp:"#.setSizeIncrement(@)".} # Public
proc baseSize*(this: ptr QWidget): QSize {.header:headerFile, importcpp:"#.baseSize(@)".} # Public
proc setBaseSize*(this: ptr QWidget, arg_0: QSize) {.header:headerFile, importcpp:"#.setBaseSize(@)".} # Public
proc setBaseSize*(this: ptr QWidget, basew: cint, baseh: cint) {.header:headerFile, importcpp:"#.setBaseSize(@)".} # Public
proc setFixedSize*(this: ptr QWidget, arg_0: QSize) {.header:headerFile, importcpp:"#.setFixedSize(@)".} # Public
proc setFixedSize*(this: ptr QWidget, w: cint, h: cint) {.header:headerFile, importcpp:"#.setFixedSize(@)".} # Public
proc setFixedWidth*(this: ptr QWidget, w: cint) {.header:headerFile, importcpp:"#.setFixedWidth(@)".} # Public
proc setFixedHeight*(this: ptr QWidget, h: cint) {.header:headerFile, importcpp:"#.setFixedHeight(@)".} # Public
proc mapToGlobal*(this: ptr QWidget, arg_1: QPointF): QPointF {.header:headerFile, importcpp:"#.mapToGlobal(@)".} # Public
proc mapToGlobal*(this: ptr QWidget, arg_1: QPoint): QPoint {.header:headerFile, importcpp:"#.mapToGlobal(@)".} # Public
proc mapFromGlobal*(this: ptr QWidget, arg_1: QPointF): QPointF {.header:headerFile, importcpp:"#.mapFromGlobal(@)".} # Public
proc mapFromGlobal*(this: ptr QWidget, arg_1: QPoint): QPoint {.header:headerFile, importcpp:"#.mapFromGlobal(@)".} # Public
proc mapToParent*(this: ptr QWidget, arg_1: QPointF): QPointF {.header:headerFile, importcpp:"#.mapToParent(@)".} # Public
proc mapToParent*(this: ptr QWidget, arg_1: QPoint): QPoint {.header:headerFile, importcpp:"#.mapToParent(@)".} # Public
proc mapFromParent*(this: ptr QWidget, arg_1: QPointF): QPointF {.header:headerFile, importcpp:"#.mapFromParent(@)".} # Public
proc mapFromParent*(this: ptr QWidget, arg_1: QPoint): QPoint {.header:headerFile, importcpp:"#.mapFromParent(@)".} # Public
proc mapTo*(this: ptr QWidget, arg_1: ptr QWidget, arg_2: QPointF): QPointF {.header:headerFile, importcpp:"#.mapTo(@)".} # Public
proc mapTo*(this: ptr QWidget, arg_1: ptr QWidget, arg_2: QPoint): QPoint {.header:headerFile, importcpp:"#.mapTo(@)".} # Public
proc mapFrom*(this: ptr QWidget, arg_1: ptr QWidget, arg_2: QPointF): QPointF {.header:headerFile, importcpp:"#.mapFrom(@)".} # Public
proc mapFrom*(this: ptr QWidget, arg_1: ptr QWidget, arg_2: QPoint): QPoint {.header:headerFile, importcpp:"#.mapFrom(@)".} # Public
proc window*(this: ptr QWidget): ptr QWidget {.header:headerFile, importcpp:"#.window(@)".} # Public
proc nativeParentWidget*(this: ptr QWidget): ptr QWidget {.header:headerFile, importcpp:"#.nativeParentWidget(@)".} # Public
proc topLevelWidget*(this: ptr QWidget): ptr QWidget {.header:headerFile, importcpp:"#.topLevelWidget(@)".} # Public
import nimqt/qtgui/qpalette
proc palette*(this: ptr QWidget): QPalette {.header:headerFile, importcpp:"#.palette(@)".} # Public
proc setPalette*(this: ptr QWidget, arg_0: QPalette) {.header:headerFile, importcpp:"#.setPalette(@)".} # Public
proc setBackgroundRole*(this: ptr QWidget, arg_0: QPalette_ColorRole) {.header:headerFile, importcpp:"#.setBackgroundRole(@)".} # Public
proc backgroundRole*(this: ptr QWidget): QPalette_ColorRole {.header:headerFile, importcpp:"#.backgroundRole(@)".} # Public
proc setForegroundRole*(this: ptr QWidget, arg_0: QPalette_ColorRole) {.header:headerFile, importcpp:"#.setForegroundRole(@)".} # Public
proc foregroundRole*(this: ptr QWidget): QPalette_ColorRole {.header:headerFile, importcpp:"#.foregroundRole(@)".} # Public
import nimqt/qtgui/qfont
proc font*(this: ptr QWidget): QFont {.header:headerFile, importcpp:"#.font(@)".} # Public
proc setFont*(this: ptr QWidget, arg_0: QFont) {.header:headerFile, importcpp:"#.setFont(@)".} # Public
import nimqt/qtgui/qfontmetrics
proc fontMetrics*(this: ptr QWidget): QFontMetrics {.header:headerFile, importcpp:"#.fontMetrics(@)".} # Public
import nimqt/qtgui/qfontinfo
proc fontInfo*(this: ptr QWidget): QFontInfo {.header:headerFile, importcpp:"#.fontInfo(@)".} # Public
import nimqt/qtgui/qcursor
proc cursor*(this: ptr QWidget): QCursor {.header:headerFile, importcpp:"#.cursor(@)".} # Public
proc setCursor*(this: ptr QWidget, arg_0: QCursor) {.header:headerFile, importcpp:"#.setCursor(@)".} # Public
proc unsetCursor*(this: ptr QWidget) {.header:headerFile, importcpp:"#.unsetCursor(@)".} # Public
proc setMouseTracking*(this: ptr QWidget, enable: bool) {.header:headerFile, importcpp:"#.setMouseTracking(@)".} # Public
proc hasMouseTracking*(this: ptr QWidget): bool {.header:headerFile, importcpp:"#.hasMouseTracking(@)".} # Public
proc underMouse*(this: ptr QWidget): bool {.header:headerFile, importcpp:"#.underMouse(@)".} # Public
proc setTabletTracking*(this: ptr QWidget, enable: bool) {.header:headerFile, importcpp:"#.setTabletTracking(@)".} # Public
proc hasTabletTracking*(this: ptr QWidget): bool {.header:headerFile, importcpp:"#.hasTabletTracking(@)".} # Public
import nimqt/qtgui/qbitmap
proc setMask*(this: ptr QWidget, arg_0: QBitmap) {.header:headerFile, importcpp:"#.setMask(@)".} # Public
proc setMask*(this: ptr QWidget, arg_0: QRegion) {.header:headerFile, importcpp:"#.setMask(@)".} # Public
proc mask*(this: ptr QWidget): QRegion {.header:headerFile, importcpp:"#.mask(@)".} # Public
proc clearMask*(this: ptr QWidget) {.header:headerFile, importcpp:"#.clearMask(@)".} # Public
# 3 default parameters!
proc render*(this: ptr QWidget, target: ptr QPaintDevice, targetOffset: QPoint, sourceRegion: QRegion, renderFlags: QFlags[QWidget_RenderFlag]) {.header:headerFile, importcpp:"#.render(@)".} # Public
proc render*(this: ptr QWidget, target: ptr QPaintDevice, targetOffset: QPoint, sourceRegion: QRegion) {.header:headerFile, importcpp:"#.render(@)".} # Public
proc render*(this: ptr QWidget, target: ptr QPaintDevice, targetOffset: QPoint) {.header:headerFile, importcpp:"#.render(@)".} # Public
proc render*(this: ptr QWidget, target: ptr QPaintDevice) {.header:headerFile, importcpp:"#.render(@)".} # Public
import nimqt/qtgui/qpainter
# 3 default parameters!
proc render*(this: ptr QWidget, painter: ptr QPainter, targetOffset: QPoint, sourceRegion: QRegion, renderFlags: QFlags[QWidget_RenderFlag]) {.header:headerFile, importcpp:"#.render(@)".} # Public
proc render*(this: ptr QWidget, painter: ptr QPainter, targetOffset: QPoint, sourceRegion: QRegion) {.header:headerFile, importcpp:"#.render(@)".} # Public
proc render*(this: ptr QWidget, painter: ptr QPainter, targetOffset: QPoint) {.header:headerFile, importcpp:"#.render(@)".} # Public
proc render*(this: ptr QWidget, painter: ptr QPainter) {.header:headerFile, importcpp:"#.render(@)".} # Public
import nimqt/qtgui/qpixmap
# 1 default parameters!
proc grab*(this: ptr QWidget, rectangle: QRect): QPixmap {.header:headerFile, importcpp:"#.grab(@)".} # Public
proc grab*(this: ptr QWidget): QPixmap {.header:headerFile, importcpp:"#.grab(@)".} # Public
import nimqt/qtwidgets/qgraphicseffect
proc graphicsEffect*(this: ptr QWidget): ptr QGraphicsEffect {.header:headerFile, importcpp:"#.graphicsEffect(@)".} # Public
proc setGraphicsEffect*(this: ptr QWidget, effect: ptr QGraphicsEffect) {.header:headerFile, importcpp:"#.setGraphicsEffect(@)".} # Public
# 1 default parameters!
proc grabGesture*(this: ptr QWidget, `type`: Qt_GestureType, flags: Qt_GestureFlags) {.header:headerFile, importcpp:"#.grabGesture(@)".} # Public
proc grabGesture*(this: ptr QWidget, `type`: Qt_GestureType) {.header:headerFile, importcpp:"#.grabGesture(@)".} # Public
proc ungrabGesture*(this: ptr QWidget, `type`: Qt_GestureType) {.header:headerFile, importcpp:"#.ungrabGesture(@)".} # Public
proc setWindowTitle*(this: ptr QWidget, arg_0: QString) {.header:headerFile, importcpp:"#.setWindowTitle(@)".} # Public
proc setStyleSheet*(this: ptr QWidget, styleSheet: QString) {.header:headerFile, importcpp:"#.setStyleSheet(@)".} # Public
proc styleSheet*(this: ptr QWidget): QString {.header:headerFile, importcpp:"#.styleSheet(@)".} # Public
proc windowTitle*(this: ptr QWidget): QString {.header:headerFile, importcpp:"#.windowTitle(@)".} # Public
import nimqt/qtgui/qicon
proc setWindowIcon*(this: ptr QWidget, icon: QIcon) {.header:headerFile, importcpp:"#.setWindowIcon(@)".} # Public
proc windowIcon*(this: ptr QWidget): QIcon {.header:headerFile, importcpp:"#.windowIcon(@)".} # Public
proc setWindowIconText*(this: ptr QWidget, arg_0: QString) {.header:headerFile, importcpp:"#.setWindowIconText(@)".} # Public
proc windowIconText*(this: ptr QWidget): QString {.header:headerFile, importcpp:"#.windowIconText(@)".} # Public
proc setWindowRole*(this: ptr QWidget, arg_0: QString) {.header:headerFile, importcpp:"#.setWindowRole(@)".} # Public
proc windowRole*(this: ptr QWidget): QString {.header:headerFile, importcpp:"#.windowRole(@)".} # Public
proc setWindowFilePath*(this: ptr QWidget, filePath: QString) {.header:headerFile, importcpp:"#.setWindowFilePath(@)".} # Public
proc windowFilePath*(this: ptr QWidget): QString {.header:headerFile, importcpp:"#.windowFilePath(@)".} # Public
proc setWindowOpacity*(this: ptr QWidget, level: cfloat) {.header:headerFile, importcpp:"#.setWindowOpacity(@)".} # Public
proc windowOpacity*(this: ptr QWidget): cfloat {.header:headerFile, importcpp:"#.windowOpacity(@)".} # Public
proc isWindowModified*(this: ptr QWidget): bool {.header:headerFile, importcpp:"#.isWindowModified(@)".} # Public
proc setToolTip*(this: ptr QWidget, arg_0: QString) {.header:headerFile, importcpp:"#.setToolTip(@)".} # Public
proc toolTip*(this: ptr QWidget): QString {.header:headerFile, importcpp:"#.toolTip(@)".} # Public
proc setToolTipDuration*(this: ptr QWidget, msec: cint) {.header:headerFile, importcpp:"#.setToolTipDuration(@)".} # Public
proc toolTipDuration*(this: ptr QWidget): cint {.header:headerFile, importcpp:"#.toolTipDuration(@)".} # Public
proc setStatusTip*(this: ptr QWidget, arg_0: QString) {.header:headerFile, importcpp:"#.setStatusTip(@)".} # Public
proc statusTip*(this: ptr QWidget): QString {.header:headerFile, importcpp:"#.statusTip(@)".} # Public
proc setWhatsThis*(this: ptr QWidget, arg_0: QString) {.header:headerFile, importcpp:"#.setWhatsThis(@)".} # Public
proc whatsThis*(this: ptr QWidget): QString {.header:headerFile, importcpp:"#.whatsThis(@)".} # Public
proc accessibleName*(this: ptr QWidget): QString {.header:headerFile, importcpp:"#.accessibleName(@)".} # Public
proc setAccessibleName*(this: ptr QWidget, name: QString) {.header:headerFile, importcpp:"#.setAccessibleName(@)".} # Public
proc accessibleDescription*(this: ptr QWidget): QString {.header:headerFile, importcpp:"#.accessibleDescription(@)".} # Public
proc setAccessibleDescription*(this: ptr QWidget, description: QString) {.header:headerFile, importcpp:"#.setAccessibleDescription(@)".} # Public
proc setLayoutDirection*(this: ptr QWidget, direction: Qt_LayoutDirection) {.header:headerFile, importcpp:"#.setLayoutDirection(@)".} # Public
proc layoutDirection*(this: ptr QWidget): Qt_LayoutDirection {.header:headerFile, importcpp:"#.layoutDirection(@)".} # Public
proc unsetLayoutDirection*(this: ptr QWidget) {.header:headerFile, importcpp:"#.unsetLayoutDirection(@)".} # Public
import nimqt/qtcore/qlocale
proc setLocale*(this: ptr QWidget, locale: QLocale) {.header:headerFile, importcpp:"#.setLocale(@)".} # Public
proc locale*(this: ptr QWidget): QLocale {.header:headerFile, importcpp:"#.locale(@)".} # Public
proc unsetLocale*(this: ptr QWidget) {.header:headerFile, importcpp:"#.unsetLocale(@)".} # Public
proc isRightToLeft*(this: ptr QWidget): bool {.header:headerFile, importcpp:"#.isRightToLeft(@)".} # Public
proc isLeftToRight*(this: ptr QWidget): bool {.header:headerFile, importcpp:"#.isLeftToRight(@)".} # Public
proc setFocus*(this: ptr QWidget) {.header:headerFile, importcpp:"#.setFocus(@)".} # Public
proc isActiveWindow*(this: ptr QWidget): bool {.header:headerFile, importcpp:"#.isActiveWindow(@)".} # Public
proc activateWindow*(this: ptr QWidget) {.header:headerFile, importcpp:"#.activateWindow(@)".} # Public
proc clearFocus*(this: ptr QWidget) {.header:headerFile, importcpp:"#.clearFocus(@)".} # Public
proc setFocus*(this: ptr QWidget, reason: Qt_FocusReason) {.header:headerFile, importcpp:"#.setFocus(@)".} # Public
proc focusPolicy*(this: ptr QWidget): Qt_FocusPolicy {.header:headerFile, importcpp:"#.focusPolicy(@)".} # Public
proc setFocusPolicy*(this: ptr QWidget, policy: Qt_FocusPolicy) {.header:headerFile, importcpp:"#.setFocusPolicy(@)".} # Public
proc hasFocus*(this: ptr QWidget): bool {.header:headerFile, importcpp:"#.hasFocus(@)".} # Public
proc static_QWidget_setTabOrder*(arg_0: ptr QWidget, arg_1: ptr QWidget) {.header:headerFile, importcpp:"QWidget::setTabOrder(@)".} # Public static
proc setFocusProxy*(this: ptr QWidget, arg_0: ptr QWidget) {.header:headerFile, importcpp:"#.setFocusProxy(@)".} # Public
proc focusProxy*(this: ptr QWidget): ptr QWidget {.header:headerFile, importcpp:"#.focusProxy(@)".} # Public
proc contextMenuPolicy*(this: ptr QWidget): Qt_ContextMenuPolicy {.header:headerFile, importcpp:"#.contextMenuPolicy(@)".} # Public
proc setContextMenuPolicy*(this: ptr QWidget, policy: Qt_ContextMenuPolicy) {.header:headerFile, importcpp:"#.setContextMenuPolicy(@)".} # Public
proc grabMouse*(this: ptr QWidget) {.header:headerFile, importcpp:"#.grabMouse(@)".} # Public
proc grabMouse*(this: ptr QWidget, arg_0: QCursor) {.header:headerFile, importcpp:"#.grabMouse(@)".} # Public
proc releaseMouse*(this: ptr QWidget) {.header:headerFile, importcpp:"#.releaseMouse(@)".} # Public
proc grabKeyboard*(this: ptr QWidget) {.header:headerFile, importcpp:"#.grabKeyboard(@)".} # Public
proc releaseKeyboard*(this: ptr QWidget) {.header:headerFile, importcpp:"#.releaseKeyboard(@)".} # Public
import nimqt/qtgui/qkeysequence
proc grabShortcut*(this: ptr QWidget, key: QKeySequence, context: Qt_ShortcutContext): cint {.header:headerFile, importcpp:"#.grabShortcut(@)".} # Public
proc releaseShortcut*(this: ptr QWidget, id: cint) {.header:headerFile, importcpp:"#.releaseShortcut(@)".} # Public
# 1 default parameters!
proc setShortcutEnabled*(this: ptr QWidget, id: cint, enable: bool) {.header:headerFile, importcpp:"#.setShortcutEnabled(@)".} # Public
proc setShortcutEnabled*(this: ptr QWidget, id: cint) {.header:headerFile, importcpp:"#.setShortcutEnabled(@)".} # Public
# 1 default parameters!
proc setShortcutAutoRepeat*(this: ptr QWidget, id: cint, enable: bool) {.header:headerFile, importcpp:"#.setShortcutAutoRepeat(@)".} # Public
proc setShortcutAutoRepeat*(this: ptr QWidget, id: cint) {.header:headerFile, importcpp:"#.setShortcutAutoRepeat(@)".} # Public
proc static_QWidget_mouseGrabber*(): ptr QWidget {.header:headerFile, importcpp:"QWidget::mouseGrabber(@)".} # Public static
proc static_QWidget_keyboardGrabber*(): ptr QWidget {.header:headerFile, importcpp:"QWidget::keyboardGrabber(@)".} # Public static
proc updatesEnabled*(this: ptr QWidget): bool {.header:headerFile, importcpp:"#.updatesEnabled(@)".} # Public
proc setUpdatesEnabled*(this: ptr QWidget, enable: bool) {.header:headerFile, importcpp:"#.setUpdatesEnabled(@)".} # Public
import nimqt/qtwidgets/qgraphicsproxywidget
proc graphicsProxyWidget*(this: ptr QWidget): ptr QGraphicsProxyWidget {.header:headerFile, importcpp:"#.graphicsProxyWidget(@)".} # Public
proc update*(this: ptr QWidget) {.header:headerFile, importcpp:"#.update(@)".} # Public
proc repaint*(this: ptr QWidget) {.header:headerFile, importcpp:"#.repaint(@)".} # Public
proc update*(this: ptr QWidget, x: cint, y: cint, w: cint, h: cint) {.header:headerFile, importcpp:"#.update(@)".} # Public
proc update*(this: ptr QWidget, arg_0: QRect) {.header:headerFile, importcpp:"#.update(@)".} # Public
proc update*(this: ptr QWidget, arg_0: QRegion) {.header:headerFile, importcpp:"#.update(@)".} # Public
proc repaint*(this: ptr QWidget, x: cint, y: cint, w: cint, h: cint) {.header:headerFile, importcpp:"#.repaint(@)".} # Public
proc repaint*(this: ptr QWidget, arg_0: QRect) {.header:headerFile, importcpp:"#.repaint(@)".} # Public
proc repaint*(this: ptr QWidget, arg_0: QRegion) {.header:headerFile, importcpp:"#.repaint(@)".} # Public
proc setVisible*(this: ptr QWidget, visible: bool) {.header:headerFile, importcpp:"#.setVisible(@)".} # Public
proc setHidden*(this: ptr QWidget, hidden: bool) {.header:headerFile, importcpp:"#.setHidden(@)".} # Public
proc show*(this: ptr QWidget) {.header:headerFile, importcpp:"#.show(@)".} # Public
proc hide*(this: ptr QWidget) {.header:headerFile, importcpp:"#.hide(@)".} # Public
proc showMinimized*(this: ptr QWidget) {.header:headerFile, importcpp:"#.showMinimized(@)".} # Public
proc showMaximized*(this: ptr QWidget) {.header:headerFile, importcpp:"#.showMaximized(@)".} # Public
proc showFullScreen*(this: ptr QWidget) {.header:headerFile, importcpp:"#.showFullScreen(@)".} # Public
proc showNormal*(this: ptr QWidget) {.header:headerFile, importcpp:"#.showNormal(@)".} # Public
proc close*(this: ptr QWidget): bool {.header:headerFile, importcpp:"#.close(@)".} # Public
proc `raise`*(this: ptr QWidget) {.header:headerFile, importcpp:"#.raise(@)".} # Public
proc lower*(this: ptr QWidget) {.header:headerFile, importcpp:"#.lower(@)".} # Public
proc stackUnder*(this: ptr QWidget, arg_0: ptr QWidget) {.header:headerFile, importcpp:"#.stackUnder(@)".} # Public
proc move*(this: ptr QWidget, x: cint, y: cint) {.header:headerFile, importcpp:"#.move(@)".} # Public
proc move*(this: ptr QWidget, arg_0: QPoint) {.header:headerFile, importcpp:"#.move(@)".} # Public
proc resize*(this: ptr QWidget, w: cint, h: cint) {.header:headerFile, importcpp:"#.resize(@)".} # Public
proc resize*(this: ptr QWidget, arg_0: QSize) {.header:headerFile, importcpp:"#.resize(@)".} # Public
proc setGeometry*(this: ptr QWidget, x: cint, y: cint, w: cint, h: cint) {.header:headerFile, importcpp:"#.setGeometry(@)".} # Public
proc setGeometry*(this: ptr QWidget, arg_0: QRect) {.header:headerFile, importcpp:"#.setGeometry(@)".} # Public
import nimqt/qtcore/qbytearray
proc saveGeometry*(this: ptr QWidget): QByteArray {.header:headerFile, importcpp:"#.saveGeometry(@)".} # Public
proc restoreGeometry*(this: ptr QWidget, geometry: QByteArray): bool {.header:headerFile, importcpp:"#.restoreGeometry(@)".} # Public
proc adjustSize*(this: ptr QWidget) {.header:headerFile, importcpp:"#.adjustSize(@)".} # Public
proc isVisible*(this: ptr QWidget): bool {.header:headerFile, importcpp:"#.isVisible(@)".} # Public
proc isVisibleTo*(this: ptr QWidget, arg_0: ptr QWidget): bool {.header:headerFile, importcpp:"#.isVisibleTo(@)".} # Public
proc isHidden*(this: ptr QWidget): bool {.header:headerFile, importcpp:"#.isHidden(@)".} # Public
proc isMinimized*(this: ptr QWidget): bool {.header:headerFile, importcpp:"#.isMinimized(@)".} # Public
proc isMaximized*(this: ptr QWidget): bool {.header:headerFile, importcpp:"#.isMaximized(@)".} # Public
proc isFullScreen*(this: ptr QWidget): bool {.header:headerFile, importcpp:"#.isFullScreen(@)".} # Public
proc windowState*(this: ptr QWidget): Qt_WindowStates {.header:headerFile, importcpp:"#.windowState(@)".} # Public
proc setWindowState*(this: ptr QWidget, state: Qt_WindowStates) {.header:headerFile, importcpp:"#.setWindowState(@)".} # Public
proc overrideWindowState*(this: ptr QWidget, state: Qt_WindowStates) {.header:headerFile, importcpp:"#.overrideWindowState(@)".} # Public
proc sizeHint*(this: ptr QWidget): QSize {.header:headerFile, importcpp:"#.sizeHint(@)".} # Public
proc minimumSizeHint*(this: ptr QWidget): QSize {.header:headerFile, importcpp:"#.minimumSizeHint(@)".} # Public
import nimqt/qtwidgets/qsizepolicy
proc sizePolicy*(this: ptr QWidget): QSizePolicy {.header:headerFile, importcpp:"#.sizePolicy(@)".} # Public
proc setSizePolicy*(this: ptr QWidget, arg_0: QSizePolicy) {.header:headerFile, importcpp:"#.setSizePolicy(@)".} # Public
proc setSizePolicy*(this: ptr QWidget, horizontal: QSizePolicy_Policy, vertical: QSizePolicy_Policy) {.header:headerFile, importcpp:"#.setSizePolicy(@)".} # Public
proc heightForWidth*(this: ptr QWidget, arg_0: cint): cint {.header:headerFile, importcpp:"#.heightForWidth(@)".} # Public
proc hasHeightForWidth*(this: ptr QWidget): bool {.header:headerFile, importcpp:"#.hasHeightForWidth(@)".} # Public
proc visibleRegion*(this: ptr QWidget): QRegion {.header:headerFile, importcpp:"#.visibleRegion(@)".} # Public
proc setContentsMargins*(this: ptr QWidget, left: cint, top: cint, right: cint, bottom: cint) {.header:headerFile, importcpp:"#.setContentsMargins(@)".} # Public
import nimqt/qtcore/qmargins
proc setContentsMargins*(this: ptr QWidget, margins: QMargins) {.header:headerFile, importcpp:"#.setContentsMargins(@)".} # Public
proc contentsMargins*(this: ptr QWidget): QMargins {.header:headerFile, importcpp:"#.contentsMargins(@)".} # Public
proc contentsRect*(this: ptr QWidget): QRect {.header:headerFile, importcpp:"#.contentsRect(@)".} # Public
import nimqt/qtwidgets/qlayout
proc layout*(this: ptr QWidget): ptr QLayout {.header:headerFile, importcpp:"#.layout(@)".} # Public
proc setLayout*(this: ptr QWidget, arg_0: ptr QLayout) {.header:headerFile, importcpp:"#.setLayout(@)".} # Public
proc updateGeometry*(this: ptr QWidget) {.header:headerFile, importcpp:"#.updateGeometry(@)".} # Public
proc setParent*(this: ptr QWidget, parent: ptr QWidget) {.header:headerFile, importcpp:"#.setParent(@)".} # Public
proc setParent*(this: ptr QWidget, parent: ptr QWidget, f: Qt_WindowFlags) {.header:headerFile, importcpp:"#.setParent(@)".} # Public
proc scroll*(this: ptr QWidget, dx: cint, dy: cint) {.header:headerFile, importcpp:"#.scroll(@)".} # Public
proc scroll*(this: ptr QWidget, dx: cint, dy: cint, arg_2: QRect) {.header:headerFile, importcpp:"#.scroll(@)".} # Public
proc focusWidget*(this: ptr QWidget): ptr QWidget {.header:headerFile, importcpp:"#.focusWidget(@)".} # Public
proc nextInFocusChain*(this: ptr QWidget): ptr QWidget {.header:headerFile, importcpp:"#.nextInFocusChain(@)".} # Public
proc previousInFocusChain*(this: ptr QWidget): ptr QWidget {.header:headerFile, importcpp:"#.previousInFocusChain(@)".} # Public
proc acceptDrops*(this: ptr QWidget): bool {.header:headerFile, importcpp:"#.acceptDrops(@)".} # Public
proc setAcceptDrops*(this: ptr QWidget, on: bool) {.header:headerFile, importcpp:"#.setAcceptDrops(@)".} # Public
import nimqt/qtgui/qaction
proc addAction*(this: ptr QWidget, action: ptr QAction) {.header:headerFile, importcpp:"#.addAction(@)".} # Public
import nimqt/qtcore/qlist
proc addActions*(this: ptr QWidget, actions: QList[ptr QAction]) {.header:headerFile, importcpp:"#.addActions(@)".} # Public
proc insertActions*(this: ptr QWidget, before: ptr QAction, actions: QList[ptr QAction]) {.header:headerFile, importcpp:"#.insertActions(@)".} # Public
proc insertAction*(this: ptr QWidget, before: ptr QAction, action: ptr QAction) {.header:headerFile, importcpp:"#.insertAction(@)".} # Public
proc removeAction*(this: ptr QWidget, action: ptr QAction) {.header:headerFile, importcpp:"#.removeAction(@)".} # Public
proc actions*(this: ptr QWidget): QList[ptr QAction] {.header:headerFile, importcpp:"#.actions(@)".} # Public
proc addAction*(this: ptr QWidget, text: QString): ptr QAction {.header:headerFile, importcpp:"#.addAction(@)".} # Public
proc addAction*(this: ptr QWidget, icon: QIcon, text: QString): ptr QAction {.header:headerFile, importcpp:"#.addAction(@)".} # Public
proc addAction*(this: ptr QWidget, text: QString, receiver: ptr QObject, member: ptr char, `type`: Qt_ConnectionType): ptr QAction {.header:headerFile, importcpp:"#.addAction(@)".} # Public
proc addAction*(this: ptr QWidget, icon: QIcon, text: QString, receiver: ptr QObject, member: ptr char, `type`: Qt_ConnectionType): ptr QAction {.header:headerFile, importcpp:"#.addAction(@)".} # Public
proc addAction*(this: ptr QWidget, text: QString, shortcut: QKeySequence): ptr QAction {.header:headerFile, importcpp:"#.addAction(@)".} # Public
proc addAction*(this: ptr QWidget, icon: QIcon, text: QString, shortcut: QKeySequence): ptr QAction {.header:headerFile, importcpp:"#.addAction(@)".} # Public
proc addAction*(this: ptr QWidget, text: QString, shortcut: QKeySequence, receiver: ptr QObject, member: ptr char, `type`: Qt_ConnectionType): ptr QAction {.header:headerFile, importcpp:"#.addAction(@)".} # Public
proc addAction*(this: ptr QWidget, icon: QIcon, text: QString, shortcut: QKeySequence, receiver: ptr QObject, member: ptr char, `type`: Qt_ConnectionType): ptr QAction {.header:headerFile, importcpp:"#.addAction(@)".} # Public
proc parentWidget*(this: ptr QWidget): ptr QWidget {.header:headerFile, importcpp:"#.parentWidget(@)".} # Public
proc setWindowFlags*(this: ptr QWidget, `type`: Qt_WindowFlags) {.header:headerFile, importcpp:"#.setWindowFlags(@)".} # Public
proc windowFlags*(this: ptr QWidget): Qt_WindowFlags {.header:headerFile, importcpp:"#.windowFlags(@)".} # Public
# 1 default parameters!
proc setWindowFlag*(this: ptr QWidget, arg_0: Qt_WindowType, on: bool) {.header:headerFile, importcpp:"#.setWindowFlag(@)".} # Public
proc setWindowFlag*(this: ptr QWidget, arg_0: Qt_WindowType) {.header:headerFile, importcpp:"#.setWindowFlag(@)".} # Public
proc overrideWindowFlags*(this: ptr QWidget, `type`: Qt_WindowFlags) {.header:headerFile, importcpp:"#.overrideWindowFlags(@)".} # Public
proc windowType*(this: ptr QWidget): Qt_WindowType {.header:headerFile, importcpp:"#.windowType(@)".} # Public
proc childAt*(this: ptr QWidget, x: cint, y: cint): ptr QWidget {.header:headerFile, importcpp:"#.childAt(@)".} # Public
proc childAt*(this: ptr QWidget, p: QPoint): ptr QWidget {.header:headerFile, importcpp:"#.childAt(@)".} # Public
# 1 default parameters!
proc setAttribute*(this: ptr QWidget, arg_0: Qt_WidgetAttribute, on: bool) {.header:headerFile, importcpp:"#.setAttribute(@)".} # Public
proc setAttribute*(this: ptr QWidget, arg_0: Qt_WidgetAttribute) {.header:headerFile, importcpp:"#.setAttribute(@)".} # Public
proc testAttribute*(this: ptr QWidget, arg_0: Qt_WidgetAttribute): bool {.header:headerFile, importcpp:"#.testAttribute(@)".} # Public
import nimqt/qtgui/qpaintengine
proc paintEngine*(this: ptr QWidget): ptr QPaintEngine {.header:headerFile, importcpp:"#.paintEngine(@)".} # Public
proc ensurePolished*(this: ptr QWidget) {.header:headerFile, importcpp:"#.ensurePolished(@)".} # Public
proc isAncestorOf*(this: ptr QWidget, child: ptr QWidget): bool {.header:headerFile, importcpp:"#.isAncestorOf(@)".} # Public
proc autoFillBackground*(this: ptr QWidget): bool {.header:headerFile, importcpp:"#.autoFillBackground(@)".} # Public
proc setAutoFillBackground*(this: ptr QWidget, enabled: bool) {.header:headerFile, importcpp:"#.setAutoFillBackground(@)".} # Public
import nimqt/qtgui/qbackingstore
proc backingStore*(this: ptr QWidget): ptr QBackingStore {.header:headerFile, importcpp:"#.backingStore(@)".} # Public
import nimqt/qtgui/qwindow
proc windowHandle*(this: ptr QWidget): ptr QWindow {.header:headerFile, importcpp:"#.windowHandle(@)".} # Public
import nimqt/qtgui/qscreen
proc screen*(this: ptr QWidget): ptr QScreen {.header:headerFile, importcpp:"#.screen(@)".} # Public
proc setScreen*(this: ptr QWidget, arg_0: ptr QScreen) {.header:headerFile, importcpp:"#.setScreen(@)".} # Public
# 2 default parameters!
proc static_QWidget_createWindowContainer*(window: ptr QWindow, parent: ptr QWidget, flags: Qt_WindowFlags): ptr QWidget {.header:headerFile, importcpp:"QWidget::createWindowContainer(@)".} # Public static
proc static_QWidget_createWindowContainer*(window: ptr QWindow, parent: ptr QWidget): ptr QWidget {.header:headerFile, importcpp:"QWidget::createWindowContainer(@)".} # Public static
proc static_QWidget_createWindowContainer*(window: ptr QWindow): ptr QWidget {.header:headerFile, importcpp:"QWidget::createWindowContainer(@)".} # Public static
proc windowTitleChanged*(this: ptr QWidget, title: QString) {.header:headerFile, importcpp:"#.windowTitleChanged(@)".} # Public
proc windowIconChanged*(this: ptr QWidget, icon: QIcon) {.header:headerFile, importcpp:"#.windowIconChanged(@)".} # Public
proc windowIconTextChanged*(this: ptr QWidget, iconText: QString) {.header:headerFile, importcpp:"#.windowIconTextChanged(@)".} # Public
proc customContextMenuRequested*(this: ptr QWidget, pos: QPoint) {.header:headerFile, importcpp:"#.customContextMenuRequested(@)".} # Public
import nimqt/qtcore/qvariant
proc inputMethodQuery*(this: ptr QWidget, arg_1: Qt_InputMethodQuery): QVariant {.header:headerFile, importcpp:"#.inputMethodQuery(@)".} # Public
proc inputMethodHints*(this: ptr QWidget): Qt_InputMethodHints {.header:headerFile, importcpp:"#.inputMethodHints(@)".} # Public
proc setInputMethodHints*(this: ptr QWidget, hints: Qt_InputMethodHints) {.header:headerFile, importcpp:"#.setInputMethodHints(@)".} # Public

# Protected methods methods for QWidget
import nimqt/qtcore/qcoreevent
proc event*(this: ptr QWidget, event: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Protected
import nimqt/qtgui/qevent
proc mousePressEvent*(this: ptr QWidget, event: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mousePressEvent(@)".} # Protected
proc mouseReleaseEvent*(this: ptr QWidget, event: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mouseReleaseEvent(@)".} # Protected
proc mouseDoubleClickEvent*(this: ptr QWidget, event: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mouseDoubleClickEvent(@)".} # Protected
proc mouseMoveEvent*(this: ptr QWidget, event: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mouseMoveEvent(@)".} # Protected
proc wheelEvent*(this: ptr QWidget, event: ptr QWheelEvent) {.header:headerFile, importcpp:"#.wheelEvent(@)".} # Protected
proc keyPressEvent*(this: ptr QWidget, event: ptr QKeyEvent) {.header:headerFile, importcpp:"#.keyPressEvent(@)".} # Protected
proc keyReleaseEvent*(this: ptr QWidget, event: ptr QKeyEvent) {.header:headerFile, importcpp:"#.keyReleaseEvent(@)".} # Protected
proc focusInEvent*(this: ptr QWidget, event: ptr QFocusEvent) {.header:headerFile, importcpp:"#.focusInEvent(@)".} # Protected
proc focusOutEvent*(this: ptr QWidget, event: ptr QFocusEvent) {.header:headerFile, importcpp:"#.focusOutEvent(@)".} # Protected
proc enterEvent*(this: ptr QWidget, event: ptr QEnterEvent) {.header:headerFile, importcpp:"#.enterEvent(@)".} # Protected
proc leaveEvent*(this: ptr QWidget, event: ptr QEvent) {.header:headerFile, importcpp:"#.leaveEvent(@)".} # Protected
proc paintEvent*(this: ptr QWidget, event: ptr QPaintEvent) {.header:headerFile, importcpp:"#.paintEvent(@)".} # Protected
proc moveEvent*(this: ptr QWidget, event: ptr QMoveEvent) {.header:headerFile, importcpp:"#.moveEvent(@)".} # Protected
proc resizeEvent*(this: ptr QWidget, event: ptr QResizeEvent) {.header:headerFile, importcpp:"#.resizeEvent(@)".} # Protected
proc closeEvent*(this: ptr QWidget, event: ptr QCloseEvent) {.header:headerFile, importcpp:"#.closeEvent(@)".} # Protected
proc contextMenuEvent*(this: ptr QWidget, event: ptr QContextMenuEvent) {.header:headerFile, importcpp:"#.contextMenuEvent(@)".} # Protected
proc tabletEvent*(this: ptr QWidget, event: ptr QTabletEvent) {.header:headerFile, importcpp:"#.tabletEvent(@)".} # Protected
proc actionEvent*(this: ptr QWidget, event: ptr QActionEvent) {.header:headerFile, importcpp:"#.actionEvent(@)".} # Protected
proc dragEnterEvent*(this: ptr QWidget, event: ptr QDragEnterEvent) {.header:headerFile, importcpp:"#.dragEnterEvent(@)".} # Protected
proc dragMoveEvent*(this: ptr QWidget, event: ptr QDragMoveEvent) {.header:headerFile, importcpp:"#.dragMoveEvent(@)".} # Protected
proc dragLeaveEvent*(this: ptr QWidget, event: ptr QDragLeaveEvent) {.header:headerFile, importcpp:"#.dragLeaveEvent(@)".} # Protected
proc dropEvent*(this: ptr QWidget, event: ptr QDropEvent) {.header:headerFile, importcpp:"#.dropEvent(@)".} # Protected
proc showEvent*(this: ptr QWidget, event: ptr QShowEvent) {.header:headerFile, importcpp:"#.showEvent(@)".} # Protected
proc hideEvent*(this: ptr QWidget, event: ptr QHideEvent) {.header:headerFile, importcpp:"#.hideEvent(@)".} # Protected
proc nativeEvent*(this: ptr QWidget, eventType: QByteArray, message: ptr, result: ptr cint): bool {.header:headerFile, importcpp:"#.nativeEvent(@)".} # Protected
proc changeEvent*(this: ptr QWidget, arg_0: ptr QEvent) {.header:headerFile, importcpp:"#.changeEvent(@)".} # Protected
proc metric*(this: ptr QWidget, arg_0: QPaintDevice_PaintDeviceMetric): cint {.header:headerFile, importcpp:"#.metric(@)".} # Protected
proc initPainter*(this: ptr QWidget, painter: ptr QPainter) {.header:headerFile, importcpp:"#.initPainter(@)".} # Protected
proc redirected*(this: ptr QWidget, offset: ptr QPoint): ptr QPaintDevice {.header:headerFile, importcpp:"#.redirected(@)".} # Protected
proc sharedPainter*(this: ptr QWidget): ptr QPainter {.header:headerFile, importcpp:"#.sharedPainter(@)".} # Protected
proc inputMethodEvent*(this: ptr QWidget, arg_0: ptr QInputMethodEvent) {.header:headerFile, importcpp:"#.inputMethodEvent(@)".} # Protected
proc updateMicroFocus*(this: ptr QWidget, query: Qt_InputMethodQuery) {.header:headerFile, importcpp:"#.updateMicroFocus(@)".} # Protected
# 2 default parameters!
proc destroy*(this: ptr QWidget, destroyWindow: bool, destroySubWindows: bool) {.header:headerFile, importcpp:"#.destroy(@)".} # Protected
proc destroy*(this: ptr QWidget, destroyWindow: bool) {.header:headerFile, importcpp:"#.destroy(@)".} # Protected
proc destroy*(this: ptr QWidget) {.header:headerFile, importcpp:"#.destroy(@)".} # Protected
proc focusNextPrevChild*(this: ptr QWidget, next: bool): bool {.header:headerFile, importcpp:"#.focusNextPrevChild(@)".} # Protected
proc focusNextChild*(this: ptr QWidget): bool {.header:headerFile, importcpp:"#.focusNextChild(@)".} # Protected
proc focusPreviousChild*(this: ptr QWidget): bool {.header:headerFile, importcpp:"#.focusPreviousChild(@)".} # Protected

export qevent
export qpaintengine
export qfontinfo
export qfont
export qpixmap
export qwindow
export qgraphicseffect
export qscreen
export qfontmetrics
export qstring
export qlocale
export qsize
export qbitmap
export qsizepolicy
export qaction
export qnamespace
export qcursor
export qbytearray
export qlist
export qkeysequence
export qlayout
export qbackingstore
export qpainter
export qstyle
export qpoint
export qvariant
export qregion
export qrect
export qgraphicsproxywidget
export qflags
export qobject
export qpaintdevice
export qmargins
export qcoreevent
export qpalette
export qicon
