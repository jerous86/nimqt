const headerFile* = "QtWidgets/qwizard.h"

type
    # Enums found in the C++ code
    # Global
    QWizard_WizardButton* {.header:headerFile,importcpp:"QWizard::WizardButton".} = enum NoButton = -1, BackButton = 0, NextButton = 0x1, CommitButton = 0x2, 
        FinishButton = 0x3, CancelButton = 0x4, HelpButton = 0x5, CustomButton1 = 0x6, CustomButton2 = 0x7, 
        CustomButton3 = 0x8, Stretch = 0x9
    QWizard_WizardPixmap* {.header:headerFile,importcpp:"QWizard::WizardPixmap".} = enum WatermarkPixmap = 0, LogoPixmap = 0x1, BannerPixmap = 0x2, BackgroundPixmap = 0x3, 
        NPixmaps = 0x4
    QWizard_WizardStyle* {.header:headerFile,importcpp:"QWizard::WizardStyle".} = enum ClassicStyle = 0, ModernStyle = 0x1, MacStyle = 0x2, AeroStyle = 0x3, 
        NStyles = 0x4
    QWizard_WizardOption* {.header:headerFile,importcpp:"QWizard::WizardOption".} = enum IndependentPages = 0x1, IgnoreSubTitles = 0x2, ExtendedWatermarkPixmap = 0x4, NoDefaultButton = 0x8, 
        NoBackButtonOnStartPage = 0x10, NoBackButtonOnLastPage = 0x20, DisabledBackButtonOnLastPage = 0x40, HaveNextButtonOnLastPage = 0x80, HaveFinishButtonOnEarlyPages = 0x100, 
        NoCancelButton = 0x200, CancelButtonOnLeft = 0x400, HaveHelpButton = 0x800, HelpButtonOnRight = 0x1000, HaveCustomButton1 = 0x2000, 
        HaveCustomButton2 = 0x4000, HaveCustomButton3 = 0x8000, NoCancelButtonOnLastPage = 0x10000

import nimqt/qtwidgets/qdialog
import nimqt/qtwidgets/qwidget
type
    # Classes found in the C++ code
    QWizard* {.header:headerFile,importcpp:"QWizard" ,pure.} = object of QDialog
    QWizardPage* {.header:headerFile,importcpp:"QWizardPage" ,pure.} = object of QWidget
import nimqt/qtgui/qpaintdevice
import nimqt/qtcore/qflags


type
    # typedefs found in the C++ code
    QWizard_DialogCode * = QDialog_DialogCode
    QWizard_RenderFlag * = QWidget_RenderFlag
    QWizard_RenderFlags * = QWidget_RenderFlags
    QWizard_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric
    QWizardPage_RenderFlag * = QWidget_RenderFlag
    QWizardPage_RenderFlags * = QWidget_RenderFlags
    QWizardPage_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric
    QWizard_WizardOptions * = QFlags[QWizard_WizardOption]

# Consts
const
    # Global
    QWizard_WizardButtonNStandardButtons* = 6 # from anonymous enum CustomButton1
    QWizard_WizardButtonNButtons* = 9 # from anonymous enum Stretch

# Stuff for class QWizard

# Public constructors for QWizard
import nimqt/qtcore/qnamespace
# 2 default parameters!
proc newQWizard*(parent: ptr QWidget, flags: Qt_WindowFlags): ptr QWizard {. header:headerFile, importcpp:"new QWizard(@)" .} #
proc newQWizard*(parent: ptr QWidget): ptr QWizard {. header:headerFile, importcpp:"new QWizard(@)" .} #
proc newQWizard*(): ptr QWizard {. header:headerFile, importcpp:"new QWizard(@)" .} #

