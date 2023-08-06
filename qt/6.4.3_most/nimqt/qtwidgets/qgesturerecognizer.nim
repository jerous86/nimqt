const headerFile* = "QtWidgets/qgesturerecognizer.h"

type
    # Enums found in the C++ code
    # Global
    QGestureRecognizer_ResultFlag* {.header:headerFile,importcpp:"QGestureRecognizer::ResultFlag".} = enum Ignore = 0x1, MayBeGesture = 0x2, TriggerGesture = 0x4, FinishGesture = 0x8, 
        CancelGesture = 0x10, ResultState_Mask = 0xff, ConsumeEventHint = 0x100, ResultHint_Mask = 0xff00

type
    # Classes found in the C++ code
    QGestureRecognizer* {.header:headerFile,importcpp:"QGestureRecognizer" ,pure,inheritable.} = object
import nimqt/qtcore/qflags


type
    # typedefs found in the C++ code
    QGestureRecognizer_Result * = QFlags[QGestureRecognizer_ResultFlag]

# Stuff for class QGestureRecognizer

# Public constructors for QGestureRecognizer
proc newQGestureRecognizer*(): QGestureRecognizer {. header:headerFile, importcpp:"QGestureRecognizer(@)", constructor .} #

# Public methods for QGestureRecognizer
import nimqt/qtwidgets/qgesture
import nimqt/qtcore/qobject
proc create*(this: QGestureRecognizer, target: ptr QObject): ptr QGesture {.header:headerFile, importcpp:"#.create(@)".} # Public
import nimqt/qtcore/qcoreevent
proc recognize*(this: QGestureRecognizer, state: ptr QGesture, watched: ptr QObject, event: ptr QEvent): QFlags[QGestureRecognizer_ResultFlag] {.header:headerFile, importcpp:"#.recognize(@)".} # Public
proc reset*(this: QGestureRecognizer, state: ptr QGesture) {.header:headerFile, importcpp:"#.reset(@)".} # Public
import nimqt/qtcore/qnamespace
proc static_QGestureRecognizer_registerRecognizer*(recognizer: ptr QGestureRecognizer): Qt_GestureType {.header:headerFile, importcpp:"QGestureRecognizer::registerRecognizer(@)".} # Public static
proc static_QGestureRecognizer_unregisterRecognizer*(`type`: Qt_GestureType) {.header:headerFile, importcpp:"QGestureRecognizer::unregisterRecognizer(@)".} # Public static

export qgesture
export qnamespace
export qflags
export qobject
export qcoreevent
