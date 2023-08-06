const headerFile* = "QtCore/qlibraryinfo.h"

type
    # Enums found in the C++ code
    # Global
    QLibraryInfo_LibraryPath* {.header:headerFile,importcpp:"QLibraryInfo::LibraryPath".} = enum PrefixPath = 0, DocumentationPath = 0x1, HeadersPath = 0x2, LibrariesPath = 0x3, 
        LibraryExecutablesPath = 0x4, BinariesPath = 0x5, PluginsPath = 0x6, QmlImportsPath = 0x7, ArchDataPath = 0x8, 
        DataPath = 0x9, TranslationsPath = 0xa, ExamplesPath = 0xb, TestsPath = 0xc, SettingsPath = 0x64

type
    # Classes found in the C++ code
    QLibraryInfo* {.header:headerFile,importcpp:"QLibraryInfo" ,pure,inheritable.} = object


type
    # typedefs found in the C++ code
    QLibraryInfo_LibraryLocation * = QLibraryInfo_LibraryPath

# Consts
const
    # Global
    QLibraryInfo_LibraryPathQml2ImportsPath* = 7 # from anonymous enum QmlImportsPath

# Stuff for class QLibraryInfo

# Public methods for QLibraryInfo
proc static_QLibraryInfo_build*(): ptr char {.header:headerFile, importcpp:"QLibraryInfo::build(@)".} # Public static
proc static_QLibraryInfo_isDebugBuild*(): bool {.header:headerFile, importcpp:"QLibraryInfo::isDebugBuild(@)".} # Public static
import nimqt/qtcore/qversionnumber
proc static_QLibraryInfo_version*(): QVersionNumber {.header:headerFile, importcpp:"QLibraryInfo::version(@)".} # Public static
import nimqt/qtcore/qstring
proc static_QLibraryInfo_path*(p: QLibraryInfo_LibraryPath): QString {.header:headerFile, importcpp:"QLibraryInfo::path(@)".} # Public static
proc static_QLibraryInfo_location*(location: QLibraryInfo_LibraryPath): QString {.header:headerFile, importcpp:"QLibraryInfo::location(@)".} # Public static
import nimqt/qtcore/qstringlist
proc static_QLibraryInfo_platformPluginArguments*(platformName: QString): QStringList {.header:headerFile, importcpp:"QLibraryInfo::platformPluginArguments(@)".} # Public static

export qstringlist
export qversionnumber
export qstring
