const headerFile* = "QtWidgets/qgraphicsproxywidget.h"

import nimqt/qtwidgets/qgraphicswidget
type
    # Classes found in the C++ code
    QGraphicsProxyWidget* {.header:headerFile,importcpp:"QGraphicsProxyWidget" ,pure.} = object of QGraphicsWidget
import nimqt/qtwidgets/qgraphicsitem


type
    # typedefs found in the C++ code
    QGraphicsProxyWidget_GraphicsItemFlag * = QGraphicsItem_GraphicsItemFlag
    QGraphicsProxyWidget_GraphicsItemChange * = QGraphicsItem_GraphicsItemChange
    QGraphicsProxyWidget_CacheMode * = QGraphicsItem_CacheMode
    QGraphicsProxyWidget_PanelModality * = QGraphicsItem_PanelModality
    QGraphicsProxyWidget_Extension * = QGraphicsItem_Extension
    QGraphicsProxyWidget_GraphicsItemFlags * = QGraphicsItem_GraphicsItemFlags

# Consts
const
    # Global
    QGraphicsProxyWidget_Type* = 12 # from anonymous enum Type


export qgraphicswidget
export qgraphicsitem
