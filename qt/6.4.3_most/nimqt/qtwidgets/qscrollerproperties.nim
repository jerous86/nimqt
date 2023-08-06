const headerFile* = "QtWidgets/qscrollerproperties.h"

type
    # Enums found in the C++ code
    # Global
    QScrollerProperties_OvershootPolicy* {.header:headerFile,importcpp:"QScrollerProperties::OvershootPolicy".} = enum OvershootWhenScrollable = 0, OvershootAlwaysOff = 0x1, OvershootAlwaysOn = 0x2
    QScrollerProperties_FrameRates* {.header:headerFile,importcpp:"QScrollerProperties::FrameRates".} = enum Standard = 0, Fps60 = 0x1, Fps30 = 0x2, Fps20 = 0x3
    QScrollerProperties_ScrollMetric* {.header:headerFile,importcpp:"QScrollerProperties::ScrollMetric".} = enum MousePressEventDelay = 0, DragStartDistance = 0x1, DragVelocitySmoothingFactor = 0x2, AxisLockThreshold = 0x3, 
        ScrollingCurve = 0x4, DecelerationFactor = 0x5, MinimumVelocity = 0x6, MaximumVelocity = 0x7, MaximumClickThroughVelocity = 0x8, 
        AcceleratingFlickMaximumTime = 0x9, AcceleratingFlickSpeedupFactor = 0xa, SnapPositionRatio = 0xb, SnapTime = 0xc, OvershootDragResistanceFactor = 0xd, 
        OvershootDragDistanceFactor = 0xe, OvershootScrollDistanceFactor = 0xf, OvershootScrollTime = 0x10, HorizontalOvershootPolicy = 0x11, VerticalOvershootPolicy = 0x12, 
        FrameRate = 0x13, ScrollMetricCount = 0x14

type
    # Classes found in the C++ code
    QScrollerProperties* {.header:headerFile,importcpp:"QScrollerProperties" ,pure,inheritable.} = object

# Stuff for class QScrollerProperties

# Public constructors for QScrollerProperties
proc newQScrollerProperties*(): QScrollerProperties {. header:headerFile, importcpp:"QScrollerProperties(@)", constructor .} #
proc newQScrollerProperties*(sp: QScrollerProperties): QScrollerProperties {. header:headerFile, importcpp:"QScrollerProperties(@)", constructor .} #

# Public methods for QScrollerProperties
proc `!=`*(this: QScrollerProperties, sp: QScrollerProperties): bool {.header:headerFile, importcpp:"#.operator!=(@)".} # Public
proc static_QScrollerProperties_setDefaultScrollerProperties*(sp: QScrollerProperties) {.header:headerFile, importcpp:"QScrollerProperties::setDefaultScrollerProperties(@)".} # Public static
proc static_QScrollerProperties_unsetDefaultScrollerProperties*() {.header:headerFile, importcpp:"QScrollerProperties::unsetDefaultScrollerProperties(@)".} # Public static
import nimqt/qtcore/qvariant
proc scrollMetric*(this: QScrollerProperties, metric: QScrollerProperties_ScrollMetric): QVariant {.header:headerFile, importcpp:"#.scrollMetric(@)".} # Public
proc setScrollMetric*(this: QScrollerProperties, metric: QScrollerProperties_ScrollMetric, value: QVariant) {.header:headerFile, importcpp:"#.setScrollMetric(@)".} # Public

export qvariant
