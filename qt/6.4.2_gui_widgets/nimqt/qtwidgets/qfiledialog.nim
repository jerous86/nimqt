const headerFile* = "QtWidgets/qfiledialog.h"

import nimqt/qtwidgets/qdialog
# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}


type
    # Classes and enums found in the C++ code
    # Global
    QFileDialog_ViewMode* {.header:headerFile,importcpp:"QFileDialog::ViewMode".} = enum Detail = 0, List = 0x1
    QFileDialog_FileMode* {.header:headerFile,importcpp:"QFileDialog::FileMode".} = enum AnyFile = 0, ExistingFile = 0x1, Directory = 0x2, ExistingFiles = 0x3
    QFileDialog_AcceptMode* {.header:headerFile,importcpp:"QFileDialog::AcceptMode".} = enum AcceptOpen = 0, AcceptSave = 0x1
    QFileDialog_DialogLabel* {.header:headerFile,importcpp:"QFileDialog::DialogLabel".} = enum LookIn = 0, FileName = 0x1, FileType = 0x2, Accept = 0x3, 
        Reject = 0x4
    QFileDialog_Option* {.header:headerFile,importcpp:"QFileDialog::Option".} = enum ShowDirsOnly = 0, DontResolveSymlinks = 0x1, DontConfirmOverwrite = 0x2, DontUseNativeDialog = 0x3, 
        ReadOnly = 0x4, HideNameFilterDetails = 0x5, DontUseCustomDirectoryIcons = 0x6
    QFileDialog* {.header:headerFile,importcpp:"QFileDialog" ,pure.} = object of QDialog
{.push warning[Deprecated]: on.}
import nimqt/qtwidgets/qwidget
import nimqt/qtgui/qpaintdevice
import nimqt/qtcore/qflags


type
    # typedefs found in the C++ code
    QFileDialog_DialogCode * = QDialog_DialogCode
    QFileDialog_RenderFlag * = QWidget_RenderFlag
    QFileDialog_RenderFlags * = QWidget_RenderFlags
    QFileDialog_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric
    QFileDialog_Options * = QFlags[QFileDialog_Option]

# Stuff for class QFileDialog

# Public constructors for QFileDialog
import nimqt/qtcore/qnamespace
proc newQFileDialog*(parent: ptr QWidget, f: Qt_WindowFlags): ptr QFileDialog {. header:headerFile, importcpp:"new QFileDialog(@)" .} #
import nimqt/qtcore/qstring
# 4 default parameters!
proc newQFileDialog*(parent: ptr QWidget, caption: QString, directory: QString, filter: QString): ptr QFileDialog {. header:headerFile, importcpp:"new QFileDialog(@)" .} #
proc newQFileDialog*(parent: ptr QWidget, caption: QString, directory: QString): ptr QFileDialog {. header:headerFile, importcpp:"new QFileDialog(@)" .} #
proc newQFileDialog*(parent: ptr QWidget, caption: QString): ptr QFileDialog {. header:headerFile, importcpp:"new QFileDialog(@)" .} #
proc newQFileDialog*(parent: ptr QWidget): ptr QFileDialog {. header:headerFile, importcpp:"new QFileDialog(@)" .} #
proc newQFileDialog*(): ptr QFileDialog {. header:headerFile, importcpp:"new QFileDialog(@)" .} #

