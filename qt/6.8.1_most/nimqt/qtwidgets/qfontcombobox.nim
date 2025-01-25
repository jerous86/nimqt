const headerFile* = "QtWidgets/qfontcombobox.h"

type
    # Enums found in the C++ code
    # Global
    QFontComboBox_FontFilter* {.header:headerFile,importcpp:"QFontComboBox::FontFilter".} = enum AllFonts = 0, ScalableFonts = 0x1, NonScalableFonts = 0x2, MonospacedFonts = 0x4, 
        ProportionalFonts = 0x8

import nimqt/qtwidgets/qcombobox
type
    # Classes found in the C++ code
    QFontComboBox* {.header:headerFile,importcpp:"QFontComboBox" ,pure.} = object of QComboBox
import nimqt/qtwidgets/qwidget
import nimqt/qtgui/qpaintdevice
import nimqt/qtcore/qflags


type
    # typedefs found in the C++ code
    QFontComboBox_InsertPolicy * = QComboBox_InsertPolicy
    QFontComboBox_SizeAdjustPolicy * = QComboBox_SizeAdjustPolicy
    QFontComboBox_RenderFlag * = QWidget_RenderFlag
    QFontComboBox_RenderFlags * = QWidget_RenderFlags
    QFontComboBox_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric
    QFontComboBox_FontFilters * = QFlags[QFontComboBox_FontFilter]

# Stuff for class QFontComboBox

# Public constructors for QFontComboBox
# 1 default parameters!
proc newQFontComboBox*(parent: ptr QWidget): ptr QFontComboBox {. header:headerFile, importcpp:"new QFontComboBox(@)" .} #
proc newQFontComboBox*(): ptr QFontComboBox {. header:headerFile, importcpp:"new QFontComboBox(@)" .} #

# Public methods for QFontComboBox
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QFontComboBox_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QFontComboBox::tr(@)".} # Public static
proc static_QFontComboBox_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QFontComboBox::tr(@)".} # Public static
import nimqt/qtgui/qfontdatabase
proc setWritingSystem*(this: ptr QFontComboBox, arg_0: QFontDatabase_WritingSystem) {.header:headerFile, importcpp:"#.setWritingSystem(@)".} # Public
proc writingSystem*(this: ptr QFontComboBox): QFontDatabase_WritingSystem {.header:headerFile, importcpp:"#.writingSystem(@)".} # Public
proc setFontFilters*(this: ptr QFontComboBox, filters: QFlags[QFontComboBox_FontFilter]) {.header:headerFile, importcpp:"#.setFontFilters(@)".} # Public
proc fontFilters*(this: ptr QFontComboBox): QFlags[QFontComboBox_FontFilter] {.header:headerFile, importcpp:"#.fontFilters(@)".} # Public
import nimqt/qtgui/qfont
proc currentFont*(this: ptr QFontComboBox): QFont {.header:headerFile, importcpp:"#.currentFont(@)".} # Public
import nimqt/qtcore/qsize
proc sizeHint*(this: ptr QFontComboBox): QSize {.header:headerFile, importcpp:"#.sizeHint(@)".} # Public
proc setSampleTextForSystem*(this: ptr QFontComboBox, writingSystem: QFontDatabase_WritingSystem, sampleText: QString) {.header:headerFile, importcpp:"#.setSampleTextForSystem(@)".} # Public
proc sampleTextForSystem*(this: ptr QFontComboBox, writingSystem: QFontDatabase_WritingSystem): QString {.header:headerFile, importcpp:"#.sampleTextForSystem(@)".} # Public
proc setSampleTextForFont*(this: ptr QFontComboBox, fontFamily: QString, sampleText: QString) {.header:headerFile, importcpp:"#.setSampleTextForFont(@)".} # Public
proc sampleTextForFont*(this: ptr QFontComboBox, fontFamily: QString): QString {.header:headerFile, importcpp:"#.sampleTextForFont(@)".} # Public
proc setDisplayFont*(this: ptr QFontComboBox, fontFamily: QString, font: QFont) {.header:headerFile, importcpp:"#.setDisplayFont(@)".} # Public
proc setCurrentFont*(this: ptr QFontComboBox, f: QFont) {.header:headerFile, importcpp:"#.setCurrentFont(@)".} # Public
proc currentFontChanged*(this: ptr QFontComboBox, f: QFont) {.header:headerFile, importcpp:"#.currentFontChanged(@)".} # Public

# Protected methods methods for QFontComboBox
import nimqt/qtcore/qcoreevent
proc event*(this: ptr QFontComboBox, e: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Protected

export qfont
export qstring
export qsize
export qfontdatabase
export qcombobox
export qwidget
export qflags
export qpaintdevice
export qcoreevent
