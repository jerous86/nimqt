const headerFile* = "QtWidgets/qabstractitemdelegate.h"

type
    # Enums found in the C++ code
    # Global
    QAbstractItemDelegate_EndEditHint* {.header:headerFile,importcpp:"QAbstractItemDelegate::EndEditHint".} = enum NoHint = 0, EditNextItem = 0x1, EditPreviousItem = 0x2, SubmitModelCache = 0x3, 
        RevertModelCache = 0x4

import nimqt/qtcore/qobject
type
    # Classes found in the C++ code
    QAbstractItemDelegate* {.header:headerFile,importcpp:"QAbstractItemDelegate" ,pure.} = object of QObject

# Stuff for class QAbstractItemDelegate

# Public constructors for QAbstractItemDelegate
# 1 default parameters!
proc newQAbstractItemDelegate*(parent: ptr QObject): ptr QAbstractItemDelegate {. header:headerFile, importcpp:"new QAbstractItemDelegate(@)" .} #
proc newQAbstractItemDelegate*(): ptr QAbstractItemDelegate {. header:headerFile, importcpp:"new QAbstractItemDelegate(@)" .} #

# Public methods for QAbstractItemDelegate
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QAbstractItemDelegate_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QAbstractItemDelegate::tr(@)".} # Public static
proc static_QAbstractItemDelegate_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QAbstractItemDelegate::tr(@)".} # Public static
import nimqt/qtcore/qabstractitemmodel
import nimqt/qtwidgets/qwidget
proc destroyEditor*(this: ptr QAbstractItemDelegate, editor: ptr QWidget, index: QModelIndex) {.header:headerFile, importcpp:"#.destroyEditor(@)".} # Public
proc setEditorData*(this: ptr QAbstractItemDelegate, editor: ptr QWidget, index: QModelIndex) {.header:headerFile, importcpp:"#.setEditorData(@)".} # Public
proc setModelData*(this: ptr QAbstractItemDelegate, editor: ptr QWidget, model: ptr QAbstractItemModel, index: QModelIndex) {.header:headerFile, importcpp:"#.setModelData(@)".} # Public
import nimqt/qtcore/qlist
proc paintingRoles*(this: ptr QAbstractItemDelegate): QList[cint] {.header:headerFile, importcpp:"#.paintingRoles(@)".} # Public
proc commitData*(this: ptr QAbstractItemDelegate, editor: ptr QWidget) {.header:headerFile, importcpp:"#.commitData(@)".} # Public
proc closeEditor*(this: ptr QAbstractItemDelegate, editor: ptr QWidget, hint: QAbstractItemDelegate_EndEditHint) {.header:headerFile, importcpp:"#.closeEditor(@)".} # Public
proc sizeHintChanged*(this: ptr QAbstractItemDelegate, arg_0: QModelIndex) {.header:headerFile, importcpp:"#.sizeHintChanged(@)".} # Public

export qstring
export qlist
export qabstractitemmodel
export qwidget
export qobject
