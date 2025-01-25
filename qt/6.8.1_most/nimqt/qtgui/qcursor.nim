const headerFile* = "QtGui/qcursor.h"

type
    # Classes found in the C++ code
    QCursor* {.header:headerFile,importcpp:"QCursor" ,pure,inheritable.} = object

# Stuff for class QCursor

# Public constructors for QCursor
proc newQCursor*(): QCursor {. header:headerFile, importcpp:"QCursor(@)", constructor .} #
import nimqt/qtcore/qnamespace
proc newQCursor*(shape: Qt_CursorShape): QCursor {. header:headerFile, importcpp:"QCursor(@)", constructor .} #
import nimqt/qtgui/qbitmap
proc newQCursor*(bitmap: QBitmap, mask: QBitmap, hotX: cint, hotY: cint): QCursor {. header:headerFile, importcpp:"QCursor(@)", constructor .} #
import nimqt/qtgui/qpixmap
proc newQCursor*(pixmap: QPixmap, hotX: cint, hotY: cint): QCursor {. header:headerFile, importcpp:"QCursor(@)", constructor .} #
proc newQCursor*(cursor: QCursor): QCursor {. header:headerFile, importcpp:"QCursor(@)", constructor .} #
proc newQCursor*(other: QCursor): QCursor {. header:headerFile, importcpp:"QCursor(@)", constructor .} #

# Public methods for QCursor
proc swap*(this: QCursor, other: QCursor) {.header:headerFile, importcpp:"#.swap(@)".} # Public
proc shape*(this: QCursor): Qt_CursorShape {.header:headerFile, importcpp:"#.shape(@)".} # Public
proc setShape*(this: QCursor, newShape: Qt_CursorShape) {.header:headerFile, importcpp:"#.setShape(@)".} # Public
proc bitmap*(this: QCursor, arg_1: Qt_ReturnByValueConstant): QBitmap {.header:headerFile, importcpp:"#.bitmap(@)".} # Public
proc mask*(this: QCursor, arg_1: Qt_ReturnByValueConstant): QBitmap {.header:headerFile, importcpp:"#.mask(@)".} # Public
proc bitmap*(this: QCursor): QBitmap {.header:headerFile, importcpp:"#.bitmap(@)".} # Public
proc mask*(this: QCursor): QBitmap {.header:headerFile, importcpp:"#.mask(@)".} # Public
proc pixmap*(this: QCursor): QPixmap {.header:headerFile, importcpp:"#.pixmap(@)".} # Public
import nimqt/qtcore/qpoint
proc hotSpot*(this: QCursor): QPoint {.header:headerFile, importcpp:"#.hotSpot(@)".} # Public
proc static_QCursor_pos*(): QPoint {.header:headerFile, importcpp:"QCursor::pos(@)".} # Public static
import nimqt/qtgui/qscreen
proc static_QCursor_pos*(screen: ptr QScreen): QPoint {.header:headerFile, importcpp:"QCursor::pos(@)".} # Public static
proc static_QCursor_setPos*(x: cint, y: cint) {.header:headerFile, importcpp:"QCursor::setPos(@)".} # Public static
proc static_QCursor_setPos*(screen: ptr QScreen, x: cint, y: cint) {.header:headerFile, importcpp:"QCursor::setPos(@)".} # Public static
proc static_QCursor_setPos*(p: QPoint) {.header:headerFile, importcpp:"QCursor::setPos(@)".} # Public static
proc static_QCursor_setPos*(screen: ptr QScreen, p: QPoint) {.header:headerFile, importcpp:"QCursor::setPos(@)".} # Public static

export qpixmap
export qscreen
export qbitmap
export qnamespace
export qpoint
