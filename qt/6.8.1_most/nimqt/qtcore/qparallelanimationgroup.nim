const headerFile* = "QtCore/qparallelanimationgroup.h"

import nimqt/qtcore/qanimationgroup
type
    # Classes found in the C++ code
    QParallelAnimationGroup* {.header:headerFile,importcpp:"QParallelAnimationGroup" ,pure.} = object of QAnimationGroup
import nimqt/qtcore/qabstractanimation


type
    # typedefs found in the C++ code
    QParallelAnimationGroup_Direction * = QAbstractAnimation_Direction
    QParallelAnimationGroup_State * = QAbstractAnimation_State
    QParallelAnimationGroup_DeletionPolicy * = QAbstractAnimation_DeletionPolicy

# Stuff for class QParallelAnimationGroup

# Public constructors for QParallelAnimationGroup
import nimqt/qtcore/qobject
# 1 default parameters!
proc newQParallelAnimationGroup*(parent: ptr QObject): ptr QParallelAnimationGroup {. header:headerFile, importcpp:"new QParallelAnimationGroup(@)" .} #
proc newQParallelAnimationGroup*(): ptr QParallelAnimationGroup {. header:headerFile, importcpp:"new QParallelAnimationGroup(@)" .} #

# Public methods for QParallelAnimationGroup
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QParallelAnimationGroup_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QParallelAnimationGroup::tr(@)".} # Public static
proc static_QParallelAnimationGroup_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QParallelAnimationGroup::tr(@)".} # Public static
proc duration*(this: ptr QParallelAnimationGroup): cint {.header:headerFile, importcpp:"#.duration(@)".} # Public

# Protected methods methods for QParallelAnimationGroup
import nimqt/qtcore/qcoreevent
proc event*(this: ptr QParallelAnimationGroup, event: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Protected
proc updateCurrentTime*(this: ptr QParallelAnimationGroup, currentTime: cint) {.header:headerFile, importcpp:"#.updateCurrentTime(@)".} # Protected
proc updateState*(this: ptr QParallelAnimationGroup, newState: QAbstractAnimation_State, oldState: QAbstractAnimation_State) {.header:headerFile, importcpp:"#.updateState(@)".} # Protected
proc updateDirection*(this: ptr QParallelAnimationGroup, direction: QAbstractAnimation_Direction) {.header:headerFile, importcpp:"#.updateDirection(@)".} # Protected

export qanimationgroup
export qstring
export qabstractanimation
export qobject
export qcoreevent
