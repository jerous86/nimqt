const headerFile* = "QtWidgets/qfiledialog.h"

type
    # Enums found in the C++ code
    # Global
    QFileDialog_ViewMode* {.header:headerFile,importcpp:"QFileDialog::ViewMode".} = enum Detail = 0, List = 0x1
    QFileDialog_FileMode* {.header:headerFile,importcpp:"QFileDialog::FileMode".} = enum AnyFile = 0, ExistingFile = 0x1, Directory = 0x2, ExistingFiles = 0x3
    QFileDialog_AcceptMode* {.header:headerFile,importcpp:"QFileDialog::AcceptMode".} = enum AcceptOpen = 0, AcceptSave = 0x1
    QFileDialog_DialogLabel* {.header:headerFile,importcpp:"QFileDialog::DialogLabel".} = enum LookIn = 0, FileName = 0x1, FileType = 0x2, Accept = 0x3, 
        Reject = 0x4
    QFileDialog_Option* {.header:headerFile,importcpp:"QFileDialog::Option".} = enum ShowDirsOnly = 0x1, DontResolveSymlinks = 0x2, DontConfirmOverwrite = 0x4, DontUseNativeDialog = 0x8, 
        ReadOnly = 0x10, HideNameFilterDetails = 0x20, DontUseCustomDirectoryIcons = 0x40

