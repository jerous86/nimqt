const headerFile* = "QtGui/qtextdocumentwriter.h"

# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}


type
    # Classes and enums found in the C++ code
    QTextDocumentWriter* {.header:headerFile,importcpp:"QTextDocumentWriter" ,pure.} = object {.inheritable.}
{.push warning[Deprecated]: on.}

# Stuff for class QTextDocumentWriter

# Public constructors for QTextDocumentWriter
proc newQTextDocumentWriter*(): QTextDocumentWriter {. header:headerFile, importcpp:"QTextDocumentWriter(@)", constructor .} #

# Public methods for QTextDocumentWriter
import nimqt/qtcore/qstring
proc setFileName*(this: QTextDocumentWriter, fileName: QString) {.header:headerFile, importcpp:"#.setFileName(@)".} # Public
proc fileName*(this: QTextDocumentWriter): QString {.header:headerFile, importcpp:"#.fileName(@)".} # Public
import nimqt/qtgui/qtextdocument
proc write*(this: QTextDocumentWriter, document: ptr QTextDocument): bool {.header:headerFile, importcpp:"#.write(@)".} # Public
import nimqt/qtgui/qtextdocumentfragment
proc write*(this: QTextDocumentWriter, fragment: QTextDocumentFragment): bool {.header:headerFile, importcpp:"#.write(@)".} # Public

export qstring
export qtextdocumentfragment
export qtextdocument