const headerFile* = "QtWidgets/qrubberband.h"

type
    # Enums found in the C++ code
    # Global
    QRubberBand_Shape* {.header:headerFile,importcpp:"QRubberBand::Shape".} = enum Line = 0, Rectangle = 0x1

import nimqt/qtwidgets/qwidget
type
    # Classes found in the C++ code
    QRubberBand* {.header:headerFile,importcpp:"QRubberBand" ,pure.} = object of QWidget
import nimqt/qtgui/qpaintdevice


type
    # typedefs found in the C++ code
    QRubberBand_RenderFlag * = QWidget_RenderFlag
    QRubberBand_RenderFlags * = QWidget_RenderFlags
    QRubberBand_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric

# Stuff for class QRubberBand

# Public constructors for QRubberBand
# 1 default parameters!
proc newQRubberBand*(arg_0: QRubberBand_Shape, arg_1: ptr QWidget): ptr QRubberBand {. header:headerFile, importcpp:"new QRubberBand(@)" .} #
proc newQRubberBand*(arg_0: QRubberBand_Shape): ptr QRubberBand {. header:headerFile, importcpp:"new QRubberBand(@)" .} #

# Public methods for QRubberBand
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QRubberBand_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QRubberBand::tr(@)".} # Public static
proc static_QRubberBand_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QRubberBand::tr(@)".} # Public static
proc shape*(this: ptr QRubberBand): QRubberBand_Shape {.header:headerFile, importcpp:"#.shape(@)".} # Public
import nimqt/qtcore/qrect
proc setGeometry*(this: ptr QRubberBand, r: QRect) {.header:headerFile, importcpp:"#.setGeometry(@)".} # Public
proc setGeometry*(this: ptr QRubberBand, x: cint, y: cint, w: cint, h: cint) {.header:headerFile, importcpp:"#.setGeometry(@)".} # Public
proc move*(this: ptr QRubberBand, x: cint, y: cint) {.header:headerFile, importcpp:"#.move(@)".} # Public
import nimqt/qtcore/qpoint
proc move*(this: ptr QRubberBand, p: QPoint) {.header:headerFile, importcpp:"#.move(@)".} # Public
proc resize*(this: ptr QRubberBand, w: cint, h: cint) {.header:headerFile, importcpp:"#.resize(@)".} # Public
import nimqt/qtcore/qsize
proc resize*(this: ptr QRubberBand, s: QSize) {.header:headerFile, importcpp:"#.resize(@)".} # Public

# Protected methods methods for QRubberBand
import nimqt/qtcore/qcoreevent
proc event*(this: ptr QRubberBand, e: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Protected
import nimqt/qtgui/qevent
proc paintEvent*(this: ptr QRubberBand, arg_0: ptr QPaintEvent) {.header:headerFile, importcpp:"#.paintEvent(@)".} # Protected
proc changeEvent*(this: ptr QRubberBand, arg_0: ptr QEvent) {.header:headerFile, importcpp:"#.changeEvent(@)".} # Protected
proc showEvent*(this: ptr QRubberBand, arg_0: ptr QShowEvent) {.header:headerFile, importcpp:"#.showEvent(@)".} # Protected
proc resizeEvent*(this: ptr QRubberBand, arg_0: ptr QResizeEvent) {.header:headerFile, importcpp:"#.resizeEvent(@)".} # Protected
proc moveEvent*(this: ptr QRubberBand, arg_0: ptr QMoveEvent) {.header:headerFile, importcpp:"#.moveEvent(@)".} # Protected

export qevent
export qstring
export qsize
export qpoint
export qwidget
export qrect
export qpaintdevice
export qcoreevent
