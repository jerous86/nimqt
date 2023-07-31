const headerFile* = "QtGui/qwindow.h"

type
    # Enums found in the C++ code
    # Global
    QWindow_Visibility* {.header:headerFile,importcpp:"QWindow::Visibility".} = enum Hidden = 0, AutomaticVisibility = 0x1, Windowed = 0x2, Minimized = 0x3, 
        Maximized = 0x4, FullScreen = 0x5
    QWindow_AncestorMode* {.header:headerFile,importcpp:"QWindow::AncestorMode".} = enum ExcludeTransients = 0, IncludeTransients = 0x1

import nimqt/qtcore/qobject
type
    # Classes found in the C++ code
    QWindow* {.header:headerFile,importcpp:"QWindow" ,pure.} = object of QObject
import nimqt/qtgui/qsurface


type
    # typedefs found in the C++ code
    QWindow_SurfaceClass * = QSurface_SurfaceClass
    QWindow_SurfaceType * = QSurface_SurfaceType

# Stuff for class QWindow

# Public constructors for QWindow
import nimqt/qtgui/qscreen
# 1 default parameters!
proc newQWindow*(screen: ptr QScreen): ptr QWindow {. header:headerFile, importcpp:"new QWindow(@)" .} #
proc newQWindow*(): ptr QWindow {. header:headerFile, importcpp:"new QWindow(@)" .} #
proc newQWindow*(parent: ptr QWindow): ptr QWindow {. header:headerFile, importcpp:"new QWindow(@)" .} #

