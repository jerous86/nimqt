const headerFile* = "QtWidgets/qgraphicsscene.h"

import nimqt/qtcore/qobject
# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}


type
    # Classes and enums found in the C++ code
    # Global
    QGraphicsScene_ItemIndexMethod* {.header:headerFile,importcpp:"QGraphicsScene::ItemIndexMethod".} = enum BspTreeIndex = 0, NoIndex = 0x1
    QGraphicsScene_SceneLayer* {.header:headerFile,importcpp:"QGraphicsScene::SceneLayer".} = enum ItemLayer = 0, BackgroundLayer = 0x1, ForegroundLayer = 0x2, AllLayers = 0x3
    QGraphicsScene* {.header:headerFile,importcpp:"QGraphicsScene" ,pure.} = object of QObject
{.push warning[Deprecated]: on.}
import nimqt/qtcore/qflags


type
    # typedefs found in the C++ code
    QGraphicsScene_SceneLayers * = QFlags[QGraphicsScene_SceneLayer]


export qflags
export qobject