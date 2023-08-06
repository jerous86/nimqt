const headerFile* = "QtCore/qproperty.h"

type
    # Classes found in the C++ code
    QUntypedPropertyBinding* {.header:headerFile,importcpp:"QUntypedPropertyBinding" ,pure,inheritable.} = object
    QUntypedBindable* {.header:headerFile,importcpp:"QUntypedBindable" ,pure,inheritable.} = object
    QBindable*[T] {.header:headerFile,importcpp:"QBindable" ,pure.} = object of QUntypedBindable

# Stuff for class QUntypedPropertyBinding

# Public constructors for QUntypedPropertyBinding
proc newQUntypedPropertyBinding*(): QUntypedPropertyBinding {. header:headerFile, importcpp:"QUntypedPropertyBinding(@)", constructor .} #
proc newQUntypedPropertyBinding*(other: QUntypedPropertyBinding): QUntypedPropertyBinding {. header:headerFile, importcpp:"QUntypedPropertyBinding(@)", constructor .} #

# Public methods for QUntypedPropertyBinding
proc isNull*(this: QUntypedPropertyBinding): bool {.header:headerFile, importcpp:"#.isNull(@)".} # Public
# Stuff for class QUntypedBindable

# Public constructors for QUntypedBindable
proc newQUntypedBindable*(): ptr QUntypedBindable {. header:headerFile, importcpp:"new QUntypedBindable(@)" .} #

# Public methods for QUntypedBindable
proc isValid*(this: ptr QUntypedBindable): bool {.header:headerFile, importcpp:"#.isValid(@)".} # Public
proc isBindable*(this: ptr QUntypedBindable): bool {.header:headerFile, importcpp:"#.isBindable(@)".} # Public
proc isReadOnly*(this: ptr QUntypedBindable): bool {.header:headerFile, importcpp:"#.isReadOnly(@)".} # Public
proc takeBinding*(this: ptr QUntypedBindable): QUntypedPropertyBinding {.header:headerFile, importcpp:"#.takeBinding(@)".} # Public
proc binding*(this: ptr QUntypedBindable): QUntypedPropertyBinding {.header:headerFile, importcpp:"#.binding(@)".} # Public
proc setBinding*(this: ptr QUntypedBindable, binding: QUntypedPropertyBinding): bool {.header:headerFile, importcpp:"#.setBinding(@)".} # Public
proc hasBinding*(this: ptr QUntypedBindable): bool {.header:headerFile, importcpp:"#.hasBinding(@)".} # Public
# Stuff for class QBindable

# Public constructors for QBindable
proc newQBindable*[T](b: QUntypedBindable): ptr QBindable[T] {. header:headerFile, importcpp:"new QBindable(@)" .} #

# Public methods for QBindable
proc value*[T](this: ptr QBindable[T]): T {.header:headerFile, importcpp:"#.value(@)".} # Public
proc setValue*[T](this: ptr QBindable[T], value: T) {.header:headerFile, importcpp:"#.setValue(@)".} # Public

