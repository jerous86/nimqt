const headerFile* = "QtCore/qstandardpaths.h"

type
    # Enums found in the C++ code
    # Global
    QStandardPaths_StandardLocation* {.header:headerFile,importcpp:"QStandardPaths::StandardLocation".} = enum DesktopLocation = 0, DocumentsLocation = 0x1, FontsLocation = 0x2, ApplicationsLocation = 0x3, 
        MusicLocation = 0x4, MoviesLocation = 0x5, PicturesLocation = 0x6, TempLocation = 0x7, HomeLocation = 0x8, 
        AppLocalDataLocation = 0x9, CacheLocation = 0xa, GenericDataLocation = 0xb, RuntimeLocation = 0xc, ConfigLocation = 0xd, 
        DownloadLocation = 0xe, GenericCacheLocation = 0xf, GenericConfigLocation = 0x10, AppDataLocation = 0x11, AppConfigLocation = 0x12, 
        PublicShareLocation = 0x13, TemplatesLocation = 0x14
    QStandardPaths_LocateOption* {.header:headerFile,importcpp:"QStandardPaths::LocateOption".} = enum LocateFile = 0, LocateDirectory = 0x1

type
    # Classes found in the C++ code
    QStandardPaths* {.header:headerFile,importcpp:"QStandardPaths" ,pure,inheritable.} = object
import nimqt/qtcore/qflags


type
    # typedefs found in the C++ code
    QStandardPaths_LocateOptions * = QFlags[QStandardPaths_LocateOption]

# Stuff for class QStandardPaths

# Public methods for QStandardPaths
proc qt_check_for_QGADGET_macro*(this: QStandardPaths) {.header:headerFile, importcpp:"#.qt_check_for_QGADGET_macro(@)".} # Public
import nimqt/qtcore/qstring
proc static_QStandardPaths_writableLocation*(`type`: QStandardPaths_StandardLocation): QString {.header:headerFile, importcpp:"QStandardPaths::writableLocation(@)".} # Public static
import nimqt/qtcore/qstringlist
proc static_QStandardPaths_standardLocations*(`type`: QStandardPaths_StandardLocation): QStringList {.header:headerFile, importcpp:"QStandardPaths::standardLocations(@)".} # Public static
# 1 default parameters!
proc static_QStandardPaths_locate*(`type`: QStandardPaths_StandardLocation, fileName: QString, options: QFlags[QStandardPaths_LocateOption]): QString {.header:headerFile, importcpp:"QStandardPaths::locate(@)".} # Public static
proc static_QStandardPaths_locate*(`type`: QStandardPaths_StandardLocation, fileName: QString): QString {.header:headerFile, importcpp:"QStandardPaths::locate(@)".} # Public static
# 1 default parameters!
proc static_QStandardPaths_locateAll*(`type`: QStandardPaths_StandardLocation, fileName: QString, options: QFlags[QStandardPaths_LocateOption]): QStringList {.header:headerFile, importcpp:"QStandardPaths::locateAll(@)".} # Public static
proc static_QStandardPaths_locateAll*(`type`: QStandardPaths_StandardLocation, fileName: QString): QStringList {.header:headerFile, importcpp:"QStandardPaths::locateAll(@)".} # Public static
proc static_QStandardPaths_displayName*(`type`: QStandardPaths_StandardLocation): QString {.header:headerFile, importcpp:"QStandardPaths::displayName(@)".} # Public static
# 1 default parameters!
proc static_QStandardPaths_findExecutable*(executableName: QString, paths: QStringList): QString {.header:headerFile, importcpp:"QStandardPaths::findExecutable(@)".} # Public static
proc static_QStandardPaths_findExecutable*(executableName: QString): QString {.header:headerFile, importcpp:"QStandardPaths::findExecutable(@)".} # Public static
proc static_QStandardPaths_setTestModeEnabled*(testMode: bool) {.header:headerFile, importcpp:"QStandardPaths::setTestModeEnabled(@)".} # Public static
proc static_QStandardPaths_isTestModeEnabled*(): bool {.header:headerFile, importcpp:"QStandardPaths::isTestModeEnabled(@)".} # Public static

export qstringlist
export qstring
export qflags
