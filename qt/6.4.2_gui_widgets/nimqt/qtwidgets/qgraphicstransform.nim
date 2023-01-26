const headerFile* = "QtWidgets/qgraphicstransform.h"

import nimqt/qtcore/qobject
# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}


type
    # Classes and enums found in the C++ code
    QGraphicsTransform* {.header:headerFile,importcpp:"QGraphicsTransform" ,pure.} = object of QObject
    QGraphicsScale* {.header:headerFile,importcpp:"QGraphicsScale" ,pure.} = object of QGraphicsTransform
    QGraphicsRotation* {.header:headerFile,importcpp:"QGraphicsRotation" ,pure.} = object of QGraphicsTransform
{.push warning[Deprecated]: on.}


export qobject