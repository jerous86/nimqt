const headerFile* = "QtWidgets/qdatetimeedit.h"

type
    # Enums found in the C++ code
    # Global
    QDateTimeEdit_Section* {.header:headerFile,importcpp:"QDateTimeEdit::Section".} = enum NoSection = 0, AmPmSection = 0x1, MSecSection = 0x2, SecondSection = 0x4, 
        MinuteSection = 0x8, HourSection = 0x10, TimeSections_Mask = 0x1f, DaySection = 0x100, MonthSection = 0x200, 
        YearSection = 0x400, DateSections_Mask = 0x700

import nimqt/qtwidgets/qabstractspinbox
type
    # Classes found in the C++ code
    QDateTimeEdit* {.header:headerFile,importcpp:"QDateTimeEdit" ,pure.} = object of QAbstractSpinBox
    QTimeEdit* {.header:headerFile,importcpp:"QTimeEdit" ,pure.} = object of QDateTimeEdit
    QDateEdit* {.header:headerFile,importcpp:"QDateEdit" ,pure.} = object of QDateTimeEdit
import nimqt/qtwidgets/qwidget
import nimqt/qtgui/qpaintdevice
import nimqt/qtcore/qflags


type
    # typedefs found in the C++ code
    QDateTimeEdit_StepEnabledFlag * = QAbstractSpinBox_StepEnabledFlag
    QDateTimeEdit_ButtonSymbols * = QAbstractSpinBox_ButtonSymbols
    QDateTimeEdit_CorrectionMode * = QAbstractSpinBox_CorrectionMode
    QDateTimeEdit_StepType * = QAbstractSpinBox_StepType
    QDateTimeEdit_StepEnabled * = QAbstractSpinBox_StepEnabled
    QDateTimeEdit_RenderFlag * = QWidget_RenderFlag
    QDateTimeEdit_RenderFlags * = QWidget_RenderFlags
    QDateTimeEdit_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric
    QTimeEdit_Section * = QDateTimeEdit_Section
    QTimeEdit_Sections * = QDateTimeEdit_Sections
    QTimeEdit_StepEnabledFlag * = QAbstractSpinBox_StepEnabledFlag
    QTimeEdit_ButtonSymbols * = QAbstractSpinBox_ButtonSymbols
    QTimeEdit_CorrectionMode * = QAbstractSpinBox_CorrectionMode
    QTimeEdit_StepType * = QAbstractSpinBox_StepType
    QTimeEdit_StepEnabled * = QAbstractSpinBox_StepEnabled
    QTimeEdit_RenderFlag * = QWidget_RenderFlag
    QTimeEdit_RenderFlags * = QWidget_RenderFlags
    QTimeEdit_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric
    QDateEdit_Section * = QDateTimeEdit_Section
    QDateEdit_Sections * = QDateTimeEdit_Sections
    QDateEdit_StepEnabledFlag * = QAbstractSpinBox_StepEnabledFlag
    QDateEdit_ButtonSymbols * = QAbstractSpinBox_ButtonSymbols
    QDateEdit_CorrectionMode * = QAbstractSpinBox_CorrectionMode
    QDateEdit_StepType * = QAbstractSpinBox_StepType
    QDateEdit_StepEnabled * = QAbstractSpinBox_StepEnabled
    QDateEdit_RenderFlag * = QWidget_RenderFlag
    QDateEdit_RenderFlags * = QWidget_RenderFlags
    QDateEdit_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric
    QDateTimeEdit_Sections * = QFlags[QDateTimeEdit_Section]

# Stuff for class QDateTimeEdit

# Public constructors for QDateTimeEdit
# 1 default parameters!
proc newQDateTimeEdit*(parent: ptr QWidget): ptr QDateTimeEdit {. header:headerFile, importcpp:"new QDateTimeEdit(@)" .} #
proc newQDateTimeEdit*(): ptr QDateTimeEdit {. header:headerFile, importcpp:"new QDateTimeEdit(@)" .} #
import nimqt/qtcore/qdatetime
# 1 default parameters!
proc newQDateTimeEdit*(dt: QDateTime, parent: ptr QWidget): ptr QDateTimeEdit {. header:headerFile, importcpp:"new QDateTimeEdit(@)" .} #
proc newQDateTimeEdit*(dt: QDateTime): ptr QDateTimeEdit {. header:headerFile, importcpp:"new QDateTimeEdit(@)" .} #
# 1 default parameters!
proc newQDateTimeEdit*(d: QDate, parent: ptr QWidget): ptr QDateTimeEdit {. header:headerFile, importcpp:"new QDateTimeEdit(@)" .} #
proc newQDateTimeEdit*(d: QDate): ptr QDateTimeEdit {. header:headerFile, importcpp:"new QDateTimeEdit(@)" .} #
# 1 default parameters!
proc newQDateTimeEdit*(t: QTime, parent: ptr QWidget): ptr QDateTimeEdit {. header:headerFile, importcpp:"new QDateTimeEdit(@)" .} #
proc newQDateTimeEdit*(t: QTime): ptr QDateTimeEdit {. header:headerFile, importcpp:"new QDateTimeEdit(@)" .} #

