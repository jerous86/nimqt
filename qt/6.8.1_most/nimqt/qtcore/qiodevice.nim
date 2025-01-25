const headerFile* = "QtCore/qiodevice.h"

import nimqt/qtcore/qiodevicebase
type
    # Classes found in the C++ code
    QIODevice* {.header:headerFile,importcpp:"QIODevice" ,pure.} = object of QIODeviceBase


type
    # typedefs found in the C++ code
    QIODevice_OpenModeFlag * = QIODeviceBase_OpenModeFlag
    QIODevice_OpenMode * = QIODeviceBase_OpenMode

# Stuff for class QIODevice

# Public constructors for QIODevice
proc newQIODevice*(): ptr QIODevice {. header:headerFile, importcpp:"new QIODevice(@)" .} #
import nimqt/qtcore/qobject
proc newQIODevice*(parent: ptr QObject): ptr QIODevice {. header:headerFile, importcpp:"new QIODevice(@)" .} #

# Public methods for QIODevice
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QIODevice_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QIODevice::tr(@)".} # Public static
proc static_QIODevice_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QIODevice::tr(@)".} # Public static
proc openMode*(this: ptr QIODevice): QIODeviceBase_OpenMode {.header:headerFile, importcpp:"#.openMode(@)".} # Public
proc setTextModeEnabled*(this: ptr QIODevice, enabled: bool) {.header:headerFile, importcpp:"#.setTextModeEnabled(@)".} # Public
proc isTextModeEnabled*(this: ptr QIODevice): bool {.header:headerFile, importcpp:"#.isTextModeEnabled(@)".} # Public
proc isOpen*(this: ptr QIODevice): bool {.header:headerFile, importcpp:"#.isOpen(@)".} # Public
proc isReadable*(this: ptr QIODevice): bool {.header:headerFile, importcpp:"#.isReadable(@)".} # Public
proc isWritable*(this: ptr QIODevice): bool {.header:headerFile, importcpp:"#.isWritable(@)".} # Public
proc isSequential*(this: ptr QIODevice): bool {.header:headerFile, importcpp:"#.isSequential(@)".} # Public
proc readChannelCount*(this: ptr QIODevice): cint {.header:headerFile, importcpp:"#.readChannelCount(@)".} # Public
proc writeChannelCount*(this: ptr QIODevice): cint {.header:headerFile, importcpp:"#.writeChannelCount(@)".} # Public
proc currentReadChannel*(this: ptr QIODevice): cint {.header:headerFile, importcpp:"#.currentReadChannel(@)".} # Public
proc setCurrentReadChannel*(this: ptr QIODevice, channel: cint) {.header:headerFile, importcpp:"#.setCurrentReadChannel(@)".} # Public
proc currentWriteChannel*(this: ptr QIODevice): cint {.header:headerFile, importcpp:"#.currentWriteChannel(@)".} # Public
proc setCurrentWriteChannel*(this: ptr QIODevice, channel: cint) {.header:headerFile, importcpp:"#.setCurrentWriteChannel(@)".} # Public
proc open*(this: ptr QIODevice, mode: QIODeviceBase_OpenMode): bool {.header:headerFile, importcpp:"#.open(@)".} # Public
proc close*(this: ptr QIODevice) {.header:headerFile, importcpp:"#.close(@)".} # Public
proc pos*(this: ptr QIODevice): clonglong {.header:headerFile, importcpp:"#.pos(@)".} # Public
proc size*(this: ptr QIODevice): clonglong {.header:headerFile, importcpp:"#.size(@)".} # Public
proc seek*(this: ptr QIODevice, pos: clonglong): bool {.header:headerFile, importcpp:"#.seek(@)".} # Public
proc atEnd*(this: ptr QIODevice): bool {.header:headerFile, importcpp:"#.atEnd(@)".} # Public
proc reset*(this: ptr QIODevice): bool {.header:headerFile, importcpp:"#.reset(@)".} # Public
proc bytesAvailable*(this: ptr QIODevice): clonglong {.header:headerFile, importcpp:"#.bytesAvailable(@)".} # Public
proc bytesToWrite*(this: ptr QIODevice): clonglong {.header:headerFile, importcpp:"#.bytesToWrite(@)".} # Public
proc read*(this: ptr QIODevice, data: ptr char, maxlen: clonglong): clonglong {.header:headerFile, importcpp:"#.read(@)".} # Public
import nimqt/qtcore/qbytearray
proc read*(this: ptr QIODevice, maxlen: clonglong): QByteArray {.header:headerFile, importcpp:"#.read(@)".} # Public
proc readAll*(this: ptr QIODevice): QByteArray {.header:headerFile, importcpp:"#.readAll(@)".} # Public
proc readLine*(this: ptr QIODevice, data: ptr char, maxlen: clonglong): clonglong {.header:headerFile, importcpp:"#.readLine(@)".} # Public
# 1 default parameters!
proc readLine*(this: ptr QIODevice, maxlen: clonglong): QByteArray {.header:headerFile, importcpp:"#.readLine(@)".} # Public
proc readLine*(this: ptr QIODevice): QByteArray {.header:headerFile, importcpp:"#.readLine(@)".} # Public
proc canReadLine*(this: ptr QIODevice): bool {.header:headerFile, importcpp:"#.canReadLine(@)".} # Public
proc startTransaction*(this: ptr QIODevice) {.header:headerFile, importcpp:"#.startTransaction(@)".} # Public
proc commitTransaction*(this: ptr QIODevice) {.header:headerFile, importcpp:"#.commitTransaction(@)".} # Public
proc rollbackTransaction*(this: ptr QIODevice) {.header:headerFile, importcpp:"#.rollbackTransaction(@)".} # Public
proc isTransactionStarted*(this: ptr QIODevice): bool {.header:headerFile, importcpp:"#.isTransactionStarted(@)".} # Public
proc write*(this: ptr QIODevice, data: ptr char, len: clonglong): clonglong {.header:headerFile, importcpp:"#.write(@)".} # Public
proc write*(this: ptr QIODevice, data: ptr char): clonglong {.header:headerFile, importcpp:"#.write(@)".} # Public
proc write*(this: ptr QIODevice, data: QByteArray): clonglong {.header:headerFile, importcpp:"#.write(@)".} # Public
proc peek*(this: ptr QIODevice, data: ptr char, maxlen: clonglong): clonglong {.header:headerFile, importcpp:"#.peek(@)".} # Public
proc peek*(this: ptr QIODevice, maxlen: clonglong): QByteArray {.header:headerFile, importcpp:"#.peek(@)".} # Public
proc skip*(this: ptr QIODevice, maxSize: clonglong): clonglong {.header:headerFile, importcpp:"#.skip(@)".} # Public
proc waitForReadyRead*(this: ptr QIODevice, msecs: cint): bool {.header:headerFile, importcpp:"#.waitForReadyRead(@)".} # Public
proc waitForBytesWritten*(this: ptr QIODevice, msecs: cint): bool {.header:headerFile, importcpp:"#.waitForBytesWritten(@)".} # Public
proc ungetChar*(this: ptr QIODevice, c: char) {.header:headerFile, importcpp:"#.ungetChar(@)".} # Public
proc putChar*(this: ptr QIODevice, c: char): bool {.header:headerFile, importcpp:"#.putChar(@)".} # Public
proc getChar*(this: ptr QIODevice, c: ptr char): bool {.header:headerFile, importcpp:"#.getChar(@)".} # Public
proc errorString*(this: ptr QIODevice): QString {.header:headerFile, importcpp:"#.errorString(@)".} # Public
proc readyRead*(this: ptr QIODevice) {.header:headerFile, importcpp:"#.readyRead(@)".} # Public
proc channelReadyRead*(this: ptr QIODevice, channel: cint) {.header:headerFile, importcpp:"#.channelReadyRead(@)".} # Public
proc bytesWritten*(this: ptr QIODevice, bytes: clonglong) {.header:headerFile, importcpp:"#.bytesWritten(@)".} # Public
proc channelBytesWritten*(this: ptr QIODevice, channel: cint, bytes: clonglong) {.header:headerFile, importcpp:"#.channelBytesWritten(@)".} # Public
proc aboutToClose*(this: ptr QIODevice) {.header:headerFile, importcpp:"#.aboutToClose(@)".} # Public
proc readChannelFinished*(this: ptr QIODevice) {.header:headerFile, importcpp:"#.readChannelFinished(@)".} # Public

# Protected methods methods for QIODevice
proc readData*(this: ptr QIODevice, data: ptr char, maxlen: clonglong): clonglong {.header:headerFile, importcpp:"#.readData(@)".} # Protected
proc readLineData*(this: ptr QIODevice, data: ptr char, maxlen: clonglong): clonglong {.header:headerFile, importcpp:"#.readLineData(@)".} # Protected
proc skipData*(this: ptr QIODevice, maxSize: clonglong): clonglong {.header:headerFile, importcpp:"#.skipData(@)".} # Protected
proc writeData*(this: ptr QIODevice, data: ptr char, len: clonglong): clonglong {.header:headerFile, importcpp:"#.writeData(@)".} # Protected
proc setOpenMode*(this: ptr QIODevice, openMode: QIODeviceBase_OpenMode) {.header:headerFile, importcpp:"#.setOpenMode(@)".} # Protected
proc setErrorString*(this: ptr QIODevice, errorString: QString) {.header:headerFile, importcpp:"#.setErrorString(@)".} # Protected

export qstring
export qiodevicebase
export qbytearray
export qobject
