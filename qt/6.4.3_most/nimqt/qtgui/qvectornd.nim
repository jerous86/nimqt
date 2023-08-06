const headerFile* = "QtGui/qvectornd.h"

type
    # Classes found in the C++ code
    QVector2D* {.header:headerFile,importcpp:"QVector2D" ,pure,inheritable.} = object
    QVector3D* {.header:headerFile,importcpp:"QVector3D" ,pure,inheritable.} = object
    QVector4D* {.header:headerFile,importcpp:"QVector4D" ,pure,inheritable.} = object

# Stuff for class QVector2D

# Public constructors for QVector2D
proc newQVector2D*(): QVector2D {. header:headerFile, importcpp:"QVector2D(@)", constructor .} #
import nimqt/qtcore/qnamespace
proc newQVector2D*(arg_0: Qt_Initialization): QVector2D {. header:headerFile, importcpp:"QVector2D(@)", constructor .} #
proc newQVector2D*(xpos: cfloat, ypos: cfloat): QVector2D {. header:headerFile, importcpp:"QVector2D(@)", constructor .} #
import nimqt/qtcore/qpoint
proc newQVector2D*(point: QPoint): QVector2D {. header:headerFile, importcpp:"QVector2D(@)", constructor .} #
proc newQVector2D*(point: QPointF): QVector2D {. header:headerFile, importcpp:"QVector2D(@)", constructor .} #
proc newQVector2D*(vector: QVector3D): QVector2D {. header:headerFile, importcpp:"QVector2D(@)", constructor .} #
proc newQVector2D*(vector: QVector4D): QVector2D {. header:headerFile, importcpp:"QVector2D(@)", constructor .} #

# Public methods for QVector2D
proc isNull*(this: QVector2D): bool {.header:headerFile, importcpp:"#.isNull(@)".} # Public
proc x*(this: QVector2D): cfloat {.header:headerFile, importcpp:"#.x(@)".} # Public
proc y*(this: QVector2D): cfloat {.header:headerFile, importcpp:"#.y(@)".} # Public
proc setX*(this: QVector2D, x: cfloat) {.header:headerFile, importcpp:"#.setX(@)".} # Public
proc setY*(this: QVector2D, y: cfloat) {.header:headerFile, importcpp:"#.setY(@)".} # Public
proc `[]`*(this: QVector2D, i: cint): cfloat {.header:headerFile, importcpp:"#.operator[](@)".} # Public
proc length*(this: QVector2D): cfloat {.header:headerFile, importcpp:"#.length(@)".} # Public
proc lengthSquared*(this: QVector2D): cfloat {.header:headerFile, importcpp:"#.lengthSquared(@)".} # Public
proc normalized*(this: QVector2D): QVector2D {.header:headerFile, importcpp:"#.normalized(@)".} # Public
proc normalize*(this: QVector2D) {.header:headerFile, importcpp:"#.normalize(@)".} # Public
proc distanceToPoint*(this: QVector2D, point: QVector2D): cfloat {.header:headerFile, importcpp:"#.distanceToPoint(@)".} # Public
proc distanceToLine*(this: QVector2D, point: QVector2D, direction: QVector2D): cfloat {.header:headerFile, importcpp:"#.distanceToLine(@)".} # Public
proc `+=`*(this: QVector2D, vector: QVector2D): QVector2D {.header:headerFile, importcpp:"#.operator+=(@)".} # Public
proc `-=`*(this: QVector2D, vector: QVector2D): QVector2D {.header:headerFile, importcpp:"#.operator-=(@)".} # Public
proc `*=`*(this: QVector2D, factor: cfloat): QVector2D {.header:headerFile, importcpp:"#.operator*=(@)".} # Public
proc `*=`*(this: QVector2D, vector: QVector2D): QVector2D {.header:headerFile, importcpp:"#.operator*=(@)".} # Public
proc `/=`*(this: QVector2D, divisor: cfloat): QVector2D {.header:headerFile, importcpp:"#.operator/=(@)".} # Public
proc `/=`*(this: QVector2D, vector: QVector2D): QVector2D {.header:headerFile, importcpp:"#.operator/=(@)".} # Public
proc static_QVector2D_dotProduct*(v1: QVector2D, v2: QVector2D): cfloat {.header:headerFile, importcpp:"QVector2D::dotProduct(@)".} # Public static
proc toVector3D*(this: QVector2D): QVector3D {.header:headerFile, importcpp:"#.toVector3D(@)".} # Public
proc toVector4D*(this: QVector2D): QVector4D {.header:headerFile, importcpp:"#.toVector4D(@)".} # Public
proc toPoint*(this: QVector2D): QPoint {.header:headerFile, importcpp:"#.toPoint(@)".} # Public
proc toPointF*(this: QVector2D): QPointF {.header:headerFile, importcpp:"#.toPointF(@)".} # Public
# Stuff for class QVector3D

