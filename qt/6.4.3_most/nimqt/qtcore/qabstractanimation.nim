const headerFile* = "QtCore/qabstractanimation.h"

type
    # Enums found in the C++ code
    # Global
    QAbstractAnimation_Direction* {.header:headerFile,importcpp:"QAbstractAnimation::Direction".} = enum Forward = 0, Backward = 0x1
    QAbstractAnimation_State* {.header:headerFile,importcpp:"QAbstractAnimation::State".} = enum Stopped = 0, Paused = 0x1, Running = 0x2
    QAbstractAnimation_DeletionPolicy* {.header:headerFile,importcpp:"QAbstractAnimation::DeletionPolicy".} = enum KeepWhenStopped = 0, DeleteWhenStopped = 0x1

import nimqt/qtcore/qobject
type
    # Classes found in the C++ code
    QAbstractAnimation* {.header:headerFile,importcpp:"QAbstractAnimation" ,pure.} = object of QObject
    QAnimationDriver* {.header:headerFile,importcpp:"QAnimationDriver" ,pure.} = object of QObject

# Stuff for class QAbstractAnimation

# Public constructors for QAbstractAnimation
# 1 default parameters!
proc newQAbstractAnimation*(parent: ptr QObject): ptr QAbstractAnimation {. header:headerFile, importcpp:"new QAbstractAnimation(@)" .} #
proc newQAbstractAnimation*(): ptr QAbstractAnimation {. header:headerFile, importcpp:"new QAbstractAnimation(@)" .} #

# Public methods for QAbstractAnimation
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QAbstractAnimation_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QAbstractAnimation::tr(@)".} # Public static
proc static_QAbstractAnimation_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QAbstractAnimation::tr(@)".} # Public static
proc state*(this: ptr QAbstractAnimation): QAbstractAnimation_State {.header:headerFile, importcpp:"#.state(@)".} # Public
import nimqt/qtcore/qproperty
proc bindableState*(this: ptr QAbstractAnimation): QBindable[QAbstractAnimation_State] {.header:headerFile, importcpp:"#.bindableState(@)".} # Public
proc direction*(this: ptr QAbstractAnimation): QAbstractAnimation_Direction {.header:headerFile, importcpp:"#.direction(@)".} # Public
proc setDirection*(this: ptr QAbstractAnimation, direction: QAbstractAnimation_Direction) {.header:headerFile, importcpp:"#.setDirection(@)".} # Public
proc bindableDirection*(this: ptr QAbstractAnimation): QBindable[QAbstractAnimation_Direction] {.header:headerFile, importcpp:"#.bindableDirection(@)".} # Public
proc currentTime*(this: ptr QAbstractAnimation): cint {.header:headerFile, importcpp:"#.currentTime(@)".} # Public
proc bindableCurrentTime*(this: ptr QAbstractAnimation): QBindable[cint] {.header:headerFile, importcpp:"#.bindableCurrentTime(@)".} # Public
proc currentLoopTime*(this: ptr QAbstractAnimation): cint {.header:headerFile, importcpp:"#.currentLoopTime(@)".} # Public
proc loopCount*(this: ptr QAbstractAnimation): cint {.header:headerFile, importcpp:"#.loopCount(@)".} # Public
proc setLoopCount*(this: ptr QAbstractAnimation, loopCount: cint) {.header:headerFile, importcpp:"#.setLoopCount(@)".} # Public
proc bindableLoopCount*(this: ptr QAbstractAnimation): QBindable[cint] {.header:headerFile, importcpp:"#.bindableLoopCount(@)".} # Public
proc currentLoop*(this: ptr QAbstractAnimation): cint {.header:headerFile, importcpp:"#.currentLoop(@)".} # Public
proc bindableCurrentLoop*(this: ptr QAbstractAnimation): QBindable[cint] {.header:headerFile, importcpp:"#.bindableCurrentLoop(@)".} # Public
proc duration*(this: ptr QAbstractAnimation): cint {.header:headerFile, importcpp:"#.duration(@)".} # Public
proc totalDuration*(this: ptr QAbstractAnimation): cint {.header:headerFile, importcpp:"#.totalDuration(@)".} # Public
proc finished*(this: ptr QAbstractAnimation) {.header:headerFile, importcpp:"#.finished(@)".} # Public
proc stateChanged*(this: ptr QAbstractAnimation, newState: QAbstractAnimation_State, oldState: QAbstractAnimation_State) {.header:headerFile, importcpp:"#.stateChanged(@)".} # Public
proc currentLoopChanged*(this: ptr QAbstractAnimation, currentLoop: cint) {.header:headerFile, importcpp:"#.currentLoopChanged(@)".} # Public
proc directionChanged*(this: ptr QAbstractAnimation, arg_0: QAbstractAnimation_Direction) {.header:headerFile, importcpp:"#.directionChanged(@)".} # Public
proc start*(this: ptr QAbstractAnimation, policy: QAbstractAnimation_DeletionPolicy) {.header:headerFile, importcpp:"#.start(@)".} # Public
proc pause*(this: ptr QAbstractAnimation) {.header:headerFile, importcpp:"#.pause(@)".} # Public
proc resume*(this: ptr QAbstractAnimation) {.header:headerFile, importcpp:"#.resume(@)".} # Public
proc setPaused*(this: ptr QAbstractAnimation, arg_0: bool) {.header:headerFile, importcpp:"#.setPaused(@)".} # Public
proc stop*(this: ptr QAbstractAnimation) {.header:headerFile, importcpp:"#.stop(@)".} # Public
proc setCurrentTime*(this: ptr QAbstractAnimation, msecs: cint) {.header:headerFile, importcpp:"#.setCurrentTime(@)".} # Public