import nimqt/qtwidgets/qdialog
type
    # Classes found in the C++ code
    QFileDialog* {.header:headerFile,importcpp:"QFileDialog" ,pure.} = object of QDialog
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
import nimqt/qtcore/qdir
proc setDirectory*(this: ptr QFileDialog, directory: QDir) {.header:headerFile, importcpp:"#.setDirectory(@)".} # Public
proc directory*(this: ptr QFileDialog): QDir {.header:headerFile, importcpp:"#.directory(@)".} # Public
import nimqt/qtcore/qurl
proc setDirectoryUrl*(this: ptr QFileDialog, directory: QUrl) {.header:headerFile, importcpp:"#.setDirectoryUrl(@)".} # Public
proc directoryUrl*(this: ptr QFileDialog): QUrl {.header:headerFile, importcpp:"#.directoryUrl(@)".} # Public
proc selectFile*(this: ptr QFileDialog, filename: QString) {.header:headerFile, importcpp:"#.selectFile(@)".} # Public
import nimqt/qtcore/qstringlist
proc selectedFiles*(this: ptr QFileDialog): QStringList {.header:headerFile, importcpp:"#.selectedFiles(@)".} # Public
proc selectUrl*(this: ptr QFileDialog, url: QUrl) {.header:headerFile, importcpp:"#.selectUrl(@)".} # Public
import nimqt/qtcore/qlist
proc selectedUrls*(this: ptr QFileDialog): QList[QUrl] {.header:headerFile, importcpp:"#.selectedUrls(@)".} # Public
proc setNameFilter*(this: ptr QFileDialog, filter: QString) {.header:headerFile, importcpp:"#.setNameFilter(@)".} # Public
proc setNameFilters*(this: ptr QFileDialog, filters: QStringList) {.header:headerFile, importcpp:"#.setNameFilters(@)".} # Public
proc nameFilters*(this: ptr QFileDialog): QStringList {.header:headerFile, importcpp:"#.nameFilters(@)".} # Public
proc selectNameFilter*(this: ptr QFileDialog, filter: QString) {.header:headerFile, importcpp:"#.selectNameFilter(@)".} # Public
proc selectedMimeTypeFilter*(this: ptr QFileDialog): QString {.header:headerFile, importcpp:"#.selectedMimeTypeFilter(@)".} # Public
proc selectedNameFilter*(this: ptr QFileDialog): QString {.header:headerFile, importcpp:"#.selectedNameFilter(@)".} # Public
proc setMimeTypeFilters*(this: ptr QFileDialog, filters: QStringList) {.header:headerFile, importcpp:"#.setMimeTypeFilters(@)".} # Public
proc mimeTypeFilters*(this: ptr QFileDialog): QStringList {.header:headerFile, importcpp:"#.mimeTypeFilters(@)".} # Public
proc selectMimeTypeFilter*(this: ptr QFileDialog, filter: QString) {.header:headerFile, importcpp:"#.selectMimeTypeFilter(@)".} # Public
proc filter*(this: ptr QFileDialog): QDir_Filters {.header:headerFile, importcpp:"#.filter(@)".} # Public
proc setFilter*(this: ptr QFileDialog, filters: QDir_Filters) {.header:headerFile, importcpp:"#.setFilter(@)".} # Public
proc setViewMode*(this: ptr QFileDialog, mode: QFileDialog_ViewMode) {.header:headerFile, importcpp:"#.setViewMode(@)".} # Public
proc viewMode*(this: ptr QFileDialog): QFileDialog_ViewMode {.header:headerFile, importcpp:"#.viewMode(@)".} # Public
proc setFileMode*(this: ptr QFileDialog, mode: QFileDialog_FileMode) {.header:headerFile, importcpp:"#.setFileMode(@)".} # Public
proc fileMode*(this: ptr QFileDialog): QFileDialog_FileMode {.header:headerFile, importcpp:"#.fileMode(@)".} # Public
proc setAcceptMode*(this: ptr QFileDialog, mode: QFileDialog_AcceptMode) {.header:headerFile, importcpp:"#.setAcceptMode(@)".} # Public
proc acceptMode*(this: ptr QFileDialog): QFileDialog_AcceptMode {.header:headerFile, importcpp:"#.acceptMode(@)".} # Public
proc setSidebarUrls*(this: ptr QFileDialog, urls: QList[QUrl]) {.header:headerFile, importcpp:"#.setSidebarUrls(@)".} # Public
proc sidebarUrls*(this: ptr QFileDialog): QList[QUrl] {.header:headerFile, importcpp:"#.sidebarUrls(@)".} # Public
import nimqt/qtcore/qbytearray
proc saveState*(this: ptr QFileDialog): QByteArray {.header:headerFile, importcpp:"#.saveState(@)".} # Public
proc restoreState*(this: ptr QFileDialog, state: QByteArray): bool {.header:headerFile, importcpp:"#.restoreState(@)".} # Public
proc setDefaultSuffix*(this: ptr QFileDialog, suffix: QString) {.header:headerFile, importcpp:"#.setDefaultSuffix(@)".} # Public
proc defaultSuffix*(this: ptr QFileDialog): QString {.header:headerFile, importcpp:"#.defaultSuffix(@)".} # Public
proc setHistory*(this: ptr QFileDialog, paths: QStringList) {.header:headerFile, importcpp:"#.setHistory(@)".} # Public
proc history*(this: ptr QFileDialog): QStringList {.header:headerFile, importcpp:"#.history(@)".} # Public
import nimqt/qtwidgets/qabstractitemdelegate
proc setItemDelegate*(this: ptr QFileDialog, delegate: ptr QAbstractItemDelegate) {.header:headerFile, importcpp:"#.setItemDelegate(@)".} # Public
proc itemDelegate*(this: ptr QFileDialog): ptr QAbstractItemDelegate {.header:headerFile, importcpp:"#.itemDelegate(@)".} # Public
import nimqt/qtgui/qabstractfileiconprovider
proc setIconProvider*(this: ptr QFileDialog, provider: ptr QAbstractFileIconProvider) {.header:headerFile, importcpp:"#.setIconProvider(@)".} # Public
proc iconProvider*(this: ptr QFileDialog): ptr QAbstractFileIconProvider {.header:headerFile, importcpp:"#.iconProvider(@)".} # Public
proc setLabelText*(this: ptr QFileDialog, label: QFileDialog_DialogLabel, text: QString) {.header:headerFile, importcpp:"#.setLabelText(@)".} # Public
proc labelText*(this: ptr QFileDialog, label: QFileDialog_DialogLabel): QString {.header:headerFile, importcpp:"#.labelText(@)".} # Public
proc setSupportedSchemes*(this: ptr QFileDialog, schemes: QStringList) {.header:headerFile, importcpp:"#.setSupportedSchemes(@)".} # Public
proc supportedSchemes*(this: ptr QFileDialog): QStringList {.header:headerFile, importcpp:"#.supportedSchemes(@)".} # Public
import nimqt/qtcore/qabstractproxymodel
proc setProxyModel*(this: ptr QFileDialog, model: ptr QAbstractProxyModel) {.header:headerFile, importcpp:"#.setProxyModel(@)".} # Public
proc proxyModel*(this: ptr QFileDialog): ptr QAbstractProxyModel {.header:headerFile, importcpp:"#.proxyModel(@)".} # Public
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
proc filesSelected*(this: ptr QFileDialog, files: QStringList) {.header:headerFile, importcpp:"#.filesSelected(@)".} # Public
proc currentChanged*(this: ptr QFileDialog, path: QString) {.header:headerFile, importcpp:"#.currentChanged(@)".} # Public
proc directoryEntered*(this: ptr QFileDialog, directory: QString) {.header:headerFile, importcpp:"#.directoryEntered(@)".} # Public
proc urlSelected*(this: ptr QFileDialog, url: QUrl) {.header:headerFile, importcpp:"#.urlSelected(@)".} # Public
proc urlsSelected*(this: ptr QFileDialog, urls: QList[QUrl]) {.header:headerFile, importcpp:"#.urlsSelected(@)".} # Public
proc currentUrlChanged*(this: ptr QFileDialog, url: QUrl) {.header:headerFile, importcpp:"#.currentUrlChanged(@)".} # Public
proc directoryUrlEntered*(this: ptr QFileDialog, directory: QUrl) {.header:headerFile, importcpp:"#.directoryUrlEntered(@)".} # Public
proc filterSelected*(this: ptr QFileDialog, filter: QString) {.header:headerFile, importcpp:"#.filterSelected(@)".} # Public
# 6 default parameters!
proc static_QFileDialog_getOpenFileName*(parent: ptr QWidget, caption: QString, dir: QString, filter: QString, selectedFilter: ptr QString, options: QFlags[QFileDialog_Option]): QString {.header:headerFile, importcpp:"QFileDialog::getOpenFileName(@)".} # Public static
proc static_QFileDialog_getOpenFileName*(parent: ptr QWidget, caption: QString, dir: QString, filter: QString, selectedFilter: ptr QString): QString {.header:headerFile, importcpp:"QFileDialog::getOpenFileName(@)".} # Public static
proc static_QFileDialog_getOpenFileName*(parent: ptr QWidget, caption: QString, dir: QString, filter: QString): QString {.header:headerFile, importcpp:"QFileDialog::getOpenFileName(@)".} # Public static
proc static_QFileDialog_getOpenFileName*(parent: ptr QWidget, caption: QString, dir: QString): QString {.header:headerFile, importcpp:"QFileDialog::getOpenFileName(@)".} # Public static
proc static_QFileDialog_getOpenFileName*(parent: ptr QWidget, caption: QString): QString {.header:headerFile, importcpp:"QFileDialog::getOpenFileName(@)".} # Public static
proc static_QFileDialog_getOpenFileName*(parent: ptr QWidget): QString {.header:headerFile, importcpp:"QFileDialog::getOpenFileName(@)".} # Public static
proc static_QFileDialog_getOpenFileName*(): QString {.header:headerFile, importcpp:"QFileDialog::getOpenFileName(@)".} # Public static
# 7 default parameters!
proc static_QFileDialog_getOpenFileUrl*(parent: ptr QWidget, caption: QString, dir: QUrl, filter: QString, selectedFilter: ptr QString, options: QFlags[QFileDialog_Option], supportedSchemes: QStringList): QUrl {.header:headerFile, importcpp:"QFileDialog::getOpenFileUrl(@)".} # Public static
proc static_QFileDialog_getOpenFileUrl*(parent: ptr QWidget, caption: QString, dir: QUrl, filter: QString, selectedFilter: ptr QString, options: QFlags[QFileDialog_Option]): QUrl {.header:headerFile, importcpp:"QFileDialog::getOpenFileUrl(@)".} # Public static
proc static_QFileDialog_getOpenFileUrl*(parent: ptr QWidget, caption: QString, dir: QUrl, filter: QString, selectedFilter: ptr QString): QUrl {.header:headerFile, importcpp:"QFileDialog::getOpenFileUrl(@)".} # Public static
proc static_QFileDialog_getOpenFileUrl*(parent: ptr QWidget, caption: QString, dir: QUrl, filter: QString): QUrl {.header:headerFile, importcpp:"QFileDialog::getOpenFileUrl(@)".} # Public static
proc static_QFileDialog_getOpenFileUrl*(parent: ptr QWidget, caption: QString, dir: QUrl): QUrl {.header:headerFile, importcpp:"QFileDialog::getOpenFileUrl(@)".} # Public static
proc static_QFileDialog_getOpenFileUrl*(parent: ptr QWidget, caption: QString): QUrl {.header:headerFile, importcpp:"QFileDialog::getOpenFileUrl(@)".} # Public static
proc static_QFileDialog_getOpenFileUrl*(parent: ptr QWidget): QUrl {.header:headerFile, importcpp:"QFileDialog::getOpenFileUrl(@)".} # Public static
proc static_QFileDialog_getOpenFileUrl*(): QUrl {.header:headerFile, importcpp:"QFileDialog::getOpenFileUrl(@)".} # Public static
# 6 default parameters!
proc static_QFileDialog_getSaveFileName*(parent: ptr QWidget, caption: QString, dir: QString, filter: QString, selectedFilter: ptr QString, options: QFlags[QFileDialog_Option]): QString {.header:headerFile, importcpp:"QFileDialog::getSaveFileName(@)".} # Public static
proc static_QFileDialog_getSaveFileName*(parent: ptr QWidget, caption: QString, dir: QString, filter: QString, selectedFilter: ptr QString): QString {.header:headerFile, importcpp:"QFileDialog::getSaveFileName(@)".} # Public static
proc static_QFileDialog_getSaveFileName*(parent: ptr QWidget, caption: QString, dir: QString, filter: QString): QString {.header:headerFile, importcpp:"QFileDialog::getSaveFileName(@)".} # Public static
proc static_QFileDialog_getSaveFileName*(parent: ptr QWidget, caption: QString, dir: QString): QString {.header:headerFile, importcpp:"QFileDialog::getSaveFileName(@)".} # Public static
proc static_QFileDialog_getSaveFileName*(parent: ptr QWidget, caption: QString): QString {.header:headerFile, importcpp:"QFileDialog::getSaveFileName(@)".} # Public static
proc static_QFileDialog_getSaveFileName*(parent: ptr QWidget): QString {.header:headerFile, importcpp:"QFileDialog::getSaveFileName(@)".} # Public static
proc static_QFileDialog_getSaveFileName*(): QString {.header:headerFile, importcpp:"QFileDialog::getSaveFileName(@)".} # Public static
# 7 default parameters!
proc static_QFileDialog_getSaveFileUrl*(parent: ptr QWidget, caption: QString, dir: QUrl, filter: QString, selectedFilter: ptr QString, options: QFlags[QFileDialog_Option], supportedSchemes: QStringList): QUrl {.header:headerFile, importcpp:"QFileDialog::getSaveFileUrl(@)".} # Public static
proc static_QFileDialog_getSaveFileUrl*(parent: ptr QWidget, caption: QString, dir: QUrl, filter: QString, selectedFilter: ptr QString, options: QFlags[QFileDialog_Option]): QUrl {.header:headerFile, importcpp:"QFileDialog::getSaveFileUrl(@)".} # Public static
proc static_QFileDialog_getSaveFileUrl*(parent: ptr QWidget, caption: QString, dir: QUrl, filter: QString, selectedFilter: ptr QString): QUrl {.header:headerFile, importcpp:"QFileDialog::getSaveFileUrl(@)".} # Public static
proc static_QFileDialog_getSaveFileUrl*(parent: ptr QWidget, caption: QString, dir: QUrl, filter: QString): QUrl {.header:headerFile, importcpp:"QFileDialog::getSaveFileUrl(@)".} # Public static
proc static_QFileDialog_getSaveFileUrl*(parent: ptr QWidget, caption: QString, dir: QUrl): QUrl {.header:headerFile, importcpp:"QFileDialog::getSaveFileUrl(@)".} # Public static
proc static_QFileDialog_getSaveFileUrl*(parent: ptr QWidget, caption: QString): QUrl {.header:headerFile, importcpp:"QFileDialog::getSaveFileUrl(@)".} # Public static
proc static_QFileDialog_getSaveFileUrl*(parent: ptr QWidget): QUrl {.header:headerFile, importcpp:"QFileDialog::getSaveFileUrl(@)".} # Public static
proc static_QFileDialog_getSaveFileUrl*(): QUrl {.header:headerFile, importcpp:"QFileDialog::getSaveFileUrl(@)".} # Public static
# 4 default parameters!
proc static_QFileDialog_getExistingDirectory*(parent: ptr QWidget, caption: QString, dir: QString, options: QFlags[QFileDialog_Option]): QString {.header:headerFile, importcpp:"QFileDialog::getExistingDirectory(@)".} # Public static
proc static_QFileDialog_getExistingDirectory*(parent: ptr QWidget, caption: QString, dir: QString): QString {.header:headerFile, importcpp:"QFileDialog::getExistingDirectory(@)".} # Public static
proc static_QFileDialog_getExistingDirectory*(parent: ptr QWidget, caption: QString): QString {.header:headerFile, importcpp:"QFileDialog::getExistingDirectory(@)".} # Public static
proc static_QFileDialog_getExistingDirectory*(parent: ptr QWidget): QString {.header:headerFile, importcpp:"QFileDialog::getExistingDirectory(@)".} # Public static
proc static_QFileDialog_getExistingDirectory*(): QString {.header:headerFile, importcpp:"QFileDialog::getExistingDirectory(@)".} # Public static
# 5 default parameters!
proc static_QFileDialog_getExistingDirectoryUrl*(parent: ptr QWidget, caption: QString, dir: QUrl, options: QFlags[QFileDialog_Option], supportedSchemes: QStringList): QUrl {.header:headerFile, importcpp:"QFileDialog::getExistingDirectoryUrl(@)".} # Public static
proc static_QFileDialog_getExistingDirectoryUrl*(parent: ptr QWidget, caption: QString, dir: QUrl, options: QFlags[QFileDialog_Option]): QUrl {.header:headerFile, importcpp:"QFileDialog::getExistingDirectoryUrl(@)".} # Public static
proc static_QFileDialog_getExistingDirectoryUrl*(parent: ptr QWidget, caption: QString, dir: QUrl): QUrl {.header:headerFile, importcpp:"QFileDialog::getExistingDirectoryUrl(@)".} # Public static
proc static_QFileDialog_getExistingDirectoryUrl*(parent: ptr QWidget, caption: QString): QUrl {.header:headerFile, importcpp:"QFileDialog::getExistingDirectoryUrl(@)".} # Public static
proc static_QFileDialog_getExistingDirectoryUrl*(parent: ptr QWidget): QUrl {.header:headerFile, importcpp:"QFileDialog::getExistingDirectoryUrl(@)".} # Public static
proc static_QFileDialog_getExistingDirectoryUrl*(): QUrl {.header:headerFile, importcpp:"QFileDialog::getExistingDirectoryUrl(@)".} # Public static
# 6 default parameters!
proc static_QFileDialog_getOpenFileNames*(parent: ptr QWidget, caption: QString, dir: QString, filter: QString, selectedFilter: ptr QString, options: QFlags[QFileDialog_Option]): QStringList {.header:headerFile, importcpp:"QFileDialog::getOpenFileNames(@)".} # Public static
proc static_QFileDialog_getOpenFileNames*(parent: ptr QWidget, caption: QString, dir: QString, filter: QString, selectedFilter: ptr QString): QStringList {.header:headerFile, importcpp:"QFileDialog::getOpenFileNames(@)".} # Public static
proc static_QFileDialog_getOpenFileNames*(parent: ptr QWidget, caption: QString, dir: QString, filter: QString): QStringList {.header:headerFile, importcpp:"QFileDialog::getOpenFileNames(@)".} # Public static
proc static_QFileDialog_getOpenFileNames*(parent: ptr QWidget, caption: QString, dir: QString): QStringList {.header:headerFile, importcpp:"QFileDialog::getOpenFileNames(@)".} # Public static
proc static_QFileDialog_getOpenFileNames*(parent: ptr QWidget, caption: QString): QStringList {.header:headerFile, importcpp:"QFileDialog::getOpenFileNames(@)".} # Public static
proc static_QFileDialog_getOpenFileNames*(parent: ptr QWidget): QStringList {.header:headerFile, importcpp:"QFileDialog::getOpenFileNames(@)".} # Public static
proc static_QFileDialog_getOpenFileNames*(): QStringList {.header:headerFile, importcpp:"QFileDialog::getOpenFileNames(@)".} # Public static
# 7 default parameters!
proc static_QFileDialog_getOpenFileUrls*(parent: ptr QWidget, caption: QString, dir: QUrl, filter: QString, selectedFilter: ptr QString, options: QFlags[QFileDialog_Option], supportedSchemes: QStringList): QList[QUrl] {.header:headerFile, importcpp:"QFileDialog::getOpenFileUrls(@)".} # Public static
proc static_QFileDialog_getOpenFileUrls*(parent: ptr QWidget, caption: QString, dir: QUrl, filter: QString, selectedFilter: ptr QString, options: QFlags[QFileDialog_Option]): QList[QUrl] {.header:headerFile, importcpp:"QFileDialog::getOpenFileUrls(@)".} # Public static
proc static_QFileDialog_getOpenFileUrls*(parent: ptr QWidget, caption: QString, dir: QUrl, filter: QString, selectedFilter: ptr QString): QList[QUrl] {.header:headerFile, importcpp:"QFileDialog::getOpenFileUrls(@)".} # Public static
proc static_QFileDialog_getOpenFileUrls*(parent: ptr QWidget, caption: QString, dir: QUrl, filter: QString): QList[QUrl] {.header:headerFile, importcpp:"QFileDialog::getOpenFileUrls(@)".} # Public static
proc static_QFileDialog_getOpenFileUrls*(parent: ptr QWidget, caption: QString, dir: QUrl): QList[QUrl] {.header:headerFile, importcpp:"QFileDialog::getOpenFileUrls(@)".} # Public static
proc static_QFileDialog_getOpenFileUrls*(parent: ptr QWidget, caption: QString): QList[QUrl] {.header:headerFile, importcpp:"QFileDialog::getOpenFileUrls(@)".} # Public static
proc static_QFileDialog_getOpenFileUrls*(parent: ptr QWidget): QList[QUrl] {.header:headerFile, importcpp:"QFileDialog::getOpenFileUrls(@)".} # Public static
proc static_QFileDialog_getOpenFileUrls*(): QList[QUrl] {.header:headerFile, importcpp:"QFileDialog::getOpenFileUrls(@)".} # Public static
# 1 default parameters!
proc static_QFileDialog_saveFileContent*(fileContent: QByteArray, fileNameHint: QString) {.header:headerFile, importcpp:"QFileDialog::saveFileContent(@)".} # Public static
proc static_QFileDialog_saveFileContent*(fileContent: QByteArray) {.header:headerFile, importcpp:"QFileDialog::saveFileContent(@)".} # Public static

# Protected methods methods for QFileDialog
proc done*(this: ptr QFileDialog, result: cint) {.header:headerFile, importcpp:"#.done(@)".} # Protected
proc accept*(this: ptr QFileDialog) {.header:headerFile, importcpp:"#.accept(@)".} # Protected
import nimqt/qtcore/qcoreevent
proc changeEvent*(this: ptr QFileDialog, e: ptr QEvent) {.header:headerFile, importcpp:"#.changeEvent(@)".} # Protected

export qstringlist
export qurl
export qstring
export qnamespace
export qdir
export qbytearray
export qlist
export qdialog
export qabstractfileiconprovider
export qabstractitemdelegate
export qwidget
export qflags
export qpaintdevice
export qobject
export qabstractproxymodel
export qcoreevent
