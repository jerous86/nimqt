const headerFile* = "QtWidgets/qprogressbar.h"

type
    # Enums found in the C++ code
    # Global
    QProgressBar_Direction* {.header:headerFile,importcpp:"QProgressBar::Direction".} = enum TopToBottom = 0, BottomToTop = 0x1

import nimqt/qtwidgets/qwidget
type
    # Classes found in the C++ code
    QProgressBar* {.header:headerFile,importcpp:"QProgressBar" ,pure.} = object of QWidget
import nimqt/qtgui/qpaintdevice


type
    # typedefs found in the C++ code
    QProgressBar_RenderFlag * = QWidget_RenderFlag
    QProgressBar_RenderFlags * = QWidget_RenderFlags
    QProgressBar_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric

# Stuff for class QProgressBar

# Public constructors for QProgressBar
# 1 default parameters!
proc newQProgressBar*(parent: ptr QWidget): ptr QProgressBar {. header:headerFile, importcpp:"new QProgressBar(@)" .} #
proc newQProgressBar*(): ptr QProgressBar {. header:headerFile, importcpp:"new QProgressBar(@)" .} #

# Public methods for QProgressBar
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QProgressBar_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QProgressBar::tr(@)".} # Public static
proc static_QProgressBar_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QProgressBar::tr(@)".} # Public static
proc minimum*(this: ptr QProgressBar): cint {.header:headerFile, importcpp:"#.minimum(@)".} # Public
proc maximum*(this: ptr QProgressBar): cint {.header:headerFile, importcpp:"#.maximum(@)".} # Public
proc value*(this: ptr QProgressBar): cint {.header:headerFile, importcpp:"#.value(@)".} # Public
proc text*(this: ptr QProgressBar): QString {.header:headerFile, importcpp:"#.text(@)".} # Public
proc setTextVisible*(this: ptr QProgressBar, visible: bool) {.header:headerFile, importcpp:"#.setTextVisible(@)".} # Public
proc isTextVisible*(this: ptr QProgressBar): bool {.header:headerFile, importcpp:"#.isTextVisible(@)".} # Public
import nimqt/qtcore/qnamespace
proc alignment*(this: ptr QProgressBar): Qt_Alignment {.header:headerFile, importcpp:"#.alignment(@)".} # Public
proc setAlignment*(this: ptr QProgressBar, alignment: Qt_Alignment) {.header:headerFile, importcpp:"#.setAlignment(@)".} # Public
import nimqt/qtcore/qsize
proc sizeHint*(this: ptr QProgressBar): QSize {.header:headerFile, importcpp:"#.sizeHint(@)".} # Public
proc minimumSizeHint*(this: ptr QProgressBar): QSize {.header:headerFile, importcpp:"#.minimumSizeHint(@)".} # Public
proc orientation*(this: ptr QProgressBar): Qt_Orientation {.header:headerFile, importcpp:"#.orientation(@)".} # Public
proc setInvertedAppearance*(this: ptr QProgressBar, invert: bool) {.header:headerFile, importcpp:"#.setInvertedAppearance(@)".} # Public
proc invertedAppearance*(this: ptr QProgressBar): bool {.header:headerFile, importcpp:"#.invertedAppearance(@)".} # Public
proc setTextDirection*(this: ptr QProgressBar, textDirection: QProgressBar_Direction) {.header:headerFile, importcpp:"#.setTextDirection(@)".} # Public
proc textDirection*(this: ptr QProgressBar): QProgressBar_Direction {.header:headerFile, importcpp:"#.textDirection(@)".} # Public
proc setFormat*(this: ptr QProgressBar, format: QString) {.header:headerFile, importcpp:"#.setFormat(@)".} # Public
proc resetFormat*(this: ptr QProgressBar) {.header:headerFile, importcpp:"#.resetFormat(@)".} # Public
proc format*(this: ptr QProgressBar): QString {.header:headerFile, importcpp:"#.format(@)".} # Public
proc reset*(this: ptr QProgressBar) {.header:headerFile, importcpp:"#.reset(@)".} # Public
proc setRange*(this: ptr QProgressBar, minimum: cint, maximum: cint) {.header:headerFile, importcpp:"#.setRange(@)".} # Public
proc setMinimum*(this: ptr QProgressBar, minimum: cint) {.header:headerFile, importcpp:"#.setMinimum(@)".} # Public
proc setMaximum*(this: ptr QProgressBar, maximum: cint) {.header:headerFile, importcpp:"#.setMaximum(@)".} # Public
proc setValue*(this: ptr QProgressBar, value: cint) {.header:headerFile, importcpp:"#.setValue(@)".} # Public
proc setOrientation*(this: ptr QProgressBar, arg_0: Qt_Orientation) {.header:headerFile, importcpp:"#.setOrientation(@)".} # Public
proc valueChanged*(this: ptr QProgressBar, value: cint) {.header:headerFile, importcpp:"#.valueChanged(@)".} # Public

# Protected methods methods for QProgressBar
import nimqt/qtcore/qcoreevent
proc event*(this: ptr QProgressBar, e: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Protected
import nimqt/qtgui/qevent
proc paintEvent*(this: ptr QProgressBar, arg_0: ptr QPaintEvent) {.header:headerFile, importcpp:"#.paintEvent(@)".} # Protected

export qevent
export qstring
export qsize
export qnamespace
export qwidget
export qpaintdevice
export qcoreevent
