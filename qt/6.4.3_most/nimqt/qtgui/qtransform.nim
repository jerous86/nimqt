const headerFile* = "QtGui/qtransform.h"

type
    # Enums found in the C++ code
    # Global
    QTransform_TransformationType* {.header:headerFile,importcpp:"QTransform::TransformationType".} = enum TxNone = 0, TxTranslate = 0x1, TxScale = 0x2, TxRotate = 0x4, 
        TxShear = 0x8, TxProject = 0x10

type
    # Classes found in the C++ code
    QTransform* {.header:headerFile,importcpp:"QTransform" ,pure,inheritable.} = object

# Stuff for class QTransform

# Public constructors for QTransform
import nimqt/qtcore/qnamespace
proc newQTransform*(arg_0: Qt_Initialization): QTransform {. header:headerFile, importcpp:"QTransform(@)", constructor .} #
proc newQTransform*(): QTransform {. header:headerFile, importcpp:"QTransform(@)", constructor .} #
proc newQTransform*(h11: cfloat, h12: cfloat, h13: cfloat, h21: cfloat, h22: cfloat, h23: cfloat, h31: cfloat, h32: cfloat, h33: cfloat): QTransform {. header:headerFile, importcpp:"QTransform(@)", constructor .} #
proc newQTransform*(h11: cfloat, h12: cfloat, h21: cfloat, h22: cfloat, dx: cfloat, dy: cfloat): QTransform {. header:headerFile, importcpp:"QTransform(@)", constructor .} #
proc newQTransform*(other: QTransform): QTransform {. header:headerFile, importcpp:"QTransform(@)", constructor .} #

