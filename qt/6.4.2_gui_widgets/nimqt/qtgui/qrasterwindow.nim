const headerFile* = "QtGui/qrasterwindow.h"

import nimqt/qtgui/qpaintdevicewindow
# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}


type
    # Classes and enums found in the C++ code
    QRasterWindow* {.header:headerFile,importcpp:"QRasterWindow" ,pure.} = object of QPaintDeviceWindow
{.push warning[Deprecated]: on.}
import nimqt/qtgui/qwindow
import nimqt/qtgui/qpaintdevice
import nimqt/qtgui/qsurface


type
    # typedefs found in the C++ code
    QRasterWindow_Visibility * = QWindow_Visibility
    QRasterWindow_AncestorMode * = QWindow_AncestorMode
    QRasterWindow_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric
    QRasterWindow_SurfaceClass * = QSurface_SurfaceClass
    QRasterWindow_SurfaceType * = QSurface_SurfaceType

# Stuff for class QRasterWindow

# Public constructors for QRasterWindow
# 1 default parameters!
proc newQRasterWindow*(parent: ptr QWindow): ptr QRasterWindow {. header:headerFile, importcpp:"new QRasterWindow(@)" .} #
proc newQRasterWindow*(): ptr QRasterWindow {. header:headerFile, importcpp:"new QRasterWindow(@)" .} #

# Public methods for QRasterWindow
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QRasterWindow_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QRasterWindow::tr(@)".} # Public static
proc static_QRasterWindow_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QRasterWindow::tr(@)".} # Public static

# Protected methods methods for QRasterWindow
proc metric*(this: ptr QRasterWindow, metric: QPaintDevice_PaintDeviceMetric): cint {.header:headerFile, importcpp:"#.metric(@)".} # Protected
import nimqt/qtcore/qpoint
proc redirected*(this: ptr QRasterWindow, arg_1: ptr QPoint): ptr QPaintDevice {.header:headerFile, importcpp:"#.redirected(@)".} # Protected

export qwindow
export qstring
export qpaintdevicewindow
export qpoint
export qsurface
export qpaintdevice