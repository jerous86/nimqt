const headerFile* = "QtCore/qmargins.h"

type
    # Classes found in the C++ code
    QMargins* {.header:headerFile,importcpp:"QMargins" ,pure,inheritable.} = object
    QMarginsF* {.header:headerFile,importcpp:"QMarginsF" ,pure,inheritable.} = object

# Stuff for class QMargins

# Public constructors for QMargins
proc newQMargins*(): QMargins {. header:headerFile, importcpp:"QMargins(@)", constructor .} #
proc newQMargins*(left: cint, top: cint, right: cint, bottom: cint): QMargins {. header:headerFile, importcpp:"QMargins(@)", constructor .} #

# Public methods for QMargins
proc isNull*(this: QMargins): bool {.header:headerFile, importcpp:"#.isNull(@)".} # Public
proc left*(this: QMargins): cint {.header:headerFile, importcpp:"#.left(@)".} # Public
proc top*(this: QMargins): cint {.header:headerFile, importcpp:"#.top(@)".} # Public
proc right*(this: QMargins): cint {.header:headerFile, importcpp:"#.right(@)".} # Public
proc bottom*(this: QMargins): cint {.header:headerFile, importcpp:"#.bottom(@)".} # Public
proc setLeft*(this: QMargins, left: cint) {.header:headerFile, importcpp:"#.setLeft(@)".} # Public
proc setTop*(this: QMargins, top: cint) {.header:headerFile, importcpp:"#.setTop(@)".} # Public
proc setRight*(this: QMargins, right: cint) {.header:headerFile, importcpp:"#.setRight(@)".} # Public
proc setBottom*(this: QMargins, bottom: cint) {.header:headerFile, importcpp:"#.setBottom(@)".} # Public
proc `+=`*(this: QMargins, margins: QMargins): QMargins {.header:headerFile, importcpp:"#.operator+=(@)".} # Public
proc `-=`*(this: QMargins, margins: QMargins): QMargins {.header:headerFile, importcpp:"#.operator-=(@)".} # Public
proc `+=`*(this: QMargins, arg_1: cint): QMargins {.header:headerFile, importcpp:"#.operator+=(@)".} # Public
proc `-=`*(this: QMargins, arg_1: cint): QMargins {.header:headerFile, importcpp:"#.operator-=(@)".} # Public
proc `*=`*(this: QMargins, arg_1: cint): QMargins {.header:headerFile, importcpp:"#.operator*=(@)".} # Public
proc `/=`*(this: QMargins, arg_1: cint): QMargins {.header:headerFile, importcpp:"#.operator/=(@)".} # Public
proc `*=`*(this: QMargins, arg_1: cfloat): QMargins {.header:headerFile, importcpp:"#.operator*=(@)".} # Public
proc `/=`*(this: QMargins, arg_1: cfloat): QMargins {.header:headerFile, importcpp:"#.operator/=(@)".} # Public
proc toMarginsF*(this: QMargins): QMarginsF {.header:headerFile, importcpp:"#.toMarginsF(@)".} # Public
# Stuff for class QMarginsF

# Public constructors for QMarginsF
proc newQMarginsF*(): QMarginsF {. header:headerFile, importcpp:"QMarginsF(@)", constructor .} #
proc newQMarginsF*(left: cfloat, top: cfloat, right: cfloat, bottom: cfloat): QMarginsF {. header:headerFile, importcpp:"QMarginsF(@)", constructor .} #
proc newQMarginsF*(margins: QMargins): QMarginsF {. header:headerFile, importcpp:"QMarginsF(@)", constructor .} #

# Public methods for QMarginsF
proc isNull*(this: QMarginsF): bool {.header:headerFile, importcpp:"#.isNull(@)".} # Public
proc left*(this: QMarginsF): cfloat {.header:headerFile, importcpp:"#.left(@)".} # Public
proc top*(this: QMarginsF): cfloat {.header:headerFile, importcpp:"#.top(@)".} # Public
proc right*(this: QMarginsF): cfloat {.header:headerFile, importcpp:"#.right(@)".} # Public
proc bottom*(this: QMarginsF): cfloat {.header:headerFile, importcpp:"#.bottom(@)".} # Public
proc setLeft*(this: QMarginsF, aleft: cfloat) {.header:headerFile, importcpp:"#.setLeft(@)".} # Public
proc setTop*(this: QMarginsF, atop: cfloat) {.header:headerFile, importcpp:"#.setTop(@)".} # Public
proc setRight*(this: QMarginsF, aright: cfloat) {.header:headerFile, importcpp:"#.setRight(@)".} # Public
proc setBottom*(this: QMarginsF, abottom: cfloat) {.header:headerFile, importcpp:"#.setBottom(@)".} # Public
proc `+=`*(this: QMarginsF, margins: QMarginsF): QMarginsF {.header:headerFile, importcpp:"#.operator+=(@)".} # Public
proc `-=`*(this: QMarginsF, margins: QMarginsF): QMarginsF {.header:headerFile, importcpp:"#.operator-=(@)".} # Public
proc `+=`*(this: QMarginsF, addend: cfloat): QMarginsF {.header:headerFile, importcpp:"#.operator+=(@)".} # Public
proc `-=`*(this: QMarginsF, subtrahend: cfloat): QMarginsF {.header:headerFile, importcpp:"#.operator-=(@)".} # Public
proc `*=`*(this: QMarginsF, factor: cfloat): QMarginsF {.header:headerFile, importcpp:"#.operator*=(@)".} # Public
proc `/=`*(this: QMarginsF, divisor: cfloat): QMarginsF {.header:headerFile, importcpp:"#.operator/=(@)".} # Public
proc toMargins*(this: QMarginsF): QMargins {.header:headerFile, importcpp:"#.toMargins(@)".} # Public

