const headerFile* = "QtGui/qsessionmanager.h"

type
    # Enums found in the C++ code
    # Global
    QSessionManager_RestartHint* {.header:headerFile,importcpp:"QSessionManager::RestartHint".} = enum RestartIfRunning = 0, RestartAnyway = 0x1, RestartImmediately = 0x2, RestartNever = 0x3

import nimqt/qtcore/qobject
type
    # Classes found in the C++ code
    QSessionManager* {.header:headerFile,importcpp:"QSessionManager" ,pure.} = object of QObject

# Stuff for class QSessionManager

# Public methods for QSessionManager
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QSessionManager_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QSessionManager::tr(@)".} # Public static
proc static_QSessionManager_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QSessionManager::tr(@)".} # Public static
proc sessionId*(this: ptr QSessionManager): QString {.header:headerFile, importcpp:"#.sessionId(@)".} # Public
proc sessionKey*(this: ptr QSessionManager): QString {.header:headerFile, importcpp:"#.sessionKey(@)".} # Public
proc allowsInteraction*(this: ptr QSessionManager): bool {.header:headerFile, importcpp:"#.allowsInteraction(@)".} # Public
proc allowsErrorInteraction*(this: ptr QSessionManager): bool {.header:headerFile, importcpp:"#.allowsErrorInteraction(@)".} # Public
proc release*(this: ptr QSessionManager) {.header:headerFile, importcpp:"#.release(@)".} # Public
proc cancel*(this: ptr QSessionManager) {.header:headerFile, importcpp:"#.cancel(@)".} # Public
proc setRestartHint*(this: ptr QSessionManager, arg_0: QSessionManager_RestartHint) {.header:headerFile, importcpp:"#.setRestartHint(@)".} # Public
proc restartHint*(this: ptr QSessionManager): QSessionManager_RestartHint {.header:headerFile, importcpp:"#.restartHint(@)".} # Public
import nimqt/qtcore/qstringlist
proc setRestartCommand*(this: ptr QSessionManager, arg_0: QStringList) {.header:headerFile, importcpp:"#.setRestartCommand(@)".} # Public
proc restartCommand*(this: ptr QSessionManager): QStringList {.header:headerFile, importcpp:"#.restartCommand(@)".} # Public
proc setDiscardCommand*(this: ptr QSessionManager, arg_0: QStringList) {.header:headerFile, importcpp:"#.setDiscardCommand(@)".} # Public
proc discardCommand*(this: ptr QSessionManager): QStringList {.header:headerFile, importcpp:"#.discardCommand(@)".} # Public
proc setManagerProperty*(this: ptr QSessionManager, name: QString, value: QString) {.header:headerFile, importcpp:"#.setManagerProperty(@)".} # Public
proc setManagerProperty*(this: ptr QSessionManager, name: QString, value: QStringList) {.header:headerFile, importcpp:"#.setManagerProperty(@)".} # Public
proc isPhase2*(this: ptr QSessionManager): bool {.header:headerFile, importcpp:"#.isPhase2(@)".} # Public
proc requestPhase2*(this: ptr QSessionManager) {.header:headerFile, importcpp:"#.requestPhase2(@)".} # Public

export qstringlist
export qstring
export qobject
