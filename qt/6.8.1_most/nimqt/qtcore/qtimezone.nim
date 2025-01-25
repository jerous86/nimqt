const headerFile* = "QtCore/qtimezone.h"

type
    # Enums found in the C++ code
    # Global
    QTimeZone_TimeType* {.header:headerFile,importcpp:"QTimeZone::TimeType".} = enum StandardTime = 0, DaylightTime = 0x1, GenericTime = 0x2
    QTimeZone_NameType* {.header:headerFile,importcpp:"QTimeZone::NameType".} = enum DefaultName = 0, LongName = 0x1, ShortName = 0x2, OffsetName = 0x3

type
    # Classes found in the C++ code
    QTimeZone* {.header:headerFile,importcpp:"QTimeZone" ,pure,inheritable.} = object
    QTimeZone_OffsetData* {.header:headerFile,importcpp:"QTimeZone::OffsetData" ,pure,inheritable.} = object
import nimqt/qtcore/qlist


type
    # typedefs found in the C++ code
    QTimeZone_OffsetDataList * = QList[QTimeZone_OffsetData]

# Consts
const
    # Global
    QTimeZone_MinUtcOffsetSecs* = -50400 # from anonymous enum MinUtcOffsetSecs
    QTimeZone_MaxUtcOffsetSecs* = 50400 # from anonymous enum MaxUtcOffsetSecs

# Stuff for class QTimeZone

# Public constructors for QTimeZone
proc newQTimeZone*(): QTimeZone {. header:headerFile, importcpp:"QTimeZone(@)", constructor .} #
import nimqt/qtcore/qbytearray
proc newQTimeZone*(ianaId: QByteArray): QTimeZone {. header:headerFile, importcpp:"QTimeZone(@)", constructor .} #
proc newQTimeZone*(offsetSeconds: cint): QTimeZone {. header:headerFile, importcpp:"QTimeZone(@)", constructor .} #
import nimqt/qtcore/qstring
import nimqt/qtcore/qlocale
# 1 default parameters!
proc newQTimeZone*(zoneId: QByteArray, offsetSeconds: cint, name: QString, abbreviation: QString, territory: QLocale_Territory, comment: QString): QTimeZone {. header:headerFile, importcpp:"QTimeZone(@)", constructor .} #
proc newQTimeZone*(zoneId: QByteArray, offsetSeconds: cint, name: QString, abbreviation: QString, territory: QLocale_Territory): QTimeZone {. header:headerFile, importcpp:"QTimeZone(@)", constructor .} #
proc newQTimeZone*(other: QTimeZone): QTimeZone {. header:headerFile, importcpp:"QTimeZone(@)", constructor .} #

