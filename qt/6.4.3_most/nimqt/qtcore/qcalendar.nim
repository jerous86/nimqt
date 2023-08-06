const headerFile* = "QtCore/qcalendar.h"

type
    # Enums found in the C++ code
    # Global
    QCalendar_System* {.header:headerFile,importcpp:"QCalendar::System".} = enum User = -1, Gregorian = 0, Julian = 0x8, Milankovic = 0x9, 
        Jalali = 0xa, IslamicCivil = 0xb

type
    # Classes found in the C++ code
    QCalendar* {.header:headerFile,importcpp:"QCalendar" ,pure,inheritable.} = object
    QCalendar_YearMonthDay* {.header:headerFile,importcpp:"QCalendar::YearMonthDay" ,pure,inheritable.} = object
    QCalendar_SystemId* {.header:headerFile,importcpp:"QCalendar::SystemId" ,pure,inheritable.} = object

# Consts
const
    # Global
    QCalendar_Unspecified* = 0 # from anonymous enum Unspecified
    QCalendar_SystemLast* = 11 # from anonymous enum IslamicCivil

# Stuff for class QCalendar

# Public constructors for QCalendar
proc newQCalendar*(): QCalendar {. header:headerFile, importcpp:"QCalendar(@)", constructor .} #
proc newQCalendar*(system: QCalendar_System): QCalendar {. header:headerFile, importcpp:"QCalendar(@)", constructor .} #
import nimqt/qtcore/qanystringview
proc newQCalendar*(name: QAnyStringView): QCalendar {. header:headerFile, importcpp:"QCalendar(@)", constructor .} #
proc newQCalendar*(id: QCalendar_SystemId): QCalendar {. header:headerFile, importcpp:"QCalendar(@)", constructor .} #

