const headerFile* = "QtWidgets/qcommandlinkbutton.h"

import nimqt/qtwidgets/qpushbutton
type
    # Classes found in the C++ code
    QCommandLinkButton* {.header:headerFile,importcpp:"QCommandLinkButton" ,pure.} = object of QPushButton
import nimqt/qtwidgets/qwidget
import nimqt/qtgui/qpaintdevice


type
    # typedefs found in the C++ code
    QCommandLinkButton_RenderFlag * = QWidget_RenderFlag
    QCommandLinkButton_RenderFlags * = QWidget_RenderFlags
    QCommandLinkButton_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric

# Stuff for class QCommandLinkButton

# Public constructors for QCommandLinkButton
# 1 default parameters!
proc newQCommandLinkButton*(parent: ptr QWidget): ptr QCommandLinkButton {. header:headerFile, importcpp:"new QCommandLinkButton(@)" .} #
proc newQCommandLinkButton*(): ptr QCommandLinkButton {. header:headerFile, importcpp:"new QCommandLinkButton(@)" .} #
import nimqt/qtcore/qstring
# 1 default parameters!
proc newQCommandLinkButton*(text: QString, parent: ptr QWidget): ptr QCommandLinkButton {. header:headerFile, importcpp:"new QCommandLinkButton(@)" .} #
proc newQCommandLinkButton*(text: QString): ptr QCommandLinkButton {. header:headerFile, importcpp:"new QCommandLinkButton(@)" .} #
# 1 default parameters!
proc newQCommandLinkButton*(text: QString, description: QString, parent: ptr QWidget): ptr QCommandLinkButton {. header:headerFile, importcpp:"new QCommandLinkButton(@)" .} #
proc newQCommandLinkButton*(text: QString, description: QString): ptr QCommandLinkButton {. header:headerFile, importcpp:"new QCommandLinkButton(@)" .} #

# Public methods for QCommandLinkButton
# 1 default parameters!
proc static_QCommandLinkButton_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QCommandLinkButton::tr(@)".} # Public static
proc static_QCommandLinkButton_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QCommandLinkButton::tr(@)".} # Public static
proc description*(this: ptr QCommandLinkButton): QString {.header:headerFile, importcpp:"#.description(@)".} # Public
proc setDescription*(this: ptr QCommandLinkButton, description: QString) {.header:headerFile, importcpp:"#.setDescription(@)".} # Public
import nimqt/qtcore/qsize
proc sizeHint*(this: ptr QCommandLinkButton): QSize {.header:headerFile, importcpp:"#.sizeHint(@)".} # Public
proc heightForWidth*(this: ptr QCommandLinkButton, arg_0: cint): cint {.header:headerFile, importcpp:"#.heightForWidth(@)".} # Public
proc minimumSizeHint*(this: ptr QCommandLinkButton): QSize {.header:headerFile, importcpp:"#.minimumSizeHint(@)".} # Public

# Protected methods methods for QCommandLinkButton
import nimqt/qtcore/qcoreevent
proc event*(this: ptr QCommandLinkButton, e: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Protected
import nimqt/qtgui/qevent
proc paintEvent*(this: ptr QCommandLinkButton, arg_0: ptr QPaintEvent) {.header:headerFile, importcpp:"#.paintEvent(@)".} # Protected

export qevent
export qpushbutton
export qstring
export qsize
export qwidget
export qpaintdevice
export qcoreevent
