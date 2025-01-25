const headerFile* = "QtWidgets/qstackedlayout.h"

type
    # Enums found in the C++ code
    # Global
    QStackedLayout_StackingMode* {.header:headerFile,importcpp:"QStackedLayout::StackingMode".} = enum StackOne = 0, StackAll = 0x1

import nimqt/qtwidgets/qlayout
type
    # Classes found in the C++ code
    QStackedLayout* {.header:headerFile,importcpp:"QStackedLayout" ,pure.} = object of QLayout


type
    # typedefs found in the C++ code
    QStackedLayout_SizeConstraint * = QLayout_SizeConstraint

# Stuff for class QStackedLayout

# Public constructors for QStackedLayout
proc newQStackedLayout*(): ptr QStackedLayout {. header:headerFile, importcpp:"new QStackedLayout(@)" .} #
import nimqt/qtwidgets/qwidget
proc newQStackedLayout*(parent: ptr QWidget): ptr QStackedLayout {. header:headerFile, importcpp:"new QStackedLayout(@)" .} #
proc newQStackedLayout*(parentLayout: ptr QLayout): ptr QStackedLayout {. header:headerFile, importcpp:"new QStackedLayout(@)" .} #

# Public methods for QStackedLayout
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QStackedLayout_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QStackedLayout::tr(@)".} # Public static
proc static_QStackedLayout_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QStackedLayout::tr(@)".} # Public static
proc addWidget*(this: ptr QStackedLayout, w: ptr QWidget): cint {.header:headerFile, importcpp:"#.addWidget(@)".} # Public
proc insertWidget*(this: ptr QStackedLayout, index: cint, w: ptr QWidget): cint {.header:headerFile, importcpp:"#.insertWidget(@)".} # Public
proc currentWidget*(this: ptr QStackedLayout): ptr QWidget {.header:headerFile, importcpp:"#.currentWidget(@)".} # Public
proc currentIndex*(this: ptr QStackedLayout): cint {.header:headerFile, importcpp:"#.currentIndex(@)".} # Public
proc widget*(this: ptr QStackedLayout, arg_1: cint): ptr QWidget {.header:headerFile, importcpp:"#.widget(@)".} # Public
proc count*(this: ptr QStackedLayout): cint {.header:headerFile, importcpp:"#.count(@)".} # Public
proc stackingMode*(this: ptr QStackedLayout): QStackedLayout_StackingMode {.header:headerFile, importcpp:"#.stackingMode(@)".} # Public
proc setStackingMode*(this: ptr QStackedLayout, stackingMode: QStackedLayout_StackingMode) {.header:headerFile, importcpp:"#.setStackingMode(@)".} # Public
import nimqt/qtwidgets/qlayoutitem
proc addItem*(this: ptr QStackedLayout, item: ptr QLayoutItem) {.header:headerFile, importcpp:"#.addItem(@)".} # Public
import nimqt/qtcore/qsize
proc sizeHint*(this: ptr QStackedLayout): QSize {.header:headerFile, importcpp:"#.sizeHint(@)".} # Public
proc minimumSize*(this: ptr QStackedLayout): QSize {.header:headerFile, importcpp:"#.minimumSize(@)".} # Public
proc itemAt*(this: ptr QStackedLayout, arg_1: cint): ptr QLayoutItem {.header:headerFile, importcpp:"#.itemAt(@)".} # Public
proc takeAt*(this: ptr QStackedLayout, arg_1: cint): ptr QLayoutItem {.header:headerFile, importcpp:"#.takeAt(@)".} # Public
import nimqt/qtcore/qrect
proc setGeometry*(this: ptr QStackedLayout, rect: QRect) {.header:headerFile, importcpp:"#.setGeometry(@)".} # Public
proc hasHeightForWidth*(this: ptr QStackedLayout): bool {.header:headerFile, importcpp:"#.hasHeightForWidth(@)".} # Public
proc heightForWidth*(this: ptr QStackedLayout, width: cint): cint {.header:headerFile, importcpp:"#.heightForWidth(@)".} # Public
proc widgetRemoved*(this: ptr QStackedLayout, index: cint) {.header:headerFile, importcpp:"#.widgetRemoved(@)".} # Public
proc currentChanged*(this: ptr QStackedLayout, index: cint) {.header:headerFile, importcpp:"#.currentChanged(@)".} # Public
proc setCurrentIndex*(this: ptr QStackedLayout, index: cint) {.header:headerFile, importcpp:"#.setCurrentIndex(@)".} # Public
proc setCurrentWidget*(this: ptr QStackedLayout, w: ptr QWidget) {.header:headerFile, importcpp:"#.setCurrentWidget(@)".} # Public

export qstring
export qsize
export qlayout
export qwidget
export qrect
export qlayoutitem
