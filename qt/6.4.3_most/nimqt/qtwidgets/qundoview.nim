const headerFile* = "QtWidgets/qundoview.h"

import nimqt/qtwidgets/qlistview
type
    # Classes found in the C++ code
    QUndoView* {.header:headerFile,importcpp:"QUndoView" ,pure.} = object of QListView
import nimqt/qtwidgets/qabstractitemview
import nimqt/qtwidgets/qabstractscrollarea
import nimqt/qtwidgets/qframe
import nimqt/qtwidgets/qwidget
import nimqt/qtgui/qpaintdevice


type
    # typedefs found in the C++ code
    QUndoView_Movement * = QListView_Movement
    QUndoView_Flow * = QListView_Flow
    QUndoView_ResizeMode * = QListView_ResizeMode
    QUndoView_LayoutMode * = QListView_LayoutMode
    QUndoView_ViewMode * = QListView_ViewMode
    QUndoView_SelectionMode * = QAbstractItemView_SelectionMode
    QUndoView_SelectionBehavior * = QAbstractItemView_SelectionBehavior
    QUndoView_ScrollHint * = QAbstractItemView_ScrollHint
    QUndoView_EditTrigger * = QAbstractItemView_EditTrigger
    QUndoView_ScrollMode * = QAbstractItemView_ScrollMode
    QUndoView_DragDropMode * = QAbstractItemView_DragDropMode
    QUndoView_CursorAction * = QAbstractItemView_CursorAction
    QUndoView_State * = QAbstractItemView_State
    QUndoView_DropIndicatorPosition * = QAbstractItemView_DropIndicatorPosition
    QUndoView_EditTriggers * = QAbstractItemView_EditTriggers
    QUndoView_SizeAdjustPolicy * = QAbstractScrollArea_SizeAdjustPolicy
    QUndoView_Shape * = QFrame_Shape
    QUndoView_Shadow * = QFrame_Shadow
    QUndoView_StyleMask * = QFrame_StyleMask
    QUndoView_RenderFlag * = QWidget_RenderFlag
    QUndoView_RenderFlags * = QWidget_RenderFlags
    QUndoView_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric

# Stuff for class QUndoView

# Public constructors for QUndoView
# 1 default parameters!
proc newQUndoView*(parent: ptr QWidget): ptr QUndoView {. header:headerFile, importcpp:"new QUndoView(@)" .} #
proc newQUndoView*(): ptr QUndoView {. header:headerFile, importcpp:"new QUndoView(@)" .} #
import nimqt/qtgui/qundostack
# 1 default parameters!
proc newQUndoView*(stack: ptr QUndoStack, parent: ptr QWidget): ptr QUndoView {. header:headerFile, importcpp:"new QUndoView(@)" .} #
proc newQUndoView*(stack: ptr QUndoStack): ptr QUndoView {. header:headerFile, importcpp:"new QUndoView(@)" .} #
import nimqt/qtgui/qundogroup
# 1 default parameters!
proc newQUndoView*(group: ptr QUndoGroup, parent: ptr QWidget): ptr QUndoView {. header:headerFile, importcpp:"new QUndoView(@)" .} #
proc newQUndoView*(group: ptr QUndoGroup): ptr QUndoView {. header:headerFile, importcpp:"new QUndoView(@)" .} #

# Public methods for QUndoView
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QUndoView_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QUndoView::tr(@)".} # Public static
proc static_QUndoView_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QUndoView::tr(@)".} # Public static
proc stack*(this: ptr QUndoView): ptr QUndoStack {.header:headerFile, importcpp:"#.stack(@)".} # Public
proc group*(this: ptr QUndoView): ptr QUndoGroup {.header:headerFile, importcpp:"#.group(@)".} # Public
proc setEmptyLabel*(this: ptr QUndoView, label: QString) {.header:headerFile, importcpp:"#.setEmptyLabel(@)".} # Public
proc emptyLabel*(this: ptr QUndoView): QString {.header:headerFile, importcpp:"#.emptyLabel(@)".} # Public
import nimqt/qtgui/qicon
proc setCleanIcon*(this: ptr QUndoView, icon: QIcon) {.header:headerFile, importcpp:"#.setCleanIcon(@)".} # Public
proc cleanIcon*(this: ptr QUndoView): QIcon {.header:headerFile, importcpp:"#.cleanIcon(@)".} # Public
proc setStack*(this: ptr QUndoView, stack: ptr QUndoStack) {.header:headerFile, importcpp:"#.setStack(@)".} # Public
proc setGroup*(this: ptr QUndoView, group: ptr QUndoGroup) {.header:headerFile, importcpp:"#.setGroup(@)".} # Public

export qstring
export qabstractitemview
export qabstractscrollarea
export qundostack
export qlistview
export qundogroup
export qwidget
export qpaintdevice
export qframe
export qicon
