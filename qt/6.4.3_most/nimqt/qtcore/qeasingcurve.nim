const headerFile* = "QtCore/qeasingcurve.h"

type
    # Enums found in the C++ code
    # Global
    QEasingCurve_Type* {.header:headerFile,importcpp:"QEasingCurve::Type".} = enum Linear = 0, InQuad = 0x1, OutQuad = 0x2, InOutQuad = 0x3, 
        OutInQuad = 0x4, InCubic = 0x5, OutCubic = 0x6, InOutCubic = 0x7, OutInCubic = 0x8, 
        InQuart = 0x9, OutQuart = 0xa, InOutQuart = 0xb, OutInQuart = 0xc, InQuint = 0xd, 
        OutQuint = 0xe, InOutQuint = 0xf, OutInQuint = 0x10, InSine = 0x11, OutSine = 0x12, 
        InOutSine = 0x13, OutInSine = 0x14, InExpo = 0x15, OutExpo = 0x16, InOutExpo = 0x17, 
        OutInExpo = 0x18, InCirc = 0x19, OutCirc = 0x1a, InOutCirc = 0x1b, OutInCirc = 0x1c, 
        InElastic = 0x1d, OutElastic = 0x1e, InOutElastic = 0x1f, OutInElastic = 0x20, InBack = 0x21, 
        OutBack = 0x22, InOutBack = 0x23, OutInBack = 0x24, InBounce = 0x25, OutBounce = 0x26, 
        InOutBounce = 0x27, OutInBounce = 0x28, InCurve = 0x29, OutCurve = 0x2a, SineCurve = 0x2b, 
        CosineCurve = 0x2c, BezierSpline = 0x2d, TCBSpline = 0x2e, Custom = 0x2f, NCurveTypes = 0x30

type
    # Classes found in the C++ code
    QEasingCurve* {.header:headerFile,importcpp:"QEasingCurve" ,pure,inheritable.} = object

# Stuff for class QEasingCurve

# Public constructors for QEasingCurve
proc newQEasingCurve*(`type`: QEasingCurve_Type): QEasingCurve {. header:headerFile, importcpp:"QEasingCurve(@)", constructor .} #
proc newQEasingCurve*(other: QEasingCurve): QEasingCurve {. header:headerFile, importcpp:"QEasingCurve(@)", constructor .} #

# Public methods for QEasingCurve
proc qt_check_for_QGADGET_macro*(this: QEasingCurve) {.header:headerFile, importcpp:"#.qt_check_for_QGADGET_macro(@)".} # Public
proc swap*(this: QEasingCurve, other: QEasingCurve) {.header:headerFile, importcpp:"#.swap(@)".} # Public
proc `!=`*(this: QEasingCurve, other: QEasingCurve): bool {.header:headerFile, importcpp:"#.operator!=(@)".} # Public
proc amplitude*(this: QEasingCurve): cfloat {.header:headerFile, importcpp:"#.amplitude(@)".} # Public
proc setAmplitude*(this: QEasingCurve, amplitude: cfloat) {.header:headerFile, importcpp:"#.setAmplitude(@)".} # Public
proc period*(this: QEasingCurve): cfloat {.header:headerFile, importcpp:"#.period(@)".} # Public
proc setPeriod*(this: QEasingCurve, period: cfloat) {.header:headerFile, importcpp:"#.setPeriod(@)".} # Public
proc overshoot*(this: QEasingCurve): cfloat {.header:headerFile, importcpp:"#.overshoot(@)".} # Public
proc setOvershoot*(this: QEasingCurve, overshoot: cfloat) {.header:headerFile, importcpp:"#.setOvershoot(@)".} # Public
import nimqt/qtcore/qpoint
proc addCubicBezierSegment*(this: QEasingCurve, c1: QPointF, c2: QPointF, endPoint: QPointF) {.header:headerFile, importcpp:"#.addCubicBezierSegment(@)".} # Public
proc addTCBSegment*(this: QEasingCurve, nextPoint: QPointF, t: cfloat, c: cfloat, b: cfloat) {.header:headerFile, importcpp:"#.addTCBSegment(@)".} # Public
import nimqt/qtcore/qlist
proc toCubicSpline*(this: QEasingCurve): QList[QPointF] {.header:headerFile, importcpp:"#.toCubicSpline(@)".} # Public
proc `type`*(this: QEasingCurve): QEasingCurve_Type {.header:headerFile, importcpp:"#.type(@)".} # Public
proc setType*(this: QEasingCurve, `type`: QEasingCurve_Type) {.header:headerFile, importcpp:"#.setType(@)".} # Public
proc valueForProgress*(this: QEasingCurve, progress: cfloat): cfloat {.header:headerFile, importcpp:"#.valueForProgress(@)".} # Public

export qlist
export qpoint
