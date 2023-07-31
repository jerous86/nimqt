const headerFile* = "QtCore/qrunnable.h"

# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}
when (NimMajor, NimMinor, NimPatch) < (1, 9, 0):
    type
        # Classes found in the C++ code
        QRunnable* {.header:headerFile,importcpp:"QRunnable" ,pure.} = object {.inheritable.}
elif (NimMajor, NimMinor, NimPatch) >= (1, 9, 0):
    type
        # Classes found in the C++ code
        QRunnable* {.header:headerFile,importcpp:"QRunnable" ,pure,inheritable.} = object
{.push warning[Deprecated]: on.}

# Stuff for class QRunnable

# Public constructors for QRunnable
proc newQRunnable*(): QRunnable {. header:headerFile, importcpp:"QRunnable(@)", constructor .} #

# Public methods for QRunnable
proc run*(this: QRunnable) {.header:headerFile, importcpp:"#.run(@)".} # Public
proc autoDelete*(this: QRunnable): bool {.header:headerFile, importcpp:"#.autoDelete(@)".} # Public
proc setAutoDelete*(this: QRunnable, autoDelete: bool) {.header:headerFile, importcpp:"#.setAutoDelete(@)".} # Public

