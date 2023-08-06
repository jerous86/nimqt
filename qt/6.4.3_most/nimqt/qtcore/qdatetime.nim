const headerFile* = "QtCore/qdatetime.h"

type
    # Enums found in the C++ code
    # Global
    QDateTime_YearRange* {.header:headerFile,importcpp:"QDateTime::YearRange".} = enum First = -292275056, Last = 0x116bd2d2

type
    # Classes found in the C++ code
    QDate* {.header:headerFile,importcpp:"QDate" ,pure,inheritable.} = object
    QTime* {.header:headerFile,importcpp:"QTime" ,pure,inheritable.} = object
    QDateTime* {.header:headerFile,importcpp:"QDateTime" ,pure,inheritable.} = object

# Stuff for class QDate

# Public constructors for QDate
proc newQDate*(): QDate {. header:headerFile, importcpp:"QDate(@)", constructor .} #
proc newQDate*(y: cint, m: cint, d: cint): QDate {. header:headerFile, importcpp:"QDate(@)", constructor .} #
import nimqt/qtcore/qcalendar
proc newQDate*(y: cint, m: cint, d: cint, cal: QCalendar): QDate {. header:headerFile, importcpp:"QDate(@)", constructor .} #

# Public methods for QDate
proc static_QDate_fromStdSysDays*(days: cint): QDate {.header:headerFile, importcpp:"QDate::fromStdSysDays(@)".} # Public static
proc toStdSysDays*(this: QDate): cint {.header:headerFile, importcpp:"#.toStdSysDays(@)".} # Public
proc isNull*(this: QDate): bool {.header:headerFile, importcpp:"#.isNull(@)".} # Public
proc isValid*(this: QDate): bool {.header:headerFile, importcpp:"#.isValid(@)".} # Public
proc year*(this: QDate): cint {.header:headerFile, importcpp:"#.year(@)".} # Public
proc month*(this: QDate): cint {.header:headerFile, importcpp:"#.month(@)".} # Public
proc day*(this: QDate): cint {.header:headerFile, importcpp:"#.day(@)".} # Public
proc dayOfWeek*(this: QDate): cint {.header:headerFile, importcpp:"#.dayOfWeek(@)".} # Public
proc dayOfYear*(this: QDate): cint {.header:headerFile, importcpp:"#.dayOfYear(@)".} # Public
proc daysInMonth*(this: QDate): cint {.header:headerFile, importcpp:"#.daysInMonth(@)".} # Public
proc daysInYear*(this: QDate): cint {.header:headerFile, importcpp:"#.daysInYear(@)".} # Public
# 1 default parameters!
proc weekNumber*(this: QDate, yearNum: ptr cint): cint {.header:headerFile, importcpp:"#.weekNumber(@)".} # Public
proc weekNumber*(this: QDate): cint {.header:headerFile, importcpp:"#.weekNumber(@)".} # Public
proc year*(this: QDate, cal: QCalendar): cint {.header:headerFile, importcpp:"#.year(@)".} # Public
proc month*(this: QDate, cal: QCalendar): cint {.header:headerFile, importcpp:"#.month(@)".} # Public
proc day*(this: QDate, cal: QCalendar): cint {.header:headerFile, importcpp:"#.day(@)".} # Public
proc dayOfWeek*(this: QDate, cal: QCalendar): cint {.header:headerFile, importcpp:"#.dayOfWeek(@)".} # Public
proc dayOfYear*(this: QDate, cal: QCalendar): cint {.header:headerFile, importcpp:"#.dayOfYear(@)".} # Public
proc daysInMonth*(this: QDate, cal: QCalendar): cint {.header:headerFile, importcpp:"#.daysInMonth(@)".} # Public
proc daysInYear*(this: QDate, cal: QCalendar): cint {.header:headerFile, importcpp:"#.daysInYear(@)".} # Public
import nimqt/qtcore/qnamespace
# 1 default parameters!
proc startOfDay*(this: QDate, spec: Qt_TimeSpec, offsetSeconds: cint): QDateTime {.header:headerFile, importcpp:"#.startOfDay(@)".} # Public
proc startOfDay*(this: QDate, spec: Qt_TimeSpec): QDateTime {.header:headerFile, importcpp:"#.startOfDay(@)".} # Public
# 1 default parameters!
proc endOfDay*(this: QDate, spec: Qt_TimeSpec, offsetSeconds: cint): QDateTime {.header:headerFile, importcpp:"#.endOfDay(@)".} # Public
proc endOfDay*(this: QDate, spec: Qt_TimeSpec): QDateTime {.header:headerFile, importcpp:"#.endOfDay(@)".} # Public
import nimqt/qtcore/qtimezone
proc startOfDay*(this: QDate, zone: QTimeZone): QDateTime {.header:headerFile, importcpp:"#.startOfDay(@)".} # Public
proc endOfDay*(this: QDate, zone: QTimeZone): QDateTime {.header:headerFile, importcpp:"#.endOfDay(@)".} # Public
import nimqt/qtcore/qstring
proc toString*(this: QDate, format: Qt_DateFormat): QString {.header:headerFile, importcpp:"#.toString(@)".} # Public
proc toString*(this: QDate, format: QString, cal: QCalendar): QString {.header:headerFile, importcpp:"#.toString(@)".} # Public
proc setDate*(this: QDate, year: cint, month: cint, day: cint): bool {.header:headerFile, importcpp:"#.setDate(@)".} # Public
proc setDate*(this: QDate, year: cint, month: cint, day: cint, cal: QCalendar): bool {.header:headerFile, importcpp:"#.setDate(@)".} # Public
proc getDate*(this: QDate, year: ptr cint, month: ptr cint, day: ptr cint) {.header:headerFile, importcpp:"#.getDate(@)".} # Public
proc addDays*(this: QDate, days: clonglong): QDate {.header:headerFile, importcpp:"#.addDays(@)".} # Public
proc addDuration*(this: QDate, days: cint): QDate {.header:headerFile, importcpp:"#.addDuration(@)".} # Public
proc addMonths*(this: QDate, months: cint): QDate {.header:headerFile, importcpp:"#.addMonths(@)".} # Public
proc addYears*(this: QDate, years: cint): QDate {.header:headerFile, importcpp:"#.addYears(@)".} # Public
proc addMonths*(this: QDate, months: cint, cal: QCalendar): QDate {.header:headerFile, importcpp:"#.addMonths(@)".} # Public
proc addYears*(this: QDate, years: cint, cal: QCalendar): QDate {.header:headerFile, importcpp:"#.addYears(@)".} # Public
proc daysTo*(this: QDate, d: QDate): clonglong {.header:headerFile, importcpp:"#.daysTo(@)".} # Public
proc static_QDate_currentDate*(): QDate {.header:headerFile, importcpp:"QDate::currentDate(@)".} # Public static
proc static_QDate_fromString*(string: QString, format: Qt_DateFormat): QDate {.header:headerFile, importcpp:"QDate::fromString(@)".} # Public static
proc static_QDate_fromString*(string: QString, format: QString, cal: QCalendar): QDate {.header:headerFile, importcpp:"QDate::fromString(@)".} # Public static
proc static_QDate_isValid*(y: cint, m: cint, d: cint): bool {.header:headerFile, importcpp:"QDate::isValid(@)".} # Public static
proc static_QDate_isLeapYear*(year: cint): bool {.header:headerFile, importcpp:"QDate::isLeapYear(@)".} # Public static
proc static_QDate_fromJulianDay*(jd: clonglong): QDate {.header:headerFile, importcpp:"QDate::fromJulianDay(@)".} # Public static
proc toJulianDay*(this: QDate): clonglong {.header:headerFile, importcpp:"#.toJulianDay(@)".} # Public
# Stuff for class QTime

