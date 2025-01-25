const headerFile* = "QtCore/qlockfile.h"

type
    # Enums found in the C++ code
    # Global
    QLockFile_LockError* {.header:headerFile,importcpp:"QLockFile::LockError".} = enum NoError = 0, LockFailedError = 0x1, PermissionError = 0x2, UnknownError = 0x3

type
    # Classes found in the C++ code
    QLockFile* {.header:headerFile,importcpp:"QLockFile" ,pure,inheritable.} = object

# Stuff for class QLockFile

# Public constructors for QLockFile
import nimqt/qtcore/qstring
proc newQLockFile*(fileName: QString): QLockFile {. header:headerFile, importcpp:"QLockFile(@)", constructor .} #

# Public methods for QLockFile
proc fileName*(this: QLockFile): QString {.header:headerFile, importcpp:"#.fileName(@)".} # Public
proc lock*(this: QLockFile): bool {.header:headerFile, importcpp:"#.lock(@)".} # Public
# 1 default parameters!
proc tryLock*(this: QLockFile, timeout: cint): bool {.header:headerFile, importcpp:"#.tryLock(@)".} # Public
proc tryLock*(this: QLockFile): bool {.header:headerFile, importcpp:"#.tryLock(@)".} # Public
proc unlock*(this: QLockFile) {.header:headerFile, importcpp:"#.unlock(@)".} # Public
proc setStaleLockTime*(this: QLockFile, arg_0: cint) {.header:headerFile, importcpp:"#.setStaleLockTime(@)".} # Public
proc staleLockTime*(this: QLockFile): cint {.header:headerFile, importcpp:"#.staleLockTime(@)".} # Public
proc isLocked*(this: QLockFile): bool {.header:headerFile, importcpp:"#.isLocked(@)".} # Public
proc getLockInfo*(this: QLockFile, pid: ptr clonglong, hostname: ptr QString, appname: ptr QString): bool {.header:headerFile, importcpp:"#.getLockInfo(@)".} # Public
proc removeStaleLockFile*(this: QLockFile): bool {.header:headerFile, importcpp:"#.removeStaleLockFile(@)".} # Public
proc error*(this: QLockFile): QLockFile_LockError {.header:headerFile, importcpp:"#.error(@)".} # Public

export qstring
