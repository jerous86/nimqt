const headerFile* = "QtWidgets/qwidgetaction.h"

import nimqt/qtgui/qaction
type
    # Classes found in the C++ code
    QWidgetAction* {.header:headerFile,importcpp:"QWidgetAction" ,pure.} = object of QAction


type
    # typedefs found in the C++ code
    QWidgetAction_MenuRole * = QAction_MenuRole
    QWidgetAction_Priority * = QAction_Priority
    QWidgetAction_ActionEvent * = QAction_ActionEvent

# Stuff for class QWidgetAction

# Public constructors for QWidgetAction
import nimqt/qtcore/qobject
proc newQWidgetAction*(parent: ptr QObject): ptr QWidgetAction {. header:headerFile, importcpp:"new QWidgetAction(@)" .} #

# Public methods for QWidgetAction
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QWidgetAction_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QWidgetAction::tr(@)".} # Public static
proc static_QWidgetAction_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QWidgetAction::tr(@)".} # Public static
import nimqt/qtwidgets/qwidget
proc setDefaultWidget*(this: ptr QWidgetAction, w: ptr QWidget) {.header:headerFile, importcpp:"#.setDefaultWidget(@)".} # Public
proc defaultWidget*(this: ptr QWidgetAction): ptr QWidget {.header:headerFile, importcpp:"#.defaultWidget(@)".} # Public
proc requestWidget*(this: ptr QWidgetAction, parent: ptr QWidget): ptr QWidget {.header:headerFile, importcpp:"#.requestWidget(@)".} # Public
proc releaseWidget*(this: ptr QWidgetAction, widget: ptr QWidget) {.header:headerFile, importcpp:"#.releaseWidget(@)".} # Public

# Protected methods methods for QWidgetAction
import nimqt/qtcore/qcoreevent
proc event*(this: ptr QWidgetAction, arg_0: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Protected
proc eventFilter*(this: ptr QWidgetAction, arg_0: ptr QObject, arg_1: ptr QEvent): bool {.header:headerFile, importcpp:"#.eventFilter(@)".} # Protected
proc createWidget*(this: ptr QWidgetAction, parent: ptr QWidget): ptr QWidget {.header:headerFile, importcpp:"#.createWidget(@)".} # Protected
proc deleteWidget*(this: ptr QWidgetAction, widget: ptr QWidget) {.header:headerFile, importcpp:"#.deleteWidget(@)".} # Protected
import nimqt/qtcore/qlist
proc createdWidgets*(this: ptr QWidgetAction): QList[ptr QWidget] {.header:headerFile, importcpp:"#.createdWidgets(@)".} # Protected

export qstring
export qaction
export qlist
export qwidget
export qobject
export qcoreevent
