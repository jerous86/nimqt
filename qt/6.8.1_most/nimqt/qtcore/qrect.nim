const headerFile* = "QtCore/qrect.h"

type
    # Classes found in the C++ code
    QRect* {.header:headerFile,importcpp:"QRect" ,pure,inheritable.} = object
    QRectF* {.header:headerFile,importcpp:"QRectF" ,pure,inheritable.} = object

# Stuff for class QRect

# Public constructors for QRect
proc newQRect*(): QRect {. header:headerFile, importcpp:"QRect(@)", constructor .} #
import nimqt/qtcore/qpoint
proc newQRect*(topleft: QPoint, bottomright: QPoint): QRect {. header:headerFile, importcpp:"QRect(@)", constructor .} #
import nimqt/qtcore/qsize
proc newQRect*(topleft: QPoint, size: QSize): QRect {. header:headerFile, importcpp:"QRect(@)", constructor .} #
proc newQRect*(left: cint, top: cint, width: cint, height: cint): QRect {. header:headerFile, importcpp:"QRect(@)", constructor .} #

# Public methods for QRect
proc isNull*(this: QRect): bool {.header:headerFile, importcpp:"#.isNull(@)".} # Public
proc isEmpty*(this: QRect): bool {.header:headerFile, importcpp:"#.isEmpty(@)".} # Public
proc isValid*(this: QRect): bool {.header:headerFile, importcpp:"#.isValid(@)".} # Public
proc left*(this: QRect): cint {.header:headerFile, importcpp:"#.left(@)".} # Public
proc top*(this: QRect): cint {.header:headerFile, importcpp:"#.top(@)".} # Public
proc right*(this: QRect): cint {.header:headerFile, importcpp:"#.right(@)".} # Public
proc bottom*(this: QRect): cint {.header:headerFile, importcpp:"#.bottom(@)".} # Public
proc normalized*(this: QRect): QRect {.header:headerFile, importcpp:"#.normalized(@)".} # Public
proc x*(this: QRect): cint {.header:headerFile, importcpp:"#.x(@)".} # Public
proc y*(this: QRect): cint {.header:headerFile, importcpp:"#.y(@)".} # Public
proc setLeft*(this: QRect, pos: cint) {.header:headerFile, importcpp:"#.setLeft(@)".} # Public
proc setTop*(this: QRect, pos: cint) {.header:headerFile, importcpp:"#.setTop(@)".} # Public
proc setRight*(this: QRect, pos: cint) {.header:headerFile, importcpp:"#.setRight(@)".} # Public
proc setBottom*(this: QRect, pos: cint) {.header:headerFile, importcpp:"#.setBottom(@)".} # Public
proc setX*(this: QRect, x: cint) {.header:headerFile, importcpp:"#.setX(@)".} # Public
proc setY*(this: QRect, y: cint) {.header:headerFile, importcpp:"#.setY(@)".} # Public
proc setTopLeft*(this: QRect, p: QPoint) {.header:headerFile, importcpp:"#.setTopLeft(@)".} # Public
proc setBottomRight*(this: QRect, p: QPoint) {.header:headerFile, importcpp:"#.setBottomRight(@)".} # Public
proc setTopRight*(this: QRect, p: QPoint) {.header:headerFile, importcpp:"#.setTopRight(@)".} # Public
proc setBottomLeft*(this: QRect, p: QPoint) {.header:headerFile, importcpp:"#.setBottomLeft(@)".} # Public
proc topLeft*(this: QRect): QPoint {.header:headerFile, importcpp:"#.topLeft(@)".} # Public
proc bottomRight*(this: QRect): QPoint {.header:headerFile, importcpp:"#.bottomRight(@)".} # Public
proc topRight*(this: QRect): QPoint {.header:headerFile, importcpp:"#.topRight(@)".} # Public
proc bottomLeft*(this: QRect): QPoint {.header:headerFile, importcpp:"#.bottomLeft(@)".} # Public
proc center*(this: QRect): QPoint {.header:headerFile, importcpp:"#.center(@)".} # Public
proc moveLeft*(this: QRect, pos: cint) {.header:headerFile, importcpp:"#.moveLeft(@)".} # Public
proc moveTop*(this: QRect, pos: cint) {.header:headerFile, importcpp:"#.moveTop(@)".} # Public
proc moveRight*(this: QRect, pos: cint) {.header:headerFile, importcpp:"#.moveRight(@)".} # Public
proc moveBottom*(this: QRect, pos: cint) {.header:headerFile, importcpp:"#.moveBottom(@)".} # Public
proc moveTopLeft*(this: QRect, p: QPoint) {.header:headerFile, importcpp:"#.moveTopLeft(@)".} # Public
proc moveBottomRight*(this: QRect, p: QPoint) {.header:headerFile, importcpp:"#.moveBottomRight(@)".} # Public
proc moveTopRight*(this: QRect, p: QPoint) {.header:headerFile, importcpp:"#.moveTopRight(@)".} # Public
proc moveBottomLeft*(this: QRect, p: QPoint) {.header:headerFile, importcpp:"#.moveBottomLeft(@)".} # Public
proc moveCenter*(this: QRect, p: QPoint) {.header:headerFile, importcpp:"#.moveCenter(@)".} # Public
proc translate*(this: QRect, dx: cint, dy: cint) {.header:headerFile, importcpp:"#.translate(@)".} # Public
proc translate*(this: QRect, p: QPoint) {.header:headerFile, importcpp:"#.translate(@)".} # Public
proc translated*(this: QRect, dx: cint, dy: cint): QRect {.header:headerFile, importcpp:"#.translated(@)".} # Public
proc translated*(this: QRect, p: QPoint): QRect {.header:headerFile, importcpp:"#.translated(@)".} # Public
proc transposed*(this: QRect): QRect {.header:headerFile, importcpp:"#.transposed(@)".} # Public
proc moveTo*(this: QRect, x: cint, t: cint) {.header:headerFile, importcpp:"#.moveTo(@)".} # Public
proc moveTo*(this: QRect, p: QPoint) {.header:headerFile, importcpp:"#.moveTo(@)".} # Public
proc setRect*(this: QRect, x: cint, y: cint, w: cint, h: cint) {.header:headerFile, importcpp:"#.setRect(@)".} # Public
proc getRect*(this: QRect, x: ptr cint, y: ptr cint, w: ptr cint, h: ptr cint) {.header:headerFile, importcpp:"#.getRect(@)".} # Public
proc setCoords*(this: QRect, x1: cint, y1: cint, x2: cint, y2: cint) {.header:headerFile, importcpp:"#.setCoords(@)".} # Public
proc getCoords*(this: QRect, x1: ptr cint, y1: ptr cint, x2: ptr cint, y2: ptr cint) {.header:headerFile, importcpp:"#.getCoords(@)".} # Public
proc adjust*(this: QRect, x1: cint, y1: cint, x2: cint, y2: cint) {.header:headerFile, importcpp:"#.adjust(@)".} # Public
proc adjusted*(this: QRect, x1: cint, y1: cint, x2: cint, y2: cint): QRect {.header:headerFile, importcpp:"#.adjusted(@)".} # Public
proc size*(this: QRect): QSize {.header:headerFile, importcpp:"#.size(@)".} # Public
proc width*(this: QRect): cint {.header:headerFile, importcpp:"#.width(@)".} # Public
proc height*(this: QRect): cint {.header:headerFile, importcpp:"#.height(@)".} # Public
proc setWidth*(this: QRect, w: cint) {.header:headerFile, importcpp:"#.setWidth(@)".} # Public
proc setHeight*(this: QRect, h: cint) {.header:headerFile, importcpp:"#.setHeight(@)".} # Public
proc setSize*(this: QRect, s: QSize) {.header:headerFile, importcpp:"#.setSize(@)".} # Public
proc `|`*(this: QRect, r: QRect): QRect {.header:headerFile, importcpp:"#.operator|(@)".} # Public
proc `&`*(this: QRect, r: QRect): QRect {.header:headerFile, importcpp:"#.operator&(@)".} # Public
proc `|=`*(this: QRect, r: QRect): QRect {.header:headerFile, importcpp:"#.operator|=(@)".} # Public
proc `&=`*(this: QRect, r: QRect): QRect {.header:headerFile, importcpp:"#.operator&=(@)".} # Public
# 1 default parameters!
proc contains*(this: QRect, r: QRect, proper: bool): bool {.header:headerFile, importcpp:"#.contains(@)".} # Public
proc contains*(this: QRect, r: QRect): bool {.header:headerFile, importcpp:"#.contains(@)".} # Public
# 1 default parameters!
proc contains*(this: QRect, p: QPoint, proper: bool): bool {.header:headerFile, importcpp:"#.contains(@)".} # Public
proc contains*(this: QRect, p: QPoint): bool {.header:headerFile, importcpp:"#.contains(@)".} # Public
proc contains*(this: QRect, x: cint, y: cint): bool {.header:headerFile, importcpp:"#.contains(@)".} # Public
proc contains*(this: QRect, x: cint, y: cint, proper: bool): bool {.header:headerFile, importcpp:"#.contains(@)".} # Public
proc united*(this: QRect, other: QRect): QRect {.header:headerFile, importcpp:"#.united(@)".} # Public
proc intersected*(this: QRect, other: QRect): QRect {.header:headerFile, importcpp:"#.intersected(@)".} # Public
proc intersects*(this: QRect, r: QRect): bool {.header:headerFile, importcpp:"#.intersects(@)".} # Public
import nimqt/qtcore/qmargins
proc marginsAdded*(this: QRect, margins: QMargins): QRect {.header:headerFile, importcpp:"#.marginsAdded(@)".} # Public
proc marginsRemoved*(this: QRect, margins: QMargins): QRect {.header:headerFile, importcpp:"#.marginsRemoved(@)".} # Public
proc `+=`*(this: QRect, margins: QMargins): QRect {.header:headerFile, importcpp:"#.operator+=(@)".} # Public
proc `-=`*(this: QRect, margins: QMargins): QRect {.header:headerFile, importcpp:"#.operator-=(@)".} # Public
proc static_QRect_span*(p1: QPoint, p2: QPoint): QRect {.header:headerFile, importcpp:"QRect::span(@)".} # Public static
proc toRectF*(this: QRect): QRectF {.header:headerFile, importcpp:"#.toRectF(@)".} # Public
# Stuff for class QRectF

