const headerFile* = "QtGui/qundogroup.h"

import nimqt/qtcore/qobject
type
    # Classes found in the C++ code
    QUndoGroup* {.header:headerFile,importcpp:"QUndoGroup" ,pure.} = object of QObject

# Stuff for class QUndoGroup

# Public constructors for QUndoGroup
# 1 default parameters!
proc newQUndoGroup*(parent: ptr QObject): ptr QUndoGroup {. header:headerFile, importcpp:"new QUndoGroup(@)" .} #
proc newQUndoGroup*(): ptr QUndoGroup {. header:headerFile, importcpp:"new QUndoGroup(@)" .} #

# Public methods for QUndoGroup
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QUndoGroup_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QUndoGroup::tr(@)".} # Public static
proc static_QUndoGroup_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QUndoGroup::tr(@)".} # Public static
import nimqt/qtgui/qundostack
proc addStack*(this: ptr QUndoGroup, stack: ptr QUndoStack) {.header:headerFile, importcpp:"#.addStack(@)".} # Public
proc removeStack*(this: ptr QUndoGroup, stack: ptr QUndoStack) {.header:headerFile, importcpp:"#.removeStack(@)".} # Public
import nimqt/qtcore/qlist
proc stacks*(this: ptr QUndoGroup): QList[ptr QUndoStack] {.header:headerFile, importcpp:"#.stacks(@)".} # Public
proc activeStack*(this: ptr QUndoGroup): ptr QUndoStack {.header:headerFile, importcpp:"#.activeStack(@)".} # Public
import nimqt/qtgui/qaction
# 1 default parameters!
proc createUndoAction*(this: ptr QUndoGroup, parent: ptr QObject, prefix: QString): ptr QAction {.header:headerFile, importcpp:"#.createUndoAction(@)".} # Public
proc createUndoAction*(this: ptr QUndoGroup, parent: ptr QObject): ptr QAction {.header:headerFile, importcpp:"#.createUndoAction(@)".} # Public
# 1 default parameters!
proc createRedoAction*(this: ptr QUndoGroup, parent: ptr QObject, prefix: QString): ptr QAction {.header:headerFile, importcpp:"#.createRedoAction(@)".} # Public
proc createRedoAction*(this: ptr QUndoGroup, parent: ptr QObject): ptr QAction {.header:headerFile, importcpp:"#.createRedoAction(@)".} # Public
proc canUndo*(this: ptr QUndoGroup): bool {.header:headerFile, importcpp:"#.canUndo(@)".} # Public
proc canRedo*(this: ptr QUndoGroup): bool {.header:headerFile, importcpp:"#.canRedo(@)".} # Public
proc undoText*(this: ptr QUndoGroup): QString {.header:headerFile, importcpp:"#.undoText(@)".} # Public
proc redoText*(this: ptr QUndoGroup): QString {.header:headerFile, importcpp:"#.redoText(@)".} # Public
proc isClean*(this: ptr QUndoGroup): bool {.header:headerFile, importcpp:"#.isClean(@)".} # Public
proc undo*(this: ptr QUndoGroup) {.header:headerFile, importcpp:"#.undo(@)".} # Public
proc redo*(this: ptr QUndoGroup) {.header:headerFile, importcpp:"#.redo(@)".} # Public
proc setActiveStack*(this: ptr QUndoGroup, stack: ptr QUndoStack) {.header:headerFile, importcpp:"#.setActiveStack(@)".} # Public
proc activeStackChanged*(this: ptr QUndoGroup, stack: ptr QUndoStack) {.header:headerFile, importcpp:"#.activeStackChanged(@)".} # Public
proc indexChanged*(this: ptr QUndoGroup, idx: cint) {.header:headerFile, importcpp:"#.indexChanged(@)".} # Public
proc cleanChanged*(this: ptr QUndoGroup, clean: bool) {.header:headerFile, importcpp:"#.cleanChanged(@)".} # Public
proc canUndoChanged*(this: ptr QUndoGroup, canUndo: bool) {.header:headerFile, importcpp:"#.canUndoChanged(@)".} # Public
proc canRedoChanged*(this: ptr QUndoGroup, canRedo: bool) {.header:headerFile, importcpp:"#.canRedoChanged(@)".} # Public
proc undoTextChanged*(this: ptr QUndoGroup, undoText: QString) {.header:headerFile, importcpp:"#.undoTextChanged(@)".} # Public
proc redoTextChanged*(this: ptr QUndoGroup, redoText: QString) {.header:headerFile, importcpp:"#.redoTextChanged(@)".} # Public

export qstring
export qaction
export qundostack
export qlist
export qobject
