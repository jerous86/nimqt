import math

import nimqt
import nimqt/[qplaintextedit,qwidget]
import nimqt/qtgui/qtextformat

export qplaintextedit

nimqt.init

# Code adapted from https://doc.qt.io/qt-5/qtwidgets-widgets-codeeditor-example.html

QTextBlock.registerArgType
QRect.registerArgType

# TODO nimqt:381 should use typeDb
inheritQObject(CodeViewer, QPlainTextEdit):
    var lineNumberArea: ptr QWidget # define it as a widget, to avoid recursive dependency
    override_defer resizeEvent(e:ptr QResizeEvent):
        this.parent_resizeEvent(e)
        let cr=this.contentsRect()
        this.lineNumberArea.setGeometry(newQRect(cr.left, cr.top, this.lineNumberAreaWidth.cint, cr.height))
    
    slot_defer highlightCurrentLine():
        if not this.isReadOnly():
            var extraSelections=newQList[qtextedit.QTextEdit_ExtraSelection]()
            # TODO support format
            #var selection:qtextedit.QTextEdit_ExtraSelection
            #selection.format.setBackground(newQColor(Qt_GlobalColor.yellow).lighter(160))
            #selection.format.setProperty(FullWidthSelection, true)
            #selection.cursor.clearSelection()
            this.setExtraSelections(extraSelections)
    
    slot_defer updateLineNumberAreaWidth(newBlockCount:int) :
        this.doSetViewportMargins(this.lineNumberAreaWidth.cint, 0.cint, 0.cint, 0.cint)
    
    slot_defer updateLineNumberArea(rect:const_var QRect, dy:int):
        if dy!=0: this.lineNumberArea.scroll(0.cint, dy.cint)
        else: this.lineNumberArea.update(0.cint, rect.y, this.lineNumberArea.width, rect.height)
        
        if rect.contains(this.viewport.rect): this.updateLineNumberAreaWidth(0)
    
    # We declare these as "members". They will receive a "friend" status, so within this "member" function
    # we can call protected functions for this class.
    # NOTE: QWidget's get_sender could also be implemented like this, but for convenience, we added it to the
    # core of nimqt.
    member getFirstVisisbleBlock(): QTextBlock: this.firstVisibleBlock
    member getContentOffset(): QPointF: this.contentOffset
    member getBlockBoundingGeometry(tblock:ptr QTextBlock): QRectF: this.blockBoundingGeometry(tblock[])
    member getBlockBoundingRect(tblock:ptr QTextBlock): QRectF: this.blockBoundingRect(tblock[])
    member doSetViewportMargins(left:int,top:int,right:int,bot:int): this.setViewportMargins(left,top,right,bot)

proc lineNumberAreaWidth(this:ptr CodeViewer, charWidth=20):int = (log(max(1,this.blockCount.int).float,charWidth.float)*charWidth.float).int

proc lineNumberAreaPaintEvent(this:ptr CodeViewer, e: ptr QPaintEvent) =
    const
        HEIGHT=12
        LINE_OFFSET=0
    let painter=newQPainter(cast[ptr QPaintDevice](this.lineNumberArea))
    painter.fillRect(e.rect, lightGray)
    
    var
        tblock=this.getFirstVisisbleBlock
        blockNumber=tblock.blockNumber
        top=this.getBlockBoundingGeometry(tblock.addr).translated(this.getContentOffset).top
        bottom=top+this.getBlockBoundingRect(tblock.addr).height
    
    painter.setPen(newQColor(Qt_GlobalColor.black))
    while tblock.isValid and top<e.rect.bottom.cfloat:
        if tblock.isVisible and bottom >= e.rect.top.cfloat:
            painter.drawText(0.cint, top.cint, this.lineNumberArea.width.cint, HEIGHT.cint, AlignRight.cint, Q($(blockNumber+LINE_OFFSET)))
        tblock=tblock.next
        top=bottom
        bottom=top+this.getBlockBoundingRect(tblock.addr).height
        blockNumber.inc
    discard painter.end()
    



inheritQObject(LineNumberArea, QWidget):
    var viewer:pointer # It is less hassle to just declare it as a pointer, and cast it to a CodeViewer when needed.
    
    const_override_defer sizeHint(): QSize:
        newQSize(cast[ptr CodeViewer](this.viewer).lineNumberAreaWidth().cint, 0.cint)
        
    override_defer paintEvent(e: ptr QPaintEvent):
        cast[ptr CodeViewer](this.viewer).lineNumberAreaPaintEvent(e)


proc newCodeViewer2*(): ptr CodeViewer =
    result=newCodeViewer()
    result.lineNumberArea=newLineNumberArea()
    cast[ptr LineNumberArea](result.lineNumberArea).viewer=cast[pointer](result)
    result.lineNumberArea.setParent(result)
    
    result.connect(SIGNAL "blockCountChanged(int)", result, SLOT "updateLineNumberAreaWidth(int)")
    # NOTE: updateLineNumberArea must use a "const_var QRect", as we have a "QRect &" here
    result.connect(SIGNAL "updateRequest(const QRect&, int)", result, SLOT "updateLineNumberArea(const QRect&,int)")
    result.connect(SIGNAL "cursorPositionChanged()", result, SLOT "highlightCurrentLine()")
    
    result.updateLineNumberAreaWidth(0)
    result.highlightCurrentLine()

nimqt.insertAllSlotImplementations
