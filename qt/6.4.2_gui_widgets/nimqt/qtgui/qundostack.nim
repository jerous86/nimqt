const headerFile* = "QtGui/qundostack.h"

import nimqt/qtcore/qobject
# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}


type
    # Classes and enums found in the C++ code
    QUndoCommand* {.header:headerFile,importcpp:"QUndoCommand" ,pure.} = object {.inheritable.}
    QUndoStack* {.header:headerFile,importcpp:"QUndoStack" ,pure.} = object of QObject
{.push warning[Deprecated]: on.}

# Stuff for class QUndoCommand

# Public constructors for QUndoCommand
# 1 default parameters!
proc newQUndoCommand*(parent: ptr QUndoCommand): QUndoCommand {. header:headerFile, importcpp:"QUndoCommand(@)", constructor .} #
proc newQUndoCommand*(): QUndoCommand {. header:headerFile, importcpp:"QUndoCommand(@)", constructor .} #
import nimqt/qtcore/qstring
# 1 default parameters!
proc newQUndoCommand*(text: QString, parent: ptr QUndoCommand): QUndoCommand {. header:headerFile, importcpp:"QUndoCommand(@)", constructor .} #
proc newQUndoCommand*(text: QString): QUndoCommand {. header:headerFile, importcpp:"QUndoCommand(@)", constructor .} #

# Public methods for QUndoCommand
proc undo*(this: QUndoCommand) {.header:headerFile, importcpp:"#.undo(@)".} # Public
proc redo*(this: QUndoCommand) {.header:headerFile, importcpp:"#.redo(@)".} # Public
proc text*(this: QUndoCommand): QString {.header:headerFile, importcpp:"#.text(@)".} # Public
proc actionText*(this: QUndoCommand): QString {.header:headerFile, importcpp:"#.actionText(@)".} # Public
proc setText*(this: QUndoCommand, text: QString) {.header:headerFile, importcpp:"#.setText(@)".} # Public
proc isObsolete*(this: QUndoCommand): bool {.header:headerFile, importcpp:"#.isObsolete(@)".} # Public
proc setObsolete*(this: QUndoCommand, obsolete: bool) {.header:headerFile, importcpp:"#.setObsolete(@)".} # Public
proc id*(this: QUndoCommand): cint {.header:headerFile, importcpp:"#.id(@)".} # Public
proc mergeWith*(this: QUndoCommand, other: ptr QUndoCommand): bool {.header:headerFile, importcpp:"#.mergeWith(@)".} # Public
proc childCount*(this: QUndoCommand): cint {.header:headerFile, importcpp:"#.childCount(@)".} # Public
proc child*(this: QUndoCommand, index: cint): ptr QUndoCommand {.header:headerFile, importcpp:"#.child(@)".} # Public
# Stuff for class QUndoStack

# Public constructors for QUndoStack
# 1 default parameters!
proc newQUndoStack*(parent: ptr QObject): ptr QUndoStack {. header:headerFile, importcpp:"new QUndoStack(@)" .} #
proc newQUndoStack*(): ptr QUndoStack {. header:headerFile, importcpp:"new QUndoStack(@)" .} #

