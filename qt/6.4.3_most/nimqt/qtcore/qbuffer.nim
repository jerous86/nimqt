const headerFile* = "QtCore/qbuffer.h"

import nimqt/qtcore/qiodevice
type
    # Classes found in the C++ code
    QBuffer* {.header:headerFile,importcpp:"QBuffer" ,pure.} = object of QIODevice
import nimqt/qtcore/qiodevicebase


type
    # typedefs found in the C++ code
    QBuffer_OpenModeFlag * = QIODeviceBase_OpenModeFlag
    QBuffer_OpenMode * = QIODeviceBase_OpenMode

# Stuff for class QBuffer

# Public constructors for QBuffer
import nimqt/qtcore/qobject
# 1 default parameters!
proc newQBuffer*(parent: ptr QObject): ptr QBuffer {. header:headerFile, importcpp:"new QBuffer(@)" .} #
proc newQBuffer*(): ptr QBuffer {. header:headerFile, importcpp:"new QBuffer(@)" .} #
import nimqt/qtcore/qbytearray
# 1 default parameters!
proc newQBuffer*(buf: ptr QByteArray, parent: ptr QObject): ptr QBuffer {. header:headerFile, importcpp:"new QBuffer(@)" .} #
proc newQBuffer*(buf: ptr QByteArray): ptr QBuffer {. header:headerFile, importcpp:"new QBuffer(@)" .} #

# Public methods for QBuffer
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QBuffer_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QBuffer::tr(@)".} # Public static
proc static_QBuffer_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QBuffer::tr(@)".} # Public static
proc buffer*(this: ptr QBuffer): QByteArray {.header:headerFile, importcpp:"#.buffer(@)".} # Public
proc setBuffer*(this: ptr QBuffer, a: ptr QByteArray) {.header:headerFile, importcpp:"#.setBuffer(@)".} # Public
proc setData*(this: ptr QBuffer, data: QByteArray) {.header:headerFile, importcpp:"#.setData(@)".} # Public
proc setData*(this: ptr QBuffer, data: ptr char, len: cint) {.header:headerFile, importcpp:"#.setData(@)".} # Public
proc data*(this: ptr QBuffer): QByteArray {.header:headerFile, importcpp:"#.data(@)".} # Public
proc open*(this: ptr QBuffer, openMode: QIODeviceBase_OpenMode): bool {.header:headerFile, importcpp:"#.open(@)".} # Public
proc close*(this: ptr QBuffer) {.header:headerFile, importcpp:"#.close(@)".} # Public
proc size*(this: ptr QBuffer): clonglong {.header:headerFile, importcpp:"#.size(@)".} # Public
proc pos*(this: ptr QBuffer): clonglong {.header:headerFile, importcpp:"#.pos(@)".} # Public
proc seek*(this: ptr QBuffer, off: clonglong): bool {.header:headerFile, importcpp:"#.seek(@)".} # Public
proc atEnd*(this: ptr QBuffer): bool {.header:headerFile, importcpp:"#.atEnd(@)".} # Public
proc canReadLine*(this: ptr QBuffer): bool {.header:headerFile, importcpp:"#.canReadLine(@)".} # Public

# Protected methods methods for QBuffer
proc readData*(this: ptr QBuffer, data: ptr char, maxlen: clonglong): clonglong {.header:headerFile, importcpp:"#.readData(@)".} # Protected
proc writeData*(this: ptr QBuffer, data: ptr char, len: clonglong): clonglong {.header:headerFile, importcpp:"#.writeData(@)".} # Protected

export qstring
export qiodevicebase
export qbytearray
export qobject
export qiodevice
