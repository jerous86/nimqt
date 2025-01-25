const headerFile* = "QtWidgets/qgraphicslinearlayout.h"

import nimqt/qtwidgets/qgraphicslayout
type
    # Classes found in the C++ code
    QGraphicsLinearLayout* {.header:headerFile,importcpp:"QGraphicsLinearLayout" ,pure.} = object of QGraphicsLayout


export qgraphicslayout
