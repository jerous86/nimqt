const headerFile* = "QtWidgets/qdialog.h"

type
    # Enums found in the C++ code
    # Global
    QDialog_DialogCode* {.header:headerFile,importcpp:"QDialog::DialogCode".} = enum Rejected = 0, Accepted = 0x1

import nimqt/qtwidgets/qwidget
type
    # Classes found in the C++ code
    QDialog* {.header:headerFile,importcpp:"QDialog" ,pure.} = object of QWidget
import nimqt/qtgui/qpaintdevice


type
    # typedefs found in the C++ code
    QDialog_RenderFlag * = QWidget_RenderFlag
    QDialog_RenderFlags * = QWidget_RenderFlags
    QDialog_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric

# Stuff for class QDialog

# Public constructors for QDialog
import nimqt/qtcore/qnamespace
# 2 default parameters!
proc newQDialog*(parent: ptr QWidget, f: Qt_WindowFlags): ptr QDialog {. header:headerFile, importcpp:"new QDialog(@)" .} #
proc newQDialog*(parent: ptr QWidget): ptr QDialog {. header:headerFile, importcpp:"new QDialog(@)" .} #
proc newQDialog*(): ptr QDialog {. header:headerFile, importcpp:"new QDialog(@)" .} #

# Public methods for QDialog
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QDialog_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QDialog::tr(@)".} # Public static
proc static_QDialog_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QDialog::tr(@)".} # Public static
proc result*(this: ptr QDialog): cint {.header:headerFile, importcpp:"#.result(@)".} # Public
proc setVisible*(this: ptr QDialog, visible: bool) {.header:headerFile, importcpp:"#.setVisible(@)".} # Public
import nimqt/qtcore/qsize
proc sizeHint*(this: ptr QDialog): QSize {.header:headerFile, importcpp:"#.sizeHint(@)".} # Public
proc minimumSizeHint*(this: ptr QDialog): QSize {.header:headerFile, importcpp:"#.minimumSizeHint(@)".} # Public
proc setSizeGripEnabled*(this: ptr QDialog, arg_0: bool) {.header:headerFile, importcpp:"#.setSizeGripEnabled(@)".} # Public
proc isSizeGripEnabled*(this: ptr QDialog): bool {.header:headerFile, importcpp:"#.isSizeGripEnabled(@)".} # Public
proc setModal*(this: ptr QDialog, modal: bool) {.header:headerFile, importcpp:"#.setModal(@)".} # Public
proc setResult*(this: ptr QDialog, r: cint) {.header:headerFile, importcpp:"#.setResult(@)".} # Public
proc finished*(this: ptr QDialog, result: cint) {.header:headerFile, importcpp:"#.finished(@)".} # Public
proc accepted*(this: ptr QDialog) {.header:headerFile, importcpp:"#.accepted(@)".} # Public
proc rejected*(this: ptr QDialog) {.header:headerFile, importcpp:"#.rejected(@)".} # Public
proc open*(this: ptr QDialog) {.header:headerFile, importcpp:"#.open(@)".} # Public
proc exec*(this: ptr QDialog): cint {.header:headerFile, importcpp:"#.exec(@)".} # Public
proc done*(this: ptr QDialog, arg_0: cint) {.header:headerFile, importcpp:"#.done(@)".} # Public
proc accept*(this: ptr QDialog) {.header:headerFile, importcpp:"#.accept(@)".} # Public
proc reject*(this: ptr QDialog) {.header:headerFile, importcpp:"#.reject(@)".} # Public

# Protected methods methods for QDialog
import nimqt/qtgui/qevent
proc keyPressEvent*(this: ptr QDialog, arg_0: ptr QKeyEvent) {.header:headerFile, importcpp:"#.keyPressEvent(@)".} # Protected
proc closeEvent*(this: ptr QDialog, arg_0: ptr QCloseEvent) {.header:headerFile, importcpp:"#.closeEvent(@)".} # Protected
proc showEvent*(this: ptr QDialog, arg_0: ptr QShowEvent) {.header:headerFile, importcpp:"#.showEvent(@)".} # Protected
proc resizeEvent*(this: ptr QDialog, arg_0: ptr QResizeEvent) {.header:headerFile, importcpp:"#.resizeEvent(@)".} # Protected
proc contextMenuEvent*(this: ptr QDialog, arg_0: ptr QContextMenuEvent) {.header:headerFile, importcpp:"#.contextMenuEvent(@)".} # Protected
import nimqt/qtcore/qobject
import nimqt/qtcore/qcoreevent
proc eventFilter*(this: ptr QDialog, arg_0: ptr QObject, arg_1: ptr QEvent): bool {.header:headerFile, importcpp:"#.eventFilter(@)".} # Protected
proc adjustPosition*(this: ptr QDialog, arg_0: ptr QWidget) {.header:headerFile, importcpp:"#.adjustPosition(@)".} # Protected

export qevent
export qstring
export qsize
export qnamespace
export qwidget
export qpaintdevice
export qobject
export qcoreevent
