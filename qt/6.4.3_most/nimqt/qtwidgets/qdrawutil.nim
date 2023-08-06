const headerFile* = "QtWidgets/qdrawutil.h"

type
    # Enums found in the C++ code
    # Global
    QDrawBorderPixmap_DrawingHint* {.header:headerFile,importcpp:"QDrawBorderPixmap::DrawingHint".} = enum OpaqueTopLeft = 0x1, OpaqueTop = 0x2, OpaqueTopRight = 0x4, OpaqueLeft = 0x8, 
        OpaqueCenter = 0x10, OpaqueRight = 0x20, OpaqueBottomLeft = 0x40, OpaqueBottom = 0x80, OpaqueEdges = 0xaa, 
        OpaqueBottomRight = 0x100, OpaqueCorners = 0x145, OpaqueFrame = 0x1ef, OpaqueAll = 0x1ff

type
    # Classes found in the C++ code
    QTileRules* {.header:headerFile,importcpp:"QTileRules" ,pure,inheritable.} = object
import nimqt/qtcore/qflags


type
    # typedefs found in the C++ code
    QDrawBorderPixmap_DrawingHints * = QFlags[QDrawBorderPixmap_DrawingHint]

# Stuff for class QTileRules

# Public constructors for QTileRules
import nimqt/qtcore/qnamespace
proc newQTileRules*(horizontalRule: Qt_TileRule, verticalRule: Qt_TileRule): QTileRules {. header:headerFile, importcpp:"QTileRules(@)", constructor .} #
proc newQTileRules*(rule: Qt_TileRule): QTileRules {. header:headerFile, importcpp:"QTileRules(@)", constructor .} #

export qnamespace
export qflags
