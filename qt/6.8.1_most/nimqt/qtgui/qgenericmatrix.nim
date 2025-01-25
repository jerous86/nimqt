const headerFile* = "QtGui/qgenericmatrix.h"

type
    # Classes found in the C++ code
    QGenericMatrix*[T] {.header:headerFile,importcpp:"QGenericMatrix" ,pure,inheritable.} = object

# Stuff for class QGenericMatrix

# Public constructors for QGenericMatrix
proc newQGenericMatrix*[T](): QGenericMatrix[T] {. header:headerFile, importcpp:"QGenericMatrix(@)", constructor .} #
import nimqt/qtcore/qnamespace
proc newQGenericMatrix*[T](arg_0: Qt_Initialization): QGenericMatrix[T] {. header:headerFile, importcpp:"QGenericMatrix(@)", constructor .} #
proc newQGenericMatrix*[T](values: ptr T): QGenericMatrix[T] {. header:headerFile, importcpp:"QGenericMatrix(@)", constructor .} #

# Public methods for QGenericMatrix
proc isIdentity*[T](this: QGenericMatrix[T]): bool {.header:headerFile, importcpp:"#.isIdentity(@)".} # Public
proc setToIdentity*[T](this: QGenericMatrix[T]) {.header:headerFile, importcpp:"#.setToIdentity(@)".} # Public
proc fill*[T](this: QGenericMatrix[T], value: T) {.header:headerFile, importcpp:"#.fill(@)".} # Public
proc transposed*[T](this: QGenericMatrix[T]): QGenericMatrix[T] {.header:headerFile, importcpp:"#.transposed(@)".} # Public
proc `+=`*[T](this: QGenericMatrix[T], other: QGenericMatrix[T]): QGenericMatrix[T] {.header:headerFile, importcpp:"#.operator+=(@)".} # Public
proc `-=`*[T](this: QGenericMatrix[T], other: QGenericMatrix[T]): QGenericMatrix[T] {.header:headerFile, importcpp:"#.operator-=(@)".} # Public
proc `*=`*[T](this: QGenericMatrix[T], factor: T): QGenericMatrix[T] {.header:headerFile, importcpp:"#.operator*=(@)".} # Public
proc `/=`*[T](this: QGenericMatrix[T], divisor: T): QGenericMatrix[T] {.header:headerFile, importcpp:"#.operator/=(@)".} # Public
proc `!=`*[T](this: QGenericMatrix[T], other: QGenericMatrix[T]): bool {.header:headerFile, importcpp:"#.operator!=(@)".} # Public
proc copyDataTo*[T](this: QGenericMatrix[T], values: ptr T) {.header:headerFile, importcpp:"#.copyDataTo(@)".} # Public
proc data*[T](this: QGenericMatrix[T]): ptr T {.header:headerFile, importcpp:"#.data(@)".} # Public
proc constData*[T](this: QGenericMatrix[T]): ptr T {.header:headerFile, importcpp:"#.constData(@)".} # Public

export qnamespace
