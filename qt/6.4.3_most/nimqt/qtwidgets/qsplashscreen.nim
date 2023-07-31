const headerFile* = "QtWidgets/qsplashscreen.h"

import nimqt/qtwidgets/qwidget
type
    # Classes found in the C++ code
    QSplashScreen* {.header:headerFile,importcpp:"QSplashScreen" ,pure.} = object of QWidget
import nimqt/qtgui/qpaintdevice


type
    # typedefs found in the C++ code
    QSplashScreen_RenderFlag * = QWidget_RenderFlag
    QSplashScreen_RenderFlags * = QWidget_RenderFlags
    QSplashScreen_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric

# Stuff for class QSplashScreen

# Public constructors for QSplashScreen
import nimqt/qtgui/qpixmap
import nimqt/qtcore/qnamespace
# 2 default parameters!
proc newQSplashScreen*(pixmap: QPixmap, f: Qt_WindowFlags): ptr QSplashScreen {. header:headerFile, importcpp:"new QSplashScreen(@)" .} #
proc newQSplashScreen*(pixmap: QPixmap): ptr QSplashScreen {. header:headerFile, importcpp:"new QSplashScreen(@)" .} #
proc newQSplashScreen*(): ptr QSplashScreen {. header:headerFile, importcpp:"new QSplashScreen(@)" .} #
import nimqt/qtgui/qscreen
# 2 default parameters!
proc newQSplashScreen*(screen: ptr QScreen, pixmap: QPixmap, f: Qt_WindowFlags): ptr QSplashScreen {. header:headerFile, importcpp:"new QSplashScreen(@)" .} #
proc newQSplashScreen*(screen: ptr QScreen, pixmap: QPixmap): ptr QSplashScreen {. header:headerFile, importcpp:"new QSplashScreen(@)" .} #
proc newQSplashScreen*(screen: ptr QScreen): ptr QSplashScreen {. header:headerFile, importcpp:"new QSplashScreen(@)" .} #

# Public methods for QSplashScreen
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QSplashScreen_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QSplashScreen::tr(@)".} # Public static
proc static_QSplashScreen_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QSplashScreen::tr(@)".} # Public static
proc setPixmap*(this: ptr QSplashScreen, pixmap: QPixmap) {.header:headerFile, importcpp:"#.setPixmap(@)".} # Public
proc pixmap*(this: ptr QSplashScreen): QPixmap {.header:headerFile, importcpp:"#.pixmap(@)".} # Public
proc finish*(this: ptr QSplashScreen, w: ptr QWidget) {.header:headerFile, importcpp:"#.finish(@)".} # Public
proc repaint*(this: ptr QSplashScreen) {.header:headerFile, importcpp:"#.repaint(@)".} # Public
proc message*(this: ptr QSplashScreen): QString {.header:headerFile, importcpp:"#.message(@)".} # Public
import nimqt/qtgui/qcolor
# 2 default parameters!
proc showMessage*(this: ptr QSplashScreen, message: QString, alignment: cint, color: QColor) {.header:headerFile, importcpp:"#.showMessage(@)".} # Public
proc showMessage*(this: ptr QSplashScreen, message: QString, alignment: cint) {.header:headerFile, importcpp:"#.showMessage(@)".} # Public
proc showMessage*(this: ptr QSplashScreen, message: QString) {.header:headerFile, importcpp:"#.showMessage(@)".} # Public
proc clearMessage*(this: ptr QSplashScreen) {.header:headerFile, importcpp:"#.clearMessage(@)".} # Public
proc messageChanged*(this: ptr QSplashScreen, message: QString) {.header:headerFile, importcpp:"#.messageChanged(@)".} # Public

# Protected methods methods for QSplashScreen
import nimqt/qtcore/qcoreevent
proc event*(this: ptr QSplashScreen, e: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Protected
import nimqt/qtgui/qpainter
proc drawContents*(this: ptr QSplashScreen, painter: ptr QPainter) {.header:headerFile, importcpp:"#.drawContents(@)".} # Protected
import nimqt/qtgui/qevent
proc mousePressEvent*(this: ptr QSplashScreen, arg_0: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mousePressEvent(@)".} # Protected

export qevent
export qpixmap
export qscreen
export qstring
export qnamespace
export qpainter
export qwidget
export qpaintdevice
export qcoreevent
export qcolor
