const headerFile* = "QtCore/qtimeline.h"

type
    # Enums found in the C++ code
    # Global
    QTimeLine_State* {.header:headerFile,importcpp:"QTimeLine::State".} = enum NotRunning = 0, Paused = 0x1, Running = 0x2
    QTimeLine_Direction* {.header:headerFile,importcpp:"QTimeLine::Direction".} = enum Forward = 0, Backward = 0x1

import nimqt/qtcore/qobject
type
    # Classes found in the C++ code
    QTimeLine* {.header:headerFile,importcpp:"QTimeLine" ,pure.} = object of QObject

# Stuff for class QTimeLine

# Public constructors for QTimeLine
# 2 default parameters!
proc newQTimeLine*(duration: cint, parent: ptr QObject): ptr QTimeLine {. header:headerFile, importcpp:"new QTimeLine(@)" .} #
proc newQTimeLine*(duration: cint): ptr QTimeLine {. header:headerFile, importcpp:"new QTimeLine(@)" .} #
proc newQTimeLine*(): ptr QTimeLine {. header:headerFile, importcpp:"new QTimeLine(@)" .} #

# Public methods for QTimeLine
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QTimeLine_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QTimeLine::tr(@)".} # Public static
proc static_QTimeLine_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QTimeLine::tr(@)".} # Public static
proc state*(this: ptr QTimeLine): QTimeLine_State {.header:headerFile, importcpp:"#.state(@)".} # Public
proc loopCount*(this: ptr QTimeLine): cint {.header:headerFile, importcpp:"#.loopCount(@)".} # Public
proc setLoopCount*(this: ptr QTimeLine, count: cint) {.header:headerFile, importcpp:"#.setLoopCount(@)".} # Public
import nimqt/qtcore/qproperty
proc bindableLoopCount*(this: ptr QTimeLine): QBindable[cint] {.header:headerFile, importcpp:"#.bindableLoopCount(@)".} # Public
proc direction*(this: ptr QTimeLine): QTimeLine_Direction {.header:headerFile, importcpp:"#.direction(@)".} # Public
proc setDirection*(this: ptr QTimeLine, direction: QTimeLine_Direction) {.header:headerFile, importcpp:"#.setDirection(@)".} # Public
proc bindableDirection*(this: ptr QTimeLine): QBindable[QTimeLine_Direction] {.header:headerFile, importcpp:"#.bindableDirection(@)".} # Public
proc duration*(this: ptr QTimeLine): cint {.header:headerFile, importcpp:"#.duration(@)".} # Public
proc setDuration*(this: ptr QTimeLine, duration: cint) {.header:headerFile, importcpp:"#.setDuration(@)".} # Public
proc bindableDuration*(this: ptr QTimeLine): QBindable[cint] {.header:headerFile, importcpp:"#.bindableDuration(@)".} # Public
proc startFrame*(this: ptr QTimeLine): cint {.header:headerFile, importcpp:"#.startFrame(@)".} # Public
proc setStartFrame*(this: ptr QTimeLine, frame: cint) {.header:headerFile, importcpp:"#.setStartFrame(@)".} # Public
proc endFrame*(this: ptr QTimeLine): cint {.header:headerFile, importcpp:"#.endFrame(@)".} # Public
proc setEndFrame*(this: ptr QTimeLine, frame: cint) {.header:headerFile, importcpp:"#.setEndFrame(@)".} # Public
proc setFrameRange*(this: ptr QTimeLine, startFrame: cint, endFrame: cint) {.header:headerFile, importcpp:"#.setFrameRange(@)".} # Public
proc updateInterval*(this: ptr QTimeLine): cint {.header:headerFile, importcpp:"#.updateInterval(@)".} # Public
proc setUpdateInterval*(this: ptr QTimeLine, interval: cint) {.header:headerFile, importcpp:"#.setUpdateInterval(@)".} # Public
proc bindableUpdateInterval*(this: ptr QTimeLine): QBindable[cint] {.header:headerFile, importcpp:"#.bindableUpdateInterval(@)".} # Public
import nimqt/qtcore/qeasingcurve
proc easingCurve*(this: ptr QTimeLine): QEasingCurve {.header:headerFile, importcpp:"#.easingCurve(@)".} # Public
proc setEasingCurve*(this: ptr QTimeLine, curve: QEasingCurve) {.header:headerFile, importcpp:"#.setEasingCurve(@)".} # Public
proc bindableEasingCurve*(this: ptr QTimeLine): QBindable[QEasingCurve] {.header:headerFile, importcpp:"#.bindableEasingCurve(@)".} # Public
proc currentTime*(this: ptr QTimeLine): cint {.header:headerFile, importcpp:"#.currentTime(@)".} # Public
proc bindableCurrentTime*(this: ptr QTimeLine): QBindable[cint] {.header:headerFile, importcpp:"#.bindableCurrentTime(@)".} # Public
proc currentFrame*(this: ptr QTimeLine): cint {.header:headerFile, importcpp:"#.currentFrame(@)".} # Public
proc currentValue*(this: ptr QTimeLine): cfloat {.header:headerFile, importcpp:"#.currentValue(@)".} # Public
proc frameForTime*(this: ptr QTimeLine, msec: cint): cint {.header:headerFile, importcpp:"#.frameForTime(@)".} # Public
proc valueForTime*(this: ptr QTimeLine, msec: cint): cfloat {.header:headerFile, importcpp:"#.valueForTime(@)".} # Public
proc start*(this: ptr QTimeLine) {.header:headerFile, importcpp:"#.start(@)".} # Public
proc resume*(this: ptr QTimeLine) {.header:headerFile, importcpp:"#.resume(@)".} # Public
proc stop*(this: ptr QTimeLine) {.header:headerFile, importcpp:"#.stop(@)".} # Public
proc setPaused*(this: ptr QTimeLine, paused: bool) {.header:headerFile, importcpp:"#.setPaused(@)".} # Public
proc setCurrentTime*(this: ptr QTimeLine, msec: cint) {.header:headerFile, importcpp:"#.setCurrentTime(@)".} # Public
proc toggleDirection*(this: ptr QTimeLine) {.header:headerFile, importcpp:"#.toggleDirection(@)".} # Public

# Protected methods methods for QTimeLine
import nimqt/qtcore/qcoreevent
proc timerEvent*(this: ptr QTimeLine, event: ptr QTimerEvent) {.header:headerFile, importcpp:"#.timerEvent(@)".} # Protected

export qstring
export qproperty
export qeasingcurve
export qobject
export qcoreevent
