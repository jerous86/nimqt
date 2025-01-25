const headerFile* = "QtWidgets/qlayout.h"

type
    # Enums found in the C++ code
    # Global
    QLayout_SizeConstraint* {.header:headerFile,importcpp:"QLayout::SizeConstraint".} = enum SetDefaultConstraint = 0, SetNoConstraint = 0x1, SetMinimumSize = 0x2, SetFixedSize = 0x3, 
        SetMaximumSize = 0x4, SetMinAndMaxSize = 0x5

import nimqt/qtwidgets/qlayoutitem
type
    # Classes found in the C++ code
    QLayout* {.header:headerFile,importcpp:"QLayout" ,pure.} = object of QLayoutItem

# Stuff for class QLayout

# Public constructors for QLayout
import nimqt/qtwidgets/qwidget
# 1 default parameters!
proc newQLayout*(parent: ptr QWidget): ptr QLayout {. header:headerFile, importcpp:"new QLayout(@)" .} #
proc newQLayout*(): ptr QLayout {. header:headerFile, importcpp:"new QLayout(@)" .} #

# Public methods for QLayout
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QLayout_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QLayout::tr(@)".} # Public static
proc static_QLayout_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QLayout::tr(@)".} # Public static
proc spacing*(this: ptr QLayout): cint {.header:headerFile, importcpp:"#.spacing(@)".} # Public
proc setSpacing*(this: ptr QLayout, arg_0: cint) {.header:headerFile, importcpp:"#.setSpacing(@)".} # Public
proc setContentsMargins*(this: ptr QLayout, left: cint, top: cint, right: cint, bottom: cint) {.header:headerFile, importcpp:"#.setContentsMargins(@)".} # Public
import nimqt/qtcore/qmargins
proc setContentsMargins*(this: ptr QLayout, margins: QMargins) {.header:headerFile, importcpp:"#.setContentsMargins(@)".} # Public
proc unsetContentsMargins*(this: ptr QLayout) {.header:headerFile, importcpp:"#.unsetContentsMargins(@)".} # Public
proc getContentsMargins*(this: ptr QLayout, left: ptr cint, top: ptr cint, right: ptr cint, bottom: ptr cint) {.header:headerFile, importcpp:"#.getContentsMargins(@)".} # Public
proc contentsMargins*(this: ptr QLayout): QMargins {.header:headerFile, importcpp:"#.contentsMargins(@)".} # Public
import nimqt/qtcore/qrect
proc contentsRect*(this: ptr QLayout): QRect {.header:headerFile, importcpp:"#.contentsRect(@)".} # Public
import nimqt/qtcore/qnamespace
proc setAlignment*(this: ptr QLayout, w: ptr QWidget, alignment: Qt_Alignment): bool {.header:headerFile, importcpp:"#.setAlignment(@)".} # Public
proc setAlignment*(this: ptr QLayout, l: ptr QLayout, alignment: Qt_Alignment): bool {.header:headerFile, importcpp:"#.setAlignment(@)".} # Public
proc setSizeConstraint*(this: ptr QLayout, arg_0: QLayout_SizeConstraint) {.header:headerFile, importcpp:"#.setSizeConstraint(@)".} # Public
proc sizeConstraint*(this: ptr QLayout): QLayout_SizeConstraint {.header:headerFile, importcpp:"#.sizeConstraint(@)".} # Public
proc setMenuBar*(this: ptr QLayout, w: ptr QWidget) {.header:headerFile, importcpp:"#.setMenuBar(@)".} # Public
proc menuBar*(this: ptr QLayout): ptr QWidget {.header:headerFile, importcpp:"#.menuBar(@)".} # Public
proc parentWidget*(this: ptr QLayout): ptr QWidget {.header:headerFile, importcpp:"#.parentWidget(@)".} # Public
proc invalidate*(this: ptr QLayout) {.header:headerFile, importcpp:"#.invalidate(@)".} # Public
proc geometry*(this: ptr QLayout): QRect {.header:headerFile, importcpp:"#.geometry(@)".} # Public
proc activate*(this: ptr QLayout): bool {.header:headerFile, importcpp:"#.activate(@)".} # Public
proc update*(this: ptr QLayout) {.header:headerFile, importcpp:"#.update(@)".} # Public
proc addWidget*(this: ptr QLayout, w: ptr QWidget) {.header:headerFile, importcpp:"#.addWidget(@)".} # Public
proc addItem*(this: ptr QLayout, arg_0: ptr QLayoutItem) {.header:headerFile, importcpp:"#.addItem(@)".} # Public
proc removeWidget*(this: ptr QLayout, w: ptr QWidget) {.header:headerFile, importcpp:"#.removeWidget(@)".} # Public
proc removeItem*(this: ptr QLayout, arg_0: ptr QLayoutItem) {.header:headerFile, importcpp:"#.removeItem(@)".} # Public
proc expandingDirections*(this: ptr QLayout): Qt_Orientations {.header:headerFile, importcpp:"#.expandingDirections(@)".} # Public
import nimqt/qtcore/qsize
proc minimumSize*(this: ptr QLayout): QSize {.header:headerFile, importcpp:"#.minimumSize(@)".} # Public
proc maximumSize*(this: ptr QLayout): QSize {.header:headerFile, importcpp:"#.maximumSize(@)".} # Public
proc setGeometry*(this: ptr QLayout, arg_0: QRect) {.header:headerFile, importcpp:"#.setGeometry(@)".} # Public
proc itemAt*(this: ptr QLayout, index: cint): ptr QLayoutItem {.header:headerFile, importcpp:"#.itemAt(@)".} # Public
proc takeAt*(this: ptr QLayout, index: cint): ptr QLayoutItem {.header:headerFile, importcpp:"#.takeAt(@)".} # Public
proc indexOf*(this: ptr QLayout, arg_0: ptr QWidget): cint {.header:headerFile, importcpp:"#.indexOf(@)".} # Public
proc indexOf*(this: ptr QLayout, arg_0: ptr QLayoutItem): cint {.header:headerFile, importcpp:"#.indexOf(@)".} # Public
proc count*(this: ptr QLayout): cint {.header:headerFile, importcpp:"#.count(@)".} # Public
proc isEmpty*(this: ptr QLayout): bool {.header:headerFile, importcpp:"#.isEmpty(@)".} # Public
import nimqt/qtwidgets/qsizepolicy
proc controlTypes*(this: ptr QLayout): QSizePolicy_ControlTypes {.header:headerFile, importcpp:"#.controlTypes(@)".} # Public
# 1 default parameters!
proc replaceWidget*(this: ptr QLayout, `from`: ptr QWidget, to: ptr QWidget, options: Qt_FindChildOptions): ptr QLayoutItem {.header:headerFile, importcpp:"#.replaceWidget(@)".} # Public
proc replaceWidget*(this: ptr QLayout, `from`: ptr QWidget, to: ptr QWidget): ptr QLayoutItem {.header:headerFile, importcpp:"#.replaceWidget(@)".} # Public
proc totalMinimumHeightForWidth*(this: ptr QLayout, w: cint): cint {.header:headerFile, importcpp:"#.totalMinimumHeightForWidth(@)".} # Public
proc totalHeightForWidth*(this: ptr QLayout, w: cint): cint {.header:headerFile, importcpp:"#.totalHeightForWidth(@)".} # Public
proc totalMinimumSize*(this: ptr QLayout): QSize {.header:headerFile, importcpp:"#.totalMinimumSize(@)".} # Public
proc totalMaximumSize*(this: ptr QLayout): QSize {.header:headerFile, importcpp:"#.totalMaximumSize(@)".} # Public
proc totalSizeHint*(this: ptr QLayout): QSize {.header:headerFile, importcpp:"#.totalSizeHint(@)".} # Public
proc layout*(this: ptr QLayout): ptr QLayout {.header:headerFile, importcpp:"#.layout(@)".} # Public
proc setEnabled*(this: ptr QLayout, arg_0: bool) {.header:headerFile, importcpp:"#.setEnabled(@)".} # Public
proc isEnabled*(this: ptr QLayout): bool {.header:headerFile, importcpp:"#.isEnabled(@)".} # Public
proc static_QLayout_closestAcceptableSize*(w: ptr QWidget, s: QSize): QSize {.header:headerFile, importcpp:"QLayout::closestAcceptableSize(@)".} # Public static

# Protected methods methods for QLayout
import nimqt/qtcore/qcoreevent
proc widgetEvent*(this: ptr QLayout, arg_0: ptr QEvent) {.header:headerFile, importcpp:"#.widgetEvent(@)".} # Protected
proc childEvent*(this: ptr QLayout, e: ptr QChildEvent) {.header:headerFile, importcpp:"#.childEvent(@)".} # Protected
proc addChildLayout*(this: ptr QLayout, l: ptr QLayout) {.header:headerFile, importcpp:"#.addChildLayout(@)".} # Protected
proc addChildWidget*(this: ptr QLayout, w: ptr QWidget) {.header:headerFile, importcpp:"#.addChildWidget(@)".} # Protected
proc adoptLayout*(this: ptr QLayout, layout: ptr QLayout): bool {.header:headerFile, importcpp:"#.adoptLayout(@)".} # Protected
proc alignmentRect*(this: ptr QLayout, arg_1: QRect): QRect {.header:headerFile, importcpp:"#.alignmentRect(@)".} # Protected

export qstring
export qsize
export qsizepolicy
export qnamespace
export qwidget
export qrect
export qmargins
export qcoreevent
export qlayoutitem
