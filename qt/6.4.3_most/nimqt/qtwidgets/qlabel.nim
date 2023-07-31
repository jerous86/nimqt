const headerFile* = "QtWidgets/qlabel.h"

import nimqt/qtwidgets/qframe
type
    # Classes found in the C++ code
    QLabel* {.header:headerFile,importcpp:"QLabel" ,pure.} = object of QFrame
import nimqt/qtwidgets/qwidget
import nimqt/qtgui/qpaintdevice


type
    # typedefs found in the C++ code
    QLabel_Shape * = QFrame_Shape
    QLabel_Shadow * = QFrame_Shadow
    QLabel_StyleMask * = QFrame_StyleMask
    QLabel_RenderFlag * = QWidget_RenderFlag
    QLabel_RenderFlags * = QWidget_RenderFlags
    QLabel_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric

# Stuff for class QLabel

# Public constructors for QLabel
import nimqt/qtcore/qnamespace
# 2 default parameters!
proc newQLabel*(parent: ptr QWidget, f: Qt_WindowFlags): ptr QLabel {. header:headerFile, importcpp:"new QLabel(@)" .} #
proc newQLabel*(parent: ptr QWidget): ptr QLabel {. header:headerFile, importcpp:"new QLabel(@)" .} #
proc newQLabel*(): ptr QLabel {. header:headerFile, importcpp:"new QLabel(@)" .} #
import nimqt/qtcore/qstring
# 2 default parameters!
proc newQLabel*(text: QString, parent: ptr QWidget, f: Qt_WindowFlags): ptr QLabel {. header:headerFile, importcpp:"new QLabel(@)" .} #
proc newQLabel*(text: QString, parent: ptr QWidget): ptr QLabel {. header:headerFile, importcpp:"new QLabel(@)" .} #
proc newQLabel*(text: QString): ptr QLabel {. header:headerFile, importcpp:"new QLabel(@)" .} #

