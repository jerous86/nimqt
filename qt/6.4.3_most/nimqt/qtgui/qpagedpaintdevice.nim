const headerFile* = "QtGui/qpagedpaintdevice.h"

type
    # Enums found in the C++ code
    # Global
    QPagedPaintDevice_PdfVersion* {.header:headerFile,importcpp:"QPagedPaintDevice::PdfVersion".} = enum PdfVersion_1_4 = 0, PdfVersion_A1b = 0x1, PdfVersion_1_6 = 0x2

import nimqt/qtgui/qpaintdevice
type
    # Classes found in the C++ code
    QPagedPaintDevice* {.header:headerFile,importcpp:"QPagedPaintDevice" ,pure.} = object of QPaintDevice


type
    # typedefs found in the C++ code
    QPagedPaintDevice_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric

# Stuff for class QPagedPaintDevice

# Public methods for QPagedPaintDevice
proc newPage*(this: ptr QPagedPaintDevice): bool {.header:headerFile, importcpp:"#.newPage(@)".} # Public
import nimqt/qtgui/qpagelayout
proc setPageLayout*(this: ptr QPagedPaintDevice, pageLayout: QPageLayout): bool {.header:headerFile, importcpp:"#.setPageLayout(@)".} # Public
import nimqt/qtgui/qpagesize
proc setPageSize*(this: ptr QPagedPaintDevice, pageSize: QPageSize): bool {.header:headerFile, importcpp:"#.setPageSize(@)".} # Public
proc setPageOrientation*(this: ptr QPagedPaintDevice, orientation: QPageLayout_Orientation): bool {.header:headerFile, importcpp:"#.setPageOrientation(@)".} # Public
import nimqt/qtcore/qmargins
proc setPageMargins*(this: ptr QPagedPaintDevice, margins: QMarginsF, units: QPageLayout_Unit): bool {.header:headerFile, importcpp:"#.setPageMargins(@)".} # Public
proc pageLayout*(this: ptr QPagedPaintDevice): QPageLayout {.header:headerFile, importcpp:"#.pageLayout(@)".} # Public
import nimqt/qtgui/qpageranges
proc setPageRanges*(this: ptr QPagedPaintDevice, ranges: QPageRanges) {.header:headerFile, importcpp:"#.setPageRanges(@)".} # Public
proc pageRanges*(this: ptr QPagedPaintDevice): QPageRanges {.header:headerFile, importcpp:"#.pageRanges(@)".} # Public

export qpagelayout
export qpagesize
export qpageranges
export qpaintdevice
export qmargins
