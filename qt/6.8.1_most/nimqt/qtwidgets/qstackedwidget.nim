const headerFile* = "QtWidgets/qstackedwidget.h"

import nimqt/qtwidgets/qframe
type
    # Classes found in the C++ code
    QStackedWidget* {.header:headerFile,importcpp:"QStackedWidget" ,pure.} = object of QFrame
import nimqt/qtwidgets/qwidget
import nimqt/qtgui/qpaintdevice


type
    # typedefs found in the C++ code
    QStackedWidget_Shape * = QFrame_Shape
    QStackedWidget_Shadow * = QFrame_Shadow
    QStackedWidget_StyleMask * = QFrame_StyleMask
    QStackedWidget_RenderFlag * = QWidget_RenderFlag
    QStackedWidget_RenderFlags * = QWidget_RenderFlags
    QStackedWidget_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric

# Stuff for class QStackedWidget

# Public constructors for QStackedWidget
# 1 default parameters!
proc newQStackedWidget*(parent: ptr QWidget): ptr QStackedWidget {. header:headerFile, importcpp:"new QStackedWidget(@)" .} #
proc newQStackedWidget*(): ptr QStackedWidget {. header:headerFile, importcpp:"new QStackedWidget(@)" .} #

# Public methods for QStackedWidget
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QStackedWidget_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QStackedWidget::tr(@)".} # Public static
proc static_QStackedWidget_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QStackedWidget::tr(@)".} # Public static
proc addWidget*(this: ptr QStackedWidget, w: ptr QWidget): cint {.header:headerFile, importcpp:"#.addWidget(@)".} # Public
proc insertWidget*(this: ptr QStackedWidget, index: cint, w: ptr QWidget): cint {.header:headerFile, importcpp:"#.insertWidget(@)".} # Public
proc removeWidget*(this: ptr QStackedWidget, w: ptr QWidget) {.header:headerFile, importcpp:"#.removeWidget(@)".} # Public
proc currentWidget*(this: ptr QStackedWidget): ptr QWidget {.header:headerFile, importcpp:"#.currentWidget(@)".} # Public
proc currentIndex*(this: ptr QStackedWidget): cint {.header:headerFile, importcpp:"#.currentIndex(@)".} # Public
proc indexOf*(this: ptr QStackedWidget, arg_0: ptr QWidget): cint {.header:headerFile, importcpp:"#.indexOf(@)".} # Public
proc widget*(this: ptr QStackedWidget, arg_1: cint): ptr QWidget {.header:headerFile, importcpp:"#.widget(@)".} # Public
proc count*(this: ptr QStackedWidget): cint {.header:headerFile, importcpp:"#.count(@)".} # Public
proc setCurrentIndex*(this: ptr QStackedWidget, index: cint) {.header:headerFile, importcpp:"#.setCurrentIndex(@)".} # Public
proc setCurrentWidget*(this: ptr QStackedWidget, w: ptr QWidget) {.header:headerFile, importcpp:"#.setCurrentWidget(@)".} # Public
proc currentChanged*(this: ptr QStackedWidget, arg_0: cint) {.header:headerFile, importcpp:"#.currentChanged(@)".} # Public
proc widgetRemoved*(this: ptr QStackedWidget, index: cint) {.header:headerFile, importcpp:"#.widgetRemoved(@)".} # Public

# Protected methods methods for QStackedWidget
import nimqt/qtcore/qcoreevent
proc event*(this: ptr QStackedWidget, e: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Protected

export qstring
export qwidget
export qpaintdevice
export qcoreevent
export qframe
