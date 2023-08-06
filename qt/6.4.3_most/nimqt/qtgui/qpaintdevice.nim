const headerFile* = "QtGui/qpaintdevice.h"

type
    # Enums found in the C++ code
    # Global
    QPaintDevice_PaintDeviceMetric* {.header:headerFile,importcpp:"QPaintDevice::PaintDeviceMetric".} = enum PdmWidth = 0x1, PdmHeight = 0x2, PdmWidthMM = 0x3, PdmHeightMM = 0x4, 
        PdmNumColors = 0x5, PdmDepth = 0x6, PdmDpiX = 0x7, PdmDpiY = 0x8, PdmPhysicalDpiX = 0x9, 
        PdmPhysicalDpiY = 0xa, PdmDevicePixelRatio = 0xb, PdmDevicePixelRatioScaled = 0xc

type
    # Classes found in the C++ code
    QPaintDevice* {.header:headerFile,importcpp:"QPaintDevice" ,pure,inheritable.} = object

# Stuff for class QPaintDevice

# Public methods for QPaintDevice
proc devType*(this: ptr QPaintDevice): cint {.header:headerFile, importcpp:"#.devType(@)".} # Public
proc paintingActive*(this: ptr QPaintDevice): bool {.header:headerFile, importcpp:"#.paintingActive(@)".} # Public
proc width*(this: ptr QPaintDevice): cint {.header:headerFile, importcpp:"#.width(@)".} # Public
proc height*(this: ptr QPaintDevice): cint {.header:headerFile, importcpp:"#.height(@)".} # Public
proc widthMM*(this: ptr QPaintDevice): cint {.header:headerFile, importcpp:"#.widthMM(@)".} # Public
proc heightMM*(this: ptr QPaintDevice): cint {.header:headerFile, importcpp:"#.heightMM(@)".} # Public
proc logicalDpiX*(this: ptr QPaintDevice): cint {.header:headerFile, importcpp:"#.logicalDpiX(@)".} # Public
proc logicalDpiY*(this: ptr QPaintDevice): cint {.header:headerFile, importcpp:"#.logicalDpiY(@)".} # Public
proc physicalDpiX*(this: ptr QPaintDevice): cint {.header:headerFile, importcpp:"#.physicalDpiX(@)".} # Public
proc physicalDpiY*(this: ptr QPaintDevice): cint {.header:headerFile, importcpp:"#.physicalDpiY(@)".} # Public
proc devicePixelRatio*(this: ptr QPaintDevice): cfloat {.header:headerFile, importcpp:"#.devicePixelRatio(@)".} # Public
proc devicePixelRatioF*(this: ptr QPaintDevice): cfloat {.header:headerFile, importcpp:"#.devicePixelRatioF(@)".} # Public
proc colorCount*(this: ptr QPaintDevice): cint {.header:headerFile, importcpp:"#.colorCount(@)".} # Public
proc depth*(this: ptr QPaintDevice): cint {.header:headerFile, importcpp:"#.depth(@)".} # Public
proc static_QPaintDevice_devicePixelRatioFScale*(): cfloat {.header:headerFile, importcpp:"QPaintDevice::devicePixelRatioFScale(@)".} # Public static

# Protected methods methods for QPaintDevice
proc metric*(this: ptr QPaintDevice, metric: QPaintDevice_PaintDeviceMetric): cint {.header:headerFile, importcpp:"#.metric(@)".} # Protected
import nimqt/qtcore/qpoint
proc redirected*(this: ptr QPaintDevice, offset: ptr QPoint): ptr QPaintDevice {.header:headerFile, importcpp:"#.redirected(@)".} # Protected

export qpoint
