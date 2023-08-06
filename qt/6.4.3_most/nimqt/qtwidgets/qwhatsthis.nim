const headerFile* = "QtWidgets/qwhatsthis.h"

type
    # Classes found in the C++ code
    QWhatsThis* {.header:headerFile,importcpp:"QWhatsThis" ,pure,inheritable.} = object

# Stuff for class QWhatsThis

# Public methods for QWhatsThis
proc static_QWhatsThis_enterWhatsThisMode*() {.header:headerFile, importcpp:"QWhatsThis::enterWhatsThisMode(@)".} # Public static
proc static_QWhatsThis_inWhatsThisMode*(): bool {.header:headerFile, importcpp:"QWhatsThis::inWhatsThisMode(@)".} # Public static
proc static_QWhatsThis_leaveWhatsThisMode*() {.header:headerFile, importcpp:"QWhatsThis::leaveWhatsThisMode(@)".} # Public static
import nimqt/qtcore/qstring
import nimqt/qtcore/qpoint
import nimqt/qtwidgets/qwidget
# 1 default parameters!
proc static_QWhatsThis_showText*(pos: QPoint, text: QString, w: ptr QWidget) {.header:headerFile, importcpp:"QWhatsThis::showText(@)".} # Public static
proc static_QWhatsThis_showText*(pos: QPoint, text: QString) {.header:headerFile, importcpp:"QWhatsThis::showText(@)".} # Public static
proc static_QWhatsThis_hideText*() {.header:headerFile, importcpp:"QWhatsThis::hideText(@)".} # Public static
import nimqt/qtgui/qaction
import nimqt/qtcore/qobject
# 1 default parameters!
proc static_QWhatsThis_createAction*(parent: ptr QObject): ptr QAction {.header:headerFile, importcpp:"QWhatsThis::createAction(@)".} # Public static
proc static_QWhatsThis_createAction*(): ptr QAction {.header:headerFile, importcpp:"QWhatsThis::createAction(@)".} # Public static

export qstring
export qaction
export qpoint
export qwidget
export qobject
