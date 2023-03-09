const headerFile* = "QtCore/qstringlist.h"

# Additional header code for qtcore/qstringlist
import nimqt/qstring

import nimqt/qtcore/qlist
# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}


type
    # Classes and enums found in the C++ code
    QStringList* {.header:headerFile,importcpp:"QStringList" ,pure.} = object of QList[QString]
{.push warning[Deprecated]: on.}


export qlist
# Additional code for qtcore/qstringlist
proc newQStringList*(): QStringList = QStringList()
# Making it a template for recursive module dependency reasons ...
template newQStringList*(xs:seq[string]): QStringList = 
    var ret:QStringList = newQStringList()
    for x in xs: ret.add x.newQString
    ret