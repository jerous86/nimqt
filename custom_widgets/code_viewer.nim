import math

import nimqt
import nimqt/[qplaintextedit,qwidget,qlineedit,qpushbutton,qtextdocument,qcheckbox]
import nimqt/[qkeysequence,qflags]
import nimqt/qtgui/qtextformat
import nimqt/qsyntaxhighlighter
import nimqt/qregularexpression

export qplaintextedit

nimqt.init

# Code adapted from https://doc.qt.io/qt-5/qtwidgets-widgets-codeeditor-example.html

QTextBlock.registerArgType
QRect.registerArgType

type
    HLRule* = tuple[pattern:QRegularExpression, format:ptr QTextCharFormat]


const SEARCH_HEIGHT=50
inheritQObject(CodeViewer, QPlainTextEdit):
    var lineNumberArea: ptr QWidget # define it as a widget, to avoid recursive dependency
    
    # Search widget
    var wgSearch: ptr QWidget
    var txtSearch: ptr QLineEdit
    var chkSearchCS: ptr QCheckBox
    var chkSearchWholeWords: ptr QCheckBox
    var chkSearchRgx: ptr QCheckBox
    var chkSearchWrap: ptr QCheckBox
    
    var disableLineNumbers: bool
    var disableCurLineIndicator: bool
    var highlighter: ptr QSyntaxHighlighter
    
    var rules:seq[HLRule]
    
    override_defer keyPressEvent(e:ptr QKeyEvent):
        if this.txtSearch.hasFocus:
            if e.key==int(Qt_Key.Key_Escape):
                this.hideSearch
                this.setFocus
        else:
            this.parent_keyPressEvent(e)
            
            if e.matches(QKeySequence_StandardKey.Find):
                this.wgSearch.setVisible(true)
                this.txtSearch.selectAll()
                this.txtSearch.setFocus()
                this.setSearchQuery($this.txtSearch.text)
    
    override_defer resizeEvent(e:ptr QResizeEvent):
        this.parent_resizeEvent(e)
        let cr=this.contentsRect()
        this.lineNumberArea.setGeometry(cr.left, cr.top, this.lineNumberAreaWidth.cint, cr.height)
        this.wgSearch.setGeometry(cr.left, cr.bottom-SEARCH_HEIGHT, cr.width, SEARCH_HEIGHT)
    
    slot_defer highlightCurrentLine():
        var extraSelections=newQList[qtextedit.QTextEdit_ExtraSelection]()
        if this.disableCurLineIndicator==false:
            if not this.isReadOnly():
                var selection:qtextedit.QTextEdit_ExtraSelection
                let lineColor=newQColor(Qt_GlobalColor.yellow).lighter(160)
                selection.format.addr.setBackground(newQBrush(lineColor, SolidPattern))
                selection.format.addr.setProperty(FullWidthSelection.cint, newQVariant(true))
                selection.cursor=this.textCursor()
                selection.cursor.clearSelection()
                extraSelections.append selection
        this.setExtraSelections(extraSelections)
    
    slot_defer updateLineNumberAreaWidth(newBlockCount:int) :
        let bot:int=(if this.wgSearch.isVisible: SEARCH_HEIGHT else: 0)
        this.doSetViewportMargins(this.lineNumberAreaWidth.cint, 0.cint, 0.cint, bot.cint)
    
    slot_defer updateLineNumberArea(rect:const_var QRect, dy:int):
        if dy!=0: this.lineNumberArea.scroll(0.cint, dy.cint)
        else: this.lineNumberArea.update(0.cint, rect.y, this.lineNumberArea.width, rect.height)
        
        if rect.contains(this.viewport.rect): this.updateLineNumberAreaWidth(0)
    
    slot_defer on_txtSearch_textChanged(txt: const_var QString): this.setSearchQuery($txt)
    slot_defer resetSearch(checked:bool): this.setSearchQuery($this.txtSearch.text)
    slot_defer hideSearch():
        this.wgSearch.setVisible(false)
        this.setSearchQuery("")
    
    slot_defer on_btnSearchNext_clicked(): this.doSearch(false)
    slot_defer on_btnSearchPrev_clicked(): this.doSearch(true)
    
    # We declare these as "members". They will receive a "friend" status, so within this "member" function
    # we can call protected functions for this class.
    # NOTE: QWidget's get_sender could also be implemented like this, but for convenience, we added it to the
    # core of nimqt.
    member getFirstVisisbleBlock(): QTextBlock: this.firstVisibleBlock
    member getContentOffset(): QPointF: this.contentOffset
    member getBlockBoundingGeometry(tblock:ptr QTextBlock): QRectF: this.blockBoundingGeometry(tblock[])
    member getBlockBoundingRect(tblock:ptr QTextBlock): QRectF: this.blockBoundingRect(tblock[])
    member doSetViewportMargins(left:int,top:int,right:int,bot:int): this.setViewportMargins(left,top,right,bot)