# Public methods for QDateTimeEdit
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QDateTimeEdit_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QDateTimeEdit::tr(@)".} # Public static
proc static_QDateTimeEdit_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QDateTimeEdit::tr(@)".} # Public static
proc dateTime*(this: ptr QDateTimeEdit): QDateTime {.header:headerFile, importcpp:"#.dateTime(@)".} # Public
proc date*(this: ptr QDateTimeEdit): QDate {.header:headerFile, importcpp:"#.date(@)".} # Public
proc time*(this: ptr QDateTimeEdit): QTime {.header:headerFile, importcpp:"#.time(@)".} # Public
import nimqt/qtcore/qcalendar
proc calendar*(this: ptr QDateTimeEdit): QCalendar {.header:headerFile, importcpp:"#.calendar(@)".} # Public
proc setCalendar*(this: ptr QDateTimeEdit, calendar: QCalendar) {.header:headerFile, importcpp:"#.setCalendar(@)".} # Public
proc minimumDateTime*(this: ptr QDateTimeEdit): QDateTime {.header:headerFile, importcpp:"#.minimumDateTime(@)".} # Public
proc clearMinimumDateTime*(this: ptr QDateTimeEdit) {.header:headerFile, importcpp:"#.clearMinimumDateTime(@)".} # Public
proc setMinimumDateTime*(this: ptr QDateTimeEdit, dt: QDateTime) {.header:headerFile, importcpp:"#.setMinimumDateTime(@)".} # Public
proc maximumDateTime*(this: ptr QDateTimeEdit): QDateTime {.header:headerFile, importcpp:"#.maximumDateTime(@)".} # Public
proc clearMaximumDateTime*(this: ptr QDateTimeEdit) {.header:headerFile, importcpp:"#.clearMaximumDateTime(@)".} # Public
proc setMaximumDateTime*(this: ptr QDateTimeEdit, dt: QDateTime) {.header:headerFile, importcpp:"#.setMaximumDateTime(@)".} # Public
proc setDateTimeRange*(this: ptr QDateTimeEdit, min: QDateTime, max: QDateTime) {.header:headerFile, importcpp:"#.setDateTimeRange(@)".} # Public
proc minimumDate*(this: ptr QDateTimeEdit): QDate {.header:headerFile, importcpp:"#.minimumDate(@)".} # Public
proc setMinimumDate*(this: ptr QDateTimeEdit, min: QDate) {.header:headerFile, importcpp:"#.setMinimumDate(@)".} # Public
proc clearMinimumDate*(this: ptr QDateTimeEdit) {.header:headerFile, importcpp:"#.clearMinimumDate(@)".} # Public
proc maximumDate*(this: ptr QDateTimeEdit): QDate {.header:headerFile, importcpp:"#.maximumDate(@)".} # Public
proc setMaximumDate*(this: ptr QDateTimeEdit, max: QDate) {.header:headerFile, importcpp:"#.setMaximumDate(@)".} # Public
proc clearMaximumDate*(this: ptr QDateTimeEdit) {.header:headerFile, importcpp:"#.clearMaximumDate(@)".} # Public
proc setDateRange*(this: ptr QDateTimeEdit, min: QDate, max: QDate) {.header:headerFile, importcpp:"#.setDateRange(@)".} # Public
proc minimumTime*(this: ptr QDateTimeEdit): QTime {.header:headerFile, importcpp:"#.minimumTime(@)".} # Public
proc setMinimumTime*(this: ptr QDateTimeEdit, min: QTime) {.header:headerFile, importcpp:"#.setMinimumTime(@)".} # Public
proc clearMinimumTime*(this: ptr QDateTimeEdit) {.header:headerFile, importcpp:"#.clearMinimumTime(@)".} # Public
proc maximumTime*(this: ptr QDateTimeEdit): QTime {.header:headerFile, importcpp:"#.maximumTime(@)".} # Public
proc setMaximumTime*(this: ptr QDateTimeEdit, max: QTime) {.header:headerFile, importcpp:"#.setMaximumTime(@)".} # Public
proc clearMaximumTime*(this: ptr QDateTimeEdit) {.header:headerFile, importcpp:"#.clearMaximumTime(@)".} # Public
proc setTimeRange*(this: ptr QDateTimeEdit, min: QTime, max: QTime) {.header:headerFile, importcpp:"#.setTimeRange(@)".} # Public
proc displayedSections*(this: ptr QDateTimeEdit): QFlags[QDateTimeEdit_Section] {.header:headerFile, importcpp:"#.displayedSections(@)".} # Public
proc currentSection*(this: ptr QDateTimeEdit): QDateTimeEdit_Section {.header:headerFile, importcpp:"#.currentSection(@)".} # Public
proc sectionAt*(this: ptr QDateTimeEdit, index: cint): QDateTimeEdit_Section {.header:headerFile, importcpp:"#.sectionAt(@)".} # Public
proc setCurrentSection*(this: ptr QDateTimeEdit, section: QDateTimeEdit_Section) {.header:headerFile, importcpp:"#.setCurrentSection(@)".} # Public
proc currentSectionIndex*(this: ptr QDateTimeEdit): cint {.header:headerFile, importcpp:"#.currentSectionIndex(@)".} # Public
proc setCurrentSectionIndex*(this: ptr QDateTimeEdit, index: cint) {.header:headerFile, importcpp:"#.setCurrentSectionIndex(@)".} # Public
import nimqt/qtwidgets/qcalendarwidget
proc calendarWidget*(this: ptr QDateTimeEdit): ptr QCalendarWidget {.header:headerFile, importcpp:"#.calendarWidget(@)".} # Public
proc setCalendarWidget*(this: ptr QDateTimeEdit, calendarWidget: ptr QCalendarWidget) {.header:headerFile, importcpp:"#.setCalendarWidget(@)".} # Public
proc sectionCount*(this: ptr QDateTimeEdit): cint {.header:headerFile, importcpp:"#.sectionCount(@)".} # Public
proc setSelectedSection*(this: ptr QDateTimeEdit, section: QDateTimeEdit_Section) {.header:headerFile, importcpp:"#.setSelectedSection(@)".} # Public
proc sectionText*(this: ptr QDateTimeEdit, section: QDateTimeEdit_Section): QString {.header:headerFile, importcpp:"#.sectionText(@)".} # Public
proc displayFormat*(this: ptr QDateTimeEdit): QString {.header:headerFile, importcpp:"#.displayFormat(@)".} # Public
proc setDisplayFormat*(this: ptr QDateTimeEdit, format: QString) {.header:headerFile, importcpp:"#.setDisplayFormat(@)".} # Public
proc calendarPopup*(this: ptr QDateTimeEdit): bool {.header:headerFile, importcpp:"#.calendarPopup(@)".} # Public
proc setCalendarPopup*(this: ptr QDateTimeEdit, enable: bool) {.header:headerFile, importcpp:"#.setCalendarPopup(@)".} # Public
import nimqt/qtcore/qnamespace
proc timeSpec*(this: ptr QDateTimeEdit): Qt_TimeSpec {.header:headerFile, importcpp:"#.timeSpec(@)".} # Public
proc setTimeSpec*(this: ptr QDateTimeEdit, spec: Qt_TimeSpec) {.header:headerFile, importcpp:"#.setTimeSpec(@)".} # Public
import nimqt/qtcore/qsize
proc sizeHint*(this: ptr QDateTimeEdit): QSize {.header:headerFile, importcpp:"#.sizeHint(@)".} # Public
proc clear*(this: ptr QDateTimeEdit) {.header:headerFile, importcpp:"#.clear(@)".} # Public
proc stepBy*(this: ptr QDateTimeEdit, steps: cint) {.header:headerFile, importcpp:"#.stepBy(@)".} # Public
import nimqt/qtcore/qcoreevent
proc event*(this: ptr QDateTimeEdit, event: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Public
proc dateTimeChanged*(this: ptr QDateTimeEdit, dateTime: QDateTime) {.header:headerFile, importcpp:"#.dateTimeChanged(@)".} # Public
proc timeChanged*(this: ptr QDateTimeEdit, time: QTime) {.header:headerFile, importcpp:"#.timeChanged(@)".} # Public
proc dateChanged*(this: ptr QDateTimeEdit, date: QDate) {.header:headerFile, importcpp:"#.dateChanged(@)".} # Public
proc setDateTime*(this: ptr QDateTimeEdit, dateTime: QDateTime) {.header:headerFile, importcpp:"#.setDateTime(@)".} # Public
proc setDate*(this: ptr QDateTimeEdit, date: QDate) {.header:headerFile, importcpp:"#.setDate(@)".} # Public
proc setTime*(this: ptr QDateTimeEdit, time: QTime) {.header:headerFile, importcpp:"#.setTime(@)".} # Public

# Protected methods methods for QDateTimeEdit
import nimqt/qtgui/qevent
proc keyPressEvent*(this: ptr QDateTimeEdit, event: ptr QKeyEvent) {.header:headerFile, importcpp:"#.keyPressEvent(@)".} # Protected
proc wheelEvent*(this: ptr QDateTimeEdit, event: ptr QWheelEvent) {.header:headerFile, importcpp:"#.wheelEvent(@)".} # Protected
proc focusInEvent*(this: ptr QDateTimeEdit, event: ptr QFocusEvent) {.header:headerFile, importcpp:"#.focusInEvent(@)".} # Protected
proc focusNextPrevChild*(this: ptr QDateTimeEdit, next: bool): bool {.header:headerFile, importcpp:"#.focusNextPrevChild(@)".} # Protected
import nimqt/qtgui/qvalidator
proc validate*(this: ptr QDateTimeEdit, input: QString, pos: cint): QValidator_State {.header:headerFile, importcpp:"#.validate(@)".} # Protected
proc fixup*(this: ptr QDateTimeEdit, input: QString) {.header:headerFile, importcpp:"#.fixup(@)".} # Protected
proc dateTimeFromText*(this: ptr QDateTimeEdit, text: QString): QDateTime {.header:headerFile, importcpp:"#.dateTimeFromText(@)".} # Protected
proc textFromDateTime*(this: ptr QDateTimeEdit, dt: QDateTime): QString {.header:headerFile, importcpp:"#.textFromDateTime(@)".} # Protected
proc stepEnabled*(this: ptr QDateTimeEdit): QAbstractSpinBox_StepEnabled {.header:headerFile, importcpp:"#.stepEnabled(@)".} # Protected
proc mousePressEvent*(this: ptr QDateTimeEdit, event: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mousePressEvent(@)".} # Protected
proc paintEvent*(this: ptr QDateTimeEdit, event: ptr QPaintEvent) {.header:headerFile, importcpp:"#.paintEvent(@)".} # Protected
# Stuff for class QTimeEdit

# Public constructors for QTimeEdit
# 1 default parameters!
proc newQTimeEdit*(parent: ptr QWidget): ptr QTimeEdit {. header:headerFile, importcpp:"new QTimeEdit(@)" .} #
proc newQTimeEdit*(): ptr QTimeEdit {. header:headerFile, importcpp:"new QTimeEdit(@)" .} #
# 1 default parameters!
proc newQTimeEdit*(time: QTime, parent: ptr QWidget): ptr QTimeEdit {. header:headerFile, importcpp:"new QTimeEdit(@)" .} #
proc newQTimeEdit*(time: QTime): ptr QTimeEdit {. header:headerFile, importcpp:"new QTimeEdit(@)" .} #

# Public methods for QTimeEdit
# 1 default parameters!
proc static_QTimeEdit_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QTimeEdit::tr(@)".} # Public static
proc static_QTimeEdit_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QTimeEdit::tr(@)".} # Public static
proc userTimeChanged*(this: ptr QTimeEdit, time: QTime) {.header:headerFile, importcpp:"#.userTimeChanged(@)".} # Public
# Stuff for class QDateEdit

# Public constructors for QDateEdit
# 1 default parameters!
proc newQDateEdit*(parent: ptr QWidget): ptr QDateEdit {. header:headerFile, importcpp:"new QDateEdit(@)" .} #
proc newQDateEdit*(): ptr QDateEdit {. header:headerFile, importcpp:"new QDateEdit(@)" .} #
# 1 default parameters!
proc newQDateEdit*(date: QDate, parent: ptr QWidget): ptr QDateEdit {. header:headerFile, importcpp:"new QDateEdit(@)" .} #
proc newQDateEdit*(date: QDate): ptr QDateEdit {. header:headerFile, importcpp:"new QDateEdit(@)" .} #

# Public methods for QDateEdit
# 1 default parameters!
proc static_QDateEdit_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QDateEdit::tr(@)".} # Public static
proc static_QDateEdit_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QDateEdit::tr(@)".} # Public static
proc userDateChanged*(this: ptr QDateEdit, date: QDate) {.header:headerFile, importcpp:"#.userDateChanged(@)".} # Public

export qevent
export qstring
export qabstractspinbox
export qcalendar
export qsize
export qnamespace
export qdatetime
export qvalidator
export qwidget
export qflags
export qpaintdevice
export qcalendarwidget
export qcoreevent
