const headerFile* = "QtGui/qtextlist.h"

import nimqt/qtgui/qtextobject
type
    # Classes found in the C++ code
    QTextList* {.header:headerFile,importcpp:"QTextList" ,pure.} = object of QTextBlockGroup

# Stuff for class QTextList

# Public constructors for QTextList
import nimqt/qtgui/qtextdocument
proc newQTextList*(doc: ptr QTextDocument): ptr QTextList {. header:headerFile, importcpp:"new QTextList(@)" .} #

# Public methods for QTextList
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QTextList_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QTextList::tr(@)".} # Public static
proc static_QTextList_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QTextList::tr(@)".} # Public static
proc count*(this: ptr QTextList): cint {.header:headerFile, importcpp:"#.count(@)".} # Public
proc item*(this: ptr QTextList, i: cint): QTextBlock {.header:headerFile, importcpp:"#.item(@)".} # Public
proc itemNumber*(this: ptr QTextList, arg_0: QTextBlock): cint {.header:headerFile, importcpp:"#.itemNumber(@)".} # Public
proc itemText*(this: ptr QTextList, arg_1: QTextBlock): QString {.header:headerFile, importcpp:"#.itemText(@)".} # Public
proc removeItem*(this: ptr QTextList, i: cint) {.header:headerFile, importcpp:"#.removeItem(@)".} # Public
proc remove*(this: ptr QTextList, arg_0: QTextBlock) {.header:headerFile, importcpp:"#.remove(@)".} # Public
proc add*(this: ptr QTextList, `block`: QTextBlock) {.header:headerFile, importcpp:"#.add(@)".} # Public
import nimqt/qtgui/qtextformat
proc setFormat*(this: ptr QTextList, format: QTextListFormat) {.header:headerFile, importcpp:"#.setFormat(@)".} # Public
proc format*(this: ptr QTextList): QTextListFormat {.header:headerFile, importcpp:"#.format(@)".} # Public

export qtextformat
export qstring
export qtextobject
export qtextdocument
