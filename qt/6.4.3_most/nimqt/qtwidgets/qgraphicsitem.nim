const headerFile* = "QtWidgets/qgraphicsitem.h"

type
    # Enums found in the C++ code
    # Global
    QGraphicsItem_GraphicsItemFlag* {.header:headerFile,importcpp:"QGraphicsItem::GraphicsItemFlag".} = enum ItemIsMovable = 0x1, ItemIsSelectable = 0x2, ItemIsFocusable = 0x4, ItemClipsToShape = 0x8, 
        ItemClipsChildrenToShape = 0x10, ItemIgnoresTransformations = 0x20, ItemIgnoresParentOpacity = 0x40, ItemDoesntPropagateOpacityToChildren = 0x80, ItemStacksBehindParent = 0x100, 
        ItemUsesExtendedStyleOption = 0x200, ItemHasNoContents = 0x400, ItemSendsGeometryChanges = 0x800, ItemAcceptsInputMethod = 0x1000, ItemNegativeZStacksBehindParent = 0x2000, 
        ItemIsPanel = 0x4000, ItemIsFocusScope = 0x8000, ItemSendsScenePositionChanges = 0x10000, ItemStopsClickFocusPropagation = 0x20000, ItemStopsFocusHandling = 0x40000, 
        ItemContainsChildrenInShape = 0x80000
    QGraphicsItem_GraphicsItemChange* {.header:headerFile,importcpp:"QGraphicsItem::GraphicsItemChange".} = enum ItemPositionChange = 0, ItemVisibleChange = 0x2, ItemEnabledChange = 0x3, ItemSelectedChange = 0x4, 
        ItemParentChange = 0x5, ItemChildAddedChange = 0x6, ItemChildRemovedChange = 0x7, ItemTransformChange = 0x8, ItemPositionHasChanged = 0x9, 
        ItemTransformHasChanged = 0xa, ItemSceneChange = 0xb, ItemVisibleHasChanged = 0xc, ItemEnabledHasChanged = 0xd, ItemSelectedHasChanged = 0xe, 
        ItemParentHasChanged = 0xf, ItemSceneHasChanged = 0x10, ItemCursorChange = 0x11, ItemCursorHasChanged = 0x12, ItemToolTipChange = 0x13, 
        ItemToolTipHasChanged = 0x14, ItemFlagsChange = 0x15, ItemFlagsHaveChanged = 0x16, ItemZValueChange = 0x17, ItemZValueHasChanged = 0x18, 
        ItemOpacityChange = 0x19, ItemOpacityHasChanged = 0x1a, ItemScenePositionHasChanged = 0x1b, ItemRotationChange = 0x1c, ItemRotationHasChanged = 0x1d, 
        ItemScaleChange = 0x1e, ItemScaleHasChanged = 0x1f, ItemTransformOriginPointChange = 0x20, ItemTransformOriginPointHasChanged = 0x21
    QGraphicsItem_CacheMode* {.header:headerFile,importcpp:"QGraphicsItem::CacheMode".} = enum NoCache = 0, ItemCoordinateCache = 0x1, DeviceCoordinateCache = 0x2
    QGraphicsItem_PanelModality* {.header:headerFile,importcpp:"QGraphicsItem::PanelModality".} = enum NonModal = 0, PanelModal = 0x1, SceneModal = 0x2
    QGraphicsItem_Extension* {.header:headerFile,importcpp:"QGraphicsItem::Extension".} = enum UserExtension = -2147483648
    QGraphicsPixmapItem_ShapeMode* {.header:headerFile,importcpp:"QGraphicsPixmapItem::ShapeMode".} = enum MaskShape = 0, BoundingRectShape = 0x1, HeuristicMaskShape = 0x2

