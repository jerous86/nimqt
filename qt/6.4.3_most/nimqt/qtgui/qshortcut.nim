const headerFile* = "QtGui/qshortcut.h"

import nimqt/qtcore/qobject
type
    # Classes found in the C++ code
    QShortcut* {.header:headerFile,importcpp:"QShortcut" ,pure.} = object of QObject

# Stuff for class QShortcut

# Public constructors for QShortcut
proc newQShortcut*(parent: ptr QObject): ptr QShortcut {. header:headerFile, importcpp:"new QShortcut(@)" .} #
import nimqt/qtcore/qnamespace
import nimqt/qtgui/qkeysequence
# 2 default parameters!
proc newQShortcut*(key: QKeySequence, parent: ptr QObject, member: ptr char, ambiguousMember: ptr char, context: Qt_ShortcutContext): ptr QShortcut {. header:headerFile, importcpp:"new QShortcut(@)" .} #
proc newQShortcut*(key: QKeySequence, parent: ptr QObject, member: ptr char, ambiguousMember: ptr char): ptr QShortcut {. header:headerFile, importcpp:"new QShortcut(@)" .} #
proc newQShortcut*(key: QKeySequence, parent: ptr QObject, member: ptr char): ptr QShortcut {. header:headerFile, importcpp:"new QShortcut(@)" .} #
# 2 default parameters!
proc newQShortcut*(key: QKeySequence_StandardKey, parent: ptr QObject, member: ptr char, ambiguousMember: ptr char, context: Qt_ShortcutContext): ptr QShortcut {. header:headerFile, importcpp:"new QShortcut(@)" .} #
proc newQShortcut*(key: QKeySequence_StandardKey, parent: ptr QObject, member: ptr char, ambiguousMember: ptr char): ptr QShortcut {. header:headerFile, importcpp:"new QShortcut(@)" .} #
proc newQShortcut*(key: QKeySequence_StandardKey, parent: ptr QObject, member: ptr char): ptr QShortcut {. header:headerFile, importcpp:"new QShortcut(@)" .} #

# Public methods for QShortcut
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QShortcut_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QShortcut::tr(@)".} # Public static
proc static_QShortcut_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QShortcut::tr(@)".} # Public static
proc setKey*(this: ptr QShortcut, key: QKeySequence) {.header:headerFile, importcpp:"#.setKey(@)".} # Public
proc key*(this: ptr QShortcut): QKeySequence {.header:headerFile, importcpp:"#.key(@)".} # Public
proc setKeys*(this: ptr QShortcut, key: QKeySequence_StandardKey) {.header:headerFile, importcpp:"#.setKeys(@)".} # Public
import nimqt/qtcore/qlist
proc setKeys*(this: ptr QShortcut, keys: QList[QKeySequence]) {.header:headerFile, importcpp:"#.setKeys(@)".} # Public
proc keys*(this: ptr QShortcut): QList[QKeySequence] {.header:headerFile, importcpp:"#.keys(@)".} # Public
proc setEnabled*(this: ptr QShortcut, enable: bool) {.header:headerFile, importcpp:"#.setEnabled(@)".} # Public
proc isEnabled*(this: ptr QShortcut): bool {.header:headerFile, importcpp:"#.isEnabled(@)".} # Public
proc setContext*(this: ptr QShortcut, context: Qt_ShortcutContext) {.header:headerFile, importcpp:"#.setContext(@)".} # Public
proc context*(this: ptr QShortcut): Qt_ShortcutContext {.header:headerFile, importcpp:"#.context(@)".} # Public
proc setAutoRepeat*(this: ptr QShortcut, on: bool) {.header:headerFile, importcpp:"#.setAutoRepeat(@)".} # Public
proc autoRepeat*(this: ptr QShortcut): bool {.header:headerFile, importcpp:"#.autoRepeat(@)".} # Public
proc id*(this: ptr QShortcut): cint {.header:headerFile, importcpp:"#.id(@)".} # Public
proc setWhatsThis*(this: ptr QShortcut, text: QString) {.header:headerFile, importcpp:"#.setWhatsThis(@)".} # Public
proc whatsThis*(this: ptr QShortcut): QString {.header:headerFile, importcpp:"#.whatsThis(@)".} # Public
proc activated*(this: ptr QShortcut) {.header:headerFile, importcpp:"#.activated(@)".} # Public
proc activatedAmbiguously*(this: ptr QShortcut) {.header:headerFile, importcpp:"#.activatedAmbiguously(@)".} # Public

# Protected methods methods for QShortcut
import nimqt/qtcore/qcoreevent
proc event*(this: ptr QShortcut, e: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Protected

export qstring
export qnamespace
export qlist
export qkeysequence
export qobject
export qcoreevent
