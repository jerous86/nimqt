const headerFile* = "QtCore/qtemporarydir.h"

# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}
when (NimMajor, NimMinor, NimPatch) < (1, 9, 0):
    type
        # Classes found in the C++ code
        QTemporaryDir* {.header:headerFile,importcpp:"QTemporaryDir" ,pure.} = object {.inheritable.}
elif (NimMajor, NimMinor, NimPatch) >= (1, 9, 0):
    type
        # Classes found in the C++ code
        QTemporaryDir* {.header:headerFile,importcpp:"QTemporaryDir" ,pure,inheritable.} = object
{.push warning[Deprecated]: on.}

# Stuff for class QTemporaryDir

# Public constructors for QTemporaryDir
proc newQTemporaryDir*(): QTemporaryDir {. header:headerFile, importcpp:"QTemporaryDir(@)", constructor .} #
import nimqt/qtcore/qstring
proc newQTemporaryDir*(templateName: QString): QTemporaryDir {. header:headerFile, importcpp:"QTemporaryDir(@)", constructor .} #
proc newQTemporaryDir*(other: QTemporaryDir): QTemporaryDir {. header:headerFile, importcpp:"QTemporaryDir(@)", constructor .} #

# Public methods for QTemporaryDir
proc swap*(this: QTemporaryDir, other: QTemporaryDir) {.header:headerFile, importcpp:"#.swap(@)".} # Public
proc isValid*(this: QTemporaryDir): bool {.header:headerFile, importcpp:"#.isValid(@)".} # Public
proc errorString*(this: QTemporaryDir): QString {.header:headerFile, importcpp:"#.errorString(@)".} # Public
proc autoRemove*(this: QTemporaryDir): bool {.header:headerFile, importcpp:"#.autoRemove(@)".} # Public
proc setAutoRemove*(this: QTemporaryDir, b: bool) {.header:headerFile, importcpp:"#.setAutoRemove(@)".} # Public
proc remove*(this: QTemporaryDir): bool {.header:headerFile, importcpp:"#.remove(@)".} # Public
proc path*(this: QTemporaryDir): QString {.header:headerFile, importcpp:"#.path(@)".} # Public
proc filePath*(this: QTemporaryDir, fileName: QString): QString {.header:headerFile, importcpp:"#.filePath(@)".} # Public

export qstring