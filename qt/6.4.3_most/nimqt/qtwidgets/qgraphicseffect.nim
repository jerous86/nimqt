const headerFile* = "QtWidgets/qgraphicseffect.h"

type
    # Enums found in the C++ code
    # Global
    QGraphicsEffect_ChangeFlag* {.header:headerFile,importcpp:"QGraphicsEffect::ChangeFlag".} = enum SourceAttached = 0x1, SourceDetached = 0x2, SourceBoundingRectChanged = 0x4, SourceInvalidated = 0x8
    QGraphicsEffect_PixmapPadMode* {.header:headerFile,importcpp:"QGraphicsEffect::PixmapPadMode".} = enum NoPad = 0, PadToTransparentBorder = 0x1, PadToEffectiveBoundingRect = 0x2
    QGraphicsBlurEffect_BlurHint* {.header:headerFile,importcpp:"QGraphicsBlurEffect::BlurHint".} = enum PerformanceHint = 0, QualityHint = 0x1, AnimationHint = 0x2

import nimqt/qtcore/qobject
type
    # Classes found in the C++ code
    QGraphicsEffect* {.header:headerFile,importcpp:"QGraphicsEffect" ,pure.} = object of QObject
    QGraphicsColorizeEffect* {.header:headerFile,importcpp:"QGraphicsColorizeEffect" ,pure.} = object of QGraphicsEffect
    QGraphicsBlurEffect* {.header:headerFile,importcpp:"QGraphicsBlurEffect" ,pure.} = object of QGraphicsEffect
    QGraphicsDropShadowEffect* {.header:headerFile,importcpp:"QGraphicsDropShadowEffect" ,pure.} = object of QGraphicsEffect
    QGraphicsOpacityEffect* {.header:headerFile,importcpp:"QGraphicsOpacityEffect" ,pure.} = object of QGraphicsEffect
import nimqt/qtcore/qflags


type
    # typedefs found in the C++ code
    QGraphicsColorizeEffect_ChangeFlag * = QGraphicsEffect_ChangeFlag
    QGraphicsColorizeEffect_PixmapPadMode * = QGraphicsEffect_PixmapPadMode
    QGraphicsColorizeEffect_ChangeFlags * = QGraphicsEffect_ChangeFlags
    QGraphicsBlurEffect_ChangeFlag * = QGraphicsEffect_ChangeFlag
    QGraphicsBlurEffect_PixmapPadMode * = QGraphicsEffect_PixmapPadMode
    QGraphicsBlurEffect_ChangeFlags * = QGraphicsEffect_ChangeFlags
    QGraphicsDropShadowEffect_ChangeFlag * = QGraphicsEffect_ChangeFlag
    QGraphicsDropShadowEffect_PixmapPadMode * = QGraphicsEffect_PixmapPadMode
    QGraphicsDropShadowEffect_ChangeFlags * = QGraphicsEffect_ChangeFlags
    QGraphicsOpacityEffect_ChangeFlag * = QGraphicsEffect_ChangeFlag
    QGraphicsOpacityEffect_PixmapPadMode * = QGraphicsEffect_PixmapPadMode
    QGraphicsOpacityEffect_ChangeFlags * = QGraphicsEffect_ChangeFlags
    QGraphicsEffect_ChangeFlags * = QFlags[QGraphicsEffect_ChangeFlag]
    QGraphicsBlurEffect_BlurHints * = QFlags[QGraphicsBlurEffect_BlurHint]


export qflags
export qobject
