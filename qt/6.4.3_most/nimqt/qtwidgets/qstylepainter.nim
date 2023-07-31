const headerFile* = "QtWidgets/qstylepainter.h"

import nimqt/qtgui/qpainter
type
    # Classes found in the C++ code
    QStylePainter* {.header:headerFile,importcpp:"QStylePainter" ,pure.} = object of QPainter


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
import nimqt/qtcore/qstring
import nimqt/qtcore/qrect
import nimqt/qtgui/qpalette
proc drawItemText*(this: ptr QStylePainter, r: QRect, flags: cint, pal: QPalette, enabled: bool, text: QString, textRole: QPalette_ColorRole) {.header:headerFile, importcpp:"#.drawItemText(@)".} # Public
import nimqt/qtgui/qpixmap
proc drawItemPixmap*(this: ptr QStylePainter, r: QRect, flags: cint, pixmap: QPixmap) {.header:headerFile, importcpp:"#.drawItemPixmap(@)".} # Public
import nimqt/qtwidgets/qstyle
proc style*(this: ptr QStylePainter): ptr QStyle {.header:headerFile, importcpp:"#.style(@)".} # Public

export qpixmap
export qstring
export qpainter
export qstyle
export qwidget
export qrect
export qpaintdevice
export qpalette
