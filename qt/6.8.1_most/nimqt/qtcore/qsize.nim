const headerFile* = "QtCore/qsize.h"

type
    # Classes found in the C++ code
    QSize* {.header:headerFile,importcpp:"QSize" ,pure,inheritable.} = object
    QSizeF* {.header:headerFile,importcpp:"QSizeF" ,pure,inheritable.} = object

# Stuff for class QSize

# Public constructors for QSize
proc newQSize*(): QSize {. header:headerFile, importcpp:"QSize(@)", constructor .} #
proc newQSize*(w: cint, h: cint): QSize {. header:headerFile, importcpp:"QSize(@)", constructor .} #

# Public methods for QSize
proc isNull*(this: QSize): bool {.header:headerFile, importcpp:"#.isNull(@)".} # Public
proc isEmpty*(this: QSize): bool {.header:headerFile, importcpp:"#.isEmpty(@)".} # Public
proc isValid*(this: QSize): bool {.header:headerFile, importcpp:"#.isValid(@)".} # Public
proc width*(this: QSize): cint {.header:headerFile, importcpp:"#.width(@)".} # Public
proc height*(this: QSize): cint {.header:headerFile, importcpp:"#.height(@)".} # Public
proc setWidth*(this: QSize, w: cint) {.header:headerFile, importcpp:"#.setWidth(@)".} # Public
proc setHeight*(this: QSize, h: cint) {.header:headerFile, importcpp:"#.setHeight(@)".} # Public
proc transpose*(this: QSize) {.header:headerFile, importcpp:"#.transpose(@)".} # Public
proc transposed*(this: QSize): QSize {.header:headerFile, importcpp:"#.transposed(@)".} # Public
import nimqt/qtcore/qnamespace
proc scale*(this: QSize, w: cint, h: cint, mode: Qt_AspectRatioMode) {.header:headerFile, importcpp:"#.scale(@)".} # Public
proc scale*(this: QSize, s: QSize, mode: Qt_AspectRatioMode) {.header:headerFile, importcpp:"#.scale(@)".} # Public
proc scaled*(this: QSize, w: cint, h: cint, mode: Qt_AspectRatioMode): QSize {.header:headerFile, importcpp:"#.scaled(@)".} # Public
proc scaled*(this: QSize, s: QSize, mode: Qt_AspectRatioMode): QSize {.header:headerFile, importcpp:"#.scaled(@)".} # Public
proc expandedTo*(this: QSize, arg_1: QSize): QSize {.header:headerFile, importcpp:"#.expandedTo(@)".} # Public
proc boundedTo*(this: QSize, arg_1: QSize): QSize {.header:headerFile, importcpp:"#.boundedTo(@)".} # Public
import nimqt/qtcore/qmargins
proc grownBy*(this: QSize, m: QMargins): QSize {.header:headerFile, importcpp:"#.grownBy(@)".} # Public
proc shrunkBy*(this: QSize, m: QMargins): QSize {.header:headerFile, importcpp:"#.shrunkBy(@)".} # Public
proc rwidth*(this: QSize): cint {.header:headerFile, importcpp:"#.rwidth(@)".} # Public
proc rheight*(this: QSize): cint {.header:headerFile, importcpp:"#.rheight(@)".} # Public
proc `+=`*(this: QSize, arg_1: QSize): QSize {.header:headerFile, importcpp:"#.operator+=(@)".} # Public
proc `-=`*(this: QSize, arg_1: QSize): QSize {.header:headerFile, importcpp:"#.operator-=(@)".} # Public
proc `*=`*(this: QSize, c: cfloat): QSize {.header:headerFile, importcpp:"#.operator*=(@)".} # Public
proc `/=`*(this: QSize, c: cfloat): QSize {.header:headerFile, importcpp:"#.operator/=(@)".} # Public
proc toSizeF*(this: QSize): QSizeF {.header:headerFile, importcpp:"#.toSizeF(@)".} # Public
# Stuff for class QSizeF

