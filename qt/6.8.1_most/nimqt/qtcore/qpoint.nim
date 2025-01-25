const headerFile* = "QtCore/qpoint.h"

type
    # Classes found in the C++ code
    QPoint* {.header:headerFile,importcpp:"QPoint" ,pure,inheritable.} = object
    QPointF* {.header:headerFile,importcpp:"QPointF" ,pure,inheritable.} = object

# Stuff for class QPoint

# Public constructors for QPoint
proc newQPoint*(): QPoint {. header:headerFile, importcpp:"QPoint(@)", constructor .} #
proc newQPoint*(xpos: cint, ypos: cint): QPoint {. header:headerFile, importcpp:"QPoint(@)", constructor .} #

# Public methods for QPoint
proc isNull*(this: QPoint): bool {.header:headerFile, importcpp:"#.isNull(@)".} # Public
proc x*(this: QPoint): cint {.header:headerFile, importcpp:"#.x(@)".} # Public
proc y*(this: QPoint): cint {.header:headerFile, importcpp:"#.y(@)".} # Public
proc setX*(this: QPoint, x: cint) {.header:headerFile, importcpp:"#.setX(@)".} # Public
proc setY*(this: QPoint, y: cint) {.header:headerFile, importcpp:"#.setY(@)".} # Public
proc manhattanLength*(this: QPoint): cint {.header:headerFile, importcpp:"#.manhattanLength(@)".} # Public
proc transposed*(this: QPoint): QPoint {.header:headerFile, importcpp:"#.transposed(@)".} # Public
proc rx*(this: QPoint): cint {.header:headerFile, importcpp:"#.rx(@)".} # Public
proc ry*(this: QPoint): cint {.header:headerFile, importcpp:"#.ry(@)".} # Public
proc `+=`*(this: QPoint, p: QPoint): QPoint {.header:headerFile, importcpp:"#.operator+=(@)".} # Public
proc `-=`*(this: QPoint, p: QPoint): QPoint {.header:headerFile, importcpp:"#.operator-=(@)".} # Public
proc `*=`*(this: QPoint, factor: cfloat): QPoint {.header:headerFile, importcpp:"#.operator*=(@)".} # Public
proc `*=`*(this: QPoint, factor: cdouble): QPoint {.header:headerFile, importcpp:"#.operator*=(@)".} # Public
proc `*=`*(this: QPoint, factor: cint): QPoint {.header:headerFile, importcpp:"#.operator*=(@)".} # Public
proc `/=`*(this: QPoint, divisor: cfloat): QPoint {.header:headerFile, importcpp:"#.operator/=(@)".} # Public
proc static_QPoint_dotProduct*(p1: QPoint, p2: QPoint): cint {.header:headerFile, importcpp:"QPoint::dotProduct(@)".} # Public static
proc toPointF*(this: QPoint): QPointF {.header:headerFile, importcpp:"#.toPointF(@)".} # Public
# Stuff for class QPointF

# Public constructors for QPointF
proc newQPointF*(): QPointF {. header:headerFile, importcpp:"QPointF(@)", constructor .} #
proc newQPointF*(p: QPoint): QPointF {. header:headerFile, importcpp:"QPointF(@)", constructor .} #
proc newQPointF*(xpos: cfloat, ypos: cfloat): QPointF {. header:headerFile, importcpp:"QPointF(@)", constructor .} #

# Public methods for QPointF
proc manhattanLength*(this: QPointF): cfloat {.header:headerFile, importcpp:"#.manhattanLength(@)".} # Public
proc isNull*(this: QPointF): bool {.header:headerFile, importcpp:"#.isNull(@)".} # Public
proc x*(this: QPointF): cfloat {.header:headerFile, importcpp:"#.x(@)".} # Public
proc y*(this: QPointF): cfloat {.header:headerFile, importcpp:"#.y(@)".} # Public
proc setX*(this: QPointF, x: cfloat) {.header:headerFile, importcpp:"#.setX(@)".} # Public
proc setY*(this: QPointF, y: cfloat) {.header:headerFile, importcpp:"#.setY(@)".} # Public
proc transposed*(this: QPointF): QPointF {.header:headerFile, importcpp:"#.transposed(@)".} # Public
proc rx*(this: QPointF): cfloat {.header:headerFile, importcpp:"#.rx(@)".} # Public
proc ry*(this: QPointF): cfloat {.header:headerFile, importcpp:"#.ry(@)".} # Public
proc `+=`*(this: QPointF, p: QPointF): QPointF {.header:headerFile, importcpp:"#.operator+=(@)".} # Public
proc `-=`*(this: QPointF, p: QPointF): QPointF {.header:headerFile, importcpp:"#.operator-=(@)".} # Public
proc `*=`*(this: QPointF, c: cfloat): QPointF {.header:headerFile, importcpp:"#.operator*=(@)".} # Public
proc `/=`*(this: QPointF, c: cfloat): QPointF {.header:headerFile, importcpp:"#.operator/=(@)".} # Public
proc static_QPointF_dotProduct*(p1: QPointF, p2: QPointF): cfloat {.header:headerFile, importcpp:"QPointF::dotProduct(@)".} # Public static
proc toPoint*(this: QPointF): QPoint {.header:headerFile, importcpp:"#.toPoint(@)".} # Public

