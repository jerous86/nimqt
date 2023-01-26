const headerFile* = "QtGui/qpicture.h"

import nimqt/qtgui/qpaintdevice
# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}


type
    # Classes and enums found in the C++ code
    QPicture* {.header:headerFile,importcpp:"QPicture" ,pure.} = object of QPaintDevice
{.push warning[Deprecated]: on.}


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
import nimqt/qtcore/qstring
proc load*(this: ptr QPicture, fileName: QString): bool {.header:headerFile, importcpp:"#.load(@)".} # Public
proc save*(this: ptr QPicture, fileName: QString): bool {.header:headerFile, importcpp:"#.save(@)".} # Public
proc swap*(this: ptr QPicture, other: QPicture) {.header:headerFile, importcpp:"#.swap(@)".} # Public
proc detach*(this: ptr QPicture) {.header:headerFile, importcpp:"#.detach(@)".} # Public
proc isDetached*(this: ptr QPicture): bool {.header:headerFile, importcpp:"#.isDetached(@)".} # Public

# Protected methods methods for QPicture
proc metric*(this: ptr QPicture, m: QPaintDevice_PaintDeviceMetric): cint {.header:headerFile, importcpp:"#.metric(@)".} # Protected

export qstring
export qpainter
export qpaintdevice