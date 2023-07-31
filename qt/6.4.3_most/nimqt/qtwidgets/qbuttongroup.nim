const headerFile* = "QtWidgets/qbuttongroup.h"

import nimqt/qtcore/qobject
type
    # Classes found in the C++ code
    QButtonGroup* {.header:headerFile,importcpp:"QButtonGroup" ,pure.} = object of QObject

# Stuff for class QButtonGroup

# Public constructors for QButtonGroup
# 1 default parameters!
proc newQButtonGroup*(parent: ptr QObject): ptr QButtonGroup {. header:headerFile, importcpp:"new QButtonGroup(@)" .} #
proc newQButtonGroup*(): ptr QButtonGroup {. header:headerFile, importcpp:"new QButtonGroup(@)" .} #

# Public methods for QButtonGroup
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QButtonGroup_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QButtonGroup::tr(@)".} # Public static
proc static_QButtonGroup_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QButtonGroup::tr(@)".} # Public static
proc setExclusive*(this: ptr QButtonGroup, arg_0: bool) {.header:headerFile, importcpp:"#.setExclusive(@)".} # Public
proc exclusive*(this: ptr QButtonGroup): bool {.header:headerFile, importcpp:"#.exclusive(@)".} # Public
import nimqt/qtwidgets/qabstractbutton
proc addButton*(this: ptr QButtonGroup, arg_0: ptr QAbstractButton, id: cint) {.header:headerFile, importcpp:"#.addButton(@)".} # Public
proc removeButton*(this: ptr QButtonGroup, arg_0: ptr QAbstractButton) {.header:headerFile, importcpp:"#.removeButton(@)".} # Public
import nimqt/qtcore/qlist
proc buttons*(this: ptr QButtonGroup): QList[ptr QAbstractButton] {.header:headerFile, importcpp:"#.buttons(@)".} # Public
proc checkedButton*(this: ptr QButtonGroup): ptr QAbstractButton {.header:headerFile, importcpp:"#.checkedButton(@)".} # Public
proc button*(this: ptr QButtonGroup, id: cint): ptr QAbstractButton {.header:headerFile, importcpp:"#.button(@)".} # Public
proc setId*(this: ptr QButtonGroup, button: ptr QAbstractButton, id: cint) {.header:headerFile, importcpp:"#.setId(@)".} # Public
proc id*(this: ptr QButtonGroup, button: ptr QAbstractButton): cint {.header:headerFile, importcpp:"#.id(@)".} # Public
proc checkedId*(this: ptr QButtonGroup): cint {.header:headerFile, importcpp:"#.checkedId(@)".} # Public
proc buttonClicked*(this: ptr QButtonGroup, arg_0: ptr QAbstractButton) {.header:headerFile, importcpp:"#.buttonClicked(@)".} # Public
proc buttonPressed*(this: ptr QButtonGroup, arg_0: ptr QAbstractButton) {.header:headerFile, importcpp:"#.buttonPressed(@)".} # Public
proc buttonReleased*(this: ptr QButtonGroup, arg_0: ptr QAbstractButton) {.header:headerFile, importcpp:"#.buttonReleased(@)".} # Public
proc buttonToggled*(this: ptr QButtonGroup, arg_0: ptr QAbstractButton, arg_1: bool) {.header:headerFile, importcpp:"#.buttonToggled(@)".} # Public
proc idClicked*(this: ptr QButtonGroup, arg_0: cint) {.header:headerFile, importcpp:"#.idClicked(@)".} # Public
proc idPressed*(this: ptr QButtonGroup, arg_0: cint) {.header:headerFile, importcpp:"#.idPressed(@)".} # Public
proc idReleased*(this: ptr QButtonGroup, arg_0: cint) {.header:headerFile, importcpp:"#.idReleased(@)".} # Public
proc idToggled*(this: ptr QButtonGroup, arg_0: cint, arg_1: bool) {.header:headerFile, importcpp:"#.idToggled(@)".} # Public

export qstring
export qlist
export qabstractbutton
export qobject
