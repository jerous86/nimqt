const headerFile* = "QtGui/qmatrix4x4.h"

type
    # Enums found in the C++ code
    # Global
    QMatrix4x4_Flag* {.header:headerFile,importcpp:"QMatrix4x4::Flag".} = enum Identity = 0, Translation = 0x1, Scale = 0x2, Rotation2D = 0x4, 
        Rotation = 0x8, Perspective = 0x10, General = 0x1f

type
    # Classes found in the C++ code
    QMatrix4x4* {.header:headerFile,importcpp:"QMatrix4x4" ,pure,inheritable.} = object
import nimqt/qtcore/qflags


type
    # typedefs found in the C++ code
    QMatrix4x4_Flags * = QFlags[QMatrix4x4_Flag]

# Stuff for class QMatrix4x4

# Public constructors for QMatrix4x4
proc newQMatrix4x4*(): QMatrix4x4 {. header:headerFile, importcpp:"QMatrix4x4(@)", constructor .} #
import nimqt/qtcore/qnamespace
proc newQMatrix4x4*(arg_0: Qt_Initialization): QMatrix4x4 {. header:headerFile, importcpp:"QMatrix4x4(@)", constructor .} #
proc newQMatrix4x4*(values: ptr cfloat): QMatrix4x4 {. header:headerFile, importcpp:"QMatrix4x4(@)", constructor .} #
proc newQMatrix4x4*(m11: cfloat, m12: cfloat, m13: cfloat, m14: cfloat, m21: cfloat, m22: cfloat, m23: cfloat, m24: cfloat, m31: cfloat, m32: cfloat, m33: cfloat, m34: cfloat, m41: cfloat, m42: cfloat, m43: cfloat, m44: cfloat): QMatrix4x4 {. header:headerFile, importcpp:"QMatrix4x4(@)", constructor .} #
proc newQMatrix4x4*(values: ptr cfloat, cols: cint, rows: cint): QMatrix4x4 {. header:headerFile, importcpp:"QMatrix4x4(@)", constructor .} #
import nimqt/qtgui/qtransform
proc newQMatrix4x4*(transform: QTransform): QMatrix4x4 {. header:headerFile, importcpp:"QMatrix4x4(@)", constructor .} #

