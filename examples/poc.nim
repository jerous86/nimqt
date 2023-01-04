import os
import strformat

import nimqt
import nimqt/[qwidget, qboxlayout, qurl]
import nimqt/[qlabel, qtextedit, qpushbutton, qcheckbox, qlineedit, qtabwidget, qlistwidget, qtextbrowser]

nimqt.init
let app = newQApplication(commandLineParams())


let label = newQLabel(Q "Hello there")

# This is required so verdigris knows about this object
QListWidgetItem.registerArgType
QUrl.registerArgType
QString.registerArgType

inheritQObject(Receiver, QTextEdit):
    slot_defer onCursorPositionChanged(): label.setText(Q "cursorPositionChanged!!!!")
    slot_defer onCursorPositionChanged_bool(): bool: false
    slot_defer onTextChanged(): label.setText(this.toPlainText)
    slot_defer undoAvailable(available: bool): echo("undoAvailable ", this.toPlainText)
    override_defer event(e: ptr QEvent): bool: parent_event(this, e)
    slot_defer printBody(): echo this.toPlainText
    const_override_defer hasHeightForWidth(): bool: false
    # const QUrl &link --> link:const_var
    # QUrl &link --> link:var QUrl
    slot_defer on_viewer_highlighted(link: const_var QUrl):
        echo &"highlighted '{link.scheme} :// {link.host} {link.path} {link.password} {link.fileName} {link.fragment} {link.userName} {link.userInfo}"

    slot_defer addToList(): list.addItem Q(&"YEAH2 {list.count}")
    slot_defer on_list_clicked(i: ptr QListWidgetItem): label.setText(Q(&"{i.text} clicked!"))
    slot_defer on_list_currentTextChanged(t: QString): lblChange.setText(Q &"currentTextChanged {t}")

let win: ptr QWidget = newQWidget()
win.makeLayout:
    - newReceiver() as receiver:
        setText(Q("WOOHOO"))
        connect(SIGNAL "cursorPositionChanged()", receiver, SLOT "onCursorPositionChanged()")
        connect(SIGNAL "undoAvailable(bool)", receiver, SLOT "undoAvailable(bool)")
        connect(SIGNAL "textChanged()", receiver, SLOT "onTextChanged()")
    - useObject label
    - newQLabel(Q "Original") as lblChange:
        setText(Q "cursorPositionChanged?")
    - newQHBoxLayout():
        - newQPushButton(Q "Print content!") as printButton:
            connect(SIGNAL "clicked()", receiver, SLOT "printBody()")
        - newQPushButton(Q "Clear!") as clearButton:
            connect(SIGNAL "clicked()", receiver, SLOT "clear()")
    - newQCheckBox(Q "Check me!")
    - newQLineEdit(Q "Edit me!")

    - newQTabWidget() as tabWidget:
        let tab1 = newQWidget()
        let tab2 = newQWidget()
        let tab3 = newQWidget()
        discardThis:
            tab1.makeLayout:
                - newQListWidget() as list:
                    connect(SIGNAL "itemClicked(QListWidgetItem *)", receiver, SLOT "on_list_clicked(QListWidgetItem *)")
                    connect(SIGNAL "currentTextChanged(const QString &)", receiver, SLOT "on_list_currentTextChanged(const QString &)")
                    addItem(Q "First item!")
                - newQPushButton("Add to list".Q) as btnAddToList:
                    connect(SIGNAL "clicked()", receiver, SLOT "addToList()")
        discardThis:
            tab2.makeLayout:
                - newQTextBrowser() as viewer:
                    setHtml(Q "<a href='notey2://link ;; journal/2021-09.md'>test.html</a>")
                    connect(SIGNAL "highlighted(const QUrl &)", receiver, SLOT "on_viewer_highlighted(const QUrl &)")
        discardThis:
            tab3.makeLayout:
                - newQLabel(Q "tab3")
        discard addTab(tabWidget, tab2, Q "Web")
        discard addTab(tabWidget, tab1, Q "List")
        discard addTab(tabWidget, tab3, Q "Tab3")

nimqt.insertAllSlotImplementations()

win.show()
discard app.exec()

