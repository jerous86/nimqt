const headerFile* = "QtGui/qbackingstore.h"

type
    # Classes found in the C++ code
    QBackingStore* {.header:headerFile,importcpp:"QBackingStore" ,pure,inheritable.} = object

# Stuff for class QBackingStore

# Public constructors for QBackingStore
import nimqt/qtgui/qwindow
proc newQBackingStore*(window: ptr QWindow): QBackingStore {. header:headerFile, importcpp:"QBackingStore(@)", constructor .} #

# Public methods for QBackingStore
proc window*(this: QBackingStore): ptr QWindow {.header:headerFile, importcpp:"#.window(@)".} # Public
import nimqt/qtgui/qpaintdevice
proc paintDevice*(this: QBackingStore): ptr QPaintDevice {.header:headerFile, importcpp:"#.paintDevice(@)".} # Public
import nimqt/qtcore/qpoint
import nimqt/qtgui/qregion
# 2 default parameters!
proc flush*(this: QBackingStore, region: QRegion, window: ptr QWindow, offset: QPoint) {.header:headerFile, importcpp:"#.flush(@)".} # Public
proc flush*(this: QBackingStore, region: QRegion, window: ptr QWindow) {.header:headerFile, importcpp:"#.flush(@)".} # Public
proc flush*(this: QBackingStore, region: QRegion) {.header:headerFile, importcpp:"#.flush(@)".} # Public
import nimqt/qtcore/qsize
proc resize*(this: QBackingStore, size: QSize) {.header:headerFile, importcpp:"#.resize(@)".} # Public
proc size*(this: QBackingStore): QSize {.header:headerFile, importcpp:"#.size(@)".} # Public
proc scroll*(this: QBackingStore, area: QRegion, dx: cint, dy: cint): bool {.header:headerFile, importcpp:"#.scroll(@)".} # Public
proc beginPaint*(this: QBackingStore, arg_0: QRegion) {.header:headerFile, importcpp:"#.beginPaint(@)".} # Public
proc endPaint*(this: QBackingStore) {.header:headerFile, importcpp:"#.endPaint(@)".} # Public
proc setStaticContents*(this: QBackingStore, region: QRegion) {.header:headerFile, importcpp:"#.setStaticContents(@)".} # Public
proc staticContents*(this: QBackingStore): QRegion {.header:headerFile, importcpp:"#.staticContents(@)".} # Public
proc hasStaticContents*(this: QBackingStore): bool {.header:headerFile, importcpp:"#.hasStaticContents(@)".} # Public

export qwindow
export qsize
export qpoint
export qregion
export qpaintdevice
