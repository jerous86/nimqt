const headerFile* = "QtGui/qscreen.h"

import nimqt/qtcore/qobject
type
    # Classes found in the C++ code
    QScreen* {.header:headerFile,importcpp:"QScreen" ,pure.} = object of QObject

# Stuff for class QScreen

# Public methods for QScreen
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QScreen_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QScreen::tr(@)".} # Public static
proc static_QScreen_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QScreen::tr(@)".} # Public static
proc name*(this: ptr QScreen): QString {.header:headerFile, importcpp:"#.name(@)".} # Public
proc manufacturer*(this: ptr QScreen): QString {.header:headerFile, importcpp:"#.manufacturer(@)".} # Public
proc model*(this: ptr QScreen): QString {.header:headerFile, importcpp:"#.model(@)".} # Public
proc serialNumber*(this: ptr QScreen): QString {.header:headerFile, importcpp:"#.serialNumber(@)".} # Public
proc depth*(this: ptr QScreen): cint {.header:headerFile, importcpp:"#.depth(@)".} # Public
import nimqt/qtcore/qsize
proc size*(this: ptr QScreen): QSize {.header:headerFile, importcpp:"#.size(@)".} # Public
import nimqt/qtcore/qrect
proc geometry*(this: ptr QScreen): QRect {.header:headerFile, importcpp:"#.geometry(@)".} # Public
proc physicalSize*(this: ptr QScreen): QSizeF {.header:headerFile, importcpp:"#.physicalSize(@)".} # Public
proc physicalDotsPerInchX*(this: ptr QScreen): cfloat {.header:headerFile, importcpp:"#.physicalDotsPerInchX(@)".} # Public
proc physicalDotsPerInchY*(this: ptr QScreen): cfloat {.header:headerFile, importcpp:"#.physicalDotsPerInchY(@)".} # Public
proc physicalDotsPerInch*(this: ptr QScreen): cfloat {.header:headerFile, importcpp:"#.physicalDotsPerInch(@)".} # Public
proc logicalDotsPerInchX*(this: ptr QScreen): cfloat {.header:headerFile, importcpp:"#.logicalDotsPerInchX(@)".} # Public
proc logicalDotsPerInchY*(this: ptr QScreen): cfloat {.header:headerFile, importcpp:"#.logicalDotsPerInchY(@)".} # Public
proc logicalDotsPerInch*(this: ptr QScreen): cfloat {.header:headerFile, importcpp:"#.logicalDotsPerInch(@)".} # Public
proc devicePixelRatio*(this: ptr QScreen): cfloat {.header:headerFile, importcpp:"#.devicePixelRatio(@)".} # Public
proc availableSize*(this: ptr QScreen): QSize {.header:headerFile, importcpp:"#.availableSize(@)".} # Public
proc availableGeometry*(this: ptr QScreen): QRect {.header:headerFile, importcpp:"#.availableGeometry(@)".} # Public
import nimqt/qtcore/qlist
proc virtualSiblings*(this: ptr QScreen): QList[ptr QScreen] {.header:headerFile, importcpp:"#.virtualSiblings(@)".} # Public
import nimqt/qtcore/qpoint
proc virtualSiblingAt*(this: ptr QScreen, point: QPoint): ptr QScreen {.header:headerFile, importcpp:"#.virtualSiblingAt(@)".} # Public
proc virtualSize*(this: ptr QScreen): QSize {.header:headerFile, importcpp:"#.virtualSize(@)".} # Public
proc virtualGeometry*(this: ptr QScreen): QRect {.header:headerFile, importcpp:"#.virtualGeometry(@)".} # Public
proc availableVirtualSize*(this: ptr QScreen): QSize {.header:headerFile, importcpp:"#.availableVirtualSize(@)".} # Public
proc availableVirtualGeometry*(this: ptr QScreen): QRect {.header:headerFile, importcpp:"#.availableVirtualGeometry(@)".} # Public
import nimqt/qtcore/qnamespace
proc primaryOrientation*(this: ptr QScreen): Qt_ScreenOrientation {.header:headerFile, importcpp:"#.primaryOrientation(@)".} # Public
proc orientation*(this: ptr QScreen): Qt_ScreenOrientation {.header:headerFile, importcpp:"#.orientation(@)".} # Public
proc nativeOrientation*(this: ptr QScreen): Qt_ScreenOrientation {.header:headerFile, importcpp:"#.nativeOrientation(@)".} # Public
proc angleBetween*(this: ptr QScreen, a: Qt_ScreenOrientation, b: Qt_ScreenOrientation): cint {.header:headerFile, importcpp:"#.angleBetween(@)".} # Public
import nimqt/qtgui/qtransform
proc transformBetween*(this: ptr QScreen, a: Qt_ScreenOrientation, b: Qt_ScreenOrientation, target: QRect): QTransform {.header:headerFile, importcpp:"#.transformBetween(@)".} # Public
proc mapBetween*(this: ptr QScreen, a: Qt_ScreenOrientation, b: Qt_ScreenOrientation, rect: QRect): QRect {.header:headerFile, importcpp:"#.mapBetween(@)".} # Public
proc isPortrait*(this: ptr QScreen, orientation: Qt_ScreenOrientation): bool {.header:headerFile, importcpp:"#.isPortrait(@)".} # Public
proc isLandscape*(this: ptr QScreen, orientation: Qt_ScreenOrientation): bool {.header:headerFile, importcpp:"#.isLandscape(@)".} # Public
proc refreshRate*(this: ptr QScreen): cfloat {.header:headerFile, importcpp:"#.refreshRate(@)".} # Public
proc geometryChanged*(this: ptr QScreen, geometry: QRect) {.header:headerFile, importcpp:"#.geometryChanged(@)".} # Public
proc availableGeometryChanged*(this: ptr QScreen, geometry: QRect) {.header:headerFile, importcpp:"#.availableGeometryChanged(@)".} # Public
proc physicalSizeChanged*(this: ptr QScreen, size: QSizeF) {.header:headerFile, importcpp:"#.physicalSizeChanged(@)".} # Public
proc physicalDotsPerInchChanged*(this: ptr QScreen, dpi: cfloat) {.header:headerFile, importcpp:"#.physicalDotsPerInchChanged(@)".} # Public
proc logicalDotsPerInchChanged*(this: ptr QScreen, dpi: cfloat) {.header:headerFile, importcpp:"#.logicalDotsPerInchChanged(@)".} # Public
proc virtualGeometryChanged*(this: ptr QScreen, rect: QRect) {.header:headerFile, importcpp:"#.virtualGeometryChanged(@)".} # Public
proc primaryOrientationChanged*(this: ptr QScreen, orientation: Qt_ScreenOrientation) {.header:headerFile, importcpp:"#.primaryOrientationChanged(@)".} # Public
proc orientationChanged*(this: ptr QScreen, orientation: Qt_ScreenOrientation) {.header:headerFile, importcpp:"#.orientationChanged(@)".} # Public
proc refreshRateChanged*(this: ptr QScreen, refreshRate: cfloat) {.header:headerFile, importcpp:"#.refreshRateChanged(@)".} # Public

export qstring
export qsize
export qnamespace
export qlist
export qpoint
export qrect
export qobject
export qtransform
