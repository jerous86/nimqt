const headerFile* = "QtWidgets/qmessagebox.h"

type
    # Enums found in the C++ code
    # Global
    QMessageBox_Icon* {.header:headerFile,importcpp:"QMessageBox::Icon".} = enum NoIcon = 0, Information = 0x1, Warning = 0x2, Critical = 0x3, 
        Question = 0x4
    QMessageBox_ButtonRole* {.header:headerFile,importcpp:"QMessageBox::ButtonRole".} = enum InvalidRole = -1, AcceptRole = 0, RejectRole = 0x1, DestructiveRole = 0x2, 
        ActionRole = 0x3, HelpRole = 0x4, YesRole = 0x5, NoRole = 0x6, ResetRole = 0x7, 
        ApplyRole = 0x8, NRoles = 0x9
    QMessageBox_StandardButton* {.header:headerFile,importcpp:"QMessageBox::StandardButton".} = enum ButtonMask = -769, NoButton = 0, Default = 0x100, Escape = 0x200, 
        FlagMask = 0x300, Ok = 0x400, Save = 0x800, SaveAll = 0x1000, Open = 0x2000, 
        Yes = 0x4000, YesToAll = 0x8000, No = 0x10000, NoToAll = 0x20000, Abort = 0x40000, 
        Retry = 0x80000, Ignore = 0x100000, Close = 0x200000, Cancel = 0x400000, Discard = 0x800000, 
        Help = 0x1000000, Apply = 0x2000000, Reset = 0x4000000, RestoreDefaults = 0x8000000

import nimqt/qtwidgets/qdialog
type
    # Classes found in the C++ code
    QMessageBox* {.header:headerFile,importcpp:"QMessageBox" ,pure.} = object of QDialog
import nimqt/qtwidgets/qwidget
import nimqt/qtgui/qpaintdevice
import nimqt/qtcore/qflags


type
    # typedefs found in the C++ code
    QMessageBox_DialogCode * = QDialog_DialogCode
    QMessageBox_RenderFlag * = QWidget_RenderFlag
    QMessageBox_RenderFlags * = QWidget_RenderFlags
    QMessageBox_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric
    QMessageBox_Button * = QMessageBox_StandardButton
    QMessageBox_StandardButtons * = QFlags[QMessageBox_StandardButton]

# Consts
const
    # Global
    QMessageBox_StandardButtonFirstButton* = 1024 # from anonymous enum Ok
    QMessageBox_StandardButtonYesAll* = 32768 # from anonymous enum YesToAll
    QMessageBox_StandardButtonNoAll* = 131072 # from anonymous enum NoToAll
    QMessageBox_StandardButtonLastButton* = 134217728 # from anonymous enum RestoreDefaults

# Stuff for class QMessageBox

# Public constructors for QMessageBox
# 1 default parameters!
proc newQMessageBox*(parent: ptr QWidget): ptr QMessageBox {. header:headerFile, importcpp:"new QMessageBox(@)" .} #
proc newQMessageBox*(): ptr QMessageBox {. header:headerFile, importcpp:"new QMessageBox(@)" .} #
import nimqt/qtcore/qstring
import nimqt/qtcore/qnamespace
# 3 default parameters!
proc newQMessageBox*(icon: QMessageBox_Icon, title: QString, text: QString, buttons: QFlags[QMessageBox_StandardButton], parent: ptr QWidget, flags: Qt_WindowFlags): ptr QMessageBox {. header:headerFile, importcpp:"new QMessageBox(@)" .} #
proc newQMessageBox*(icon: QMessageBox_Icon, title: QString, text: QString, buttons: QFlags[QMessageBox_StandardButton], parent: ptr QWidget): ptr QMessageBox {. header:headerFile, importcpp:"new QMessageBox(@)" .} #
proc newQMessageBox*(icon: QMessageBox_Icon, title: QString, text: QString, buttons: QFlags[QMessageBox_StandardButton]): ptr QMessageBox {. header:headerFile, importcpp:"new QMessageBox(@)" .} #
proc newQMessageBox*(icon: QMessageBox_Icon, title: QString, text: QString): ptr QMessageBox {. header:headerFile, importcpp:"new QMessageBox(@)" .} #
# 2 default parameters!
proc newQMessageBox*(title: QString, text: QString, icon: QMessageBox_Icon, button0: cint, button1: cint, button2: cint, parent: ptr QWidget, f: Qt_WindowFlags): ptr QMessageBox {. header:headerFile, importcpp:"new QMessageBox(@)" .} #
proc newQMessageBox*(title: QString, text: QString, icon: QMessageBox_Icon, button0: cint, button1: cint, button2: cint, parent: ptr QWidget): ptr QMessageBox {. header:headerFile, importcpp:"new QMessageBox(@)" .} #
proc newQMessageBox*(title: QString, text: QString, icon: QMessageBox_Icon, button0: cint, button1: cint, button2: cint): ptr QMessageBox {. header:headerFile, importcpp:"new QMessageBox(@)" .} #

