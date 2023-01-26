const headerFile* = "QtWidgets/qgraphicswidget.h"

import nimqt/qtwidgets/qgraphicsitem
# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}


type
    # Classes and enums found in the C++ code
    QGraphicsWidget* {.header:headerFile,importcpp:"QGraphicsWidget" ,pure.} = object of QGraphicsObject
{.push warning[Deprecated]: on.}


type
    # typedefs found in the C++ code
    QGraphicsWidget_GraphicsItemFlag * = QGraphicsItem_GraphicsItemFlag
    QGraphicsWidget_GraphicsItemChange * = QGraphicsItem_GraphicsItemChange
    QGraphicsWidget_CacheMode * = QGraphicsItem_CacheMode
    QGraphicsWidget_PanelModality * = QGraphicsItem_PanelModality
    QGraphicsWidget_Extension * = QGraphicsItem_Extension
    QGraphicsWidget_GraphicsItemFlags * = QGraphicsItem_GraphicsItemFlags

# Consts
const
    # Global
    QGraphicsWidget_Type* = 0 # from anonymous enum Type


export qgraphicsitem