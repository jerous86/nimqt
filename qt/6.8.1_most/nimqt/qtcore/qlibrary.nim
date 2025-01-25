const headerFile* = "QtCore/qlibrary.h"

type
    # Enums found in the C++ code
    # Global
    QLibrary_LoadHint* {.header:headerFile,importcpp:"QLibrary::LoadHint".} = enum ResolveAllSymbolsHint = 0x1, ExportExternalSymbolsHint = 0x2, LoadArchiveMemberHint = 0x4, PreventUnloadHint = 0x8, 
        DeepBindHint = 0x10

import nimqt/qtcore/qobject
type
    # Classes found in the C++ code
    QLibrary* {.header:headerFile,importcpp:"QLibrary" ,pure.} = object of QObject
import nimqt/qtcore/qflags


type
    # typedefs found in the C++ code
    QLibrary_LoadHints * = QFlags[QLibrary_LoadHint]

# Stuff for class QLibrary

# Public constructors for QLibrary
# 1 default parameters!
proc newQLibrary*(parent: ptr QObject): ptr QLibrary {. header:headerFile, importcpp:"new QLibrary(@)" .} #
proc newQLibrary*(): ptr QLibrary {. header:headerFile, importcpp:"new QLibrary(@)" .} #
import nimqt/qtcore/qstring
# 1 default parameters!
proc newQLibrary*(fileName: QString, parent: ptr QObject): ptr QLibrary {. header:headerFile, importcpp:"new QLibrary(@)" .} #
proc newQLibrary*(fileName: QString): ptr QLibrary {. header:headerFile, importcpp:"new QLibrary(@)" .} #
# 1 default parameters!
proc newQLibrary*(fileName: QString, verNum: cint, parent: ptr QObject): ptr QLibrary {. header:headerFile, importcpp:"new QLibrary(@)" .} #
proc newQLibrary*(fileName: QString, verNum: cint): ptr QLibrary {. header:headerFile, importcpp:"new QLibrary(@)" .} #
# 1 default parameters!
proc newQLibrary*(fileName: QString, version: QString, parent: ptr QObject): ptr QLibrary {. header:headerFile, importcpp:"new QLibrary(@)" .} #
proc newQLibrary*(fileName: QString, version: QString): ptr QLibrary {. header:headerFile, importcpp:"new QLibrary(@)" .} #

# Public methods for QLibrary
# 1 default parameters!
proc static_QLibrary_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QLibrary::tr(@)".} # Public static
proc static_QLibrary_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QLibrary::tr(@)".} # Public static
proc load*(this: ptr QLibrary): bool {.header:headerFile, importcpp:"#.load(@)".} # Public
proc unload*(this: ptr QLibrary): bool {.header:headerFile, importcpp:"#.unload(@)".} # Public
proc isLoaded*(this: ptr QLibrary): bool {.header:headerFile, importcpp:"#.isLoaded(@)".} # Public
proc static_QLibrary_isLibrary*(fileName: QString): bool {.header:headerFile, importcpp:"QLibrary::isLibrary(@)".} # Public static
proc setFileName*(this: ptr QLibrary, fileName: QString) {.header:headerFile, importcpp:"#.setFileName(@)".} # Public
proc fileName*(this: ptr QLibrary): QString {.header:headerFile, importcpp:"#.fileName(@)".} # Public
proc setFileNameAndVersion*(this: ptr QLibrary, fileName: QString, verNum: cint) {.header:headerFile, importcpp:"#.setFileNameAndVersion(@)".} # Public
proc setFileNameAndVersion*(this: ptr QLibrary, fileName: QString, version: QString) {.header:headerFile, importcpp:"#.setFileNameAndVersion(@)".} # Public
proc errorString*(this: ptr QLibrary): QString {.header:headerFile, importcpp:"#.errorString(@)".} # Public
proc setLoadHints*(this: ptr QLibrary, hints: QFlags[QLibrary_LoadHint]) {.header:headerFile, importcpp:"#.setLoadHints(@)".} # Public
proc loadHints*(this: ptr QLibrary): QFlags[QLibrary_LoadHint] {.header:headerFile, importcpp:"#.loadHints(@)".} # Public

export qstring
export qflags
export qobject
