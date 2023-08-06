const headerFile* = "QtWidgets/qitemeditorfactory.h"

type
    # Classes found in the C++ code
    QItemEditorCreatorBase* {.header:headerFile,importcpp:"QItemEditorCreatorBase" ,pure,inheritable.} = object
    QItemEditorCreator*[T] {.header:headerFile,importcpp:"QItemEditorCreator" ,pure.} = object of QItemEditorCreatorBase
    QStandardItemEditorCreator*[T] {.header:headerFile,importcpp:"QStandardItemEditorCreator" ,pure.} = object of QItemEditorCreatorBase
    QItemEditorFactory* {.header:headerFile,importcpp:"QItemEditorFactory" ,pure,inheritable.} = object

# Stuff for class QItemEditorCreatorBase

# Public methods for QItemEditorCreatorBase
import nimqt/qtwidgets/qwidget
proc createWidget*(this: ptr QItemEditorCreatorBase, parent: ptr QWidget): ptr QWidget {.header:headerFile, importcpp:"#.createWidget(@)".} # Public
import nimqt/qtcore/qbytearray
proc valuePropertyName*(this: ptr QItemEditorCreatorBase): QByteArray {.header:headerFile, importcpp:"#.valuePropertyName(@)".} # Public
# Stuff for class QItemEditorCreator

# Public constructors for QItemEditorCreator
proc newQItemEditorCreator*[T](valuePropertyName: QByteArray): ptr QItemEditorCreator[T] {. header:headerFile, importcpp:"new QItemEditorCreator(@)" .} #

# Public methods for QItemEditorCreator
proc createWidget*[T](this: ptr QItemEditorCreator[T], parent: ptr QWidget): ptr QWidget {.header:headerFile, importcpp:"#.createWidget(@)".} # Public
proc valuePropertyName*[T](this: ptr QItemEditorCreator[T]): QByteArray {.header:headerFile, importcpp:"#.valuePropertyName(@)".} # Public
# Stuff for class QStandardItemEditorCreator

# Public constructors for QStandardItemEditorCreator
proc newQStandardItemEditorCreator*[T](): ptr QStandardItemEditorCreator[T] {. header:headerFile, importcpp:"new QStandardItemEditorCreator(@)" .} #

# Public methods for QStandardItemEditorCreator
proc createWidget*[T](this: ptr QStandardItemEditorCreator[T], parent: ptr QWidget): ptr QWidget {.header:headerFile, importcpp:"#.createWidget(@)".} # Public
proc valuePropertyName*[T](this: ptr QStandardItemEditorCreator[T]): QByteArray {.header:headerFile, importcpp:"#.valuePropertyName(@)".} # Public
# Stuff for class QItemEditorFactory

# Public constructors for QItemEditorFactory
proc newQItemEditorFactory*(): QItemEditorFactory {. header:headerFile, importcpp:"QItemEditorFactory(@)", constructor .} #

# Public methods for QItemEditorFactory
proc createEditor*(this: QItemEditorFactory, userType: cint, parent: ptr QWidget): ptr QWidget {.header:headerFile, importcpp:"#.createEditor(@)".} # Public
proc valuePropertyName*(this: QItemEditorFactory, userType: cint): QByteArray {.header:headerFile, importcpp:"#.valuePropertyName(@)".} # Public
proc registerEditor*(this: QItemEditorFactory, userType: cint, creator: ptr QItemEditorCreatorBase) {.header:headerFile, importcpp:"#.registerEditor(@)".} # Public
proc static_QItemEditorFactory_defaultFactory*(): ptr QItemEditorFactory {.header:headerFile, importcpp:"QItemEditorFactory::defaultFactory(@)".} # Public static
proc static_QItemEditorFactory_setDefaultFactory*(factory: ptr QItemEditorFactory) {.header:headerFile, importcpp:"QItemEditorFactory::setDefaultFactory(@)".} # Public static

export qbytearray
export qwidget
