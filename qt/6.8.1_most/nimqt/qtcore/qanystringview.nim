const headerFile* = "QtCore/qanystringview.h"

type
    # Classes found in the C++ code
    QAnyStringView* {.header:headerFile,importcpp:"QAnyStringView" ,pure,inheritable.} = object

# Stuff for class QAnyStringView

# Public constructors for QAnyStringView
proc newQAnyStringView*(): QAnyStringView {. header:headerFile, importcpp:"QAnyStringView(@)", constructor .} #
import nimqt/qtcore/qbytearray
proc newQAnyStringView*(str: QByteArray): QAnyStringView {. header:headerFile, importcpp:"QAnyStringView(@)", constructor .} #
import nimqt/qtcore/qstring
proc newQAnyStringView*(str: QString): QAnyStringView {. header:headerFile, importcpp:"QAnyStringView(@)", constructor .} #
import nimqt/qtcore/qchar
proc newQAnyStringView*(c: QChar): QAnyStringView {. header:headerFile, importcpp:"QAnyStringView(@)", constructor .} #

# Public methods for QAnyStringView
proc toString*(this: QAnyStringView): QString {.header:headerFile, importcpp:"#.toString(@)".} # Public
proc size*(this: QAnyStringView): cint {.header:headerFile, importcpp:"#.size(@)".} # Public
proc data*(this: QAnyStringView): ptr  {.header:headerFile, importcpp:"#.data(@)".} # Public
import nimqt/qtcore/qnamespace
proc static_QAnyStringView_compare*(lhs: QAnyStringView, rhs: QAnyStringView, cs: Qt_CaseSensitivity): cint {.header:headerFile, importcpp:"QAnyStringView::compare(@)".} # Public static
proc static_QAnyStringView_equal*(lhs: QAnyStringView, rhs: QAnyStringView): bool {.header:headerFile, importcpp:"QAnyStringView::equal(@)".} # Public static
proc front*(this: QAnyStringView): QChar {.header:headerFile, importcpp:"#.front(@)".} # Public
proc back*(this: QAnyStringView): QChar {.header:headerFile, importcpp:"#.back(@)".} # Public
proc empty*(this: QAnyStringView): bool {.header:headerFile, importcpp:"#.empty(@)".} # Public
proc size_bytes*(this: QAnyStringView): cint {.header:headerFile, importcpp:"#.size_bytes(@)".} # Public
proc isNull*(this: QAnyStringView): bool {.header:headerFile, importcpp:"#.isNull(@)".} # Public
proc isEmpty*(this: QAnyStringView): bool {.header:headerFile, importcpp:"#.isEmpty(@)".} # Public
proc length*(this: QAnyStringView): cint {.header:headerFile, importcpp:"#.length(@)".} # Public

export qstring
export qnamespace
export qbytearray
export qchar

# Additional code for qtcore/qanystringview
converter toQAnyStringView*(x:QString): QAnyStringView = newQAnyStringView(x)
converter toQAnyStringView*(x:QByteArray): QAnyStringView = newQAnyStringView(x)
