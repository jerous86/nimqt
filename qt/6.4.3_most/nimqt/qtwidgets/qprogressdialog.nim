const headerFile* = "QtWidgets/qprogressdialog.h"

import nimqt/qtwidgets/qdialog
type
    # Classes found in the C++ code
    QProgressDialog* {.header:headerFile,importcpp:"QProgressDialog" ,pure.} = object of QDialog
import nimqt/qtwidgets/qwidget
import nimqt/qtgui/qpaintdevice


type
    # typedefs found in the C++ code
    QProgressDialog_DialogCode * = QDialog_DialogCode
    QProgressDialog_RenderFlag * = QWidget_RenderFlag
    QProgressDialog_RenderFlags * = QWidget_RenderFlags
    QProgressDialog_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric

# Stuff for class QProgressDialog

# Public constructors for QProgressDialog
import nimqt/qtcore/qnamespace
# 2 default parameters!
proc newQProgressDialog*(parent: ptr QWidget, flags: Qt_WindowFlags): ptr QProgressDialog {. header:headerFile, importcpp:"new QProgressDialog(@)" .} #
proc newQProgressDialog*(parent: ptr QWidget): ptr QProgressDialog {. header:headerFile, importcpp:"new QProgressDialog(@)" .} #
proc newQProgressDialog*(): ptr QProgressDialog {. header:headerFile, importcpp:"new QProgressDialog(@)" .} #
import nimqt/qtcore/qstring
# 2 default parameters!
proc newQProgressDialog*(labelText: QString, cancelButtonText: QString, minimum: cint, maximum: cint, parent: ptr QWidget, flags: Qt_WindowFlags): ptr QProgressDialog {. header:headerFile, importcpp:"new QProgressDialog(@)" .} #
proc newQProgressDialog*(labelText: QString, cancelButtonText: QString, minimum: cint, maximum: cint, parent: ptr QWidget): ptr QProgressDialog {. header:headerFile, importcpp:"new QProgressDialog(@)" .} #
proc newQProgressDialog*(labelText: QString, cancelButtonText: QString, minimum: cint, maximum: cint): ptr QProgressDialog {. header:headerFile, importcpp:"new QProgressDialog(@)" .} #

# Public methods for QProgressDialog
# 1 default parameters!
proc static_QProgressDialog_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QProgressDialog::tr(@)".} # Public static
proc static_QProgressDialog_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QProgressDialog::tr(@)".} # Public static
import nimqt/qtwidgets/qlabel
proc setLabel*(this: ptr QProgressDialog, label: ptr QLabel) {.header:headerFile, importcpp:"#.setLabel(@)".} # Public
import nimqt/qtwidgets/qpushbutton
proc setCancelButton*(this: ptr QProgressDialog, button: ptr QPushButton) {.header:headerFile, importcpp:"#.setCancelButton(@)".} # Public
import nimqt/qtwidgets/qprogressbar
proc setBar*(this: ptr QProgressDialog, bar: ptr QProgressBar) {.header:headerFile, importcpp:"#.setBar(@)".} # Public
proc wasCanceled*(this: ptr QProgressDialog): bool {.header:headerFile, importcpp:"#.wasCanceled(@)".} # Public
proc minimum*(this: ptr QProgressDialog): cint {.header:headerFile, importcpp:"#.minimum(@)".} # Public
proc maximum*(this: ptr QProgressDialog): cint {.header:headerFile, importcpp:"#.maximum(@)".} # Public
proc value*(this: ptr QProgressDialog): cint {.header:headerFile, importcpp:"#.value(@)".} # Public
import nimqt/qtcore/qsize
proc sizeHint*(this: ptr QProgressDialog): QSize {.header:headerFile, importcpp:"#.sizeHint(@)".} # Public
proc labelText*(this: ptr QProgressDialog): QString {.header:headerFile, importcpp:"#.labelText(@)".} # Public
proc minimumDuration*(this: ptr QProgressDialog): cint {.header:headerFile, importcpp:"#.minimumDuration(@)".} # Public
proc setAutoReset*(this: ptr QProgressDialog, reset: bool) {.header:headerFile, importcpp:"#.setAutoReset(@)".} # Public
proc autoReset*(this: ptr QProgressDialog): bool {.header:headerFile, importcpp:"#.autoReset(@)".} # Public
proc setAutoClose*(this: ptr QProgressDialog, close: bool) {.header:headerFile, importcpp:"#.setAutoClose(@)".} # Public
proc autoClose*(this: ptr QProgressDialog): bool {.header:headerFile, importcpp:"#.autoClose(@)".} # Public
import nimqt/qtcore/qobject
proc open*(this: ptr QProgressDialog, receiver: ptr QObject, member: ptr char) {.header:headerFile, importcpp:"#.open(@)".} # Public
proc cancel*(this: ptr QProgressDialog) {.header:headerFile, importcpp:"#.cancel(@)".} # Public
proc reset*(this: ptr QProgressDialog) {.header:headerFile, importcpp:"#.reset(@)".} # Public
proc setMaximum*(this: ptr QProgressDialog, maximum: cint) {.header:headerFile, importcpp:"#.setMaximum(@)".} # Public
proc setMinimum*(this: ptr QProgressDialog, minimum: cint) {.header:headerFile, importcpp:"#.setMinimum(@)".} # Public
proc setRange*(this: ptr QProgressDialog, minimum: cint, maximum: cint) {.header:headerFile, importcpp:"#.setRange(@)".} # Public
proc setValue*(this: ptr QProgressDialog, progress: cint) {.header:headerFile, importcpp:"#.setValue(@)".} # Public
proc setLabelText*(this: ptr QProgressDialog, text: QString) {.header:headerFile, importcpp:"#.setLabelText(@)".} # Public
proc setCancelButtonText*(this: ptr QProgressDialog, text: QString) {.header:headerFile, importcpp:"#.setCancelButtonText(@)".} # Public
proc setMinimumDuration*(this: ptr QProgressDialog, ms: cint) {.header:headerFile, importcpp:"#.setMinimumDuration(@)".} # Public
proc canceled*(this: ptr QProgressDialog) {.header:headerFile, importcpp:"#.canceled(@)".} # Public

# Protected methods methods for QProgressDialog
import nimqt/qtgui/qevent
proc resizeEvent*(this: ptr QProgressDialog, event: ptr QResizeEvent) {.header:headerFile, importcpp:"#.resizeEvent(@)".} # Protected
proc closeEvent*(this: ptr QProgressDialog, event: ptr QCloseEvent) {.header:headerFile, importcpp:"#.closeEvent(@)".} # Protected
import nimqt/qtcore/qcoreevent
proc changeEvent*(this: ptr QProgressDialog, event: ptr QEvent) {.header:headerFile, importcpp:"#.changeEvent(@)".} # Protected
proc showEvent*(this: ptr QProgressDialog, event: ptr QShowEvent) {.header:headerFile, importcpp:"#.showEvent(@)".} # Protected
proc forceShow*(this: ptr QProgressDialog) {.header:headerFile, importcpp:"#.forceShow(@)".} # Protected

export qevent
export qpushbutton
export qprogressbar
export qstring
export qsize
export qnamespace
export qdialog
export qwidget
export qpaintdevice
export qobject
export qlabel
export qcoreevent
