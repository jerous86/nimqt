const headerFile* = "QtWidgets/qgraphicssceneevent.h"

type
    # Enums found in the C++ code
    # Global
    QGraphicsSceneContextMenuEvent_Reason* {.header:headerFile,importcpp:"QGraphicsSceneContextMenuEvent::Reason".} = enum Mouse = 0, Keyboard = 0x1, Other = 0x2

import nimqt/qtcore/qcoreevent
type
    # Classes found in the C++ code
    QGraphicsSceneEvent* {.header:headerFile,importcpp:"QGraphicsSceneEvent" ,pure.} = object of QEvent
    QGraphicsSceneMouseEvent* {.header:headerFile,importcpp:"QGraphicsSceneMouseEvent" ,pure.} = object of QGraphicsSceneEvent
    QGraphicsSceneWheelEvent* {.header:headerFile,importcpp:"QGraphicsSceneWheelEvent" ,pure.} = object of QGraphicsSceneEvent
    QGraphicsSceneContextMenuEvent* {.header:headerFile,importcpp:"QGraphicsSceneContextMenuEvent" ,pure.} = object of QGraphicsSceneEvent
    QGraphicsSceneHoverEvent* {.header:headerFile,importcpp:"QGraphicsSceneHoverEvent" ,pure.} = object of QGraphicsSceneEvent
    QGraphicsSceneHelpEvent* {.header:headerFile,importcpp:"QGraphicsSceneHelpEvent" ,pure.} = object of QGraphicsSceneEvent
    QGraphicsSceneDragDropEvent* {.header:headerFile,importcpp:"QGraphicsSceneDragDropEvent" ,pure.} = object of QGraphicsSceneEvent
    QGraphicsSceneResizeEvent* {.header:headerFile,importcpp:"QGraphicsSceneResizeEvent" ,pure.} = object of QGraphicsSceneEvent
    QGraphicsSceneMoveEvent* {.header:headerFile,importcpp:"QGraphicsSceneMoveEvent" ,pure.} = object of QGraphicsSceneEvent


type
    # typedefs found in the C++ code
    QGraphicsSceneEvent_Type * = QEvent_Type
    QGraphicsSceneMouseEvent_Type * = QEvent_Type
    QGraphicsSceneWheelEvent_Type * = QEvent_Type
    QGraphicsSceneContextMenuEvent_Type * = QEvent_Type
    QGraphicsSceneHoverEvent_Type * = QEvent_Type
    QGraphicsSceneHelpEvent_Type * = QEvent_Type
    QGraphicsSceneDragDropEvent_Type * = QEvent_Type
    QGraphicsSceneResizeEvent_Type * = QEvent_Type
    QGraphicsSceneMoveEvent_Type * = QEvent_Type


export qcoreevent
