const headerFile* = "QtGui/qsurface.h"

type
    # Enums found in the C++ code
    # Global
    QSurface_SurfaceClass* {.header:headerFile,importcpp:"QSurface::SurfaceClass".} = enum Window = 0, Offscreen = 0x1
    QSurface_SurfaceType* {.header:headerFile,importcpp:"QSurface::SurfaceType".} = enum RasterSurface = 0, OpenGLSurface = 0x1, RasterGLSurface = 0x2, OpenVGSurface = 0x3, 
        VulkanSurface = 0x4, MetalSurface = 0x5, Direct3DSurface = 0x6

type
    # Classes found in the C++ code
    QSurface* {.header:headerFile,importcpp:"QSurface" ,pure,inheritable.} = object

# Stuff for class QSurface

# Public methods for QSurface
proc qt_check_for_QGADGET_macro*(this: ptr QSurface) {.header:headerFile, importcpp:"#.qt_check_for_QGADGET_macro(@)".} # Public
proc surfaceClass*(this: ptr QSurface): QSurface_SurfaceClass {.header:headerFile, importcpp:"#.surfaceClass(@)".} # Public
import nimqt/qtgui/qsurfaceformat
proc format*(this: ptr QSurface): QSurfaceFormat {.header:headerFile, importcpp:"#.format(@)".} # Public
proc surfaceType*(this: ptr QSurface): QSurface_SurfaceType {.header:headerFile, importcpp:"#.surfaceType(@)".} # Public
proc supportsOpenGL*(this: ptr QSurface): bool {.header:headerFile, importcpp:"#.supportsOpenGL(@)".} # Public
import nimqt/qtcore/qsize
proc size*(this: ptr QSurface): QSize {.header:headerFile, importcpp:"#.size(@)".} # Public

export qsize
export qsurfaceformat
