const headerFile* = "QtGui/qsyntaxhighlighter.h"

import nimqt/qtcore/qobject
type
    # Classes found in the C++ code
    QSyntaxHighlighter* {.header:headerFile,importcpp:"QSyntaxHighlighter" ,pure.} = object of QObject

# Stuff for class QSyntaxHighlighter

# Public constructors for QSyntaxHighlighter
proc newQSyntaxHighlighter*(parent: ptr QObject): ptr QSyntaxHighlighter {. header:headerFile, importcpp:"new QSyntaxHighlighter(@)" .} #
import nimqt/qtgui/qtextdocument
proc newQSyntaxHighlighter*(parent: ptr QTextDocument): ptr QSyntaxHighlighter {. header:headerFile, importcpp:"new QSyntaxHighlighter(@)" .} #

# Public methods for QSyntaxHighlighter
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QSyntaxHighlighter_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QSyntaxHighlighter::tr(@)".} # Public static
proc static_QSyntaxHighlighter_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QSyntaxHighlighter::tr(@)".} # Public static
proc setDocument*(this: ptr QSyntaxHighlighter, doc: ptr QTextDocument) {.header:headerFile, importcpp:"#.setDocument(@)".} # Public
proc document*(this: ptr QSyntaxHighlighter): ptr QTextDocument {.header:headerFile, importcpp:"#.document(@)".} # Public
proc rehighlight*(this: ptr QSyntaxHighlighter) {.header:headerFile, importcpp:"#.rehighlight(@)".} # Public
import nimqt/qtgui/qtextobject
proc rehighlightBlock*(this: ptr QSyntaxHighlighter, `block`: QTextBlock) {.header:headerFile, importcpp:"#.rehighlightBlock(@)".} # Public

# Protected methods methods for QSyntaxHighlighter
proc highlightBlock*(this: ptr QSyntaxHighlighter, text: QString) {.header:headerFile, importcpp:"#.highlightBlock(@)".} # Protected
import nimqt/qtgui/qtextformat
proc setFormat*(this: ptr QSyntaxHighlighter, start: cint, count: cint, format: QTextCharFormat) {.header:headerFile, importcpp:"#.setFormat(@)".} # Protected
import nimqt/qtgui/qcolor
proc setFormat*(this: ptr QSyntaxHighlighter, start: cint, count: cint, color: QColor) {.header:headerFile, importcpp:"#.setFormat(@)".} # Protected
import nimqt/qtgui/qfont
proc setFormat*(this: ptr QSyntaxHighlighter, start: cint, count: cint, font: QFont) {.header:headerFile, importcpp:"#.setFormat(@)".} # Protected
proc format*(this: ptr QSyntaxHighlighter, pos: cint): QTextCharFormat {.header:headerFile, importcpp:"#.format(@)".} # Protected
proc previousBlockState*(this: ptr QSyntaxHighlighter): cint {.header:headerFile, importcpp:"#.previousBlockState(@)".} # Protected
proc currentBlockState*(this: ptr QSyntaxHighlighter): cint {.header:headerFile, importcpp:"#.currentBlockState(@)".} # Protected
proc setCurrentBlockState*(this: ptr QSyntaxHighlighter, newState: cint) {.header:headerFile, importcpp:"#.setCurrentBlockState(@)".} # Protected
proc setCurrentBlockUserData*(this: ptr QSyntaxHighlighter, data: ptr QTextBlockUserData) {.header:headerFile, importcpp:"#.setCurrentBlockUserData(@)".} # Protected
proc currentBlockUserData*(this: ptr QSyntaxHighlighter): ptr QTextBlockUserData {.header:headerFile, importcpp:"#.currentBlockUserData(@)".} # Protected
proc currentBlock*(this: ptr QSyntaxHighlighter): QTextBlock {.header:headerFile, importcpp:"#.currentBlock(@)".} # Protected

export qfont
export qtextformat
export qstring
export qtextobject
export qobject
export qtextdocument
export qcolor
