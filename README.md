# nimqt
[Qt](https://www.qt.io/) bindings for [nim](https://nim-lang.org/).
It makes use of [verdigris](https://github.com/woboq/verdigris), a set of macros to use Qt without moc.

# Usage

## Installation
Install with `nimble install nimqt`.
This will install bindings that have been generated for Qt 6.4.1, but will very likely work with any Qt 6 version.

## Simple example
The following example comes from `examples/hello.nim`
```nim
import nimqt
import nimqt/[qpushbutton, qboxlayout]

nimqt.init
let app = newQApplication()

inheritQObject(GuiHandler, QObject):
    slot_decl on_helloWorld_clicked()

let guiHandler: ptr GuiHandler = newGuiHandler()
let win: ptr QWidget = newQWidget()

win.makeLayout:
    - newQPushButton(Q "Click me!!"):
        connect(SIGNAL "clicked()", guiHandler, SLOT "on_helloWorld_clicked()")
    - newQPushButton( Q "Click me!!"):
        connect(SIGNAL "clicked()", guiHandler, SLOT "on_helloWorld_clicked()")

proc on_helloWorld_clicked(this: ptr GuiHandler) =
    let sender = cast[ ptr QPushButton]( this.get_sender())
    sender.setText( Q "Hello world!")

win.show()
discard app.exec()
```

When running this code with `nim cpp examples/hello.nim`, we get 

<img width=100 alt="Screenshot of examples/hello.nim" src="https://github.com/jerous86/nimqt/blob/main/examples/hello.png?raw=true" />.

A screenshot of `examples/calc.nim`: 
![Screenshot of examples/calc.nim](https://github.com/jerous86/nimqt/blob/main/examples/calc.png?raw=true | width=100)

## Documentation
A more elaborate usage of nimqt can be found in `examples/text_view.nim` which has a lot of comments on the usage.

### Minimal example
Here we show the minimal code necessary to show a Qt widget.

```nim
# First, we import the nimqt.nim module that will allow us to use the Qt system
import nimqt

# nimqt.init() should be called at the start of your program.
# It will initialize verdigris, and import some common modules.
nimqt.init()

let app = newQApplication() # Create your application.

import nimqt/qlabel

let w=newQLabel(Q"Hello world!")
w.show()

discard app.exec() # Run Qt's main loop
```

### Creating a new `QObject`
To create a custom `QObject`, one can use the `inheritQObject(CLASSNAME, BASECLASS)` macro.
This will start the creation of a new class named `CLASSNAME` which derives from `BASECLASS`.
`BASECLASS` should be one of the Qt classes (like a QObject or a QWidget etc).
The body of the `inheritQObject` allows for defining slots and overriding methods (creating new methods cannot be done in the body of the macro, but should be done just as a regular proc/func).

For example,

```nim
inheritQObject(MyTextEdit, QTextEdit):
    # In this case, we want to intercept mouse presses inside the QTextEdit,
    # print a message and then let the QTextEdit handle the events.
    # As we are not using any variables that are defined below, we can just
    # use the "override" statement.
    override mousePressEvent(e: ptr QMouseEvent):
        echo "Pressed the mouse! ", e.button
        this.parent_mousePressEvent(e)
``` 


The following declaration and definitions are possible inside `inheritQObject`:

- Define/declare a slot
  	- slot SLOT_NAME(ARGUMENTS): BODY
  	- slot_defer SLOT_NAME(ARGUMENTS): BODY
  	- slot_decl SLOT_NAME(ARGUMENTS)
- Override a method
 	- override METHOD_NAME(ARGUMENTS): BODY
 	- override_defer METHOD_NAME(ARGUMENTS): BODY
 	- override_decl METHOD_NAME(ARGUMENTS)
- Override a const method
 	- const_override METHOD_NAME(ARGUMENTS): BODY
 	- const_override_defer METHOD_NAME(ARGUMENTS): BODY
 	- const_override_decl METHOD_NAME(ARGUMENTS)


We now explain the differences:
 
- {slot,override,const_override} are method definitions, and require a body.
      The code in the body will be inserted at this place in the code.
      This means that if you are using variables that are defined later on
      in the code, this will result in errors.
      Inside the body, `this` is implicitly defined and will refer to the current object.
- {slot,override,const_override}_defer are also method definitions, and also require a body.
      The difference with the version above is that the body is inserted where the macro
      `qt.insertSlotImplementations(CLASS_NAME)` or
      `qt.insertAllSlotImplementations()` is called.
      The call to the function will effectively insert the code at that point in the code.
      This is useful when you want to use objects that are defined after the definition of this object.
      Inside the body, `this` is implicitly defined and will refer to the current object.
-  {slot,override,const_override}_decl are used to declare the methods. The
      definitions have to be specified manually.
      E.g. 
      ```nim
      inheritQObject(ObjectFoo, QObject):
      	slot onClick(param1:bool)
      ```
      requires later on a proc
      `proc onClick(this:ObjectFoo, param1:bool)`
      This version is only useful when you really need fine control on where the procedure is defined.

#### Some notes

- In the body of an overriden method, we can call `METHOD_NAME` of the base class using `parent_${METHOD_NAME}` 
- The body definition does not follow the '=' like in regular nim code, but follows the ':' character.
- If a parameter must be passed by c++ reference, use a `var` type.
  If a parameter must be passed by const c++ reference, use `const_var`.
	E.g.
	
	```nim
	inheritQObject(MyTextEdit, QTextEdit):
		slot_defer on_viewer_highlighted(link: const_var QUrl):
			echo &"highlighted '{link.scheme} :// {link.host} {link.path}"
	(...)
	receiver.connect(SIGNAL "highlighted(const QUrl &)", receiver, SLOT "on_viewer_highlighted(const QUrl &)")
	```
- `inheritQObject(Foo, QObject)` creates a new function `newFoo()` that can be used to create a `ptr Foo` instance.

	

### Layout DSL
The nimqt module provides a macro `makeLayout` (and `makeLayoutH` to start with a `QHBoxLayout`) to easily generate layouts.
Some examples of the DSL follow:
Assume we have `let rootWidget:ptr QWidget = newQWidget()`.

This example will generate a widget, containing two unnamed push buttons.

```nim
rootWidget.makeLayout:
  - newQPushButton()
  - newQPushButton()
```

Now, we again add two push buttons to a widget.
But, we name them `btn1` and `btn2` respectively, and `btn2` is an already existing object. This is indicated through the keyword `use_object`.

```nim
let btn2=newQPushButton()
rootWidget.makeLayout:
  - newQPushButton() as btn1
  - use_object btn2
```

In this example, we extend the previous example, and connect some signals with slots and set some properties from within the DSL.

```nim
let btn2=newQPushButton()
rootWidget.makeLayout:
  - newQPushButton() as btn1:
      # All expressions have the object implicitly added. E.g.
      connect(SIGNAL "clicked()", guiHandler, SLOT "clicked()")
      # is converted to
      # btn1.connect(SIGNAL "clicked()", guiHandler, SLOT "clicked()")
      # If you do not want this to happen, use the ```discardThis``` template:
      discardThis: btn1.connect(SIGNAL "clicked()", guiHandler, SLOT "clicked()")
  - use_object btn2:
      connect(SIGNAL "clicked()", guiHandler, SLOT "clicked()")
```


Grid layouts are also supported in the DSL. After the (obligatory) name, we have the keyword `at` followed by either
(ROW,COL) or (ROW,COL,ROW_SPAN,COL_SPAN).

```nim
rootWidget.makeLayout:
    - newQWidget():
        - newQGridLayout():
        	- newQPushButton() as btn00 at (0,0)
        	- newQPushButton() as btn01 at (0,1)
        	- newQPushButton() as btn10 at (1,0)
        	- newQPushButton() as btn11 at (1,1)
```

Nesting is supported, but care must be taken to alternate widgets and layouts.

### Other notes

- To use a type `T` in a parameter of a signal/slot or as a return value, verdigris must know about this type.
  This can be done through calling `registerArgType` on that type. E.g. `QListWidgetItem.registerArgType()`


# License
Like Qt, this library is under the dual license LGPLv3 and GPLv2.
