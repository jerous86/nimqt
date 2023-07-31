const headerFile* = "QtGui/qpaintdevicewindow.h"

import nimqt/qtgui/qwindow
type
    # Classes found in the C++ code
    QPaintDeviceWindow* {.header:headerFile,importcpp:"QPaintDeviceWindow" ,pure.} = object of QWindow
import nimqt/qtgui/qpaintdevice
import nimqt/qtgui/qsurface


type
    # typedefs found in the C++ code
    QPaintDeviceWindow_Visibility * = QWindow_Visibility
    QPaintDeviceWindow_AncestorMode * = QWindow_AncestorMode
    QPaintDeviceWindow_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric
    QPaintDeviceWindow_SurfaceClass * = QSurface_SurfaceClass
    QPaintDeviceWindow_SurfaceType * = QSurface_SurfaceType

# Stuff for class QPaintDeviceWindow

# Public methods for QPaintDeviceWindow
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QPaintDeviceWindow_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QPaintDeviceWindow::tr(@)".} # Public static
proc static_QPaintDeviceWindow_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QPaintDeviceWindow::tr(@)".} # Public static
import nimqt/qtcore/qrect
proc update*(this: ptr QPaintDeviceWindow, rect: QRect) {.header:headerFile, importcpp:"#.update(@)".} # Public
import nimqt/qtgui/qregion
proc update*(this: ptr QPaintDeviceWindow, region: QRegion) {.header:headerFile, importcpp:"#.update(@)".} # Public
proc update*(this: ptr QPaintDeviceWindow) {.header:headerFile, importcpp:"#.update(@)".} # Public

# Protected methods methods for QPaintDeviceWindow
import nimqt/qtgui/qevent
proc exposeEvent*(this: ptr QPaintDeviceWindow, arg_0: ptr QExposeEvent) {.header:headerFile, importcpp:"#.exposeEvent(@)".} # Protected
proc paintEvent*(this: ptr QPaintDeviceWindow, event: ptr QPaintEvent) {.header:headerFile, importcpp:"#.paintEvent(@)".} # Protected
proc metric*(this: ptr QPaintDeviceWindow, metric: QPaintDevice_PaintDeviceMetric): cint {.header:headerFile, importcpp:"#.metric(@)".} # Protected
import nimqt/qtcore/qcoreevent
proc event*(this: ptr QPaintDeviceWindow, event: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Protected

export qevent
export qwindow
export qstring
export qregion
export qrect
export qsurface
export qpaintdevice
export qcoreevent
