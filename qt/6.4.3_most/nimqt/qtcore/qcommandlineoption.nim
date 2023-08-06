const headerFile* = "QtCore/qcommandlineoption.h"

type
    # Enums found in the C++ code
    # Global
    QCommandLineOption_Flag* {.header:headerFile,importcpp:"QCommandLineOption::Flag".} = enum HiddenFromHelp = 0x1, ShortOptionStyle = 0x2

type
    # Classes found in the C++ code
    QCommandLineOption* {.header:headerFile,importcpp:"QCommandLineOption" ,pure,inheritable.} = object
import nimqt/qtcore/qflags


type
    # typedefs found in the C++ code
    QCommandLineOption_Flags * = QFlags[QCommandLineOption_Flag]

# Stuff for class QCommandLineOption

# Public constructors for QCommandLineOption
import nimqt/qtcore/qstring
proc newQCommandLineOption*(name: QString): QCommandLineOption {. header:headerFile, importcpp:"QCommandLineOption(@)", constructor .} #
import nimqt/qtcore/qstringlist
proc newQCommandLineOption*(names: QStringList): QCommandLineOption {. header:headerFile, importcpp:"QCommandLineOption(@)", constructor .} #
# 2 default parameters!
proc newQCommandLineOption*(name: QString, description: QString, valueName: QString, defaultValue: QString): QCommandLineOption {. header:headerFile, importcpp:"QCommandLineOption(@)", constructor .} #
proc newQCommandLineOption*(name: QString, description: QString, valueName: QString): QCommandLineOption {. header:headerFile, importcpp:"QCommandLineOption(@)", constructor .} #
proc newQCommandLineOption*(name: QString, description: QString): QCommandLineOption {. header:headerFile, importcpp:"QCommandLineOption(@)", constructor .} #
# 2 default parameters!
proc newQCommandLineOption*(names: QStringList, description: QString, valueName: QString, defaultValue: QString): QCommandLineOption {. header:headerFile, importcpp:"QCommandLineOption(@)", constructor .} #
proc newQCommandLineOption*(names: QStringList, description: QString, valueName: QString): QCommandLineOption {. header:headerFile, importcpp:"QCommandLineOption(@)", constructor .} #
proc newQCommandLineOption*(names: QStringList, description: QString): QCommandLineOption {. header:headerFile, importcpp:"QCommandLineOption(@)", constructor .} #
proc newQCommandLineOption*(other: QCommandLineOption): QCommandLineOption {. header:headerFile, importcpp:"QCommandLineOption(@)", constructor .} #

# Public methods for QCommandLineOption
proc swap*(this: QCommandLineOption, other: QCommandLineOption) {.header:headerFile, importcpp:"#.swap(@)".} # Public
proc names*(this: QCommandLineOption): QStringList {.header:headerFile, importcpp:"#.names(@)".} # Public
proc setValueName*(this: QCommandLineOption, name: QString) {.header:headerFile, importcpp:"#.setValueName(@)".} # Public
proc valueName*(this: QCommandLineOption): QString {.header:headerFile, importcpp:"#.valueName(@)".} # Public
proc setDescription*(this: QCommandLineOption, description: QString) {.header:headerFile, importcpp:"#.setDescription(@)".} # Public
proc description*(this: QCommandLineOption): QString {.header:headerFile, importcpp:"#.description(@)".} # Public
proc setDefaultValue*(this: QCommandLineOption, defaultValue: QString) {.header:headerFile, importcpp:"#.setDefaultValue(@)".} # Public
proc setDefaultValues*(this: QCommandLineOption, defaultValues: QStringList) {.header:headerFile, importcpp:"#.setDefaultValues(@)".} # Public
proc defaultValues*(this: QCommandLineOption): QStringList {.header:headerFile, importcpp:"#.defaultValues(@)".} # Public
proc flags*(this: QCommandLineOption): QFlags[QCommandLineOption_Flag] {.header:headerFile, importcpp:"#.flags(@)".} # Public
proc setFlags*(this: QCommandLineOption, aflags: QFlags[QCommandLineOption_Flag]) {.header:headerFile, importcpp:"#.setFlags(@)".} # Public

export qstringlist
export qstring
export qflags
