const headerFile* = "QtWidgets/qlayoutitem.h"

type
    # Classes found in the C++ code
    QLayoutItem* {.header:headerFile,importcpp:"QLayoutItem" ,pure,inheritable.} = object
    QSpacerItem* {.header:headerFile,importcpp:"QSpacerItem" ,pure.} = object of QLayoutItem
    QWidgetItem* {.header:headerFile,importcpp:"QWidgetItem" ,pure.} = object of QLayoutItem
    QWidgetItemV2* {.header:headerFile,importcpp:"QWidgetItemV2" ,pure.} = object of QWidgetItem

# Stuff for class QLayoutItem

# Public constructors for QLayoutItem
import nimqt/qtcore/qnamespace
# 1 default parameters!
proc newQLayoutItem*(alignment: Qt_Alignment): ptr QLayoutItem {. header:headerFile, importcpp:"new QLayoutItem(@)" .} #
proc newQLayoutItem*(): ptr QLayoutItem {. header:headerFile, importcpp:"new QLayoutItem(@)" .} #

# Public methods for QLayoutItem
import nimqt/qtcore/qsize
proc sizeHint*(this: ptr QLayoutItem): QSize {.header:headerFile, importcpp:"#.sizeHint(@)".} # Public
proc minimumSize*(this: ptr QLayoutItem): QSize {.header:headerFile, importcpp:"#.minimumSize(@)".} # Public
proc maximumSize*(this: ptr QLayoutItem): QSize {.header:headerFile, importcpp:"#.maximumSize(@)".} # Public
proc expandingDirections*(this: ptr QLayoutItem): Qt_Orientations {.header:headerFile, importcpp:"#.expandingDirections(@)".} # Public
import nimqt/qtcore/qrect
proc setGeometry*(this: ptr QLayoutItem, arg_0: QRect) {.header:headerFile, importcpp:"#.setGeometry(@)".} # Public
proc geometry*(this: ptr QLayoutItem): QRect {.header:headerFile, importcpp:"#.geometry(@)".} # Public
proc isEmpty*(this: ptr QLayoutItem): bool {.header:headerFile, importcpp:"#.isEmpty(@)".} # Public
proc hasHeightForWidth*(this: ptr QLayoutItem): bool {.header:headerFile, importcpp:"#.hasHeightForWidth(@)".} # Public
proc heightForWidth*(this: ptr QLayoutItem, arg_0: cint): cint {.header:headerFile, importcpp:"#.heightForWidth(@)".} # Public
proc minimumHeightForWidth*(this: ptr QLayoutItem, arg_0: cint): cint {.header:headerFile, importcpp:"#.minimumHeightForWidth(@)".} # Public
proc invalidate*(this: ptr QLayoutItem) {.header:headerFile, importcpp:"#.invalidate(@)".} # Public
proc spacerItem*(this: ptr QLayoutItem): ptr QSpacerItem {.header:headerFile, importcpp:"#.spacerItem(@)".} # Public
proc alignment*(this: ptr QLayoutItem): Qt_Alignment {.header:headerFile, importcpp:"#.alignment(@)".} # Public
proc setAlignment*(this: ptr QLayoutItem, a: Qt_Alignment) {.header:headerFile, importcpp:"#.setAlignment(@)".} # Public
import nimqt/qtwidgets/qsizepolicy
proc controlTypes*(this: ptr QLayoutItem): QSizePolicy_ControlTypes {.header:headerFile, importcpp:"#.controlTypes(@)".} # Public
# Stuff for class QSpacerItem

# Public constructors for QSpacerItem
proc newQSpacerItem*(w: cint, h: cint, hData: QSizePolicy_Policy, vData: QSizePolicy_Policy): ptr QSpacerItem {. header:headerFile, importcpp:"new QSpacerItem(@)" .} #

