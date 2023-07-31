const headerFile* = "QtWidgets/qscrollarea.h"

import nimqt/qtwidgets/qabstractscrollarea
type
    # Classes found in the C++ code
    QScrollArea* {.header:headerFile,importcpp:"QScrollArea" ,pure.} = object of QAbstractScrollArea
import nimqt/qtwidgets/qframe
import nimqt/qtwidgets/qwidget
import nimqt/qtgui/qpaintdevice


type
    # typedefs found in the C++ code
    QScrollArea_SizeAdjustPolicy * = QAbstractScrollArea_SizeAdjustPolicy
    QScrollArea_Shape * = QFrame_Shape
    QScrollArea_Shadow * = QFrame_Shadow
    QScrollArea_StyleMask * = QFrame_StyleMask
    QScrollArea_RenderFlag * = QWidget_RenderFlag
    QScrollArea_RenderFlags * = QWidget_RenderFlags
    QScrollArea_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric

# Stuff for class QScrollArea

# Public constructors for QScrollArea
# 1 default parameters!
proc newQScrollArea*(parent: ptr QWidget): ptr QScrollArea {. header:headerFile, importcpp:"new QScrollArea(@)" .} #
proc newQScrollArea*(): ptr QScrollArea {. header:headerFile, importcpp:"new QScrollArea(@)" .} #

# Public methods for QScrollArea
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QScrollArea_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QScrollArea::tr(@)".} # Public static
proc static_QScrollArea_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QScrollArea::tr(@)".} # Public static
proc widget*(this: ptr QScrollArea): ptr QWidget {.header:headerFile, importcpp:"#.widget(@)".} # Public
proc setWidget*(this: ptr QScrollArea, widget: ptr QWidget) {.header:headerFile, importcpp:"#.setWidget(@)".} # Public
proc takeWidget*(this: ptr QScrollArea): ptr QWidget {.header:headerFile, importcpp:"#.takeWidget(@)".} # Public
proc widgetResizable*(this: ptr QScrollArea): bool {.header:headerFile, importcpp:"#.widgetResizable(@)".} # Public
proc setWidgetResizable*(this: ptr QScrollArea, resizable: bool) {.header:headerFile, importcpp:"#.setWidgetResizable(@)".} # Public
import nimqt/qtcore/qsize
proc sizeHint*(this: ptr QScrollArea): QSize {.header:headerFile, importcpp:"#.sizeHint(@)".} # Public
proc focusNextPrevChild*(this: ptr QScrollArea, next: bool): bool {.header:headerFile, importcpp:"#.focusNextPrevChild(@)".} # Public
import nimqt/qtcore/qnamespace
proc alignment*(this: ptr QScrollArea): Qt_Alignment {.header:headerFile, importcpp:"#.alignment(@)".} # Public
proc setAlignment*(this: ptr QScrollArea, arg_0: Qt_Alignment) {.header:headerFile, importcpp:"#.setAlignment(@)".} # Public
# 2 default parameters!
proc ensureVisible*(this: ptr QScrollArea, x: cint, y: cint, xmargin: cint, ymargin: cint) {.header:headerFile, importcpp:"#.ensureVisible(@)".} # Public
proc ensureVisible*(this: ptr QScrollArea, x: cint, y: cint, xmargin: cint) {.header:headerFile, importcpp:"#.ensureVisible(@)".} # Public
proc ensureVisible*(this: ptr QScrollArea, x: cint, y: cint) {.header:headerFile, importcpp:"#.ensureVisible(@)".} # Public
# 2 default parameters!
proc ensureWidgetVisible*(this: ptr QScrollArea, childWidget: ptr QWidget, xmargin: cint, ymargin: cint) {.header:headerFile, importcpp:"#.ensureWidgetVisible(@)".} # Public
proc ensureWidgetVisible*(this: ptr QScrollArea, childWidget: ptr QWidget, xmargin: cint) {.header:headerFile, importcpp:"#.ensureWidgetVisible(@)".} # Public
proc ensureWidgetVisible*(this: ptr QScrollArea, childWidget: ptr QWidget) {.header:headerFile, importcpp:"#.ensureWidgetVisible(@)".} # Public

# Protected methods methods for QScrollArea
import nimqt/qtcore/qcoreevent
proc event*(this: ptr QScrollArea, arg_0: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Protected
import nimqt/qtcore/qobject
proc eventFilter*(this: ptr QScrollArea, arg_0: ptr QObject, arg_1: ptr QEvent): bool {.header:headerFile, importcpp:"#.eventFilter(@)".} # Protected
import nimqt/qtgui/qevent
proc resizeEvent*(this: ptr QScrollArea, arg_0: ptr QResizeEvent) {.header:headerFile, importcpp:"#.resizeEvent(@)".} # Protected
proc scrollContentsBy*(this: ptr QScrollArea, dx: cint, dy: cint) {.header:headerFile, importcpp:"#.scrollContentsBy(@)".} # Protected
proc viewportSizeHint*(this: ptr QScrollArea): QSize {.header:headerFile, importcpp:"#.viewportSizeHint(@)".} # Protected

export qevent
export qstring
export qsize
export qabstractscrollarea
export qnamespace
export qwidget
export qpaintdevice
export qobject
export qcoreevent
export qframe
