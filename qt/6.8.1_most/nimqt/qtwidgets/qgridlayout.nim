const headerFile* = "QtWidgets/qgridlayout.h"

import nimqt/qtwidgets/qlayout
type
    # Classes found in the C++ code
    QGridLayout* {.header:headerFile,importcpp:"QGridLayout" ,pure.} = object of QLayout


type
    # typedefs found in the C++ code
    QGridLayout_SizeConstraint * = QLayout_SizeConstraint

# Stuff for class QGridLayout

# Public constructors for QGridLayout
import nimqt/qtwidgets/qwidget
# 1 default parameters!
proc newQGridLayout*(parent: ptr QWidget): ptr QGridLayout {. header:headerFile, importcpp:"new QGridLayout(@)" .} #
proc newQGridLayout*(): ptr QGridLayout {. header:headerFile, importcpp:"new QGridLayout(@)" .} #

# Public methods for QGridLayout
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QGridLayout_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QGridLayout::tr(@)".} # Public static
proc static_QGridLayout_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QGridLayout::tr(@)".} # Public static
import nimqt/qtcore/qsize
proc sizeHint*(this: ptr QGridLayout): QSize {.header:headerFile, importcpp:"#.sizeHint(@)".} # Public
proc minimumSize*(this: ptr QGridLayout): QSize {.header:headerFile, importcpp:"#.minimumSize(@)".} # Public
proc maximumSize*(this: ptr QGridLayout): QSize {.header:headerFile, importcpp:"#.maximumSize(@)".} # Public
proc setHorizontalSpacing*(this: ptr QGridLayout, spacing: cint) {.header:headerFile, importcpp:"#.setHorizontalSpacing(@)".} # Public
proc horizontalSpacing*(this: ptr QGridLayout): cint {.header:headerFile, importcpp:"#.horizontalSpacing(@)".} # Public
proc setVerticalSpacing*(this: ptr QGridLayout, spacing: cint) {.header:headerFile, importcpp:"#.setVerticalSpacing(@)".} # Public
proc verticalSpacing*(this: ptr QGridLayout): cint {.header:headerFile, importcpp:"#.verticalSpacing(@)".} # Public
proc setSpacing*(this: ptr QGridLayout, spacing: cint) {.header:headerFile, importcpp:"#.setSpacing(@)".} # Public
proc spacing*(this: ptr QGridLayout): cint {.header:headerFile, importcpp:"#.spacing(@)".} # Public
proc setRowStretch*(this: ptr QGridLayout, row: cint, stretch: cint) {.header:headerFile, importcpp:"#.setRowStretch(@)".} # Public
proc setColumnStretch*(this: ptr QGridLayout, column: cint, stretch: cint) {.header:headerFile, importcpp:"#.setColumnStretch(@)".} # Public
proc rowStretch*(this: ptr QGridLayout, row: cint): cint {.header:headerFile, importcpp:"#.rowStretch(@)".} # Public
proc columnStretch*(this: ptr QGridLayout, column: cint): cint {.header:headerFile, importcpp:"#.columnStretch(@)".} # Public
proc setRowMinimumHeight*(this: ptr QGridLayout, row: cint, minSize: cint) {.header:headerFile, importcpp:"#.setRowMinimumHeight(@)".} # Public
proc setColumnMinimumWidth*(this: ptr QGridLayout, column: cint, minSize: cint) {.header:headerFile, importcpp:"#.setColumnMinimumWidth(@)".} # Public
proc rowMinimumHeight*(this: ptr QGridLayout, row: cint): cint {.header:headerFile, importcpp:"#.rowMinimumHeight(@)".} # Public
proc columnMinimumWidth*(this: ptr QGridLayout, column: cint): cint {.header:headerFile, importcpp:"#.columnMinimumWidth(@)".} # Public
proc columnCount*(this: ptr QGridLayout): cint {.header:headerFile, importcpp:"#.columnCount(@)".} # Public
proc rowCount*(this: ptr QGridLayout): cint {.header:headerFile, importcpp:"#.rowCount(@)".} # Public
import nimqt/qtcore/qrect
proc cellRect*(this: ptr QGridLayout, row: cint, column: cint): QRect {.header:headerFile, importcpp:"#.cellRect(@)".} # Public
proc hasHeightForWidth*(this: ptr QGridLayout): bool {.header:headerFile, importcpp:"#.hasHeightForWidth(@)".} # Public
proc heightForWidth*(this: ptr QGridLayout, arg_0: cint): cint {.header:headerFile, importcpp:"#.heightForWidth(@)".} # Public
proc minimumHeightForWidth*(this: ptr QGridLayout, arg_0: cint): cint {.header:headerFile, importcpp:"#.minimumHeightForWidth(@)".} # Public
import nimqt/qtcore/qnamespace
proc expandingDirections*(this: ptr QGridLayout): Qt_Orientations {.header:headerFile, importcpp:"#.expandingDirections(@)".} # Public
proc invalidate*(this: ptr QGridLayout) {.header:headerFile, importcpp:"#.invalidate(@)".} # Public
proc addWidget*(this: ptr QGridLayout, w: ptr QWidget) {.header:headerFile, importcpp:"#.addWidget(@)".} # Public
# 1 default parameters!
proc addWidget*(this: ptr QGridLayout, arg_0: ptr QWidget, row: cint, column: cint, arg_3: Qt_Alignment) {.header:headerFile, importcpp:"#.addWidget(@)".} # Public
proc addWidget*(this: ptr QGridLayout, arg_0: ptr QWidget, row: cint, column: cint) {.header:headerFile, importcpp:"#.addWidget(@)".} # Public
# 1 default parameters!
proc addWidget*(this: ptr QGridLayout, arg_0: ptr QWidget, row: cint, column: cint, rowSpan: cint, columnSpan: cint, arg_5: Qt_Alignment) {.header:headerFile, importcpp:"#.addWidget(@)".} # Public
proc addWidget*(this: ptr QGridLayout, arg_0: ptr QWidget, row: cint, column: cint, rowSpan: cint, columnSpan: cint) {.header:headerFile, importcpp:"#.addWidget(@)".} # Public
# 1 default parameters!
proc addLayout*(this: ptr QGridLayout, arg_0: ptr QLayout, row: cint, column: cint, arg_3: Qt_Alignment) {.header:headerFile, importcpp:"#.addLayout(@)".} # Public
proc addLayout*(this: ptr QGridLayout, arg_0: ptr QLayout, row: cint, column: cint) {.header:headerFile, importcpp:"#.addLayout(@)".} # Public
# 1 default parameters!
proc addLayout*(this: ptr QGridLayout, arg_0: ptr QLayout, row: cint, column: cint, rowSpan: cint, columnSpan: cint, arg_5: Qt_Alignment) {.header:headerFile, importcpp:"#.addLayout(@)".} # Public
proc addLayout*(this: ptr QGridLayout, arg_0: ptr QLayout, row: cint, column: cint, rowSpan: cint, columnSpan: cint) {.header:headerFile, importcpp:"#.addLayout(@)".} # Public
proc setOriginCorner*(this: ptr QGridLayout, arg_0: Qt_Corner) {.header:headerFile, importcpp:"#.setOriginCorner(@)".} # Public
proc originCorner*(this: ptr QGridLayout): Qt_Corner {.header:headerFile, importcpp:"#.originCorner(@)".} # Public
import nimqt/qtwidgets/qlayoutitem
proc itemAt*(this: ptr QGridLayout, index: cint): ptr QLayoutItem {.header:headerFile, importcpp:"#.itemAt(@)".} # Public
proc itemAtPosition*(this: ptr QGridLayout, row: cint, column: cint): ptr QLayoutItem {.header:headerFile, importcpp:"#.itemAtPosition(@)".} # Public
proc takeAt*(this: ptr QGridLayout, index: cint): ptr QLayoutItem {.header:headerFile, importcpp:"#.takeAt(@)".} # Public
proc count*(this: ptr QGridLayout): cint {.header:headerFile, importcpp:"#.count(@)".} # Public
proc setGeometry*(this: ptr QGridLayout, arg_0: QRect) {.header:headerFile, importcpp:"#.setGeometry(@)".} # Public
# 3 default parameters!
proc addItem*(this: ptr QGridLayout, item: ptr QLayoutItem, row: cint, column: cint, rowSpan: cint, columnSpan: cint, arg_5: Qt_Alignment) {.header:headerFile, importcpp:"#.addItem(@)".} # Public
proc addItem*(this: ptr QGridLayout, item: ptr QLayoutItem, row: cint, column: cint, rowSpan: cint, columnSpan: cint) {.header:headerFile, importcpp:"#.addItem(@)".} # Public
proc addItem*(this: ptr QGridLayout, item: ptr QLayoutItem, row: cint, column: cint, rowSpan: cint) {.header:headerFile, importcpp:"#.addItem(@)".} # Public
proc addItem*(this: ptr QGridLayout, item: ptr QLayoutItem, row: cint, column: cint) {.header:headerFile, importcpp:"#.addItem(@)".} # Public
proc setDefaultPositioning*(this: ptr QGridLayout, n: cint, orient: Qt_Orientation) {.header:headerFile, importcpp:"#.setDefaultPositioning(@)".} # Public
proc getItemPosition*(this: ptr QGridLayout, idx: cint, row: ptr cint, column: ptr cint, rowSpan: ptr cint, columnSpan: ptr cint) {.header:headerFile, importcpp:"#.getItemPosition(@)".} # Public

# Protected methods methods for QGridLayout
proc addItem*(this: ptr QGridLayout, arg_0: ptr QLayoutItem) {.header:headerFile, importcpp:"#.addItem(@)".} # Protected

export qstring
export qsize
export qnamespace
export qlayout
export qwidget
export qrect
export qlayoutitem