proc lineNumberAreaWidth(this:ptr CodeViewer, charWidth=20):int =
    if this.disableLineNumbers: 0
    else: (log(max(1,this.blockCount.int).float,charWidth.float)*charWidth.float).int

proc lineNumberAreaPaintEvent(this:ptr CodeViewer, e: ptr QPaintEvent) =
    const
        HEIGHT=12
        LINE_OFFSET=0
    let
        painter=newQPainter(cast[ptr QPaintDevice](this.lineNumberArea))
        currentLine=this.textCursor.blockNumber
    painter.fillRect(e.rect, lightGray)
    
    var
        tblock=this.getFirstVisisbleBlock
        blockNumber=tblock.blockNumber
        top=this.getBlockBoundingGeometry(tblock.addr).translated(this.getContentOffset).top
        bottom=top+this.getBlockBoundingRect(tblock.addr).height
    
    while tblock.isValid and top<e.rect.bottom.cfloat:
        if tblock.blockNumber==currentLine and this.disableCurLineIndicator==false:
            painter.setPen(newQColor(Qt_GlobalColor.red))
        else:
            painter.setPen(newQColor(Qt_GlobalColor.black))
            
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


func setForegroundColorFormat*(c: Qt_GlobalColor): ptr QTextCharFormat =
    result=newQTextCharFormat()
    result.setForeground(newQBrush(newQColor(c), SolidPattern))
func setBackground*(f:ptr QTextCharFormat, c: Qt_GlobalColor): ptr QTextCharFormat =
    result=f
    f.setBackground(newQBrush(newQColor(c), SolidPattern))

proc addHLRule*(rules:var seq[HLRule], rgx:string, rgxFlags:QRegularExpression_PatternOptions, fmt:ptr QTextCharFormat) =
    rules.add((pattern:newQRegularExpression(Q rgx, rgxFlags), format: fmt))

proc addHLRule*(rules:var seq[HLRule], rgx:string, rgxFlag:QRegularExpression_PatternOption, fmt:ptr QTextCharFormat) =
    rules.addHLRule(rgx, newQFlags(rgxFlag), fmt)
proc addHLRule*(rules:var seq[HLRule], rgx:string, fmt:ptr QTextCharFormat) =
    var x=newQFlags[QRegularExpression_PatternOption]()
    rules.addHLRule(rgx, x, fmt)

let
    FMT_MACRO=darkgreen.setForegroundColorFormat
    FMT_STRING=darkgreen.setForegroundColorFormat
    FMT_TYPE=darkblue.setForegroundColorFormat
    FMT_KEYWORD=darkblue.setForegroundColorFormat
    FMT_GLOBAL_VAR=blue.setForegroundColorFormat
    FMT_COMMENT=gray.setForegroundColorFormat
    FMT_SEARCH_RESULT=black.setForegroundColorFormat.setBackground(yellow)

