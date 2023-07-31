const headerFile* = "QtWidgets/qdialogbuttonbox.h"

type
    # Enums found in the C++ code
    # Global
    QDialogButtonBox_ButtonRole* {.header:headerFile,importcpp:"QDialogButtonBox::ButtonRole".} = enum InvalidRole = -1, AcceptRole = 0, RejectRole = 0x1, DestructiveRole = 0x2, 
        ActionRole = 0x3, HelpRole = 0x4, YesRole = 0x5, NoRole = 0x6, ResetRole = 0x7, 
        ApplyRole = 0x8, NRoles = 0x9
    QDialogButtonBox_StandardButton* {.header:headerFile,importcpp:"QDialogButtonBox::StandardButton".} = enum NoButton = 0, Ok = 0x400, Save = 0x800, SaveAll = 0x1000, 
        Open = 0x2000, Yes = 0x4000, YesToAll = 0x8000, No = 0x10000, NoToAll = 0x20000, 
        Abort = 0x40000, Retry = 0x80000, Ignore = 0x100000, Close = 0x200000, Cancel = 0x400000, 
        Discard = 0x800000, Help = 0x1000000, Apply = 0x2000000, Reset = 0x4000000, RestoreDefaults = 0x8000000
    QDialogButtonBox_ButtonLayout* {.header:headerFile,importcpp:"QDialogButtonBox::ButtonLayout".} = enum WinLayout = 0, MacLayout = 0x1, KdeLayout = 0x2, GnomeLayout = 0x3, 
        AndroidLayout = 0x4

import nimqt/qtwidgets/qwidget
type
    # Classes found in the C++ code
    QDialogButtonBox* {.header:headerFile,importcpp:"QDialogButtonBox" ,pure.} = object of QWidget
import nimqt/qtgui/qpaintdevice
import nimqt/qtcore/qflags


type
    # typedefs found in the C++ code
    QDialogButtonBox_RenderFlag * = QWidget_RenderFlag
    QDialogButtonBox_RenderFlags * = QWidget_RenderFlags
    QDialogButtonBox_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric
    QDialogButtonBox_StandardButtons * = QFlags[QDialogButtonBox_StandardButton]

# Consts
const
    # Global
    QDialogButtonBox_StandardButtonFirstButton* = 1024 # from anonymous enum Ok
    QDialogButtonBox_StandardButtonLastButton* = 134217728 # from anonymous enum RestoreDefaults

# Stuff for class QDialogButtonBox

# Public constructors for QDialogButtonBox
# 1 default parameters!
proc newQDialogButtonBox*(parent: ptr QWidget): ptr QDialogButtonBox {. header:headerFile, importcpp:"new QDialogButtonBox(@)" .} #
proc newQDialogButtonBox*(): ptr QDialogButtonBox {. header:headerFile, importcpp:"new QDialogButtonBox(@)" .} #
import nimqt/qtcore/qnamespace
# 1 default parameters!
proc newQDialogButtonBox*(orientation: Qt_Orientation, parent: ptr QWidget): ptr QDialogButtonBox {. header:headerFile, importcpp:"new QDialogButtonBox(@)" .} #
proc newQDialogButtonBox*(orientation: Qt_Orientation): ptr QDialogButtonBox {. header:headerFile, importcpp:"new QDialogButtonBox(@)" .} #
# 1 default parameters!
proc newQDialogButtonBox*(buttons: QFlags[QDialogButtonBox_StandardButton], parent: ptr QWidget): ptr QDialogButtonBox {. header:headerFile, importcpp:"new QDialogButtonBox(@)" .} #
proc newQDialogButtonBox*(buttons: QFlags[QDialogButtonBox_StandardButton]): ptr QDialogButtonBox {. header:headerFile, importcpp:"new QDialogButtonBox(@)" .} #
# 1 default parameters!
proc newQDialogButtonBox*(buttons: QFlags[QDialogButtonBox_StandardButton], orientation: Qt_Orientation, parent: ptr QWidget): ptr QDialogButtonBox {. header:headerFile, importcpp:"new QDialogButtonBox(@)" .} #
proc newQDialogButtonBox*(buttons: QFlags[QDialogButtonBox_StandardButton], orientation: Qt_Orientation): ptr QDialogButtonBox {. header:headerFile, importcpp:"new QDialogButtonBox(@)" .} #