# Public methods for QWizard
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QWizard_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QWizard::tr(@)".} # Public static
proc static_QWizard_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QWizard::tr(@)".} # Public static
proc addPage*(this: ptr QWizard, page: ptr QWizardPage): cint {.header:headerFile, importcpp:"#.addPage(@)".} # Public
proc setPage*(this: ptr QWizard, id: cint, page: ptr QWizardPage) {.header:headerFile, importcpp:"#.setPage(@)".} # Public
proc removePage*(this: ptr QWizard, id: cint) {.header:headerFile, importcpp:"#.removePage(@)".} # Public
proc page*(this: ptr QWizard, id: cint): ptr QWizardPage {.header:headerFile, importcpp:"#.page(@)".} # Public
proc hasVisitedPage*(this: ptr QWizard, id: cint): bool {.header:headerFile, importcpp:"#.hasVisitedPage(@)".} # Public
import nimqt/qtcore/qlist
proc visitedIds*(this: ptr QWizard): QList[cint] {.header:headerFile, importcpp:"#.visitedIds(@)".} # Public
proc pageIds*(this: ptr QWizard): QList[cint] {.header:headerFile, importcpp:"#.pageIds(@)".} # Public
proc setStartId*(this: ptr QWizard, id: cint) {.header:headerFile, importcpp:"#.setStartId(@)".} # Public
proc startId*(this: ptr QWizard): cint {.header:headerFile, importcpp:"#.startId(@)".} # Public
proc currentPage*(this: ptr QWizard): ptr QWizardPage {.header:headerFile, importcpp:"#.currentPage(@)".} # Public
proc currentId*(this: ptr QWizard): cint {.header:headerFile, importcpp:"#.currentId(@)".} # Public
proc validateCurrentPage*(this: ptr QWizard): bool {.header:headerFile, importcpp:"#.validateCurrentPage(@)".} # Public
proc nextId*(this: ptr QWizard): cint {.header:headerFile, importcpp:"#.nextId(@)".} # Public
import nimqt/qtcore/qvariant
proc setField*(this: ptr QWizard, name: QString, value: QVariant) {.header:headerFile, importcpp:"#.setField(@)".} # Public
proc field*(this: ptr QWizard, name: QString): QVariant {.header:headerFile, importcpp:"#.field(@)".} # Public
proc setWizardStyle*(this: ptr QWizard, style: QWizard_WizardStyle) {.header:headerFile, importcpp:"#.setWizardStyle(@)".} # Public
proc wizardStyle*(this: ptr QWizard): QWizard_WizardStyle {.header:headerFile, importcpp:"#.wizardStyle(@)".} # Public
# 1 default parameters!
proc setOption*(this: ptr QWizard, option: QWizard_WizardOption, on: bool) {.header:headerFile, importcpp:"#.setOption(@)".} # Public
proc setOption*(this: ptr QWizard, option: QWizard_WizardOption) {.header:headerFile, importcpp:"#.setOption(@)".} # Public
proc testOption*(this: ptr QWizard, option: QWizard_WizardOption): bool {.header:headerFile, importcpp:"#.testOption(@)".} # Public
proc setOptions*(this: ptr QWizard, options: QFlags[QWizard_WizardOption]) {.header:headerFile, importcpp:"#.setOptions(@)".} # Public
proc options*(this: ptr QWizard): QFlags[QWizard_WizardOption] {.header:headerFile, importcpp:"#.options(@)".} # Public
proc setButtonText*(this: ptr QWizard, which: QWizard_WizardButton, text: QString) {.header:headerFile, importcpp:"#.setButtonText(@)".} # Public
proc buttonText*(this: ptr QWizard, which: QWizard_WizardButton): QString {.header:headerFile, importcpp:"#.buttonText(@)".} # Public
proc setButtonLayout*(this: ptr QWizard, layout: QList[QWizard_WizardButton]) {.header:headerFile, importcpp:"#.setButtonLayout(@)".} # Public
import nimqt/qtwidgets/qabstractbutton
proc setButton*(this: ptr QWizard, which: QWizard_WizardButton, button: ptr QAbstractButton) {.header:headerFile, importcpp:"#.setButton(@)".} # Public
proc button*(this: ptr QWizard, which: QWizard_WizardButton): ptr QAbstractButton {.header:headerFile, importcpp:"#.button(@)".} # Public
proc setTitleFormat*(this: ptr QWizard, format: Qt_TextFormat) {.header:headerFile, importcpp:"#.setTitleFormat(@)".} # Public
proc titleFormat*(this: ptr QWizard): Qt_TextFormat {.header:headerFile, importcpp:"#.titleFormat(@)".} # Public
proc setSubTitleFormat*(this: ptr QWizard, format: Qt_TextFormat) {.header:headerFile, importcpp:"#.setSubTitleFormat(@)".} # Public
proc subTitleFormat*(this: ptr QWizard): Qt_TextFormat {.header:headerFile, importcpp:"#.subTitleFormat(@)".} # Public
import nimqt/qtgui/qpixmap
proc setPixmap*(this: ptr QWizard, which: QWizard_WizardPixmap, pixmap: QPixmap) {.header:headerFile, importcpp:"#.setPixmap(@)".} # Public
proc pixmap*(this: ptr QWizard, which: QWizard_WizardPixmap): QPixmap {.header:headerFile, importcpp:"#.pixmap(@)".} # Public
proc setSideWidget*(this: ptr QWizard, widget: ptr QWidget) {.header:headerFile, importcpp:"#.setSideWidget(@)".} # Public
proc sideWidget*(this: ptr QWizard): ptr QWidget {.header:headerFile, importcpp:"#.sideWidget(@)".} # Public
proc setDefaultProperty*(this: ptr QWizard, className: ptr char, property: ptr char, changedSignal: ptr char) {.header:headerFile, importcpp:"#.setDefaultProperty(@)".} # Public
proc setVisible*(this: ptr QWizard, visible: bool) {.header:headerFile, importcpp:"#.setVisible(@)".} # Public
import nimqt/qtcore/qsize
proc sizeHint*(this: ptr QWizard): QSize {.header:headerFile, importcpp:"#.sizeHint(@)".} # Public
proc currentIdChanged*(this: ptr QWizard, id: cint) {.header:headerFile, importcpp:"#.currentIdChanged(@)".} # Public
proc helpRequested*(this: ptr QWizard) {.header:headerFile, importcpp:"#.helpRequested(@)".} # Public
proc customButtonClicked*(this: ptr QWizard, which: cint) {.header:headerFile, importcpp:"#.customButtonClicked(@)".} # Public
proc pageAdded*(this: ptr QWizard, id: cint) {.header:headerFile, importcpp:"#.pageAdded(@)".} # Public
proc pageRemoved*(this: ptr QWizard, id: cint) {.header:headerFile, importcpp:"#.pageRemoved(@)".} # Public
proc back*(this: ptr QWizard) {.header:headerFile, importcpp:"#.back(@)".} # Public
proc next*(this: ptr QWizard) {.header:headerFile, importcpp:"#.next(@)".} # Public
proc setCurrentId*(this: ptr QWizard, id: cint) {.header:headerFile, importcpp:"#.setCurrentId(@)".} # Public
proc restart*(this: ptr QWizard) {.header:headerFile, importcpp:"#.restart(@)".} # Public

