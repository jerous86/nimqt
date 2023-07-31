const headerFile* = "QtWidgets/qfontdialog.h"

type
    # Enums found in the C++ code
    # Global
    QFontDialog_FontDialogOption* {.header:headerFile,importcpp:"QFontDialog::FontDialogOption".} = enum NoButtons = 0x1, DontUseNativeDialog = 0x2, ScalableFonts = 0x4, NonScalableFonts = 0x8, 
        MonospacedFonts = 0x10, ProportionalFonts = 0x20

import nimqt/qtwidgets/qdialog
type
    # Classes found in the C++ code
    QFontDialog* {.header:headerFile,importcpp:"QFontDialog" ,pure.} = object of QDialog
import nimqt/qtwidgets/qwidget
import nimqt/qtgui/qpaintdevice
import nimqt/qtcore/qflags


type
    # typedefs found in the C++ code
    QFontDialog_DialogCode * = QDialog_DialogCode
    QFontDialog_RenderFlag * = QWidget_RenderFlag
    QFontDialog_RenderFlags * = QWidget_RenderFlags
    QFontDialog_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric
    QFontDialog_FontDialogOptions * = QFlags[QFontDialog_FontDialogOption]

# Stuff for class QFontDialog

# Public constructors for QFontDialog
# 1 default parameters!
proc newQFontDialog*(parent: ptr QWidget): ptr QFontDialog {. header:headerFile, importcpp:"new QFontDialog(@)" .} #
proc newQFontDialog*(): ptr QFontDialog {. header:headerFile, importcpp:"new QFontDialog(@)" .} #
import nimqt/qtgui/qfont
# 1 default parameters!
proc newQFontDialog*(initial: QFont, parent: ptr QWidget): ptr QFontDialog {. header:headerFile, importcpp:"new QFontDialog(@)" .} #
proc newQFontDialog*(initial: QFont): ptr QFontDialog {. header:headerFile, importcpp:"new QFontDialog(@)" .} #

# Public methods for QFontDialog
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QFontDialog_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QFontDialog::tr(@)".} # Public static
proc static_QFontDialog_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QFontDialog::tr(@)".} # Public static
proc setCurrentFont*(this: ptr QFontDialog, font: QFont) {.header:headerFile, importcpp:"#.setCurrentFont(@)".} # Public
proc currentFont*(this: ptr QFontDialog): QFont {.header:headerFile, importcpp:"#.currentFont(@)".} # Public
proc selectedFont*(this: ptr QFontDialog): QFont {.header:headerFile, importcpp:"#.selectedFont(@)".} # Public
# 1 default parameters!
proc setOption*(this: ptr QFontDialog, option: QFontDialog_FontDialogOption, on: bool) {.header:headerFile, importcpp:"#.setOption(@)".} # Public
proc setOption*(this: ptr QFontDialog, option: QFontDialog_FontDialogOption) {.header:headerFile, importcpp:"#.setOption(@)".} # Public
proc testOption*(this: ptr QFontDialog, option: QFontDialog_FontDialogOption): bool {.header:headerFile, importcpp:"#.testOption(@)".} # Public
proc setOptions*(this: ptr QFontDialog, options: QFlags[QFontDialog_FontDialogOption]) {.header:headerFile, importcpp:"#.setOptions(@)".} # Public
proc options*(this: ptr QFontDialog): QFlags[QFontDialog_FontDialogOption] {.header:headerFile, importcpp:"#.options(@)".} # Public
import nimqt/qtcore/qobject
proc open*(this: ptr QFontDialog, receiver: ptr QObject, member: ptr char) {.header:headerFile, importcpp:"#.open(@)".} # Public
proc setVisible*(this: ptr QFontDialog, visible: bool) {.header:headerFile, importcpp:"#.setVisible(@)".} # Public
# 1 default parameters!
proc static_QFontDialog_getFont*(ok: ptr bool, parent: ptr QWidget): QFont {.header:headerFile, importcpp:"QFontDialog::getFont(@)".} # Public static
proc static_QFontDialog_getFont*(ok: ptr bool): QFont {.header:headerFile, importcpp:"QFontDialog::getFont(@)".} # Public static
# 3 default parameters!
proc static_QFontDialog_getFont*(ok: ptr bool, initial: QFont, parent: ptr QWidget, title: QString, options: QFlags[QFontDialog_FontDialogOption]): QFont {.header:headerFile, importcpp:"QFontDialog::getFont(@)".} # Public static
proc static_QFontDialog_getFont*(ok: ptr bool, initial: QFont, parent: ptr QWidget, title: QString): QFont {.header:headerFile, importcpp:"QFontDialog::getFont(@)".} # Public static
proc static_QFontDialog_getFont*(ok: ptr bool, initial: QFont, parent: ptr QWidget): QFont {.header:headerFile, importcpp:"QFontDialog::getFont(@)".} # Public static
proc static_QFontDialog_getFont*(ok: ptr bool, initial: QFont): QFont {.header:headerFile, importcpp:"QFontDialog::getFont(@)".} # Public static
proc currentFontChanged*(this: ptr QFontDialog, font: QFont) {.header:headerFile, importcpp:"#.currentFontChanged(@)".} # Public
proc fontSelected*(this: ptr QFontDialog, font: QFont) {.header:headerFile, importcpp:"#.fontSelected(@)".} # Public

# Protected methods methods for QFontDialog
import nimqt/qtcore/qcoreevent
proc changeEvent*(this: ptr QFontDialog, event: ptr QEvent) {.header:headerFile, importcpp:"#.changeEvent(@)".} # Protected
proc done*(this: ptr QFontDialog, result: cint) {.header:headerFile, importcpp:"#.done(@)".} # Protected
proc eventFilter*(this: ptr QFontDialog, `object`: ptr QObject, event: ptr QEvent): bool {.header:headerFile, importcpp:"#.eventFilter(@)".} # Protected

export qfont
export qstring
export qdialog
export qwidget
export qflags
export qpaintdevice
export qobject
export qcoreevent
