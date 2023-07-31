const headerFile* = "QtGui/qactiongroup.h"

type
    # Enums found in the C++ code
    # Global
    QActionGroup_ExclusionPolicy* {.header:headerFile,importcpp:"QActionGroup::ExclusionPolicy".} = enum None = 0, Exclusive = 0x1, ExclusiveOptional = 0x2

import nimqt/qtcore/qobject
type
    # Classes found in the C++ code
    QActionGroup* {.header:headerFile,importcpp:"QActionGroup" ,pure.} = object of QObject

# Stuff for class QActionGroup

# Public constructors for QActionGroup
proc newQActionGroup*(parent: ptr QObject): ptr QActionGroup {. header:headerFile, importcpp:"new QActionGroup(@)" .} #

# Public methods for QActionGroup
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QActionGroup_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QActionGroup::tr(@)".} # Public static
proc static_QActionGroup_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QActionGroup::tr(@)".} # Public static
import nimqt/qtgui/qaction
proc addAction*(this: ptr QActionGroup, a: ptr QAction): ptr QAction {.header:headerFile, importcpp:"#.addAction(@)".} # Public
proc addAction*(this: ptr QActionGroup, text: QString): ptr QAction {.header:headerFile, importcpp:"#.addAction(@)".} # Public
import nimqt/qtgui/qicon
proc addAction*(this: ptr QActionGroup, icon: QIcon, text: QString): ptr QAction {.header:headerFile, importcpp:"#.addAction(@)".} # Public
proc removeAction*(this: ptr QActionGroup, a: ptr QAction) {.header:headerFile, importcpp:"#.removeAction(@)".} # Public
import nimqt/qtcore/qlist
proc actions*(this: ptr QActionGroup): QList[ptr QAction] {.header:headerFile, importcpp:"#.actions(@)".} # Public
proc checkedAction*(this: ptr QActionGroup): ptr QAction {.header:headerFile, importcpp:"#.checkedAction(@)".} # Public
proc isExclusive*(this: ptr QActionGroup): bool {.header:headerFile, importcpp:"#.isExclusive(@)".} # Public
proc isEnabled*(this: ptr QActionGroup): bool {.header:headerFile, importcpp:"#.isEnabled(@)".} # Public
proc isVisible*(this: ptr QActionGroup): bool {.header:headerFile, importcpp:"#.isVisible(@)".} # Public
proc exclusionPolicy*(this: ptr QActionGroup): QActionGroup_ExclusionPolicy {.header:headerFile, importcpp:"#.exclusionPolicy(@)".} # Public
proc setEnabled*(this: ptr QActionGroup, arg_0: bool) {.header:headerFile, importcpp:"#.setEnabled(@)".} # Public
proc setDisabled*(this: ptr QActionGroup, b: bool) {.header:headerFile, importcpp:"#.setDisabled(@)".} # Public
proc setVisible*(this: ptr QActionGroup, arg_0: bool) {.header:headerFile, importcpp:"#.setVisible(@)".} # Public
proc setExclusive*(this: ptr QActionGroup, arg_0: bool) {.header:headerFile, importcpp:"#.setExclusive(@)".} # Public
proc setExclusionPolicy*(this: ptr QActionGroup, policy: QActionGroup_ExclusionPolicy) {.header:headerFile, importcpp:"#.setExclusionPolicy(@)".} # Public
proc triggered*(this: ptr QActionGroup, arg_0: ptr QAction) {.header:headerFile, importcpp:"#.triggered(@)".} # Public
proc hovered*(this: ptr QActionGroup, arg_0: ptr QAction) {.header:headerFile, importcpp:"#.hovered(@)".} # Public

export qstring
export qaction
export qlist
export qobject
export qicon
