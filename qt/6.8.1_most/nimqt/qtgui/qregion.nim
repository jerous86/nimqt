const headerFile* = "QtGui/qregion.h"

type
    # Enums found in the C++ code
    # Global
    QRegion_RegionType* {.header:headerFile,importcpp:"QRegion::RegionType".} = enum Rectangle = 0, Ellipse = 0x1

type
    # Classes found in the C++ code
    QRegion* {.header:headerFile,importcpp:"QRegion" ,pure,inheritable.} = object

# Stuff for class QRegion

# Public constructors for QRegion
proc newQRegion*(): QRegion {. header:headerFile, importcpp:"QRegion(@)", constructor .} #
proc newQRegion*(x: cint, y: cint, w: cint, h: cint, t: QRegion_RegionType): QRegion {. header:headerFile, importcpp:"QRegion(@)", constructor .} #
import nimqt/qtcore/qrect
proc newQRegion*(r: QRect, t: QRegion_RegionType): QRegion {. header:headerFile, importcpp:"QRegion(@)", constructor .} #
import nimqt/qtcore/qnamespace
import nimqt/qtgui/qpolygon
proc newQRegion*(pa: QPolygon, fillRule: Qt_FillRule): QRegion {. header:headerFile, importcpp:"QRegion(@)", constructor .} #
proc newQRegion*(region: QRegion): QRegion {. header:headerFile, importcpp:"QRegion(@)", constructor .} #
proc newQRegion*(other: QRegion): QRegion {. header:headerFile, importcpp:"QRegion(@)", constructor .} #

# Public methods for QRegion
proc swap*(this: QRegion, other: QRegion) {.header:headerFile, importcpp:"#.swap(@)".} # Public
proc isEmpty*(this: QRegion): bool {.header:headerFile, importcpp:"#.isEmpty(@)".} # Public
proc isNull*(this: QRegion): bool {.header:headerFile, importcpp:"#.isNull(@)".} # Public
import nimqt/qtcore/qpoint
proc contains*(this: QRegion, p: QPoint): bool {.header:headerFile, importcpp:"#.contains(@)".} # Public
proc contains*(this: QRegion, r: QRect): bool {.header:headerFile, importcpp:"#.contains(@)".} # Public
proc translate*(this: QRegion, dx: cint, dy: cint) {.header:headerFile, importcpp:"#.translate(@)".} # Public
proc translate*(this: QRegion, p: QPoint) {.header:headerFile, importcpp:"#.translate(@)".} # Public
proc translated*(this: QRegion, dx: cint, dy: cint): QRegion {.header:headerFile, importcpp:"#.translated(@)".} # Public
proc translated*(this: QRegion, p: QPoint): QRegion {.header:headerFile, importcpp:"#.translated(@)".} # Public
proc united*(this: QRegion, r: QRegion): QRegion {.header:headerFile, importcpp:"#.united(@)".} # Public
proc united*(this: QRegion, r: QRect): QRegion {.header:headerFile, importcpp:"#.united(@)".} # Public
proc intersected*(this: QRegion, r: QRegion): QRegion {.header:headerFile, importcpp:"#.intersected(@)".} # Public
proc intersected*(this: QRegion, r: QRect): QRegion {.header:headerFile, importcpp:"#.intersected(@)".} # Public
proc subtracted*(this: QRegion, r: QRegion): QRegion {.header:headerFile, importcpp:"#.subtracted(@)".} # Public
proc xored*(this: QRegion, r: QRegion): QRegion {.header:headerFile, importcpp:"#.xored(@)".} # Public
proc intersects*(this: QRegion, r: QRegion): bool {.header:headerFile, importcpp:"#.intersects(@)".} # Public
proc intersects*(this: QRegion, r: QRect): bool {.header:headerFile, importcpp:"#.intersects(@)".} # Public
proc boundingRect*(this: QRegion): QRect {.header:headerFile, importcpp:"#.boundingRect(@)".} # Public
proc setRects*(this: QRegion, rect: ptr QRect, num: cint) {.header:headerFile, importcpp:"#.setRects(@)".} # Public
proc rectCount*(this: QRegion): cint {.header:headerFile, importcpp:"#.rectCount(@)".} # Public
proc `|`*(this: QRegion, r: QRegion): QRegion {.header:headerFile, importcpp:"#.operator|(@)".} # Public
proc `+`*(this: QRegion, r: QRegion): QRegion {.header:headerFile, importcpp:"#.operator+(@)".} # Public
proc `+`*(this: QRegion, r: QRect): QRegion {.header:headerFile, importcpp:"#.operator+(@)".} # Public
proc `&`*(this: QRegion, r: QRegion): QRegion {.header:headerFile, importcpp:"#.operator&(@)".} # Public
proc `&`*(this: QRegion, r: QRect): QRegion {.header:headerFile, importcpp:"#.operator&(@)".} # Public
proc `-`*(this: QRegion, r: QRegion): QRegion {.header:headerFile, importcpp:"#.operator-(@)".} # Public
proc `^`*(this: QRegion, r: QRegion): QRegion {.header:headerFile, importcpp:"#.operator^(@)".} # Public
proc `|=`*(this: QRegion, r: QRegion): QRegion {.header:headerFile, importcpp:"#.operator|=(@)".} # Public
proc `+=`*(this: QRegion, r: QRegion): QRegion {.header:headerFile, importcpp:"#.operator+=(@)".} # Public
proc `+=`*(this: QRegion, r: QRect): QRegion {.header:headerFile, importcpp:"#.operator+=(@)".} # Public
proc `&=`*(this: QRegion, r: QRegion): QRegion {.header:headerFile, importcpp:"#.operator&=(@)".} # Public
proc `&=`*(this: QRegion, r: QRect): QRegion {.header:headerFile, importcpp:"#.operator&=(@)".} # Public
proc `-=`*(this: QRegion, r: QRegion): QRegion {.header:headerFile, importcpp:"#.operator-=(@)".} # Public
proc `^=`*(this: QRegion, r: QRegion): QRegion {.header:headerFile, importcpp:"#.operator^=(@)".} # Public
proc `!=`*(this: QRegion, r: QRegion): bool {.header:headerFile, importcpp:"#.operator!=(@)".} # Public

export qnamespace
export qpolygon
export qpoint
export qrect
