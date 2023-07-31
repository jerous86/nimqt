const headerFile* = "QtWidgets/qtoolbox.h"

import nimqt/qtwidgets/qframe
type
    # Classes found in the C++ code
    QToolBox* {.header:headerFile,importcpp:"QToolBox" ,pure.} = object of QFrame
import nimqt/qtwidgets/qwidget
import nimqt/qtgui/qpaintdevice


type
    # typedefs found in the C++ code
    QToolBox_Shape * = QFrame_Shape
    QToolBox_Shadow * = QFrame_Shadow
    QToolBox_StyleMask * = QFrame_StyleMask
    QToolBox_RenderFlag * = QWidget_RenderFlag
    QToolBox_RenderFlags * = QWidget_RenderFlags
    QToolBox_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric

# Stuff for class QToolBox

# Public constructors for QToolBox
import nimqt/qtcore/qnamespace
# 2 default parameters!
proc newQToolBox*(parent: ptr QWidget, f: Qt_WindowFlags): ptr QToolBox {. header:headerFile, importcpp:"new QToolBox(@)" .} #
proc newQToolBox*(parent: ptr QWidget): ptr QToolBox {. header:headerFile, importcpp:"new QToolBox(@)" .} #
proc newQToolBox*(): ptr QToolBox {. header:headerFile, importcpp:"new QToolBox(@)" .} #

# Public methods for QToolBox
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QToolBox_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QToolBox::tr(@)".} # Public static
proc static_QToolBox_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QToolBox::tr(@)".} # Public static
proc addItem*(this: ptr QToolBox, widget: ptr QWidget, text: QString): cint {.header:headerFile, importcpp:"#.addItem(@)".} # Public
import nimqt/qtgui/qicon
proc addItem*(this: ptr QToolBox, widget: ptr QWidget, icon: QIcon, text: QString): cint {.header:headerFile, importcpp:"#.addItem(@)".} # Public
proc insertItem*(this: ptr QToolBox, index: cint, widget: ptr QWidget, text: QString): cint {.header:headerFile, importcpp:"#.insertItem(@)".} # Public
proc insertItem*(this: ptr QToolBox, index: cint, widget: ptr QWidget, icon: QIcon, text: QString): cint {.header:headerFile, importcpp:"#.insertItem(@)".} # Public
proc removeItem*(this: ptr QToolBox, index: cint) {.header:headerFile, importcpp:"#.removeItem(@)".} # Public
proc setItemEnabled*(this: ptr QToolBox, index: cint, enabled: bool) {.header:headerFile, importcpp:"#.setItemEnabled(@)".} # Public
proc isItemEnabled*(this: ptr QToolBox, index: cint): bool {.header:headerFile, importcpp:"#.isItemEnabled(@)".} # Public
proc setItemText*(this: ptr QToolBox, index: cint, text: QString) {.header:headerFile, importcpp:"#.setItemText(@)".} # Public
proc itemText*(this: ptr QToolBox, index: cint): QString {.header:headerFile, importcpp:"#.itemText(@)".} # Public
proc setItemIcon*(this: ptr QToolBox, index: cint, icon: QIcon) {.header:headerFile, importcpp:"#.setItemIcon(@)".} # Public
proc itemIcon*(this: ptr QToolBox, index: cint): QIcon {.header:headerFile, importcpp:"#.itemIcon(@)".} # Public
proc setItemToolTip*(this: ptr QToolBox, index: cint, toolTip: QString) {.header:headerFile, importcpp:"#.setItemToolTip(@)".} # Public
proc itemToolTip*(this: ptr QToolBox, index: cint): QString {.header:headerFile, importcpp:"#.itemToolTip(@)".} # Public
proc currentIndex*(this: ptr QToolBox): cint {.header:headerFile, importcpp:"#.currentIndex(@)".} # Public
proc currentWidget*(this: ptr QToolBox): ptr QWidget {.header:headerFile, importcpp:"#.currentWidget(@)".} # Public
proc widget*(this: ptr QToolBox, index: cint): ptr QWidget {.header:headerFile, importcpp:"#.widget(@)".} # Public
proc indexOf*(this: ptr QToolBox, widget: ptr QWidget): cint {.header:headerFile, importcpp:"#.indexOf(@)".} # Public
proc count*(this: ptr QToolBox): cint {.header:headerFile, importcpp:"#.count(@)".} # Public
proc setCurrentIndex*(this: ptr QToolBox, index: cint) {.header:headerFile, importcpp:"#.setCurrentIndex(@)".} # Public
proc setCurrentWidget*(this: ptr QToolBox, widget: ptr QWidget) {.header:headerFile, importcpp:"#.setCurrentWidget(@)".} # Public
proc currentChanged*(this: ptr QToolBox, index: cint) {.header:headerFile, importcpp:"#.currentChanged(@)".} # Public

# Protected methods methods for QToolBox
import nimqt/qtcore/qcoreevent
proc event*(this: ptr QToolBox, e: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Protected
proc itemInserted*(this: ptr QToolBox, index: cint) {.header:headerFile, importcpp:"#.itemInserted(@)".} # Protected
proc itemRemoved*(this: ptr QToolBox, index: cint) {.header:headerFile, importcpp:"#.itemRemoved(@)".} # Protected
import nimqt/qtgui/qevent
proc showEvent*(this: ptr QToolBox, e: ptr QShowEvent) {.header:headerFile, importcpp:"#.showEvent(@)".} # Protected
proc changeEvent*(this: ptr QToolBox, arg_0: ptr QEvent) {.header:headerFile, importcpp:"#.changeEvent(@)".} # Protected

export qevent
export qstring
export qnamespace
export qwidget
export qpaintdevice
export qcoreevent
export qframe
export qicon