# Public methods for QTimeZone
proc swap*(this: QTimeZone, other: QTimeZone) {.header:headerFile, importcpp:"#.swap(@)".} # Public
proc `!=`*(this: QTimeZone, other: QTimeZone): bool {.header:headerFile, importcpp:"#.operator!=(@)".} # Public
proc isValid*(this: QTimeZone): bool {.header:headerFile, importcpp:"#.isValid(@)".} # Public
proc id*(this: QTimeZone): QByteArray {.header:headerFile, importcpp:"#.id(@)".} # Public
proc territory*(this: QTimeZone): QLocale_Territory {.header:headerFile, importcpp:"#.territory(@)".} # Public
proc country*(this: QTimeZone): QLocale_Country {.header:headerFile, importcpp:"#.country(@)".} # Public
proc comment*(this: QTimeZone): QString {.header:headerFile, importcpp:"#.comment(@)".} # Public
import nimqt/qtcore/qdatetime
# 1 default parameters!
proc displayName*(this: QTimeZone, atDateTime: QDateTime, nameType: QTimeZone_NameType, locale: QLocale): QString {.header:headerFile, importcpp:"#.displayName(@)".} # Public
proc displayName*(this: QTimeZone, atDateTime: QDateTime, nameType: QTimeZone_NameType): QString {.header:headerFile, importcpp:"#.displayName(@)".} # Public
# 1 default parameters!
proc displayName*(this: QTimeZone, timeType: QTimeZone_TimeType, nameType: QTimeZone_NameType, locale: QLocale): QString {.header:headerFile, importcpp:"#.displayName(@)".} # Public
proc displayName*(this: QTimeZone, timeType: QTimeZone_TimeType, nameType: QTimeZone_NameType): QString {.header:headerFile, importcpp:"#.displayName(@)".} # Public
proc abbreviation*(this: QTimeZone, atDateTime: QDateTime): QString {.header:headerFile, importcpp:"#.abbreviation(@)".} # Public
proc offsetFromUtc*(this: QTimeZone, atDateTime: QDateTime): cint {.header:headerFile, importcpp:"#.offsetFromUtc(@)".} # Public
proc standardTimeOffset*(this: QTimeZone, atDateTime: QDateTime): cint {.header:headerFile, importcpp:"#.standardTimeOffset(@)".} # Public
proc daylightTimeOffset*(this: QTimeZone, atDateTime: QDateTime): cint {.header:headerFile, importcpp:"#.daylightTimeOffset(@)".} # Public
proc hasDaylightTime*(this: QTimeZone): bool {.header:headerFile, importcpp:"#.hasDaylightTime(@)".} # Public
proc isDaylightTime*(this: QTimeZone, atDateTime: QDateTime): bool {.header:headerFile, importcpp:"#.isDaylightTime(@)".} # Public
proc offsetData*(this: QTimeZone, forDateTime: QDateTime): QTimeZone_OffsetData {.header:headerFile, importcpp:"#.offsetData(@)".} # Public
proc hasTransitions*(this: QTimeZone): bool {.header:headerFile, importcpp:"#.hasTransitions(@)".} # Public
proc nextTransition*(this: QTimeZone, afterDateTime: QDateTime): QTimeZone_OffsetData {.header:headerFile, importcpp:"#.nextTransition(@)".} # Public
proc previousTransition*(this: QTimeZone, beforeDateTime: QDateTime): QTimeZone_OffsetData {.header:headerFile, importcpp:"#.previousTransition(@)".} # Public
proc transitions*(this: QTimeZone, fromDateTime: QDateTime, toDateTime: QDateTime): QList[QTimeZone_OffsetData] {.header:headerFile, importcpp:"#.transitions(@)".} # Public
proc static_QTimeZone_systemTimeZoneId*(): QByteArray {.header:headerFile, importcpp:"QTimeZone::systemTimeZoneId(@)".} # Public static
proc static_QTimeZone_systemTimeZone*(): QTimeZone {.header:headerFile, importcpp:"QTimeZone::systemTimeZone(@)".} # Public static
proc static_QTimeZone_utc*(): QTimeZone {.header:headerFile, importcpp:"QTimeZone::utc(@)".} # Public static
proc static_QTimeZone_isTimeZoneIdAvailable*(ianaId: QByteArray): bool {.header:headerFile, importcpp:"QTimeZone::isTimeZoneIdAvailable(@)".} # Public static
proc static_QTimeZone_availableTimeZoneIds*(): QList[QByteArray] {.header:headerFile, importcpp:"QTimeZone::availableTimeZoneIds(@)".} # Public static
proc static_QTimeZone_availableTimeZoneIds*(territory: QLocale_Territory): QList[QByteArray] {.header:headerFile, importcpp:"QTimeZone::availableTimeZoneIds(@)".} # Public static
proc static_QTimeZone_availableTimeZoneIds*(offsetSeconds: cint): QList[QByteArray] {.header:headerFile, importcpp:"QTimeZone::availableTimeZoneIds(@)".} # Public static
proc static_QTimeZone_ianaIdToWindowsId*(ianaId: QByteArray): QByteArray {.header:headerFile, importcpp:"QTimeZone::ianaIdToWindowsId(@)".} # Public static
proc static_QTimeZone_windowsIdToDefaultIanaId*(windowsId: QByteArray): QByteArray {.header:headerFile, importcpp:"QTimeZone::windowsIdToDefaultIanaId(@)".} # Public static
proc static_QTimeZone_windowsIdToDefaultIanaId*(windowsId: QByteArray, territory: QLocale_Territory): QByteArray {.header:headerFile, importcpp:"QTimeZone::windowsIdToDefaultIanaId(@)".} # Public static
proc static_QTimeZone_windowsIdToIanaIds*(windowsId: QByteArray): QList[QByteArray] {.header:headerFile, importcpp:"QTimeZone::windowsIdToIanaIds(@)".} # Public static
proc static_QTimeZone_windowsIdToIanaIds*(windowsId: QByteArray, territory: QLocale_Territory): QList[QByteArray] {.header:headerFile, importcpp:"QTimeZone::windowsIdToIanaIds(@)".} # Public static
proc static_QTimeZone_fromStdTimeZonePtr*(timeZone: ptr cint): QTimeZone {.header:headerFile, importcpp:"QTimeZone::fromStdTimeZonePtr(@)".} # Public static

export qstring
export qlocale
export qbytearray
export qlist
export qdatetime
