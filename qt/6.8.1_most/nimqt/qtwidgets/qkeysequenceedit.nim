const headerFile* = "QtWidgets/qkeysequenceedit.h"

import nimqt/qtwidgets/qwidget
type
    # Classes found in the C++ code
    QKeySequenceEdit* {.header:headerFile,importcpp:"QKeySequenceEdit" ,pure.} = object of QWidget
import nimqt/qtgui/qpaintdevice


type
    # typedefs found in the C++ code
    QKeySequenceEdit_RenderFlag * = QWidget_RenderFlag
    QKeySequenceEdit_RenderFlags * = QWidget_RenderFlags
    QKeySequenceEdit_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric

# Stuff for class QKeySequenceEdit

# Public constructors for QKeySequenceEdit
# 1 default parameters!
proc newQKeySequenceEdit*(parent: ptr QWidget): ptr QKeySequenceEdit {. header:headerFile, importcpp:"new QKeySequenceEdit(@)" .} #
proc newQKeySequenceEdit*(): ptr QKeySequenceEdit {. header:headerFile, importcpp:"new QKeySequenceEdit(@)" .} #
import nimqt/qtgui/qkeysequence
# 1 default parameters!
proc newQKeySequenceEdit*(keySequence: QKeySequence, parent: ptr QWidget): ptr QKeySequenceEdit {. header:headerFile, importcpp:"new QKeySequenceEdit(@)" .} #
proc newQKeySequenceEdit*(keySequence: QKeySequence): ptr QKeySequenceEdit {. header:headerFile, importcpp:"new QKeySequenceEdit(@)" .} #

# Public methods for QKeySequenceEdit
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QKeySequenceEdit_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QKeySequenceEdit::tr(@)".} # Public static
proc static_QKeySequenceEdit_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QKeySequenceEdit::tr(@)".} # Public static
proc keySequence*(this: ptr QKeySequenceEdit): QKeySequence {.header:headerFile, importcpp:"#.keySequence(@)".} # Public
proc setClearButtonEnabled*(this: ptr QKeySequenceEdit, enable: bool) {.header:headerFile, importcpp:"#.setClearButtonEnabled(@)".} # Public
proc isClearButtonEnabled*(this: ptr QKeySequenceEdit): bool {.header:headerFile, importcpp:"#.isClearButtonEnabled(@)".} # Public
proc setKeySequence*(this: ptr QKeySequenceEdit, keySequence: QKeySequence) {.header:headerFile, importcpp:"#.setKeySequence(@)".} # Public
proc clear*(this: ptr QKeySequenceEdit) {.header:headerFile, importcpp:"#.clear(@)".} # Public
proc editingFinished*(this: ptr QKeySequenceEdit) {.header:headerFile, importcpp:"#.editingFinished(@)".} # Public
proc keySequenceChanged*(this: ptr QKeySequenceEdit, keySequence: QKeySequence) {.header:headerFile, importcpp:"#.keySequenceChanged(@)".} # Public

# Protected methods methods for QKeySequenceEdit
import nimqt/qtcore/qcoreevent
proc event*(this: ptr QKeySequenceEdit, arg_0: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Protected
import nimqt/qtgui/qevent
proc keyPressEvent*(this: ptr QKeySequenceEdit, arg_0: ptr QKeyEvent) {.header:headerFile, importcpp:"#.keyPressEvent(@)".} # Protected
proc keyReleaseEvent*(this: ptr QKeySequenceEdit, arg_0: ptr QKeyEvent) {.header:headerFile, importcpp:"#.keyReleaseEvent(@)".} # Protected
proc timerEvent*(this: ptr QKeySequenceEdit, arg_0: ptr QTimerEvent) {.header:headerFile, importcpp:"#.timerEvent(@)".} # Protected
proc focusOutEvent*(this: ptr QKeySequenceEdit, arg_0: ptr QFocusEvent) {.header:headerFile, importcpp:"#.focusOutEvent(@)".} # Protected

export qevent
export qstring
export qkeysequence
export qwidget
export qpaintdevice
export qcoreevent
