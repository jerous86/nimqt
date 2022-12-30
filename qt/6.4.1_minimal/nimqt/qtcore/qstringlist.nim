const headerFile* = "QtCore/qstringlist.h"

# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}


type
    # Classes and enums found in the C++ code
    QStringList* {.header:headerFile,importcpp:"QStringList" ,pure.} = object {.inheritable.}
{.push warning[Deprecated]: on.}


# Additional code for qtcore/qstringlist
# func len*(list: QStringList): int = list.size
# iterator items*(list: QStringList): QString =
#     for i in 0..<list.len: yield list.at(i.cint)
