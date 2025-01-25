const headerFile* = "QtWidgets/qgraphicsanchorlayout.h"

import nimqt/qtwidgets/qgraphicslayout
import nimqt/qtcore/qobject
type
    # Classes found in the C++ code
    QGraphicsAnchor* {.header:headerFile,importcpp:"QGraphicsAnchor" ,pure.} = object of QObject
    QGraphicsAnchorLayout* {.header:headerFile,importcpp:"QGraphicsAnchorLayout" ,pure.} = object of QGraphicsLayout


export qgraphicslayout
export qobject
