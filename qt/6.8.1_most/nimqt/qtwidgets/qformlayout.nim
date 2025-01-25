const headerFile* = "QtWidgets/qformlayout.h"

type
    # Enums found in the C++ code
    # Global
    QFormLayout_FieldGrowthPolicy* {.header:headerFile,importcpp:"QFormLayout::FieldGrowthPolicy".} = enum FieldsStayAtSizeHint = 0, ExpandingFieldsGrow = 0x1, AllNonFixedFieldsGrow = 0x2
    QFormLayout_RowWrapPolicy* {.header:headerFile,importcpp:"QFormLayout::RowWrapPolicy".} = enum DontWrapRows = 0, WrapLongRows = 0x1, WrapAllRows = 0x2
    QFormLayout_ItemRole* {.header:headerFile,importcpp:"QFormLayout::ItemRole".} = enum LabelRole = 0, FieldRole = 0x1, SpanningRole = 0x2

import nimqt/qtwidgets/qlayout
type
    # Classes found in the C++ code
    QFormLayout* {.header:headerFile,importcpp:"QFormLayout" ,pure.} = object of QLayout
    QFormLayout_TakeRowResult* {.header:headerFile,importcpp:"QFormLayout::TakeRowResult" ,pure,inheritable.} = object


type
    # typedefs found in the C++ code
    QFormLayout_SizeConstraint * = QLayout_SizeConstraint

# Stuff for class QFormLayout

# Public constructors for QFormLayout
import nimqt/qtwidgets/qwidget
# 1 default parameters!
proc newQFormLayout*(parent: ptr QWidget): ptr QFormLayout {. header:headerFile, importcpp:"new QFormLayout(@)" .} #
proc newQFormLayout*(): ptr QFormLayout {. header:headerFile, importcpp:"new QFormLayout(@)" .} #