# Public methods for QMessageBox
# 1 default parameters!
proc static_QMessageBox_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QMessageBox::tr(@)".} # Public static
proc static_QMessageBox_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QMessageBox::tr(@)".} # Public static
import nimqt/qtwidgets/qabstractbutton
proc addButton*(this: ptr QMessageBox, button: ptr QAbstractButton, role: QMessageBox_ButtonRole) {.header:headerFile, importcpp:"#.addButton(@)".} # Public
import nimqt/qtwidgets/qpushbutton
proc addButton*(this: ptr QMessageBox, text: QString, role: QMessageBox_ButtonRole): ptr QPushButton {.header:headerFile, importcpp:"#.addButton(@)".} # Public
proc addButton*(this: ptr QMessageBox, button: QMessageBox_StandardButton): ptr QPushButton {.header:headerFile, importcpp:"#.addButton(@)".} # Public
proc removeButton*(this: ptr QMessageBox, button: ptr QAbstractButton) {.header:headerFile, importcpp:"#.removeButton(@)".} # Public
import nimqt/qtcore/qobject
proc open*(this: ptr QMessageBox, receiver: ptr QObject, member: ptr char) {.header:headerFile, importcpp:"#.open(@)".} # Public
import nimqt/qtcore/qlist
proc buttons*(this: ptr QMessageBox): QList[ptr QAbstractButton] {.header:headerFile, importcpp:"#.buttons(@)".} # Public
proc buttonRole*(this: ptr QMessageBox, button: ptr QAbstractButton): QMessageBox_ButtonRole {.header:headerFile, importcpp:"#.buttonRole(@)".} # Public
proc setStandardButtons*(this: ptr QMessageBox, buttons: QFlags[QMessageBox_StandardButton]) {.header:headerFile, importcpp:"#.setStandardButtons(@)".} # Public
proc standardButtons*(this: ptr QMessageBox): QFlags[QMessageBox_StandardButton] {.header:headerFile, importcpp:"#.standardButtons(@)".} # Public
proc standardButton*(this: ptr QMessageBox, button: ptr QAbstractButton): QMessageBox_StandardButton {.header:headerFile, importcpp:"#.standardButton(@)".} # Public
proc button*(this: ptr QMessageBox, which: QMessageBox_StandardButton): ptr QAbstractButton {.header:headerFile, importcpp:"#.button(@)".} # Public
proc defaultButton*(this: ptr QMessageBox): ptr QPushButton {.header:headerFile, importcpp:"#.defaultButton(@)".} # Public
proc setDefaultButton*(this: ptr QMessageBox, button: ptr QPushButton) {.header:headerFile, importcpp:"#.setDefaultButton(@)".} # Public
proc setDefaultButton*(this: ptr QMessageBox, button: QMessageBox_StandardButton) {.header:headerFile, importcpp:"#.setDefaultButton(@)".} # Public
proc escapeButton*(this: ptr QMessageBox): ptr QAbstractButton {.header:headerFile, importcpp:"#.escapeButton(@)".} # Public
proc setEscapeButton*(this: ptr QMessageBox, button: ptr QAbstractButton) {.header:headerFile, importcpp:"#.setEscapeButton(@)".} # Public
proc setEscapeButton*(this: ptr QMessageBox, button: QMessageBox_StandardButton) {.header:headerFile, importcpp:"#.setEscapeButton(@)".} # Public
proc clickedButton*(this: ptr QMessageBox): ptr QAbstractButton {.header:headerFile, importcpp:"#.clickedButton(@)".} # Public
proc text*(this: ptr QMessageBox): QString {.header:headerFile, importcpp:"#.text(@)".} # Public
proc setText*(this: ptr QMessageBox, text: QString) {.header:headerFile, importcpp:"#.setText(@)".} # Public
proc icon*(this: ptr QMessageBox): QMessageBox_Icon {.header:headerFile, importcpp:"#.icon(@)".} # Public
proc setIcon*(this: ptr QMessageBox, arg_0: QMessageBox_Icon) {.header:headerFile, importcpp:"#.setIcon(@)".} # Public
import nimqt/qtgui/qpixmap
proc iconPixmap*(this: ptr QMessageBox): QPixmap {.header:headerFile, importcpp:"#.iconPixmap(@)".} # Public
proc setIconPixmap*(this: ptr QMessageBox, pixmap: QPixmap) {.header:headerFile, importcpp:"#.setIconPixmap(@)".} # Public
proc textFormat*(this: ptr QMessageBox): Qt_TextFormat {.header:headerFile, importcpp:"#.textFormat(@)".} # Public
proc setTextFormat*(this: ptr QMessageBox, format: Qt_TextFormat) {.header:headerFile, importcpp:"#.setTextFormat(@)".} # Public
proc setTextInteractionFlags*(this: ptr QMessageBox, flags: Qt_TextInteractionFlags) {.header:headerFile, importcpp:"#.setTextInteractionFlags(@)".} # Public
proc textInteractionFlags*(this: ptr QMessageBox): Qt_TextInteractionFlags {.header:headerFile, importcpp:"#.textInteractionFlags(@)".} # Public
import nimqt/qtwidgets/qcheckbox
proc setCheckBox*(this: ptr QMessageBox, cb: ptr QCheckBox) {.header:headerFile, importcpp:"#.setCheckBox(@)".} # Public
proc checkBox*(this: ptr QMessageBox): ptr QCheckBox {.header:headerFile, importcpp:"#.checkBox(@)".} # Public
# 1 default parameters!
proc static_QMessageBox_information*(parent: ptr QWidget, title: QString, text: QString, buttons: QFlags[QMessageBox_StandardButton], defaultButton: QMessageBox_StandardButton): QMessageBox_StandardButton {.header:headerFile, importcpp:"QMessageBox::information(@)".} # Public static
proc static_QMessageBox_information*(parent: ptr QWidget, title: QString, text: QString, buttons: QFlags[QMessageBox_StandardButton]): QMessageBox_StandardButton {.header:headerFile, importcpp:"QMessageBox::information(@)".} # Public static
proc static_QMessageBox_information*(parent: ptr QWidget, title: QString, text: QString, button0: QMessageBox_StandardButton, button1: QMessageBox_StandardButton): QMessageBox_StandardButton {.header:headerFile, importcpp:"QMessageBox::information(@)".} # Public static
# 1 default parameters!
proc static_QMessageBox_question*(parent: ptr QWidget, title: QString, text: QString, buttons: QFlags[QMessageBox_StandardButton], defaultButton: QMessageBox_StandardButton): QMessageBox_StandardButton {.header:headerFile, importcpp:"QMessageBox::question(@)".} # Public static
proc static_QMessageBox_question*(parent: ptr QWidget, title: QString, text: QString, buttons: QFlags[QMessageBox_StandardButton]): QMessageBox_StandardButton {.header:headerFile, importcpp:"QMessageBox::question(@)".} # Public static
proc static_QMessageBox_question*(parent: ptr QWidget, title: QString, text: QString, button0: QMessageBox_StandardButton, button1: QMessageBox_StandardButton): cint {.header:headerFile, importcpp:"QMessageBox::question(@)".} # Public static
# 1 default parameters!
proc static_QMessageBox_warning*(parent: ptr QWidget, title: QString, text: QString, buttons: QFlags[QMessageBox_StandardButton], defaultButton: QMessageBox_StandardButton): QMessageBox_StandardButton {.header:headerFile, importcpp:"QMessageBox::warning(@)".} # Public static
proc static_QMessageBox_warning*(parent: ptr QWidget, title: QString, text: QString, buttons: QFlags[QMessageBox_StandardButton]): QMessageBox_StandardButton {.header:headerFile, importcpp:"QMessageBox::warning(@)".} # Public static
proc static_QMessageBox_warning*(parent: ptr QWidget, title: QString, text: QString, button0: QMessageBox_StandardButton, button1: QMessageBox_StandardButton): cint {.header:headerFile, importcpp:"QMessageBox::warning(@)".} # Public static
# 1 default parameters!
proc static_QMessageBox_critical*(parent: ptr QWidget, title: QString, text: QString, buttons: QFlags[QMessageBox_StandardButton], defaultButton: QMessageBox_StandardButton): QMessageBox_StandardButton {.header:headerFile, importcpp:"QMessageBox::critical(@)".} # Public static
proc static_QMessageBox_critical*(parent: ptr QWidget, title: QString, text: QString, buttons: QFlags[QMessageBox_StandardButton]): QMessageBox_StandardButton {.header:headerFile, importcpp:"QMessageBox::critical(@)".} # Public static
proc static_QMessageBox_critical*(parent: ptr QWidget, title: QString, text: QString, button0: QMessageBox_StandardButton, button1: QMessageBox_StandardButton): cint {.header:headerFile, importcpp:"QMessageBox::critical(@)".} # Public static
proc static_QMessageBox_about*(parent: ptr QWidget, title: QString, text: QString) {.header:headerFile, importcpp:"QMessageBox::about(@)".} # Public static
# 1 default parameters!
proc static_QMessageBox_aboutQt*(parent: ptr QWidget, title: QString) {.header:headerFile, importcpp:"QMessageBox::aboutQt(@)".} # Public static
proc static_QMessageBox_aboutQt*(parent: ptr QWidget) {.header:headerFile, importcpp:"QMessageBox::aboutQt(@)".} # Public static
# 2 default parameters!
proc static_QMessageBox_information*(parent: ptr QWidget, title: QString, text: QString, button0: cint, button1: cint, button2: cint): cint {.header:headerFile, importcpp:"QMessageBox::information(@)".} # Public static
proc static_QMessageBox_information*(parent: ptr QWidget, title: QString, text: QString, button0: cint, button1: cint): cint {.header:headerFile, importcpp:"QMessageBox::information(@)".} # Public static
proc static_QMessageBox_information*(parent: ptr QWidget, title: QString, text: QString, button0: cint): cint {.header:headerFile, importcpp:"QMessageBox::information(@)".} # Public static
# 3 default parameters!
proc static_QMessageBox_information*(parent: ptr QWidget, title: QString, text: QString, button0Text: QString, button1Text: QString, button2Text: QString, defaultButtonNumber: cint, escapeButtonNumber: cint): cint {.header:headerFile, importcpp:"QMessageBox::information(@)".} # Public static
proc static_QMessageBox_information*(parent: ptr QWidget, title: QString, text: QString, button0Text: QString, button1Text: QString, button2Text: QString, defaultButtonNumber: cint): cint {.header:headerFile, importcpp:"QMessageBox::information(@)".} # Public static
proc static_QMessageBox_information*(parent: ptr QWidget, title: QString, text: QString, button0Text: QString, button1Text: QString, button2Text: QString): cint {.header:headerFile, importcpp:"QMessageBox::information(@)".} # Public static
proc static_QMessageBox_information*(parent: ptr QWidget, title: QString, text: QString, button0Text: QString, button1Text: QString): cint {.header:headerFile, importcpp:"QMessageBox::information(@)".} # Public static
# 2 default parameters!
proc static_QMessageBox_question*(parent: ptr QWidget, title: QString, text: QString, button0: cint, button1: cint, button2: cint): cint {.header:headerFile, importcpp:"QMessageBox::question(@)".} # Public static
proc static_QMessageBox_question*(parent: ptr QWidget, title: QString, text: QString, button0: cint, button1: cint): cint {.header:headerFile, importcpp:"QMessageBox::question(@)".} # Public static
proc static_QMessageBox_question*(parent: ptr QWidget, title: QString, text: QString, button0: cint): cint {.header:headerFile, importcpp:"QMessageBox::question(@)".} # Public static
# 3 default parameters!
proc static_QMessageBox_question*(parent: ptr QWidget, title: QString, text: QString, button0Text: QString, button1Text: QString, button2Text: QString, defaultButtonNumber: cint, escapeButtonNumber: cint): cint {.header:headerFile, importcpp:"QMessageBox::question(@)".} # Public static
proc static_QMessageBox_question*(parent: ptr QWidget, title: QString, text: QString, button0Text: QString, button1Text: QString, button2Text: QString, defaultButtonNumber: cint): cint {.header:headerFile, importcpp:"QMessageBox::question(@)".} # Public static
proc static_QMessageBox_question*(parent: ptr QWidget, title: QString, text: QString, button0Text: QString, button1Text: QString, button2Text: QString): cint {.header:headerFile, importcpp:"QMessageBox::question(@)".} # Public static
proc static_QMessageBox_question*(parent: ptr QWidget, title: QString, text: QString, button0Text: QString, button1Text: QString): cint {.header:headerFile, importcpp:"QMessageBox::question(@)".} # Public static
# 1 default parameters!
proc static_QMessageBox_warning*(parent: ptr QWidget, title: QString, text: QString, button0: cint, button1: cint, button2: cint): cint {.header:headerFile, importcpp:"QMessageBox::warning(@)".} # Public static
proc static_QMessageBox_warning*(parent: ptr QWidget, title: QString, text: QString, button0: cint, button1: cint): cint {.header:headerFile, importcpp:"QMessageBox::warning(@)".} # Public static
# 3 default parameters!
proc static_QMessageBox_warning*(parent: ptr QWidget, title: QString, text: QString, button0Text: QString, button1Text: QString, button2Text: QString, defaultButtonNumber: cint, escapeButtonNumber: cint): cint {.header:headerFile, importcpp:"QMessageBox::warning(@)".} # Public static
proc static_QMessageBox_warning*(parent: ptr QWidget, title: QString, text: QString, button0Text: QString, button1Text: QString, button2Text: QString, defaultButtonNumber: cint): cint {.header:headerFile, importcpp:"QMessageBox::warning(@)".} # Public static
proc static_QMessageBox_warning*(parent: ptr QWidget, title: QString, text: QString, button0Text: QString, button1Text: QString, button2Text: QString): cint {.header:headerFile, importcpp:"QMessageBox::warning(@)".} # Public static
proc static_QMessageBox_warning*(parent: ptr QWidget, title: QString, text: QString, button0Text: QString, button1Text: QString): cint {.header:headerFile, importcpp:"QMessageBox::warning(@)".} # Public static
# 1 default parameters!
proc static_QMessageBox_critical*(parent: ptr QWidget, title: QString, text: QString, button0: cint, button1: cint, button2: cint): cint {.header:headerFile, importcpp:"QMessageBox::critical(@)".} # Public static
proc static_QMessageBox_critical*(parent: ptr QWidget, title: QString, text: QString, button0: cint, button1: cint): cint {.header:headerFile, importcpp:"QMessageBox::critical(@)".} # Public static
# 3 default parameters!
proc static_QMessageBox_critical*(parent: ptr QWidget, title: QString, text: QString, button0Text: QString, button1Text: QString, button2Text: QString, defaultButtonNumber: cint, escapeButtonNumber: cint): cint {.header:headerFile, importcpp:"QMessageBox::critical(@)".} # Public static
proc static_QMessageBox_critical*(parent: ptr QWidget, title: QString, text: QString, button0Text: QString, button1Text: QString, button2Text: QString, defaultButtonNumber: cint): cint {.header:headerFile, importcpp:"QMessageBox::critical(@)".} # Public static
proc static_QMessageBox_critical*(parent: ptr QWidget, title: QString, text: QString, button0Text: QString, button1Text: QString, button2Text: QString): cint {.header:headerFile, importcpp:"QMessageBox::critical(@)".} # Public static
proc static_QMessageBox_critical*(parent: ptr QWidget, title: QString, text: QString, button0Text: QString, button1Text: QString): cint {.header:headerFile, importcpp:"QMessageBox::critical(@)".} # Public static
proc buttonText*(this: ptr QMessageBox, button: cint): QString {.header:headerFile, importcpp:"#.buttonText(@)".} # Public
proc setButtonText*(this: ptr QMessageBox, button: cint, text: QString) {.header:headerFile, importcpp:"#.setButtonText(@)".} # Public
proc informativeText*(this: ptr QMessageBox): QString {.header:headerFile, importcpp:"#.informativeText(@)".} # Public
proc setInformativeText*(this: ptr QMessageBox, text: QString) {.header:headerFile, importcpp:"#.setInformativeText(@)".} # Public
proc detailedText*(this: ptr QMessageBox): QString {.header:headerFile, importcpp:"#.detailedText(@)".} # Public
proc setDetailedText*(this: ptr QMessageBox, text: QString) {.header:headerFile, importcpp:"#.setDetailedText(@)".} # Public
proc setWindowTitle*(this: ptr QMessageBox, title: QString) {.header:headerFile, importcpp:"#.setWindowTitle(@)".} # Public
proc setWindowModality*(this: ptr QMessageBox, windowModality: Qt_WindowModality) {.header:headerFile, importcpp:"#.setWindowModality(@)".} # Public
proc static_QMessageBox_standardIcon*(icon: QMessageBox_Icon): QPixmap {.header:headerFile, importcpp:"QMessageBox::standardIcon(@)".} # Public static
proc buttonClicked*(this: ptr QMessageBox, button: ptr QAbstractButton) {.header:headerFile, importcpp:"#.buttonClicked(@)".} # Public

# Protected methods methods for QMessageBox
import nimqt/qtcore/qcoreevent
proc event*(this: ptr QMessageBox, e: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Protected
import nimqt/qtgui/qevent
proc resizeEvent*(this: ptr QMessageBox, event: ptr QResizeEvent) {.header:headerFile, importcpp:"#.resizeEvent(@)".} # Protected
proc showEvent*(this: ptr QMessageBox, event: ptr QShowEvent) {.header:headerFile, importcpp:"#.showEvent(@)".} # Protected
proc closeEvent*(this: ptr QMessageBox, event: ptr QCloseEvent) {.header:headerFile, importcpp:"#.closeEvent(@)".} # Protected
proc keyPressEvent*(this: ptr QMessageBox, event: ptr QKeyEvent) {.header:headerFile, importcpp:"#.keyPressEvent(@)".} # Protected
proc changeEvent*(this: ptr QMessageBox, event: ptr QEvent) {.header:headerFile, importcpp:"#.changeEvent(@)".} # Protected

export qevent
export qpixmap
export qpushbutton
export qstring
export qcheckbox
export qnamespace
export qlist
export qdialog
export qabstractbutton
export qwidget
export qflags
export qpaintdevice
export qobject
export qcoreevent
