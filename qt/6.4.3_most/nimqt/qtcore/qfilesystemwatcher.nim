const headerFile* = "QtCore/qfilesystemwatcher.h"

import nimqt/qtcore/qobject
type
    # Classes found in the C++ code
    QFileSystemWatcher* {.header:headerFile,importcpp:"QFileSystemWatcher" ,pure.} = object of QObject

# Stuff for class QFileSystemWatcher

# Public constructors for QFileSystemWatcher
# 1 default parameters!
proc newQFileSystemWatcher*(parent: ptr QObject): ptr QFileSystemWatcher {. header:headerFile, importcpp:"new QFileSystemWatcher(@)" .} #
proc newQFileSystemWatcher*(): ptr QFileSystemWatcher {. header:headerFile, importcpp:"new QFileSystemWatcher(@)" .} #
import nimqt/qtcore/qstringlist
# 1 default parameters!
proc newQFileSystemWatcher*(paths: QStringList, parent: ptr QObject): ptr QFileSystemWatcher {. header:headerFile, importcpp:"new QFileSystemWatcher(@)" .} #
proc newQFileSystemWatcher*(paths: QStringList): ptr QFileSystemWatcher {. header:headerFile, importcpp:"new QFileSystemWatcher(@)" .} #

# Public methods for QFileSystemWatcher
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QFileSystemWatcher_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QFileSystemWatcher::tr(@)".} # Public static
proc static_QFileSystemWatcher_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QFileSystemWatcher::tr(@)".} # Public static
proc addPath*(this: ptr QFileSystemWatcher, file: QString): bool {.header:headerFile, importcpp:"#.addPath(@)".} # Public
proc addPaths*(this: ptr QFileSystemWatcher, files: QStringList): QStringList {.header:headerFile, importcpp:"#.addPaths(@)".} # Public
proc removePath*(this: ptr QFileSystemWatcher, file: QString): bool {.header:headerFile, importcpp:"#.removePath(@)".} # Public
proc removePaths*(this: ptr QFileSystemWatcher, files: QStringList): QStringList {.header:headerFile, importcpp:"#.removePaths(@)".} # Public
proc files*(this: ptr QFileSystemWatcher): QStringList {.header:headerFile, importcpp:"#.files(@)".} # Public
proc directories*(this: ptr QFileSystemWatcher): QStringList {.header:headerFile, importcpp:"#.directories(@)".} # Public

export qstringlist
export qstring
export qobject