# Public methods for QWindow
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QWindow_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QWindow::tr(@)".} # Public static
proc static_QWindow_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QWindow::tr(@)".} # Public static
proc setSurfaceType*(this: ptr QWindow, surfaceType: QSurface_SurfaceType) {.header:headerFile, importcpp:"#.setSurfaceType(@)".} # Public
proc surfaceType*(this: ptr QWindow): QSurface_SurfaceType {.header:headerFile, importcpp:"#.surfaceType(@)".} # Public
proc isVisible*(this: ptr QWindow): bool {.header:headerFile, importcpp:"#.isVisible(@)".} # Public
proc visibility*(this: ptr QWindow): QWindow_Visibility {.header:headerFile, importcpp:"#.visibility(@)".} # Public
proc setVisibility*(this: ptr QWindow, v: QWindow_Visibility) {.header:headerFile, importcpp:"#.setVisibility(@)".} # Public
proc create*(this: ptr QWindow) {.header:headerFile, importcpp:"#.create(@)".} # Public
proc parent*(this: ptr QWindow, mode: QWindow_AncestorMode): ptr QWindow {.header:headerFile, importcpp:"#.parent(@)".} # Public
proc setParent*(this: ptr QWindow, parent: ptr QWindow) {.header:headerFile, importcpp:"#.setParent(@)".} # Public
proc isTopLevel*(this: ptr QWindow): bool {.header:headerFile, importcpp:"#.isTopLevel(@)".} # Public
proc isModal*(this: ptr QWindow): bool {.header:headerFile, importcpp:"#.isModal(@)".} # Public
import nimqt/qtcore/qnamespace
proc modality*(this: ptr QWindow): Qt_WindowModality {.header:headerFile, importcpp:"#.modality(@)".} # Public
proc setModality*(this: ptr QWindow, modality: Qt_WindowModality) {.header:headerFile, importcpp:"#.setModality(@)".} # Public
import nimqt/qtgui/qsurfaceformat
proc setFormat*(this: ptr QWindow, format: QSurfaceFormat) {.header:headerFile, importcpp:"#.setFormat(@)".} # Public
proc format*(this: ptr QWindow): QSurfaceFormat {.header:headerFile, importcpp:"#.format(@)".} # Public
proc requestedFormat*(this: ptr QWindow): QSurfaceFormat {.header:headerFile, importcpp:"#.requestedFormat(@)".} # Public
proc setFlags*(this: ptr QWindow, flags: Qt_WindowFlags) {.header:headerFile, importcpp:"#.setFlags(@)".} # Public
proc flags*(this: ptr QWindow): Qt_WindowFlags {.header:headerFile, importcpp:"#.flags(@)".} # Public
# 1 default parameters!
proc setFlag*(this: ptr QWindow, arg_0: Qt_WindowType, on: bool) {.header:headerFile, importcpp:"#.setFlag(@)".} # Public
proc setFlag*(this: ptr QWindow, arg_0: Qt_WindowType) {.header:headerFile, importcpp:"#.setFlag(@)".} # Public
proc `type`*(this: ptr QWindow): Qt_WindowType {.header:headerFile, importcpp:"#.type(@)".} # Public
proc title*(this: ptr QWindow): QString {.header:headerFile, importcpp:"#.title(@)".} # Public
proc setOpacity*(this: ptr QWindow, level: cfloat) {.header:headerFile, importcpp:"#.setOpacity(@)".} # Public
proc opacity*(this: ptr QWindow): cfloat {.header:headerFile, importcpp:"#.opacity(@)".} # Public
import nimqt/qtgui/qregion
proc setMask*(this: ptr QWindow, region: QRegion) {.header:headerFile, importcpp:"#.setMask(@)".} # Public
proc mask*(this: ptr QWindow): QRegion {.header:headerFile, importcpp:"#.mask(@)".} # Public
proc isActive*(this: ptr QWindow): bool {.header:headerFile, importcpp:"#.isActive(@)".} # Public
proc reportContentOrientationChange*(this: ptr QWindow, orientation: Qt_ScreenOrientation) {.header:headerFile, importcpp:"#.reportContentOrientationChange(@)".} # Public
proc contentOrientation*(this: ptr QWindow): Qt_ScreenOrientation {.header:headerFile, importcpp:"#.contentOrientation(@)".} # Public
proc devicePixelRatio*(this: ptr QWindow): cfloat {.header:headerFile, importcpp:"#.devicePixelRatio(@)".} # Public
proc windowState*(this: ptr QWindow): Qt_WindowState {.header:headerFile, importcpp:"#.windowState(@)".} # Public
proc windowStates*(this: ptr QWindow): Qt_WindowStates {.header:headerFile, importcpp:"#.windowStates(@)".} # Public
proc setWindowState*(this: ptr QWindow, state: Qt_WindowState) {.header:headerFile, importcpp:"#.setWindowState(@)".} # Public
proc setWindowStates*(this: ptr QWindow, states: Qt_WindowStates) {.header:headerFile, importcpp:"#.setWindowStates(@)".} # Public
proc setTransientParent*(this: ptr QWindow, parent: ptr QWindow) {.header:headerFile, importcpp:"#.setTransientParent(@)".} # Public
proc transientParent*(this: ptr QWindow): ptr QWindow {.header:headerFile, importcpp:"#.transientParent(@)".} # Public
proc isAncestorOf*(this: ptr QWindow, child: ptr QWindow, mode: QWindow_AncestorMode): bool {.header:headerFile, importcpp:"#.isAncestorOf(@)".} # Public
proc isExposed*(this: ptr QWindow): bool {.header:headerFile, importcpp:"#.isExposed(@)".} # Public
proc minimumWidth*(this: ptr QWindow): cint {.header:headerFile, importcpp:"#.minimumWidth(@)".} # Public
proc minimumHeight*(this: ptr QWindow): cint {.header:headerFile, importcpp:"#.minimumHeight(@)".} # Public
proc maximumWidth*(this: ptr QWindow): cint {.header:headerFile, importcpp:"#.maximumWidth(@)".} # Public
proc maximumHeight*(this: ptr QWindow): cint {.header:headerFile, importcpp:"#.maximumHeight(@)".} # Public
import nimqt/qtcore/qsize
proc minimumSize*(this: ptr QWindow): QSize {.header:headerFile, importcpp:"#.minimumSize(@)".} # Public
proc maximumSize*(this: ptr QWindow): QSize {.header:headerFile, importcpp:"#.maximumSize(@)".} # Public
proc baseSize*(this: ptr QWindow): QSize {.header:headerFile, importcpp:"#.baseSize(@)".} # Public
proc sizeIncrement*(this: ptr QWindow): QSize {.header:headerFile, importcpp:"#.sizeIncrement(@)".} # Public
proc setMinimumSize*(this: ptr QWindow, size: QSize) {.header:headerFile, importcpp:"#.setMinimumSize(@)".} # Public
proc setMaximumSize*(this: ptr QWindow, size: QSize) {.header:headerFile, importcpp:"#.setMaximumSize(@)".} # Public
proc setBaseSize*(this: ptr QWindow, size: QSize) {.header:headerFile, importcpp:"#.setBaseSize(@)".} # Public
proc setSizeIncrement*(this: ptr QWindow, size: QSize) {.header:headerFile, importcpp:"#.setSizeIncrement(@)".} # Public
import nimqt/qtcore/qrect
proc geometry*(this: ptr QWindow): QRect {.header:headerFile, importcpp:"#.geometry(@)".} # Public
import nimqt/qtcore/qmargins
proc frameMargins*(this: ptr QWindow): QMargins {.header:headerFile, importcpp:"#.frameMargins(@)".} # Public
proc frameGeometry*(this: ptr QWindow): QRect {.header:headerFile, importcpp:"#.frameGeometry(@)".} # Public
import nimqt/qtcore/qpoint
proc framePosition*(this: ptr QWindow): QPoint {.header:headerFile, importcpp:"#.framePosition(@)".} # Public
proc setFramePosition*(this: ptr QWindow, point: QPoint) {.header:headerFile, importcpp:"#.setFramePosition(@)".} # Public
proc width*(this: ptr QWindow): cint {.header:headerFile, importcpp:"#.width(@)".} # Public
proc height*(this: ptr QWindow): cint {.header:headerFile, importcpp:"#.height(@)".} # Public
proc x*(this: ptr QWindow): cint {.header:headerFile, importcpp:"#.x(@)".} # Public
proc y*(this: ptr QWindow): cint {.header:headerFile, importcpp:"#.y(@)".} # Public
proc size*(this: ptr QWindow): QSize {.header:headerFile, importcpp:"#.size(@)".} # Public
proc position*(this: ptr QWindow): QPoint {.header:headerFile, importcpp:"#.position(@)".} # Public
proc setPosition*(this: ptr QWindow, pt: QPoint) {.header:headerFile, importcpp:"#.setPosition(@)".} # Public
proc setPosition*(this: ptr QWindow, posx: cint, posy: cint) {.header:headerFile, importcpp:"#.setPosition(@)".} # Public
proc resize*(this: ptr QWindow, newSize: QSize) {.header:headerFile, importcpp:"#.resize(@)".} # Public
proc resize*(this: ptr QWindow, w: cint, h: cint) {.header:headerFile, importcpp:"#.resize(@)".} # Public
proc setFilePath*(this: ptr QWindow, filePath: QString) {.header:headerFile, importcpp:"#.setFilePath(@)".} # Public
proc filePath*(this: ptr QWindow): QString {.header:headerFile, importcpp:"#.filePath(@)".} # Public
import nimqt/qtgui/qicon
proc setIcon*(this: ptr QWindow, icon: QIcon) {.header:headerFile, importcpp:"#.setIcon(@)".} # Public
proc icon*(this: ptr QWindow): QIcon {.header:headerFile, importcpp:"#.icon(@)".} # Public
proc destroy*(this: ptr QWindow) {.header:headerFile, importcpp:"#.destroy(@)".} # Public
proc setKeyboardGrabEnabled*(this: ptr QWindow, grab: bool): bool {.header:headerFile, importcpp:"#.setKeyboardGrabEnabled(@)".} # Public
proc setMouseGrabEnabled*(this: ptr QWindow, grab: bool): bool {.header:headerFile, importcpp:"#.setMouseGrabEnabled(@)".} # Public
proc screen*(this: ptr QWindow): ptr QScreen {.header:headerFile, importcpp:"#.screen(@)".} # Public
proc setScreen*(this: ptr QWindow, screen: ptr QScreen) {.header:headerFile, importcpp:"#.setScreen(@)".} # Public
proc focusObject*(this: ptr QWindow): ptr QObject {.header:headerFile, importcpp:"#.focusObject(@)".} # Public
proc mapToGlobal*(this: ptr QWindow, pos: QPointF): QPointF {.header:headerFile, importcpp:"#.mapToGlobal(@)".} # Public
proc mapFromGlobal*(this: ptr QWindow, pos: QPointF): QPointF {.header:headerFile, importcpp:"#.mapFromGlobal(@)".} # Public
proc mapToGlobal*(this: ptr QWindow, pos: QPoint): QPoint {.header:headerFile, importcpp:"#.mapToGlobal(@)".} # Public
proc mapFromGlobal*(this: ptr QWindow, pos: QPoint): QPoint {.header:headerFile, importcpp:"#.mapFromGlobal(@)".} # Public
import nimqt/qtgui/qcursor
proc cursor*(this: ptr QWindow): QCursor {.header:headerFile, importcpp:"#.cursor(@)".} # Public
proc setCursor*(this: ptr QWindow, arg_0: QCursor) {.header:headerFile, importcpp:"#.setCursor(@)".} # Public
proc unsetCursor*(this: ptr QWindow) {.header:headerFile, importcpp:"#.unsetCursor(@)".} # Public
proc requestActivate*(this: ptr QWindow) {.header:headerFile, importcpp:"#.requestActivate(@)".} # Public
proc setVisible*(this: ptr QWindow, visible: bool) {.header:headerFile, importcpp:"#.setVisible(@)".} # Public
proc show*(this: ptr QWindow) {.header:headerFile, importcpp:"#.show(@)".} # Public
proc hide*(this: ptr QWindow) {.header:headerFile, importcpp:"#.hide(@)".} # Public
proc showMinimized*(this: ptr QWindow) {.header:headerFile, importcpp:"#.showMinimized(@)".} # Public
proc showMaximized*(this: ptr QWindow) {.header:headerFile, importcpp:"#.showMaximized(@)".} # Public
proc showFullScreen*(this: ptr QWindow) {.header:headerFile, importcpp:"#.showFullScreen(@)".} # Public
proc showNormal*(this: ptr QWindow) {.header:headerFile, importcpp:"#.showNormal(@)".} # Public
proc close*(this: ptr QWindow): bool {.header:headerFile, importcpp:"#.close(@)".} # Public
proc `raise`*(this: ptr QWindow) {.header:headerFile, importcpp:"#.raise(@)".} # Public
proc lower*(this: ptr QWindow) {.header:headerFile, importcpp:"#.lower(@)".} # Public
proc startSystemResize*(this: ptr QWindow, edges: Qt_Edges): bool {.header:headerFile, importcpp:"#.startSystemResize(@)".} # Public
proc startSystemMove*(this: ptr QWindow): bool {.header:headerFile, importcpp:"#.startSystemMove(@)".} # Public
proc setTitle*(this: ptr QWindow, arg_0: QString) {.header:headerFile, importcpp:"#.setTitle(@)".} # Public
proc setX*(this: ptr QWindow, arg: cint) {.header:headerFile, importcpp:"#.setX(@)".} # Public
proc setY*(this: ptr QWindow, arg: cint) {.header:headerFile, importcpp:"#.setY(@)".} # Public
proc setWidth*(this: ptr QWindow, arg: cint) {.header:headerFile, importcpp:"#.setWidth(@)".} # Public
proc setHeight*(this: ptr QWindow, arg: cint) {.header:headerFile, importcpp:"#.setHeight(@)".} # Public
proc setGeometry*(this: ptr QWindow, posx: cint, posy: cint, w: cint, h: cint) {.header:headerFile, importcpp:"#.setGeometry(@)".} # Public
proc setGeometry*(this: ptr QWindow, rect: QRect) {.header:headerFile, importcpp:"#.setGeometry(@)".} # Public
proc setMinimumWidth*(this: ptr QWindow, w: cint) {.header:headerFile, importcpp:"#.setMinimumWidth(@)".} # Public
proc setMinimumHeight*(this: ptr QWindow, h: cint) {.header:headerFile, importcpp:"#.setMinimumHeight(@)".} # Public
proc setMaximumWidth*(this: ptr QWindow, w: cint) {.header:headerFile, importcpp:"#.setMaximumWidth(@)".} # Public
proc setMaximumHeight*(this: ptr QWindow, h: cint) {.header:headerFile, importcpp:"#.setMaximumHeight(@)".} # Public
proc alert*(this: ptr QWindow, msec: cint) {.header:headerFile, importcpp:"#.alert(@)".} # Public
proc requestUpdate*(this: ptr QWindow) {.header:headerFile, importcpp:"#.requestUpdate(@)".} # Public
proc screenChanged*(this: ptr QWindow, screen: ptr QScreen) {.header:headerFile, importcpp:"#.screenChanged(@)".} # Public
proc modalityChanged*(this: ptr QWindow, modality: Qt_WindowModality) {.header:headerFile, importcpp:"#.modalityChanged(@)".} # Public
proc windowStateChanged*(this: ptr QWindow, windowState: Qt_WindowState) {.header:headerFile, importcpp:"#.windowStateChanged(@)".} # Public
proc windowTitleChanged*(this: ptr QWindow, title: QString) {.header:headerFile, importcpp:"#.windowTitleChanged(@)".} # Public
proc xChanged*(this: ptr QWindow, arg: cint) {.header:headerFile, importcpp:"#.xChanged(@)".} # Public
proc yChanged*(this: ptr QWindow, arg: cint) {.header:headerFile, importcpp:"#.yChanged(@)".} # Public
proc widthChanged*(this: ptr QWindow, arg: cint) {.header:headerFile, importcpp:"#.widthChanged(@)".} # Public
proc heightChanged*(this: ptr QWindow, arg: cint) {.header:headerFile, importcpp:"#.heightChanged(@)".} # Public
proc minimumWidthChanged*(this: ptr QWindow, arg: cint) {.header:headerFile, importcpp:"#.minimumWidthChanged(@)".} # Public
proc minimumHeightChanged*(this: ptr QWindow, arg: cint) {.header:headerFile, importcpp:"#.minimumHeightChanged(@)".} # Public
proc maximumWidthChanged*(this: ptr QWindow, arg: cint) {.header:headerFile, importcpp:"#.maximumWidthChanged(@)".} # Public
proc maximumHeightChanged*(this: ptr QWindow, arg: cint) {.header:headerFile, importcpp:"#.maximumHeightChanged(@)".} # Public
proc visibleChanged*(this: ptr QWindow, arg: bool) {.header:headerFile, importcpp:"#.visibleChanged(@)".} # Public
proc visibilityChanged*(this: ptr QWindow, visibility: QWindow_Visibility) {.header:headerFile, importcpp:"#.visibilityChanged(@)".} # Public
proc activeChanged*(this: ptr QWindow) {.header:headerFile, importcpp:"#.activeChanged(@)".} # Public
proc contentOrientationChanged*(this: ptr QWindow, orientation: Qt_ScreenOrientation) {.header:headerFile, importcpp:"#.contentOrientationChanged(@)".} # Public
proc focusObjectChanged*(this: ptr QWindow, `object`: ptr QObject) {.header:headerFile, importcpp:"#.focusObjectChanged(@)".} # Public
proc opacityChanged*(this: ptr QWindow, opacity: cfloat) {.header:headerFile, importcpp:"#.opacityChanged(@)".} # Public
proc transientParentChanged*(this: ptr QWindow, transientParent: ptr QWindow) {.header:headerFile, importcpp:"#.transientParentChanged(@)".} # Public

