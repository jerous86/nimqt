const headerFile* = "QtCore/qstringlist.h"

# Additional header code for (component: "qtcore", module: "qstringlist")
import nimqt/qstring

import nimqt/qtcore/qlist
type
    # Classes found in the C++ code
    QStringList* {.header:headerFile,importcpp:"QStringList" ,pure.} = object of QList[QString]


export qlist

# Additional code for qtcore/qstringlist
proc newQStringList*(): QStringList = QStringList()
# Making it a template for recursive module dependency reasons ...
template newQStringList*(xs:seq[string]): QStringList = 
    var ret:QStringList = newQStringList()
    for x in xs: ret.add x.newQString
    ret
