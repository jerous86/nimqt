const headerFile* = "QtWidgets/qstylefactory.h"

# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}


type
    # Classes and enums found in the C++ code
    QStyleFactory* {.header:headerFile,importcpp:"QStyleFactory" ,pure.} = object {.inheritable.}
{.push warning[Deprecated]: on.}

# Stuff for class QStyleFactory

# Public methods for QStyleFactory
import nimqt/qtcore/qstring
import nimqt/qtwidgets/qstyle
proc static_QStyleFactory_create*(arg_1: QString): ptr QStyle {.header:headerFile, importcpp:"QStyleFactory::create(@)".} # Public static

export qstring
export qstyle