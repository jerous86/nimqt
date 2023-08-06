const headerFile* = "QtWidgets/qtooltip.h"

type
    # Classes found in the C++ code
    QToolTip* {.header:headerFile,importcpp:"QToolTip" ,pure,inheritable.} = object

# Stuff for class QToolTip

# Public methods for QToolTip
import nimqt/qtcore/qstring
import nimqt/qtcore/qpoint
import nimqt/qtwidgets/qwidget
import nimqt/qtcore/qrect
# 2 default parameters!
proc static_QToolTip_showText*(pos: QPoint, text: QString, w: ptr QWidget, rect: QRect, msecShowTime: cint) {.header:headerFile, importcpp:"QToolTip::showText(@)".} # Public static
proc static_QToolTip_showText*(pos: QPoint, text: QString, w: ptr QWidget, rect: QRect) {.header:headerFile, importcpp:"QToolTip::showText(@)".} # Public static
proc static_QToolTip_showText*(pos: QPoint, text: QString, w: ptr QWidget) {.header:headerFile, importcpp:"QToolTip::showText(@)".} # Public static
proc static_QToolTip_hideText*() {.header:headerFile, importcpp:"QToolTip::hideText(@)".} # Public static
proc static_QToolTip_isVisible*(): bool {.header:headerFile, importcpp:"QToolTip::isVisible(@)".} # Public static
proc static_QToolTip_text*(): QString {.header:headerFile, importcpp:"QToolTip::text(@)".} # Public static
import nimqt/qtgui/qpalette
proc static_QToolTip_palette*(): QPalette {.header:headerFile, importcpp:"QToolTip::palette(@)".} # Public static
proc static_QToolTip_setPalette*(arg_0: QPalette) {.header:headerFile, importcpp:"QToolTip::setPalette(@)".} # Public static
import nimqt/qtgui/qfont
proc static_QToolTip_font*(): QFont {.header:headerFile, importcpp:"QToolTip::font(@)".} # Public static
proc static_QToolTip_setFont*(arg_0: QFont) {.header:headerFile, importcpp:"QToolTip::setFont(@)".} # Public static

export qfont
export qstring
export qpoint
export qwidget
export qrect
export qpalette
