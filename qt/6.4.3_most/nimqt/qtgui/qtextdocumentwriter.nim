const headerFile* = "QtGui/qtextdocumentwriter.h"

type
    # Classes found in the C++ code
    QTextDocumentWriter* {.header:headerFile,importcpp:"QTextDocumentWriter" ,pure,inheritable.} = object

# Stuff for class QTextDocumentWriter

# Public constructors for QTextDocumentWriter
proc newQTextDocumentWriter*(): QTextDocumentWriter {. header:headerFile, importcpp:"QTextDocumentWriter(@)", constructor .} #
import nimqt/qtcore/qbytearray
import nimqt/qtcore/qiodevice
proc newQTextDocumentWriter*(device: ptr QIODevice, format: QByteArray): QTextDocumentWriter {. header:headerFile, importcpp:"QTextDocumentWriter(@)", constructor .} #
import nimqt/qtcore/qstring
# 1 default parameters!
proc newQTextDocumentWriter*(fileName: QString, format: QByteArray): QTextDocumentWriter {. header:headerFile, importcpp:"QTextDocumentWriter(@)", constructor .} #
proc newQTextDocumentWriter*(fileName: QString): QTextDocumentWriter {. header:headerFile, importcpp:"QTextDocumentWriter(@)", constructor .} #

# Public methods for QTextDocumentWriter
proc setFormat*(this: QTextDocumentWriter, format: QByteArray) {.header:headerFile, importcpp:"#.setFormat(@)".} # Public
proc format*(this: QTextDocumentWriter): QByteArray {.header:headerFile, importcpp:"#.format(@)".} # Public
proc setDevice*(this: QTextDocumentWriter, device: ptr QIODevice) {.header:headerFile, importcpp:"#.setDevice(@)".} # Public
proc device*(this: QTextDocumentWriter): ptr QIODevice {.header:headerFile, importcpp:"#.device(@)".} # Public
proc setFileName*(this: QTextDocumentWriter, fileName: QString) {.header:headerFile, importcpp:"#.setFileName(@)".} # Public
proc fileName*(this: QTextDocumentWriter): QString {.header:headerFile, importcpp:"#.fileName(@)".} # Public
import nimqt/qtgui/qtextdocument
proc write*(this: QTextDocumentWriter, document: ptr QTextDocument): bool {.header:headerFile, importcpp:"#.write(@)".} # Public
import nimqt/qtgui/qtextdocumentfragment
proc write*(this: QTextDocumentWriter, fragment: QTextDocumentFragment): bool {.header:headerFile, importcpp:"#.write(@)".} # Public
import nimqt/qtcore/qlist
proc static_QTextDocumentWriter_supportedDocumentFormats*(): QList[QByteArray] {.header:headerFile, importcpp:"QTextDocumentWriter::supportedDocumentFormats(@)".} # Public static

export qstring
export qtextdocumentfragment
export qbytearray
export qlist
export qtextdocument
export qiodevice
