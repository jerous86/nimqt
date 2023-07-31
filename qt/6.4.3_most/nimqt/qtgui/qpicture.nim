const headerFile* = "QtGui/qpicture.h"

import nimqt/qtgui/qpaintdevice
type
    # Classes found in the C++ code
    QPicture* {.header:headerFile,importcpp:"QPicture" ,pure.} = object of QPaintDevice


type
    # typedefs found in the C++ code
    QPicture_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric

# Stuff for class QPicture

# Public constructors for QPicture
proc newQPicture*(formatVersion: cint): ptr QPicture {. header:headerFile, importcpp:"new QPicture(@)" .} #
proc newQPicture*(arg_0: QPicture): ptr QPicture {. header:headerFile, importcpp:"new QPicture(@)" .} #

# Public methods for QPicture
proc isNull*(this: ptr QPicture): bool {.header:headerFile, importcpp:"#.isNull(@)".} # Public
proc devType*(this: ptr QPicture): cint {.header:headerFile, importcpp:"#.devType(@)".} # Public
proc size*(this: ptr QPicture): cuint {.header:headerFile, importcpp:"#.size(@)".} # Public
proc data*(this: ptr QPicture): ptr char {.header:headerFile, importcpp:"#.data(@)".} # Public
proc setData*(this: ptr QPicture, data: ptr char, size: cuint) {.header:headerFile, importcpp:"#.setData(@)".} # Public
import nimqt/qtgui/qpainter
proc play*(this: ptr QPicture, p: ptr QPainter): bool {.header:headerFile, importcpp:"#.play(@)".} # Public
import nimqt/qtcore/qiodevice
proc load*(this: ptr QPicture, dev: ptr QIODevice): bool {.header:headerFile, importcpp:"#.load(@)".} # Public
import nimqt/qtcore/qstring
proc load*(this: ptr QPicture, fileName: QString): bool {.header:headerFile, importcpp:"#.load(@)".} # Public
proc save*(this: ptr QPicture, dev: ptr QIODevice): bool {.header:headerFile, importcpp:"#.save(@)".} # Public
proc save*(this: ptr QPicture, fileName: QString): bool {.header:headerFile, importcpp:"#.save(@)".} # Public
import nimqt/qtcore/qrect
proc boundingRect*(this: ptr QPicture): QRect {.header:headerFile, importcpp:"#.boundingRect(@)".} # Public
proc setBoundingRect*(this: ptr QPicture, r: QRect) {.header:headerFile, importcpp:"#.setBoundingRect(@)".} # Public
proc swap*(this: ptr QPicture, other: QPicture) {.header:headerFile, importcpp:"#.swap(@)".} # Public
proc detach*(this: ptr QPicture) {.header:headerFile, importcpp:"#.detach(@)".} # Public
proc isDetached*(this: ptr QPicture): bool {.header:headerFile, importcpp:"#.isDetached(@)".} # Public

# Protected methods methods for QPicture
proc metric*(this: ptr QPicture, m: QPaintDevice_PaintDeviceMetric): cint {.header:headerFile, importcpp:"#.metric(@)".} # Protected

export qstring
export qpainter
export qrect
export qpaintdevice
export qiodevice
