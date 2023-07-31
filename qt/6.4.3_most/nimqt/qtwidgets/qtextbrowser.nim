const headerFile* = "QtWidgets/qtextbrowser.h"

import nimqt/qtwidgets/qtextedit
type
    # Classes found in the C++ code
    QTextBrowser* {.header:headerFile,importcpp:"QTextBrowser" ,pure.} = object of QTextEdit
import nimqt/qtwidgets/qabstractscrollarea
import nimqt/qtwidgets/qframe
import nimqt/qtwidgets/qwidget
import nimqt/qtgui/qpaintdevice


type
    # typedefs found in the C++ code
    QTextBrowser_LineWrapMode * = QTextEdit_LineWrapMode
    QTextBrowser_AutoFormattingFlag * = QTextEdit_AutoFormattingFlag
    QTextBrowser_AutoFormatting * = QTextEdit_AutoFormatting
    QTextBrowser_SizeAdjustPolicy * = QAbstractScrollArea_SizeAdjustPolicy
    QTextBrowser_Shape * = QFrame_Shape
    QTextBrowser_Shadow * = QFrame_Shadow
    QTextBrowser_StyleMask * = QFrame_StyleMask
    QTextBrowser_RenderFlag * = QWidget_RenderFlag
    QTextBrowser_RenderFlags * = QWidget_RenderFlags
    QTextBrowser_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric

# Stuff for class QTextBrowser

# Public constructors for QTextBrowser
# 1 default parameters!
proc newQTextBrowser*(parent: ptr QWidget): ptr QTextBrowser {. header:headerFile, importcpp:"new QTextBrowser(@)" .} #
proc newQTextBrowser*(): ptr QTextBrowser {. header:headerFile, importcpp:"new QTextBrowser(@)" .} #

