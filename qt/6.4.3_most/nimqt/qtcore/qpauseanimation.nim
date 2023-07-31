const headerFile* = "QtCore/qpauseanimation.h"

import nimqt/qtcore/qabstractanimation
type
    # Classes found in the C++ code
    QPauseAnimation* {.header:headerFile,importcpp:"QPauseAnimation" ,pure.} = object of QAbstractAnimation


type
    # typedefs found in the C++ code
    QPauseAnimation_Direction * = QAbstractAnimation_Direction
    QPauseAnimation_State * = QAbstractAnimation_State
    QPauseAnimation_DeletionPolicy * = QAbstractAnimation_DeletionPolicy

# Stuff for class QPauseAnimation

# Public constructors for QPauseAnimation
import nimqt/qtcore/qobject
# 1 default parameters!
proc newQPauseAnimation*(parent: ptr QObject): ptr QPauseAnimation {. header:headerFile, importcpp:"new QPauseAnimation(@)" .} #
proc newQPauseAnimation*(): ptr QPauseAnimation {. header:headerFile, importcpp:"new QPauseAnimation(@)" .} #
# 1 default parameters!
proc newQPauseAnimation*(msecs: cint, parent: ptr QObject): ptr QPauseAnimation {. header:headerFile, importcpp:"new QPauseAnimation(@)" .} #
proc newQPauseAnimation*(msecs: cint): ptr QPauseAnimation {. header:headerFile, importcpp:"new QPauseAnimation(@)" .} #

# Public methods for QPauseAnimation
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QPauseAnimation_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QPauseAnimation::tr(@)".} # Public static
proc static_QPauseAnimation_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QPauseAnimation::tr(@)".} # Public static
proc duration*(this: ptr QPauseAnimation): cint {.header:headerFile, importcpp:"#.duration(@)".} # Public
proc setDuration*(this: ptr QPauseAnimation, msecs: cint) {.header:headerFile, importcpp:"#.setDuration(@)".} # Public
import nimqt/qtcore/qproperty
proc bindableDuration*(this: ptr QPauseAnimation): QBindable[cint] {.header:headerFile, importcpp:"#.bindableDuration(@)".} # Public

# Protected methods methods for QPauseAnimation
import nimqt/qtcore/qcoreevent
proc event*(this: ptr QPauseAnimation, e: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Protected
proc updateCurrentTime*(this: ptr QPauseAnimation, arg_0: cint) {.header:headerFile, importcpp:"#.updateCurrentTime(@)".} # Protected

export qstring
export qproperty
export qabstractanimation
export qobject
export qcoreevent
