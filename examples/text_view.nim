import strformat
import sequtils
import os

# First, we import the nimqt.nim module that will allow us to use the Qt system
import nimqt
# Now we can import the modules that we want to use.
# The names correspond to those in Qt.
# You can import using e.g. qt/qlist and qt/qtcore/qlist. But the first one
# is probably easier.
import nimqt/qwidget
import nimqt/qlist
import nimqt/qboxlayout
import nimqt/[qlabel, qsplitter, qlistwidget, qtabwidget, qpushbutton, qtextedit, qmenu, qcursor, qstringlist]
import nimqt/[qaction]

# nimqt.init() should be called at the start of your program.
# It will set-up the qt system using verdigris, and import some common modules
nimqt.init

# Create your application.
let app = newQApplication(commandLineParams())

# registerArgType must be called for types that are used in arguments or return types,
# so verdigris knows about this object.
QListWidgetItem.registerArgType

# inheritQObject allows one to create a new object that derives from a Qt object, like
# a QWidget or a QObject.
# In the body, we can then declare or define methods.
#
# The following declaration and definitions are possible:
# Define/declare a slot
#     slot SLOT_NAME(ARGUMENTS): BODY
#     slot_defer SLOT_NAME(ARGUMENTS): BODY
#     slot_decl SLOT_NAME(ARGUMENTS)
#
# Override a method
#     override METHOD_NAME(ARGUMENTS): BODY
#     override_defer METHOD_NAME(ARGUMENTS): BODY
#     override_decl METHOD_NAME(ARGUMENTS)
#
# Override a const method
#     const_override METHOD_NAME(ARGUMENTS): BODY
#     const_override_defer METHOD_NAME(ARGUMENTS): BODY
#     const_override_decl METHOD_NAME(ARGUMENTS)
#
# First some notes:
# - In the body of the method, we can call METHOD_NAME of the base class using
#     ```parent_${METHOD_NAME}``` where ${METHOD_NAME} is obviously the name's
#     method.
# - The body definition does not follow the '=' like in regular nim code,
#     but follows the ':' character.
# - if a parameter must be passed by c++ reference, use a var type.
#   If a parameter must be passed by const c++ reference, use const_var.
#   E.g.
#   ```inheritQObject(MyTextEdit, QTextEdit):
#           slot_defer on_viewer_highlighted(link: const_var QUrl):
#               echo &"highlighted '{link.scheme} :// {link.host} {link.path}"
#       (...)
#       receiver.connect(SIGNAL "highlighted(const QUrl &)", receiver, SLOT "on_viewer_highlighted(const QUrl &)")
#    ```
# - ```inheritQObject(Foo, QObject)```
#   creates a new function newFoo() with which to create a new Foo object.

#
# We now explain the differences:
#   {slot,override,const_override} are method definitions, and require a body.
#       The code in the body will be inserted at this place in the code.
#       This means that if you are using variables that are defined later on
#       in the code, this will result in errors.
#       Inside the body, ```this``` will refer to the current object.
#
#   {slot,override,const_override}_defer are also method definitions, and also
#       requires a body.
#       The difference with the regular version is that the body is inserted
#       when the function
#       ```qt.insertSlotImplementations(${CLASS_NAME})``` or
#       ```qt.insertAllSlotImplementations()``` is called.
#       The call to the function will effectively insert the code at that point
#       in the code.
#       This is useful when you want to use objects that are defined after the
#       definition of this object.
#       Inside the body, ```this``` will refer to the current object.
#
#   {slot,override,const_override}_decl are used to declare the methods. The
#       definitions have to be specified manually.
#       E.g. ```
#       inheritQObject(ObjectFoo, QObject):
#           slot onClick(param1:bool)```
#       requires later on a proc
#       ```proc onClick(this:ObjectFoo, param1:bool)```
#       In general, the "_defer" version is preferred.
inheritQObject(MyTextEdit, QTextEdit):
    # In this case, we want to intercept mouse presses inside the QTextEdit,
    # print a message and then let the QTextEdit handle the events.
    # As we are not using any variables that are defined below, we can just
    # use the "override" statement.
    override mousePressEvent(e: ptr QMouseEvent):
        echo "Pressed the mouse! ", e.button
        this.parent_mousePressEvent(e)

func newMyTextEdit(t: QString): ptr MyTextEdit = (result = newMyTextEdit(); result.setText(t))

# Unfortunately, if we use MyTextEdit in the OpenFile type, then some wrong code is generated:
# the struct is defined too late.
type OpenFile = tuple[filename: string, textEdit: ptr QWidget]
var openFiles: seq[OpenFile] = @[(filename: "(info)", textEdit: cast[ptr QWidget](nil))]

