const headerFile* = "QtGui/qcolorspace.h"

type
    # Enums found in the C++ code
    # Global
    QColorSpace_NamedColorSpace* {.header:headerFile,importcpp:"QColorSpace::NamedColorSpace", pure.} = enum SRgb = 0x1, SRgbLinear = 0x2, AdobeRgb = 0x3, DisplayP3 = 0x4, 
        ProPhotoRgb = 0x5
    QColorSpace_Primaries* {.header:headerFile,importcpp:"QColorSpace::Primaries", pure.} = enum Custom = 0, SRgb = 0x1, AdobeRgb = 0x2, DciP3D65 = 0x3, 
        ProPhotoRgb = 0x4
    QColorSpace_TransferFunction* {.header:headerFile,importcpp:"QColorSpace::TransferFunction", pure.} = enum Custom = 0, Linear = 0x1, Gamma = 0x2, SRgb = 0x3, 
        ProPhotoRgb = 0x4

type
    # Classes found in the C++ code
    QColorSpace* {.header:headerFile,importcpp:"QColorSpace" ,pure,inheritable.} = object

# Stuff for class QColorSpace

# Public constructors for QColorSpace
proc newQColorSpace*(): QColorSpace {. header:headerFile, importcpp:"QColorSpace(@)", constructor .} #
proc newQColorSpace*(namedColorSpace: QColorSpace_NamedColorSpace): QColorSpace {. header:headerFile, importcpp:"QColorSpace(@)", constructor .} #
proc newQColorSpace*(primaries: QColorSpace_Primaries, transferFunction: QColorSpace_TransferFunction, gamma: cfloat): QColorSpace {. header:headerFile, importcpp:"QColorSpace(@)", constructor .} #
proc newQColorSpace*(primaries: QColorSpace_Primaries, gamma: cfloat): QColorSpace {. header:headerFile, importcpp:"QColorSpace(@)", constructor .} #
import nimqt/qtcore/qlist
proc newQColorSpace*(primaries: QColorSpace_Primaries, transferFunctionTable: QList[cushort]): QColorSpace {. header:headerFile, importcpp:"QColorSpace(@)", constructor .} #
import nimqt/qtcore/qpoint
proc newQColorSpace*(whitePoint: QPointF, redPoint: QPointF, greenPoint: QPointF, bluePoint: QPointF, transferFunction: QColorSpace_TransferFunction, gamma: cfloat): QColorSpace {. header:headerFile, importcpp:"QColorSpace(@)", constructor .} #
proc newQColorSpace*(whitePoint: QPointF, redPoint: QPointF, greenPoint: QPointF, bluePoint: QPointF, transferFunctionTable: QList[cushort]): QColorSpace {. header:headerFile, importcpp:"QColorSpace(@)", constructor .} #
proc newQColorSpace*(whitePoint: QPointF, redPoint: QPointF, greenPoint: QPointF, bluePoint: QPointF, redTransferFunctionTable: QList[cushort], greenTransferFunctionTable: QList[cushort], blueTransferFunctionTable: QList[cushort]): QColorSpace {. header:headerFile, importcpp:"QColorSpace(@)", constructor .} #
proc newQColorSpace*(colorSpace: QColorSpace): QColorSpace {. header:headerFile, importcpp:"QColorSpace(@)", constructor .} #

# Public methods for QColorSpace
proc qt_check_for_QGADGET_macro*(this: QColorSpace) {.header:headerFile, importcpp:"#.qt_check_for_QGADGET_macro(@)".} # Public
proc swap*(this: QColorSpace, colorSpace: QColorSpace) {.header:headerFile, importcpp:"#.swap(@)".} # Public
proc primaries*(this: QColorSpace): QColorSpace_Primaries {.header:headerFile, importcpp:"#.primaries(@)".} # Public
proc transferFunction*(this: QColorSpace): QColorSpace_TransferFunction {.header:headerFile, importcpp:"#.transferFunction(@)".} # Public
proc gamma*(this: QColorSpace): cfloat {.header:headerFile, importcpp:"#.gamma(@)".} # Public
import nimqt/qtcore/qstring
proc description*(this: QColorSpace): QString {.header:headerFile, importcpp:"#.description(@)".} # Public
proc setDescription*(this: QColorSpace, description: QString) {.header:headerFile, importcpp:"#.setDescription(@)".} # Public
proc setTransferFunction*(this: QColorSpace, transferFunction: QColorSpace_TransferFunction, gamma: cfloat) {.header:headerFile, importcpp:"#.setTransferFunction(@)".} # Public
proc setTransferFunction*(this: QColorSpace, transferFunctionTable: QList[cushort]) {.header:headerFile, importcpp:"#.setTransferFunction(@)".} # Public
proc setTransferFunctions*(this: QColorSpace, redTransferFunctionTable: QList[cushort], greenTransferFunctionTable: QList[cushort], blueTransferFunctionTable: QList[cushort]) {.header:headerFile, importcpp:"#.setTransferFunctions(@)".} # Public
proc withTransferFunction*(this: QColorSpace, transferFunction: QColorSpace_TransferFunction, gamma: cfloat): QColorSpace {.header:headerFile, importcpp:"#.withTransferFunction(@)".} # Public
proc withTransferFunction*(this: QColorSpace, transferFunctionTable: QList[cushort]): QColorSpace {.header:headerFile, importcpp:"#.withTransferFunction(@)".} # Public
proc withTransferFunctions*(this: QColorSpace, redTransferFunctionTable: QList[cushort], greenTransferFunctionTable: QList[cushort], blueTransferFunctionTable: QList[cushort]): QColorSpace {.header:headerFile, importcpp:"#.withTransferFunctions(@)".} # Public
proc setPrimaries*(this: QColorSpace, primariesId: QColorSpace_Primaries) {.header:headerFile, importcpp:"#.setPrimaries(@)".} # Public
proc setPrimaries*(this: QColorSpace, whitePoint: QPointF, redPoint: QPointF, greenPoint: QPointF, bluePoint: QPointF) {.header:headerFile, importcpp:"#.setPrimaries(@)".} # Public
proc detach*(this: QColorSpace) {.header:headerFile, importcpp:"#.detach(@)".} # Public
proc isValid*(this: QColorSpace): bool {.header:headerFile, importcpp:"#.isValid(@)".} # Public
import nimqt/qtcore/qbytearray
proc static_QColorSpace_fromIccProfile*(iccProfile: QByteArray): QColorSpace {.header:headerFile, importcpp:"QColorSpace::fromIccProfile(@)".} # Public static
proc iccProfile*(this: QColorSpace): QByteArray {.header:headerFile, importcpp:"#.iccProfile(@)".} # Public
import nimqt/qtgui/qcolortransform
proc transformationToColorSpace*(this: QColorSpace, colorspace: QColorSpace): QColorTransform {.header:headerFile, importcpp:"#.transformationToColorSpace(@)".} # Public

export qcolortransform
export qstring
export qbytearray
export qlist
export qpoint
