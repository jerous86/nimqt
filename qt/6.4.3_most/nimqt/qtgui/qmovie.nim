const headerFile* = "QtGui/qmovie.h"

type
    # Enums found in the C++ code
    # Global
    QMovie_MovieState* {.header:headerFile,importcpp:"QMovie::MovieState".} = enum NotRunning = 0, Paused = 0x1, Running = 0x2
    QMovie_CacheMode* {.header:headerFile,importcpp:"QMovie::CacheMode".} = enum CacheNone = 0, CacheAll = 0x1

import nimqt/qtcore/qobject
type
    # Classes found in the C++ code
    QMovie* {.header:headerFile,importcpp:"QMovie" ,pure.} = object of QObject

# Stuff for class QMovie

# Public constructors for QMovie
# 1 default parameters!
proc newQMovie*(parent: ptr QObject): ptr QMovie {. header:headerFile, importcpp:"new QMovie(@)" .} #
proc newQMovie*(): ptr QMovie {. header:headerFile, importcpp:"new QMovie(@)" .} #
import nimqt/qtcore/qbytearray
import nimqt/qtcore/qiodevice
# 2 default parameters!
proc newQMovie*(device: ptr QIODevice, format: QByteArray, parent: ptr QObject): ptr QMovie {. header:headerFile, importcpp:"new QMovie(@)" .} #
proc newQMovie*(device: ptr QIODevice, format: QByteArray): ptr QMovie {. header:headerFile, importcpp:"new QMovie(@)" .} #
proc newQMovie*(device: ptr QIODevice): ptr QMovie {. header:headerFile, importcpp:"new QMovie(@)" .} #
import nimqt/qtcore/qstring
# 2 default parameters!
proc newQMovie*(fileName: QString, format: QByteArray, parent: ptr QObject): ptr QMovie {. header:headerFile, importcpp:"new QMovie(@)" .} #
proc newQMovie*(fileName: QString, format: QByteArray): ptr QMovie {. header:headerFile, importcpp:"new QMovie(@)" .} #
proc newQMovie*(fileName: QString): ptr QMovie {. header:headerFile, importcpp:"new QMovie(@)" .} #

# Public methods for QMovie
# 1 default parameters!
proc static_QMovie_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QMovie::tr(@)".} # Public static
proc static_QMovie_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QMovie::tr(@)".} # Public static
import nimqt/qtcore/qlist
proc static_QMovie_supportedFormats*(): QList[QByteArray] {.header:headerFile, importcpp:"QMovie::supportedFormats(@)".} # Public static
proc setDevice*(this: ptr QMovie, device: ptr QIODevice) {.header:headerFile, importcpp:"#.setDevice(@)".} # Public
proc device*(this: ptr QMovie): ptr QIODevice {.header:headerFile, importcpp:"#.device(@)".} # Public
proc setFileName*(this: ptr QMovie, fileName: QString) {.header:headerFile, importcpp:"#.setFileName(@)".} # Public
proc fileName*(this: ptr QMovie): QString {.header:headerFile, importcpp:"#.fileName(@)".} # Public
proc setFormat*(this: ptr QMovie, format: QByteArray) {.header:headerFile, importcpp:"#.setFormat(@)".} # Public
proc format*(this: ptr QMovie): QByteArray {.header:headerFile, importcpp:"#.format(@)".} # Public
import nimqt/qtgui/qcolor
proc setBackgroundColor*(this: ptr QMovie, color: QColor) {.header:headerFile, importcpp:"#.setBackgroundColor(@)".} # Public
proc backgroundColor*(this: ptr QMovie): QColor {.header:headerFile, importcpp:"#.backgroundColor(@)".} # Public
proc state*(this: ptr QMovie): QMovie_MovieState {.header:headerFile, importcpp:"#.state(@)".} # Public
import nimqt/qtcore/qrect
proc frameRect*(this: ptr QMovie): QRect {.header:headerFile, importcpp:"#.frameRect(@)".} # Public
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
import nimqt/qtcore/qproperty
proc bindableSpeed*(this: ptr QMovie): QBindable[cint] {.header:headerFile, importcpp:"#.bindableSpeed(@)".} # Public
import nimqt/qtcore/qsize
proc scaledSize*(this: ptr QMovie): QSize {.header:headerFile, importcpp:"#.scaledSize(@)".} # Public
proc setScaledSize*(this: ptr QMovie, size: QSize) {.header:headerFile, importcpp:"#.setScaledSize(@)".} # Public
proc cacheMode*(this: ptr QMovie): QMovie_CacheMode {.header:headerFile, importcpp:"#.cacheMode(@)".} # Public
proc setCacheMode*(this: ptr QMovie, mode: QMovie_CacheMode) {.header:headerFile, importcpp:"#.setCacheMode(@)".} # Public
proc bindableCacheMode*(this: ptr QMovie): QBindable[QMovie_CacheMode] {.header:headerFile, importcpp:"#.bindableCacheMode(@)".} # Public
proc started*(this: ptr QMovie) {.header:headerFile, importcpp:"#.started(@)".} # Public
proc resized*(this: ptr QMovie, size: QSize) {.header:headerFile, importcpp:"#.resized(@)".} # Public
proc updated*(this: ptr QMovie, rect: QRect) {.header:headerFile, importcpp:"#.updated(@)".} # Public
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
export qproperty
export qimagereader
export qsize
export qimage
export qbytearray
export qlist
export qrect
export qobject
export qiodevice
export qcolor
