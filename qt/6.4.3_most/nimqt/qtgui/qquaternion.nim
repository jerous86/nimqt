const headerFile* = "QtGui/qquaternion.h"

type
    # Classes found in the C++ code
    QQuaternion* {.header:headerFile,importcpp:"QQuaternion" ,pure,inheritable.} = object

# Stuff for class QQuaternion

# Public constructors for QQuaternion
proc newQQuaternion*(): QQuaternion {. header:headerFile, importcpp:"QQuaternion(@)", constructor .} #
import nimqt/qtcore/qnamespace
proc newQQuaternion*(arg_0: Qt_Initialization): QQuaternion {. header:headerFile, importcpp:"QQuaternion(@)", constructor .} #
proc newQQuaternion*(scalar: cfloat, xpos: cfloat, ypos: cfloat, zpos: cfloat): QQuaternion {. header:headerFile, importcpp:"QQuaternion(@)", constructor .} #
import nimqt/qtgui/qvectornd
proc newQQuaternion*(scalar: cfloat, vector: QVector3D): QQuaternion {. header:headerFile, importcpp:"QQuaternion(@)", constructor .} #
proc newQQuaternion*(vector: QVector4D): QQuaternion {. header:headerFile, importcpp:"QQuaternion(@)", constructor .} #

# Public methods for QQuaternion
proc isNull*(this: QQuaternion): bool {.header:headerFile, importcpp:"#.isNull(@)".} # Public
proc isIdentity*(this: QQuaternion): bool {.header:headerFile, importcpp:"#.isIdentity(@)".} # Public
proc vector*(this: QQuaternion): QVector3D {.header:headerFile, importcpp:"#.vector(@)".} # Public
proc setVector*(this: QQuaternion, vector: QVector3D) {.header:headerFile, importcpp:"#.setVector(@)".} # Public
proc setVector*(this: QQuaternion, x: cfloat, y: cfloat, z: cfloat) {.header:headerFile, importcpp:"#.setVector(@)".} # Public
proc x*(this: QQuaternion): cfloat {.header:headerFile, importcpp:"#.x(@)".} # Public
proc y*(this: QQuaternion): cfloat {.header:headerFile, importcpp:"#.y(@)".} # Public
proc z*(this: QQuaternion): cfloat {.header:headerFile, importcpp:"#.z(@)".} # Public
proc scalar*(this: QQuaternion): cfloat {.header:headerFile, importcpp:"#.scalar(@)".} # Public
proc setX*(this: QQuaternion, x: cfloat) {.header:headerFile, importcpp:"#.setX(@)".} # Public
proc setY*(this: QQuaternion, y: cfloat) {.header:headerFile, importcpp:"#.setY(@)".} # Public
proc setZ*(this: QQuaternion, z: cfloat) {.header:headerFile, importcpp:"#.setZ(@)".} # Public
proc setScalar*(this: QQuaternion, scalar: cfloat) {.header:headerFile, importcpp:"#.setScalar(@)".} # Public
proc static_QQuaternion_dotProduct*(q1: QQuaternion, q2: QQuaternion): cfloat {.header:headerFile, importcpp:"QQuaternion::dotProduct(@)".} # Public static
proc length*(this: QQuaternion): cfloat {.header:headerFile, importcpp:"#.length(@)".} # Public
proc lengthSquared*(this: QQuaternion): cfloat {.header:headerFile, importcpp:"#.lengthSquared(@)".} # Public
proc normalized*(this: QQuaternion): QQuaternion {.header:headerFile, importcpp:"#.normalized(@)".} # Public
proc normalize*(this: QQuaternion) {.header:headerFile, importcpp:"#.normalize(@)".} # Public
proc inverted*(this: QQuaternion): QQuaternion {.header:headerFile, importcpp:"#.inverted(@)".} # Public
proc conjugated*(this: QQuaternion): QQuaternion {.header:headerFile, importcpp:"#.conjugated(@)".} # Public
proc rotatedVector*(this: QQuaternion, vector: QVector3D): QVector3D {.header:headerFile, importcpp:"#.rotatedVector(@)".} # Public
proc `+=`*(this: QQuaternion, quaternion: QQuaternion): QQuaternion {.header:headerFile, importcpp:"#.operator+=(@)".} # Public
proc `-=`*(this: QQuaternion, quaternion: QQuaternion): QQuaternion {.header:headerFile, importcpp:"#.operator-=(@)".} # Public
proc `*=`*(this: QQuaternion, factor: cfloat): QQuaternion {.header:headerFile, importcpp:"#.operator*=(@)".} # Public
proc `*=`*(this: QQuaternion, quaternion: QQuaternion): QQuaternion {.header:headerFile, importcpp:"#.operator*=(@)".} # Public
proc `/=`*(this: QQuaternion, divisor: cfloat): QQuaternion {.header:headerFile, importcpp:"#.operator/=(@)".} # Public
proc toVector4D*(this: QQuaternion): QVector4D {.header:headerFile, importcpp:"#.toVector4D(@)".} # Public
proc getAxisAndAngle*(this: QQuaternion, axis: ptr QVector3D, angle: ptr cfloat) {.header:headerFile, importcpp:"#.getAxisAndAngle(@)".} # Public
proc static_QQuaternion_fromAxisAndAngle*(axis: QVector3D, angle: cfloat): QQuaternion {.header:headerFile, importcpp:"QQuaternion::fromAxisAndAngle(@)".} # Public static
proc getAxisAndAngle*(this: QQuaternion, x: ptr cfloat, y: ptr cfloat, z: ptr cfloat, angle: ptr cfloat) {.header:headerFile, importcpp:"#.getAxisAndAngle(@)".} # Public
proc static_QQuaternion_fromAxisAndAngle*(x: cfloat, y: cfloat, z: cfloat, angle: cfloat): QQuaternion {.header:headerFile, importcpp:"QQuaternion::fromAxisAndAngle(@)".} # Public static
proc toEulerAngles*(this: QQuaternion): QVector3D {.header:headerFile, importcpp:"#.toEulerAngles(@)".} # Public
proc static_QQuaternion_fromEulerAngles*(eulerAngles: QVector3D): QQuaternion {.header:headerFile, importcpp:"QQuaternion::fromEulerAngles(@)".} # Public static
proc getEulerAngles*(this: QQuaternion, pitch: ptr cfloat, yaw: ptr cfloat, roll: ptr cfloat) {.header:headerFile, importcpp:"#.getEulerAngles(@)".} # Public
proc static_QQuaternion_fromEulerAngles*(pitch: cfloat, yaw: cfloat, roll: cfloat): QQuaternion {.header:headerFile, importcpp:"QQuaternion::fromEulerAngles(@)".} # Public static
proc getAxes*(this: QQuaternion, xAxis: ptr QVector3D, yAxis: ptr QVector3D, zAxis: ptr QVector3D) {.header:headerFile, importcpp:"#.getAxes(@)".} # Public
proc static_QQuaternion_fromAxes*(xAxis: QVector3D, yAxis: QVector3D, zAxis: QVector3D): QQuaternion {.header:headerFile, importcpp:"QQuaternion::fromAxes(@)".} # Public static
proc static_QQuaternion_fromDirection*(direction: QVector3D, up: QVector3D): QQuaternion {.header:headerFile, importcpp:"QQuaternion::fromDirection(@)".} # Public static
proc static_QQuaternion_rotationTo*(`from`: QVector3D, to: QVector3D): QQuaternion {.header:headerFile, importcpp:"QQuaternion::rotationTo(@)".} # Public static
proc static_QQuaternion_slerp*(q1: QQuaternion, q2: QQuaternion, t: cfloat): QQuaternion {.header:headerFile, importcpp:"QQuaternion::slerp(@)".} # Public static
proc static_QQuaternion_nlerp*(q1: QQuaternion, q2: QQuaternion, t: cfloat): QQuaternion {.header:headerFile, importcpp:"QQuaternion::nlerp(@)".} # Public static

export qvectornd
export qnamespace
