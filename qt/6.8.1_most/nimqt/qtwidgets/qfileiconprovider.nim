const headerFile* = "QtWidgets/qfileiconprovider.h"

import nimqt/qtgui/qabstractfileiconprovider
type
    # Classes found in the C++ code
    QFileIconProvider* {.header:headerFile,importcpp:"QFileIconProvider" ,pure.} = object of QAbstractFileIconProvider


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
import nimqt/qtcore/qfileinfo
proc icon*(this: ptr QFileIconProvider, info: QFileInfo): QIcon {.header:headerFile, importcpp:"#.icon(@)".} # Public

export qfileinfo
export qabstractfileiconprovider
export qicon