# Public methods for QMatrix4x4
import nimqt/qtgui/qvectornd
proc column*(this: QMatrix4x4, index: cint): QVector4D {.header:headerFile, importcpp:"#.column(@)".} # Public
proc setColumn*(this: QMatrix4x4, index: cint, value: QVector4D) {.header:headerFile, importcpp:"#.setColumn(@)".} # Public
proc row*(this: QMatrix4x4, index: cint): QVector4D {.header:headerFile, importcpp:"#.row(@)".} # Public
proc setRow*(this: QMatrix4x4, index: cint, value: QVector4D) {.header:headerFile, importcpp:"#.setRow(@)".} # Public
proc isIdentity*(this: QMatrix4x4): bool {.header:headerFile, importcpp:"#.isIdentity(@)".} # Public
proc setToIdentity*(this: QMatrix4x4) {.header:headerFile, importcpp:"#.setToIdentity(@)".} # Public
proc fill*(this: QMatrix4x4, value: cfloat) {.header:headerFile, importcpp:"#.fill(@)".} # Public
proc determinant*(this: QMatrix4x4): cdouble {.header:headerFile, importcpp:"#.determinant(@)".} # Public
# 1 default parameters!
proc inverted*(this: QMatrix4x4, invertible: ptr bool): QMatrix4x4 {.header:headerFile, importcpp:"#.inverted(@)".} # Public
proc inverted*(this: QMatrix4x4): QMatrix4x4 {.header:headerFile, importcpp:"#.inverted(@)".} # Public
proc transposed*(this: QMatrix4x4): QMatrix4x4 {.header:headerFile, importcpp:"#.transposed(@)".} # Public
proc `+=`*(this: QMatrix4x4, other: QMatrix4x4): QMatrix4x4 {.header:headerFile, importcpp:"#.operator+=(@)".} # Public
proc `-=`*(this: QMatrix4x4, other: QMatrix4x4): QMatrix4x4 {.header:headerFile, importcpp:"#.operator-=(@)".} # Public
proc `*=`*(this: QMatrix4x4, other: QMatrix4x4): QMatrix4x4 {.header:headerFile, importcpp:"#.operator*=(@)".} # Public
proc `*=`*(this: QMatrix4x4, factor: cfloat): QMatrix4x4 {.header:headerFile, importcpp:"#.operator*=(@)".} # Public
proc `/=`*(this: QMatrix4x4, divisor: cfloat): QMatrix4x4 {.header:headerFile, importcpp:"#.operator/=(@)".} # Public
proc `!=`*(this: QMatrix4x4, other: QMatrix4x4): bool {.header:headerFile, importcpp:"#.operator!=(@)".} # Public
proc scale*(this: QMatrix4x4, vector: QVector3D) {.header:headerFile, importcpp:"#.scale(@)".} # Public
proc translate*(this: QMatrix4x4, vector: QVector3D) {.header:headerFile, importcpp:"#.translate(@)".} # Public
proc rotate*(this: QMatrix4x4, angle: cfloat, vector: QVector3D) {.header:headerFile, importcpp:"#.rotate(@)".} # Public
proc scale*(this: QMatrix4x4, x: cfloat, y: cfloat) {.header:headerFile, importcpp:"#.scale(@)".} # Public
proc scale*(this: QMatrix4x4, x: cfloat, y: cfloat, z: cfloat) {.header:headerFile, importcpp:"#.scale(@)".} # Public
proc scale*(this: QMatrix4x4, factor: cfloat) {.header:headerFile, importcpp:"#.scale(@)".} # Public
proc translate*(this: QMatrix4x4, x: cfloat, y: cfloat) {.header:headerFile, importcpp:"#.translate(@)".} # Public
proc translate*(this: QMatrix4x4, x: cfloat, y: cfloat, z: cfloat) {.header:headerFile, importcpp:"#.translate(@)".} # Public
proc rotate*(this: QMatrix4x4, angle: cfloat, x: cfloat, y: cfloat, z: cfloat) {.header:headerFile, importcpp:"#.rotate(@)".} # Public
import nimqt/qtgui/qquaternion
proc rotate*(this: QMatrix4x4, quaternion: QQuaternion) {.header:headerFile, importcpp:"#.rotate(@)".} # Public
import nimqt/qtcore/qrect
proc ortho*(this: QMatrix4x4, rect: QRect) {.header:headerFile, importcpp:"#.ortho(@)".} # Public
proc ortho*(this: QMatrix4x4, rect: QRectF) {.header:headerFile, importcpp:"#.ortho(@)".} # Public
proc ortho*(this: QMatrix4x4, left: cfloat, right: cfloat, bottom: cfloat, top: cfloat, nearPlane: cfloat, farPlane: cfloat) {.header:headerFile, importcpp:"#.ortho(@)".} # Public
proc frustum*(this: QMatrix4x4, left: cfloat, right: cfloat, bottom: cfloat, top: cfloat, nearPlane: cfloat, farPlane: cfloat) {.header:headerFile, importcpp:"#.frustum(@)".} # Public
proc perspective*(this: QMatrix4x4, verticalAngle: cfloat, aspectRatio: cfloat, nearPlane: cfloat, farPlane: cfloat) {.header:headerFile, importcpp:"#.perspective(@)".} # Public
proc lookAt*(this: QMatrix4x4, eye: QVector3D, center: QVector3D, up: QVector3D) {.header:headerFile, importcpp:"#.lookAt(@)".} # Public
proc viewport*(this: QMatrix4x4, rect: QRectF) {.header:headerFile, importcpp:"#.viewport(@)".} # Public
proc viewport*(this: QMatrix4x4, left: cfloat, bottom: cfloat, width: cfloat, height: cfloat, nearPlane: cfloat, farPlane: cfloat) {.header:headerFile, importcpp:"#.viewport(@)".} # Public
proc flipCoordinates*(this: QMatrix4x4) {.header:headerFile, importcpp:"#.flipCoordinates(@)".} # Public
proc copyDataTo*(this: QMatrix4x4, values: ptr cfloat) {.header:headerFile, importcpp:"#.copyDataTo(@)".} # Public
proc toTransform*(this: QMatrix4x4): QTransform {.header:headerFile, importcpp:"#.toTransform(@)".} # Public
proc toTransform*(this: QMatrix4x4, distanceToPlane: cfloat): QTransform {.header:headerFile, importcpp:"#.toTransform(@)".} # Public
import nimqt/qtcore/qpoint
proc map*(this: QMatrix4x4, point: QPoint): QPoint {.header:headerFile, importcpp:"#.map(@)".} # Public
proc map*(this: QMatrix4x4, point: QPointF): QPointF {.header:headerFile, importcpp:"#.map(@)".} # Public
proc map*(this: QMatrix4x4, point: QVector3D): QVector3D {.header:headerFile, importcpp:"#.map(@)".} # Public
proc mapVector*(this: QMatrix4x4, vector: QVector3D): QVector3D {.header:headerFile, importcpp:"#.mapVector(@)".} # Public
proc map*(this: QMatrix4x4, point: QVector4D): QVector4D {.header:headerFile, importcpp:"#.map(@)".} # Public
proc mapRect*(this: QMatrix4x4, rect: QRect): QRect {.header:headerFile, importcpp:"#.mapRect(@)".} # Public
proc mapRect*(this: QMatrix4x4, rect: QRectF): QRectF {.header:headerFile, importcpp:"#.mapRect(@)".} # Public
proc data*(this: QMatrix4x4): ptr cfloat {.header:headerFile, importcpp:"#.data(@)".} # Public
proc constData*(this: QMatrix4x4): ptr cfloat {.header:headerFile, importcpp:"#.constData(@)".} # Public
proc optimize*(this: QMatrix4x4) {.header:headerFile, importcpp:"#.optimize(@)".} # Public
proc projectedRotate*(this: QMatrix4x4, angle: cfloat, x: cfloat, y: cfloat, z: cfloat) {.header:headerFile, importcpp:"#.projectedRotate(@)".} # Public
proc flags*(this: QMatrix4x4): QFlags[QMatrix4x4_Flag] {.header:headerFile, importcpp:"#.flags(@)".} # Public

export qvectornd
export qnamespace
export qpoint
export qquaternion
export qrect
export qflags
export qtransform
