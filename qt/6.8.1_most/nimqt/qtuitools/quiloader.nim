const headerFile* = "QtUiTools/quiloader.h"

import nimqt/qtcore/qobject
type
    # Classes found in the C++ code
    QUiLoader* {.header:headerFile,importcpp:"QUiLoader" ,pure.} = object of QObject

# Stuff for class QUiLoader

# Public constructors for QUiLoader
# 1 default parameters!
proc newQUiLoader*(parent: ptr QObject): ptr QUiLoader {. header:headerFile, importcpp:"new QUiLoader(@)" .} #
proc newQUiLoader*(): ptr QUiLoader {. header:headerFile, importcpp:"new QUiLoader(@)" .} #

# Public methods for QUiLoader
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QUiLoader_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QUiLoader::tr(@)".} # Public static
proc static_QUiLoader_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QUiLoader::tr(@)".} # Public static
import nimqt/qtcore/qstringlist
proc pluginPaths*(this: ptr QUiLoader): QStringList {.header:headerFile, importcpp:"#.pluginPaths(@)".} # Public
proc clearPluginPaths*(this: ptr QUiLoader) {.header:headerFile, importcpp:"#.clearPluginPaths(@)".} # Public
proc addPluginPath*(this: ptr QUiLoader, path: QString) {.header:headerFile, importcpp:"#.addPluginPath(@)".} # Public
import nimqt/qtwidgets/qwidget
import nimqt/qtcore/qiodevice
# 1 default parameters!
proc load*(this: ptr QUiLoader, device: ptr QIODevice, parentWidget: ptr QWidget): ptr QWidget {.header:headerFile, importcpp:"#.load(@)".} # Public
proc load*(this: ptr QUiLoader, device: ptr QIODevice): ptr QWidget {.header:headerFile, importcpp:"#.load(@)".} # Public
proc availableWidgets*(this: ptr QUiLoader): QStringList {.header:headerFile, importcpp:"#.availableWidgets(@)".} # Public
proc availableLayouts*(this: ptr QUiLoader): QStringList {.header:headerFile, importcpp:"#.availableLayouts(@)".} # Public
# 2 default parameters!
proc createWidget*(this: ptr QUiLoader, className: QString, parent: ptr QWidget, name: QString): ptr QWidget {.header:headerFile, importcpp:"#.createWidget(@)".} # Public
proc createWidget*(this: ptr QUiLoader, className: QString, parent: ptr QWidget): ptr QWidget {.header:headerFile, importcpp:"#.createWidget(@)".} # Public
proc createWidget*(this: ptr QUiLoader, className: QString): ptr QWidget {.header:headerFile, importcpp:"#.createWidget(@)".} # Public
import nimqt/qtwidgets/qlayout
# 2 default parameters!
proc createLayout*(this: ptr QUiLoader, className: QString, parent: ptr QObject, name: QString): ptr QLayout {.header:headerFile, importcpp:"#.createLayout(@)".} # Public
proc createLayout*(this: ptr QUiLoader, className: QString, parent: ptr QObject): ptr QLayout {.header:headerFile, importcpp:"#.createLayout(@)".} # Public
proc createLayout*(this: ptr QUiLoader, className: QString): ptr QLayout {.header:headerFile, importcpp:"#.createLayout(@)".} # Public
import nimqt/qtgui/qactiongroup
# 2 default parameters!
proc createActionGroup*(this: ptr QUiLoader, parent: ptr QObject, name: QString): ptr QActionGroup {.header:headerFile, importcpp:"#.createActionGroup(@)".} # Public
proc createActionGroup*(this: ptr QUiLoader, parent: ptr QObject): ptr QActionGroup {.header:headerFile, importcpp:"#.createActionGroup(@)".} # Public
proc createActionGroup*(this: ptr QUiLoader): ptr QActionGroup {.header:headerFile, importcpp:"#.createActionGroup(@)".} # Public
import nimqt/qtgui/qaction
# 2 default parameters!
proc createAction*(this: ptr QUiLoader, parent: ptr QObject, name: QString): ptr QAction {.header:headerFile, importcpp:"#.createAction(@)".} # Public
proc createAction*(this: ptr QUiLoader, parent: ptr QObject): ptr QAction {.header:headerFile, importcpp:"#.createAction(@)".} # Public
proc createAction*(this: ptr QUiLoader): ptr QAction {.header:headerFile, importcpp:"#.createAction(@)".} # Public
import nimqt/qtcore/qdir
proc setWorkingDirectory*(this: ptr QUiLoader, dir: QDir) {.header:headerFile, importcpp:"#.setWorkingDirectory(@)".} # Public
proc workingDirectory*(this: ptr QUiLoader): QDir {.header:headerFile, importcpp:"#.workingDirectory(@)".} # Public
proc setLanguageChangeEnabled*(this: ptr QUiLoader, enabled: bool) {.header:headerFile, importcpp:"#.setLanguageChangeEnabled(@)".} # Public
proc isLanguageChangeEnabled*(this: ptr QUiLoader): bool {.header:headerFile, importcpp:"#.isLanguageChangeEnabled(@)".} # Public
proc setTranslationEnabled*(this: ptr QUiLoader, enabled: bool) {.header:headerFile, importcpp:"#.setTranslationEnabled(@)".} # Public
proc isTranslationEnabled*(this: ptr QUiLoader): bool {.header:headerFile, importcpp:"#.isTranslationEnabled(@)".} # Public
proc errorString*(this: ptr QUiLoader): QString {.header:headerFile, importcpp:"#.errorString(@)".} # Public

export qactiongroup
export qstringlist
export qstring
export qaction
export qdir
export qlayout
export qwidget
export qobject
export qiodevice
