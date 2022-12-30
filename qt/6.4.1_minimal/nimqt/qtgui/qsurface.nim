const headerFile* = "QtGui/qsurface.h"

# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}


type
    # Classes and enums found in the C++ code
    # Global
    QSurface_SurfaceClass* {.header:headerFile,importcpp:"QSurface::SurfaceClass".} = enum Window = 0, Offscreen = 0x1
    QSurface_SurfaceType* {.header:headerFile,importcpp:"QSurface::SurfaceType".} = enum RasterSurface = 0, OpenGLSurface = 0x1, RasterGLSurface = 0x2, OpenVGSurface = 0x3, 
        VulkanSurface = 0x4, MetalSurface = 0x5, Direct3DSurface = 0x6
    QSurface* {.header:headerFile,importcpp:"QSurface" ,pure.} = object {.inheritable.}
{.push warning[Deprecated]: on.}

# Stuff for class QSurface

# Public methods for QSurface
proc qt_check_for_QGADGET_macro*(this:ptr QSurface) {.header:headerFile, importcpp:"#.qt_check_for_QGADGET_macro(@)".} # Public 
proc surfaceClass*(this:ptr QSurface): QSurface_SurfaceClass {.header:headerFile, importcpp:"#.surfaceClass(@)".} # Public 
proc surfaceType*(this:ptr QSurface): QSurface_SurfaceType {.header:headerFile, importcpp:"#.surfaceType(@)".} # Public 
proc supportsOpenGL*(this:ptr QSurface): bool {.header:headerFile, importcpp:"#.supportsOpenGL(@)".} # Public 
import nimqt/qtcore/qsize
proc size*(this:ptr QSurface): QSize {.header:headerFile, importcpp:"#.size(@)".} # Public 

export qsize