# Public methods for QCalendar
proc qt_check_for_QGADGET_macro*(this: QCalendar) {.header:headerFile, importcpp:"#.qt_check_for_QGADGET_macro(@)".} # Public
proc isValid*(this: QCalendar): bool {.header:headerFile, importcpp:"#.isValid(@)".} # Public
# 1 default parameters!
proc daysInMonth*(this: QCalendar, month: cint, year: cint): cint {.header:headerFile, importcpp:"#.daysInMonth(@)".} # Public
proc daysInMonth*(this: QCalendar, month: cint): cint {.header:headerFile, importcpp:"#.daysInMonth(@)".} # Public
proc daysInYear*(this: QCalendar, year: cint): cint {.header:headerFile, importcpp:"#.daysInYear(@)".} # Public
proc monthsInYear*(this: QCalendar, year: cint): cint {.header:headerFile, importcpp:"#.monthsInYear(@)".} # Public
proc isDateValid*(this: QCalendar, year: cint, month: cint, day: cint): bool {.header:headerFile, importcpp:"#.isDateValid(@)".} # Public
proc isLeapYear*(this: QCalendar, year: cint): bool {.header:headerFile, importcpp:"#.isLeapYear(@)".} # Public
proc isGregorian*(this: QCalendar): bool {.header:headerFile, importcpp:"#.isGregorian(@)".} # Public
proc isLunar*(this: QCalendar): bool {.header:headerFile, importcpp:"#.isLunar(@)".} # Public
proc isLuniSolar*(this: QCalendar): bool {.header:headerFile, importcpp:"#.isLuniSolar(@)".} # Public
proc isSolar*(this: QCalendar): bool {.header:headerFile, importcpp:"#.isSolar(@)".} # Public
proc isProleptic*(this: QCalendar): bool {.header:headerFile, importcpp:"#.isProleptic(@)".} # Public
proc maximumDaysInMonth*(this: QCalendar): cint {.header:headerFile, importcpp:"#.maximumDaysInMonth(@)".} # Public
proc minimumDaysInMonth*(this: QCalendar): cint {.header:headerFile, importcpp:"#.minimumDaysInMonth(@)".} # Public
proc maximumMonthsInYear*(this: QCalendar): cint {.header:headerFile, importcpp:"#.maximumMonthsInYear(@)".} # Public
import nimqt/qtcore/qstring
proc name*(this: QCalendar): QString {.header:headerFile, importcpp:"#.name(@)".} # Public
import nimqt/qtcore/qdatetime
proc dateFromParts*(this: QCalendar, year: cint, month: cint, day: cint): QDate {.header:headerFile, importcpp:"#.dateFromParts(@)".} # Public
proc dateFromParts*(this: QCalendar, parts: QCalendar_YearMonthDay): QDate {.header:headerFile, importcpp:"#.dateFromParts(@)".} # Public
proc partsFromDate*(this: QCalendar, date: QDate): QCalendar_YearMonthDay {.header:headerFile, importcpp:"#.partsFromDate(@)".} # Public
proc dayOfWeek*(this: QCalendar, date: QDate): cint {.header:headerFile, importcpp:"#.dayOfWeek(@)".} # Public
import nimqt/qtcore/qlocale
# 1 default parameters!
proc monthName*(this: QCalendar, locale: QLocale, month: cint, year: cint, format: QLocale_FormatType): QString {.header:headerFile, importcpp:"#.monthName(@)".} # Public
proc monthName*(this: QCalendar, locale: QLocale, month: cint, year: cint): QString {.header:headerFile, importcpp:"#.monthName(@)".} # Public
# 1 default parameters!
proc standaloneMonthName*(this: QCalendar, locale: QLocale, month: cint, year: cint, format: QLocale_FormatType): QString {.header:headerFile, importcpp:"#.standaloneMonthName(@)".} # Public
proc standaloneMonthName*(this: QCalendar, locale: QLocale, month: cint, year: cint): QString {.header:headerFile, importcpp:"#.standaloneMonthName(@)".} # Public
proc weekDayName*(this: QCalendar, locale: QLocale, day: cint, format: QLocale_FormatType): QString {.header:headerFile, importcpp:"#.weekDayName(@)".} # Public
proc standaloneWeekDayName*(this: QCalendar, locale: QLocale, day: cint, format: QLocale_FormatType): QString {.header:headerFile, importcpp:"#.standaloneWeekDayName(@)".} # Public
import nimqt/qtcore/qstringlist
proc static_QCalendar_availableCalendars*(): QStringList {.header:headerFile, importcpp:"QCalendar::availableCalendars(@)".} # Public static
# Stuff for class QCalendar_YearMonthDay

# Public constructors for QCalendar_YearMonthDay
proc newQCalendar_YearMonthDay*(): QCalendar_YearMonthDay {. header:headerFile, importcpp:"QCalendar_YearMonthDay(@)", constructor .} #
# 2 default parameters!
proc newQCalendar_YearMonthDay*(y: cint, m: cint, d: cint): QCalendar_YearMonthDay {. header:headerFile, importcpp:"QCalendar_YearMonthDay(@)", constructor .} #
proc newQCalendar_YearMonthDay*(y: cint, m: cint): QCalendar_YearMonthDay {. header:headerFile, importcpp:"QCalendar_YearMonthDay(@)", constructor .} #
proc newQCalendar_YearMonthDay*(y: cint): QCalendar_YearMonthDay {. header:headerFile, importcpp:"QCalendar_YearMonthDay(@)", constructor .} #

# Public methods for QCalendar_YearMonthDay
proc isValid*(this: QCalendar_YearMonthDay): bool {.header:headerFile, importcpp:"#.isValid(@)".} # Public
# Stuff for class QCalendar_SystemId

# Public constructors for QCalendar_SystemId
proc newQCalendar_SystemId*(): QCalendar_SystemId {. header:headerFile, importcpp:"QCalendar_SystemId(@)", constructor .} #

# Public methods for QCalendar_SystemId
proc index*(this: QCalendar_SystemId): csize_t {.header:headerFile, importcpp:"#.index(@)".} # Public
proc isValid*(this: QCalendar_SystemId): bool {.header:headerFile, importcpp:"#.isValid(@)".} # Public

export qstringlist
export qstring
export qlocale
export qdatetime
export qanystringview
