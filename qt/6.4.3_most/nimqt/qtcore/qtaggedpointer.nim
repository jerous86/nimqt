const headerFile* = "QtCore/qtaggedpointer.h"

type
    # Classes found in the C++ code
    QTaggedPointer*[T, Tag] {.header:headerFile,importcpp:"QTaggedPointer" ,pure,inheritable.} = object

# Stuff for class QTaggedPointer

# Public constructors for QTaggedPointer
proc newQTaggedPointer*[T, Tag](): QTaggedPointer[T, Tag] {. header:headerFile, importcpp:"QTaggedPointer(@)", constructor .} #
proc newQTaggedPointer*[T, Tag](pointer: ptr T, tag: Tag): QTaggedPointer[T, Tag] {. header:headerFile, importcpp:"QTaggedPointer(@)", constructor .} #

# Public methods for QTaggedPointer
proc `*`*[T, Tag](this: QTaggedPointer[T, Tag]): T {.header:headerFile, importcpp:"#.operator*(@)".} # Public
proc `->`*[T, Tag](this: QTaggedPointer[T, Tag]): ptr T {.header:headerFile, importcpp:"#.operator->(@)".} # Public
proc static_QTaggedPointer_maximumTag*[T, Tag](): Tag {.header:headerFile, importcpp:"QTaggedPointer::maximumTag(@)".} # Public static
proc setTag*[T, Tag](this: QTaggedPointer[T, Tag], tag: Tag) {.header:headerFile, importcpp:"#.setTag(@)".} # Public
proc tag*[T, Tag](this: QTaggedPointer[T, Tag]): Tag {.header:headerFile, importcpp:"#.tag(@)".} # Public
proc data*[T, Tag](this: QTaggedPointer[T, Tag]): ptr T {.header:headerFile, importcpp:"#.data(@)".} # Public
proc isNull*[T, Tag](this: QTaggedPointer[T, Tag]): bool {.header:headerFile, importcpp:"#.isNull(@)".} # Public
proc swap*[T, Tag](this: QTaggedPointer[T, Tag], other: QTaggedPointer[T, Tag]) {.header:headerFile, importcpp:"#.swap(@)".} # Public

