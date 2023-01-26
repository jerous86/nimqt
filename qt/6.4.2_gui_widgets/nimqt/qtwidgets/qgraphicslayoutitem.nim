const headerFile* = "QtWidgets/qgraphicslayoutitem.h"

# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}


type
    # Classes and enums found in the C++ code
    QGraphicsLayoutItem* {.header:headerFile,importcpp:"QGraphicsLayoutItem" ,pure.} = object {.inheritable.}
{.push warning[Deprecated]: on.}

