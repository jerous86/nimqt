const headerFile* = "QtWidgets/qlcdnumber.h"

type
    # Enums found in the C++ code
    # Global
    QLCDNumber_Mode* {.header:headerFile,importcpp:"QLCDNumber::Mode".} = enum Hex = 0, Dec = 0x1, Oct = 0x2, Bin = 0x3
    QLCDNumber_SegmentStyle* {.header:headerFile,importcpp:"QLCDNumber::SegmentStyle".} = enum Outline = 0, Filled = 0x1, Flat = 0x2

import nimqt/qtwidgets/qframe
type
    # Classes found in the C++ code
    QLCDNumber* {.header:headerFile,importcpp:"QLCDNumber" ,pure.} = object of QFrame
import nimqt/qtwidgets/qwidget
import nimqt/qtgui/qpaintdevice


type
    # typedefs found in the C++ code
    QLCDNumber_Shape * = QFrame_Shape
    QLCDNumber_Shadow * = QFrame_Shadow
    QLCDNumber_StyleMask * = QFrame_StyleMask
    QLCDNumber_RenderFlag * = QWidget_RenderFlag
    QLCDNumber_RenderFlags * = QWidget_RenderFlags
    QLCDNumber_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric

# Stuff for class QLCDNumber

# Public constructors for QLCDNumber
# 1 default parameters!
proc newQLCDNumber*(parent: ptr QWidget): ptr QLCDNumber {. header:headerFile, importcpp:"new QLCDNumber(@)" .} #
proc newQLCDNumber*(): ptr QLCDNumber {. header:headerFile, importcpp:"new QLCDNumber(@)" .} #
# 1 default parameters!
proc newQLCDNumber*(numDigits: cuint, parent: ptr QWidget): ptr QLCDNumber {. header:headerFile, importcpp:"new QLCDNumber(@)" .} #
proc newQLCDNumber*(numDigits: cuint): ptr QLCDNumber {. header:headerFile, importcpp:"new QLCDNumber(@)" .} #

# Public methods for QLCDNumber
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QLCDNumber_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QLCDNumber::tr(@)".} # Public static
proc static_QLCDNumber_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QLCDNumber::tr(@)".} # Public static
proc smallDecimalPoint*(this: ptr QLCDNumber): bool {.header:headerFile, importcpp:"#.smallDecimalPoint(@)".} # Public
proc digitCount*(this: ptr QLCDNumber): cint {.header:headerFile, importcpp:"#.digitCount(@)".} # Public
proc setDigitCount*(this: ptr QLCDNumber, nDigits: cint) {.header:headerFile, importcpp:"#.setDigitCount(@)".} # Public
proc checkOverflow*(this: ptr QLCDNumber, num: cdouble): bool {.header:headerFile, importcpp:"#.checkOverflow(@)".} # Public
proc checkOverflow*(this: ptr QLCDNumber, num: cint): bool {.header:headerFile, importcpp:"#.checkOverflow(@)".} # Public
proc mode*(this: ptr QLCDNumber): QLCDNumber_Mode {.header:headerFile, importcpp:"#.mode(@)".} # Public
proc setMode*(this: ptr QLCDNumber, arg_0: QLCDNumber_Mode) {.header:headerFile, importcpp:"#.setMode(@)".} # Public
proc segmentStyle*(this: ptr QLCDNumber): QLCDNumber_SegmentStyle {.header:headerFile, importcpp:"#.segmentStyle(@)".} # Public
proc setSegmentStyle*(this: ptr QLCDNumber, arg_0: QLCDNumber_SegmentStyle) {.header:headerFile, importcpp:"#.setSegmentStyle(@)".} # Public
proc value*(this: ptr QLCDNumber): cdouble {.header:headerFile, importcpp:"#.value(@)".} # Public
proc intValue*(this: ptr QLCDNumber): cint {.header:headerFile, importcpp:"#.intValue(@)".} # Public
import nimqt/qtcore/qsize
proc sizeHint*(this: ptr QLCDNumber): QSize {.header:headerFile, importcpp:"#.sizeHint(@)".} # Public
proc display*(this: ptr QLCDNumber, str: QString) {.header:headerFile, importcpp:"#.display(@)".} # Public
proc display*(this: ptr QLCDNumber, num: cint) {.header:headerFile, importcpp:"#.display(@)".} # Public
proc display*(this: ptr QLCDNumber, num: cdouble) {.header:headerFile, importcpp:"#.display(@)".} # Public
proc setHexMode*(this: ptr QLCDNumber) {.header:headerFile, importcpp:"#.setHexMode(@)".} # Public
proc setDecMode*(this: ptr QLCDNumber) {.header:headerFile, importcpp:"#.setDecMode(@)".} # Public
proc setOctMode*(this: ptr QLCDNumber) {.header:headerFile, importcpp:"#.setOctMode(@)".} # Public
proc setBinMode*(this: ptr QLCDNumber) {.header:headerFile, importcpp:"#.setBinMode(@)".} # Public
proc setSmallDecimalPoint*(this: ptr QLCDNumber, arg_0: bool) {.header:headerFile, importcpp:"#.setSmallDecimalPoint(@)".} # Public
proc overflow*(this: ptr QLCDNumber) {.header:headerFile, importcpp:"#.overflow(@)".} # Public

# Protected methods methods for QLCDNumber
import nimqt/qtcore/qcoreevent
proc event*(this: ptr QLCDNumber, e: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Protected
import nimqt/qtgui/qevent
proc paintEvent*(this: ptr QLCDNumber, arg_0: ptr QPaintEvent) {.header:headerFile, importcpp:"#.paintEvent(@)".} # Protected

export qevent
export qstring
export qsize
export qwidget
export qpaintdevice
export qcoreevent
export qframe
