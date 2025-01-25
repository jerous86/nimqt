const headerFile* = "QtCore/qobjectcleanuphandler.h"

import nimqt/qtcore/qobject
type
    # Classes found in the C++ code
    QObjectCleanupHandler* {.header:headerFile,importcpp:"QObjectCleanupHandler" ,pure.} = object of QObject

# Stuff for class QObjectCleanupHandler

# Public constructors for QObjectCleanupHandler
proc newQObjectCleanupHandler*(): ptr QObjectCleanupHandler {. header:headerFile, importcpp:"new QObjectCleanupHandler(@)" .} #

# Public methods for QObjectCleanupHandler
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QObjectCleanupHandler_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QObjectCleanupHandler::tr(@)".} # Public static
proc static_QObjectCleanupHandler_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QObjectCleanupHandler::tr(@)".} # Public static
proc add*(this: ptr QObjectCleanupHandler, `object`: ptr QObject): ptr QObject {.header:headerFile, importcpp:"#.add(@)".} # Public
proc remove*(this: ptr QObjectCleanupHandler, `object`: ptr QObject) {.header:headerFile, importcpp:"#.remove(@)".} # Public
proc isEmpty*(this: ptr QObjectCleanupHandler): bool {.header:headerFile, importcpp:"#.isEmpty(@)".} # Public
proc clear*(this: ptr QObjectCleanupHandler) {.header:headerFile, importcpp:"#.clear(@)".} # Public

export qstring
export qobject
