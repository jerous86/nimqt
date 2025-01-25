const headerFile* = "QtWidgets/qapplication.h"

import nimqt/qtgui/qguiapplication
type
    # Classes found in the C++ code
    QApplication* {.header:headerFile,importcpp:"QApplication" ,pure.} = object of QGuiApplication

# Stuff for class QApplication

# Public constructors for QApplication
proc newQApplication*(argc: cint, argv: ptr ptr char): ptr QApplication {. header:headerFile, importcpp:"new QApplication(@)" .} #

# Public methods for QApplication
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QApplication_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QApplication::tr(@)".} # Public static
proc static_QApplication_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QApplication::tr(@)".} # Public static
import nimqt/qtwidgets/qstyle
proc static_QApplication_style*(): ptr QStyle {.header:headerFile, importcpp:"QApplication::style(@)".} # Public static
proc static_QApplication_setStyle*(arg_0: ptr QStyle) {.header:headerFile, importcpp:"QApplication::setStyle(@)".} # Public static
proc static_QApplication_setStyle*(arg_1: QString): ptr QStyle {.header:headerFile, importcpp:"QApplication::setStyle(@)".} # Public static
import nimqt/qtwidgets/qwidget
import nimqt/qtgui/qpalette
proc static_QApplication_palette*(arg_1: ptr QWidget): QPalette {.header:headerFile, importcpp:"QApplication::palette(@)".} # Public static
proc static_QApplication_palette*(className: ptr char): QPalette {.header:headerFile, importcpp:"QApplication::palette(@)".} # Public static
# 1 default parameters!
proc static_QApplication_setPalette*(arg_0: QPalette, className: ptr char) {.header:headerFile, importcpp:"QApplication::setPalette(@)".} # Public static
proc static_QApplication_setPalette*(arg_0: QPalette) {.header:headerFile, importcpp:"QApplication::setPalette(@)".} # Public static
import nimqt/qtgui/qfont
proc static_QApplication_font*(): QFont {.header:headerFile, importcpp:"QApplication::font(@)".} # Public static
proc static_QApplication_font*(arg_1: ptr QWidget): QFont {.header:headerFile, importcpp:"QApplication::font(@)".} # Public static
proc static_QApplication_font*(className: ptr char): QFont {.header:headerFile, importcpp:"QApplication::font(@)".} # Public static
# 1 default parameters!
proc static_QApplication_setFont*(arg_0: QFont, className: ptr char) {.header:headerFile, importcpp:"QApplication::setFont(@)".} # Public static
proc static_QApplication_setFont*(arg_0: QFont) {.header:headerFile, importcpp:"QApplication::setFont(@)".} # Public static
import nimqt/qtgui/qfontmetrics
proc static_QApplication_fontMetrics*(): QFontMetrics {.header:headerFile, importcpp:"QApplication::fontMetrics(@)".} # Public static
proc static_QApplication_activePopupWidget*(): ptr QWidget {.header:headerFile, importcpp:"QApplication::activePopupWidget(@)".} # Public static
proc static_QApplication_activeModalWidget*(): ptr QWidget {.header:headerFile, importcpp:"QApplication::activeModalWidget(@)".} # Public static
proc static_QApplication_focusWidget*(): ptr QWidget {.header:headerFile, importcpp:"QApplication::focusWidget(@)".} # Public static
proc static_QApplication_activeWindow*(): ptr QWidget {.header:headerFile, importcpp:"QApplication::activeWindow(@)".} # Public static
proc static_QApplication_setActiveWindow*(act: ptr QWidget) {.header:headerFile, importcpp:"QApplication::setActiveWindow(@)".} # Public static
import nimqt/qtcore/qpoint
proc static_QApplication_widgetAt*(p: QPoint): ptr QWidget {.header:headerFile, importcpp:"QApplication::widgetAt(@)".} # Public static
proc static_QApplication_widgetAt*(x: cint, y: cint): ptr QWidget {.header:headerFile, importcpp:"QApplication::widgetAt(@)".} # Public static
proc static_QApplication_topLevelAt*(p: QPoint): ptr QWidget {.header:headerFile, importcpp:"QApplication::topLevelAt(@)".} # Public static
proc static_QApplication_topLevelAt*(x: cint, y: cint): ptr QWidget {.header:headerFile, importcpp:"QApplication::topLevelAt(@)".} # Public static
proc static_QApplication_beep*() {.header:headerFile, importcpp:"QApplication::beep(@)".} # Public static
# 1 default parameters!
proc static_QApplication_alert*(widget: ptr QWidget, duration: cint) {.header:headerFile, importcpp:"QApplication::alert(@)".} # Public static
proc static_QApplication_alert*(widget: ptr QWidget) {.header:headerFile, importcpp:"QApplication::alert(@)".} # Public static
proc static_QApplication_setCursorFlashTime*(arg_0: cint) {.header:headerFile, importcpp:"QApplication::setCursorFlashTime(@)".} # Public static
proc static_QApplication_cursorFlashTime*(): cint {.header:headerFile, importcpp:"QApplication::cursorFlashTime(@)".} # Public static
proc static_QApplication_setDoubleClickInterval*(arg_0: cint) {.header:headerFile, importcpp:"QApplication::setDoubleClickInterval(@)".} # Public static
proc static_QApplication_doubleClickInterval*(): cint {.header:headerFile, importcpp:"QApplication::doubleClickInterval(@)".} # Public static
proc static_QApplication_setKeyboardInputInterval*(arg_0: cint) {.header:headerFile, importcpp:"QApplication::setKeyboardInputInterval(@)".} # Public static
proc static_QApplication_keyboardInputInterval*(): cint {.header:headerFile, importcpp:"QApplication::keyboardInputInterval(@)".} # Public static
proc static_QApplication_setWheelScrollLines*(arg_0: cint) {.header:headerFile, importcpp:"QApplication::setWheelScrollLines(@)".} # Public static
proc static_QApplication_wheelScrollLines*(): cint {.header:headerFile, importcpp:"QApplication::wheelScrollLines(@)".} # Public static
proc static_QApplication_setStartDragTime*(ms: cint) {.header:headerFile, importcpp:"QApplication::setStartDragTime(@)".} # Public static
proc static_QApplication_startDragTime*(): cint {.header:headerFile, importcpp:"QApplication::startDragTime(@)".} # Public static
proc static_QApplication_setStartDragDistance*(l: cint) {.header:headerFile, importcpp:"QApplication::setStartDragDistance(@)".} # Public static
proc static_QApplication_startDragDistance*(): cint {.header:headerFile, importcpp:"QApplication::startDragDistance(@)".} # Public static
import nimqt/qtcore/qnamespace
proc static_QApplication_isEffectEnabled*(arg_0: Qt_UIEffect): bool {.header:headerFile, importcpp:"QApplication::isEffectEnabled(@)".} # Public static
# 1 default parameters!
proc static_QApplication_setEffectEnabled*(arg_0: Qt_UIEffect, enable: bool) {.header:headerFile, importcpp:"QApplication::setEffectEnabled(@)".} # Public static
proc static_QApplication_setEffectEnabled*(arg_0: Qt_UIEffect) {.header:headerFile, importcpp:"QApplication::setEffectEnabled(@)".} # Public static
proc static_QApplication_exec*(): cint {.header:headerFile, importcpp:"QApplication::exec(@)".} # Public static
import nimqt/qtcore/qobject
import nimqt/qtcore/qcoreevent
proc notify*(this: ptr QApplication, arg_0: ptr QObject, arg_1: ptr QEvent): bool {.header:headerFile, importcpp:"#.notify(@)".} # Public
proc focusChanged*(this: ptr QApplication, old: ptr QWidget, now: ptr QWidget) {.header:headerFile, importcpp:"#.focusChanged(@)".} # Public
proc styleSheet*(this: ptr QApplication): QString {.header:headerFile, importcpp:"#.styleSheet(@)".} # Public
proc setStyleSheet*(this: ptr QApplication, sheet: QString) {.header:headerFile, importcpp:"#.setStyleSheet(@)".} # Public
proc setAutoSipEnabled*(this: ptr QApplication, enabled: bool) {.header:headerFile, importcpp:"#.setAutoSipEnabled(@)".} # Public
proc autoSipEnabled*(this: ptr QApplication): bool {.header:headerFile, importcpp:"#.autoSipEnabled(@)".} # Public
proc static_QApplication_closeAllWindows*() {.header:headerFile, importcpp:"QApplication::closeAllWindows(@)".} # Public static
proc static_QApplication_aboutQt*() {.header:headerFile, importcpp:"QApplication::aboutQt(@)".} # Public static

# Protected methods methods for QApplication
proc event*(this: ptr QApplication, arg_0: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Protected

export qfont
export qguiapplication
export qfontmetrics
export qstring
export qnamespace
export qstyle
export qpoint
export qwidget
export qobject
export qcoreevent
export qpalette

# Additional code for qtwidgets/qapplication
proc exec*(nimQObject:ptr QApplication):cint {.header:headerFile, importcpp: "#.exec()".}

# params refers to the arguments given on the command line. The binary is added in this proc!
template newQApplication*(args:seq[string]): ptr QApplication =
    var args2 = @[getAppFilename()]
    args2.add args
    
    var argv: cStringArray = allocCstringArray(args2)
    var argc = args2.len.cint

    newQApplication(argc, cast[ptr ptr char](argv))
    # See also NOTE:newQCoreApplication in QtCore/QCoreApplication
