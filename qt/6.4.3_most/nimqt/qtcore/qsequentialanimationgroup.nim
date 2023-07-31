const headerFile* = "QtCore/qsequentialanimationgroup.h"

import nimqt/qtcore/qanimationgroup
type
    # Classes found in the C++ code
    QSequentialAnimationGroup* {.header:headerFile,importcpp:"QSequentialAnimationGroup" ,pure.} = object of QAnimationGroup
import nimqt/qtcore/qabstractanimation


type
    # typedefs found in the C++ code
    QSequentialAnimationGroup_Direction * = QAbstractAnimation_Direction
    QSequentialAnimationGroup_State * = QAbstractAnimation_State
    QSequentialAnimationGroup_DeletionPolicy * = QAbstractAnimation_DeletionPolicy

# Stuff for class QSequentialAnimationGroup

# Public constructors for QSequentialAnimationGroup
import nimqt/qtcore/qobject
# 1 default parameters!
proc newQSequentialAnimationGroup*(parent: ptr QObject): ptr QSequentialAnimationGroup {. header:headerFile, importcpp:"new QSequentialAnimationGroup(@)" .} #
proc newQSequentialAnimationGroup*(): ptr QSequentialAnimationGroup {. header:headerFile, importcpp:"new QSequentialAnimationGroup(@)" .} #

# Public methods for QSequentialAnimationGroup
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QSequentialAnimationGroup_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QSequentialAnimationGroup::tr(@)".} # Public static
proc static_QSequentialAnimationGroup_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QSequentialAnimationGroup::tr(@)".} # Public static
import nimqt/qtcore/qpauseanimation
proc addPause*(this: ptr QSequentialAnimationGroup, msecs: cint): ptr QPauseAnimation {.header:headerFile, importcpp:"#.addPause(@)".} # Public
proc insertPause*(this: ptr QSequentialAnimationGroup, index: cint, msecs: cint): ptr QPauseAnimation {.header:headerFile, importcpp:"#.insertPause(@)".} # Public
proc currentAnimation*(this: ptr QSequentialAnimationGroup): ptr QAbstractAnimation {.header:headerFile, importcpp:"#.currentAnimation(@)".} # Public
import nimqt/qtcore/qproperty
proc bindableCurrentAnimation*(this: ptr QSequentialAnimationGroup): QBindable[ptr QAbstractAnimation] {.header:headerFile, importcpp:"#.bindableCurrentAnimation(@)".} # Public
proc duration*(this: ptr QSequentialAnimationGroup): cint {.header:headerFile, importcpp:"#.duration(@)".} # Public
proc currentAnimationChanged*(this: ptr QSequentialAnimationGroup, current: ptr QAbstractAnimation) {.header:headerFile, importcpp:"#.currentAnimationChanged(@)".} # Public

# Protected methods methods for QSequentialAnimationGroup
import nimqt/qtcore/qcoreevent
proc event*(this: ptr QSequentialAnimationGroup, event: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Protected
proc updateCurrentTime*(this: ptr QSequentialAnimationGroup, arg_0: cint) {.header:headerFile, importcpp:"#.updateCurrentTime(@)".} # Protected
proc updateState*(this: ptr QSequentialAnimationGroup, newState: QAbstractAnimation_State, oldState: QAbstractAnimation_State) {.header:headerFile, importcpp:"#.updateState(@)".} # Protected
proc updateDirection*(this: ptr QSequentialAnimationGroup, direction: QAbstractAnimation_Direction) {.header:headerFile, importcpp:"#.updateDirection(@)".} # Protected

export qanimationgroup
export qpauseanimation
export qstring
export qproperty
export qabstractanimation
export qobject
export qcoreevent
