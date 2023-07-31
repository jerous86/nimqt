const headerFile* = "QtCore/qanimationgroup.h"

import nimqt/qtcore/qabstractanimation
type
    # Classes found in the C++ code
    QAnimationGroup* {.header:headerFile,importcpp:"QAnimationGroup" ,pure.} = object of QAbstractAnimation


type
    # typedefs found in the C++ code
    QAnimationGroup_Direction * = QAbstractAnimation_Direction
    QAnimationGroup_State * = QAbstractAnimation_State
    QAnimationGroup_DeletionPolicy * = QAbstractAnimation_DeletionPolicy

# Stuff for class QAnimationGroup

# Public constructors for QAnimationGroup
import nimqt/qtcore/qobject
# 1 default parameters!
proc newQAnimationGroup*(parent: ptr QObject): ptr QAnimationGroup {. header:headerFile, importcpp:"new QAnimationGroup(@)" .} #
proc newQAnimationGroup*(): ptr QAnimationGroup {. header:headerFile, importcpp:"new QAnimationGroup(@)" .} #

# Public methods for QAnimationGroup
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QAnimationGroup_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QAnimationGroup::tr(@)".} # Public static
proc static_QAnimationGroup_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QAnimationGroup::tr(@)".} # Public static
proc animationAt*(this: ptr QAnimationGroup, index: cint): ptr QAbstractAnimation {.header:headerFile, importcpp:"#.animationAt(@)".} # Public
proc animationCount*(this: ptr QAnimationGroup): cint {.header:headerFile, importcpp:"#.animationCount(@)".} # Public
proc indexOfAnimation*(this: ptr QAnimationGroup, animation: ptr QAbstractAnimation): cint {.header:headerFile, importcpp:"#.indexOfAnimation(@)".} # Public
proc addAnimation*(this: ptr QAnimationGroup, animation: ptr QAbstractAnimation) {.header:headerFile, importcpp:"#.addAnimation(@)".} # Public
proc insertAnimation*(this: ptr QAnimationGroup, index: cint, animation: ptr QAbstractAnimation) {.header:headerFile, importcpp:"#.insertAnimation(@)".} # Public
proc removeAnimation*(this: ptr QAnimationGroup, animation: ptr QAbstractAnimation) {.header:headerFile, importcpp:"#.removeAnimation(@)".} # Public
proc takeAnimation*(this: ptr QAnimationGroup, index: cint): ptr QAbstractAnimation {.header:headerFile, importcpp:"#.takeAnimation(@)".} # Public
proc clear*(this: ptr QAnimationGroup) {.header:headerFile, importcpp:"#.clear(@)".} # Public

# Protected methods methods for QAnimationGroup
import nimqt/qtcore/qcoreevent
proc event*(this: ptr QAnimationGroup, event: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Protected

export qstring
export qabstractanimation
export qobject
export qcoreevent
