const headerFile* = "QtCore/qobject.h"

type
    # Classes found in the C++ code
    QObjectData* {.header:headerFile,importcpp:"QObjectData" ,pure,inheritable.} = object
    QObject* {.header:headerFile,importcpp:"QObject" ,pure,inheritable.} = object
    QSignalBlocker* {.header:headerFile,importcpp:"QSignalBlocker" ,pure,inheritable.} = object
import nimqt/qtcore/qlist


type
    # typedefs found in the C++ code
    QObjectList * = QList[ptr QObject]

# Consts
const
    # Global
    QObjectData_CheckForParentChildLoopsWarnDepth* = 4096 # from anonymous enum CheckForParentChildLoopsWarnDepth

# Stuff for class QObjectData

# Public constructors for QObjectData
proc newQObjectData*(): QObjectData {. header:headerFile, importcpp:"QObjectData(@)", constructor .} #
# Stuff for class QObject

# Public constructors for QObject
# 1 default parameters!
proc newQObject*(parent: ptr QObject): ptr QObject {. header:headerFile, importcpp:"new QObject(@)" .} #
proc newQObject*(): ptr QObject {. header:headerFile, importcpp:"new QObject(@)" .} #

# Public methods for QObject
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QObject_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QObject::tr(@)".} # Public static
proc static_QObject_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QObject::tr(@)".} # Public static
import nimqt/qtcore/qcoreevent
proc event*(this: ptr QObject, event: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Public
proc eventFilter*(this: ptr QObject, watched: ptr QObject, event: ptr QEvent): bool {.header:headerFile, importcpp:"#.eventFilter(@)".} # Public
proc objectName*(this: ptr QObject): QString {.header:headerFile, importcpp:"#.objectName(@)".} # Public
proc setObjectName*(this: ptr QObject, name: QString) {.header:headerFile, importcpp:"#.setObjectName(@)".} # Public
import nimqt/qtcore/qanystringview
proc setObjectName*(this: ptr QObject, name: QAnyStringView) {.header:headerFile, importcpp:"#.setObjectName(@)".} # Public
import nimqt/qtcore/qproperty
proc bindableObjectName*(this: ptr QObject): QBindable[QString] {.header:headerFile, importcpp:"#.bindableObjectName(@)".} # Public
proc isWidgetType*(this: ptr QObject): bool {.header:headerFile, importcpp:"#.isWidgetType(@)".} # Public
proc isWindowType*(this: ptr QObject): bool {.header:headerFile, importcpp:"#.isWindowType(@)".} # Public
proc isQuickItemType*(this: ptr QObject): bool {.header:headerFile, importcpp:"#.isQuickItemType(@)".} # Public
proc signalsBlocked*(this: ptr QObject): bool {.header:headerFile, importcpp:"#.signalsBlocked(@)".} # Public
proc blockSignals*(this: ptr QObject, b: bool): bool {.header:headerFile, importcpp:"#.blockSignals(@)".} # Public
import nimqt/qtcore/qnamespace
proc startTimer*(this: ptr QObject, interval: cint, timerType: Qt_TimerType): cint {.header:headerFile, importcpp:"#.startTimer(@)".} # Public
proc killTimer*(this: ptr QObject, id: cint) {.header:headerFile, importcpp:"#.killTimer(@)".} # Public
proc children*(this: ptr QObject): QObjectList {.header:headerFile, importcpp:"#.children(@)".} # Public
proc setParent*(this: ptr QObject, parent: ptr QObject) {.header:headerFile, importcpp:"#.setParent(@)".} # Public
proc installEventFilter*(this: ptr QObject, filterObj: ptr QObject) {.header:headerFile, importcpp:"#.installEventFilter(@)".} # Public
proc removeEventFilter*(this: ptr QObject, obj: ptr QObject) {.header:headerFile, importcpp:"#.removeEventFilter(@)".} # Public
proc static_QObject_disconnect*(sender: ptr QObject, signal: ptr char, receiver: ptr QObject, member: ptr char): bool {.header:headerFile, importcpp:"QObject::disconnect(@)".} # Public static
# 3 default parameters!
proc disconnect*(this: ptr QObject, signal: ptr char, receiver: ptr QObject, member: ptr char): bool {.header:headerFile, importcpp:"#.disconnect(@)".} # Public
proc disconnect*(this: ptr QObject, signal: ptr char, receiver: ptr QObject): bool {.header:headerFile, importcpp:"#.disconnect(@)".} # Public
proc disconnect*(this: ptr QObject, signal: ptr char): bool {.header:headerFile, importcpp:"#.disconnect(@)".} # Public
proc disconnect*(this: ptr QObject): bool {.header:headerFile, importcpp:"#.disconnect(@)".} # Public
# 1 default parameters!
proc disconnect*(this: ptr QObject, receiver: ptr QObject, member: ptr char): bool {.header:headerFile, importcpp:"#.disconnect(@)".} # Public
proc disconnect*(this: ptr QObject, receiver: ptr QObject): bool {.header:headerFile, importcpp:"#.disconnect(@)".} # Public
proc dumpObjectTree*(this: ptr QObject) {.header:headerFile, importcpp:"#.dumpObjectTree(@)".} # Public
proc dumpObjectInfo*(this: ptr QObject) {.header:headerFile, importcpp:"#.dumpObjectInfo(@)".} # Public
import nimqt/qtcore/qvariant
proc setProperty*(this: ptr QObject, name: ptr char, value: QVariant): bool {.header:headerFile, importcpp:"#.setProperty(@)".} # Public
proc property*(this: ptr QObject, name: ptr char): QVariant {.header:headerFile, importcpp:"#.property(@)".} # Public
import nimqt/qtcore/qbytearray
proc dynamicPropertyNames*(this: ptr QObject): QList[QByteArray] {.header:headerFile, importcpp:"#.dynamicPropertyNames(@)".} # Public
import nimqt/qtcore/qbindingstorage
proc bindingStorage*(this: ptr QObject): ptr QBindingStorage {.header:headerFile, importcpp:"#.bindingStorage(@)".} # Public
# 1 default parameters!
proc destroyed*(this: ptr QObject, arg_0: ptr QObject) {.header:headerFile, importcpp:"#.destroyed(@)".} # Public
proc destroyed*(this: ptr QObject) {.header:headerFile, importcpp:"#.destroyed(@)".} # Public
proc parent*(this: ptr QObject): ptr QObject {.header:headerFile, importcpp:"#.parent(@)".} # Public
proc inherits*(this: ptr QObject, classname: ptr char): bool {.header:headerFile, importcpp:"#.inherits(@)".} # Public
proc deleteLater*(this: ptr QObject) {.header:headerFile, importcpp:"#.deleteLater(@)".} # Public

# Protected methods methods for QObject
proc sender*(this: ptr QObject): ptr QObject {.header:headerFile, importcpp:"#.sender(@)".} # Protected
proc senderSignalIndex*(this: ptr QObject): cint {.header:headerFile, importcpp:"#.senderSignalIndex(@)".} # Protected
proc receivers*(this: ptr QObject, signal: ptr char): cint {.header:headerFile, importcpp:"#.receivers(@)".} # Protected
proc timerEvent*(this: ptr QObject, event: ptr QTimerEvent) {.header:headerFile, importcpp:"#.timerEvent(@)".} # Protected
proc childEvent*(this: ptr QObject, event: ptr QChildEvent) {.header:headerFile, importcpp:"#.childEvent(@)".} # Protected
proc customEvent*(this: ptr QObject, event: ptr QEvent) {.header:headerFile, importcpp:"#.customEvent(@)".} # Protected
# Stuff for class QSignalBlocker

# Public constructors for QSignalBlocker
proc newQSignalBlocker*(o: ptr QObject): QSignalBlocker {. header:headerFile, importcpp:"QSignalBlocker(@)", constructor .} #
proc newQSignalBlocker*(o: QObject): QSignalBlocker {. header:headerFile, importcpp:"QSignalBlocker(@)", constructor .} #
proc newQSignalBlocker*(other: QSignalBlocker): QSignalBlocker {. header:headerFile, importcpp:"QSignalBlocker(@)", constructor .} #

# Public methods for QSignalBlocker
proc reblock*(this: QSignalBlocker) {.header:headerFile, importcpp:"#.reblock(@)".} # Public
proc unblock*(this: QSignalBlocker) {.header:headerFile, importcpp:"#.unblock(@)".} # Public

export qstring
export qproperty
export qnamespace
export qbytearray
export qlist
export qvariant
export qanystringview
export qbindingstorage
export qcoreevent

# Additional code for qtcore/qobject
proc connect*(src:ptr QObject, signal:cstring, dst:ptr QObject, mth:cstring, `type`=AutoConnection) {.header:headerFile ,importcpp:"QObject::connect(@)".}
proc connect*(src:ptr QObject, signal:string, dst:ptr QObject, mth:string, `type`=AutoConnection) = connect(src, signal.cstring, dst, mth.cstring, `type`)

# connect used to be a function, however, to support importing custom
# widgets, it was necessary to change it to a macro.
# 
# This macro (eventually) calls the `connect` method for a functor.
# signalStr must be the signal used to connect regular object, e.g.
#    `SIGNAL "toggled(bool)"` (this is unlike in C++ Qt lingo!).
# The functor must be a function that has the {.exportcpp.} pragma.
# E.g.
# ```
# proc on_functor_clicked() {.exportcpp.} = echo "Functor clicked"
# connect(newQPushButton(Q "Button"), SIGNAL "clicked()", on_functor_clicked)
# ```
import macros
var connectHelperId{.compileTime.} = 0
macro connect*[OBJ,FUN](src:ptr OBJ, signal: string, functor:FUN) = 
    let signalStr = $`signal`
    assert signalStr[0]=='2', "Expected SIGNAL for signal '" & signalStr & "'"
    assert '(' in signalStr, "Expected (possibly empty) arg list for signal '" & signalStr & "'"
    let
        signalName:string=signalStr[1..<signalStr.find('(')]
        objType:string = ($src.getType().repr)["ptr[".len..^2]
        helperName = ident("connectHelper_" & $connectHelperId)
    connectHelperId.inc

    # when an emit is at the top-level, it will be emitted somewhere at the top.
    # However, we do not want that! Therefore, we put the emit inside a procedure.
    # The procedure cannot be put in this module, as the types are not known to QObject,
    # therefore, we put the connectHelper function where it is defined. To avoid duplicate
    # identifiers, we generate unique names for every connect ... There might be better
    # solutions, but for now it suffices ...
    result = quote do:
        proc helperName[OBJ2,FUN2](xsrc:ptr OBJ2, xobjType:static string, xsignalName:static string, xfunctor:FUN2) =
            {.emit: ["QObject::connect(", xsrc, (", &" & xobjType & "::" & xsignalName & ", "), xfunctor ,  ");"] .}
        `helperName`(`src`, `objType`, `signalName`, `functor`)
    result[0][0]=helperName # Change the 'proc helperName' to 'proc ' with the dynamic helperName

proc event*(nimQObject:ptr QObject, e:ptr QEvent): bool {.header:headerFile , importcpp:"#.event(@)".}
