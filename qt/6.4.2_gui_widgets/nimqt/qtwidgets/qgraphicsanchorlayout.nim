const headerFile* = "QtWidgets/qgraphicsanchorlayout.h"

import nimqt/qtwidgets/qgraphicslayout
import nimqt/qtcore/qobject
# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}


type
    # Classes and enums found in the C++ code
    QGraphicsAnchor* {.header:headerFile,importcpp:"QGraphicsAnchor" ,pure.} = object of QObject
    QGraphicsAnchorLayout* {.header:headerFile,importcpp:"QGraphicsAnchorLayout" ,pure.} = object of QGraphicsLayout
{.push warning[Deprecated]: on.}


export qgraphicslayout
export qobject