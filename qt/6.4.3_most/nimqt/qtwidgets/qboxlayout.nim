const headerFile* = "QtWidgets/qboxlayout.h"

type
    # Enums found in the C++ code
    # Global
    QBoxLayout_Direction* {.header:headerFile,importcpp:"QBoxLayout::Direction".} = enum LeftToRight = 0, RightToLeft = 0x1, TopToBottom = 0x2, BottomToTop = 0x3

import nimqt/qtwidgets/qlayout
type
    # Classes found in the C++ code
    QBoxLayout* {.header:headerFile,importcpp:"QBoxLayout" ,pure.} = object of QLayout
    QHBoxLayout* {.header:headerFile,importcpp:"QHBoxLayout" ,pure.} = object of QBoxLayout
    QVBoxLayout* {.header:headerFile,importcpp:"QVBoxLayout" ,pure.} = object of QBoxLayout


type
    # typedefs found in the C++ code
    QBoxLayout_SizeConstraint * = QLayout_SizeConstraint
    QHBoxLayout_Direction * = QBoxLayout_Direction
    QHBoxLayout_SizeConstraint * = QLayout_SizeConstraint
    QVBoxLayout_Direction * = QBoxLayout_Direction
    QVBoxLayout_SizeConstraint * = QLayout_SizeConstraint

# Consts
const
    # Global
    QBoxLayout_DirectionDown* = 2 # from anonymous enum TopToBottom
    QBoxLayout_DirectionUp* = 3 # from anonymous enum BottomToTop

# Stuff for class QBoxLayout

# Public constructors for QBoxLayout
import nimqt/qtwidgets/qwidget
# 1 default parameters!
proc newQBoxLayout*(arg_0: QBoxLayout_Direction, parent: ptr QWidget): ptr QBoxLayout {. header:headerFile, importcpp:"new QBoxLayout(@)" .} #
proc newQBoxLayout*(arg_0: QBoxLayout_Direction): ptr QBoxLayout {. header:headerFile, importcpp:"new QBoxLayout(@)" .} #

