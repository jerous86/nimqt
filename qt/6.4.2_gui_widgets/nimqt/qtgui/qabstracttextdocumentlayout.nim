const headerFile* = "QtGui/qabstracttextdocumentlayout.h"

import nimqt/qtcore/qobject
# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}


type
    # Classes and enums found in the C++ code
    QAbstractTextDocumentLayout* {.header:headerFile,importcpp:"QAbstractTextDocumentLayout" ,pure.} = object of QObject
    QAbstractTextDocumentLayout_Selection* {.header:headerFile,importcpp:"QAbstractTextDocumentLayout::Selection" ,pure.} = object {.inheritable.}
    QAbstractTextDocumentLayout_PaintContext* {.header:headerFile,importcpp:"QAbstractTextDocumentLayout::PaintContext" ,pure.} = object {.inheritable.}
    QTextObjectInterface* {.header:headerFile,importcpp:"QTextObjectInterface" ,pure.} = object {.inheritable.}
{.push warning[Deprecated]: on.}

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
proc pageCount*(this: ptr QAbstractTextDocumentLayout): cint {.header:headerFile, importcpp:"#.pageCount(@)".} # Public
import nimqt/qtgui/qpaintdevice
proc setPaintDevice*(this: ptr QAbstractTextDocumentLayout, device: ptr QPaintDevice) {.header:headerFile, importcpp:"#.setPaintDevice(@)".} # Public
proc paintDevice*(this: ptr QAbstractTextDocumentLayout): ptr QPaintDevice {.header:headerFile, importcpp:"#.paintDevice(@)".} # Public
proc document*(this: ptr QAbstractTextDocumentLayout): ptr QTextDocument {.header:headerFile, importcpp:"#.document(@)".} # Public
proc registerHandler*(this: ptr QAbstractTextDocumentLayout, objectType: cint, component: ptr QObject) {.header:headerFile, importcpp:"#.registerHandler(@)".} # Public
# 1 default parameters!
proc unregisterHandler*(this: ptr QAbstractTextDocumentLayout, objectType: cint, component: ptr QObject) {.header:headerFile, importcpp:"#.unregisterHandler(@)".} # Public
proc unregisterHandler*(this: ptr QAbstractTextDocumentLayout, objectType: cint) {.header:headerFile, importcpp:"#.unregisterHandler(@)".} # Public
proc handlerForObject*(this: ptr QAbstractTextDocumentLayout, objectType: cint): ptr QTextObjectInterface {.header:headerFile, importcpp:"#.handlerForObject(@)".} # Public
import nimqt/qtgui/qtextobject
proc updateBlock*(this: ptr QAbstractTextDocumentLayout, `block`: QTextBlock) {.header:headerFile, importcpp:"#.updateBlock(@)".} # Public
proc pageCountChanged*(this: ptr QAbstractTextDocumentLayout, newPages: cint) {.header:headerFile, importcpp:"#.pageCountChanged(@)".} # Public

# Protected methods methods for QAbstractTextDocumentLayout
proc documentChanged*(this: ptr QAbstractTextDocumentLayout, `from`: cint, charsRemoved: cint, charsAdded: cint) {.header:headerFile, importcpp:"#.documentChanged(@)".} # Protected
import nimqt/qtgui/qtextlayout
import nimqt/qtgui/qtextformat
proc resizeInlineObject*(this: ptr QAbstractTextDocumentLayout, item: QTextInlineObject, posInDocument: cint, format: QTextFormat) {.header:headerFile, importcpp:"#.resizeInlineObject(@)".} # Protected
proc positionInlineObject*(this: ptr QAbstractTextDocumentLayout, item: QTextInlineObject, posInDocument: cint, format: QTextFormat) {.header:headerFile, importcpp:"#.positionInlineObject(@)".} # Protected
proc formatIndex*(this: ptr QAbstractTextDocumentLayout, pos: cint): cint {.header:headerFile, importcpp:"#.formatIndex(@)".} # Protected
proc format*(this: ptr QAbstractTextDocumentLayout, pos: cint): QTextCharFormat {.header:headerFile, importcpp:"#.format(@)".} # Protected
# Stuff for class QAbstractTextDocumentLayout_PaintContext

# Public constructors for QAbstractTextDocumentLayout_PaintContext
proc newQAbstractTextDocumentLayout_PaintContext*(): QAbstractTextDocumentLayout_PaintContext {. header:headerFile, importcpp:"QAbstractTextDocumentLayout_PaintContext(@)", constructor .} #

export qtextlayout
export qtextformat
export qstring
export qtextobject
export qpainter
export qobject
export qpaintdevice
export qtextdocument