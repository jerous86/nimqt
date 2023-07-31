const headerFile* = "QtGui/qdrag.h"

import nimqt/qtcore/qobject
type
    # Classes found in the C++ code
    QDrag* {.header:headerFile,importcpp:"QDrag" ,pure.} = object of QObject

# Stuff for class QDrag

# Public constructors for QDrag
proc newQDrag*(dragSource: ptr QObject): ptr QDrag {. header:headerFile, importcpp:"new QDrag(@)" .} #

# Public methods for QDrag
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QDrag_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QDrag::tr(@)".} # Public static
proc static_QDrag_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QDrag::tr(@)".} # Public static
import nimqt/qtcore/qmimedata
proc setMimeData*(this: ptr QDrag, data: ptr QMimeData) {.header:headerFile, importcpp:"#.setMimeData(@)".} # Public
proc mimeData*(this: ptr QDrag): ptr QMimeData {.header:headerFile, importcpp:"#.mimeData(@)".} # Public
import nimqt/qtgui/qpixmap
proc setPixmap*(this: ptr QDrag, arg_0: QPixmap) {.header:headerFile, importcpp:"#.setPixmap(@)".} # Public
proc pixmap*(this: ptr QDrag): QPixmap {.header:headerFile, importcpp:"#.pixmap(@)".} # Public
import nimqt/qtcore/qpoint
proc setHotSpot*(this: ptr QDrag, hotspot: QPoint) {.header:headerFile, importcpp:"#.setHotSpot(@)".} # Public
proc hotSpot*(this: ptr QDrag): QPoint {.header:headerFile, importcpp:"#.hotSpot(@)".} # Public
proc source*(this: ptr QDrag): ptr QObject {.header:headerFile, importcpp:"#.source(@)".} # Public
proc target*(this: ptr QDrag): ptr QObject {.header:headerFile, importcpp:"#.target(@)".} # Public
import nimqt/qtcore/qnamespace
# 1 default parameters!
proc exec*(this: ptr QDrag, supportedActions: Qt_DropActions): Qt_DropAction {.header:headerFile, importcpp:"#.exec(@)".} # Public
proc exec*(this: ptr QDrag): Qt_DropAction {.header:headerFile, importcpp:"#.exec(@)".} # Public
proc exec*(this: ptr QDrag, supportedActions: Qt_DropActions, defaultAction: Qt_DropAction): Qt_DropAction {.header:headerFile, importcpp:"#.exec(@)".} # Public
proc setDragCursor*(this: ptr QDrag, cursor: QPixmap, action: Qt_DropAction) {.header:headerFile, importcpp:"#.setDragCursor(@)".} # Public
proc dragCursor*(this: ptr QDrag, action: Qt_DropAction): QPixmap {.header:headerFile, importcpp:"#.dragCursor(@)".} # Public
proc supportedActions*(this: ptr QDrag): Qt_DropActions {.header:headerFile, importcpp:"#.supportedActions(@)".} # Public
proc defaultAction*(this: ptr QDrag): Qt_DropAction {.header:headerFile, importcpp:"#.defaultAction(@)".} # Public
proc static_QDrag_cancel*() {.header:headerFile, importcpp:"QDrag::cancel(@)".} # Public static
proc actionChanged*(this: ptr QDrag, action: Qt_DropAction) {.header:headerFile, importcpp:"#.actionChanged(@)".} # Public
proc targetChanged*(this: ptr QDrag, newTarget: ptr QObject) {.header:headerFile, importcpp:"#.targetChanged(@)".} # Public

export qpixmap
export qstring
export qnamespace
export qmimedata
export qpoint
export qobject