# Public constructors for QVector3D
proc newQVector3D*(): QVector3D {. header:headerFile, importcpp:"QVector3D(@)", constructor .} #
proc newQVector3D*(arg_0: Qt_Initialization): QVector3D {. header:headerFile, importcpp:"QVector3D(@)", constructor .} #
proc newQVector3D*(xpos: cfloat, ypos: cfloat, zpos: cfloat): QVector3D {. header:headerFile, importcpp:"QVector3D(@)", constructor .} #
proc newQVector3D*(point: QPoint): QVector3D {. header:headerFile, importcpp:"QVector3D(@)", constructor .} #
proc newQVector3D*(point: QPointF): QVector3D {. header:headerFile, importcpp:"QVector3D(@)", constructor .} #
proc newQVector3D*(vector: QVector2D): QVector3D {. header:headerFile, importcpp:"QVector3D(@)", constructor .} #
proc newQVector3D*(vector: QVector2D, zpos: cfloat): QVector3D {. header:headerFile, importcpp:"QVector3D(@)", constructor .} #
proc newQVector3D*(vector: QVector4D): QVector3D {. header:headerFile, importcpp:"QVector3D(@)", constructor .} #

# Public methods for QVector3D
proc isNull*(this: QVector3D): bool {.header:headerFile, importcpp:"#.isNull(@)".} # Public
proc x*(this: QVector3D): cfloat {.header:headerFile, importcpp:"#.x(@)".} # Public
proc y*(this: QVector3D): cfloat {.header:headerFile, importcpp:"#.y(@)".} # Public
proc z*(this: QVector3D): cfloat {.header:headerFile, importcpp:"#.z(@)".} # Public
proc setX*(this: QVector3D, x: cfloat) {.header:headerFile, importcpp:"#.setX(@)".} # Public
proc setY*(this: QVector3D, y: cfloat) {.header:headerFile, importcpp:"#.setY(@)".} # Public
proc setZ*(this: QVector3D, z: cfloat) {.header:headerFile, importcpp:"#.setZ(@)".} # Public
proc `[]`*(this: QVector3D, i: cint): cfloat {.header:headerFile, importcpp:"#.operator[](@)".} # Public
proc length*(this: QVector3D): cfloat {.header:headerFile, importcpp:"#.length(@)".} # Public
proc lengthSquared*(this: QVector3D): cfloat {.header:headerFile, importcpp:"#.lengthSquared(@)".} # Public
proc normalized*(this: QVector3D): QVector3D {.header:headerFile, importcpp:"#.normalized(@)".} # Public
proc normalize*(this: QVector3D) {.header:headerFile, importcpp:"#.normalize(@)".} # Public
proc `+=`*(this: QVector3D, vector: QVector3D): QVector3D {.header:headerFile, importcpp:"#.operator+=(@)".} # Public
proc `-=`*(this: QVector3D, vector: QVector3D): QVector3D {.header:headerFile, importcpp:"#.operator-=(@)".} # Public
proc `*=`*(this: QVector3D, factor: cfloat): QVector3D {.header:headerFile, importcpp:"#.operator*=(@)".} # Public
proc `*=`*(this: QVector3D, vector: QVector3D): QVector3D {.header:headerFile, importcpp:"#.operator*=(@)".} # Public
proc `/=`*(this: QVector3D, divisor: cfloat): QVector3D {.header:headerFile, importcpp:"#.operator/=(@)".} # Public
proc `/=`*(this: QVector3D, vector: QVector3D): QVector3D {.header:headerFile, importcpp:"#.operator/=(@)".} # Public
proc static_QVector3D_dotProduct*(v1: QVector3D, v2: QVector3D): cfloat {.header:headerFile, importcpp:"QVector3D::dotProduct(@)".} # Public static
proc static_QVector3D_crossProduct*(v1: QVector3D, v2: QVector3D): QVector3D {.header:headerFile, importcpp:"QVector3D::crossProduct(@)".} # Public static
proc static_QVector3D_normal*(v1: QVector3D, v2: QVector3D): QVector3D {.header:headerFile, importcpp:"QVector3D::normal(@)".} # Public static
proc static_QVector3D_normal*(v1: QVector3D, v2: QVector3D, v3: QVector3D): QVector3D {.header:headerFile, importcpp:"QVector3D::normal(@)".} # Public static
import nimqt/qtgui/qmatrix4x4
import nimqt/qtcore/qrect
proc project*(this: QVector3D, modelView: QMatrix4x4, projection: QMatrix4x4, viewport: QRect): QVector3D {.header:headerFile, importcpp:"#.project(@)".} # Public
proc unproject*(this: QVector3D, modelView: QMatrix4x4, projection: QMatrix4x4, viewport: QRect): QVector3D {.header:headerFile, importcpp:"#.unproject(@)".} # Public
proc distanceToPoint*(this: QVector3D, point: QVector3D): cfloat {.header:headerFile, importcpp:"#.distanceToPoint(@)".} # Public
proc distanceToPlane*(this: QVector3D, plane: QVector3D, normal: QVector3D): cfloat {.header:headerFile, importcpp:"#.distanceToPlane(@)".} # Public
proc distanceToPlane*(this: QVector3D, plane1: QVector3D, plane2: QVector3D, plane3: QVector3D): cfloat {.header:headerFile, importcpp:"#.distanceToPlane(@)".} # Public
proc distanceToLine*(this: QVector3D, point: QVector3D, direction: QVector3D): cfloat {.header:headerFile, importcpp:"#.distanceToLine(@)".} # Public
proc toVector2D*(this: QVector3D): QVector2D {.header:headerFile, importcpp:"#.toVector2D(@)".} # Public
proc toVector4D*(this: QVector3D): QVector4D {.header:headerFile, importcpp:"#.toVector4D(@)".} # Public
proc toPoint*(this: QVector3D): QPoint {.header:headerFile, importcpp:"#.toPoint(@)".} # Public
proc toPointF*(this: QVector3D): QPointF {.header:headerFile, importcpp:"#.toPointF(@)".} # Public
# Stuff for class QVector4D