# Public methods for QTextBrowser
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QTextBrowser_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QTextBrowser::tr(@)".} # Public static
proc static_QTextBrowser_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QTextBrowser::tr(@)".} # Public static
import nimqt/qtcore/qurl
proc source*(this: ptr QTextBrowser): QUrl {.header:headerFile, importcpp:"#.source(@)".} # Public
import nimqt/qtgui/qtextdocument
proc sourceType*(this: ptr QTextBrowser): QTextDocument_ResourceType {.header:headerFile, importcpp:"#.sourceType(@)".} # Public
import nimqt/qtcore/qstringlist
proc searchPaths*(this: ptr QTextBrowser): QStringList {.header:headerFile, importcpp:"#.searchPaths(@)".} # Public
proc setSearchPaths*(this: ptr QTextBrowser, paths: QStringList) {.header:headerFile, importcpp:"#.setSearchPaths(@)".} # Public
import nimqt/qtcore/qvariant
proc loadResource*(this: ptr QTextBrowser, `type`: cint, name: QUrl): QVariant {.header:headerFile, importcpp:"#.loadResource(@)".} # Public
proc isBackwardAvailable*(this: ptr QTextBrowser): bool {.header:headerFile, importcpp:"#.isBackwardAvailable(@)".} # Public
proc isForwardAvailable*(this: ptr QTextBrowser): bool {.header:headerFile, importcpp:"#.isForwardAvailable(@)".} # Public
proc clearHistory*(this: ptr QTextBrowser) {.header:headerFile, importcpp:"#.clearHistory(@)".} # Public
proc historyTitle*(this: ptr QTextBrowser, arg_1: cint): QString {.header:headerFile, importcpp:"#.historyTitle(@)".} # Public
proc historyUrl*(this: ptr QTextBrowser, arg_1: cint): QUrl {.header:headerFile, importcpp:"#.historyUrl(@)".} # Public
proc backwardHistoryCount*(this: ptr QTextBrowser): cint {.header:headerFile, importcpp:"#.backwardHistoryCount(@)".} # Public
proc forwardHistoryCount*(this: ptr QTextBrowser): cint {.header:headerFile, importcpp:"#.forwardHistoryCount(@)".} # Public
proc openExternalLinks*(this: ptr QTextBrowser): bool {.header:headerFile, importcpp:"#.openExternalLinks(@)".} # Public
proc setOpenExternalLinks*(this: ptr QTextBrowser, open: bool) {.header:headerFile, importcpp:"#.setOpenExternalLinks(@)".} # Public
proc openLinks*(this: ptr QTextBrowser): bool {.header:headerFile, importcpp:"#.openLinks(@)".} # Public
proc setOpenLinks*(this: ptr QTextBrowser, open: bool) {.header:headerFile, importcpp:"#.setOpenLinks(@)".} # Public
proc setSource*(this: ptr QTextBrowser, name: QUrl, `type`: QTextDocument_ResourceType) {.header:headerFile, importcpp:"#.setSource(@)".} # Public
proc backward*(this: ptr QTextBrowser) {.header:headerFile, importcpp:"#.backward(@)".} # Public
proc forward*(this: ptr QTextBrowser) {.header:headerFile, importcpp:"#.forward(@)".} # Public
proc home*(this: ptr QTextBrowser) {.header:headerFile, importcpp:"#.home(@)".} # Public
proc reload*(this: ptr QTextBrowser) {.header:headerFile, importcpp:"#.reload(@)".} # Public
proc backwardAvailable*(this: ptr QTextBrowser, arg_0: bool) {.header:headerFile, importcpp:"#.backwardAvailable(@)".} # Public
proc forwardAvailable*(this: ptr QTextBrowser, arg_0: bool) {.header:headerFile, importcpp:"#.forwardAvailable(@)".} # Public
proc historyChanged*(this: ptr QTextBrowser) {.header:headerFile, importcpp:"#.historyChanged(@)".} # Public
proc sourceChanged*(this: ptr QTextBrowser, arg_0: QUrl) {.header:headerFile, importcpp:"#.sourceChanged(@)".} # Public
proc highlighted*(this: ptr QTextBrowser, arg_0: QUrl) {.header:headerFile, importcpp:"#.highlighted(@)".} # Public
proc anchorClicked*(this: ptr QTextBrowser, arg_0: QUrl) {.header:headerFile, importcpp:"#.anchorClicked(@)".} # Public

# Protected methods methods for QTextBrowser
import nimqt/qtcore/qcoreevent
proc event*(this: ptr QTextBrowser, e: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Protected
import nimqt/qtgui/qevent
proc keyPressEvent*(this: ptr QTextBrowser, ev: ptr QKeyEvent) {.header:headerFile, importcpp:"#.keyPressEvent(@)".} # Protected
proc mouseMoveEvent*(this: ptr QTextBrowser, ev: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mouseMoveEvent(@)".} # Protected
proc mousePressEvent*(this: ptr QTextBrowser, ev: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mousePressEvent(@)".} # Protected
proc mouseReleaseEvent*(this: ptr QTextBrowser, ev: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mouseReleaseEvent(@)".} # Protected
proc focusOutEvent*(this: ptr QTextBrowser, ev: ptr QFocusEvent) {.header:headerFile, importcpp:"#.focusOutEvent(@)".} # Protected
proc focusNextPrevChild*(this: ptr QTextBrowser, next: bool): bool {.header:headerFile, importcpp:"#.focusNextPrevChild(@)".} # Protected
proc paintEvent*(this: ptr QTextBrowser, e: ptr QPaintEvent) {.header:headerFile, importcpp:"#.paintEvent(@)".} # Protected
proc doSetSource*(this: ptr QTextBrowser, name: QUrl, `type`: QTextDocument_ResourceType) {.header:headerFile, importcpp:"#.doSetSource(@)".} # Protected

export qevent
export qstringlist
export qurl
export qstring
export qabstractscrollarea
export qtextedit
export qvariant
export qwidget
export qpaintdevice
export qcoreevent
export qtextdocument
export qframe
