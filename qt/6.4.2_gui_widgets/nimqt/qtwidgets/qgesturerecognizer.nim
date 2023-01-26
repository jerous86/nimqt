const headerFile* = "QtWidgets/qgesturerecognizer.h"

# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}


type
    # Classes and enums found in the C++ code
    # Global
    QGestureRecognizer_ResultFlag* {.header:headerFile,importcpp:"QGestureRecognizer::ResultFlag".} = enum Ignore = 0, MayBeGesture = 0x1, TriggerGesture = 0x2, FinishGesture = 0x3, 
        CancelGesture = 0x4, ResultState_Mask = 0x5, ConsumeEventHint = 0x6, ResultHint_Mask = 0x7
    QGestureRecognizer* {.header:headerFile,importcpp:"QGestureRecognizer" ,pure.} = object {.inheritable.}
{.push warning[Deprecated]: on.}
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