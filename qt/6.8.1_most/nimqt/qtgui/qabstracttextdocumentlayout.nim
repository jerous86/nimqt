const headerFile* = "QtGui/qabstracttextdocumentlayout.h"

import nimqt/qtcore/qobject
type
    # Classes found in the C++ code
    QAbstractTextDocumentLayout* {.header:headerFile,importcpp:"QAbstractTextDocumentLayout" ,pure.} = object of QObject
    QAbstractTextDocumentLayout_Selection* {.header:headerFile,importcpp:"QAbstractTextDocumentLayout::Selection" ,pure,inheritable.} = object
    QAbstractTextDocumentLayout_PaintContext* {.header:headerFile,importcpp:"QAbstractTextDocumentLayout::PaintContext" ,pure,inheritable.} = object
    QTextObjectInterface* {.header:headerFile,importcpp:"QTextObjectInterface" ,pure,inheritable.} = object

# Stuff for class QAbstractTextDocumentLayout

# Public constructors for QAbstractTextDocumentLayout
import nimqt/qtgui/qtextdocument
proc newQAbstractTextDocumentLayout*(doc: ptr QTextDocument): ptr QAbstractTextDocumentLayout {. header:headerFile, importcpp:"new QAbstractTextDocumentLayout(@)" .} #

# Public methods for QAbstractTextDocumentLayout
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QAbstractTextDocumentLayout_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QAbstractTextDocumentLayout::tr(@)".} # Public static
proc static_QAbstractTextDocumentLayout_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QAbstractTextDocumentLayout::tr(@)".} # Public static
import nimqt/qtgui/qpainter
proc draw*(this: ptr QAbstractTextDocumentLayout, painter: ptr QPainter, context: QAbstractTextDocumentLayout_PaintContext) {.header:headerFile, importcpp:"#.draw(@)".} # Public
import nimqt/qtcore/qnamespace
import nimqt/qtcore/qpoint
proc hitTest*(this: ptr QAbstractTextDocumentLayout, point: QPointF, accuracy: Qt_HitTestAccuracy): cint {.header:headerFile, importcpp:"#.hitTest(@)".} # Public
proc anchorAt*(this: ptr QAbstractTextDocumentLayout, pos: QPointF): QString {.header:headerFile, importcpp:"#.anchorAt(@)".} # Public
proc imageAt*(this: ptr QAbstractTextDocumentLayout, pos: QPointF): QString {.header:headerFile, importcpp:"#.imageAt(@)".} # Public
import nimqt/qtgui/qtextformat
proc formatAt*(this: ptr QAbstractTextDocumentLayout, pos: QPointF): QTextFormat {.header:headerFile, importcpp:"#.formatAt(@)".} # Public
import nimqt/qtgui/qtextobject
proc blockWithMarkerAt*(this: ptr QAbstractTextDocumentLayout, pos: QPointF): QTextBlock {.header:headerFile, importcpp:"#.blockWithMarkerAt(@)".} # Public
proc pageCount*(this: ptr QAbstractTextDocumentLayout): cint {.header:headerFile, importcpp:"#.pageCount(@)".} # Public
import nimqt/qtcore/qsize
proc documentSize*(this: ptr QAbstractTextDocumentLayout): QSizeF {.header:headerFile, importcpp:"#.documentSize(@)".} # Public
import nimqt/qtcore/qrect
proc frameBoundingRect*(this: ptr QAbstractTextDocumentLayout, frame: ptr QTextFrame): QRectF {.header:headerFile, importcpp:"#.frameBoundingRect(@)".} # Public
proc blockBoundingRect*(this: ptr QAbstractTextDocumentLayout, `block`: QTextBlock): QRectF {.header:headerFile, importcpp:"#.blockBoundingRect(@)".} # Public
import nimqt/qtgui/qpaintdevice
proc setPaintDevice*(this: ptr QAbstractTextDocumentLayout, device: ptr QPaintDevice) {.header:headerFile, importcpp:"#.setPaintDevice(@)".} # Public
proc paintDevice*(this: ptr QAbstractTextDocumentLayout): ptr QPaintDevice {.header:headerFile, importcpp:"#.paintDevice(@)".} # Public
proc document*(this: ptr QAbstractTextDocumentLayout): ptr QTextDocument {.header:headerFile, importcpp:"#.document(@)".} # Public
proc registerHandler*(this: ptr QAbstractTextDocumentLayout, objectType: cint, component: ptr QObject) {.header:headerFile, importcpp:"#.registerHandler(@)".} # Public
# 1 default parameters!
proc unregisterHandler*(this: ptr QAbstractTextDocumentLayout, objectType: cint, component: ptr QObject) {.header:headerFile, importcpp:"#.unregisterHandler(@)".} # Public
proc unregisterHandler*(this: ptr QAbstractTextDocumentLayout, objectType: cint) {.header:headerFile, importcpp:"#.unregisterHandler(@)".} # Public
proc handlerForObject*(this: ptr QAbstractTextDocumentLayout, objectType: cint): ptr QTextObjectInterface {.header:headerFile, importcpp:"#.handlerForObject(@)".} # Public
# 1 default parameters!
proc update*(this: ptr QAbstractTextDocumentLayout, arg_0: QRectF) {.header:headerFile, importcpp:"#.update(@)".} # Public
proc update*(this: ptr QAbstractTextDocumentLayout) {.header:headerFile, importcpp:"#.update(@)".} # Public
proc updateBlock*(this: ptr QAbstractTextDocumentLayout, `block`: QTextBlock) {.header:headerFile, importcpp:"#.updateBlock(@)".} # Public
proc documentSizeChanged*(this: ptr QAbstractTextDocumentLayout, newSize: QSizeF) {.header:headerFile, importcpp:"#.documentSizeChanged(@)".} # Public
proc pageCountChanged*(this: ptr QAbstractTextDocumentLayout, newPages: cint) {.header:headerFile, importcpp:"#.pageCountChanged(@)".} # Public