# Public methods for QLabel
# 1 default parameters!
proc static_QLabel_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QLabel::tr(@)".} # Public static
proc static_QLabel_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QLabel::tr(@)".} # Public static
proc text*(this: ptr QLabel): QString {.header:headerFile, importcpp:"#.text(@)".} # Public
import nimqt/qtgui/qpixmap
proc pixmap*(this: ptr QLabel, arg_1: Qt_ReturnByValueConstant): QPixmap {.header:headerFile, importcpp:"#.pixmap(@)".} # Public
proc pixmap*(this: ptr QLabel): QPixmap {.header:headerFile, importcpp:"#.pixmap(@)".} # Public
import nimqt/qtgui/qpicture
proc picture*(this: ptr QLabel, arg_1: Qt_ReturnByValueConstant): QPicture {.header:headerFile, importcpp:"#.picture(@)".} # Public
proc picture*(this: ptr QLabel): QPicture {.header:headerFile, importcpp:"#.picture(@)".} # Public
import nimqt/qtgui/qmovie
proc movie*(this: ptr QLabel): ptr QMovie {.header:headerFile, importcpp:"#.movie(@)".} # Public
proc textFormat*(this: ptr QLabel): Qt_TextFormat {.header:headerFile, importcpp:"#.textFormat(@)".} # Public
proc setTextFormat*(this: ptr QLabel, arg_0: Qt_TextFormat) {.header:headerFile, importcpp:"#.setTextFormat(@)".} # Public
proc alignment*(this: ptr QLabel): Qt_Alignment {.header:headerFile, importcpp:"#.alignment(@)".} # Public
proc setAlignment*(this: ptr QLabel, arg_0: Qt_Alignment) {.header:headerFile, importcpp:"#.setAlignment(@)".} # Public
proc setWordWrap*(this: ptr QLabel, on: bool) {.header:headerFile, importcpp:"#.setWordWrap(@)".} # Public
proc wordWrap*(this: ptr QLabel): bool {.header:headerFile, importcpp:"#.wordWrap(@)".} # Public
proc indent*(this: ptr QLabel): cint {.header:headerFile, importcpp:"#.indent(@)".} # Public
proc setIndent*(this: ptr QLabel, arg_0: cint) {.header:headerFile, importcpp:"#.setIndent(@)".} # Public
proc margin*(this: ptr QLabel): cint {.header:headerFile, importcpp:"#.margin(@)".} # Public
proc setMargin*(this: ptr QLabel, arg_0: cint) {.header:headerFile, importcpp:"#.setMargin(@)".} # Public
proc hasScaledContents*(this: ptr QLabel): bool {.header:headerFile, importcpp:"#.hasScaledContents(@)".} # Public
proc setScaledContents*(this: ptr QLabel, arg_0: bool) {.header:headerFile, importcpp:"#.setScaledContents(@)".} # Public
import nimqt/qtcore/qsize
proc sizeHint*(this: ptr QLabel): QSize {.header:headerFile, importcpp:"#.sizeHint(@)".} # Public
proc minimumSizeHint*(this: ptr QLabel): QSize {.header:headerFile, importcpp:"#.minimumSizeHint(@)".} # Public
proc setBuddy*(this: ptr QLabel, arg_0: ptr QWidget) {.header:headerFile, importcpp:"#.setBuddy(@)".} # Public
proc buddy*(this: ptr QLabel): ptr QWidget {.header:headerFile, importcpp:"#.buddy(@)".} # Public
proc heightForWidth*(this: ptr QLabel, arg_0: cint): cint {.header:headerFile, importcpp:"#.heightForWidth(@)".} # Public
proc openExternalLinks*(this: ptr QLabel): bool {.header:headerFile, importcpp:"#.openExternalLinks(@)".} # Public
proc setOpenExternalLinks*(this: ptr QLabel, open: bool) {.header:headerFile, importcpp:"#.setOpenExternalLinks(@)".} # Public
proc setTextInteractionFlags*(this: ptr QLabel, flags: Qt_TextInteractionFlags) {.header:headerFile, importcpp:"#.setTextInteractionFlags(@)".} # Public
proc textInteractionFlags*(this: ptr QLabel): Qt_TextInteractionFlags {.header:headerFile, importcpp:"#.textInteractionFlags(@)".} # Public
proc setSelection*(this: ptr QLabel, arg_0: cint, arg_1: cint) {.header:headerFile, importcpp:"#.setSelection(@)".} # Public
proc hasSelectedText*(this: ptr QLabel): bool {.header:headerFile, importcpp:"#.hasSelectedText(@)".} # Public
proc selectedText*(this: ptr QLabel): QString {.header:headerFile, importcpp:"#.selectedText(@)".} # Public
proc selectionStart*(this: ptr QLabel): cint {.header:headerFile, importcpp:"#.selectionStart(@)".} # Public
proc setText*(this: ptr QLabel, arg_0: QString) {.header:headerFile, importcpp:"#.setText(@)".} # Public
proc setPixmap*(this: ptr QLabel, arg_0: QPixmap) {.header:headerFile, importcpp:"#.setPixmap(@)".} # Public
proc setPicture*(this: ptr QLabel, arg_0: QPicture) {.header:headerFile, importcpp:"#.setPicture(@)".} # Public
proc setMovie*(this: ptr QLabel, movie: ptr QMovie) {.header:headerFile, importcpp:"#.setMovie(@)".} # Public
proc setNum*(this: ptr QLabel, arg_0: cint) {.header:headerFile, importcpp:"#.setNum(@)".} # Public
proc setNum*(this: ptr QLabel, arg_0: cdouble) {.header:headerFile, importcpp:"#.setNum(@)".} # Public
proc clear*(this: ptr QLabel) {.header:headerFile, importcpp:"#.clear(@)".} # Public
proc linkActivated*(this: ptr QLabel, link: QString) {.header:headerFile, importcpp:"#.linkActivated(@)".} # Public
proc linkHovered*(this: ptr QLabel, link: QString) {.header:headerFile, importcpp:"#.linkHovered(@)".} # Public

# Protected methods methods for QLabel
import nimqt/qtcore/qcoreevent
proc event*(this: ptr QLabel, e: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Protected
import nimqt/qtgui/qevent
proc keyPressEvent*(this: ptr QLabel, ev: ptr QKeyEvent) {.header:headerFile, importcpp:"#.keyPressEvent(@)".} # Protected
proc paintEvent*(this: ptr QLabel, arg_0: ptr QPaintEvent) {.header:headerFile, importcpp:"#.paintEvent(@)".} # Protected
proc changeEvent*(this: ptr QLabel, arg_0: ptr QEvent) {.header:headerFile, importcpp:"#.changeEvent(@)".} # Protected
proc mousePressEvent*(this: ptr QLabel, ev: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mousePressEvent(@)".} # Protected
proc mouseMoveEvent*(this: ptr QLabel, ev: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mouseMoveEvent(@)".} # Protected
proc mouseReleaseEvent*(this: ptr QLabel, ev: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mouseReleaseEvent(@)".} # Protected
proc contextMenuEvent*(this: ptr QLabel, ev: ptr QContextMenuEvent) {.header:headerFile, importcpp:"#.contextMenuEvent(@)".} # Protected
proc focusInEvent*(this: ptr QLabel, ev: ptr QFocusEvent) {.header:headerFile, importcpp:"#.focusInEvent(@)".} # Protected
proc focusOutEvent*(this: ptr QLabel, ev: ptr QFocusEvent) {.header:headerFile, importcpp:"#.focusOutEvent(@)".} # Protected
proc focusNextPrevChild*(this: ptr QLabel, next: bool): bool {.header:headerFile, importcpp:"#.focusNextPrevChild(@)".} # Protected

export qevent
export qpixmap
export qmovie
export qstring
export qsize
export qpicture
export qnamespace
export qwidget
export qpaintdevice
export qcoreevent
export qframe