# Public methods for QBoxLayout
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QBoxLayout_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QBoxLayout::tr(@)".} # Public static
proc static_QBoxLayout_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QBoxLayout::tr(@)".} # Public static
proc direction*(this: ptr QBoxLayout): QBoxLayout_Direction {.header:headerFile, importcpp:"#.direction(@)".} # Public
proc setDirection*(this: ptr QBoxLayout, arg_0: QBoxLayout_Direction) {.header:headerFile, importcpp:"#.setDirection(@)".} # Public
proc addSpacing*(this: ptr QBoxLayout, size: cint) {.header:headerFile, importcpp:"#.addSpacing(@)".} # Public
# 1 default parameters!
proc addStretch*(this: ptr QBoxLayout, stretch: cint) {.header:headerFile, importcpp:"#.addStretch(@)".} # Public
proc addStretch*(this: ptr QBoxLayout) {.header:headerFile, importcpp:"#.addStretch(@)".} # Public
import nimqt/qtwidgets/qlayoutitem
proc addSpacerItem*(this: ptr QBoxLayout, spacerItem: ptr QSpacerItem) {.header:headerFile, importcpp:"#.addSpacerItem(@)".} # Public
import nimqt/qtcore/qnamespace
# 2 default parameters!
proc addWidget*(this: ptr QBoxLayout, arg_0: ptr QWidget, stretch: cint, alignment: Qt_Alignment) {.header:headerFile, importcpp:"#.addWidget(@)".} # Public
proc addWidget*(this: ptr QBoxLayout, arg_0: ptr QWidget, stretch: cint) {.header:headerFile, importcpp:"#.addWidget(@)".} # Public
proc addWidget*(this: ptr QBoxLayout, arg_0: ptr QWidget) {.header:headerFile, importcpp:"#.addWidget(@)".} # Public
# 1 default parameters!
proc addLayout*(this: ptr QBoxLayout, layout: ptr QLayout, stretch: cint) {.header:headerFile, importcpp:"#.addLayout(@)".} # Public
proc addLayout*(this: ptr QBoxLayout, layout: ptr QLayout) {.header:headerFile, importcpp:"#.addLayout(@)".} # Public
proc addStrut*(this: ptr QBoxLayout, arg_0: cint) {.header:headerFile, importcpp:"#.addStrut(@)".} # Public
proc addItem*(this: ptr QBoxLayout, arg_0: ptr QLayoutItem) {.header:headerFile, importcpp:"#.addItem(@)".} # Public
proc insertSpacing*(this: ptr QBoxLayout, index: cint, size: cint) {.header:headerFile, importcpp:"#.insertSpacing(@)".} # Public
# 1 default parameters!
proc insertStretch*(this: ptr QBoxLayout, index: cint, stretch: cint) {.header:headerFile, importcpp:"#.insertStretch(@)".} # Public
proc insertStretch*(this: ptr QBoxLayout, index: cint) {.header:headerFile, importcpp:"#.insertStretch(@)".} # Public
proc insertSpacerItem*(this: ptr QBoxLayout, index: cint, spacerItem: ptr QSpacerItem) {.header:headerFile, importcpp:"#.insertSpacerItem(@)".} # Public
# 2 default parameters!
proc insertWidget*(this: ptr QBoxLayout, index: cint, widget: ptr QWidget, stretch: cint, alignment: Qt_Alignment) {.header:headerFile, importcpp:"#.insertWidget(@)".} # Public
proc insertWidget*(this: ptr QBoxLayout, index: cint, widget: ptr QWidget, stretch: cint) {.header:headerFile, importcpp:"#.insertWidget(@)".} # Public
proc insertWidget*(this: ptr QBoxLayout, index: cint, widget: ptr QWidget) {.header:headerFile, importcpp:"#.insertWidget(@)".} # Public
# 1 default parameters!
proc insertLayout*(this: ptr QBoxLayout, index: cint, layout: ptr QLayout, stretch: cint) {.header:headerFile, importcpp:"#.insertLayout(@)".} # Public
proc insertLayout*(this: ptr QBoxLayout, index: cint, layout: ptr QLayout) {.header:headerFile, importcpp:"#.insertLayout(@)".} # Public
proc insertItem*(this: ptr QBoxLayout, index: cint, arg_1: ptr QLayoutItem) {.header:headerFile, importcpp:"#.insertItem(@)".} # Public
proc spacing*(this: ptr QBoxLayout): cint {.header:headerFile, importcpp:"#.spacing(@)".} # Public
proc setSpacing*(this: ptr QBoxLayout, spacing: cint) {.header:headerFile, importcpp:"#.setSpacing(@)".} # Public
proc setStretchFactor*(this: ptr QBoxLayout, w: ptr QWidget, stretch: cint): bool {.header:headerFile, importcpp:"#.setStretchFactor(@)".} # Public
proc setStretchFactor*(this: ptr QBoxLayout, l: ptr QLayout, stretch: cint): bool {.header:headerFile, importcpp:"#.setStretchFactor(@)".} # Public
proc setStretch*(this: ptr QBoxLayout, index: cint, stretch: cint) {.header:headerFile, importcpp:"#.setStretch(@)".} # Public
proc stretch*(this: ptr QBoxLayout, index: cint): cint {.header:headerFile, importcpp:"#.stretch(@)".} # Public
import nimqt/qtcore/qsize
proc sizeHint*(this: ptr QBoxLayout): QSize {.header:headerFile, importcpp:"#.sizeHint(@)".} # Public
proc minimumSize*(this: ptr QBoxLayout): QSize {.header:headerFile, importcpp:"#.minimumSize(@)".} # Public
proc maximumSize*(this: ptr QBoxLayout): QSize {.header:headerFile, importcpp:"#.maximumSize(@)".} # Public
proc hasHeightForWidth*(this: ptr QBoxLayout): bool {.header:headerFile, importcpp:"#.hasHeightForWidth(@)".} # Public
proc heightForWidth*(this: ptr QBoxLayout, arg_0: cint): cint {.header:headerFile, importcpp:"#.heightForWidth(@)".} # Public
proc minimumHeightForWidth*(this: ptr QBoxLayout, arg_0: cint): cint {.header:headerFile, importcpp:"#.minimumHeightForWidth(@)".} # Public
proc expandingDirections*(this: ptr QBoxLayout): Qt_Orientations {.header:headerFile, importcpp:"#.expandingDirections(@)".} # Public
proc invalidate*(this: ptr QBoxLayout) {.header:headerFile, importcpp:"#.invalidate(@)".} # Public
proc itemAt*(this: ptr QBoxLayout, arg_1: cint): ptr QLayoutItem {.header:headerFile, importcpp:"#.itemAt(@)".} # Public
proc takeAt*(this: ptr QBoxLayout, arg_1: cint): ptr QLayoutItem {.header:headerFile, importcpp:"#.takeAt(@)".} # Public
proc count*(this: ptr QBoxLayout): cint {.header:headerFile, importcpp:"#.count(@)".} # Public
import nimqt/qtcore/qrect
proc setGeometry*(this: ptr QBoxLayout, arg_0: QRect) {.header:headerFile, importcpp:"#.setGeometry(@)".} # Public
# Stuff for class QHBoxLayout

# Public constructors for QHBoxLayout
proc newQHBoxLayout*(): ptr QHBoxLayout {. header:headerFile, importcpp:"new QHBoxLayout(@)" .} #
proc newQHBoxLayout*(parent: ptr QWidget): ptr QHBoxLayout {. header:headerFile, importcpp:"new QHBoxLayout(@)" .} #

# Public methods for QHBoxLayout
# 1 default parameters!
proc static_QHBoxLayout_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QHBoxLayout::tr(@)".} # Public static
proc static_QHBoxLayout_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QHBoxLayout::tr(@)".} # Public static
# Stuff for class QVBoxLayout

# Public constructors for QVBoxLayout
proc newQVBoxLayout*(): ptr QVBoxLayout {. header:headerFile, importcpp:"new QVBoxLayout(@)" .} #
proc newQVBoxLayout*(parent: ptr QWidget): ptr QVBoxLayout {. header:headerFile, importcpp:"new QVBoxLayout(@)" .} #

# Public methods for QVBoxLayout
# 1 default parameters!
proc static_QVBoxLayout_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QVBoxLayout::tr(@)".} # Public static
proc static_QVBoxLayout_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QVBoxLayout::tr(@)".} # Public static

export qstring
export qsize
export qnamespace
export qlayout
export qwidget
export qrect
export qlayoutitem