# We now define an object that will handle all user interactions.
# Just for this demo, we have two slot_decl and other slots use the
# slot_defer mechanism. In a real program, it is probably best to just use
# slot_defer for all slots.
# Note the call ```qt.insertSlotImplementations("GuiHandler")``` at the end of this file.
inheritQObject(GuiHandler, QObject):
    # Note: we are using QListWidgetItem in the argument here, so we must
    # have a call somewhere above with ```QListWidgetItem.registerArgType```
    slot_decl on_lstFiles_clicked(i: ptr QListWidgetItem)
    slot_decl on_txt_textChanged()
    slot_defer on_btnRevert_clicked():
        let c = openFiles[tabs.currentIndex.int]
        let e = cast[ptr MyTextEdit](c.textEdit)
        # We can quickly convert a nim string to a QString using the function
        # Q(s:string)
        try: e.setPlainText(Q c.filename.readFile)
        except: e.setPlainText(Q(&"Could not read file {c.filename}"))
        tabs.setTabText(tabs.currentIndex, Q(openFiles[tabs.currentIndex.int].filename))

    slot_defer on_btnClose_clicked():
        echo "btnClose, brought to you by ", this.get_sender.objectName
        openFiles.delete tabs.currentIndex.int
        tabs.removeTab(tabs.currentIndex)

    slot_defer on_btnMenu_clicked():
        menuFile.clear()
        block:
            let a1 = newQAction(Q"Close")
            a1.setObjectName(Q"actionClose")
            # Like in Qt, we also have to annotate signals and slots in a ```connect```
            # call with respectively ```SIGNAL``` and ```SLOT```
            a1.connect(SIGNAL "triggered()", guiHandler, SLOT "on_btnClose_clicked()")
            menuFile.addAction(a1)

            let a2 = newQAction(Q"Revert")
            a2.connect(SIGNAL "triggered()", guiHandler, SLOT "on_btnRevert_clicked()")
            menuFile.addAction(a2)
        # Static methods of a class, like QCursor::pos are written as static_QCursor_pos
        # to avoid name clashes with non-static methods.
        menuFile.popup(static_QCursor_pos())


let guiHandler = newGuiHandler()

let win: ptr QWidget = newQWidget()
win.setObjectName(Q"win")

proc setSpacing(o: ptr QWidget, s: int) =
    if o.typeof is ptr QWidget:
        let w = cast[ptr QWidget](o)
        w.layout.setSpacing s.cint
        w.layout.setContentsMargins(s.cint, s.cint, s.cint, s.cint)
    for c in o.children:
        if c.typeof is ptr QWidget:
            let w = cast[ptr QWidget](o)
            w.setSpacing(s.cint)

# The qt module provides a macro to quickly generate layouts.
# SOme examples of the DSL follow:
#
# makeLayout(rootWidget, rootLayout):
#   - newQPushButton()
#   - newQPushButton()
#
# let btn2=newQPushButton()
# makeLayout(rootWidget, rootLayout):
#   - newQPushButton() as btn1
#   - use_object btn2
#
# let btn2=newQPushButton()
# makeLayout(rootWidget, rootLayout):
#   - newQPushButton() as btn1:
#       # All expressions have the object implicitly added. E.g.
#       connect(SIGNAL "clicked()", guiHandler, SLOT "clicked()")
#       # is converted to
#       btn1.connect(SIGNAL "clicked()", guiHandler, SLOT "clicked()")
#       # If you do not want this to happen, use the ```discardThis``` template:
#       discardThis:
#           btn1.connect(SIGNAL "clicked()", guiHandler, SLOT "clicked()")
#   - use_object btn2:
#       connect(SIGNAL "clicked()", guiHandler, SLOT "clicked()")
#
# Nesting is supported, but care must be taken to correctly alternate widgets and layouts.
win.makeLayout:
    - newQSplitter() as splitter:
        - newQListWidget() as lstFiles:
            connect(SIGNAL "itemClicked(QListWidgetItem *)", guiHandler, SLOT "on_lstFiles_clicked(QListWidgetItem *)")
            for file in walkFiles("*"):
                lstFiles.addItem Q(file)
        - newQWidget() as rightView:
            - newQVBoxLayout():
                - newQTabWidget() as tabs:
                    discard tabs.addTab(newQLabel(Q"Select one of the files in the left view to view"), Q"Info")
win.resize(800, 600)
win.setSpacing(2)

let menuFile: ptr QMenu = newQMenu() # Make sure a menu is defined in the global scope.

proc newEditorTab(file: string): ptr QWidget =
    result = newQWidget()
    result.makeLayout:
        - newQPushButton(Q"Close") as btnClose:
            connect(SIGNAL "clicked()", guiHandler, SLOT "on_btnClose_clicked()")
        - newQPushButton(Q"Revert") as btnRevert:
            connect(SIGNAL "clicked()", guiHandler, SLOT "on_btnRevert_clicked()")
        - newQPushButton(Q"Menu") as btnMenu:
            connect(SIGNAL "clicked()", guiHandler, SLOT "on_btnMenu_clicked()")
        - newMyTextEdit(Q"") as txtEdit:
            connect(SIGNAL "textChanged()", guiHandler, SLOT "on_txt_textChanged()")
    result.setSpacing(2)

discard newEditorTab("foo")



proc on_lstFiles_clicked(this: ptr GuiHandler, i: ptr QListWidgetItem) =
    let filename: QString = i.text()
    echo "Clicked on ", $filename
    let i = openFiles.mapIt(it.filename).find($filename)
    if i < 0:
        let newTab = newEditorTab($filename)
        discard tabs.addTab(newTab, filename)
        tabs.setCurrentIndex((tabs.count.int-1).cint)
        openFiles.add((filename: $filename, textEdit: cast[ptr MyTextEdit](newTab.children[4])))
        this.on_btnRevert_clicked
    else:
        tabs.setCurrentIndex(i.cint)

proc on_txt_textChanged(this: ptr GuiHandler) =
    tabs.setTabText(tabs.currentIndex, Q(openFiles[tabs.currentIndex.int].filename & "*"))

# This call will insert the definitions for GuiHandler that were created using slot_defer.
nimqt.insertSlotImplementations("GuiHandler")

# Just like in Qt, you also have to show the window and call exec on ```app```.
win.show()
discard app.exec()