# Public methods for QUndoStack
# 1 default parameters!
proc static_QUndoStack_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QUndoStack::tr(@)".} # Public static
proc static_QUndoStack_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QUndoStack::tr(@)".} # Public static
proc clear*(this: ptr QUndoStack) {.header:headerFile, importcpp:"#.clear(@)".} # Public
proc push*(this: ptr QUndoStack, cmd: ptr QUndoCommand) {.header:headerFile, importcpp:"#.push(@)".} # Public
proc canUndo*(this: ptr QUndoStack): bool {.header:headerFile, importcpp:"#.canUndo(@)".} # Public
proc canRedo*(this: ptr QUndoStack): bool {.header:headerFile, importcpp:"#.canRedo(@)".} # Public
proc undoText*(this: ptr QUndoStack): QString {.header:headerFile, importcpp:"#.undoText(@)".} # Public
proc redoText*(this: ptr QUndoStack): QString {.header:headerFile, importcpp:"#.redoText(@)".} # Public
proc count*(this: ptr QUndoStack): cint {.header:headerFile, importcpp:"#.count(@)".} # Public
proc index*(this: ptr QUndoStack): cint {.header:headerFile, importcpp:"#.index(@)".} # Public
proc text*(this: ptr QUndoStack, idx: cint): QString {.header:headerFile, importcpp:"#.text(@)".} # Public
import nimqt/qtgui/qaction
# 1 default parameters!
proc createUndoAction*(this: ptr QUndoStack, parent: ptr QObject, prefix: QString): ptr QAction {.header:headerFile, importcpp:"#.createUndoAction(@)".} # Public
proc createUndoAction*(this: ptr QUndoStack, parent: ptr QObject): ptr QAction {.header:headerFile, importcpp:"#.createUndoAction(@)".} # Public
# 1 default parameters!
proc createRedoAction*(this: ptr QUndoStack, parent: ptr QObject, prefix: QString): ptr QAction {.header:headerFile, importcpp:"#.createRedoAction(@)".} # Public
proc createRedoAction*(this: ptr QUndoStack, parent: ptr QObject): ptr QAction {.header:headerFile, importcpp:"#.createRedoAction(@)".} # Public
proc isActive*(this: ptr QUndoStack): bool {.header:headerFile, importcpp:"#.isActive(@)".} # Public
proc isClean*(this: ptr QUndoStack): bool {.header:headerFile, importcpp:"#.isClean(@)".} # Public
proc cleanIndex*(this: ptr QUndoStack): cint {.header:headerFile, importcpp:"#.cleanIndex(@)".} # Public
proc beginMacro*(this: ptr QUndoStack, text: QString) {.header:headerFile, importcpp:"#.beginMacro(@)".} # Public
proc endMacro*(this: ptr QUndoStack) {.header:headerFile, importcpp:"#.endMacro(@)".} # Public
proc setUndoLimit*(this: ptr QUndoStack, limit: cint) {.header:headerFile, importcpp:"#.setUndoLimit(@)".} # Public
proc undoLimit*(this: ptr QUndoStack): cint {.header:headerFile, importcpp:"#.undoLimit(@)".} # Public
proc command*(this: ptr QUndoStack, index: cint): ptr QUndoCommand {.header:headerFile, importcpp:"#.command(@)".} # Public
proc setClean*(this: ptr QUndoStack) {.header:headerFile, importcpp:"#.setClean(@)".} # Public
proc resetClean*(this: ptr QUndoStack) {.header:headerFile, importcpp:"#.resetClean(@)".} # Public
proc setIndex*(this: ptr QUndoStack, idx: cint) {.header:headerFile, importcpp:"#.setIndex(@)".} # Public
proc undo*(this: ptr QUndoStack) {.header:headerFile, importcpp:"#.undo(@)".} # Public
proc redo*(this: ptr QUndoStack) {.header:headerFile, importcpp:"#.redo(@)".} # Public
# 1 default parameters!
proc setActive*(this: ptr QUndoStack, active: bool) {.header:headerFile, importcpp:"#.setActive(@)".} # Public
proc setActive*(this: ptr QUndoStack) {.header:headerFile, importcpp:"#.setActive(@)".} # Public
proc indexChanged*(this: ptr QUndoStack, idx: cint) {.header:headerFile, importcpp:"#.indexChanged(@)".} # Public
proc cleanChanged*(this: ptr QUndoStack, clean: bool) {.header:headerFile, importcpp:"#.cleanChanged(@)".} # Public
proc canUndoChanged*(this: ptr QUndoStack, canUndo: bool) {.header:headerFile, importcpp:"#.canUndoChanged(@)".} # Public
proc canRedoChanged*(this: ptr QUndoStack, canRedo: bool) {.header:headerFile, importcpp:"#.canRedoChanged(@)".} # Public
proc undoTextChanged*(this: ptr QUndoStack, undoText: QString) {.header:headerFile, importcpp:"#.undoTextChanged(@)".} # Public
proc redoTextChanged*(this: ptr QUndoStack, redoText: QString) {.header:headerFile, importcpp:"#.redoTextChanged(@)".} # Public

export qstring
export qaction
export qobject