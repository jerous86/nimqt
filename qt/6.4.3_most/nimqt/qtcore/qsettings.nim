const headerFile* = "QtCore/qsettings.h"

type
    # Enums found in the C++ code
    # Global
    QSettings_Status* {.header:headerFile,importcpp:"QSettings::Status".} = enum NoError = 0, AccessError = 0x1, FormatError = 0x2
    QSettings_Format* {.header:headerFile,importcpp:"QSettings::Format".} = enum NativeFormat = 0, IniFormat = 0x1, InvalidFormat = 0x10, CustomFormat1 = 0x11, 
        CustomFormat2 = 0x12, CustomFormat3 = 0x13, CustomFormat4 = 0x14, CustomFormat5 = 0x15, CustomFormat6 = 0x16, 
        CustomFormat7 = 0x17, CustomFormat8 = 0x18, CustomFormat9 = 0x19, CustomFormat10 = 0x1a, CustomFormat11 = 0x1b, 
        CustomFormat12 = 0x1c, CustomFormat13 = 0x1d, CustomFormat14 = 0x1e, CustomFormat15 = 0x1f, CustomFormat16 = 0x20
    QSettings_Scope* {.header:headerFile,importcpp:"QSettings::Scope".} = enum UserScope = 0, SystemScope = 0x1

import nimqt/qtcore/qobject
type
    # Classes found in the C++ code
    QSettings* {.header:headerFile,importcpp:"QSettings" ,pure.} = object of QObject
import nimqt/qtcore/qmap
import nimqt/qtcore/qstring
import nimqt/qtcore/qvariant


type
    # typedefs found in the C++ code
    QSettings_SettingsMap * = QMap[QString, QVariant]

# Stuff for class QSettings

# Public constructors for QSettings
# 2 default parameters!
proc newQSettings*(organization: QString, application: QString, parent: ptr QObject): ptr QSettings {. header:headerFile, importcpp:"new QSettings(@)" .} #
proc newQSettings*(organization: QString, application: QString): ptr QSettings {. header:headerFile, importcpp:"new QSettings(@)" .} #
proc newQSettings*(organization: QString): ptr QSettings {. header:headerFile, importcpp:"new QSettings(@)" .} #
# 2 default parameters!
proc newQSettings*(scope: QSettings_Scope, organization: QString, application: QString, parent: ptr QObject): ptr QSettings {. header:headerFile, importcpp:"new QSettings(@)" .} #
proc newQSettings*(scope: QSettings_Scope, organization: QString, application: QString): ptr QSettings {. header:headerFile, importcpp:"new QSettings(@)" .} #
proc newQSettings*(scope: QSettings_Scope, organization: QString): ptr QSettings {. header:headerFile, importcpp:"new QSettings(@)" .} #
# 2 default parameters!
proc newQSettings*(format: QSettings_Format, scope: QSettings_Scope, organization: QString, application: QString, parent: ptr QObject): ptr QSettings {. header:headerFile, importcpp:"new QSettings(@)" .} #
proc newQSettings*(format: QSettings_Format, scope: QSettings_Scope, organization: QString, application: QString): ptr QSettings {. header:headerFile, importcpp:"new QSettings(@)" .} #
proc newQSettings*(format: QSettings_Format, scope: QSettings_Scope, organization: QString): ptr QSettings {. header:headerFile, importcpp:"new QSettings(@)" .} #
# 1 default parameters!
proc newQSettings*(fileName: QString, format: QSettings_Format, parent: ptr QObject): ptr QSettings {. header:headerFile, importcpp:"new QSettings(@)" .} #
proc newQSettings*(fileName: QString, format: QSettings_Format): ptr QSettings {. header:headerFile, importcpp:"new QSettings(@)" .} #
# 1 default parameters!
proc newQSettings*(parent: ptr QObject): ptr QSettings {. header:headerFile, importcpp:"new QSettings(@)" .} #
proc newQSettings*(): ptr QSettings {. header:headerFile, importcpp:"new QSettings(@)" .} #
# 1 default parameters!
proc newQSettings*(scope: QSettings_Scope, parent: ptr QObject): ptr QSettings {. header:headerFile, importcpp:"new QSettings(@)" .} #
proc newQSettings*(scope: QSettings_Scope): ptr QSettings {. header:headerFile, importcpp:"new QSettings(@)" .} #

