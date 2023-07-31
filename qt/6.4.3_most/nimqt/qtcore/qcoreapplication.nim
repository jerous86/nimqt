const headerFile* = "QtCore/qcoreapplication.h"

import nimqt/qtcore/qobject
type
    # Classes found in the C++ code
    QCoreApplication* {.header:headerFile,importcpp:"QCoreApplication" ,pure.} = object of QObject

# Consts
const
    # Global
    QCoreApplication_ApplicationFlags* = 394243 # from anonymous enum ApplicationFlags

# Stuff for class QCoreApplication

# Public constructors for QCoreApplication
proc newQCoreApplication*(argc: cint, argv: ptr ptr char): ptr QCoreApplication {. header:headerFile, importcpp:"new QCoreApplication(@)" .} #

# Public methods for QCoreApplication
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QCoreApplication_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QCoreApplication::tr(@)".} # Public static
proc static_QCoreApplication_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QCoreApplication::tr(@)".} # Public static
import nimqt/qtcore/qstringlist
proc static_QCoreApplication_arguments*(): QStringList {.header:headerFile, importcpp:"QCoreApplication::arguments(@)".} # Public static
import nimqt/qtcore/qnamespace
# 1 default parameters!
proc static_QCoreApplication_setAttribute*(attribute: Qt_ApplicationAttribute, on: bool) {.header:headerFile, importcpp:"QCoreApplication::setAttribute(@)".} # Public static
proc static_QCoreApplication_setAttribute*(attribute: Qt_ApplicationAttribute) {.header:headerFile, importcpp:"QCoreApplication::setAttribute(@)".} # Public static
proc static_QCoreApplication_testAttribute*(attribute: Qt_ApplicationAttribute): bool {.header:headerFile, importcpp:"QCoreApplication::testAttribute(@)".} # Public static
proc static_QCoreApplication_setOrganizationDomain*(orgDomain: QString) {.header:headerFile, importcpp:"QCoreApplication::setOrganizationDomain(@)".} # Public static
proc static_QCoreApplication_organizationDomain*(): QString {.header:headerFile, importcpp:"QCoreApplication::organizationDomain(@)".} # Public static
proc static_QCoreApplication_setOrganizationName*(orgName: QString) {.header:headerFile, importcpp:"QCoreApplication::setOrganizationName(@)".} # Public static
proc static_QCoreApplication_organizationName*(): QString {.header:headerFile, importcpp:"QCoreApplication::organizationName(@)".} # Public static
proc static_QCoreApplication_setApplicationName*(application: QString) {.header:headerFile, importcpp:"QCoreApplication::setApplicationName(@)".} # Public static
proc static_QCoreApplication_applicationName*(): QString {.header:headerFile, importcpp:"QCoreApplication::applicationName(@)".} # Public static
proc static_QCoreApplication_setApplicationVersion*(version: QString) {.header:headerFile, importcpp:"QCoreApplication::setApplicationVersion(@)".} # Public static
proc static_QCoreApplication_applicationVersion*(): QString {.header:headerFile, importcpp:"QCoreApplication::applicationVersion(@)".} # Public static
proc static_QCoreApplication_setSetuidAllowed*(allow: bool) {.header:headerFile, importcpp:"QCoreApplication::setSetuidAllowed(@)".} # Public static
proc static_QCoreApplication_isSetuidAllowed*(): bool {.header:headerFile, importcpp:"QCoreApplication::isSetuidAllowed(@)".} # Public static
proc static_QCoreApplication_instance*(): ptr QCoreApplication {.header:headerFile, importcpp:"QCoreApplication::instance(@)".} # Public static
proc static_QCoreApplication_exec*(): cint {.header:headerFile, importcpp:"QCoreApplication::exec(@)".} # Public static
import nimqt/qtcore/qeventloop
# 1 default parameters!
proc static_QCoreApplication_processEvents*(flags: QEventLoop_ProcessEventsFlags) {.header:headerFile, importcpp:"QCoreApplication::processEvents(@)".} # Public static
proc static_QCoreApplication_processEvents*() {.header:headerFile, importcpp:"QCoreApplication::processEvents(@)".} # Public static
proc static_QCoreApplication_processEvents*(flags: QEventLoop_ProcessEventsFlags, maxtime: cint) {.header:headerFile, importcpp:"QCoreApplication::processEvents(@)".} # Public static
import nimqt/qtcore/qcoreevent
proc static_QCoreApplication_sendEvent*(receiver: ptr QObject, event: ptr QEvent): bool {.header:headerFile, importcpp:"QCoreApplication::sendEvent(@)".} # Public static
# 1 default parameters!
proc static_QCoreApplication_postEvent*(receiver: ptr QObject, event: ptr QEvent, priority: cint) {.header:headerFile, importcpp:"QCoreApplication::postEvent(@)".} # Public static
proc static_QCoreApplication_postEvent*(receiver: ptr QObject, event: ptr QEvent) {.header:headerFile, importcpp:"QCoreApplication::postEvent(@)".} # Public static
# 2 default parameters!
proc static_QCoreApplication_sendPostedEvents*(receiver: ptr QObject, event_type: cint) {.header:headerFile, importcpp:"QCoreApplication::sendPostedEvents(@)".} # Public static
proc static_QCoreApplication_sendPostedEvents*(receiver: ptr QObject) {.header:headerFile, importcpp:"QCoreApplication::sendPostedEvents(@)".} # Public static
proc static_QCoreApplication_sendPostedEvents*() {.header:headerFile, importcpp:"QCoreApplication::sendPostedEvents(@)".} # Public static
# 1 default parameters!
proc static_QCoreApplication_removePostedEvents*(receiver: ptr QObject, eventType: cint) {.header:headerFile, importcpp:"QCoreApplication::removePostedEvents(@)".} # Public static
proc static_QCoreApplication_removePostedEvents*(receiver: ptr QObject) {.header:headerFile, importcpp:"QCoreApplication::removePostedEvents(@)".} # Public static
import nimqt/qtcore/qabstracteventdispatcher
proc static_QCoreApplication_eventDispatcher*(): ptr QAbstractEventDispatcher {.header:headerFile, importcpp:"QCoreApplication::eventDispatcher(@)".} # Public static
proc static_QCoreApplication_setEventDispatcher*(eventDispatcher: ptr QAbstractEventDispatcher) {.header:headerFile, importcpp:"QCoreApplication::setEventDispatcher(@)".} # Public static
proc notify*(this: ptr QCoreApplication, arg_0: ptr QObject, arg_1: ptr QEvent): bool {.header:headerFile, importcpp:"#.notify(@)".} # Public
proc static_QCoreApplication_startingUp*(): bool {.header:headerFile, importcpp:"QCoreApplication::startingUp(@)".} # Public static
proc static_QCoreApplication_closingDown*(): bool {.header:headerFile, importcpp:"QCoreApplication::closingDown(@)".} # Public static
proc static_QCoreApplication_applicationDirPath*(): QString {.header:headerFile, importcpp:"QCoreApplication::applicationDirPath(@)".} # Public static
proc static_QCoreApplication_applicationFilePath*(): QString {.header:headerFile, importcpp:"QCoreApplication::applicationFilePath(@)".} # Public static
proc static_QCoreApplication_applicationPid*(): clonglong {.header:headerFile, importcpp:"QCoreApplication::applicationPid(@)".} # Public static
proc static_QCoreApplication_setLibraryPaths*(arg_0: QStringList) {.header:headerFile, importcpp:"QCoreApplication::setLibraryPaths(@)".} # Public static
proc static_QCoreApplication_libraryPaths*(): QStringList {.header:headerFile, importcpp:"QCoreApplication::libraryPaths(@)".} # Public static
proc static_QCoreApplication_addLibraryPath*(arg_0: QString) {.header:headerFile, importcpp:"QCoreApplication::addLibraryPath(@)".} # Public static
proc static_QCoreApplication_removeLibraryPath*(arg_0: QString) {.header:headerFile, importcpp:"QCoreApplication::removeLibraryPath(@)".} # Public static
import nimqt/qtcore/qtranslator
proc static_QCoreApplication_installTranslator*(messageFile: ptr QTranslator): bool {.header:headerFile, importcpp:"QCoreApplication::installTranslator(@)".} # Public static
proc static_QCoreApplication_removeTranslator*(messageFile: ptr QTranslator): bool {.header:headerFile, importcpp:"QCoreApplication::removeTranslator(@)".} # Public static
# 1 default parameters!
proc static_QCoreApplication_translate*(context: ptr char, key: ptr char, disambiguation: ptr char, n: cint): QString {.header:headerFile, importcpp:"QCoreApplication::translate(@)".} # Public static
proc static_QCoreApplication_translate*(context: ptr char, key: ptr char, disambiguation: ptr char): QString {.header:headerFile, importcpp:"QCoreApplication::translate(@)".} # Public static
import nimqt/qtcore/qabstractnativeeventfilter
proc installNativeEventFilter*(this: ptr QCoreApplication, filterObj: ptr QAbstractNativeEventFilter) {.header:headerFile, importcpp:"#.installNativeEventFilter(@)".} # Public
proc removeNativeEventFilter*(this: ptr QCoreApplication, filterObj: ptr QAbstractNativeEventFilter) {.header:headerFile, importcpp:"#.removeNativeEventFilter(@)".} # Public
proc static_QCoreApplication_isQuitLockEnabled*(): bool {.header:headerFile, importcpp:"QCoreApplication::isQuitLockEnabled(@)".} # Public static
proc static_QCoreApplication_setQuitLockEnabled*(enabled: bool) {.header:headerFile, importcpp:"QCoreApplication::setQuitLockEnabled(@)".} # Public static
proc static_QCoreApplication_quit*() {.header:headerFile, importcpp:"QCoreApplication::quit(@)".} # Public static
# 1 default parameters!
proc static_QCoreApplication_exit*(retcode: cint) {.header:headerFile, importcpp:"QCoreApplication::exit(@)".} # Public static
proc static_QCoreApplication_exit*() {.header:headerFile, importcpp:"QCoreApplication::exit(@)".} # Public static
proc organizationNameChanged*(this: ptr QCoreApplication) {.header:headerFile, importcpp:"#.organizationNameChanged(@)".} # Public
proc organizationDomainChanged*(this: ptr QCoreApplication) {.header:headerFile, importcpp:"#.organizationDomainChanged(@)".} # Public
proc applicationNameChanged*(this: ptr QCoreApplication) {.header:headerFile, importcpp:"#.applicationNameChanged(@)".} # Public
proc applicationVersionChanged*(this: ptr QCoreApplication) {.header:headerFile, importcpp:"#.applicationVersionChanged(@)".} # Public

# Protected methods methods for QCoreApplication
proc event*(this: ptr QCoreApplication, arg_0: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Protected

export qeventloop
export qabstracteventdispatcher
export qstringlist
export qstring
export qtranslator
export qnamespace
export qabstractnativeeventfilter
export qobject
export qcoreevent

# Additional code for qtcore/qcoreapplication
# params refers to the arguments given on the command line. The binary is added in this proc!
template newQCoreApplication*(args:seq[string]): ptr QCoreApplication =
    var args2 = @[getAppFilename()]
    args2.add args

    var argv: cStringArray = allocCstringArray(args2)
    var argc = args2.len.cint

    newQCoreApplication(argc, cast[ptr ptr char](argv))
    # NOTE:newQCoreApplication: In the Qt docs:
    # "Warning: The data referred to by argc and argv must stay valid for the entire lifetime of the QCoreApplication object.
    # In addition, argc must be greater than zero and argv must contain at least one valid character string."
    # So we must *not* deallocCStringArray
    # argv.deallocCStringArray
