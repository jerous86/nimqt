const headerFile* = "QtCore/qtemporaryfile.h"

import nimqt/qtcore/qfile
type
    # Classes found in the C++ code
    QTemporaryFile* {.header:headerFile,importcpp:"QTemporaryFile" ,pure.} = object of QFile
import nimqt/qtcore/qfiledevice
import nimqt/qtcore/qiodevicebase


type
    # typedefs found in the C++ code
    QTemporaryFile_FileError * = QFileDevice_FileError
    QTemporaryFile_FileTime * = QFileDevice_FileTime
    QTemporaryFile_Permission * = QFileDevice_Permission
    QTemporaryFile_FileHandleFlag * = QFileDevice_FileHandleFlag
    QTemporaryFile_MemoryMapFlag * = QFileDevice_MemoryMapFlag
    QTemporaryFile_Permissions * = QFileDevice_Permissions
    QTemporaryFile_FileHandleFlags * = QFileDevice_FileHandleFlags
    QTemporaryFile_MemoryMapFlags * = QFileDevice_MemoryMapFlags
    QTemporaryFile_OpenModeFlag * = QIODeviceBase_OpenModeFlag
    QTemporaryFile_OpenMode * = QIODeviceBase_OpenMode

# Stuff for class QTemporaryFile

# Public constructors for QTemporaryFile
proc newQTemporaryFile*(): ptr QTemporaryFile {. header:headerFile, importcpp:"new QTemporaryFile(@)" .} #
import nimqt/qtcore/qstring
proc newQTemporaryFile*(templateName: QString): ptr QTemporaryFile {. header:headerFile, importcpp:"new QTemporaryFile(@)" .} #
import nimqt/qtcore/qobject
proc newQTemporaryFile*(parent: ptr QObject): ptr QTemporaryFile {. header:headerFile, importcpp:"new QTemporaryFile(@)" .} #
proc newQTemporaryFile*(templateName: QString, parent: ptr QObject): ptr QTemporaryFile {. header:headerFile, importcpp:"new QTemporaryFile(@)" .} #

# Public methods for QTemporaryFile
# 1 default parameters!
proc static_QTemporaryFile_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QTemporaryFile::tr(@)".} # Public static
proc static_QTemporaryFile_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QTemporaryFile::tr(@)".} # Public static
proc autoRemove*(this: ptr QTemporaryFile): bool {.header:headerFile, importcpp:"#.autoRemove(@)".} # Public
proc setAutoRemove*(this: ptr QTemporaryFile, b: bool) {.header:headerFile, importcpp:"#.setAutoRemove(@)".} # Public
proc open*(this: ptr QTemporaryFile): bool {.header:headerFile, importcpp:"#.open(@)".} # Public
proc fileName*(this: ptr QTemporaryFile): QString {.header:headerFile, importcpp:"#.fileName(@)".} # Public
proc fileTemplate*(this: ptr QTemporaryFile): QString {.header:headerFile, importcpp:"#.fileTemplate(@)".} # Public
proc setFileTemplate*(this: ptr QTemporaryFile, name: QString) {.header:headerFile, importcpp:"#.setFileTemplate(@)".} # Public
proc rename*(this: ptr QTemporaryFile, newName: QString): bool {.header:headerFile, importcpp:"#.rename(@)".} # Public
proc static_QTemporaryFile_createNativeFile*(fileName: QString): ptr QTemporaryFile {.header:headerFile, importcpp:"QTemporaryFile::createNativeFile(@)".} # Public static
proc static_QTemporaryFile_createNativeFile*(file: QFile): ptr QTemporaryFile {.header:headerFile, importcpp:"QTemporaryFile::createNativeFile(@)".} # Public static

# Protected methods methods for QTemporaryFile
proc open*(this: ptr QTemporaryFile, flags: QIODeviceBase_OpenMode): bool {.header:headerFile, importcpp:"#.open(@)".} # Protected

export qfiledevice
export qstring
export qiodevicebase
export qfile
export qobject
