import strformat
import os

import mathexpr

import nimqt
import nimqt/[qtextedit, qpushbutton, qcheckbox, qlineedit, qtabwidget, qsplitter]
import nimqt/qflags
import nimqt/qtwidgets/[qgridlayout,qlayoutitem]


nimqt.init

let evaluator = newEvaluator()
let app = newQApplication(commandLineParams())

var inputs: seq[string] = @[""]
var input_i = 0
inheritQObject(GuiHandler, QObject):
    # Note: we are using QListWidgetItem in the argument here, so we must
    # have a call somewhere above with ```QListWidgetItem.registerArgType```
    slot_defer on_btnCalc_clicked():
        txtResults.append(Q &"<div align=\"left\">{txtInput.text()}</div>")
        txtResults.setAlignment(newQFlags[Qt_AlignmentFlag](AlignLeft))
        inputs[^1] = $txtInput.text
        inputs.add ""
        input_i = inputs.len

        try: txtResults.append(Q &"<div style=\"color:green\">= {evaluator.eval($txtInput.text)} <span style='color:orange'>[{inputs.len}]</span></div>")
        except: txtResults.append(Q &"<div style=\"color:red\">{getCurrentExceptionMsg()}</div>")
        txtResults.setAlignment(newQFlags[Qt_AlignmentFlag](AlignRight))

        txtInput.setText(Q"")

    slot_defer on_clicked():
        txtInput.appendStr($cast[ptr QPushButton](this.get_sender()).text)

proc appendStr(txtInput: ptr QLineEdit, x: string) =
    txtInput.setText(Q($txtInput.text & x))

inheritQObject(MyLineEdit, QLineEdit):
    override_defer keyPressEvent(event: ptr QKeyEvent):
        case event.key
        of 16777235: #up
            if input_i > 0: input_i.dec
            inputs[^1] = inputs[input_i]
            this.setText(Q inputs[^1])
        of 16777237: #down
            if input_i < inputs.len-1: input_i.inc
            inputs[^1] = inputs[input_i]
            this.setText(Q inputs[^1])
        of 16777216: #escape
            input_i = inputs.len-1
            this.setText(Q"")
        else: discard
        this.parent_keyPressEvent(event)

    slot_defer on_textChanged(text: const_var QString): 
        btnCalc.setEnabled(($this.text).len > 0)

# Implement it ourselves here, because due to recursive module import issues in nim, this method
# cannot be generated easily.
proc widget*(this:ptr QLayoutItem): ptr QWidget {.header:qlayoutitem.headerFile, importcpp:"#.widget(@)".}

proc setSpacingRec*(w: ptr QWidget, s: int) =
    w.layout.setSpacing(s.cint)
    w.layout.setContentsMargins(s.cint, s.cint, s.cint, s.cint)

    for c in w.children:
        if c.typeof is ptr QWidget:
            let w = cast[ptr QWidget](c)
            w.setSpacingRec(s.cint)
        elif c.typeof is ptr QLayout:
            let w=cast[ptr QLayout](c)
            for i in 0..<w.count:
                setSpacingRec(w.itemAt(i).widget, s)


let guiHandler = newGuiHandler()
let win: ptr QWidget = newQWidget()

proc configureInputButton(btn: ptr QPushButton, caption: string) =
    btn.setText(Q caption)
    connect(btn, SIGNAL "clicked()", guiHandler, SLOT &"on_clicked()")

win.makeLayout:
    - newQSplitter(Qt_Orientation.Vertical):
        - newQTextEdit() as txtResults:
            setPlaceholderText(Q"Results come here")
            setReadOnly(true)
        - newQWidget():
            - newQGridLayout():
                - newMyLineEdit() as txtInput at (0, 0, 1, 3):
                    setPlaceholderText(Q"Enter formula")
                    connect(SIGNAL "returnPressed()", btnCalc, SLOT "click()")
                    connect(SIGNAL "textChanged(const QString&)", txtInput, SLOT "on_textChanged(const QString&)")
                - newQPushButton() as btnCalc at (0, 3):
                    setText(Q"Calc!")
                    setMinimumWidth(50)
                    connect(SIGNAL "clicked()", guiHandler, SLOT "on_btnCalc_clicked()")

                - newQPushButton() as btn7 at (1, 0): configureInputButton("7")
                - newQPushButton() as btn8 at (1, 1): configureInputButton("8")
                - newQPushButton() as btn9 at (1, 2): configureInputButton("9")

                - newQPushButton() as btn4 at (2, 0): configureInputButton("4")
                - newQPushButton() as btn5 at (2, 1): configureInputButton("5")
                - newQPushButton() as btn6 at (2, 2): configureInputButton("6")

                - newQPushButton() as btn1 at (3, 0): configureInputButton("1")
                - newQPushButton() as btn2 at (3, 1): configureInputButton("2")
                - newQPushButton() as btn3 at (3, 2): configureInputButton("3")

                - newQPushButton() as btn0 at (4, 1): configureInputButton("0")

                - newQPushButton() as btnA at (1, 3): configureInputButton("+")
                - newQPushButton() as btnB at (2, 3): configureInputButton("-")
                - newQPushButton() as btnC at (3, 3): configureInputButton("*")
                - newQPushButton() as btnD at (4, 3): configureInputButton("/")
win.setSpacingRec(0)

txtInput.setFocus
btnCalc.setEnabled(false)
nimqt.insertAllSlotImplementations()

win.show()
discard app.exec()
