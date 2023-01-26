const headerFile* = "QtWidgets/qstylepainter.h"

import nimqt/qtgui/qpainter
# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}


type
    # Classes and enums found in the C++ code
    QStylePainter* {.header:headerFile,importcpp:"QStylePainter" ,pure.} = object of QPainter
{.push warning[Deprecated]: on.}


type
    # typedefs found in the C++ code
    QStylePainter_RenderHint * = QPainter_RenderHint
    QStylePainter_PixmapFragmentHint * = QPainter_PixmapFragmentHint
    QStylePainter_CompositionMode * = QPainter_CompositionMode
    QStylePainter_RenderHints * = QPainter_RenderHints
    QStylePainter_PixmapFragmentHints * = QPainter_PixmapFragmentHints

# Stuff for class QStylePainter

# Public constructors for QStylePainter
proc newQStylePainter*(): ptr QStylePainter {. header:headerFile, importcpp:"new QStylePainter(@)" .} #
import nimqt/qtwidgets/qwidget
proc newQStylePainter*(w: ptr QWidget): ptr QStylePainter {. header:headerFile, importcpp:"new QStylePainter(@)" .} #
import nimqt/qtgui/qpaintdevice
proc newQStylePainter*(pd: ptr QPaintDevice, w: ptr QWidget): ptr QStylePainter {. header:headerFile, importcpp:"new QStylePainter(@)" .} #

# Public methods for QStylePainter
proc begin*(this: ptr QStylePainter, w: ptr QWidget): bool {.header:headerFile, importcpp:"#.begin(@)".} # Public
proc begin*(this: ptr QStylePainter, pd: ptr QPaintDevice, w: ptr QWidget): bool {.header:headerFile, importcpp:"#.begin(@)".} # Public
import nimqt/qtwidgets/qstyle
proc style*(this: ptr QStylePainter): ptr QStyle {.header:headerFile, importcpp:"#.style(@)".} # Public

export qpainter
export qstyle
export qwidget
export qpaintdevice