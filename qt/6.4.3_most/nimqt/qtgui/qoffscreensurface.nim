const headerFile* = "QtGui/qoffscreensurface.h"

import nimqt/qtcore/qobject
type
    # Classes found in the C++ code
    QOffscreenSurface* {.header:headerFile,importcpp:"QOffscreenSurface" ,pure.} = object of QObject
import nimqt/qtgui/qsurface


type
    # typedefs found in the C++ code
    QOffscreenSurface_SurfaceClass * = QSurface_SurfaceClass
    QOffscreenSurface_SurfaceType * = QSurface_SurfaceType

# Stuff for class QOffscreenSurface

# Public constructors for QOffscreenSurface
import nimqt/qtgui/qscreen
# 2 default parameters!
proc newQOffscreenSurface*(screen: ptr QScreen, parent: ptr QObject): ptr QOffscreenSurface {. header:headerFile, importcpp:"new QOffscreenSurface(@)" .} #
proc newQOffscreenSurface*(screen: ptr QScreen): ptr QOffscreenSurface {. header:headerFile, importcpp:"new QOffscreenSurface(@)" .} #
proc newQOffscreenSurface*(): ptr QOffscreenSurface {. header:headerFile, importcpp:"new QOffscreenSurface(@)" .} #

# Public methods for QOffscreenSurface
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QOffscreenSurface_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QOffscreenSurface::tr(@)".} # Public static
proc static_QOffscreenSurface_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QOffscreenSurface::tr(@)".} # Public static
proc surfaceType*(this: ptr QOffscreenSurface): QSurface_SurfaceType {.header:headerFile, importcpp:"#.surfaceType(@)".} # Public
proc create*(this: ptr QOffscreenSurface) {.header:headerFile, importcpp:"#.create(@)".} # Public
proc destroy*(this: ptr QOffscreenSurface) {.header:headerFile, importcpp:"#.destroy(@)".} # Public
proc isValid*(this: ptr QOffscreenSurface): bool {.header:headerFile, importcpp:"#.isValid(@)".} # Public
import nimqt/qtgui/qsurfaceformat
proc setFormat*(this: ptr QOffscreenSurface, format: QSurfaceFormat) {.header:headerFile, importcpp:"#.setFormat(@)".} # Public
proc format*(this: ptr QOffscreenSurface): QSurfaceFormat {.header:headerFile, importcpp:"#.format(@)".} # Public
proc requestedFormat*(this: ptr QOffscreenSurface): QSurfaceFormat {.header:headerFile, importcpp:"#.requestedFormat(@)".} # Public
import nimqt/qtcore/qsize
proc size*(this: ptr QOffscreenSurface): QSize {.header:headerFile, importcpp:"#.size(@)".} # Public
proc screen*(this: ptr QOffscreenSurface): ptr QScreen {.header:headerFile, importcpp:"#.screen(@)".} # Public
proc setScreen*(this: ptr QOffscreenSurface, screen: ptr QScreen) {.header:headerFile, importcpp:"#.setScreen(@)".} # Public
proc screenChanged*(this: ptr QOffscreenSurface, screen: ptr QScreen) {.header:headerFile, importcpp:"#.screenChanged(@)".} # Public

export qscreen
export qstring
export qsize
export qsurface
export qobject
export qsurfaceformat