# Public methods for QFormLayout
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QFormLayout_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QFormLayout::tr(@)".} # Public static
proc static_QFormLayout_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QFormLayout::tr(@)".} # Public static
proc setFieldGrowthPolicy*(this: ptr QFormLayout, policy: QFormLayout_FieldGrowthPolicy) {.header:headerFile, importcpp:"#.setFieldGrowthPolicy(@)".} # Public
proc fieldGrowthPolicy*(this: ptr QFormLayout): QFormLayout_FieldGrowthPolicy {.header:headerFile, importcpp:"#.fieldGrowthPolicy(@)".} # Public
proc setRowWrapPolicy*(this: ptr QFormLayout, policy: QFormLayout_RowWrapPolicy) {.header:headerFile, importcpp:"#.setRowWrapPolicy(@)".} # Public
proc rowWrapPolicy*(this: ptr QFormLayout): QFormLayout_RowWrapPolicy {.header:headerFile, importcpp:"#.rowWrapPolicy(@)".} # Public
import nimqt/qtcore/qnamespace
proc setLabelAlignment*(this: ptr QFormLayout, alignment: Qt_Alignment) {.header:headerFile, importcpp:"#.setLabelAlignment(@)".} # Public
proc labelAlignment*(this: ptr QFormLayout): Qt_Alignment {.header:headerFile, importcpp:"#.labelAlignment(@)".} # Public
proc setFormAlignment*(this: ptr QFormLayout, alignment: Qt_Alignment) {.header:headerFile, importcpp:"#.setFormAlignment(@)".} # Public
proc formAlignment*(this: ptr QFormLayout): Qt_Alignment {.header:headerFile, importcpp:"#.formAlignment(@)".} # Public
proc setHorizontalSpacing*(this: ptr QFormLayout, spacing: cint) {.header:headerFile, importcpp:"#.setHorizontalSpacing(@)".} # Public
proc horizontalSpacing*(this: ptr QFormLayout): cint {.header:headerFile, importcpp:"#.horizontalSpacing(@)".} # Public
proc setVerticalSpacing*(this: ptr QFormLayout, spacing: cint) {.header:headerFile, importcpp:"#.setVerticalSpacing(@)".} # Public
proc verticalSpacing*(this: ptr QFormLayout): cint {.header:headerFile, importcpp:"#.verticalSpacing(@)".} # Public
proc spacing*(this: ptr QFormLayout): cint {.header:headerFile, importcpp:"#.spacing(@)".} # Public
proc setSpacing*(this: ptr QFormLayout, arg_0: cint) {.header:headerFile, importcpp:"#.setSpacing(@)".} # Public
proc addRow*(this: ptr QFormLayout, label: ptr QWidget, field: ptr QWidget) {.header:headerFile, importcpp:"#.addRow(@)".} # Public
proc addRow*(this: ptr QFormLayout, label: ptr QWidget, field: ptr QLayout) {.header:headerFile, importcpp:"#.addRow(@)".} # Public
proc addRow*(this: ptr QFormLayout, labelText: QString, field: ptr QWidget) {.header:headerFile, importcpp:"#.addRow(@)".} # Public
proc addRow*(this: ptr QFormLayout, labelText: QString, field: ptr QLayout) {.header:headerFile, importcpp:"#.addRow(@)".} # Public
proc addRow*(this: ptr QFormLayout, widget: ptr QWidget) {.header:headerFile, importcpp:"#.addRow(@)".} # Public
proc addRow*(this: ptr QFormLayout, layout: ptr QLayout) {.header:headerFile, importcpp:"#.addRow(@)".} # Public
proc insertRow*(this: ptr QFormLayout, row: cint, label: ptr QWidget, field: ptr QWidget) {.header:headerFile, importcpp:"#.insertRow(@)".} # Public
proc insertRow*(this: ptr QFormLayout, row: cint, label: ptr QWidget, field: ptr QLayout) {.header:headerFile, importcpp:"#.insertRow(@)".} # Public
proc insertRow*(this: ptr QFormLayout, row: cint, labelText: QString, field: ptr QWidget) {.header:headerFile, importcpp:"#.insertRow(@)".} # Public
proc insertRow*(this: ptr QFormLayout, row: cint, labelText: QString, field: ptr QLayout) {.header:headerFile, importcpp:"#.insertRow(@)".} # Public
proc insertRow*(this: ptr QFormLayout, row: cint, widget: ptr QWidget) {.header:headerFile, importcpp:"#.insertRow(@)".} # Public
proc insertRow*(this: ptr QFormLayout, row: cint, layout: ptr QLayout) {.header:headerFile, importcpp:"#.insertRow(@)".} # Public
proc removeRow*(this: ptr QFormLayout, row: cint) {.header:headerFile, importcpp:"#.removeRow(@)".} # Public
proc removeRow*(this: ptr QFormLayout, widget: ptr QWidget) {.header:headerFile, importcpp:"#.removeRow(@)".} # Public
proc removeRow*(this: ptr QFormLayout, layout: ptr QLayout) {.header:headerFile, importcpp:"#.removeRow(@)".} # Public
proc takeRow*(this: ptr QFormLayout, row: cint): QFormLayout_TakeRowResult {.header:headerFile, importcpp:"#.takeRow(@)".} # Public
proc takeRow*(this: ptr QFormLayout, widget: ptr QWidget): QFormLayout_TakeRowResult {.header:headerFile, importcpp:"#.takeRow(@)".} # Public
proc takeRow*(this: ptr QFormLayout, layout: ptr QLayout): QFormLayout_TakeRowResult {.header:headerFile, importcpp:"#.takeRow(@)".} # Public
import nimqt/qtwidgets/qlayoutitem
proc setItem*(this: ptr QFormLayout, row: cint, role: QFormLayout_ItemRole, item: ptr QLayoutItem) {.header:headerFile, importcpp:"#.setItem(@)".} # Public
proc setWidget*(this: ptr QFormLayout, row: cint, role: QFormLayout_ItemRole, widget: ptr QWidget) {.header:headerFile, importcpp:"#.setWidget(@)".} # Public
proc setLayout*(this: ptr QFormLayout, row: cint, role: QFormLayout_ItemRole, layout: ptr QLayout) {.header:headerFile, importcpp:"#.setLayout(@)".} # Public
proc setRowVisible*(this: ptr QFormLayout, row: cint, on: bool) {.header:headerFile, importcpp:"#.setRowVisible(@)".} # Public
proc setRowVisible*(this: ptr QFormLayout, widget: ptr QWidget, on: bool) {.header:headerFile, importcpp:"#.setRowVisible(@)".} # Public
proc setRowVisible*(this: ptr QFormLayout, layout: ptr QLayout, on: bool) {.header:headerFile, importcpp:"#.setRowVisible(@)".} # Public
proc isRowVisible*(this: ptr QFormLayout, row: cint): bool {.header:headerFile, importcpp:"#.isRowVisible(@)".} # Public
proc isRowVisible*(this: ptr QFormLayout, widget: ptr QWidget): bool {.header:headerFile, importcpp:"#.isRowVisible(@)".} # Public
proc isRowVisible*(this: ptr QFormLayout, layout: ptr QLayout): bool {.header:headerFile, importcpp:"#.isRowVisible(@)".} # Public
proc itemAt*(this: ptr QFormLayout, row: cint, role: QFormLayout_ItemRole): ptr QLayoutItem {.header:headerFile, importcpp:"#.itemAt(@)".} # Public
proc getItemPosition*(this: ptr QFormLayout, index: cint, rowPtr: ptr cint, rolePtr: ptr QFormLayout_ItemRole) {.header:headerFile, importcpp:"#.getItemPosition(@)".} # Public
proc getWidgetPosition*(this: ptr QFormLayout, widget: ptr QWidget, rowPtr: ptr cint, rolePtr: ptr QFormLayout_ItemRole) {.header:headerFile, importcpp:"#.getWidgetPosition(@)".} # Public
proc getLayoutPosition*(this: ptr QFormLayout, layout: ptr QLayout, rowPtr: ptr cint, rolePtr: ptr QFormLayout_ItemRole) {.header:headerFile, importcpp:"#.getLayoutPosition(@)".} # Public
proc labelForField*(this: ptr QFormLayout, field: ptr QWidget): ptr QWidget {.header:headerFile, importcpp:"#.labelForField(@)".} # Public
proc labelForField*(this: ptr QFormLayout, field: ptr QLayout): ptr QWidget {.header:headerFile, importcpp:"#.labelForField(@)".} # Public
proc addItem*(this: ptr QFormLayout, item: ptr QLayoutItem) {.header:headerFile, importcpp:"#.addItem(@)".} # Public
proc itemAt*(this: ptr QFormLayout, index: cint): ptr QLayoutItem {.header:headerFile, importcpp:"#.itemAt(@)".} # Public
proc takeAt*(this: ptr QFormLayout, index: cint): ptr QLayoutItem {.header:headerFile, importcpp:"#.takeAt(@)".} # Public
import nimqt/qtcore/qrect
proc setGeometry*(this: ptr QFormLayout, rect: QRect) {.header:headerFile, importcpp:"#.setGeometry(@)".} # Public
import nimqt/qtcore/qsize
proc minimumSize*(this: ptr QFormLayout): QSize {.header:headerFile, importcpp:"#.minimumSize(@)".} # Public
proc sizeHint*(this: ptr QFormLayout): QSize {.header:headerFile, importcpp:"#.sizeHint(@)".} # Public
proc invalidate*(this: ptr QFormLayout) {.header:headerFile, importcpp:"#.invalidate(@)".} # Public
proc hasHeightForWidth*(this: ptr QFormLayout): bool {.header:headerFile, importcpp:"#.hasHeightForWidth(@)".} # Public
proc heightForWidth*(this: ptr QFormLayout, width: cint): cint {.header:headerFile, importcpp:"#.heightForWidth(@)".} # Public
proc expandingDirections*(this: ptr QFormLayout): Qt_Orientations {.header:headerFile, importcpp:"#.expandingDirections(@)".} # Public
proc count*(this: ptr QFormLayout): cint {.header:headerFile, importcpp:"#.count(@)".} # Public
proc rowCount*(this: ptr QFormLayout): cint {.header:headerFile, importcpp:"#.rowCount(@)".} # Public

export qstring
export qsize
export qnamespace
export qlayout
export qwidget
export qrect
export qlayoutitem