# Protected methods methods for QWizard
import nimqt/qtcore/qcoreevent
proc event*(this: ptr QWizard, event: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Protected
import nimqt/qtgui/qevent
proc resizeEvent*(this: ptr QWizard, event: ptr QResizeEvent) {.header:headerFile, importcpp:"#.resizeEvent(@)".} # Protected
proc paintEvent*(this: ptr QWizard, event: ptr QPaintEvent) {.header:headerFile, importcpp:"#.paintEvent(@)".} # Protected
proc done*(this: ptr QWizard, result: cint) {.header:headerFile, importcpp:"#.done(@)".} # Protected
proc initializePage*(this: ptr QWizard, id: cint) {.header:headerFile, importcpp:"#.initializePage(@)".} # Protected
proc cleanupPage*(this: ptr QWizard, id: cint) {.header:headerFile, importcpp:"#.cleanupPage(@)".} # Protected
# Stuff for class QWizardPage

# Public constructors for QWizardPage
# 1 default parameters!
proc newQWizardPage*(parent: ptr QWidget): ptr QWizardPage {. header:headerFile, importcpp:"new QWizardPage(@)" .} #
proc newQWizardPage*(): ptr QWizardPage {. header:headerFile, importcpp:"new QWizardPage(@)" .} #

# Public methods for QWizardPage
# 1 default parameters!
proc static_QWizardPage_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QWizardPage::tr(@)".} # Public static
proc static_QWizardPage_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QWizardPage::tr(@)".} # Public static
proc setTitle*(this: ptr QWizardPage, title: QString) {.header:headerFile, importcpp:"#.setTitle(@)".} # Public
proc title*(this: ptr QWizardPage): QString {.header:headerFile, importcpp:"#.title(@)".} # Public
proc setSubTitle*(this: ptr QWizardPage, subTitle: QString) {.header:headerFile, importcpp:"#.setSubTitle(@)".} # Public
proc subTitle*(this: ptr QWizardPage): QString {.header:headerFile, importcpp:"#.subTitle(@)".} # Public
proc setPixmap*(this: ptr QWizardPage, which: QWizard_WizardPixmap, pixmap: QPixmap) {.header:headerFile, importcpp:"#.setPixmap(@)".} # Public
proc pixmap*(this: ptr QWizardPage, which: QWizard_WizardPixmap): QPixmap {.header:headerFile, importcpp:"#.pixmap(@)".} # Public
proc setFinalPage*(this: ptr QWizardPage, finalPage: bool) {.header:headerFile, importcpp:"#.setFinalPage(@)".} # Public
proc isFinalPage*(this: ptr QWizardPage): bool {.header:headerFile, importcpp:"#.isFinalPage(@)".} # Public
proc setCommitPage*(this: ptr QWizardPage, commitPage: bool) {.header:headerFile, importcpp:"#.setCommitPage(@)".} # Public
proc isCommitPage*(this: ptr QWizardPage): bool {.header:headerFile, importcpp:"#.isCommitPage(@)".} # Public
proc setButtonText*(this: ptr QWizardPage, which: QWizard_WizardButton, text: QString) {.header:headerFile, importcpp:"#.setButtonText(@)".} # Public
proc buttonText*(this: ptr QWizardPage, which: QWizard_WizardButton): QString {.header:headerFile, importcpp:"#.buttonText(@)".} # Public
proc initializePage*(this: ptr QWizardPage) {.header:headerFile, importcpp:"#.initializePage(@)".} # Public
proc cleanupPage*(this: ptr QWizardPage) {.header:headerFile, importcpp:"#.cleanupPage(@)".} # Public
proc validatePage*(this: ptr QWizardPage): bool {.header:headerFile, importcpp:"#.validatePage(@)".} # Public
proc isComplete*(this: ptr QWizardPage): bool {.header:headerFile, importcpp:"#.isComplete(@)".} # Public
proc nextId*(this: ptr QWizardPage): cint {.header:headerFile, importcpp:"#.nextId(@)".} # Public
proc completeChanged*(this: ptr QWizardPage) {.header:headerFile, importcpp:"#.completeChanged(@)".} # Public

# Protected methods methods for QWizardPage
proc setField*(this: ptr QWizardPage, name: QString, value: QVariant) {.header:headerFile, importcpp:"#.setField(@)".} # Protected
proc field*(this: ptr QWizardPage, name: QString): QVariant {.header:headerFile, importcpp:"#.field(@)".} # Protected
# 2 default parameters!
proc registerField*(this: ptr QWizardPage, name: QString, widget: ptr QWidget, property: ptr char, changedSignal: ptr char) {.header:headerFile, importcpp:"#.registerField(@)".} # Protected
proc registerField*(this: ptr QWizardPage, name: QString, widget: ptr QWidget, property: ptr char) {.header:headerFile, importcpp:"#.registerField(@)".} # Protected
proc registerField*(this: ptr QWizardPage, name: QString, widget: ptr QWidget) {.header:headerFile, importcpp:"#.registerField(@)".} # Protected
proc wizard*(this: ptr QWizardPage): ptr QWizard {.header:headerFile, importcpp:"#.wizard(@)".} # Protected

export qevent
export qpixmap
export qstring
export qsize
export qnamespace
export qlist
export qdialog
export qvariant
export qabstractbutton
export qwidget
export qflags
export qpaintdevice
export qcoreevent
