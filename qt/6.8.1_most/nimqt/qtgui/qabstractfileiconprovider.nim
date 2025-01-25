const headerFile* = "QtGui/qabstractfileiconprovider.h"

type
    # Enums found in the C++ code
    # Global
    QAbstractFileIconProvider_IconType* {.header:headerFile,importcpp:"QAbstractFileIconProvider::IconType".} = enum Computer = 0, Desktop = 0x1, Trashcan = 0x2, Network = 0x3, 
        Drive = 0x4, Folder = 0x5, File = 0x6
    QAbstractFileIconProvider_Option* {.header:headerFile,importcpp:"QAbstractFileIconProvider::Option".} = enum DontUseCustomDirectoryIcons = 0x1

type
    # Classes found in the C++ code
    QAbstractFileIconProvider* {.header:headerFile,importcpp:"QAbstractFileIconProvider" ,pure,inheritable.} = object
import nimqt/qtcore/qflags


type
    # typedefs found in the C++ code
    QAbstractFileIconProvider_Options * = QFlags[QAbstractFileIconProvider_Option]

# Stuff for class QAbstractFileIconProvider

# Public constructors for QAbstractFileIconProvider
proc newQAbstractFileIconProvider*(): ptr QAbstractFileIconProvider {. header:headerFile, importcpp:"new QAbstractFileIconProvider(@)" .} #

# Public methods for QAbstractFileIconProvider
import nimqt/qtgui/qicon
proc icon*(this: ptr QAbstractFileIconProvider, arg_1: QAbstractFileIconProvider_IconType): QIcon {.header:headerFile, importcpp:"#.icon(@)".} # Public
import nimqt/qtcore/qfileinfo
proc icon*(this: ptr QAbstractFileIconProvider, arg_1: QFileInfo): QIcon {.header:headerFile, importcpp:"#.icon(@)".} # Public
import nimqt/qtcore/qstring
proc `type`*(this: ptr QAbstractFileIconProvider, arg_1: QFileInfo): QString {.header:headerFile, importcpp:"#.type(@)".} # Public
proc setOptions*(this: ptr QAbstractFileIconProvider, arg_0: QFlags[QAbstractFileIconProvider_Option]) {.header:headerFile, importcpp:"#.setOptions(@)".} # Public
proc options*(this: ptr QAbstractFileIconProvider): QFlags[QAbstractFileIconProvider_Option] {.header:headerFile, importcpp:"#.options(@)".} # Public

export qstring
export qfileinfo
export qflags
export qicon
