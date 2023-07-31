const headerFile* = "QtCore/qsavefile.h"

import nimqt/qtcore/qfiledevice
type
    # Classes found in the C++ code
    QSaveFile* {.header:headerFile,importcpp:"QSaveFile" ,pure.} = object of QFileDevice
import nimqt/qtcore/qiodevicebase


type
    # typedefs found in the C++ code
    QSaveFile_FileError * = QFileDevice_FileError
    QSaveFile_FileTime * = QFileDevice_FileTime
    QSaveFile_Permission * = QFileDevice_Permission
    QSaveFile_FileHandleFlag * = QFileDevice_FileHandleFlag
    QSaveFile_MemoryMapFlag * = QFileDevice_MemoryMapFlag
    QSaveFile_Permissions * = QFileDevice_Permissions
    QSaveFile_FileHandleFlags * = QFileDevice_FileHandleFlags
    QSaveFile_MemoryMapFlags * = QFileDevice_MemoryMapFlags
    QSaveFile_OpenModeFlag * = QIODeviceBase_OpenModeFlag
    QSaveFile_OpenMode * = QIODeviceBase_OpenMode

# Stuff for class QSaveFile

# Public constructors for QSaveFile
import nimqt/qtcore/qstring
proc newQSaveFile*(name: QString): ptr QSaveFile {. header:headerFile, importcpp:"new QSaveFile(@)" .} #
import nimqt/qtcore/qobject
# 1 default parameters!
proc newQSaveFile*(parent: ptr QObject): ptr QSaveFile {. header:headerFile, importcpp:"new QSaveFile(@)" .} #
proc newQSaveFile*(): ptr QSaveFile {. header:headerFile, importcpp:"new QSaveFile(@)" .} #
proc newQSaveFile*(name: QString, parent: ptr QObject): ptr QSaveFile {. header:headerFile, importcpp:"new QSaveFile(@)" .} #

# Public methods for QSaveFile
# 1 default parameters!
proc static_QSaveFile_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QSaveFile::tr(@)".} # Public static
proc static_QSaveFile_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QSaveFile::tr(@)".} # Public static
proc fileName*(this: ptr QSaveFile): QString {.header:headerFile, importcpp:"#.fileName(@)".} # Public
proc setFileName*(this: ptr QSaveFile, name: QString) {.header:headerFile, importcpp:"#.setFileName(@)".} # Public
proc open*(this: ptr QSaveFile, flags: QIODeviceBase_OpenMode): bool {.header:headerFile, importcpp:"#.open(@)".} # Public
proc commit*(this: ptr QSaveFile): bool {.header:headerFile, importcpp:"#.commit(@)".} # Public
proc cancelWriting*(this: ptr QSaveFile) {.header:headerFile, importcpp:"#.cancelWriting(@)".} # Public
proc setDirectWriteFallback*(this: ptr QSaveFile, enabled: bool) {.header:headerFile, importcpp:"#.setDirectWriteFallback(@)".} # Public
proc directWriteFallback*(this: ptr QSaveFile): bool {.header:headerFile, importcpp:"#.directWriteFallback(@)".} # Public

# Protected methods methods for QSaveFile
proc writeData*(this: ptr QSaveFile, data: ptr char, len: clonglong): clonglong {.header:headerFile, importcpp:"#.writeData(@)".} # Protected

export qfiledevice
export qstring
export qiodevicebase
export qobject
