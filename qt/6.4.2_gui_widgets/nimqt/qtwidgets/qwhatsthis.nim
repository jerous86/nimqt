const headerFile* = "QtWidgets/qwhatsthis.h"

# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}


type
    # Classes and enums found in the C++ code
    QWhatsThis* {.header:headerFile,importcpp:"QWhatsThis" ,pure.} = object {.inheritable.}
{.push warning[Deprecated]: on.}

# Stuff for class QWhatsThis

# Public methods for QWhatsThis
proc static_QWhatsThis_enterWhatsThisMode*() {.header:headerFile, importcpp:"QWhatsThis::enterWhatsThisMode(@)".} # Public static
proc static_QWhatsThis_inWhatsThisMode*(): bool {.header:headerFile, importcpp:"QWhatsThis::inWhatsThisMode(@)".} # Public static
proc static_QWhatsThis_leaveWhatsThisMode*() {.header:headerFile, importcpp:"QWhatsThis::leaveWhatsThisMode(@)".} # Public static
proc static_QWhatsThis_hideText*() {.header:headerFile, importcpp:"QWhatsThis::hideText(@)".} # Public static
import nimqt/qtgui/qaction
import nimqt/qtcore/qobject
# 1 default parameters!
proc static_QWhatsThis_createAction*(parent: ptr QObject): ptr QAction {.header:headerFile, importcpp:"QWhatsThis::createAction(@)".} # Public static
proc static_QWhatsThis_createAction*(): ptr QAction {.header:headerFile, importcpp:"QWhatsThis::createAction(@)".} # Public static

export qaction
export qobject