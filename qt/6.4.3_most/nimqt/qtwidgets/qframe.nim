const headerFile* = "QtWidgets/qframe.h"

type
    # Enums found in the C++ code
    # Global
    QFrame_Shape* {.header:headerFile,importcpp:"QFrame::Shape".} = enum NoFrame = 0, Box = 0x1, Panel = 0x2, WinPanel = 0x3, 
        HLine = 0x4, VLine = 0x5, StyledPanel = 0x6
    QFrame_Shadow* {.header:headerFile,importcpp:"QFrame::Shadow".} = enum Plain = 0x10, Raised = 0x20, Sunken = 0x30
    QFrame_StyleMask* {.header:headerFile,importcpp:"QFrame::StyleMask".} = enum Shape_Mask = 0xf, Shadow_Mask = 0xf0

import nimqt/qtwidgets/qwidget
type
    # Classes found in the C++ code
    QFrame* {.header:headerFile,importcpp:"QFrame" ,pure.} = object of QWidget
import nimqt/qtgui/qpaintdevice


type
    # typedefs found in the C++ code
    QFrame_RenderFlag * = QWidget_RenderFlag
    QFrame_RenderFlags * = QWidget_RenderFlags
    QFrame_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric

# Stuff for class QFrame

# Public constructors for QFrame
import nimqt/qtcore/qnamespace
# 2 default parameters!
proc newQFrame*(parent: ptr QWidget, f: Qt_WindowFlags): ptr QFrame {. header:headerFile, importcpp:"new QFrame(@)" .} #
proc newQFrame*(parent: ptr QWidget): ptr QFrame {. header:headerFile, importcpp:"new QFrame(@)" .} #
proc newQFrame*(): ptr QFrame {. header:headerFile, importcpp:"new QFrame(@)" .} #

# Public methods for QFrame
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QFrame_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QFrame::tr(@)".} # Public static
proc static_QFrame_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QFrame::tr(@)".} # Public static
proc frameStyle*(this: ptr QFrame): cint {.header:headerFile, importcpp:"#.frameStyle(@)".} # Public
proc setFrameStyle*(this: ptr QFrame, arg_0: cint) {.header:headerFile, importcpp:"#.setFrameStyle(@)".} # Public
proc frameWidth*(this: ptr QFrame): cint {.header:headerFile, importcpp:"#.frameWidth(@)".} # Public
import nimqt/qtcore/qsize
proc sizeHint*(this: ptr QFrame): QSize {.header:headerFile, importcpp:"#.sizeHint(@)".} # Public
proc frameShape*(this: ptr QFrame): QFrame_Shape {.header:headerFile, importcpp:"#.frameShape(@)".} # Public
proc setFrameShape*(this: ptr QFrame, arg_0: QFrame_Shape) {.header:headerFile, importcpp:"#.setFrameShape(@)".} # Public
proc frameShadow*(this: ptr QFrame): QFrame_Shadow {.header:headerFile, importcpp:"#.frameShadow(@)".} # Public
proc setFrameShadow*(this: ptr QFrame, arg_0: QFrame_Shadow) {.header:headerFile, importcpp:"#.setFrameShadow(@)".} # Public
proc lineWidth*(this: ptr QFrame): cint {.header:headerFile, importcpp:"#.lineWidth(@)".} # Public
proc setLineWidth*(this: ptr QFrame, arg_0: cint) {.header:headerFile, importcpp:"#.setLineWidth(@)".} # Public
proc midLineWidth*(this: ptr QFrame): cint {.header:headerFile, importcpp:"#.midLineWidth(@)".} # Public
proc setMidLineWidth*(this: ptr QFrame, arg_0: cint) {.header:headerFile, importcpp:"#.setMidLineWidth(@)".} # Public
import nimqt/qtcore/qrect
proc frameRect*(this: ptr QFrame): QRect {.header:headerFile, importcpp:"#.frameRect(@)".} # Public
proc setFrameRect*(this: ptr QFrame, arg_0: QRect) {.header:headerFile, importcpp:"#.setFrameRect(@)".} # Public

# Protected methods methods for QFrame
import nimqt/qtcore/qcoreevent
proc event*(this: ptr QFrame, e: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Protected
import nimqt/qtgui/qevent
proc paintEvent*(this: ptr QFrame, arg_0: ptr QPaintEvent) {.header:headerFile, importcpp:"#.paintEvent(@)".} # Protected
proc changeEvent*(this: ptr QFrame, arg_0: ptr QEvent) {.header:headerFile, importcpp:"#.changeEvent(@)".} # Protected
import nimqt/qtgui/qpainter
proc drawFrame*(this: ptr QFrame, arg_0: ptr QPainter) {.header:headerFile, importcpp:"#.drawFrame(@)".} # Protected

export qevent
export qstring
export qsize
export qnamespace
export qpainter
export qwidget
export qrect
export qpaintdevice
export qcoreevent