# Public constructors for QVector4D
proc newQVector4D*(): QVector4D {. header:headerFile, importcpp:"QVector4D(@)", constructor .} #
proc newQVector4D*(arg_0: Qt_Initialization): QVector4D {. header:headerFile, importcpp:"QVector4D(@)", constructor .} #
proc newQVector4D*(xpos: cfloat, ypos: cfloat, zpos: cfloat, wpos: cfloat): QVector4D {. header:headerFile, importcpp:"QVector4D(@)", constructor .} #
proc newQVector4D*(point: QPoint): QVector4D {. header:headerFile, importcpp:"QVector4D(@)", constructor .} #
proc newQVector4D*(point: QPointF): QVector4D {. header:headerFile, importcpp:"QVector4D(@)", constructor .} #
proc newQVector4D*(vector: QVector2D): QVector4D {. header:headerFile, importcpp:"QVector4D(@)", constructor .} #
proc newQVector4D*(vector: QVector2D, zpos: cfloat, wpos: cfloat): QVector4D {. header:headerFile, importcpp:"QVector4D(@)", constructor .} #
proc newQVector4D*(vector: QVector3D): QVector4D {. header:headerFile, importcpp:"QVector4D(@)", constructor .} #
proc newQVector4D*(vector: QVector3D, wpos: cfloat): QVector4D {. header:headerFile, importcpp:"QVector4D(@)", constructor .} #

