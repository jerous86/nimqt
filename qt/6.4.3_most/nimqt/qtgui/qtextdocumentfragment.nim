const headerFile* = "QtGui/qtextdocumentfragment.h"

type
    # Classes found in the C++ code
    QTextDocumentFragment* {.header:headerFile,importcpp:"QTextDocumentFragment" ,pure,inheritable.} = object

# Stuff for class QTextDocumentFragment

# Public constructors for QTextDocumentFragment
proc newQTextDocumentFragment*(): QTextDocumentFragment {. header:headerFile, importcpp:"QTextDocumentFragment(@)", constructor .} #
import nimqt/qtgui/qtextdocument
proc newQTextDocumentFragment*(document: ptr QTextDocument): QTextDocumentFragment {. header:headerFile, importcpp:"QTextDocumentFragment(@)", constructor .} #
import nimqt/qtgui/qtextcursor
proc newQTextDocumentFragment*(range: QTextCursor): QTextDocumentFragment {. header:headerFile, importcpp:"QTextDocumentFragment(@)", constructor .} #
proc newQTextDocumentFragment*(rhs: QTextDocumentFragment): QTextDocumentFragment {. header:headerFile, importcpp:"QTextDocumentFragment(@)", constructor .} #

# Public methods for QTextDocumentFragment
proc isEmpty*(this: QTextDocumentFragment): bool {.header:headerFile, importcpp:"#.isEmpty(@)".} # Public
import nimqt/qtcore/qstring
proc toPlainText*(this: QTextDocumentFragment): QString {.header:headerFile, importcpp:"#.toPlainText(@)".} # Public
proc toRawText*(this: QTextDocumentFragment): QString {.header:headerFile, importcpp:"#.toRawText(@)".} # Public
proc toHtml*(this: QTextDocumentFragment): QString {.header:headerFile, importcpp:"#.toHtml(@)".} # Public
# 1 default parameters!
proc toMarkdown*(this: QTextDocumentFragment, features: QTextDocument_MarkdownFeatures): QString {.header:headerFile, importcpp:"#.toMarkdown(@)".} # Public
proc toMarkdown*(this: QTextDocumentFragment): QString {.header:headerFile, importcpp:"#.toMarkdown(@)".} # Public
proc static_QTextDocumentFragment_fromPlainText*(plainText: QString): QTextDocumentFragment {.header:headerFile, importcpp:"QTextDocumentFragment::fromPlainText(@)".} # Public static
# 1 default parameters!
proc static_QTextDocumentFragment_fromHtml*(html: QString, resourceProvider: ptr QTextDocument): QTextDocumentFragment {.header:headerFile, importcpp:"QTextDocumentFragment::fromHtml(@)".} # Public static
proc static_QTextDocumentFragment_fromHtml*(html: QString): QTextDocumentFragment {.header:headerFile, importcpp:"QTextDocumentFragment::fromHtml(@)".} # Public static
# 1 default parameters!
proc static_QTextDocumentFragment_fromMarkdown*(markdown: QString, features: QTextDocument_MarkdownFeatures): QTextDocumentFragment {.header:headerFile, importcpp:"QTextDocumentFragment::fromMarkdown(@)".} # Public static
proc static_QTextDocumentFragment_fromMarkdown*(markdown: QString): QTextDocumentFragment {.header:headerFile, importcpp:"QTextDocumentFragment::fromMarkdown(@)".} # Public static

export qstring
export qtextcursor
export qtextdocument
