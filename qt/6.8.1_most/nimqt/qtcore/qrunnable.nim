const headerFile* = "QtCore/qrunnable.h"

type
    # Classes found in the C++ code
    QRunnable* {.header:headerFile,importcpp:"QRunnable" ,pure,inheritable.} = object

# Stuff for class QRunnable

# Public constructors for QRunnable
proc newQRunnable*(): QRunnable {. header:headerFile, importcpp:"QRunnable(@)", constructor .} #

# Public methods for QRunnable
proc run*(this: QRunnable) {.header:headerFile, importcpp:"#.run(@)".} # Public
proc autoDelete*(this: QRunnable): bool {.header:headerFile, importcpp:"#.autoDelete(@)".} # Public
proc setAutoDelete*(this: QRunnable, autoDelete: bool) {.header:headerFile, importcpp:"#.setAutoDelete(@)".} # Public

