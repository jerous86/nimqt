const headerFile* = "QtGui/qpolygon.h"

type
    # Classes found in the C++ code
    QPolygon* {.header:headerFile,importcpp:"QPolygon" ,pure,inheritable.} = object
    QPolygonF* {.header:headerFile,importcpp:"QPolygonF" ,pure,inheritable.} = object

# Stuff for class QPolygon

# Public constructors for QPolygon
proc newQPolygon*(): QPolygon {. header:headerFile, importcpp:"QPolygon(@)", constructor .} #
import nimqt/qtcore/qlist
import nimqt/qtcore/qpoint
proc newQPolygon*(v: QList[QPoint]): QPolygon {. header:headerFile, importcpp:"QPolygon(@)", constructor .} #
import nimqt/qtcore/qrect
# 1 default parameters!
proc newQPolygon*(r: QRect, closed: bool): QPolygon {. header:headerFile, importcpp:"QPolygon(@)", constructor .} #
proc newQPolygon*(r: QRect): QPolygon {. header:headerFile, importcpp:"QPolygon(@)", constructor .} #
proc newQPolygon*(nPoints: cint, points: ptr cint): QPolygon {. header:headerFile, importcpp:"QPolygon(@)", constructor .} #

# Public methods for QPolygon
proc swap*(this: QPolygon, other: QPolygon) {.header:headerFile, importcpp:"#.swap(@)".} # Public
proc translate*(this: QPolygon, dx: cint, dy: cint) {.header:headerFile, importcpp:"#.translate(@)".} # Public
proc translate*(this: QPolygon, offset: QPoint) {.header:headerFile, importcpp:"#.translate(@)".} # Public
proc translated*(this: QPolygon, dx: cint, dy: cint): QPolygon {.header:headerFile, importcpp:"#.translated(@)".} # Public
proc translated*(this: QPolygon, offset: QPoint): QPolygon {.header:headerFile, importcpp:"#.translated(@)".} # Public
proc boundingRect*(this: QPolygon): QRect {.header:headerFile, importcpp:"#.boundingRect(@)".} # Public
proc point*(this: QPolygon, i: cint, x: ptr cint, y: ptr cint) {.header:headerFile, importcpp:"#.point(@)".} # Public
proc point*(this: QPolygon, i: cint): QPoint {.header:headerFile, importcpp:"#.point(@)".} # Public
proc setPoint*(this: QPolygon, index: cint, x: cint, y: cint) {.header:headerFile, importcpp:"#.setPoint(@)".} # Public
proc setPoint*(this: QPolygon, index: cint, p: QPoint) {.header:headerFile, importcpp:"#.setPoint(@)".} # Public
proc setPoints*(this: QPolygon, nPoints: cint, points: ptr cint) {.header:headerFile, importcpp:"#.setPoints(@)".} # Public
proc setPoints*(this: QPolygon, nPoints: cint, firstx: cint, firsty: cint) {.header:headerFile, importcpp:"#.setPoints(@)".} # Public
proc putPoints*(this: QPolygon, index: cint, nPoints: cint, points: ptr cint) {.header:headerFile, importcpp:"#.putPoints(@)".} # Public
proc putPoints*(this: QPolygon, index: cint, nPoints: cint, firstx: cint, firsty: cint) {.header:headerFile, importcpp:"#.putPoints(@)".} # Public
# 1 default parameters!
proc putPoints*(this: QPolygon, index: cint, nPoints: cint, `from`: QPolygon, fromIndex: cint) {.header:headerFile, importcpp:"#.putPoints(@)".} # Public
proc putPoints*(this: QPolygon, index: cint, nPoints: cint, `from`: QPolygon) {.header:headerFile, importcpp:"#.putPoints(@)".} # Public
import nimqt/qtcore/qnamespace
proc containsPoint*(this: QPolygon, pt: QPoint, fillRule: Qt_FillRule): bool {.header:headerFile, importcpp:"#.containsPoint(@)".} # Public
proc united*(this: QPolygon, r: QPolygon): QPolygon {.header:headerFile, importcpp:"#.united(@)".} # Public
proc intersected*(this: QPolygon, r: QPolygon): QPolygon {.header:headerFile, importcpp:"#.intersected(@)".} # Public
proc subtracted*(this: QPolygon, r: QPolygon): QPolygon {.header:headerFile, importcpp:"#.subtracted(@)".} # Public
proc intersects*(this: QPolygon, r: QPolygon): bool {.header:headerFile, importcpp:"#.intersects(@)".} # Public
proc toPolygonF*(this: QPolygon): QPolygonF {.header:headerFile, importcpp:"#.toPolygonF(@)".} # Public
# Stuff for class QPolygonF

# Public constructors for QPolygonF
proc newQPolygonF*(): QPolygonF {. header:headerFile, importcpp:"QPolygonF(@)", constructor .} #
proc newQPolygonF*(v: QList[QPointF]): QPolygonF {. header:headerFile, importcpp:"QPolygonF(@)", constructor .} #
proc newQPolygonF*(r: QRectF): QPolygonF {. header:headerFile, importcpp:"QPolygonF(@)", constructor .} #
proc newQPolygonF*(a: QPolygon): QPolygonF {. header:headerFile, importcpp:"QPolygonF(@)", constructor .} #

# Public methods for QPolygonF
proc swap*(this: QPolygonF, other: QPolygonF) {.header:headerFile, importcpp:"#.swap(@)".} # Public
proc translate*(this: QPolygonF, dx: cfloat, dy: cfloat) {.header:headerFile, importcpp:"#.translate(@)".} # Public
proc translate*(this: QPolygonF, offset: QPointF) {.header:headerFile, importcpp:"#.translate(@)".} # Public
proc translated*(this: QPolygonF, dx: cfloat, dy: cfloat): QPolygonF {.header:headerFile, importcpp:"#.translated(@)".} # Public
proc translated*(this: QPolygonF, offset: QPointF): QPolygonF {.header:headerFile, importcpp:"#.translated(@)".} # Public
proc toPolygon*(this: QPolygonF): QPolygon {.header:headerFile, importcpp:"#.toPolygon(@)".} # Public
proc isClosed*(this: QPolygonF): bool {.header:headerFile, importcpp:"#.isClosed(@)".} # Public
proc boundingRect*(this: QPolygonF): QRectF {.header:headerFile, importcpp:"#.boundingRect(@)".} # Public
proc containsPoint*(this: QPolygonF, pt: QPointF, fillRule: Qt_FillRule): bool {.header:headerFile, importcpp:"#.containsPoint(@)".} # Public
proc united*(this: QPolygonF, r: QPolygonF): QPolygonF {.header:headerFile, importcpp:"#.united(@)".} # Public
proc intersected*(this: QPolygonF, r: QPolygonF): QPolygonF {.header:headerFile, importcpp:"#.intersected(@)".} # Public
proc subtracted*(this: QPolygonF, r: QPolygonF): QPolygonF {.header:headerFile, importcpp:"#.subtracted(@)".} # Public
proc intersects*(this: QPolygonF, r: QPolygonF): bool {.header:headerFile, importcpp:"#.intersects(@)".} # Public

export qnamespace
export qlist
export qpoint
export qrect
