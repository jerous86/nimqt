const headerFile* = "QtWidgets/qgraphicsitemanimation.h"

import nimqt/qtcore/qobject
# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}


type
    # Classes and enums found in the C++ code
    QGraphicsItemAnimation* {.header:headerFile,importcpp:"QGraphicsItemAnimation" ,pure.} = object of QObject
{.push warning[Deprecated]: on.}


export qobject