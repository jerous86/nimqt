const headerFile* = "QtCore/qvariantanimation.h"

import nimqt/qtcore/qabstractanimation
type
    # Classes found in the C++ code
    QVariantAnimation* {.header:headerFile,importcpp:"QVariantAnimation" ,pure.} = object of QAbstractAnimation


type
    # typedefs found in the C++ code
    QVariantAnimation_Direction * = QAbstractAnimation_Direction
    QVariantAnimation_State * = QAbstractAnimation_State
    QVariantAnimation_DeletionPolicy * = QAbstractAnimation_DeletionPolicy

# Stuff for class QVariantAnimation

# Public constructors for QVariantAnimation
import nimqt/qtcore/qobject
# 1 default parameters!
proc newQVariantAnimation*(parent: ptr QObject): ptr QVariantAnimation {. header:headerFile, importcpp:"new QVariantAnimation(@)" .} #
proc newQVariantAnimation*(): ptr QVariantAnimation {. header:headerFile, importcpp:"new QVariantAnimation(@)" .} #

# Public methods for QVariantAnimation
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QVariantAnimation_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QVariantAnimation::tr(@)".} # Public static
proc static_QVariantAnimation_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QVariantAnimation::tr(@)".} # Public static
import nimqt/qtcore/qvariant
proc startValue*(this: ptr QVariantAnimation): QVariant {.header:headerFile, importcpp:"#.startValue(@)".} # Public
proc setStartValue*(this: ptr QVariantAnimation, value: QVariant) {.header:headerFile, importcpp:"#.setStartValue(@)".} # Public
proc endValue*(this: ptr QVariantAnimation): QVariant {.header:headerFile, importcpp:"#.endValue(@)".} # Public
proc setEndValue*(this: ptr QVariantAnimation, value: QVariant) {.header:headerFile, importcpp:"#.setEndValue(@)".} # Public
proc keyValueAt*(this: ptr QVariantAnimation, step: cfloat): QVariant {.header:headerFile, importcpp:"#.keyValueAt(@)".} # Public
proc currentValue*(this: ptr QVariantAnimation): QVariant {.header:headerFile, importcpp:"#.currentValue(@)".} # Public
proc duration*(this: ptr QVariantAnimation): cint {.header:headerFile, importcpp:"#.duration(@)".} # Public
proc setDuration*(this: ptr QVariantAnimation, msecs: cint) {.header:headerFile, importcpp:"#.setDuration(@)".} # Public
import nimqt/qtcore/qproperty
proc bindableDuration*(this: ptr QVariantAnimation): QBindable[cint] {.header:headerFile, importcpp:"#.bindableDuration(@)".} # Public
import nimqt/qtcore/qeasingcurve
proc easingCurve*(this: ptr QVariantAnimation): QEasingCurve {.header:headerFile, importcpp:"#.easingCurve(@)".} # Public
proc setEasingCurve*(this: ptr QVariantAnimation, easing: QEasingCurve) {.header:headerFile, importcpp:"#.setEasingCurve(@)".} # Public
proc bindableEasingCurve*(this: ptr QVariantAnimation): QBindable[QEasingCurve] {.header:headerFile, importcpp:"#.bindableEasingCurve(@)".} # Public
proc valueChanged*(this: ptr QVariantAnimation, value: QVariant) {.header:headerFile, importcpp:"#.valueChanged(@)".} # Public

# Protected methods methods for QVariantAnimation
import nimqt/qtcore/qcoreevent
proc event*(this: ptr QVariantAnimation, event: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Protected
proc updateCurrentTime*(this: ptr QVariantAnimation, arg_0: cint) {.header:headerFile, importcpp:"#.updateCurrentTime(@)".} # Protected
proc updateState*(this: ptr QVariantAnimation, newState: QAbstractAnimation_State, oldState: QAbstractAnimation_State) {.header:headerFile, importcpp:"#.updateState(@)".} # Protected
proc updateCurrentValue*(this: ptr QVariantAnimation, value: QVariant) {.header:headerFile, importcpp:"#.updateCurrentValue(@)".} # Protected
proc interpolated*(this: ptr QVariantAnimation, `from`: QVariant, to: QVariant, progress: cfloat): QVariant {.header:headerFile, importcpp:"#.interpolated(@)".} # Protected

export qstring
export qproperty
export qabstractanimation
export qeasingcurve
export qvariant
export qobject
export qcoreevent
