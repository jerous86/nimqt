const headerFile* = "QtGui/qbitmap.h"

import nimqt/qtgui/qpixmap
type
    # Classes found in the C++ code
    QBitmap* {.header:headerFile,importcpp:"QBitmap" ,pure.} = object of QPixmap
import nimqt/qtgui/qpaintdevice


type
    # typedefs found in the C++ code
    QBitmap_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric

# Stuff for class QBitmap

# Public constructors for QBitmap
proc newQBitmap*(): ptr QBitmap {. header:headerFile, importcpp:"new QBitmap(@)" .} #
proc newQBitmap*(arg_0: QPixmap): ptr QBitmap {. header:headerFile, importcpp:"new QBitmap(@)" .} #
proc newQBitmap*(w: cint, h: cint): ptr QBitmap {. header:headerFile, importcpp:"new QBitmap(@)" .} #
import nimqt/qtcore/qsize
proc newQBitmap*(arg_0: QSize): ptr QBitmap {. header:headerFile, importcpp:"new QBitmap(@)" .} #
import nimqt/qtcore/qstring
# 1 default parameters!
proc newQBitmap*(fileName: QString, format: ptr char): ptr QBitmap {. header:headerFile, importcpp:"new QBitmap(@)" .} #
proc newQBitmap*(fileName: QString): ptr QBitmap {. header:headerFile, importcpp:"new QBitmap(@)" .} #

# Public methods for QBitmap
proc swap*(this: ptr QBitmap, other: QBitmap) {.header:headerFile, importcpp:"#.swap(@)".} # Public
proc clear*(this: ptr QBitmap) {.header:headerFile, importcpp:"#.clear(@)".} # Public
import nimqt/qtgui/qimage
import nimqt/qtcore/qnamespace
# 1 default parameters!
proc static_QBitmap_fromImage*(image: QImage, flags: Qt_ImageConversionFlags): QBitmap {.header:headerFile, importcpp:"QBitmap::fromImage(@)".} # Public static
proc static_QBitmap_fromImage*(image: QImage): QBitmap {.header:headerFile, importcpp:"QBitmap::fromImage(@)".} # Public static
# 1 default parameters!
proc static_QBitmap_fromData*(size: QSize, bits: ptr char, monoFormat: QImage_Format): QBitmap {.header:headerFile, importcpp:"QBitmap::fromData(@)".} # Public static
proc static_QBitmap_fromPixmap*(pixmap: QPixmap): QBitmap {.header:headerFile, importcpp:"QBitmap::fromPixmap(@)".} # Public static
import nimqt/qtgui/qtransform
proc transformed*(this: ptr QBitmap, matrix: QTransform): QBitmap {.header:headerFile, importcpp:"#.transformed(@)".} # Public

export qpixmap
export qstring
export qsize
export qimage
export qnamespace
export qpaintdevice
export qtransform