proc simpleCppRules*(): seq[HLRule] =
    # The first one is always used for search results
    result.addHLRule("", FMT_SEARCH_RESULT)

    result.addHLRule("#(define|ifdef|ifndef|elif|else|include) [^\n]+", FMT_MACRO)
    result.addHLRule("(^|\\b)(bool|void|int|long|double|float|uint|char|string|vector)\\b", FMT_TYPE)
    result.addHLRule("(^|\\b)(auto|break|case|catch|class|const|consteval|constexpr|const_cast|continue|default|delete|do|if|else|enum|for|friend|inline|mutable|namespace|new|private|protected|public|return|sizeof|static|struct|switch|template|throw|typename|union|using|virtual|volatile|while)[^a-zA-Z]", FMT_KEYWORD)
    result.addHLRule("(^|\\b)(std::)?(cout|cin|endl)\\b", FMT_GLOBAL_VAR)
    result.addHLRule("//[^\n]*", FMT_COMMENT)
    # Multiline comments not supported, as Qt works with blocks, rather than newlines, so this approach
    # is not working that well.
    #result.addHLRule("/[*][\n.*?[*]/", newQFlags[QRegularExpression_PatternOption]([DotMatchesEverythingOption]), FMT_COMMENT)
    
    
proc simpleConfigRules*(): seq[HLRule] =
    # The first one is always used for search results
    result.addHLRule("", FMT_SEARCH_RESULT)
    result.addHLRule("#.*", FMT_COMMENT)
    result.addHLRule("\".*?\"", FMT_STRING)

proc searchRgxFlags(this: ptr CodeViewer): QFlags[QRegularExpression_PatternOption] =
    var rgxFlags=newQFlags[QRegularExpression_PatternOption]()
    if not this.chkSearchCS.isChecked: rgxFlags.incl(CaseInsensitiveOption)
    rgxFlags
    
proc searchFlags(this: ptr CodeViewer, backward:bool): QFlags[QTextDocument_FindFlag] =
    if backward: result.incl FindBackward
    if this.chkSearchCS.isChecked: result.incl FindCaseSensitively 
    if this.chkSearchWholeWords.isChecked: result.incl FindWholeWords

proc doSearch(this: ptr CodeViewer, backward:bool) =
    let flags=this.searchFlags(backward)
    let found=(if this.chkSearchRgx.isChecked:
            this.find(this.txtSearch.text.newQRegularExpression(this.searchRgxFlags), flags)
        else:
            this.find(this.txtSearch.text, flags)
        )
    if not found and this.chkSearchWrap.isChecked:
        var cursor=this.textCursor
        discard cursor.movePosition(if backward: End else: Start, MoveAnchor)
        this.setTextCursor(cursor)

proc setSearchQuery(this:ptr CodeViewer, query:string) =
    var query=(if this.chkSearchRgx.isChecked: query else: $static_QRegularExpression_escape(Q query))
    if this.chkSearchWholeWords.isChecked: query = "\\b" & query & "\\b"
    
    this.rules[0].pattern=newQRegularExpression(Q query, this.searchRgxFlags)
    
    this.highlighter.rehighlight

inheritQObject(Highlighter, QSyntaxHighlighter):
    # We define here a custom constructor that accepts the parent document.
    # This code will generate a new method newHighlighter(parent:QTextDocument) which will
    # resolve to something like
    # `Highlighter(QTextDocument *parent): QSyntaxHighlighter(parent) { }`
    # This is necessary in this case, because the QSyntaxHighlighter requires a parent document.
    # (The default constructor does not accept any arguments)
    # Note that we can not add a body to a constructor, it will just call its parent's constructor
    # initializer.
    constructor(parent:ptr QTextDocument)
    
    var disableHighlighting:bool
    var code_viewer: ptr QObject
    
    # setFormat is protected. By defining mem_setFormat, and calling setFormat from within the member function,
    # we circumvent this protected visibility.
    member mem_setFormat(start:int, count:int, format:var QTextCharFormat): this.setFormat(start, count, format)
    
    override_defer highlightBlock(text:const_var QString):
        if this.disableHighlighting: return
        for rule in cast[ptr CodeViewer](this.code_viewer).rules:
            if ($rule.pattern.pattern).len==0: continue
            #echo rule.pattern.pattern #," ",rule
            let matchIterator=rule.pattern.globalMatch(text)
            #echo "  ",matchIterator.hasNext
            while matchIterator.hasNext:
                let match=matchIterator.next
                #echo "  ",match.capturedStart," ",match.capturedLength
                this.mem_setFormat(match.capturedStart, match.capturedLength, rule.format[])

