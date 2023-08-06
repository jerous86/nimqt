const headerFile* = "QtCore/qline.h"

type
    # Enums found in the C++ code
    # Global
    QLineF_IntersectionType* {.header:headerFile,importcpp:"QLineF::IntersectionType".} = enum NoIntersection = 0, BoundedIntersection = 0x1, UnboundedIntersection = 0x2

type
    # Classes found in the C++ code
    QLine* {.header:headerFile,importcpp:"QLine" ,pure,inheritable.} = object
    QLineF* {.header:headerFile,importcpp:"QLineF" ,pure,inheritable.} = object


type
    # typedefs found in the C++ code
    QLineF_IntersectType * = QLineF_IntersectionType

# Stuff for class QLine

# Public constructors for QLine
proc newQLine*(): QLine {. header:headerFile, importcpp:"QLine(@)", constructor .} #
import nimqt/qtcore/qpoint
proc newQLine*(pt1: QPoint, pt2: QPoint): QLine {. header:headerFile, importcpp:"QLine(@)", constructor .} #
proc newQLine*(x1: cint, y1: cint, x2: cint, y2: cint): QLine {. header:headerFile, importcpp:"QLine(@)", constructor .} #

# Public methods for QLine
proc isNull*(this: QLine): bool {.header:headerFile, importcpp:"#.isNull(@)".} # Public
proc p1*(this: QLine): QPoint {.header:headerFile, importcpp:"#.p1(@)".} # Public
proc p2*(this: QLine): QPoint {.header:headerFile, importcpp:"#.p2(@)".} # Public
proc x1*(this: QLine): cint {.header:headerFile, importcpp:"#.x1(@)".} # Public
proc y1*(this: QLine): cint {.header:headerFile, importcpp:"#.y1(@)".} # Public
proc x2*(this: QLine): cint {.header:headerFile, importcpp:"#.x2(@)".} # Public
proc y2*(this: QLine): cint {.header:headerFile, importcpp:"#.y2(@)".} # Public
proc dx*(this: QLine): cint {.header:headerFile, importcpp:"#.dx(@)".} # Public
proc dy*(this: QLine): cint {.header:headerFile, importcpp:"#.dy(@)".} # Public
proc translate*(this: QLine, p: QPoint) {.header:headerFile, importcpp:"#.translate(@)".} # Public
proc translate*(this: QLine, dx: cint, dy: cint) {.header:headerFile, importcpp:"#.translate(@)".} # Public
proc translated*(this: QLine, p: QPoint): QLine {.header:headerFile, importcpp:"#.translated(@)".} # Public
proc translated*(this: QLine, dx: cint, dy: cint): QLine {.header:headerFile, importcpp:"#.translated(@)".} # Public
proc center*(this: QLine): QPoint {.header:headerFile, importcpp:"#.center(@)".} # Public
proc setP1*(this: QLine, p1: QPoint) {.header:headerFile, importcpp:"#.setP1(@)".} # Public
proc setP2*(this: QLine, p2: QPoint) {.header:headerFile, importcpp:"#.setP2(@)".} # Public
proc setPoints*(this: QLine, p1: QPoint, p2: QPoint) {.header:headerFile, importcpp:"#.setPoints(@)".} # Public
proc setLine*(this: QLine, x1: cint, y1: cint, x2: cint, y2: cint) {.header:headerFile, importcpp:"#.setLine(@)".} # Public
proc `!=`*(this: QLine, d: QLine): bool {.header:headerFile, importcpp:"#.operator!=(@)".} # Public
proc toLineF*(this: QLine): QLineF {.header:headerFile, importcpp:"#.toLineF(@)".} # Public
# Stuff for class QLineF

# Public constructors for QLineF
proc newQLineF*(): QLineF {. header:headerFile, importcpp:"QLineF(@)", constructor .} #
proc newQLineF*(pt1: QPointF, pt2: QPointF): QLineF {. header:headerFile, importcpp:"QLineF(@)", constructor .} #
proc newQLineF*(x1: cfloat, y1: cfloat, x2: cfloat, y2: cfloat): QLineF {. header:headerFile, importcpp:"QLineF(@)", constructor .} #
proc newQLineF*(line: QLine): QLineF {. header:headerFile, importcpp:"QLineF(@)", constructor .} #

