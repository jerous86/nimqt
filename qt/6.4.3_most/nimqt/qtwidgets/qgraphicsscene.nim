const headerFile* = "QtWidgets/qgraphicsscene.h"

type
    # Enums found in the C++ code
    # Global
    QGraphicsScene_ItemIndexMethod* {.header:headerFile,importcpp:"QGraphicsScene::ItemIndexMethod".} = enum NoIndex = -1, BspTreeIndex = 0
    QGraphicsScene_SceneLayer* {.header:headerFile,importcpp:"QGraphicsScene::SceneLayer".} = enum ItemLayer = 0x1, BackgroundLayer = 0x2, ForegroundLayer = 0x4, AllLayers = 0xffff

import nimqt/qtcore/qobject
type
    # Classes found in the C++ code
    QGraphicsScene* {.header:headerFile,importcpp:"QGraphicsScene" ,pure.} = object of QObject
import nimqt/qtcore/qflags


type
    # typedefs found in the C++ code
    QGraphicsScene_SceneLayers * = QFlags[QGraphicsScene_SceneLayer]


export qflags
export qobject
