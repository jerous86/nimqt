const headerFile* = "QtWidgets/qgraphicsgridlayout.h"

import nimqt/qtwidgets/qgraphicslayout
# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}


type
    # Classes and enums found in the C++ code
    QGraphicsGridLayout* {.header:headerFile,importcpp:"QGraphicsGridLayout" ,pure.} = object of QGraphicsLayout
{.push warning[Deprecated]: on.}


export qgraphicslayout