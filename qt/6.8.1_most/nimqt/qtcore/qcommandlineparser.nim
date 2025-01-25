const headerFile* = "QtCore/qcommandlineparser.h"

type
    # Enums found in the C++ code
    # Global
    QCommandLineParser_SingleDashWordOptionMode* {.header:headerFile,importcpp:"QCommandLineParser::SingleDashWordOptionMode".} = enum ParseAsCompactedShortOptions = 0, ParseAsLongOptions = 0x1
    QCommandLineParser_OptionsAfterPositionalArgumentsMode* {.header:headerFile,importcpp:"QCommandLineParser::OptionsAfterPositionalArgumentsMode".} = enum ParseAsOptions = 0, ParseAsPositionalArguments = 0x1

type
    # Classes found in the C++ code
    QCommandLineParser* {.header:headerFile,importcpp:"QCommandLineParser" ,pure,inheritable.} = object

# Stuff for class QCommandLineParser

# Public constructors for QCommandLineParser
proc newQCommandLineParser*(): QCommandLineParser {. header:headerFile, importcpp:"QCommandLineParser(@)", constructor .} #

# Public methods for QCommandLineParser
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QCommandLineParser_tr*(sourceText: ptr char, disambiguation: ptr char, n: cint): QString {.header:headerFile, importcpp:"QCommandLineParser::tr(@)".} # Public static
proc static_QCommandLineParser_tr*(sourceText: ptr char, disambiguation: ptr char): QString {.header:headerFile, importcpp:"QCommandLineParser::tr(@)".} # Public static
proc setSingleDashWordOptionMode*(this: QCommandLineParser, parsingMode: QCommandLineParser_SingleDashWordOptionMode) {.header:headerFile, importcpp:"#.setSingleDashWordOptionMode(@)".} # Public
proc setOptionsAfterPositionalArgumentsMode*(this: QCommandLineParser, mode: QCommandLineParser_OptionsAfterPositionalArgumentsMode) {.header:headerFile, importcpp:"#.setOptionsAfterPositionalArgumentsMode(@)".} # Public
import nimqt/qtcore/qcommandlineoption
proc addOption*(this: QCommandLineParser, commandLineOption: QCommandLineOption): bool {.header:headerFile, importcpp:"#.addOption(@)".} # Public
import nimqt/qtcore/qlist
proc addOptions*(this: QCommandLineParser, options: QList[QCommandLineOption]): bool {.header:headerFile, importcpp:"#.addOptions(@)".} # Public
proc addVersionOption*(this: QCommandLineParser): QCommandLineOption {.header:headerFile, importcpp:"#.addVersionOption(@)".} # Public
proc addHelpOption*(this: QCommandLineParser): QCommandLineOption {.header:headerFile, importcpp:"#.addHelpOption(@)".} # Public
proc setApplicationDescription*(this: QCommandLineParser, description: QString) {.header:headerFile, importcpp:"#.setApplicationDescription(@)".} # Public
proc applicationDescription*(this: QCommandLineParser): QString {.header:headerFile, importcpp:"#.applicationDescription(@)".} # Public
# 1 default parameters!
proc addPositionalArgument*(this: QCommandLineParser, name: QString, description: QString, syntax: QString) {.header:headerFile, importcpp:"#.addPositionalArgument(@)".} # Public
proc addPositionalArgument*(this: QCommandLineParser, name: QString, description: QString) {.header:headerFile, importcpp:"#.addPositionalArgument(@)".} # Public
proc clearPositionalArguments*(this: QCommandLineParser) {.header:headerFile, importcpp:"#.clearPositionalArguments(@)".} # Public
import nimqt/qtcore/qstringlist
proc process*(this: QCommandLineParser, arguments: QStringList) {.header:headerFile, importcpp:"#.process(@)".} # Public
import nimqt/qtcore/qcoreapplication
proc process*(this: QCommandLineParser, app: QCoreApplication) {.header:headerFile, importcpp:"#.process(@)".} # Public
proc parse*(this: QCommandLineParser, arguments: QStringList): bool {.header:headerFile, importcpp:"#.parse(@)".} # Public
proc errorText*(this: QCommandLineParser): QString {.header:headerFile, importcpp:"#.errorText(@)".} # Public
proc isSet*(this: QCommandLineParser, name: QString): bool {.header:headerFile, importcpp:"#.isSet(@)".} # Public
proc value*(this: QCommandLineParser, name: QString): QString {.header:headerFile, importcpp:"#.value(@)".} # Public
proc values*(this: QCommandLineParser, name: QString): QStringList {.header:headerFile, importcpp:"#.values(@)".} # Public
proc isSet*(this: QCommandLineParser, option: QCommandLineOption): bool {.header:headerFile, importcpp:"#.isSet(@)".} # Public
proc value*(this: QCommandLineParser, option: QCommandLineOption): QString {.header:headerFile, importcpp:"#.value(@)".} # Public
proc values*(this: QCommandLineParser, option: QCommandLineOption): QStringList {.header:headerFile, importcpp:"#.values(@)".} # Public
proc positionalArguments*(this: QCommandLineParser): QStringList {.header:headerFile, importcpp:"#.positionalArguments(@)".} # Public
proc optionNames*(this: QCommandLineParser): QStringList {.header:headerFile, importcpp:"#.optionNames(@)".} # Public
proc unknownOptionNames*(this: QCommandLineParser): QStringList {.header:headerFile, importcpp:"#.unknownOptionNames(@)".} # Public
proc showVersion*(this: QCommandLineParser) {.header:headerFile, importcpp:"#.showVersion(@)".} # Public
# 1 default parameters!
proc showHelp*(this: QCommandLineParser, exitCode: cint) {.header:headerFile, importcpp:"#.showHelp(@)".} # Public
proc showHelp*(this: QCommandLineParser) {.header:headerFile, importcpp:"#.showHelp(@)".} # Public
proc helpText*(this: QCommandLineParser): QString {.header:headerFile, importcpp:"#.helpText(@)".} # Public

export qstringlist
export qcommandlineoption
export qstring
export qcoreapplication
export qlist
