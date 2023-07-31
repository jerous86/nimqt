const headerFile* = "QtWidgets/qcommonstyle.h"

import nimqt/qtwidgets/qstyle
type
    # Classes found in the C++ code
    QCommonStyle* {.header:headerFile,importcpp:"QCommonStyle" ,pure.} = object of QStyle


type
    # typedefs found in the C++ code
    QCommonStyle_StateFlag * = QStyle_StateFlag
    QCommonStyle_PrimitiveElement * = QStyle_PrimitiveElement
    QCommonStyle_ControlElement * = QStyle_ControlElement
    QCommonStyle_SubElement * = QStyle_SubElement
    QCommonStyle_ComplexControl * = QStyle_ComplexControl
    QCommonStyle_SubControl * = QStyle_SubControl
    QCommonStyle_PixelMetric * = QStyle_PixelMetric
    QCommonStyle_ContentsType * = QStyle_ContentsType
    QCommonStyle_RequestSoftwareInputPanel * = QStyle_RequestSoftwareInputPanel
    QCommonStyle_StyleHint * = QStyle_StyleHint
    QCommonStyle_StandardPixmap * = QStyle_StandardPixmap
    QCommonStyle_State * = QStyle_State
    QCommonStyle_SubControls * = QStyle_SubControls

# Stuff for class QCommonStyle

# Public constructors for QCommonStyle
proc newQCommonStyle*(): ptr QCommonStyle {. header:headerFile, importcpp:"new QCommonStyle(@)" .} #

# Public methods for QCommonStyle
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QCommonStyle_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QCommonStyle::tr(@)".} # Public static
proc static_QCommonStyle_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QCommonStyle::tr(@)".} # Public static
import nimqt/qtgui/qpalette
proc polish*(this: ptr QCommonStyle, arg_0: QPalette) {.header:headerFile, importcpp:"#.polish(@)".} # Public
import nimqt/qtwidgets/qapplication
proc polish*(this: ptr QCommonStyle, app: ptr QApplication) {.header:headerFile, importcpp:"#.polish(@)".} # Public
import nimqt/qtwidgets/qwidget
proc polish*(this: ptr QCommonStyle, widget: ptr QWidget) {.header:headerFile, importcpp:"#.polish(@)".} # Public
proc unpolish*(this: ptr QCommonStyle, widget: ptr QWidget) {.header:headerFile, importcpp:"#.unpolish(@)".} # Public
proc unpolish*(this: ptr QCommonStyle, application: ptr QApplication) {.header:headerFile, importcpp:"#.unpolish(@)".} # Public

export qstring
export qstyle
export qwidget
export qpalette
export qapplication