# Public methods for QSettings
# 1 default parameters!
proc static_QSettings_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QSettings::tr(@)".} # Public static
proc static_QSettings_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QSettings::tr(@)".} # Public static
proc clear*(this: ptr QSettings) {.header:headerFile, importcpp:"#.clear(@)".} # Public
proc sync*(this: ptr QSettings) {.header:headerFile, importcpp:"#.sync(@)".} # Public
proc status*(this: ptr QSettings): QSettings_Status {.header:headerFile, importcpp:"#.status(@)".} # Public
proc isAtomicSyncRequired*(this: ptr QSettings): bool {.header:headerFile, importcpp:"#.isAtomicSyncRequired(@)".} # Public
proc setAtomicSyncRequired*(this: ptr QSettings, enable: bool) {.header:headerFile, importcpp:"#.setAtomicSyncRequired(@)".} # Public
import nimqt/qtcore/qanystringview
proc beginGroup*(this: ptr QSettings, prefix: QAnyStringView) {.header:headerFile, importcpp:"#.beginGroup(@)".} # Public
proc endGroup*(this: ptr QSettings) {.header:headerFile, importcpp:"#.endGroup(@)".} # Public
proc group*(this: ptr QSettings): QString {.header:headerFile, importcpp:"#.group(@)".} # Public
proc beginReadArray*(this: ptr QSettings, prefix: QAnyStringView): cint {.header:headerFile, importcpp:"#.beginReadArray(@)".} # Public
proc beginWriteArray*(this: ptr QSettings, prefix: QAnyStringView, size: cint) {.header:headerFile, importcpp:"#.beginWriteArray(@)".} # Public
proc endArray*(this: ptr QSettings) {.header:headerFile, importcpp:"#.endArray(@)".} # Public
proc setArrayIndex*(this: ptr QSettings, i: cint) {.header:headerFile, importcpp:"#.setArrayIndex(@)".} # Public
import nimqt/qtcore/qstringlist
proc allKeys*(this: ptr QSettings): QStringList {.header:headerFile, importcpp:"#.allKeys(@)".} # Public
proc childKeys*(this: ptr QSettings): QStringList {.header:headerFile, importcpp:"#.childKeys(@)".} # Public
proc childGroups*(this: ptr QSettings): QStringList {.header:headerFile, importcpp:"#.childGroups(@)".} # Public
proc isWritable*(this: ptr QSettings): bool {.header:headerFile, importcpp:"#.isWritable(@)".} # Public
proc setValue*(this: ptr QSettings, key: QAnyStringView, value: QVariant) {.header:headerFile, importcpp:"#.setValue(@)".} # Public
proc value*(this: ptr QSettings, key: QAnyStringView, defaultValue: QVariant): QVariant {.header:headerFile, importcpp:"#.value(@)".} # Public
proc value*(this: ptr QSettings, key: QAnyStringView): QVariant {.header:headerFile, importcpp:"#.value(@)".} # Public
proc remove*(this: ptr QSettings, key: QAnyStringView) {.header:headerFile, importcpp:"#.remove(@)".} # Public
proc contains*(this: ptr QSettings, key: QAnyStringView): bool {.header:headerFile, importcpp:"#.contains(@)".} # Public
proc setFallbacksEnabled*(this: ptr QSettings, b: bool) {.header:headerFile, importcpp:"#.setFallbacksEnabled(@)".} # Public
proc fallbacksEnabled*(this: ptr QSettings): bool {.header:headerFile, importcpp:"#.fallbacksEnabled(@)".} # Public
proc fileName*(this: ptr QSettings): QString {.header:headerFile, importcpp:"#.fileName(@)".} # Public
proc format*(this: ptr QSettings): QSettings_Format {.header:headerFile, importcpp:"#.format(@)".} # Public
proc scope*(this: ptr QSettings): QSettings_Scope {.header:headerFile, importcpp:"#.scope(@)".} # Public
proc organizationName*(this: ptr QSettings): QString {.header:headerFile, importcpp:"#.organizationName(@)".} # Public
proc applicationName*(this: ptr QSettings): QString {.header:headerFile, importcpp:"#.applicationName(@)".} # Public
proc static_QSettings_setDefaultFormat*(format: QSettings_Format) {.header:headerFile, importcpp:"QSettings::setDefaultFormat(@)".} # Public static
proc static_QSettings_defaultFormat*(): QSettings_Format {.header:headerFile, importcpp:"QSettings::defaultFormat(@)".} # Public static
proc static_QSettings_setPath*(format: QSettings_Format, scope: QSettings_Scope, path: QString) {.header:headerFile, importcpp:"QSettings::setPath(@)".} # Public static

# Protected methods methods for QSettings
import nimqt/qtcore/qcoreevent
proc event*(this: ptr QSettings, event: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Protected

export qmap
export qstringlist
export qstring
export qvariant
export qanystringview
export qobject
export qcoreevent
