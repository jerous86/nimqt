const headerFile* = "QtWidgets/qgraphicslayoutitem.h"

# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}
when (NimMajor, NimMinor, NimPatch) < (1, 9, 0):
    type
        # Classes found in the C++ code
        QGraphicsLayoutItem* {.header:headerFile,importcpp:"QGraphicsLayoutItem" ,pure.} = object {.inheritable.}
elif (NimMajor, NimMinor, NimPatch) >= (1, 9, 0):
    type
        # Classes found in the C++ code
        QGraphicsLayoutItem* {.header:headerFile,importcpp:"QGraphicsLayoutItem" ,pure,inheritable.} = object
{.push warning[Deprecated]: on.}

