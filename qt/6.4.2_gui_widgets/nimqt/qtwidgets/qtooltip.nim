const headerFile* = "QtWidgets/qtooltip.h"

# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}


type
    # Classes and enums found in the C++ code
    QToolTip* {.header:headerFile,importcpp:"QToolTip" ,pure.} = object {.inheritable.}
{.push warning[Deprecated]: on.}

# Stuff for class QToolTip

# Public methods for QToolTip
proc static_QToolTip_hideText*() {.header:headerFile, importcpp:"QToolTip::hideText(@)".} # Public static
proc static_QToolTip_isVisible*(): bool {.header:headerFile, importcpp:"QToolTip::isVisible(@)".} # Public static
import nimqt/qtcore/qstring
proc static_QToolTip_text*(): QString {.header:headerFile, importcpp:"QToolTip::text(@)".} # Public static
import nimqt/qtgui/qpalette
proc static_QToolTip_palette*(): QPalette {.header:headerFile, importcpp:"QToolTip::palette(@)".} # Public static
proc static_QToolTip_setPalette*(arg_0: QPalette) {.header:headerFile, importcpp:"QToolTip::setPalette(@)".} # Public static
import nimqt/qtgui/qfont
proc static_QToolTip_font*(): QFont {.header:headerFile, importcpp:"QToolTip::font(@)".} # Public static
proc static_QToolTip_setFont*(arg_0: QFont) {.header:headerFile, importcpp:"QToolTip::setFont(@)".} # Public static

export qfont
export qstring
export qpalette