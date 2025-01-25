const headerFile* = "QtWidgets/qgraphicsitemanimation.h"

import nimqt/qtcore/qobject
type
    # Classes found in the C++ code
    QGraphicsItemAnimation* {.header:headerFile,importcpp:"QGraphicsItemAnimation" ,pure.} = object of QObject


export qobject
