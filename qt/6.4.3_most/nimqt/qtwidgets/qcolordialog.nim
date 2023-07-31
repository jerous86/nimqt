const headerFile* = "QtWidgets/qcolordialog.h"

type
    # Enums found in the C++ code
    # Global
    QColorDialog_ColorDialogOption* {.header:headerFile,importcpp:"QColorDialog::ColorDialogOption".} = enum ShowAlphaChannel = 0x1, NoButtons = 0x2, DontUseNativeDialog = 0x4

import nimqt/qtwidgets/qdialog
type
    # Classes found in the C++ code
    QColorDialog* {.header:headerFile,importcpp:"QColorDialog" ,pure.} = object of QDialog
import nimqt/qtwidgets/qwidget
import nimqt/qtgui/qpaintdevice
import nimqt/qtcore/qflags


type
    # typedefs found in the C++ code
    QColorDialog_DialogCode * = QDialog_DialogCode
    QColorDialog_RenderFlag * = QWidget_RenderFlag
    QColorDialog_RenderFlags * = QWidget_RenderFlags
    QColorDialog_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric
    QColorDialog_ColorDialogOptions * = QFlags[QColorDialog_ColorDialogOption]

# Stuff for class QColorDialog

# Public constructors for QColorDialog
# 1 default parameters!
proc newQColorDialog*(parent: ptr QWidget): ptr QColorDialog {. header:headerFile, importcpp:"new QColorDialog(@)" .} #
proc newQColorDialog*(): ptr QColorDialog {. header:headerFile, importcpp:"new QColorDialog(@)" .} #
import nimqt/qtgui/qcolor
# 1 default parameters!
proc newQColorDialog*(initial: QColor, parent: ptr QWidget): ptr QColorDialog {. header:headerFile, importcpp:"new QColorDialog(@)" .} #
proc newQColorDialog*(initial: QColor): ptr QColorDialog {. header:headerFile, importcpp:"new QColorDialog(@)" .} #

# Public methods for QColorDialog
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QColorDialog_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QColorDialog::tr(@)".} # Public static
proc static_QColorDialog_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QColorDialog::tr(@)".} # Public static
proc setCurrentColor*(this: ptr QColorDialog, color: QColor) {.header:headerFile, importcpp:"#.setCurrentColor(@)".} # Public
proc currentColor*(this: ptr QColorDialog): QColor {.header:headerFile, importcpp:"#.currentColor(@)".} # Public
proc selectedColor*(this: ptr QColorDialog): QColor {.header:headerFile, importcpp:"#.selectedColor(@)".} # Public
# 1 default parameters!
proc setOption*(this: ptr QColorDialog, option: QColorDialog_ColorDialogOption, on: bool) {.header:headerFile, importcpp:"#.setOption(@)".} # Public
proc setOption*(this: ptr QColorDialog, option: QColorDialog_ColorDialogOption) {.header:headerFile, importcpp:"#.setOption(@)".} # Public
proc testOption*(this: ptr QColorDialog, option: QColorDialog_ColorDialogOption): bool {.header:headerFile, importcpp:"#.testOption(@)".} # Public
proc setOptions*(this: ptr QColorDialog, options: QFlags[QColorDialog_ColorDialogOption]) {.header:headerFile, importcpp:"#.setOptions(@)".} # Public
proc options*(this: ptr QColorDialog): QFlags[QColorDialog_ColorDialogOption] {.header:headerFile, importcpp:"#.options(@)".} # Public
import nimqt/qtcore/qobject
proc open*(this: ptr QColorDialog, receiver: ptr QObject, member: ptr char) {.header:headerFile, importcpp:"#.open(@)".} # Public
proc setVisible*(this: ptr QColorDialog, visible: bool) {.header:headerFile, importcpp:"#.setVisible(@)".} # Public
# 4 default parameters!
proc static_QColorDialog_getColor*(initial: QColor, parent: ptr QWidget, title: QString, options: QFlags[QColorDialog_ColorDialogOption]): QColor {.header:headerFile, importcpp:"QColorDialog::getColor(@)".} # Public static
proc static_QColorDialog_getColor*(initial: QColor, parent: ptr QWidget, title: QString): QColor {.header:headerFile, importcpp:"QColorDialog::getColor(@)".} # Public static
proc static_QColorDialog_getColor*(initial: QColor, parent: ptr QWidget): QColor {.header:headerFile, importcpp:"QColorDialog::getColor(@)".} # Public static
proc static_QColorDialog_getColor*(initial: QColor): QColor {.header:headerFile, importcpp:"QColorDialog::getColor(@)".} # Public static
proc static_QColorDialog_getColor*(): QColor {.header:headerFile, importcpp:"QColorDialog::getColor(@)".} # Public static
proc static_QColorDialog_customCount*(): cint {.header:headerFile, importcpp:"QColorDialog::customCount(@)".} # Public static
proc static_QColorDialog_customColor*(index: cint): QColor {.header:headerFile, importcpp:"QColorDialog::customColor(@)".} # Public static
proc static_QColorDialog_setCustomColor*(index: cint, color: QColor) {.header:headerFile, importcpp:"QColorDialog::setCustomColor(@)".} # Public static
proc static_QColorDialog_standardColor*(index: cint): QColor {.header:headerFile, importcpp:"QColorDialog::standardColor(@)".} # Public static
proc static_QColorDialog_setStandardColor*(index: cint, color: QColor) {.header:headerFile, importcpp:"QColorDialog::setStandardColor(@)".} # Public static
proc currentColorChanged*(this: ptr QColorDialog, color: QColor) {.header:headerFile, importcpp:"#.currentColorChanged(@)".} # Public
proc colorSelected*(this: ptr QColorDialog, color: QColor) {.header:headerFile, importcpp:"#.colorSelected(@)".} # Public

# Protected methods methods for QColorDialog
import nimqt/qtcore/qcoreevent
proc changeEvent*(this: ptr QColorDialog, event: ptr QEvent) {.header:headerFile, importcpp:"#.changeEvent(@)".} # Protected
proc done*(this: ptr QColorDialog, result: cint) {.header:headerFile, importcpp:"#.done(@)".} # Protected

export qstring
export qdialog
export qwidget
export qflags
export qpaintdevice
export qobject
export qcoreevent
export qcolor
