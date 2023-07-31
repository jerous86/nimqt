const headerFile* = "QtGui/qstylehints.h"

import nimqt/qtcore/qobject
type
    # Classes found in the C++ code
    QStyleHints* {.header:headerFile,importcpp:"QStyleHints" ,pure.} = object of QObject

# Stuff for class QStyleHints

# Public methods for QStyleHints
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QStyleHints_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QStyleHints::tr(@)".} # Public static
proc static_QStyleHints_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QStyleHints::tr(@)".} # Public static
proc setMouseDoubleClickInterval*(this: ptr QStyleHints, mouseDoubleClickInterval: cint) {.header:headerFile, importcpp:"#.setMouseDoubleClickInterval(@)".} # Public
proc mouseDoubleClickInterval*(this: ptr QStyleHints): cint {.header:headerFile, importcpp:"#.mouseDoubleClickInterval(@)".} # Public
proc mouseDoubleClickDistance*(this: ptr QStyleHints): cint {.header:headerFile, importcpp:"#.mouseDoubleClickDistance(@)".} # Public
proc touchDoubleTapDistance*(this: ptr QStyleHints): cint {.header:headerFile, importcpp:"#.touchDoubleTapDistance(@)".} # Public
proc setMousePressAndHoldInterval*(this: ptr QStyleHints, mousePressAndHoldInterval: cint) {.header:headerFile, importcpp:"#.setMousePressAndHoldInterval(@)".} # Public
proc mousePressAndHoldInterval*(this: ptr QStyleHints): cint {.header:headerFile, importcpp:"#.mousePressAndHoldInterval(@)".} # Public
proc setStartDragDistance*(this: ptr QStyleHints, startDragDistance: cint) {.header:headerFile, importcpp:"#.setStartDragDistance(@)".} # Public
proc startDragDistance*(this: ptr QStyleHints): cint {.header:headerFile, importcpp:"#.startDragDistance(@)".} # Public
proc setStartDragTime*(this: ptr QStyleHints, startDragTime: cint) {.header:headerFile, importcpp:"#.setStartDragTime(@)".} # Public
proc startDragTime*(this: ptr QStyleHints): cint {.header:headerFile, importcpp:"#.startDragTime(@)".} # Public
proc startDragVelocity*(this: ptr QStyleHints): cint {.header:headerFile, importcpp:"#.startDragVelocity(@)".} # Public
proc setKeyboardInputInterval*(this: ptr QStyleHints, keyboardInputInterval: cint) {.header:headerFile, importcpp:"#.setKeyboardInputInterval(@)".} # Public
proc keyboardInputInterval*(this: ptr QStyleHints): cint {.header:headerFile, importcpp:"#.keyboardInputInterval(@)".} # Public
proc keyboardAutoRepeatRate*(this: ptr QStyleHints): cint {.header:headerFile, importcpp:"#.keyboardAutoRepeatRate(@)".} # Public
proc setCursorFlashTime*(this: ptr QStyleHints, cursorFlashTime: cint) {.header:headerFile, importcpp:"#.setCursorFlashTime(@)".} # Public
proc cursorFlashTime*(this: ptr QStyleHints): cint {.header:headerFile, importcpp:"#.cursorFlashTime(@)".} # Public
proc showIsFullScreen*(this: ptr QStyleHints): bool {.header:headerFile, importcpp:"#.showIsFullScreen(@)".} # Public
proc showIsMaximized*(this: ptr QStyleHints): bool {.header:headerFile, importcpp:"#.showIsMaximized(@)".} # Public
proc showShortcutsInContextMenus*(this: ptr QStyleHints): bool {.header:headerFile, importcpp:"#.showShortcutsInContextMenus(@)".} # Public
proc setShowShortcutsInContextMenus*(this: ptr QStyleHints, showShortcutsInContextMenus: bool) {.header:headerFile, importcpp:"#.setShowShortcutsInContextMenus(@)".} # Public
proc passwordMaskDelay*(this: ptr QStyleHints): cint {.header:headerFile, importcpp:"#.passwordMaskDelay(@)".} # Public
import nimqt/qtcore/qchar
proc passwordMaskCharacter*(this: ptr QStyleHints): QChar {.header:headerFile, importcpp:"#.passwordMaskCharacter(@)".} # Public
proc fontSmoothingGamma*(this: ptr QStyleHints): cfloat {.header:headerFile, importcpp:"#.fontSmoothingGamma(@)".} # Public
proc useRtlExtensions*(this: ptr QStyleHints): bool {.header:headerFile, importcpp:"#.useRtlExtensions(@)".} # Public
proc setFocusOnTouchRelease*(this: ptr QStyleHints): bool {.header:headerFile, importcpp:"#.setFocusOnTouchRelease(@)".} # Public
import nimqt/qtcore/qnamespace
proc tabFocusBehavior*(this: ptr QStyleHints): Qt_TabFocusBehavior {.header:headerFile, importcpp:"#.tabFocusBehavior(@)".} # Public
proc setTabFocusBehavior*(this: ptr QStyleHints, tabFocusBehavior: Qt_TabFocusBehavior) {.header:headerFile, importcpp:"#.setTabFocusBehavior(@)".} # Public
proc singleClickActivation*(this: ptr QStyleHints): bool {.header:headerFile, importcpp:"#.singleClickActivation(@)".} # Public
proc useHoverEffects*(this: ptr QStyleHints): bool {.header:headerFile, importcpp:"#.useHoverEffects(@)".} # Public
proc setUseHoverEffects*(this: ptr QStyleHints, useHoverEffects: bool) {.header:headerFile, importcpp:"#.setUseHoverEffects(@)".} # Public
proc wheelScrollLines*(this: ptr QStyleHints): cint {.header:headerFile, importcpp:"#.wheelScrollLines(@)".} # Public
proc setWheelScrollLines*(this: ptr QStyleHints, scrollLines: cint) {.header:headerFile, importcpp:"#.setWheelScrollLines(@)".} # Public
proc setMouseQuickSelectionThreshold*(this: ptr QStyleHints, threshold: cint) {.header:headerFile, importcpp:"#.setMouseQuickSelectionThreshold(@)".} # Public
proc mouseQuickSelectionThreshold*(this: ptr QStyleHints): cint {.header:headerFile, importcpp:"#.mouseQuickSelectionThreshold(@)".} # Public
proc cursorFlashTimeChanged*(this: ptr QStyleHints, cursorFlashTime: cint) {.header:headerFile, importcpp:"#.cursorFlashTimeChanged(@)".} # Public
proc keyboardInputIntervalChanged*(this: ptr QStyleHints, keyboardInputInterval: cint) {.header:headerFile, importcpp:"#.keyboardInputIntervalChanged(@)".} # Public
proc mouseDoubleClickIntervalChanged*(this: ptr QStyleHints, mouseDoubleClickInterval: cint) {.header:headerFile, importcpp:"#.mouseDoubleClickIntervalChanged(@)".} # Public
proc mousePressAndHoldIntervalChanged*(this: ptr QStyleHints, mousePressAndHoldInterval: cint) {.header:headerFile, importcpp:"#.mousePressAndHoldIntervalChanged(@)".} # Public
proc startDragDistanceChanged*(this: ptr QStyleHints, startDragDistance: cint) {.header:headerFile, importcpp:"#.startDragDistanceChanged(@)".} # Public
proc startDragTimeChanged*(this: ptr QStyleHints, startDragTime: cint) {.header:headerFile, importcpp:"#.startDragTimeChanged(@)".} # Public
proc tabFocusBehaviorChanged*(this: ptr QStyleHints, tabFocusBehavior: Qt_TabFocusBehavior) {.header:headerFile, importcpp:"#.tabFocusBehaviorChanged(@)".} # Public
proc useHoverEffectsChanged*(this: ptr QStyleHints, useHoverEffects: bool) {.header:headerFile, importcpp:"#.useHoverEffectsChanged(@)".} # Public
proc showShortcutsInContextMenusChanged*(this: ptr QStyleHints, arg_0: bool) {.header:headerFile, importcpp:"#.showShortcutsInContextMenusChanged(@)".} # Public
proc wheelScrollLinesChanged*(this: ptr QStyleHints, scrollLines: cint) {.header:headerFile, importcpp:"#.wheelScrollLinesChanged(@)".} # Public
proc mouseQuickSelectionThresholdChanged*(this: ptr QStyleHints, threshold: cint) {.header:headerFile, importcpp:"#.mouseQuickSelectionThresholdChanged(@)".} # Public

export qstring
export qnamespace
export qchar
export qobject