# Public constructors for QRectF
proc newQRectF*(): QRectF {. header:headerFile, importcpp:"QRectF(@)", constructor .} #
proc newQRectF*(topleft: QPointF, size: QSizeF): QRectF {. header:headerFile, importcpp:"QRectF(@)", constructor .} #
proc newQRectF*(topleft: QPointF, bottomRight: QPointF): QRectF {. header:headerFile, importcpp:"QRectF(@)", constructor .} #
proc newQRectF*(left: cfloat, top: cfloat, width: cfloat, height: cfloat): QRectF {. header:headerFile, importcpp:"QRectF(@)", constructor .} #
proc newQRectF*(rect: QRect): QRectF {. header:headerFile, importcpp:"QRectF(@)", constructor .} #

# Public methods for QRectF
proc isNull*(this: QRectF): bool {.header:headerFile, importcpp:"#.isNull(@)".} # Public
proc isEmpty*(this: QRectF): bool {.header:headerFile, importcpp:"#.isEmpty(@)".} # Public
proc isValid*(this: QRectF): bool {.header:headerFile, importcpp:"#.isValid(@)".} # Public
proc normalized*(this: QRectF): QRectF {.header:headerFile, importcpp:"#.normalized(@)".} # Public
proc left*(this: QRectF): cfloat {.header:headerFile, importcpp:"#.left(@)".} # Public
proc top*(this: QRectF): cfloat {.header:headerFile, importcpp:"#.top(@)".} # Public
proc right*(this: QRectF): cfloat {.header:headerFile, importcpp:"#.right(@)".} # Public
proc bottom*(this: QRectF): cfloat {.header:headerFile, importcpp:"#.bottom(@)".} # Public
proc x*(this: QRectF): cfloat {.header:headerFile, importcpp:"#.x(@)".} # Public
proc y*(this: QRectF): cfloat {.header:headerFile, importcpp:"#.y(@)".} # Public
proc setLeft*(this: QRectF, pos: cfloat) {.header:headerFile, importcpp:"#.setLeft(@)".} # Public
proc setTop*(this: QRectF, pos: cfloat) {.header:headerFile, importcpp:"#.setTop(@)".} # Public
proc setRight*(this: QRectF, pos: cfloat) {.header:headerFile, importcpp:"#.setRight(@)".} # Public
proc setBottom*(this: QRectF, pos: cfloat) {.header:headerFile, importcpp:"#.setBottom(@)".} # Public
proc setX*(this: QRectF, pos: cfloat) {.header:headerFile, importcpp:"#.setX(@)".} # Public
proc setY*(this: QRectF, pos: cfloat) {.header:headerFile, importcpp:"#.setY(@)".} # Public
proc topLeft*(this: QRectF): QPointF {.header:headerFile, importcpp:"#.topLeft(@)".} # Public
proc bottomRight*(this: QRectF): QPointF {.header:headerFile, importcpp:"#.bottomRight(@)".} # Public
proc topRight*(this: QRectF): QPointF {.header:headerFile, importcpp:"#.topRight(@)".} # Public
proc bottomLeft*(this: QRectF): QPointF {.header:headerFile, importcpp:"#.bottomLeft(@)".} # Public
proc center*(this: QRectF): QPointF {.header:headerFile, importcpp:"#.center(@)".} # Public
proc setTopLeft*(this: QRectF, p: QPointF) {.header:headerFile, importcpp:"#.setTopLeft(@)".} # Public
proc setBottomRight*(this: QRectF, p: QPointF) {.header:headerFile, importcpp:"#.setBottomRight(@)".} # Public
proc setTopRight*(this: QRectF, p: QPointF) {.header:headerFile, importcpp:"#.setTopRight(@)".} # Public
proc setBottomLeft*(this: QRectF, p: QPointF) {.header:headerFile, importcpp:"#.setBottomLeft(@)".} # Public
proc moveLeft*(this: QRectF, pos: cfloat) {.header:headerFile, importcpp:"#.moveLeft(@)".} # Public
proc moveTop*(this: QRectF, pos: cfloat) {.header:headerFile, importcpp:"#.moveTop(@)".} # Public
proc moveRight*(this: QRectF, pos: cfloat) {.header:headerFile, importcpp:"#.moveRight(@)".} # Public
proc moveBottom*(this: QRectF, pos: cfloat) {.header:headerFile, importcpp:"#.moveBottom(@)".} # Public
proc moveTopLeft*(this: QRectF, p: QPointF) {.header:headerFile, importcpp:"#.moveTopLeft(@)".} # Public
proc moveBottomRight*(this: QRectF, p: QPointF) {.header:headerFile, importcpp:"#.moveBottomRight(@)".} # Public
proc moveTopRight*(this: QRectF, p: QPointF) {.header:headerFile, importcpp:"#.moveTopRight(@)".} # Public
proc moveBottomLeft*(this: QRectF, p: QPointF) {.header:headerFile, importcpp:"#.moveBottomLeft(@)".} # Public
proc moveCenter*(this: QRectF, p: QPointF) {.header:headerFile, importcpp:"#.moveCenter(@)".} # Public
proc translate*(this: QRectF, dx: cfloat, dy: cfloat) {.header:headerFile, importcpp:"#.translate(@)".} # Public
proc translate*(this: QRectF, p: QPointF) {.header:headerFile, importcpp:"#.translate(@)".} # Public
proc translated*(this: QRectF, dx: cfloat, dy: cfloat): QRectF {.header:headerFile, importcpp:"#.translated(@)".} # Public
proc translated*(this: QRectF, p: QPointF): QRectF {.header:headerFile, importcpp:"#.translated(@)".} # Public
proc transposed*(this: QRectF): QRectF {.header:headerFile, importcpp:"#.transposed(@)".} # Public
proc moveTo*(this: QRectF, x: cfloat, y: cfloat) {.header:headerFile, importcpp:"#.moveTo(@)".} # Public
proc moveTo*(this: QRectF, p: QPointF) {.header:headerFile, importcpp:"#.moveTo(@)".} # Public
proc setRect*(this: QRectF, x: cfloat, y: cfloat, w: cfloat, h: cfloat) {.header:headerFile, importcpp:"#.setRect(@)".} # Public
proc getRect*(this: QRectF, x: ptr cfloat, y: ptr cfloat, w: ptr cfloat, h: ptr cfloat) {.header:headerFile, importcpp:"#.getRect(@)".} # Public
proc setCoords*(this: QRectF, x1: cfloat, y1: cfloat, x2: cfloat, y2: cfloat) {.header:headerFile, importcpp:"#.setCoords(@)".} # Public
proc getCoords*(this: QRectF, x1: ptr cfloat, y1: ptr cfloat, x2: ptr cfloat, y2: ptr cfloat) {.header:headerFile, importcpp:"#.getCoords(@)".} # Public
proc adjust*(this: QRectF, x1: cfloat, y1: cfloat, x2: cfloat, y2: cfloat) {.header:headerFile, importcpp:"#.adjust(@)".} # Public
proc adjusted*(this: QRectF, x1: cfloat, y1: cfloat, x2: cfloat, y2: cfloat): QRectF {.header:headerFile, importcpp:"#.adjusted(@)".} # Public
proc size*(this: QRectF): QSizeF {.header:headerFile, importcpp:"#.size(@)".} # Public
proc width*(this: QRectF): cfloat {.header:headerFile, importcpp:"#.width(@)".} # Public
proc height*(this: QRectF): cfloat {.header:headerFile, importcpp:"#.height(@)".} # Public
proc setWidth*(this: QRectF, w: cfloat) {.header:headerFile, importcpp:"#.setWidth(@)".} # Public
proc setHeight*(this: QRectF, h: cfloat) {.header:headerFile, importcpp:"#.setHeight(@)".} # Public
proc setSize*(this: QRectF, s: QSizeF) {.header:headerFile, importcpp:"#.setSize(@)".} # Public
proc `|`*(this: QRectF, r: QRectF): QRectF {.header:headerFile, importcpp:"#.operator|(@)".} # Public
proc `&`*(this: QRectF, r: QRectF): QRectF {.header:headerFile, importcpp:"#.operator&(@)".} # Public
proc `|=`*(this: QRectF, r: QRectF): QRectF {.header:headerFile, importcpp:"#.operator|=(@)".} # Public
proc `&=`*(this: QRectF, r: QRectF): QRectF {.header:headerFile, importcpp:"#.operator&=(@)".} # Public
proc contains*(this: QRectF, r: QRectF): bool {.header:headerFile, importcpp:"#.contains(@)".} # Public
proc contains*(this: QRectF, p: QPointF): bool {.header:headerFile, importcpp:"#.contains(@)".} # Public
proc contains*(this: QRectF, x: cfloat, y: cfloat): bool {.header:headerFile, importcpp:"#.contains(@)".} # Public
proc united*(this: QRectF, other: QRectF): QRectF {.header:headerFile, importcpp:"#.united(@)".} # Public
proc intersected*(this: QRectF, other: QRectF): QRectF {.header:headerFile, importcpp:"#.intersected(@)".} # Public
proc intersects*(this: QRectF, r: QRectF): bool {.header:headerFile, importcpp:"#.intersects(@)".} # Public
proc marginsAdded*(this: QRectF, margins: QMarginsF): QRectF {.header:headerFile, importcpp:"#.marginsAdded(@)".} # Public
proc marginsRemoved*(this: QRectF, margins: QMarginsF): QRectF {.header:headerFile, importcpp:"#.marginsRemoved(@)".} # Public
proc `+=`*(this: QRectF, margins: QMarginsF): QRectF {.header:headerFile, importcpp:"#.operator+=(@)".} # Public
proc `-=`*(this: QRectF, margins: QMarginsF): QRectF {.header:headerFile, importcpp:"#.operator-=(@)".} # Public
proc toRect*(this: QRectF): QRect {.header:headerFile, importcpp:"#.toRect(@)".} # Public
proc toAlignedRect*(this: QRectF): QRect {.header:headerFile, importcpp:"#.toAlignedRect(@)".} # Public

export qsize
export qpoint
export qmargins