# Protected methods methods for QAbstractAnimation
import nimqt/qtcore/qcoreevent
proc event*(this: ptr QAbstractAnimation, event: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Protected
proc updateCurrentTime*(this: ptr QAbstractAnimation, currentTime: cint) {.header:headerFile, importcpp:"#.updateCurrentTime(@)".} # Protected
proc updateState*(this: ptr QAbstractAnimation, newState: QAbstractAnimation_State, oldState: QAbstractAnimation_State) {.header:headerFile, importcpp:"#.updateState(@)".} # Protected
proc updateDirection*(this: ptr QAbstractAnimation, direction: QAbstractAnimation_Direction) {.header:headerFile, importcpp:"#.updateDirection(@)".} # Protected
# Stuff for class QAnimationDriver

# Public constructors for QAnimationDriver
# 1 default parameters!
proc newQAnimationDriver*(parent: ptr QObject): ptr QAnimationDriver {. header:headerFile, importcpp:"new QAnimationDriver(@)" .} #
proc newQAnimationDriver*(): ptr QAnimationDriver {. header:headerFile, importcpp:"new QAnimationDriver(@)" .} #

# Public methods for QAnimationDriver
# 1 default parameters!
proc static_QAnimationDriver_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QAnimationDriver::tr(@)".} # Public static
proc static_QAnimationDriver_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QAnimationDriver::tr(@)".} # Public static
proc advance*(this: ptr QAnimationDriver) {.header:headerFile, importcpp:"#.advance(@)".} # Public
proc install*(this: ptr QAnimationDriver) {.header:headerFile, importcpp:"#.install(@)".} # Public
proc uninstall*(this: ptr QAnimationDriver) {.header:headerFile, importcpp:"#.uninstall(@)".} # Public
proc isRunning*(this: ptr QAnimationDriver): bool {.header:headerFile, importcpp:"#.isRunning(@)".} # Public
proc elapsed*(this: ptr QAnimationDriver): clonglong {.header:headerFile, importcpp:"#.elapsed(@)".} # Public
proc started*(this: ptr QAnimationDriver) {.header:headerFile, importcpp:"#.started(@)".} # Public
proc stopped*(this: ptr QAnimationDriver) {.header:headerFile, importcpp:"#.stopped(@)".} # Public

# Protected methods methods for QAnimationDriver
proc advanceAnimation*(this: ptr QAnimationDriver) {.header:headerFile, importcpp:"#.advanceAnimation(@)".} # Protected
proc start*(this: ptr QAnimationDriver) {.header:headerFile, importcpp:"#.start(@)".} # Protected
proc stop*(this: ptr QAnimationDriver) {.header:headerFile, importcpp:"#.stop(@)".} # Protected

export qstring
export qproperty
export qobject
export qcoreevent
