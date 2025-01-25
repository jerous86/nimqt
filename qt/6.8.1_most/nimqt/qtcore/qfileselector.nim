const headerFile* = "QtCore/qfileselector.h"

import nimqt/qtcore/qobject
type
    # Classes found in the C++ code
    QFileSelector* {.header:headerFile,importcpp:"QFileSelector" ,pure.} = object of QObject

# Stuff for class QFileSelector

# Public constructors for QFileSelector
# 1 default parameters!
proc newQFileSelector*(parent: ptr QObject): ptr QFileSelector {. header:headerFile, importcpp:"new QFileSelector(@)" .} #
proc newQFileSelector*(): ptr QFileSelector {. header:headerFile, importcpp:"new QFileSelector(@)" .} #

# Public methods for QFileSelector
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QFileSelector_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QFileSelector::tr(@)".} # Public static
proc static_QFileSelector_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QFileSelector::tr(@)".} # Public static
proc select*(this: ptr QFileSelector, filePath: QString): QString {.header:headerFile, importcpp:"#.select(@)".} # Public
import nimqt/qtcore/qurl
proc select*(this: ptr QFileSelector, filePath: QUrl): QUrl {.header:headerFile, importcpp:"#.select(@)".} # Public
import nimqt/qtcore/qstringlist
proc extraSelectors*(this: ptr QFileSelector): QStringList {.header:headerFile, importcpp:"#.extraSelectors(@)".} # Public
proc setExtraSelectors*(this: ptr QFileSelector, list: QStringList) {.header:headerFile, importcpp:"#.setExtraSelectors(@)".} # Public
proc allSelectors*(this: ptr QFileSelector): QStringList {.header:headerFile, importcpp:"#.allSelectors(@)".} # Public

export qstringlist
export qurl
export qstring
export qobject
