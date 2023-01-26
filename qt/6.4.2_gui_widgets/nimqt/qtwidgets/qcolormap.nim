const headerFile* = "QtWidgets/qcolormap.h"

# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}


type
    # Classes and enums found in the C++ code
    # Global
    QColormap_Mode* {.header:headerFile,importcpp:"QColormap::Mode".} = enum Direct = 0, Indexed = 0x1, Gray = 0x2
    QColormap* {.header:headerFile,importcpp:"QColormap" ,pure.} = object {.inheritable.}
{.push warning[Deprecated]: on.}

# Stuff for class QColormap

# Public constructors for QColormap
proc newQColormap*(colormap: QColormap): QColormap {. header:headerFile, importcpp:"QColormap(@)", constructor .} #

# Public methods for QColormap
proc static_QColormap_initialize*() {.header:headerFile, importcpp:"QColormap::initialize(@)".} # Public static
proc static_QColormap_cleanup*() {.header:headerFile, importcpp:"QColormap::cleanup(@)".} # Public static
proc static_QColormap_instance*(screen: cint): QColormap {.header:headerFile, importcpp:"QColormap::instance(@)".} # Public static
proc mode*(this: QColormap): QColormap_Mode {.header:headerFile, importcpp:"#.mode(@)".} # Public
proc depth*(this: QColormap): cint {.header:headerFile, importcpp:"#.depth(@)".} # Public
proc size*(this: QColormap): cint {.header:headerFile, importcpp:"#.size(@)".} # Public
import nimqt/qtgui/qcolor
proc pixel*(this: QColormap, color: QColor): cuint {.header:headerFile, importcpp:"#.pixel(@)".} # Public
proc colorAt*(this: QColormap, pixel: cuint): QColor {.header:headerFile, importcpp:"#.colorAt(@)".} # Public

export qcolor