import nimqt/qtcore/qobject
type
    # Classes found in the C++ code
    QGraphicsItem* {.header:headerFile,importcpp:"QGraphicsItem" ,pure,inheritable.} = object
    QGraphicsObject* {.header:headerFile,importcpp:"QGraphicsObject" ,pure.} = object of QObject
    QAbstractGraphicsShapeItem* {.header:headerFile,importcpp:"QAbstractGraphicsShapeItem" ,pure.} = object of QGraphicsItem
    QGraphicsPathItem* {.header:headerFile,importcpp:"QGraphicsPathItem" ,pure.} = object of QAbstractGraphicsShapeItem
    QGraphicsRectItem* {.header:headerFile,importcpp:"QGraphicsRectItem" ,pure.} = object of QAbstractGraphicsShapeItem
    QGraphicsEllipseItem* {.header:headerFile,importcpp:"QGraphicsEllipseItem" ,pure.} = object of QAbstractGraphicsShapeItem
    QGraphicsPolygonItem* {.header:headerFile,importcpp:"QGraphicsPolygonItem" ,pure.} = object of QAbstractGraphicsShapeItem
    QGraphicsLineItem* {.header:headerFile,importcpp:"QGraphicsLineItem" ,pure.} = object of QGraphicsItem
    QGraphicsPixmapItem* {.header:headerFile,importcpp:"QGraphicsPixmapItem" ,pure.} = object of QGraphicsItem
    QGraphicsTextItem* {.header:headerFile,importcpp:"QGraphicsTextItem" ,pure.} = object of QGraphicsObject
    QGraphicsSimpleTextItem* {.header:headerFile,importcpp:"QGraphicsSimpleTextItem" ,pure.} = object of QAbstractGraphicsShapeItem
    QGraphicsItemGroup* {.header:headerFile,importcpp:"QGraphicsItemGroup" ,pure.} = object of QGraphicsItem
    QMetaTypeId* {.header:headerFile,importcpp:"QMetaTypeId" ,pure,inheritable.} = object
import nimqt/qtcore/qflags


