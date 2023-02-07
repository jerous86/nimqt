const headerFile* = "QtGui/qabstractfileiconprovider.h"

# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}


type
    # Classes and enums found in the C++ code
    # Global
    QAbstractFileIconProvider_IconType* {.header:headerFile,importcpp:"QAbstractFileIconProvider::IconType".} = enum Computer = 0, Desktop = 0x1, Trashcan = 0x2, Network = 0x3, 
        Drive = 0x4, Folder = 0x5, File = 0x6
    QAbstractFileIconProvider_Option* {.header:headerFile,importcpp:"QAbstractFileIconProvider::Option".} = enum DontUseCustomDirectoryIcons = 0x1
    QAbstractFileIconProvider* {.header:headerFile,importcpp:"QAbstractFileIconProvider" ,pure.} = object {.inheritable.}
{.push warning[Deprecated]: on.}
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
proc setOptions*(this: ptr QAbstractFileIconProvider, arg_0: QFlags[QAbstractFileIconProvider_Option]) {.header:headerFile, importcpp:"#.setOptions(@)".} # Public
proc options*(this: ptr QAbstractFileIconProvider): QFlags[QAbstractFileIconProvider_Option] {.header:headerFile, importcpp:"#.options(@)".} # Public

export qflags
export qicon