const headerFile* = "QtWidgets/qfileiconprovider.h"

import nimqt/qtgui/qabstractfileiconprovider
# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}


type
    # Classes and enums found in the C++ code
    QFileIconProvider* {.header:headerFile,importcpp:"QFileIconProvider" ,pure.} = object of QAbstractFileIconProvider
{.push warning[Deprecated]: on.}


type
    # typedefs found in the C++ code
    QFileIconProvider_IconType * = QAbstractFileIconProvider_IconType
    QFileIconProvider_Option * = QAbstractFileIconProvider_Option
    QFileIconProvider_Options * = QAbstractFileIconProvider_Options

# Stuff for class QFileIconProvider

# Public constructors for QFileIconProvider
proc newQFileIconProvider*(): ptr QFileIconProvider {. header:headerFile, importcpp:"new QFileIconProvider(@)" .} #

# Public methods for QFileIconProvider
import nimqt/qtgui/qicon
proc icon*(this: ptr QFileIconProvider, `type`: QAbstractFileIconProvider_IconType): QIcon {.header:headerFile, importcpp:"#.icon(@)".} # Public

export qabstractfileiconprovider
export qicon