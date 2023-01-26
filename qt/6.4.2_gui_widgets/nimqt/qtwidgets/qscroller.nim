const headerFile* = "QtWidgets/qscroller.h"

import nimqt/qtcore/qobject
# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}


type
    # Classes and enums found in the C++ code
    # Global
    QScroller_State* {.header:headerFile,importcpp:"QScroller::State".} = enum Inactive = 0, Pressed = 0x1, Dragging = 0x2, Scrolling = 0x3
    QScroller_ScrollerGestureType* {.header:headerFile,importcpp:"QScroller::ScrollerGestureType".} = enum TouchGesture = 0, LeftMouseButtonGesture = 0x1, RightMouseButtonGesture = 0x2, MiddleMouseButtonGesture = 0x3
    QScroller_Input* {.header:headerFile,importcpp:"QScroller::Input".} = enum InputPress = 0, InputMove = 0x1, InputRelease = 0x2
    QScroller* {.header:headerFile,importcpp:"QScroller" ,pure.} = object of QObject
{.push warning[Deprecated]: on.}

# Stuff for class QScroller

# Public methods for QScroller
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QScroller_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QScroller::tr(@)".} # Public static
proc static_QScroller_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QScroller::tr(@)".} # Public static
proc static_QScroller_hasScroller*(target: ptr QObject): bool {.header:headerFile, importcpp:"QScroller::hasScroller(@)".} # Public static
proc static_QScroller_scroller*(target: ptr QObject): ptr QScroller {.header:headerFile, importcpp:"QScroller::scroller(@)".} # Public static
import nimqt/qtcore/qnamespace
proc static_QScroller_grabGesture*(target: ptr QObject, gestureType: QScroller_ScrollerGestureType): Qt_GestureType {.header:headerFile, importcpp:"QScroller::grabGesture(@)".} # Public static
proc static_QScroller_grabbedGesture*(target: ptr QObject): Qt_GestureType {.header:headerFile, importcpp:"QScroller::grabbedGesture(@)".} # Public static
proc static_QScroller_ungrabGesture*(target: ptr QObject) {.header:headerFile, importcpp:"QScroller::ungrabGesture(@)".} # Public static
proc target*(this: ptr QScroller): ptr QObject {.header:headerFile, importcpp:"#.target(@)".} # Public
proc state*(this: ptr QScroller): QScroller_State {.header:headerFile, importcpp:"#.state(@)".} # Public
proc stop*(this: ptr QScroller) {.header:headerFile, importcpp:"#.stop(@)".} # Public
import nimqt/qtwidgets/qscrollerproperties
proc scrollerProperties*(this: ptr QScroller): QScrollerProperties {.header:headerFile, importcpp:"#.scrollerProperties(@)".} # Public
proc setSnapPositionsX*(this: ptr QScroller, first: cfloat, interval: cfloat) {.header:headerFile, importcpp:"#.setSnapPositionsX(@)".} # Public
proc setSnapPositionsY*(this: ptr QScroller, first: cfloat, interval: cfloat) {.header:headerFile, importcpp:"#.setSnapPositionsY(@)".} # Public
proc setScrollerProperties*(this: ptr QScroller, prop: QScrollerProperties) {.header:headerFile, importcpp:"#.setScrollerProperties(@)".} # Public
proc resendPrepareEvent*(this: ptr QScroller) {.header:headerFile, importcpp:"#.resendPrepareEvent(@)".} # Public
proc stateChanged*(this: ptr QScroller, newstate: QScroller_State) {.header:headerFile, importcpp:"#.stateChanged(@)".} # Public
proc scrollerPropertiesChanged*(this: ptr QScroller, arg_0: QScrollerProperties) {.header:headerFile, importcpp:"#.scrollerPropertiesChanged(@)".} # Public

export qstring
export qnamespace
export qobject
export qscrollerproperties