# Public constructors for QTime
proc newQTime*(): QTime {. header:headerFile, importcpp:"QTime(@)", constructor .} #
# 2 default parameters!
proc newQTime*(h: cint, m: cint, s: cint, ms: cint): QTime {. header:headerFile, importcpp:"QTime(@)", constructor .} #
proc newQTime*(h: cint, m: cint, s: cint): QTime {. header:headerFile, importcpp:"QTime(@)", constructor .} #
proc newQTime*(h: cint, m: cint): QTime {. header:headerFile, importcpp:"QTime(@)", constructor .} #

# Public methods for QTime
proc isNull*(this: QTime): bool {.header:headerFile, importcpp:"#.isNull(@)".} # Public
proc isValid*(this: QTime): bool {.header:headerFile, importcpp:"#.isValid(@)".} # Public
proc hour*(this: QTime): cint {.header:headerFile, importcpp:"#.hour(@)".} # Public
proc minute*(this: QTime): cint {.header:headerFile, importcpp:"#.minute(@)".} # Public
proc second*(this: QTime): cint {.header:headerFile, importcpp:"#.second(@)".} # Public
proc msec*(this: QTime): cint {.header:headerFile, importcpp:"#.msec(@)".} # Public
proc toString*(this: QTime, f: Qt_DateFormat): QString {.header:headerFile, importcpp:"#.toString(@)".} # Public
proc toString*(this: QTime, format: QString): QString {.header:headerFile, importcpp:"#.toString(@)".} # Public
# 1 default parameters!
proc setHMS*(this: QTime, h: cint, m: cint, s: cint, ms: cint): bool {.header:headerFile, importcpp:"#.setHMS(@)".} # Public
proc setHMS*(this: QTime, h: cint, m: cint, s: cint): bool {.header:headerFile, importcpp:"#.setHMS(@)".} # Public
proc addSecs*(this: QTime, secs: cint): QTime {.header:headerFile, importcpp:"#.addSecs(@)".} # Public
proc secsTo*(this: QTime, t: QTime): cint {.header:headerFile, importcpp:"#.secsTo(@)".} # Public
proc addMSecs*(this: QTime, ms: cint): QTime {.header:headerFile, importcpp:"#.addMSecs(@)".} # Public
proc msecsTo*(this: QTime, t: QTime): cint {.header:headerFile, importcpp:"#.msecsTo(@)".} # Public
proc static_QTime_fromMSecsSinceStartOfDay*(msecs: cint): QTime {.header:headerFile, importcpp:"QTime::fromMSecsSinceStartOfDay(@)".} # Public static
proc msecsSinceStartOfDay*(this: QTime): cint {.header:headerFile, importcpp:"#.msecsSinceStartOfDay(@)".} # Public
proc static_QTime_currentTime*(): QTime {.header:headerFile, importcpp:"QTime::currentTime(@)".} # Public static
proc static_QTime_fromString*(string: QString, format: Qt_DateFormat): QTime {.header:headerFile, importcpp:"QTime::fromString(@)".} # Public static
proc static_QTime_fromString*(string: QString, format: QString): QTime {.header:headerFile, importcpp:"QTime::fromString(@)".} # Public static
# 1 default parameters!
proc static_QTime_isValid*(h: cint, m: cint, s: cint, ms: cint): bool {.header:headerFile, importcpp:"QTime::isValid(@)".} # Public static
proc static_QTime_isValid*(h: cint, m: cint, s: cint): bool {.header:headerFile, importcpp:"QTime::isValid(@)".} # Public static
# Stuff for class QDateTime

