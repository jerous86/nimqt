const headerFile* = "QtGui/qmovie.h"

import nimqt/qtcore/qobject
# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}


type
    # Classes and enums found in the C++ code
    # Global
    QMovie_MovieState* {.header:headerFile,importcpp:"QMovie::MovieState".} = enum NotRunning = 0, Paused = 0x1, Running = 0x2
    QMovie_CacheMode* {.header:headerFile,importcpp:"QMovie::CacheMode".} = enum CacheNone = 0, CacheAll = 0x1
    QMovie* {.header:headerFile,importcpp:"QMovie" ,pure.} = object of QObject
{.push warning[Deprecated]: on.}

# Stuff for class QMovie

# Public constructors for QMovie
# 1 default parameters!
proc newQMovie*(parent: ptr QObject): ptr QMovie {. header:headerFile, importcpp:"new QMovie(@)" .} #
proc newQMovie*(): ptr QMovie {. header:headerFile, importcpp:"new QMovie(@)" .} #

# Public methods for QMovie
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QMovie_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QMovie::tr(@)".} # Public static
proc static_QMovie_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QMovie::tr(@)".} # Public static
proc setFileName*(this: ptr QMovie, fileName: QString) {.header:headerFile, importcpp:"#.setFileName(@)".} # Public
proc fileName*(this: ptr QMovie): QString {.header:headerFile, importcpp:"#.fileName(@)".} # Public
import nimqt/qtgui/qcolor
proc setBackgroundColor*(this: ptr QMovie, color: QColor) {.header:headerFile, importcpp:"#.setBackgroundColor(@)".} # Public
proc backgroundColor*(this: ptr QMovie): QColor {.header:headerFile, importcpp:"#.backgroundColor(@)".} # Public
proc state*(this: ptr QMovie): QMovie_MovieState {.header:headerFile, importcpp:"#.state(@)".} # Public
import nimqt/qtgui/qimage
proc currentImage*(this: ptr QMovie): QImage {.header:headerFile, importcpp:"#.currentImage(@)".} # Public
import nimqt/qtgui/qpixmap
proc currentPixmap*(this: ptr QMovie): QPixmap {.header:headerFile, importcpp:"#.currentPixmap(@)".} # Public
proc isValid*(this: ptr QMovie): bool {.header:headerFile, importcpp:"#.isValid(@)".} # Public
import nimqt/qtgui/qimagereader
proc lastError*(this: ptr QMovie): QImageReader_ImageReaderError {.header:headerFile, importcpp:"#.lastError(@)".} # Public
proc lastErrorString*(this: ptr QMovie): QString {.header:headerFile, importcpp:"#.lastErrorString(@)".} # Public
proc jumpToFrame*(this: ptr QMovie, frameNumber: cint): bool {.header:headerFile, importcpp:"#.jumpToFrame(@)".} # Public
proc loopCount*(this: ptr QMovie): cint {.header:headerFile, importcpp:"#.loopCount(@)".} # Public
proc frameCount*(this: ptr QMovie): cint {.header:headerFile, importcpp:"#.frameCount(@)".} # Public
proc nextFrameDelay*(this: ptr QMovie): cint {.header:headerFile, importcpp:"#.nextFrameDelay(@)".} # Public
proc currentFrameNumber*(this: ptr QMovie): cint {.header:headerFile, importcpp:"#.currentFrameNumber(@)".} # Public
proc speed*(this: ptr QMovie): cint {.header:headerFile, importcpp:"#.speed(@)".} # Public
proc cacheMode*(this: ptr QMovie): QMovie_CacheMode {.header:headerFile, importcpp:"#.cacheMode(@)".} # Public
proc setCacheMode*(this: ptr QMovie, mode: QMovie_CacheMode) {.header:headerFile, importcpp:"#.setCacheMode(@)".} # Public
proc started*(this: ptr QMovie) {.header:headerFile, importcpp:"#.started(@)".} # Public
proc stateChanged*(this: ptr QMovie, state: QMovie_MovieState) {.header:headerFile, importcpp:"#.stateChanged(@)".} # Public
proc error*(this: ptr QMovie, error: QImageReader_ImageReaderError) {.header:headerFile, importcpp:"#.error(@)".} # Public
proc finished*(this: ptr QMovie) {.header:headerFile, importcpp:"#.finished(@)".} # Public
proc frameChanged*(this: ptr QMovie, frameNumber: cint) {.header:headerFile, importcpp:"#.frameChanged(@)".} # Public
proc start*(this: ptr QMovie) {.header:headerFile, importcpp:"#.start(@)".} # Public
proc jumpToNextFrame*(this: ptr QMovie): bool {.header:headerFile, importcpp:"#.jumpToNextFrame(@)".} # Public
proc setPaused*(this: ptr QMovie, paused: bool) {.header:headerFile, importcpp:"#.setPaused(@)".} # Public
proc stop*(this: ptr QMovie) {.header:headerFile, importcpp:"#.stop(@)".} # Public
proc setSpeed*(this: ptr QMovie, percentSpeed: cint) {.header:headerFile, importcpp:"#.setSpeed(@)".} # Public

export qpixmap
export qstring
export qimagereader
export qimage
export qobject
export qcolor