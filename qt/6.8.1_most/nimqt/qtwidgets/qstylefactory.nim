const headerFile* = "QtWidgets/qstylefactory.h"

type
    # Classes found in the C++ code
    QStyleFactory* {.header:headerFile,importcpp:"QStyleFactory" ,pure,inheritable.} = object

# Stuff for class QStyleFactory

# Public methods for QStyleFactory
import nimqt/qtcore/qstringlist
proc static_QStyleFactory_keys*(): QStringList {.header:headerFile, importcpp:"QStyleFactory::keys(@)".} # Public static
import nimqt/qtcore/qstring
import nimqt/qtwidgets/qstyle
proc static_QStyleFactory_create*(arg_1: QString): ptr QStyle {.header:headerFile, importcpp:"QStyleFactory::create(@)".} # Public static

export qstringlist
export qstring
export qstyle