# Public methods for QLineF
proc static_QLineF_fromPolar*(length: cfloat, angle: cfloat): QLineF {.header:headerFile, importcpp:"QLineF::fromPolar(@)".} # Public static
proc isNull*(this: QLineF): bool {.header:headerFile, importcpp:"#.isNull(@)".} # Public
proc p1*(this: QLineF): QPointF {.header:headerFile, importcpp:"#.p1(@)".} # Public
proc p2*(this: QLineF): QPointF {.header:headerFile, importcpp:"#.p2(@)".} # Public
proc x1*(this: QLineF): cfloat {.header:headerFile, importcpp:"#.x1(@)".} # Public
proc y1*(this: QLineF): cfloat {.header:headerFile, importcpp:"#.y1(@)".} # Public
proc x2*(this: QLineF): cfloat {.header:headerFile, importcpp:"#.x2(@)".} # Public
proc y2*(this: QLineF): cfloat {.header:headerFile, importcpp:"#.y2(@)".} # Public
proc dx*(this: QLineF): cfloat {.header:headerFile, importcpp:"#.dx(@)".} # Public
proc dy*(this: QLineF): cfloat {.header:headerFile, importcpp:"#.dy(@)".} # Public
proc length*(this: QLineF): cfloat {.header:headerFile, importcpp:"#.length(@)".} # Public
proc setLength*(this: QLineF, len: cfloat) {.header:headerFile, importcpp:"#.setLength(@)".} # Public
proc angle*(this: QLineF): cfloat {.header:headerFile, importcpp:"#.angle(@)".} # Public
proc setAngle*(this: QLineF, angle: cfloat) {.header:headerFile, importcpp:"#.setAngle(@)".} # Public
proc angleTo*(this: QLineF, l: QLineF): cfloat {.header:headerFile, importcpp:"#.angleTo(@)".} # Public
proc unitVector*(this: QLineF): QLineF {.header:headerFile, importcpp:"#.unitVector(@)".} # Public
proc normalVector*(this: QLineF): QLineF {.header:headerFile, importcpp:"#.normalVector(@)".} # Public
# 1 default parameters!
proc intersects*(this: QLineF, l: QLineF, intersectionPoint: ptr QPointF): QLineF_IntersectionType {.header:headerFile, importcpp:"#.intersects(@)".} # Public
proc intersects*(this: QLineF, l: QLineF): QLineF_IntersectionType {.header:headerFile, importcpp:"#.intersects(@)".} # Public
proc pointAt*(this: QLineF, t: cfloat): QPointF {.header:headerFile, importcpp:"#.pointAt(@)".} # Public
proc translate*(this: QLineF, p: QPointF) {.header:headerFile, importcpp:"#.translate(@)".} # Public
proc translate*(this: QLineF, dx: cfloat, dy: cfloat) {.header:headerFile, importcpp:"#.translate(@)".} # Public
proc translated*(this: QLineF, p: QPointF): QLineF {.header:headerFile, importcpp:"#.translated(@)".} # Public
proc translated*(this: QLineF, dx: cfloat, dy: cfloat): QLineF {.header:headerFile, importcpp:"#.translated(@)".} # Public
proc center*(this: QLineF): QPointF {.header:headerFile, importcpp:"#.center(@)".} # Public
proc setP1*(this: QLineF, p1: QPointF) {.header:headerFile, importcpp:"#.setP1(@)".} # Public
proc setP2*(this: QLineF, p2: QPointF) {.header:headerFile, importcpp:"#.setP2(@)".} # Public
proc setPoints*(this: QLineF, p1: QPointF, p2: QPointF) {.header:headerFile, importcpp:"#.setPoints(@)".} # Public
proc setLine*(this: QLineF, x1: cfloat, y1: cfloat, x2: cfloat, y2: cfloat) {.header:headerFile, importcpp:"#.setLine(@)".} # Public
proc `!=`*(this: QLineF, d: QLineF): bool {.header:headerFile, importcpp:"#.operator!=(@)".} # Public
proc toLine*(this: QLineF): QLine {.header:headerFile, importcpp:"#.toLine(@)".} # Public

export qpoint
