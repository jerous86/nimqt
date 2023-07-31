const headerFile* = "QtWidgets/qgraphicsgridlayout.h"

import nimqt/qtwidgets/qgraphicslayout
type
    # Classes found in the C++ code
    QGraphicsGridLayout* {.header:headerFile,importcpp:"QGraphicsGridLayout" ,pure.} = object of QGraphicsLayout


export qgraphicslayout
