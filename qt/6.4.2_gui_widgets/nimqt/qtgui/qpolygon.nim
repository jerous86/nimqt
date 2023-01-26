const headerFile* = "QtGui/qpolygon.h"

# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}


type
    # Classes and enums found in the C++ code
    QPolygon* {.header:headerFile,importcpp:"QPolygon" ,pure.} = object {.inheritable.}
    QPolygonF* {.header:headerFile,importcpp:"QPolygonF" ,pure.} = object {.inheritable.}
{.push warning[Deprecated]: on.}

# Stuff for class QPolygon

# Public constructors for QPolygon
proc newQPolygon*(): QPolygon {. header:headerFile, importcpp:"QPolygon(@)", constructor .} #
proc newQPolygon*(nPoints: cint, points: ptr cint): QPolygon {. header:headerFile, importcpp:"QPolygon(@)", constructor .} #

# Public methods for QPolygon
proc swap*(this: QPolygon, other: QPolygon) {.header:headerFile, importcpp:"#.swap(@)".} # Public
proc translate*(this: QPolygon, dx: cint, dy: cint) {.header:headerFile, importcpp:"#.translate(@)".} # Public
proc translated*(this: QPolygon, dx: cint, dy: cint): QPolygon {.header:headerFile, importcpp:"#.translated(@)".} # Public
proc point*(this: QPolygon, i: cint, x: ptr cint, y: ptr cint) {.header:headerFile, importcpp:"#.point(@)".} # Public
proc setPoint*(this: QPolygon, index: cint, x: cint, y: cint) {.header:headerFile, importcpp:"#.setPoint(@)".} # Public
proc setPoints*(this: QPolygon, nPoints: cint, points: ptr cint) {.header:headerFile, importcpp:"#.setPoints(@)".} # Public
proc setPoints*(this: QPolygon, nPoints: cint, firstx: cint, firsty: cint) {.header:headerFile, importcpp:"#.setPoints(@)".} # Public
proc putPoints*(this: QPolygon, index: cint, nPoints: cint, points: ptr cint) {.header:headerFile, importcpp:"#.putPoints(@)".} # Public
proc putPoints*(this: QPolygon, index: cint, nPoints: cint, firstx: cint, firsty: cint) {.header:headerFile, importcpp:"#.putPoints(@)".} # Public
# 1 default parameters!
proc putPoints*(this: QPolygon, index: cint, nPoints: cint, `from`: QPolygon, fromIndex: cint) {.header:headerFile, importcpp:"#.putPoints(@)".} # Public
proc putPoints*(this: QPolygon, index: cint, nPoints: cint, `from`: QPolygon) {.header:headerFile, importcpp:"#.putPoints(@)".} # Public
proc united*(this: QPolygon, r: QPolygon): QPolygon {.header:headerFile, importcpp:"#.united(@)".} # Public
proc intersected*(this: QPolygon, r: QPolygon): QPolygon {.header:headerFile, importcpp:"#.intersected(@)".} # Public
proc subtracted*(this: QPolygon, r: QPolygon): QPolygon {.header:headerFile, importcpp:"#.subtracted(@)".} # Public
proc intersects*(this: QPolygon, r: QPolygon): bool {.header:headerFile, importcpp:"#.intersects(@)".} # Public
proc toPolygonF*(this: QPolygon): QPolygonF {.header:headerFile, importcpp:"#.toPolygonF(@)".} # Public
# Stuff for class QPolygonF

# Public constructors for QPolygonF
proc newQPolygonF*(): QPolygonF {. header:headerFile, importcpp:"QPolygonF(@)", constructor .} #
proc newQPolygonF*(a: QPolygon): QPolygonF {. header:headerFile, importcpp:"QPolygonF(@)", constructor .} #

# Public methods for QPolygonF
proc swap*(this: QPolygonF, other: QPolygonF) {.header:headerFile, importcpp:"#.swap(@)".} # Public
proc translate*(this: QPolygonF, dx: cfloat, dy: cfloat) {.header:headerFile, importcpp:"#.translate(@)".} # Public
proc translated*(this: QPolygonF, dx: cfloat, dy: cfloat): QPolygonF {.header:headerFile, importcpp:"#.translated(@)".} # Public
proc toPolygon*(this: QPolygonF): QPolygon {.header:headerFile, importcpp:"#.toPolygon(@)".} # Public
proc isClosed*(this: QPolygonF): bool {.header:headerFile, importcpp:"#.isClosed(@)".} # Public
proc united*(this: QPolygonF, r: QPolygonF): QPolygonF {.header:headerFile, importcpp:"#.united(@)".} # Public
proc intersected*(this: QPolygonF, r: QPolygonF): QPolygonF {.header:headerFile, importcpp:"#.intersected(@)".} # Public
proc subtracted*(this: QPolygonF, r: QPolygonF): QPolygonF {.header:headerFile, importcpp:"#.subtracted(@)".} # Public
proc intersects*(this: QPolygonF, r: QPolygonF): bool {.header:headerFile, importcpp:"#.intersects(@)".} # Public