# Protected methods methods for QAbstractTextDocumentLayout
proc documentChanged*(this: ptr QAbstractTextDocumentLayout, `from`: cint, charsRemoved: cint, charsAdded: cint) {.header:headerFile, importcpp:"#.documentChanged(@)".} # Protected
import nimqt/qtgui/qtextlayout
proc resizeInlineObject*(this: ptr QAbstractTextDocumentLayout, item: QTextInlineObject, posInDocument: cint, format: QTextFormat) {.header:headerFile, importcpp:"#.resizeInlineObject(@)".} # Protected
proc positionInlineObject*(this: ptr QAbstractTextDocumentLayout, item: QTextInlineObject, posInDocument: cint, format: QTextFormat) {.header:headerFile, importcpp:"#.positionInlineObject(@)".} # Protected
proc drawInlineObject*(this: ptr QAbstractTextDocumentLayout, painter: ptr QPainter, rect: QRectF, `object`: QTextInlineObject, posInDocument: cint, format: QTextFormat) {.header:headerFile, importcpp:"#.drawInlineObject(@)".} # Protected
proc formatIndex*(this: ptr QAbstractTextDocumentLayout, pos: cint): cint {.header:headerFile, importcpp:"#.formatIndex(@)".} # Protected
proc format*(this: ptr QAbstractTextDocumentLayout, pos: cint): QTextCharFormat {.header:headerFile, importcpp:"#.format(@)".} # Protected
# Stuff for class QAbstractTextDocumentLayout_PaintContext

# Public constructors for QAbstractTextDocumentLayout_PaintContext
proc newQAbstractTextDocumentLayout_PaintContext*(): QAbstractTextDocumentLayout_PaintContext {. header:headerFile, importcpp:"QAbstractTextDocumentLayout_PaintContext(@)", constructor .} #
# Stuff for class QTextObjectInterface

# Public methods for QTextObjectInterface
proc intrinsicSize*(this: QTextObjectInterface, doc: ptr QTextDocument, posInDocument: cint, format: QTextFormat): QSizeF {.header:headerFile, importcpp:"#.intrinsicSize(@)".} # Public
proc drawObject*(this: QTextObjectInterface, painter: ptr QPainter, rect: QRectF, doc: ptr QTextDocument, posInDocument: cint, format: QTextFormat) {.header:headerFile, importcpp:"#.drawObject(@)".} # Public

export qtextlayout
export qtextformat
export qstring
export qsize
export qnamespace
export qtextobject
export qpainter
export qpoint
export qrect
export qobject
export qpaintdevice
export qtextdocument