# Public methods for QVector4D
proc isNull*(this: QVector4D): bool {.header:headerFile, importcpp:"#.isNull(@)".} # Public
proc x*(this: QVector4D): cfloat {.header:headerFile, importcpp:"#.x(@)".} # Public
proc y*(this: QVector4D): cfloat {.header:headerFile, importcpp:"#.y(@)".} # Public
proc z*(this: QVector4D): cfloat {.header:headerFile, importcpp:"#.z(@)".} # Public
proc w*(this: QVector4D): cfloat {.header:headerFile, importcpp:"#.w(@)".} # Public
proc setX*(this: QVector4D, x: cfloat) {.header:headerFile, importcpp:"#.setX(@)".} # Public
proc setY*(this: QVector4D, y: cfloat) {.header:headerFile, importcpp:"#.setY(@)".} # Public
proc setZ*(this: QVector4D, z: cfloat) {.header:headerFile, importcpp:"#.setZ(@)".} # Public
proc setW*(this: QVector4D, w: cfloat) {.header:headerFile, importcpp:"#.setW(@)".} # Public
proc `[]`*(this: QVector4D, i: cint): cfloat {.header:headerFile, importcpp:"#.operator[](@)".} # Public
proc length*(this: QVector4D): cfloat {.header:headerFile, importcpp:"#.length(@)".} # Public
proc lengthSquared*(this: QVector4D): cfloat {.header:headerFile, importcpp:"#.lengthSquared(@)".} # Public
proc normalized*(this: QVector4D): QVector4D {.header:headerFile, importcpp:"#.normalized(@)".} # Public
proc normalize*(this: QVector4D) {.header:headerFile, importcpp:"#.normalize(@)".} # Public
proc `+=`*(this: QVector4D, vector: QVector4D): QVector4D {.header:headerFile, importcpp:"#.operator+=(@)".} # Public
proc `-=`*(this: QVector4D, vector: QVector4D): QVector4D {.header:headerFile, importcpp:"#.operator-=(@)".} # Public
proc `*=`*(this: QVector4D, factor: cfloat): QVector4D {.header:headerFile, importcpp:"#.operator*=(@)".} # Public
proc `*=`*(this: QVector4D, vector: QVector4D): QVector4D {.header:headerFile, importcpp:"#.operator*=(@)".} # Public
proc `/=`*(this: QVector4D, divisor: cfloat): QVector4D {.header:headerFile, importcpp:"#.operator/=(@)".} # Public
proc `/=`*(this: QVector4D, vector: QVector4D): QVector4D {.header:headerFile, importcpp:"#.operator/=(@)".} # Public
proc static_QVector4D_dotProduct*(v1: QVector4D, v2: QVector4D): cfloat {.header:headerFile, importcpp:"QVector4D::dotProduct(@)".} # Public static
proc toVector2D*(this: QVector4D): QVector2D {.header:headerFile, importcpp:"#.toVector2D(@)".} # Public
proc toVector3D*(this: QVector4D): QVector3D {.header:headerFile, importcpp:"#.toVector3D(@)".} # Public
proc toPoint*(this: QVector4D): QPoint {.header:headerFile, importcpp:"#.toPoint(@)".} # Public
proc toPointF*(this: QVector4D): QPointF {.header:headerFile, importcpp:"#.toPointF(@)".} # Public

export qmatrix4x4
export qnamespace
export qpoint
export qrect
