const headerFile* = "QtCore/qobject.h"

# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}


type
    # Classes and enums found in the C++ code
    QObjectData* {.header:headerFile,importcpp:"QObjectData" ,pure.} = object {.inheritable.}
    QObject* {.header:headerFile,importcpp:"QObject" ,pure.} = object {.inheritable.}
    QSignalBlocker* {.header:headerFile,importcpp:"QSignalBlocker" ,pure.} = object {.inheritable.}
{.push warning[Deprecated]: on.}
import nimqt/qtcore/qlist


type
    # typedefs found in the C++ code
    QObjectList * = QList[ptr QObject]

# Consts
const
    # Global
    QObjectData_CheckForParentChildLoopsWarnDepth* = 0 # from anonymous enum CheckForParentChildLoopsWarnDepth

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
import nimqt/qtcore/qbytearray
proc dynamicPropertyNames*(this: ptr QObject): QList[QByteArray] {.header:headerFile, importcpp:"#.dynamicPropertyNames(@)".} # Public
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
export qnamespace
export qbytearray
export qlist
export qcoreevent
# Additional code for qtcore/qobject
proc connect*(src:ptr QObject, signal:cstring, dst:ptr QObject, mth:cstring, `type`=AutoConnection) {.header:headerFile ,importcpp:"QObject::connect(@)".}
proc connect*(src:ptr QObject, signal:string, dst:ptr QObject, mth:string, `type`=AutoConnection) = connect(src, signal.cstring, dst, mth.cstring, `type`)
proc event*(nimQObject:ptr QObject, e:ptr QEvent): bool {.header:headerFile , importcpp:"#.event(@)".}