type
    # typedefs found in the C++ code
    QGraphicsObject_GraphicsItemFlag * = QGraphicsItem_GraphicsItemFlag
    QGraphicsObject_GraphicsItemChange * = QGraphicsItem_GraphicsItemChange
    QGraphicsObject_CacheMode * = QGraphicsItem_CacheMode
    QGraphicsObject_PanelModality * = QGraphicsItem_PanelModality
    QGraphicsObject_Extension * = QGraphicsItem_Extension
    QGraphicsObject_GraphicsItemFlags * = QGraphicsItem_GraphicsItemFlags
    QAbstractGraphicsShapeItem_GraphicsItemFlag * = QGraphicsItem_GraphicsItemFlag
    QAbstractGraphicsShapeItem_GraphicsItemChange * = QGraphicsItem_GraphicsItemChange
    QAbstractGraphicsShapeItem_CacheMode * = QGraphicsItem_CacheMode
    QAbstractGraphicsShapeItem_PanelModality * = QGraphicsItem_PanelModality
    QAbstractGraphicsShapeItem_Extension * = QGraphicsItem_Extension
    QAbstractGraphicsShapeItem_GraphicsItemFlags * = QGraphicsItem_GraphicsItemFlags
    QGraphicsPathItem_GraphicsItemFlag * = QGraphicsItem_GraphicsItemFlag
    QGraphicsPathItem_GraphicsItemChange * = QGraphicsItem_GraphicsItemChange
    QGraphicsPathItem_CacheMode * = QGraphicsItem_CacheMode
    QGraphicsPathItem_PanelModality * = QGraphicsItem_PanelModality
    QGraphicsPathItem_Extension * = QGraphicsItem_Extension
    QGraphicsPathItem_GraphicsItemFlags * = QGraphicsItem_GraphicsItemFlags
    QGraphicsRectItem_GraphicsItemFlag * = QGraphicsItem_GraphicsItemFlag
    QGraphicsRectItem_GraphicsItemChange * = QGraphicsItem_GraphicsItemChange
    QGraphicsRectItem_CacheMode * = QGraphicsItem_CacheMode
    QGraphicsRectItem_PanelModality * = QGraphicsItem_PanelModality
    QGraphicsRectItem_Extension * = QGraphicsItem_Extension
    QGraphicsRectItem_GraphicsItemFlags * = QGraphicsItem_GraphicsItemFlags
    QGraphicsEllipseItem_GraphicsItemFlag * = QGraphicsItem_GraphicsItemFlag
    QGraphicsEllipseItem_GraphicsItemChange * = QGraphicsItem_GraphicsItemChange
    QGraphicsEllipseItem_CacheMode * = QGraphicsItem_CacheMode
    QGraphicsEllipseItem_PanelModality * = QGraphicsItem_PanelModality
    QGraphicsEllipseItem_Extension * = QGraphicsItem_Extension
    QGraphicsEllipseItem_GraphicsItemFlags * = QGraphicsItem_GraphicsItemFlags
    QGraphicsPolygonItem_GraphicsItemFlag * = QGraphicsItem_GraphicsItemFlag
    QGraphicsPolygonItem_GraphicsItemChange * = QGraphicsItem_GraphicsItemChange
    QGraphicsPolygonItem_CacheMode * = QGraphicsItem_CacheMode
    QGraphicsPolygonItem_PanelModality * = QGraphicsItem_PanelModality
    QGraphicsPolygonItem_Extension * = QGraphicsItem_Extension
    QGraphicsPolygonItem_GraphicsItemFlags * = QGraphicsItem_GraphicsItemFlags
    QGraphicsLineItem_GraphicsItemFlag * = QGraphicsItem_GraphicsItemFlag
    QGraphicsLineItem_GraphicsItemChange * = QGraphicsItem_GraphicsItemChange
    QGraphicsLineItem_CacheMode * = QGraphicsItem_CacheMode
    QGraphicsLineItem_PanelModality * = QGraphicsItem_PanelModality
    QGraphicsLineItem_Extension * = QGraphicsItem_Extension
    QGraphicsLineItem_GraphicsItemFlags * = QGraphicsItem_GraphicsItemFlags
    QGraphicsPixmapItem_GraphicsItemFlag * = QGraphicsItem_GraphicsItemFlag
    QGraphicsPixmapItem_GraphicsItemChange * = QGraphicsItem_GraphicsItemChange
    QGraphicsPixmapItem_CacheMode * = QGraphicsItem_CacheMode
    QGraphicsPixmapItem_PanelModality * = QGraphicsItem_PanelModality
    QGraphicsPixmapItem_Extension * = QGraphicsItem_Extension
    QGraphicsPixmapItem_GraphicsItemFlags * = QGraphicsItem_GraphicsItemFlags
    QGraphicsTextItem_GraphicsItemFlag * = QGraphicsItem_GraphicsItemFlag
    QGraphicsTextItem_GraphicsItemChange * = QGraphicsItem_GraphicsItemChange
    QGraphicsTextItem_CacheMode * = QGraphicsItem_CacheMode
    QGraphicsTextItem_PanelModality * = QGraphicsItem_PanelModality
    QGraphicsTextItem_Extension * = QGraphicsItem_Extension
    QGraphicsTextItem_GraphicsItemFlags * = QGraphicsItem_GraphicsItemFlags
    QGraphicsSimpleTextItem_GraphicsItemFlag * = QGraphicsItem_GraphicsItemFlag
    QGraphicsSimpleTextItem_GraphicsItemChange * = QGraphicsItem_GraphicsItemChange
    QGraphicsSimpleTextItem_CacheMode * = QGraphicsItem_CacheMode
    QGraphicsSimpleTextItem_PanelModality * = QGraphicsItem_PanelModality
    QGraphicsSimpleTextItem_Extension * = QGraphicsItem_Extension
    QGraphicsSimpleTextItem_GraphicsItemFlags * = QGraphicsItem_GraphicsItemFlags
    QGraphicsItemGroup_GraphicsItemFlag * = QGraphicsItem_GraphicsItemFlag
    QGraphicsItemGroup_GraphicsItemChange * = QGraphicsItem_GraphicsItemChange
    QGraphicsItemGroup_CacheMode * = QGraphicsItem_CacheMode
    QGraphicsItemGroup_PanelModality * = QGraphicsItem_PanelModality
    QGraphicsItemGroup_Extension * = QGraphicsItem_Extension
    QGraphicsItemGroup_GraphicsItemFlags * = QGraphicsItem_GraphicsItemFlags
    QGraphicsItem_GraphicsItemFlags * = QFlags[QGraphicsItem_GraphicsItemFlag]

# Consts
const
    # Global
    QGraphicsItem_Type* = 1 # from anonymous enum Type
    QGraphicsItem_UserType* = 65536 # from anonymous enum UserType
    QGraphicsPathItem_Type* = 2 # from anonymous enum Type
    QGraphicsRectItem_Type* = 3 # from anonymous enum Type
    QGraphicsEllipseItem_Type* = 4 # from anonymous enum Type
    QGraphicsPolygonItem_Type* = 5 # from anonymous enum Type
    QGraphicsLineItem_Type* = 6 # from anonymous enum Type
    QGraphicsPixmapItem_Type* = 7 # from anonymous enum Type
    QGraphicsTextItem_Type* = 8 # from anonymous enum Type
    QGraphicsSimpleTextItem_Type* = 9 # from anonymous enum Type
    QGraphicsItemGroup_Type* = 10 # from anonymous enum Type
    QMetaTypeId_Defined* = 1 # from anonymous enum Defined


export qflags
export qobject
