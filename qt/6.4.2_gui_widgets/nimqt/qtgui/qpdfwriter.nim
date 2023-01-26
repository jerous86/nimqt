const headerFile* = "QtGui/qpdfwriter.h"

import nimqt/qtgui/qpagedpaintdevice
# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}


type
    # Classes and enums found in the C++ code
    QPdfWriter* {.header:headerFile,importcpp:"QPdfWriter" ,pure.} = object of QPagedPaintDevice
{.push warning[Deprecated]: on.}
import nimqt/qtgui/qpaintdevice


type
    # typedefs found in the C++ code
    QPdfWriter_PdfVersion * = QPagedPaintDevice_PdfVersion
    QPdfWriter_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric

# Stuff for class QPdfWriter

# Public constructors for QPdfWriter
import nimqt/qtcore/qstring
proc newQPdfWriter*(filename: QString): ptr QPdfWriter {. header:headerFile, importcpp:"new QPdfWriter(@)" .} #

# Public methods for QPdfWriter
# 1 default parameters!
proc static_QPdfWriter_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QPdfWriter::tr(@)".} # Public static
proc static_QPdfWriter_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QPdfWriter::tr(@)".} # Public static
proc setPdfVersion*(this: ptr QPdfWriter, version: QPagedPaintDevice_PdfVersion) {.header:headerFile, importcpp:"#.setPdfVersion(@)".} # Public
proc pdfVersion*(this: ptr QPdfWriter): QPagedPaintDevice_PdfVersion {.header:headerFile, importcpp:"#.pdfVersion(@)".} # Public
proc title*(this: ptr QPdfWriter): QString {.header:headerFile, importcpp:"#.title(@)".} # Public
proc setTitle*(this: ptr QPdfWriter, title: QString) {.header:headerFile, importcpp:"#.setTitle(@)".} # Public
proc creator*(this: ptr QPdfWriter): QString {.header:headerFile, importcpp:"#.creator(@)".} # Public
proc setCreator*(this: ptr QPdfWriter, creator: QString) {.header:headerFile, importcpp:"#.setCreator(@)".} # Public
proc newPage*(this: ptr QPdfWriter): bool {.header:headerFile, importcpp:"#.newPage(@)".} # Public
proc setResolution*(this: ptr QPdfWriter, resolution: cint) {.header:headerFile, importcpp:"#.setResolution(@)".} # Public
proc resolution*(this: ptr QPdfWriter): cint {.header:headerFile, importcpp:"#.resolution(@)".} # Public

# Protected methods methods for QPdfWriter
import nimqt/qtgui/qpaintengine
proc paintEngine*(this: ptr QPdfWriter): ptr QPaintEngine {.header:headerFile, importcpp:"#.paintEngine(@)".} # Protected
proc metric*(this: ptr QPdfWriter, id: QPaintDevice_PaintDeviceMetric): cint {.header:headerFile, importcpp:"#.metric(@)".} # Protected

export qpaintengine
export qstring
export qpagedpaintdevice
export qpaintdevice