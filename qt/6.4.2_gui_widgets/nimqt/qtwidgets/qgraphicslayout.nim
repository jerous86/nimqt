const headerFile* = "QtWidgets/qgraphicslayout.h"

import nimqt/qtwidgets/qgraphicslayoutitem
# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}


type
    # Classes and enums found in the C++ code
    QGraphicsLayout* {.header:headerFile,importcpp:"QGraphicsLayout" ,pure.} = object of QGraphicsLayoutItem
{.push warning[Deprecated]: on.}


export qgraphicslayoutitem