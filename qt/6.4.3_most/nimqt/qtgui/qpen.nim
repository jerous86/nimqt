const headerFile* = "QtGui/qpen.h"

type
    # Classes found in the C++ code
    QPen* {.header:headerFile,importcpp:"QPen" ,pure,inheritable.} = object

# Stuff for class QPen

# Public constructors for QPen
proc newQPen*(): QPen {. header:headerFile, importcpp:"QPen(@)", constructor .} #
import nimqt/qtcore/qnamespace
proc newQPen*(arg_0: Qt_PenStyle): QPen {. header:headerFile, importcpp:"QPen(@)", constructor .} #
import nimqt/qtgui/qcolor
proc newQPen*(color: QColor): QPen {. header:headerFile, importcpp:"QPen(@)", constructor .} #
import nimqt/qtgui/qbrush
proc newQPen*(brush: QBrush, width: cfloat, s: Qt_PenStyle, c: Qt_PenCapStyle, j: Qt_PenJoinStyle): QPen {. header:headerFile, importcpp:"QPen(@)", constructor .} #
proc newQPen*(pen: QPen): QPen {. header:headerFile, importcpp:"QPen(@)", constructor .} #
proc newQPen*(other: QPen): QPen {. header:headerFile, importcpp:"QPen(@)", constructor .} #

# Public methods for QPen
proc swap*(this: QPen, other: QPen) {.header:headerFile, importcpp:"#.swap(@)".} # Public
proc style*(this: QPen): Qt_PenStyle {.header:headerFile, importcpp:"#.style(@)".} # Public
proc setStyle*(this: QPen, arg_0: Qt_PenStyle) {.header:headerFile, importcpp:"#.setStyle(@)".} # Public
import nimqt/qtcore/qlist
proc dashPattern*(this: QPen): QList[cfloat] {.header:headerFile, importcpp:"#.dashPattern(@)".} # Public
proc setDashPattern*(this: QPen, pattern: QList[cfloat]) {.header:headerFile, importcpp:"#.setDashPattern(@)".} # Public
proc dashOffset*(this: QPen): cfloat {.header:headerFile, importcpp:"#.dashOffset(@)".} # Public
proc setDashOffset*(this: QPen, doffset: cfloat) {.header:headerFile, importcpp:"#.setDashOffset(@)".} # Public
proc miterLimit*(this: QPen): cfloat {.header:headerFile, importcpp:"#.miterLimit(@)".} # Public
proc setMiterLimit*(this: QPen, limit: cfloat) {.header:headerFile, importcpp:"#.setMiterLimit(@)".} # Public
proc widthF*(this: QPen): cfloat {.header:headerFile, importcpp:"#.widthF(@)".} # Public
proc setWidthF*(this: QPen, width: cfloat) {.header:headerFile, importcpp:"#.setWidthF(@)".} # Public
proc width*(this: QPen): cint {.header:headerFile, importcpp:"#.width(@)".} # Public
proc setWidth*(this: QPen, width: cint) {.header:headerFile, importcpp:"#.setWidth(@)".} # Public
proc color*(this: QPen): QColor {.header:headerFile, importcpp:"#.color(@)".} # Public
proc setColor*(this: QPen, color: QColor) {.header:headerFile, importcpp:"#.setColor(@)".} # Public
proc brush*(this: QPen): QBrush {.header:headerFile, importcpp:"#.brush(@)".} # Public
proc setBrush*(this: QPen, brush: QBrush) {.header:headerFile, importcpp:"#.setBrush(@)".} # Public
proc isSolid*(this: QPen): bool {.header:headerFile, importcpp:"#.isSolid(@)".} # Public
proc capStyle*(this: QPen): Qt_PenCapStyle {.header:headerFile, importcpp:"#.capStyle(@)".} # Public
proc setCapStyle*(this: QPen, pcs: Qt_PenCapStyle) {.header:headerFile, importcpp:"#.setCapStyle(@)".} # Public
proc joinStyle*(this: QPen): Qt_PenJoinStyle {.header:headerFile, importcpp:"#.joinStyle(@)".} # Public
proc setJoinStyle*(this: QPen, pcs: Qt_PenJoinStyle) {.header:headerFile, importcpp:"#.setJoinStyle(@)".} # Public
proc isCosmetic*(this: QPen): bool {.header:headerFile, importcpp:"#.isCosmetic(@)".} # Public
proc setCosmetic*(this: QPen, cosmetic: bool) {.header:headerFile, importcpp:"#.setCosmetic(@)".} # Public
proc `!=`*(this: QPen, p: QPen): bool {.header:headerFile, importcpp:"#.operator!=(@)".} # Public
proc isDetached*(this: QPen): bool {.header:headerFile, importcpp:"#.isDetached(@)".} # Public

export qnamespace
export qlist
export qbrush
export qcolor