# Protected methods methods for QWindow
import nimqt/qtgui/qevent
proc exposeEvent*(this: ptr QWindow, arg_0: ptr QExposeEvent) {.header:headerFile, importcpp:"#.exposeEvent(@)".} # Protected
proc resizeEvent*(this: ptr QWindow, arg_0: ptr QResizeEvent) {.header:headerFile, importcpp:"#.resizeEvent(@)".} # Protected
proc paintEvent*(this: ptr QWindow, arg_0: ptr QPaintEvent) {.header:headerFile, importcpp:"#.paintEvent(@)".} # Protected
proc moveEvent*(this: ptr QWindow, arg_0: ptr QMoveEvent) {.header:headerFile, importcpp:"#.moveEvent(@)".} # Protected
proc focusInEvent*(this: ptr QWindow, arg_0: ptr QFocusEvent) {.header:headerFile, importcpp:"#.focusInEvent(@)".} # Protected
proc focusOutEvent*(this: ptr QWindow, arg_0: ptr QFocusEvent) {.header:headerFile, importcpp:"#.focusOutEvent(@)".} # Protected
proc showEvent*(this: ptr QWindow, arg_0: ptr QShowEvent) {.header:headerFile, importcpp:"#.showEvent(@)".} # Protected
proc hideEvent*(this: ptr QWindow, arg_0: ptr QHideEvent) {.header:headerFile, importcpp:"#.hideEvent(@)".} # Protected
proc closeEvent*(this: ptr QWindow, arg_0: ptr QCloseEvent) {.header:headerFile, importcpp:"#.closeEvent(@)".} # Protected
import nimqt/qtcore/qcoreevent
proc event*(this: ptr QWindow, arg_0: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Protected
proc keyPressEvent*(this: ptr QWindow, arg_0: ptr QKeyEvent) {.header:headerFile, importcpp:"#.keyPressEvent(@)".} # Protected
proc keyReleaseEvent*(this: ptr QWindow, arg_0: ptr QKeyEvent) {.header:headerFile, importcpp:"#.keyReleaseEvent(@)".} # Protected
proc mousePressEvent*(this: ptr QWindow, arg_0: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mousePressEvent(@)".} # Protected
proc mouseReleaseEvent*(this: ptr QWindow, arg_0: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mouseReleaseEvent(@)".} # Protected
proc mouseDoubleClickEvent*(this: ptr QWindow, arg_0: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mouseDoubleClickEvent(@)".} # Protected
proc mouseMoveEvent*(this: ptr QWindow, arg_0: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mouseMoveEvent(@)".} # Protected
proc wheelEvent*(this: ptr QWindow, arg_0: ptr QWheelEvent) {.header:headerFile, importcpp:"#.wheelEvent(@)".} # Protected
proc touchEvent*(this: ptr QWindow, arg_0: ptr QTouchEvent) {.header:headerFile, importcpp:"#.touchEvent(@)".} # Protected
proc tabletEvent*(this: ptr QWindow, arg_0: ptr QTabletEvent) {.header:headerFile, importcpp:"#.tabletEvent(@)".} # Protected
import nimqt/qtcore/qbytearray
proc nativeEvent*(this: ptr QWindow, eventType: QByteArray, message: ptr, result: ptr cint): bool {.header:headerFile, importcpp:"#.nativeEvent(@)".} # Protected

export qevent
export qscreen
export qstring
export qsize
export qnamespace
export qcursor
export qbytearray
export qpoint
export qregion
export qrect
export qsurface
export qobject
export qsurfaceformat
export qmargins
export qcoreevent
export qicon
