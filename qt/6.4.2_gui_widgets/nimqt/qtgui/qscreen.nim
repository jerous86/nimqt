const headerFile* = "QtGui/qscreen.h"

import nimqt/qtcore/qobject
# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}


type
    # Classes and enums found in the C++ code
    QScreen* {.header:headerFile,importcpp:"QScreen" ,pure.} = object of QObject
{.push warning[Deprecated]: on.}

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
proc physicalDotsPerInchX*(this: ptr QScreen): cfloat {.header:headerFile, importcpp:"#.physicalDotsPerInchX(@)".} # Public
proc physicalDotsPerInchY*(this: ptr QScreen): cfloat {.header:headerFile, importcpp:"#.physicalDotsPerInchY(@)".} # Public
proc physicalDotsPerInch*(this: ptr QScreen): cfloat {.header:headerFile, importcpp:"#.physicalDotsPerInch(@)".} # Public
proc logicalDotsPerInchX*(this: ptr QScreen): cfloat {.header:headerFile, importcpp:"#.logicalDotsPerInchX(@)".} # Public
proc logicalDotsPerInchY*(this: ptr QScreen): cfloat {.header:headerFile, importcpp:"#.logicalDotsPerInchY(@)".} # Public
proc logicalDotsPerInch*(this: ptr QScreen): cfloat {.header:headerFile, importcpp:"#.logicalDotsPerInch(@)".} # Public
proc devicePixelRatio*(this: ptr QScreen): cfloat {.header:headerFile, importcpp:"#.devicePixelRatio(@)".} # Public
import nimqt/qtcore/qnamespace
proc primaryOrientation*(this: ptr QScreen): Qt_ScreenOrientation {.header:headerFile, importcpp:"#.primaryOrientation(@)".} # Public
proc orientation*(this: ptr QScreen): Qt_ScreenOrientation {.header:headerFile, importcpp:"#.orientation(@)".} # Public
proc nativeOrientation*(this: ptr QScreen): Qt_ScreenOrientation {.header:headerFile, importcpp:"#.nativeOrientation(@)".} # Public
proc angleBetween*(this: ptr QScreen, a: Qt_ScreenOrientation, b: Qt_ScreenOrientation): cint {.header:headerFile, importcpp:"#.angleBetween(@)".} # Public
proc isPortrait*(this: ptr QScreen, orientation: Qt_ScreenOrientation): bool {.header:headerFile, importcpp:"#.isPortrait(@)".} # Public
proc isLandscape*(this: ptr QScreen, orientation: Qt_ScreenOrientation): bool {.header:headerFile, importcpp:"#.isLandscape(@)".} # Public
proc refreshRate*(this: ptr QScreen): cfloat {.header:headerFile, importcpp:"#.refreshRate(@)".} # Public
proc physicalDotsPerInchChanged*(this: ptr QScreen, dpi: cfloat) {.header:headerFile, importcpp:"#.physicalDotsPerInchChanged(@)".} # Public
proc logicalDotsPerInchChanged*(this: ptr QScreen, dpi: cfloat) {.header:headerFile, importcpp:"#.logicalDotsPerInchChanged(@)".} # Public
proc primaryOrientationChanged*(this: ptr QScreen, orientation: Qt_ScreenOrientation) {.header:headerFile, importcpp:"#.primaryOrientationChanged(@)".} # Public
proc orientationChanged*(this: ptr QScreen, orientation: Qt_ScreenOrientation) {.header:headerFile, importcpp:"#.orientationChanged(@)".} # Public
proc refreshRateChanged*(this: ptr QScreen, refreshRate: cfloat) {.header:headerFile, importcpp:"#.refreshRateChanged(@)".} # Public

export qstring
export qnamespace
export qobject