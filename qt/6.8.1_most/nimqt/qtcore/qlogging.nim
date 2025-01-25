const headerFile* = "QtCore/qlogging.h"

type
    # Enums found in the C++ code
    # Global
    QtMsgType* {.header:headerFile,importcpp:"QtMsgType".} = enum QtDebugMsg = 0, QtWarningMsg = 0x1, QtCriticalMsg = 0x2, QtFatalMsg = 0x3, 
        QtInfoMsg = 0x4

type
    # Classes found in the C++ code
    QMessageLogContext* {.header:headerFile,importcpp:"QMessageLogContext" ,pure,inheritable.} = object
    QMessageLogger* {.header:headerFile,importcpp:"QMessageLogger" ,pure,inheritable.} = object

# Consts
const
    # Global
    QtMsgTypeQtSystemMsg* = 2 # from anonymous enum QtCriticalMsg

# Stuff for class QMessageLogContext

# Public constructors for QMessageLogContext
proc newQMessageLogContext*(): QMessageLogContext {. header:headerFile, importcpp:"QMessageLogContext(@)", constructor .} #
proc newQMessageLogContext*(fileName: ptr char, lineNumber: cint, functionName: ptr char, categoryName: ptr char): QMessageLogContext {. header:headerFile, importcpp:"QMessageLogContext(@)", constructor .} #
# Stuff for class QMessageLogger

# Public constructors for QMessageLogger
proc newQMessageLogger*(): QMessageLogger {. header:headerFile, importcpp:"QMessageLogger(@)", constructor .} #
proc newQMessageLogger*(file: ptr char, line: cint, function: ptr char): QMessageLogger {. header:headerFile, importcpp:"QMessageLogger(@)", constructor .} #
proc newQMessageLogger*(file: ptr char, line: cint, function: ptr char, category: ptr char): QMessageLogger {. header:headerFile, importcpp:"QMessageLogger(@)", constructor .} #

# Public methods for QMessageLogger
proc debug*(this: QMessageLogger, msg: ptr char) {.header:headerFile, importcpp:"#.debug(@)".} # Public
proc noDebug*(this: QMessageLogger, arg_0: ptr char) {.header:headerFile, importcpp:"#.noDebug(@)".} # Public
proc info*(this: QMessageLogger, msg: ptr char) {.header:headerFile, importcpp:"#.info(@)".} # Public
proc warning*(this: QMessageLogger, msg: ptr char) {.header:headerFile, importcpp:"#.warning(@)".} # Public
proc critical*(this: QMessageLogger, msg: ptr char) {.header:headerFile, importcpp:"#.critical(@)".} # Public
proc fatal*(this: QMessageLogger, msg: ptr char) {.header:headerFile, importcpp:"#.fatal(@)".} # Public
import nimqt/qtcore/qdebug
proc debug*(this: QMessageLogger): QDebug {.header:headerFile, importcpp:"#.debug(@)".} # Public
proc info*(this: QMessageLogger): QDebug {.header:headerFile, importcpp:"#.info(@)".} # Public
proc warning*(this: QMessageLogger): QDebug {.header:headerFile, importcpp:"#.warning(@)".} # Public
proc critical*(this: QMessageLogger): QDebug {.header:headerFile, importcpp:"#.critical(@)".} # Public
proc noDebug*(this: QMessageLogger): QNoDebug {.header:headerFile, importcpp:"#.noDebug(@)".} # Public

export qdebug
