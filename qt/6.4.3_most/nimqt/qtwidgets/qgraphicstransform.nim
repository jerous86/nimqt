const headerFile* = "QtWidgets/qgraphicstransform.h"

import nimqt/qtcore/qobject
type
    # Classes found in the C++ code
    QGraphicsTransform* {.header:headerFile,importcpp:"QGraphicsTransform" ,pure.} = object of QObject
    QGraphicsScale* {.header:headerFile,importcpp:"QGraphicsScale" ,pure.} = object of QGraphicsTransform
    QGraphicsRotation* {.header:headerFile,importcpp:"QGraphicsRotation" ,pure.} = object of QGraphicsTransform


export qobject