# Public methods for QDialogButtonBox
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QDialogButtonBox_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QDialogButtonBox::tr(@)".} # Public static
proc static_QDialogButtonBox_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QDialogButtonBox::tr(@)".} # Public static
proc setOrientation*(this: ptr QDialogButtonBox, orientation: Qt_Orientation) {.header:headerFile, importcpp:"#.setOrientation(@)".} # Public
proc orientation*(this: ptr QDialogButtonBox): Qt_Orientation {.header:headerFile, importcpp:"#.orientation(@)".} # Public
import nimqt/qtwidgets/qabstractbutton
proc addButton*(this: ptr QDialogButtonBox, button: ptr QAbstractButton, role: QDialogButtonBox_ButtonRole) {.header:headerFile, importcpp:"#.addButton(@)".} # Public
import nimqt/qtwidgets/qpushbutton
proc addButton*(this: ptr QDialogButtonBox, text: QString, role: QDialogButtonBox_ButtonRole): ptr QPushButton {.header:headerFile, importcpp:"#.addButton(@)".} # Public
proc addButton*(this: ptr QDialogButtonBox, button: QDialogButtonBox_StandardButton): ptr QPushButton {.header:headerFile, importcpp:"#.addButton(@)".} # Public
proc removeButton*(this: ptr QDialogButtonBox, button: ptr QAbstractButton) {.header:headerFile, importcpp:"#.removeButton(@)".} # Public
proc clear*(this: ptr QDialogButtonBox) {.header:headerFile, importcpp:"#.clear(@)".} # Public
import nimqt/qtcore/qlist
proc buttons*(this: ptr QDialogButtonBox): QList[ptr QAbstractButton] {.header:headerFile, importcpp:"#.buttons(@)".} # Public
proc buttonRole*(this: ptr QDialogButtonBox, button: ptr QAbstractButton): QDialogButtonBox_ButtonRole {.header:headerFile, importcpp:"#.buttonRole(@)".} # Public
proc setStandardButtons*(this: ptr QDialogButtonBox, buttons: QFlags[QDialogButtonBox_StandardButton]) {.header:headerFile, importcpp:"#.setStandardButtons(@)".} # Public
proc standardButtons*(this: ptr QDialogButtonBox): QFlags[QDialogButtonBox_StandardButton] {.header:headerFile, importcpp:"#.standardButtons(@)".} # Public
proc standardButton*(this: ptr QDialogButtonBox, button: ptr QAbstractButton): QDialogButtonBox_StandardButton {.header:headerFile, importcpp:"#.standardButton(@)".} # Public
proc button*(this: ptr QDialogButtonBox, which: QDialogButtonBox_StandardButton): ptr QPushButton {.header:headerFile, importcpp:"#.button(@)".} # Public
proc setCenterButtons*(this: ptr QDialogButtonBox, center: bool) {.header:headerFile, importcpp:"#.setCenterButtons(@)".} # Public
proc centerButtons*(this: ptr QDialogButtonBox): bool {.header:headerFile, importcpp:"#.centerButtons(@)".} # Public
proc clicked*(this: ptr QDialogButtonBox, button: ptr QAbstractButton) {.header:headerFile, importcpp:"#.clicked(@)".} # Public
proc accepted*(this: ptr QDialogButtonBox) {.header:headerFile, importcpp:"#.accepted(@)".} # Public
proc helpRequested*(this: ptr QDialogButtonBox) {.header:headerFile, importcpp:"#.helpRequested(@)".} # Public
proc rejected*(this: ptr QDialogButtonBox) {.header:headerFile, importcpp:"#.rejected(@)".} # Public

# Protected methods methods for QDialogButtonBox
import nimqt/qtcore/qcoreevent
proc changeEvent*(this: ptr QDialogButtonBox, event: ptr QEvent) {.header:headerFile, importcpp:"#.changeEvent(@)".} # Protected
proc event*(this: ptr QDialogButtonBox, event: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Protected

export qpushbutton
export qstring
export qnamespace
export qlist
export qabstractbutton
export qwidget
export qflags
export qpaintdevice
export qcoreevent