# Public methods for QFileDialog
# 1 default parameters!
proc static_QFileDialog_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QFileDialog::tr(@)".} # Public static
proc static_QFileDialog_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QFileDialog::tr(@)".} # Public static
proc setDirectory*(this: ptr QFileDialog, directory: QString) {.header:headerFile, importcpp:"#.setDirectory(@)".} # Public
proc selectFile*(this: ptr QFileDialog, filename: QString) {.header:headerFile, importcpp:"#.selectFile(@)".} # Public
proc setNameFilter*(this: ptr QFileDialog, filter: QString) {.header:headerFile, importcpp:"#.setNameFilter(@)".} # Public
proc selectNameFilter*(this: ptr QFileDialog, filter: QString) {.header:headerFile, importcpp:"#.selectNameFilter(@)".} # Public
proc selectedMimeTypeFilter*(this: ptr QFileDialog): QString {.header:headerFile, importcpp:"#.selectedMimeTypeFilter(@)".} # Public
proc selectedNameFilter*(this: ptr QFileDialog): QString {.header:headerFile, importcpp:"#.selectedNameFilter(@)".} # Public
proc selectMimeTypeFilter*(this: ptr QFileDialog, filter: QString) {.header:headerFile, importcpp:"#.selectMimeTypeFilter(@)".} # Public
proc setViewMode*(this: ptr QFileDialog, mode: QFileDialog_ViewMode) {.header:headerFile, importcpp:"#.setViewMode(@)".} # Public
proc viewMode*(this: ptr QFileDialog): QFileDialog_ViewMode {.header:headerFile, importcpp:"#.viewMode(@)".} # Public
proc setFileMode*(this: ptr QFileDialog, mode: QFileDialog_FileMode) {.header:headerFile, importcpp:"#.setFileMode(@)".} # Public
proc fileMode*(this: ptr QFileDialog): QFileDialog_FileMode {.header:headerFile, importcpp:"#.fileMode(@)".} # Public
proc setAcceptMode*(this: ptr QFileDialog, mode: QFileDialog_AcceptMode) {.header:headerFile, importcpp:"#.setAcceptMode(@)".} # Public
proc acceptMode*(this: ptr QFileDialog): QFileDialog_AcceptMode {.header:headerFile, importcpp:"#.acceptMode(@)".} # Public
proc setDefaultSuffix*(this: ptr QFileDialog, suffix: QString) {.header:headerFile, importcpp:"#.setDefaultSuffix(@)".} # Public
proc defaultSuffix*(this: ptr QFileDialog): QString {.header:headerFile, importcpp:"#.defaultSuffix(@)".} # Public
import nimqt/qtwidgets/qabstractitemdelegate
proc setItemDelegate*(this: ptr QFileDialog, delegate: ptr QAbstractItemDelegate) {.header:headerFile, importcpp:"#.setItemDelegate(@)".} # Public
proc itemDelegate*(this: ptr QFileDialog): ptr QAbstractItemDelegate {.header:headerFile, importcpp:"#.itemDelegate(@)".} # Public
import nimqt/qtgui/qabstractfileiconprovider
proc setIconProvider*(this: ptr QFileDialog, provider: ptr QAbstractFileIconProvider) {.header:headerFile, importcpp:"#.setIconProvider(@)".} # Public
proc iconProvider*(this: ptr QFileDialog): ptr QAbstractFileIconProvider {.header:headerFile, importcpp:"#.iconProvider(@)".} # Public
proc setLabelText*(this: ptr QFileDialog, label: QFileDialog_DialogLabel, text: QString) {.header:headerFile, importcpp:"#.setLabelText(@)".} # Public
proc labelText*(this: ptr QFileDialog, label: QFileDialog_DialogLabel): QString {.header:headerFile, importcpp:"#.labelText(@)".} # Public
# 1 default parameters!
proc setOption*(this: ptr QFileDialog, option: QFileDialog_Option, on: bool) {.header:headerFile, importcpp:"#.setOption(@)".} # Public
proc setOption*(this: ptr QFileDialog, option: QFileDialog_Option) {.header:headerFile, importcpp:"#.setOption(@)".} # Public
proc testOption*(this: ptr QFileDialog, option: QFileDialog_Option): bool {.header:headerFile, importcpp:"#.testOption(@)".} # Public
proc setOptions*(this: ptr QFileDialog, options: QFlags[QFileDialog_Option]) {.header:headerFile, importcpp:"#.setOptions(@)".} # Public
proc options*(this: ptr QFileDialog): QFlags[QFileDialog_Option] {.header:headerFile, importcpp:"#.options(@)".} # Public
import nimqt/qtcore/qobject
proc open*(this: ptr QFileDialog, receiver: ptr QObject, member: ptr char) {.header:headerFile, importcpp:"#.open(@)".} # Public
proc setVisible*(this: ptr QFileDialog, visible: bool) {.header:headerFile, importcpp:"#.setVisible(@)".} # Public
proc fileSelected*(this: ptr QFileDialog, file: QString) {.header:headerFile, importcpp:"#.fileSelected(@)".} # Public
proc currentChanged*(this: ptr QFileDialog, path: QString) {.header:headerFile, importcpp:"#.currentChanged(@)".} # Public
proc directoryEntered*(this: ptr QFileDialog, directory: QString) {.header:headerFile, importcpp:"#.directoryEntered(@)".} # Public
proc filterSelected*(this: ptr QFileDialog, filter: QString) {.header:headerFile, importcpp:"#.filterSelected(@)".} # Public
# 6 default parameters!
proc static_QFileDialog_getOpenFileName*(parent: ptr QWidget, caption: QString, dir: QString, filter: QString, selectedFilter: ptr QString, options: QFlags[QFileDialog_Option]): QString {.header:headerFile, importcpp:"QFileDialog::getOpenFileName(@)".} # Public static
proc static_QFileDialog_getOpenFileName*(parent: ptr QWidget, caption: QString, dir: QString, filter: QString, selectedFilter: ptr QString): QString {.header:headerFile, importcpp:"QFileDialog::getOpenFileName(@)".} # Public static
proc static_QFileDialog_getOpenFileName*(parent: ptr QWidget, caption: QString, dir: QString, filter: QString): QString {.header:headerFile, importcpp:"QFileDialog::getOpenFileName(@)".} # Public static
proc static_QFileDialog_getOpenFileName*(parent: ptr QWidget, caption: QString, dir: QString): QString {.header:headerFile, importcpp:"QFileDialog::getOpenFileName(@)".} # Public static
proc static_QFileDialog_getOpenFileName*(parent: ptr QWidget, caption: QString): QString {.header:headerFile, importcpp:"QFileDialog::getOpenFileName(@)".} # Public static
proc static_QFileDialog_getOpenFileName*(parent: ptr QWidget): QString {.header:headerFile, importcpp:"QFileDialog::getOpenFileName(@)".} # Public static
proc static_QFileDialog_getOpenFileName*(): QString {.header:headerFile, importcpp:"QFileDialog::getOpenFileName(@)".} # Public static
# 6 default parameters!
proc static_QFileDialog_getSaveFileName*(parent: ptr QWidget, caption: QString, dir: QString, filter: QString, selectedFilter: ptr QString, options: QFlags[QFileDialog_Option]): QString {.header:headerFile, importcpp:"QFileDialog::getSaveFileName(@)".} # Public static
proc static_QFileDialog_getSaveFileName*(parent: ptr QWidget, caption: QString, dir: QString, filter: QString, selectedFilter: ptr QString): QString {.header:headerFile, importcpp:"QFileDialog::getSaveFileName(@)".} # Public static
proc static_QFileDialog_getSaveFileName*(parent: ptr QWidget, caption: QString, dir: QString, filter: QString): QString {.header:headerFile, importcpp:"QFileDialog::getSaveFileName(@)".} # Public static
proc static_QFileDialog_getSaveFileName*(parent: ptr QWidget, caption: QString, dir: QString): QString {.header:headerFile, importcpp:"QFileDialog::getSaveFileName(@)".} # Public static
proc static_QFileDialog_getSaveFileName*(parent: ptr QWidget, caption: QString): QString {.header:headerFile, importcpp:"QFileDialog::getSaveFileName(@)".} # Public static
proc static_QFileDialog_getSaveFileName*(parent: ptr QWidget): QString {.header:headerFile, importcpp:"QFileDialog::getSaveFileName(@)".} # Public static
proc static_QFileDialog_getSaveFileName*(): QString {.header:headerFile, importcpp:"QFileDialog::getSaveFileName(@)".} # Public static
# 4 default parameters!
proc static_QFileDialog_getExistingDirectory*(parent: ptr QWidget, caption: QString, dir: QString, options: QFlags[QFileDialog_Option]): QString {.header:headerFile, importcpp:"QFileDialog::getExistingDirectory(@)".} # Public static
proc static_QFileDialog_getExistingDirectory*(parent: ptr QWidget, caption: QString, dir: QString): QString {.header:headerFile, importcpp:"QFileDialog::getExistingDirectory(@)".} # Public static
proc static_QFileDialog_getExistingDirectory*(parent: ptr QWidget, caption: QString): QString {.header:headerFile, importcpp:"QFileDialog::getExistingDirectory(@)".} # Public static
proc static_QFileDialog_getExistingDirectory*(parent: ptr QWidget): QString {.header:headerFile, importcpp:"QFileDialog::getExistingDirectory(@)".} # Public static
proc static_QFileDialog_getExistingDirectory*(): QString {.header:headerFile, importcpp:"QFileDialog::getExistingDirectory(@)".} # Public static

# Protected methods methods for QFileDialog
proc done*(this: ptr QFileDialog, result: cint) {.header:headerFile, importcpp:"#.done(@)".} # Protected
proc accept*(this: ptr QFileDialog) {.header:headerFile, importcpp:"#.accept(@)".} # Protected
import nimqt/qtcore/qcoreevent
proc changeEvent*(this: ptr QFileDialog, e: ptr QEvent) {.header:headerFile, importcpp:"#.changeEvent(@)".} # Protected

export qstring
export qnamespace
export qdialog
export qabstractfileiconprovider
export qabstractitemdelegate
export qwidget
export qflags
export qpaintdevice
export qobject
export qcoreevent