# Public constructors for QDateTime
proc newQDateTime*(): QDateTime {. header:headerFile, importcpp:"QDateTime(@)", constructor .} #
# 1 default parameters!
proc newQDateTime*(date: QDate, time: QTime, spec: Qt_TimeSpec, offsetSeconds: cint): QDateTime {. header:headerFile, importcpp:"QDateTime(@)", constructor .} #
proc newQDateTime*(date: QDate, time: QTime, spec: Qt_TimeSpec): QDateTime {. header:headerFile, importcpp:"QDateTime(@)", constructor .} #
proc newQDateTime*(date: QDate, time: QTime, timeZone: QTimeZone): QDateTime {. header:headerFile, importcpp:"QDateTime(@)", constructor .} #
proc newQDateTime*(other: QDateTime): QDateTime {. header:headerFile, importcpp:"QDateTime(@)", constructor .} #

# Public methods for QDateTime
proc swap*(this: QDateTime, other: QDateTime) {.header:headerFile, importcpp:"#.swap(@)".} # Public
proc isNull*(this: QDateTime): bool {.header:headerFile, importcpp:"#.isNull(@)".} # Public
proc isValid*(this: QDateTime): bool {.header:headerFile, importcpp:"#.isValid(@)".} # Public
proc date*(this: QDateTime): QDate {.header:headerFile, importcpp:"#.date(@)".} # Public
proc time*(this: QDateTime): QTime {.header:headerFile, importcpp:"#.time(@)".} # Public
proc timeSpec*(this: QDateTime): Qt_TimeSpec {.header:headerFile, importcpp:"#.timeSpec(@)".} # Public
proc offsetFromUtc*(this: QDateTime): cint {.header:headerFile, importcpp:"#.offsetFromUtc(@)".} # Public
proc timeZone*(this: QDateTime): QTimeZone {.header:headerFile, importcpp:"#.timeZone(@)".} # Public
proc timeZoneAbbreviation*(this: QDateTime): QString {.header:headerFile, importcpp:"#.timeZoneAbbreviation(@)".} # Public
proc isDaylightTime*(this: QDateTime): bool {.header:headerFile, importcpp:"#.isDaylightTime(@)".} # Public
proc toMSecsSinceEpoch*(this: QDateTime): clonglong {.header:headerFile, importcpp:"#.toMSecsSinceEpoch(@)".} # Public
proc toSecsSinceEpoch*(this: QDateTime): clonglong {.header:headerFile, importcpp:"#.toSecsSinceEpoch(@)".} # Public
proc setDate*(this: QDateTime, date: QDate) {.header:headerFile, importcpp:"#.setDate(@)".} # Public
proc setTime*(this: QDateTime, time: QTime) {.header:headerFile, importcpp:"#.setTime(@)".} # Public
proc setTimeSpec*(this: QDateTime, spec: Qt_TimeSpec) {.header:headerFile, importcpp:"#.setTimeSpec(@)".} # Public
proc setOffsetFromUtc*(this: QDateTime, offsetSeconds: cint) {.header:headerFile, importcpp:"#.setOffsetFromUtc(@)".} # Public
proc setTimeZone*(this: QDateTime, toZone: QTimeZone) {.header:headerFile, importcpp:"#.setTimeZone(@)".} # Public
proc setMSecsSinceEpoch*(this: QDateTime, msecs: clonglong) {.header:headerFile, importcpp:"#.setMSecsSinceEpoch(@)".} # Public
proc setSecsSinceEpoch*(this: QDateTime, secs: clonglong) {.header:headerFile, importcpp:"#.setSecsSinceEpoch(@)".} # Public
proc toString*(this: QDateTime, format: Qt_DateFormat): QString {.header:headerFile, importcpp:"#.toString(@)".} # Public
proc toString*(this: QDateTime, format: QString, cal: QCalendar): QString {.header:headerFile, importcpp:"#.toString(@)".} # Public
proc addDays*(this: QDateTime, days: clonglong): QDateTime {.header:headerFile, importcpp:"#.addDays(@)".} # Public
proc addMonths*(this: QDateTime, months: cint): QDateTime {.header:headerFile, importcpp:"#.addMonths(@)".} # Public
proc addYears*(this: QDateTime, years: cint): QDateTime {.header:headerFile, importcpp:"#.addYears(@)".} # Public
proc addSecs*(this: QDateTime, secs: clonglong): QDateTime {.header:headerFile, importcpp:"#.addSecs(@)".} # Public
proc addMSecs*(this: QDateTime, msecs: clonglong): QDateTime {.header:headerFile, importcpp:"#.addMSecs(@)".} # Public
proc toTimeSpec*(this: QDateTime, spec: Qt_TimeSpec): QDateTime {.header:headerFile, importcpp:"#.toTimeSpec(@)".} # Public
proc toLocalTime*(this: QDateTime): QDateTime {.header:headerFile, importcpp:"#.toLocalTime(@)".} # Public
proc toUTC*(this: QDateTime): QDateTime {.header:headerFile, importcpp:"#.toUTC(@)".} # Public
proc toOffsetFromUtc*(this: QDateTime, offsetSeconds: cint): QDateTime {.header:headerFile, importcpp:"#.toOffsetFromUtc(@)".} # Public
proc toTimeZone*(this: QDateTime, toZone: QTimeZone): QDateTime {.header:headerFile, importcpp:"#.toTimeZone(@)".} # Public
proc daysTo*(this: QDateTime, arg_1: QDateTime): clonglong {.header:headerFile, importcpp:"#.daysTo(@)".} # Public
proc secsTo*(this: QDateTime, arg_1: QDateTime): clonglong {.header:headerFile, importcpp:"#.secsTo(@)".} # Public
proc msecsTo*(this: QDateTime, arg_1: QDateTime): clonglong {.header:headerFile, importcpp:"#.msecsTo(@)".} # Public
proc static_QDateTime_currentDateTime*(): QDateTime {.header:headerFile, importcpp:"QDateTime::currentDateTime(@)".} # Public static
proc static_QDateTime_currentDateTimeUtc*(): QDateTime {.header:headerFile, importcpp:"QDateTime::currentDateTimeUtc(@)".} # Public static
proc static_QDateTime_fromString*(string: QString, format: Qt_DateFormat): QDateTime {.header:headerFile, importcpp:"QDateTime::fromString(@)".} # Public static
proc static_QDateTime_fromString*(string: QString, format: QString, cal: QCalendar): QDateTime {.header:headerFile, importcpp:"QDateTime::fromString(@)".} # Public static
# 1 default parameters!
proc static_QDateTime_fromMSecsSinceEpoch*(msecs: clonglong, spec: Qt_TimeSpec, offsetFromUtc: cint): QDateTime {.header:headerFile, importcpp:"QDateTime::fromMSecsSinceEpoch(@)".} # Public static
proc static_QDateTime_fromMSecsSinceEpoch*(msecs: clonglong, spec: Qt_TimeSpec): QDateTime {.header:headerFile, importcpp:"QDateTime::fromMSecsSinceEpoch(@)".} # Public static
# 1 default parameters!
proc static_QDateTime_fromSecsSinceEpoch*(secs: clonglong, spec: Qt_TimeSpec, offsetFromUtc: cint): QDateTime {.header:headerFile, importcpp:"QDateTime::fromSecsSinceEpoch(@)".} # Public static
proc static_QDateTime_fromSecsSinceEpoch*(secs: clonglong, spec: Qt_TimeSpec): QDateTime {.header:headerFile, importcpp:"QDateTime::fromSecsSinceEpoch(@)".} # Public static
proc static_QDateTime_fromMSecsSinceEpoch*(msecs: clonglong, timeZone: QTimeZone): QDateTime {.header:headerFile, importcpp:"QDateTime::fromMSecsSinceEpoch(@)".} # Public static
proc static_QDateTime_fromSecsSinceEpoch*(secs: clonglong, timeZone: QTimeZone): QDateTime {.header:headerFile, importcpp:"QDateTime::fromSecsSinceEpoch(@)".} # Public static
proc static_QDateTime_currentMSecsSinceEpoch*(): clonglong {.header:headerFile, importcpp:"QDateTime::currentMSecsSinceEpoch(@)".} # Public static
proc static_QDateTime_currentSecsSinceEpoch*(): clonglong {.header:headerFile, importcpp:"QDateTime::currentSecsSinceEpoch(@)".} # Public static
proc toStdSysMilliseconds*(this: QDateTime): cint {.header:headerFile, importcpp:"#.toStdSysMilliseconds(@)".} # Public
proc toStdSysSeconds*(this: QDateTime): cint {.header:headerFile, importcpp:"#.toStdSysSeconds(@)".} # Public

export qtimezone
export qstring
export qcalendar
export qnamespace
