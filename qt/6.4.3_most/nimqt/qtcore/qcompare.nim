const headerFile* = "QtCore/qcompare.h"

# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}
when (NimMajor, NimMinor, NimPatch) < (1, 9, 0):
    type
        # Classes found in the C++ code
        QPartialOrdering* {.header:headerFile,importcpp:"QPartialOrdering" ,pure.} = object {.inheritable.}
elif (NimMajor, NimMinor, NimPatch) >= (1, 9, 0):
    type
        # Classes found in the C++ code
        QPartialOrdering* {.header:headerFile,importcpp:"QPartialOrdering" ,pure,inheritable.} = object
{.push warning[Deprecated]: on.}

