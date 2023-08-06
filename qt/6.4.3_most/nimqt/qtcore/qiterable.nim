const headerFile* = "QtCore/qiterable.h"

type
    # Classes found in the C++ code
    QIterable*[Container] {.header:headerFile,importcpp:"QIterable" ,pure,inheritable.} = object

# Stuff for class QIterable

# Public constructors for QIterable
proc newQIterable*[Container](metaContainer: Container, alignment: cint, p: ptr): QIterable[Container] {. header:headerFile, importcpp:"QIterable(@)", constructor .} #

# Public methods for QIterable
proc canInputIterate*[Container](this: QIterable[Container]): bool {.header:headerFile, importcpp:"#.canInputIterate(@)".} # Public
proc canForwardIterate*[Container](this: QIterable[Container]): bool {.header:headerFile, importcpp:"#.canForwardIterate(@)".} # Public
proc canReverseIterate*[Container](this: QIterable[Container]): bool {.header:headerFile, importcpp:"#.canReverseIterate(@)".} # Public
proc canRandomAccessIterate*[Container](this: QIterable[Container]): bool {.header:headerFile, importcpp:"#.canRandomAccessIterate(@)".} # Public
proc constIterable*[Container](this: QIterable[Container]): ptr  {.header:headerFile, importcpp:"#.constIterable(@)".} # Public
proc mutableIterable*[Container](this: QIterable[Container]): ptr  {.header:headerFile, importcpp:"#.mutableIterable(@)".} # Public
proc size*[Container](this: QIterable[Container]): cint {.header:headerFile, importcpp:"#.size(@)".} # Public
proc metaContainer*[Container](this: QIterable[Container]): Container {.header:headerFile, importcpp:"#.metaContainer(@)".} # Public

