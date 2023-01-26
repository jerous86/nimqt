const headerFile* = "QtWidgets/qdrawutil.h"

# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}


type
    # Classes and enums found in the C++ code
    # Global
    QDrawBorderPixmap_DrawingHint* {.header:headerFile,importcpp:"QDrawBorderPixmap::DrawingHint".} = enum OpaqueTopLeft = 0, OpaqueTop = 0x1, OpaqueTopRight = 0x2, OpaqueLeft = 0x3, 
        OpaqueCenter = 0x4, OpaqueRight = 0x5, OpaqueBottomLeft = 0x6, OpaqueBottom = 0x7, OpaqueBottomRight = 0x8, 
        OpaqueCorners = 0x9, OpaqueEdges = 0xa, OpaqueFrame = 0xb, OpaqueAll = 0xc
    QTileRules* {.header:headerFile,importcpp:"QTileRules" ,pure.} = object {.inheritable.}
{.push warning[Deprecated]: on.}
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