# Public methods for QTransform
proc isIdentity*(this: QTransform): bool {.header:headerFile, importcpp:"#.isIdentity(@)".} # Public
proc isInvertible*(this: QTransform): bool {.header:headerFile, importcpp:"#.isInvertible(@)".} # Public
proc isScaling*(this: QTransform): bool {.header:headerFile, importcpp:"#.isScaling(@)".} # Public
proc isRotating*(this: QTransform): bool {.header:headerFile, importcpp:"#.isRotating(@)".} # Public
proc isTranslating*(this: QTransform): bool {.header:headerFile, importcpp:"#.isTranslating(@)".} # Public
proc `type`*(this: QTransform): QTransform_TransformationType {.header:headerFile, importcpp:"#.type(@)".} # Public
proc determinant*(this: QTransform): cfloat {.header:headerFile, importcpp:"#.determinant(@)".} # Public
proc m11*(this: QTransform): cfloat {.header:headerFile, importcpp:"#.m11(@)".} # Public
proc m12*(this: QTransform): cfloat {.header:headerFile, importcpp:"#.m12(@)".} # Public
proc m13*(this: QTransform): cfloat {.header:headerFile, importcpp:"#.m13(@)".} # Public
proc m21*(this: QTransform): cfloat {.header:headerFile, importcpp:"#.m21(@)".} # Public
proc m22*(this: QTransform): cfloat {.header:headerFile, importcpp:"#.m22(@)".} # Public
proc m23*(this: QTransform): cfloat {.header:headerFile, importcpp:"#.m23(@)".} # Public
proc m31*(this: QTransform): cfloat {.header:headerFile, importcpp:"#.m31(@)".} # Public
proc m32*(this: QTransform): cfloat {.header:headerFile, importcpp:"#.m32(@)".} # Public
proc m33*(this: QTransform): cfloat {.header:headerFile, importcpp:"#.m33(@)".} # Public
proc dx*(this: QTransform): cfloat {.header:headerFile, importcpp:"#.dx(@)".} # Public
proc dy*(this: QTransform): cfloat {.header:headerFile, importcpp:"#.dy(@)".} # Public
proc setMatrix*(this: QTransform, m11: cfloat, m12: cfloat, m13: cfloat, m21: cfloat, m22: cfloat, m23: cfloat, m31: cfloat, m32: cfloat, m33: cfloat) {.header:headerFile, importcpp:"#.setMatrix(@)".} # Public
# 1 default parameters!
proc inverted*(this: QTransform, invertible: ptr bool): QTransform {.header:headerFile, importcpp:"#.inverted(@)".} # Public
proc inverted*(this: QTransform): QTransform {.header:headerFile, importcpp:"#.inverted(@)".} # Public
proc adjoint*(this: QTransform): QTransform {.header:headerFile, importcpp:"#.adjoint(@)".} # Public
proc transposed*(this: QTransform): QTransform {.header:headerFile, importcpp:"#.transposed(@)".} # Public
proc translate*(this: QTransform, dx: cfloat, dy: cfloat): QTransform {.header:headerFile, importcpp:"#.translate(@)".} # Public
proc scale*(this: QTransform, sx: cfloat, sy: cfloat): QTransform {.header:headerFile, importcpp:"#.scale(@)".} # Public
proc shear*(this: QTransform, sh: cfloat, sv: cfloat): QTransform {.header:headerFile, importcpp:"#.shear(@)".} # Public
proc rotate*(this: QTransform, a: cfloat, axis: Qt_Axis): QTransform {.header:headerFile, importcpp:"#.rotate(@)".} # Public
proc rotateRadians*(this: QTransform, a: cfloat, axis: Qt_Axis): QTransform {.header:headerFile, importcpp:"#.rotateRadians(@)".} # Public
import nimqt/qtgui/qpolygon
proc static_QTransform_squareToQuad*(square: QPolygonF, result: QTransform): bool {.header:headerFile, importcpp:"QTransform::squareToQuad(@)".} # Public static
proc static_QTransform_quadToSquare*(quad: QPolygonF, result: QTransform): bool {.header:headerFile, importcpp:"QTransform::quadToSquare(@)".} # Public static
proc static_QTransform_quadToQuad*(one: QPolygonF, two: QPolygonF, result: QTransform): bool {.header:headerFile, importcpp:"QTransform::quadToQuad(@)".} # Public static
proc `!=`*(this: QTransform, arg_0: QTransform): bool {.header:headerFile, importcpp:"#.operator!=(@)".} # Public
proc `*=`*(this: QTransform, arg_1: QTransform): QTransform {.header:headerFile, importcpp:"#.operator*=(@)".} # Public
proc `*`*(this: QTransform, o: QTransform): QTransform {.header:headerFile, importcpp:"#.operator*(@)".} # Public
proc reset*(this: QTransform) {.header:headerFile, importcpp:"#.reset(@)".} # Public
import nimqt/qtcore/qpoint
proc map*(this: QTransform, p: QPoint): QPoint {.header:headerFile, importcpp:"#.map(@)".} # Public
proc map*(this: QTransform, p: QPointF): QPointF {.header:headerFile, importcpp:"#.map(@)".} # Public
import nimqt/qtcore/qline
proc map*(this: QTransform, l: QLine): QLine {.header:headerFile, importcpp:"#.map(@)".} # Public
proc map*(this: QTransform, l: QLineF): QLineF {.header:headerFile, importcpp:"#.map(@)".} # Public
proc map*(this: QTransform, a: QPolygonF): QPolygonF {.header:headerFile, importcpp:"#.map(@)".} # Public
proc map*(this: QTransform, a: QPolygon): QPolygon {.header:headerFile, importcpp:"#.map(@)".} # Public
import nimqt/qtgui/qregion
proc map*(this: QTransform, r: QRegion): QRegion {.header:headerFile, importcpp:"#.map(@)".} # Public
import nimqt/qtgui/qpainterpath
proc map*(this: QTransform, p: QPainterPath): QPainterPath {.header:headerFile, importcpp:"#.map(@)".} # Public
import nimqt/qtcore/qrect
proc mapToPolygon*(this: QTransform, r: QRect): QPolygon {.header:headerFile, importcpp:"#.mapToPolygon(@)".} # Public
proc mapRect*(this: QTransform, arg_1: QRect): QRect {.header:headerFile, importcpp:"#.mapRect(@)".} # Public
proc mapRect*(this: QTransform, arg_1: QRectF): QRectF {.header:headerFile, importcpp:"#.mapRect(@)".} # Public
proc map*(this: QTransform, x: cint, y: cint, tx: ptr cint, ty: ptr cint) {.header:headerFile, importcpp:"#.map(@)".} # Public
proc map*(this: QTransform, x: cfloat, y: cfloat, tx: ptr cfloat, ty: ptr cfloat) {.header:headerFile, importcpp:"#.map(@)".} # Public
proc `*=`*(this: QTransform, `div`: cfloat): QTransform {.header:headerFile, importcpp:"#.operator*=(@)".} # Public
proc `/=`*(this: QTransform, `div`: cfloat): QTransform {.header:headerFile, importcpp:"#.operator/=(@)".} # Public
proc `+=`*(this: QTransform, `div`: cfloat): QTransform {.header:headerFile, importcpp:"#.operator+=(@)".} # Public
proc `-=`*(this: QTransform, `div`: cfloat): QTransform {.header:headerFile, importcpp:"#.operator-=(@)".} # Public
proc static_QTransform_fromTranslate*(dx: cfloat, dy: cfloat): QTransform {.header:headerFile, importcpp:"QTransform::fromTranslate(@)".} # Public static
proc static_QTransform_fromScale*(dx: cfloat, dy: cfloat): QTransform {.header:headerFile, importcpp:"QTransform::fromScale(@)".} # Public static

export qnamespace
export qpainterpath
export qpolygon
export qpoint
export qline
export qregion
export qrect
