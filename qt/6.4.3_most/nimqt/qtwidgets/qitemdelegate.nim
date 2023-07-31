const headerFile* = "QtWidgets/qitemdelegate.h"

import nimqt/qtwidgets/qabstractitemdelegate
type
    # Classes found in the C++ code
    QItemDelegate* {.header:headerFile,importcpp:"QItemDelegate" ,pure.} = object of QAbstractItemDelegate


type
    # typedefs found in the C++ code
    QItemDelegate_EndEditHint * = QAbstractItemDelegate_EndEditHint

# Stuff for class QItemDelegate

# Public constructors for QItemDelegate
import nimqt/qtcore/qobject
# 1 default parameters!
proc newQItemDelegate*(parent: ptr QObject): ptr QItemDelegate {. header:headerFile, importcpp:"new QItemDelegate(@)" .} #
proc newQItemDelegate*(): ptr QItemDelegate {. header:headerFile, importcpp:"new QItemDelegate(@)" .} #

# Public methods for QItemDelegate
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QItemDelegate_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QItemDelegate::tr(@)".} # Public static
proc static_QItemDelegate_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QItemDelegate::tr(@)".} # Public static
proc hasClipping*(this: ptr QItemDelegate): bool {.header:headerFile, importcpp:"#.hasClipping(@)".} # Public
proc setClipping*(this: ptr QItemDelegate, clip: bool) {.header:headerFile, importcpp:"#.setClipping(@)".} # Public
import nimqt/qtcore/qabstractitemmodel
import nimqt/qtwidgets/qwidget
proc setEditorData*(this: ptr QItemDelegate, editor: ptr QWidget, index: QModelIndex) {.header:headerFile, importcpp:"#.setEditorData(@)".} # Public
proc setModelData*(this: ptr QItemDelegate, editor: ptr QWidget, model: ptr QAbstractItemModel, index: QModelIndex) {.header:headerFile, importcpp:"#.setModelData(@)".} # Public
import nimqt/qtwidgets/qitemeditorfactory
proc itemEditorFactory*(this: ptr QItemDelegate): ptr QItemEditorFactory {.header:headerFile, importcpp:"#.itemEditorFactory(@)".} # Public
proc setItemEditorFactory*(this: ptr QItemDelegate, factory: ptr QItemEditorFactory) {.header:headerFile, importcpp:"#.setItemEditorFactory(@)".} # Public

# Protected methods methods for QItemDelegate
import nimqt/qtcore/qcoreevent
proc eventFilter*(this: ptr QItemDelegate, `object`: ptr QObject, event: ptr QEvent): bool {.header:headerFile, importcpp:"#.eventFilter(@)".} # Protected
import nimqt/qtgui/qpixmap
import nimqt/qtgui/qpalette
proc static_QItemDelegate_selectedPixmap*(pixmap: QPixmap, palette: QPalette, enabled: bool): QPixmap {.header:headerFile, importcpp:"QItemDelegate::selectedPixmap(@)".} # Protected static
import nimqt/qtgui/qfont
import nimqt/qtgui/qpainter
import nimqt/qtcore/qrect
proc textRectangle*(this: ptr QItemDelegate, painter: ptr QPainter, rect: QRect, font: QFont, text: QString): QRect {.header:headerFile, importcpp:"#.textRectangle(@)".} # Protected

export qpixmap
export qfont
export qstring
export qabstractitemmodel
export qabstractitemdelegate
export qpainter
export qwidget
export qrect
export qobject
export qcoreevent
export qpalette
export qitemeditorfactory