# Public constructors for QSizeF
proc newQSizeF*(): QSizeF {. header:headerFile, importcpp:"QSizeF(@)", constructor .} #
proc newQSizeF*(sz: QSize): QSizeF {. header:headerFile, importcpp:"QSizeF(@)", constructor .} #
proc newQSizeF*(w: cfloat, h: cfloat): QSizeF {. header:headerFile, importcpp:"QSizeF(@)", constructor .} #

# Public methods for QSizeF
proc isNull*(this: QSizeF): bool {.header:headerFile, importcpp:"#.isNull(@)".} # Public
proc isEmpty*(this: QSizeF): bool {.header:headerFile, importcpp:"#.isEmpty(@)".} # Public
proc isValid*(this: QSizeF): bool {.header:headerFile, importcpp:"#.isValid(@)".} # Public
proc width*(this: QSizeF): cfloat {.header:headerFile, importcpp:"#.width(@)".} # Public
proc height*(this: QSizeF): cfloat {.header:headerFile, importcpp:"#.height(@)".} # Public
proc setWidth*(this: QSizeF, w: cfloat) {.header:headerFile, importcpp:"#.setWidth(@)".} # Public
proc setHeight*(this: QSizeF, h: cfloat) {.header:headerFile, importcpp:"#.setHeight(@)".} # Public
proc transpose*(this: QSizeF) {.header:headerFile, importcpp:"#.transpose(@)".} # Public
proc transposed*(this: QSizeF): QSizeF {.header:headerFile, importcpp:"#.transposed(@)".} # Public
proc scale*(this: QSizeF, w: cfloat, h: cfloat, mode: Qt_AspectRatioMode) {.header:headerFile, importcpp:"#.scale(@)".} # Public
proc scale*(this: QSizeF, s: QSizeF, mode: Qt_AspectRatioMode) {.header:headerFile, importcpp:"#.scale(@)".} # Public
proc scaled*(this: QSizeF, w: cfloat, h: cfloat, mode: Qt_AspectRatioMode): QSizeF {.header:headerFile, importcpp:"#.scaled(@)".} # Public
proc scaled*(this: QSizeF, s: QSizeF, mode: Qt_AspectRatioMode): QSizeF {.header:headerFile, importcpp:"#.scaled(@)".} # Public
proc expandedTo*(this: QSizeF, arg_1: QSizeF): QSizeF {.header:headerFile, importcpp:"#.expandedTo(@)".} # Public
proc boundedTo*(this: QSizeF, arg_1: QSizeF): QSizeF {.header:headerFile, importcpp:"#.boundedTo(@)".} # Public
proc grownBy*(this: QSizeF, m: QMarginsF): QSizeF {.header:headerFile, importcpp:"#.grownBy(@)".} # Public
proc shrunkBy*(this: QSizeF, m: QMarginsF): QSizeF {.header:headerFile, importcpp:"#.shrunkBy(@)".} # Public
proc rwidth*(this: QSizeF): cfloat {.header:headerFile, importcpp:"#.rwidth(@)".} # Public
proc rheight*(this: QSizeF): cfloat {.header:headerFile, importcpp:"#.rheight(@)".} # Public
proc `+=`*(this: QSizeF, arg_1: QSizeF): QSizeF {.header:headerFile, importcpp:"#.operator+=(@)".} # Public
proc `-=`*(this: QSizeF, arg_1: QSizeF): QSizeF {.header:headerFile, importcpp:"#.operator-=(@)".} # Public
proc `*=`*(this: QSizeF, c: cfloat): QSizeF {.header:headerFile, importcpp:"#.operator*=(@)".} # Public
proc `/=`*(this: QSizeF, c: cfloat): QSizeF {.header:headerFile, importcpp:"#.operator/=(@)".} # Public
proc toSize*(this: QSizeF): QSize {.header:headerFile, importcpp:"#.toSize(@)".} # Public

export qnamespace
export qmargins
