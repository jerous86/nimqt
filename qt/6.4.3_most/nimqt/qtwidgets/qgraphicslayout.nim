const headerFile* = "QtWidgets/qgraphicslayout.h"

import nimqt/qtwidgets/qgraphicslayoutitem
type
    # Classes found in the C++ code
    QGraphicsLayout* {.header:headerFile,importcpp:"QGraphicsLayout" ,pure.} = object of QGraphicsLayoutItem


export qgraphicslayoutitem