proc enableHighlighting*(cv: ptr CodeViewer, enable:bool) =
    cast[ptr Highlighter](cv.highlighter).disableHighlighting=not enable
    cv.highlighter.rehighlight
proc enableLineNumbers*(cv: ptr CodeViewer, enable:bool) = 
    cv.disableLineNumbers=not enable
    cv.updateLineNumberAreaWidth(0)
proc enableCurLineIndicator*(cv: ptr CodeViewer, enable:bool) =
    cv.disableCurLineIndicator=not enable
    cv.highlightCurrentLine
    

#[
To use CodeViewer in your own code, you have to do the following:

```
import code_viewer
code_viewer.import_CodeViewer()

...

let txtSourceViewer = newCodeViewer2()
# Do stuff with txtSourceViewer
```

NOTE: to get the full code viewer, call `newCodeViewer2`, not `newCodeViewer`.
]#
proc newCodeViewer2*(): ptr CodeViewer =
    result=newCodeViewer()
    
    # Attach a highlighter to the editor
    result.highlighter=newHighlighter(result.document)
    cast[ptr Highlighter](result.highlighter).code_viewer=result
    result.rules=simpleConfigRules()
    
    # Create and set the line number area
    result.lineNumberArea=newLineNumberArea()
    cast[ptr LineNumberArea](result.lineNumberArea).viewer=cast[pointer](result)
    result.lineNumberArea.setParent(result)
    
    result.wgSearch=newQWidget()
    result.txtSearch=newQLineEdit()
    result.chkSearchCS=newQCheckBox(Q"Case sensitive")
    result.chkSearchWholeWords=newQCheckBox(Q"Whole words")
    result.chkSearchRgx=newQCheckBox(Q"Regex")
    result.chkSearchWrap=newQCheckBox(Q"Wrap")
    let
        wgSearch=result.wgSearch
        txtSearch=result.txtSearch
        chkSearchCS=result.chkSearchCS
        chkSearchWholeWords=result.chkSearchWholeWords
        chkSearchRgx=result.chkSearchRgx
        chkSearchWrap=result.chkSearchWrap
    wgSearch.makeLayoutH:
        - newQPushButton(Q"X"):
            connect(SIGNAL "clicked()", result, SLOT "hideSearch()")
        - useObject txtSearch:
            connect(SIGNAL "textChanged(const QString &)", result, SLOT "on_txtSearch_textChanged(const QString &)")
            connect(SIGNAL "returnPressed()", result, SLOT "on_btnSearchNext_clicked()")
            setClearButtonEnabled(true)
        - newQPushButton(Q"Next"):
            connect(SIGNAL "clicked()", result, SLOT "on_btnSearchNext_clicked()")
        - newQPushButton(Q"Prev"):
            connect(SIGNAL "clicked()", result, SLOT "on_btnSearchPrev_clicked()")
        - useObject chkSearchCS:
            connect(SIGNAL "toggled(bool)", result, SLOT "resetSearch(bool)")
        - useObject chkSearchWholeWords:
            connect(SIGNAL "toggled(bool)", result, SLOT "resetSearch(bool)")
        - useObject chkSearchRgx:
            connect(SIGNAL "toggled(bool)", result, SLOT "resetSearch(bool)")
        - useObject chkSearchWrap
    result.wgSearch.setParent(result)
    result.wgSearch.setVisible(false)
    
    result.connect(SIGNAL "blockCountChanged(int)", result, SLOT "updateLineNumberAreaWidth(int)")
    # NOTE: updateLineNumberArea must use a "const_var QRect", as we have a "QRect &" here
    result.connect(SIGNAL "updateRequest(const QRect&, int)", result, SLOT "updateLineNumberArea(const QRect&,int)")
    result.connect(SIGNAL "cursorPositionChanged()", result, SLOT "highlightCurrentLine()")
    
    result.updateLineNumberAreaWidth(0)
    result.highlightCurrentLine()

nimqt.insertSlotImplementations(CodeViewer)
nimqt.insertSlotImplementations(LineNumberArea)
nimqt.insertSlotImplementations(Highlighter)