# Public methods for QSpacerItem
proc changeSize*(this: ptr QSpacerItem, w: cint, h: cint, hData: QSizePolicy_Policy, vData: QSizePolicy_Policy) {.header:headerFile, importcpp:"#.changeSize(@)".} # Public
proc sizeHint*(this: ptr QSpacerItem): QSize {.header:headerFile, importcpp:"#.sizeHint(@)".} # Public
proc minimumSize*(this: ptr QSpacerItem): QSize {.header:headerFile, importcpp:"#.minimumSize(@)".} # Public
proc maximumSize*(this: ptr QSpacerItem): QSize {.header:headerFile, importcpp:"#.maximumSize(@)".} # Public
proc expandingDirections*(this: ptr QSpacerItem): Qt_Orientations {.header:headerFile, importcpp:"#.expandingDirections(@)".} # Public
proc isEmpty*(this: ptr QSpacerItem): bool {.header:headerFile, importcpp:"#.isEmpty(@)".} # Public
proc setGeometry*(this: ptr QSpacerItem, arg_0: QRect) {.header:headerFile, importcpp:"#.setGeometry(@)".} # Public
proc geometry*(this: ptr QSpacerItem): QRect {.header:headerFile, importcpp:"#.geometry(@)".} # Public
proc spacerItem*(this: ptr QSpacerItem): ptr QSpacerItem {.header:headerFile, importcpp:"#.spacerItem(@)".} # Public
proc sizePolicy*(this: ptr QSpacerItem): QSizePolicy {.header:headerFile, importcpp:"#.sizePolicy(@)".} # Public
# Stuff for class QWidgetItem

# Public methods for QWidgetItem
proc sizeHint*(this: ptr QWidgetItem): QSize {.header:headerFile, importcpp:"#.sizeHint(@)".} # Public
proc minimumSize*(this: ptr QWidgetItem): QSize {.header:headerFile, importcpp:"#.minimumSize(@)".} # Public
proc maximumSize*(this: ptr QWidgetItem): QSize {.header:headerFile, importcpp:"#.maximumSize(@)".} # Public
proc expandingDirections*(this: ptr QWidgetItem): Qt_Orientations {.header:headerFile, importcpp:"#.expandingDirections(@)".} # Public
proc isEmpty*(this: ptr QWidgetItem): bool {.header:headerFile, importcpp:"#.isEmpty(@)".} # Public
proc setGeometry*(this: ptr QWidgetItem, arg_0: QRect) {.header:headerFile, importcpp:"#.setGeometry(@)".} # Public
proc geometry*(this: ptr QWidgetItem): QRect {.header:headerFile, importcpp:"#.geometry(@)".} # Public
proc hasHeightForWidth*(this: ptr QWidgetItem): bool {.header:headerFile, importcpp:"#.hasHeightForWidth(@)".} # Public
proc heightForWidth*(this: ptr QWidgetItem, arg_0: cint): cint {.header:headerFile, importcpp:"#.heightForWidth(@)".} # Public
proc minimumHeightForWidth*(this: ptr QWidgetItem, arg_0: cint): cint {.header:headerFile, importcpp:"#.minimumHeightForWidth(@)".} # Public
proc controlTypes*(this: ptr QWidgetItem): QSizePolicy_ControlTypes {.header:headerFile, importcpp:"#.controlTypes(@)".} # Public
# Stuff for class QWidgetItemV2

# Public methods for QWidgetItemV2
proc sizeHint*(this: ptr QWidgetItemV2): QSize {.header:headerFile, importcpp:"#.sizeHint(@)".} # Public
proc minimumSize*(this: ptr QWidgetItemV2): QSize {.header:headerFile, importcpp:"#.minimumSize(@)".} # Public
proc maximumSize*(this: ptr QWidgetItemV2): QSize {.header:headerFile, importcpp:"#.maximumSize(@)".} # Public
proc heightForWidth*(this: ptr QWidgetItemV2, width: cint): cint {.header:headerFile, importcpp:"#.heightForWidth(@)".} # Public

export qsize
export qsizepolicy
export qnamespace
export qrect
