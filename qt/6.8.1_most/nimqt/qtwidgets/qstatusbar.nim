const headerFile* = "QtWidgets/qstatusbar.h"

import nimqt/qtwidgets/qwidget
type
    # Classes found in the C++ code
    QStatusBar* {.header:headerFile,importcpp:"QStatusBar" ,pure.} = object of QWidget
import nimqt/qtgui/qpaintdevice


type
    # typedefs found in the C++ code
    QStatusBar_RenderFlag * = QWidget_RenderFlag
    QStatusBar_RenderFlags * = QWidget_RenderFlags
    QStatusBar_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric

# Stuff for class QStatusBar

# Public constructors for QStatusBar
# 1 default parameters!
proc newQStatusBar*(parent: ptr QWidget): ptr QStatusBar {. header:headerFile, importcpp:"new QStatusBar(@)" .} #
proc newQStatusBar*(): ptr QStatusBar {. header:headerFile, importcpp:"new QStatusBar(@)" .} #

# Public methods for QStatusBar
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QStatusBar_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QStatusBar::tr(@)".} # Public static
proc static_QStatusBar_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QStatusBar::tr(@)".} # Public static
# 1 default parameters!
proc addWidget*(this: ptr QStatusBar, widget: ptr QWidget, stretch: cint) {.header:headerFile, importcpp:"#.addWidget(@)".} # Public
proc addWidget*(this: ptr QStatusBar, widget: ptr QWidget) {.header:headerFile, importcpp:"#.addWidget(@)".} # Public
# 1 default parameters!
proc insertWidget*(this: ptr QStatusBar, index: cint, widget: ptr QWidget, stretch: cint): cint {.header:headerFile, importcpp:"#.insertWidget(@)".} # Public
proc insertWidget*(this: ptr QStatusBar, index: cint, widget: ptr QWidget): cint {.header:headerFile, importcpp:"#.insertWidget(@)".} # Public
# 1 default parameters!
proc addPermanentWidget*(this: ptr QStatusBar, widget: ptr QWidget, stretch: cint) {.header:headerFile, importcpp:"#.addPermanentWidget(@)".} # Public
proc addPermanentWidget*(this: ptr QStatusBar, widget: ptr QWidget) {.header:headerFile, importcpp:"#.addPermanentWidget(@)".} # Public
# 1 default parameters!
proc insertPermanentWidget*(this: ptr QStatusBar, index: cint, widget: ptr QWidget, stretch: cint): cint {.header:headerFile, importcpp:"#.insertPermanentWidget(@)".} # Public
proc insertPermanentWidget*(this: ptr QStatusBar, index: cint, widget: ptr QWidget): cint {.header:headerFile, importcpp:"#.insertPermanentWidget(@)".} # Public
proc removeWidget*(this: ptr QStatusBar, widget: ptr QWidget) {.header:headerFile, importcpp:"#.removeWidget(@)".} # Public
proc setSizeGripEnabled*(this: ptr QStatusBar, arg_0: bool) {.header:headerFile, importcpp:"#.setSizeGripEnabled(@)".} # Public
proc isSizeGripEnabled*(this: ptr QStatusBar): bool {.header:headerFile, importcpp:"#.isSizeGripEnabled(@)".} # Public
proc currentMessage*(this: ptr QStatusBar): QString {.header:headerFile, importcpp:"#.currentMessage(@)".} # Public
# 1 default parameters!
proc showMessage*(this: ptr QStatusBar, text: QString, timeout: cint) {.header:headerFile, importcpp:"#.showMessage(@)".} # Public
proc showMessage*(this: ptr QStatusBar, text: QString) {.header:headerFile, importcpp:"#.showMessage(@)".} # Public
proc clearMessage*(this: ptr QStatusBar) {.header:headerFile, importcpp:"#.clearMessage(@)".} # Public
proc messageChanged*(this: ptr QStatusBar, text: QString) {.header:headerFile, importcpp:"#.messageChanged(@)".} # Public

# Protected methods methods for QStatusBar
import nimqt/qtgui/qevent
proc showEvent*(this: ptr QStatusBar, arg_0: ptr QShowEvent) {.header:headerFile, importcpp:"#.showEvent(@)".} # Protected
proc paintEvent*(this: ptr QStatusBar, arg_0: ptr QPaintEvent) {.header:headerFile, importcpp:"#.paintEvent(@)".} # Protected
proc resizeEvent*(this: ptr QStatusBar, arg_0: ptr QResizeEvent) {.header:headerFile, importcpp:"#.resizeEvent(@)".} # Protected
proc reformat*(this: ptr QStatusBar) {.header:headerFile, importcpp:"#.reformat(@)".} # Protected
proc hideOrShow*(this: ptr QStatusBar) {.header:headerFile, importcpp:"#.hideOrShow(@)".} # Protected
import nimqt/qtcore/qcoreevent
proc event*(this: ptr QStatusBar, arg_0: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Protected

export qevent
export qstring
export qwidget
export qpaintdevice
export qcoreevent
