const headerFile* = "QtWidgets/qstyleditemdelegate.h"

import nimqt/qtwidgets/qabstractitemdelegate
type
    # Classes found in the C++ code
    QStyledItemDelegate* {.header:headerFile,importcpp:"QStyledItemDelegate" ,pure.} = object of QAbstractItemDelegate


type
    # typedefs found in the C++ code
    QStyledItemDelegate_EndEditHint * = QAbstractItemDelegate_EndEditHint

# Stuff for class QStyledItemDelegate

# Public constructors for QStyledItemDelegate
import nimqt/qtcore/qobject
# 1 default parameters!
proc newQStyledItemDelegate*(parent: ptr QObject): ptr QStyledItemDelegate {. header:headerFile, importcpp:"new QStyledItemDelegate(@)" .} #
proc newQStyledItemDelegate*(): ptr QStyledItemDelegate {. header:headerFile, importcpp:"new QStyledItemDelegate(@)" .} #

# Public methods for QStyledItemDelegate
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QStyledItemDelegate_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QStyledItemDelegate::tr(@)".} # Public static
proc static_QStyledItemDelegate_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QStyledItemDelegate::tr(@)".} # Public static
import nimqt/qtcore/qabstractitemmodel
import nimqt/qtwidgets/qwidget
proc setEditorData*(this: ptr QStyledItemDelegate, editor: ptr QWidget, index: QModelIndex) {.header:headerFile, importcpp:"#.setEditorData(@)".} # Public
proc setModelData*(this: ptr QStyledItemDelegate, editor: ptr QWidget, model: ptr QAbstractItemModel, index: QModelIndex) {.header:headerFile, importcpp:"#.setModelData(@)".} # Public
import nimqt/qtwidgets/qitemeditorfactory
proc itemEditorFactory*(this: ptr QStyledItemDelegate): ptr QItemEditorFactory {.header:headerFile, importcpp:"#.itemEditorFactory(@)".} # Public
proc setItemEditorFactory*(this: ptr QStyledItemDelegate, factory: ptr QItemEditorFactory) {.header:headerFile, importcpp:"#.setItemEditorFactory(@)".} # Public
import nimqt/qtcore/qlocale
import nimqt/qtcore/qvariant
proc displayText*(this: ptr QStyledItemDelegate, value: QVariant, locale: QLocale): QString {.header:headerFile, importcpp:"#.displayText(@)".} # Public

# Protected methods methods for QStyledItemDelegate
import nimqt/qtcore/qcoreevent
proc eventFilter*(this: ptr QStyledItemDelegate, `object`: ptr QObject, event: ptr QEvent): bool {.header:headerFile, importcpp:"#.eventFilter(@)".} # Protected

export qstring
export qlocale
export qabstractitemmodel
export qabstractitemdelegate
export qvariant
export qwidget
export qobject
export qcoreevent
export qitemeditorfactory
