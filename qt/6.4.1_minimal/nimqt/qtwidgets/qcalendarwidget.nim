const headerFile* = "QtWidgets/qcalendarwidget.h"

import nimqt/qtwidgets/qwidget
# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}


type
    # Classes and enums found in the C++ code
    # Global
    QCalendarWidget_HorizontalHeaderFormat* {.header:headerFile,importcpp:"QCalendarWidget::HorizontalHeaderFormat".} = enum NoHorizontalHeader = 0, SingleLetterDayNames = 0x1, ShortDayNames = 0x2, LongDayNames = 0x3
    QCalendarWidget_VerticalHeaderFormat* {.header:headerFile,importcpp:"QCalendarWidget::VerticalHeaderFormat".} = enum NoVerticalHeader = 0, ISOWeekNumbers = 0x1
    QCalendarWidget_SelectionMode* {.header:headerFile,importcpp:"QCalendarWidget::SelectionMode".} = enum NoSelection = 0, SingleSelection = 0x1
    QCalendarWidget* {.header:headerFile,importcpp:"QCalendarWidget" ,pure.} = object of QWidget
{.push warning[Deprecated]: on.}
import nimqt/qtgui/qpaintdevice


type
    # typedefs found in the C++ code
    QCalendarWidget_RenderFlag * = QWidget_RenderFlag
    QCalendarWidget_RenderFlags * = QWidget_RenderFlags
    QCalendarWidget_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric

# Stuff for class QCalendarWidget

# Public constructors for QCalendarWidget
# 1 default parameters!
proc newQCalendarWidget*(parent: ptr QWidget): ptr QCalendarWidget {. header:headerFile, importcpp:"new QCalendarWidget(@)" .} # 
proc newQCalendarWidget*(): ptr QCalendarWidget {. header:headerFile, importcpp:"new QCalendarWidget(@)" .} # 

# Public methods for QCalendarWidget
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QCalendarWidget_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QCalendarWidget::tr(@)".} # Public static
proc static_QCalendarWidget_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QCalendarWidget::tr(@)".} # Public static
import nimqt/qtcore/qsize
proc sizeHint*(this:ptr QCalendarWidget): QSize {.header:headerFile, importcpp:"#.sizeHint(@)".} # Public 
proc minimumSizeHint*(this:ptr QCalendarWidget): QSize {.header:headerFile, importcpp:"#.minimumSizeHint(@)".} # Public 
proc yearShown*(this:ptr QCalendarWidget): cint {.header:headerFile, importcpp:"#.yearShown(@)".} # Public 
proc monthShown*(this:ptr QCalendarWidget): cint {.header:headerFile, importcpp:"#.monthShown(@)".} # Public 
import nimqt/qtcore/qnamespace
proc firstDayOfWeek*(this:ptr QCalendarWidget): Qt_DayOfWeek {.header:headerFile, importcpp:"#.firstDayOfWeek(@)".} # Public 
proc setFirstDayOfWeek*(this:ptr QCalendarWidget, dayOfWeek: Qt_DayOfWeek) {.header:headerFile, importcpp:"#.setFirstDayOfWeek(@)".} # Public 
proc isNavigationBarVisible*(this:ptr QCalendarWidget): bool {.header:headerFile, importcpp:"#.isNavigationBarVisible(@)".} # Public 
proc isGridVisible*(this:ptr QCalendarWidget): bool {.header:headerFile, importcpp:"#.isGridVisible(@)".} # Public 
proc selectionMode*(this:ptr QCalendarWidget): QCalendarWidget_SelectionMode {.header:headerFile, importcpp:"#.selectionMode(@)".} # Public 
proc setSelectionMode*(this:ptr QCalendarWidget, mode: QCalendarWidget_SelectionMode) {.header:headerFile, importcpp:"#.setSelectionMode(@)".} # Public 
proc horizontalHeaderFormat*(this:ptr QCalendarWidget): QCalendarWidget_HorizontalHeaderFormat {.header:headerFile, importcpp:"#.horizontalHeaderFormat(@)".} # Public 
proc setHorizontalHeaderFormat*(this:ptr QCalendarWidget, format: QCalendarWidget_HorizontalHeaderFormat) {.header:headerFile, importcpp:"#.setHorizontalHeaderFormat(@)".} # Public 
proc verticalHeaderFormat*(this:ptr QCalendarWidget): QCalendarWidget_VerticalHeaderFormat {.header:headerFile, importcpp:"#.verticalHeaderFormat(@)".} # Public 
proc setVerticalHeaderFormat*(this:ptr QCalendarWidget, format: QCalendarWidget_VerticalHeaderFormat) {.header:headerFile, importcpp:"#.setVerticalHeaderFormat(@)".} # Public 
import nimqt/qtgui/qtextformat
proc headerTextFormat*(this:ptr QCalendarWidget): QTextCharFormat {.header:headerFile, importcpp:"#.headerTextFormat(@)".} # Public 
proc setHeaderTextFormat*(this:ptr QCalendarWidget, format: QTextCharFormat) {.header:headerFile, importcpp:"#.setHeaderTextFormat(@)".} # Public 
proc weekdayTextFormat*(this:ptr QCalendarWidget, dayOfWeek: Qt_DayOfWeek): QTextCharFormat {.header:headerFile, importcpp:"#.weekdayTextFormat(@)".} # Public 
proc setWeekdayTextFormat*(this:ptr QCalendarWidget, dayOfWeek: Qt_DayOfWeek, format: QTextCharFormat) {.header:headerFile, importcpp:"#.setWeekdayTextFormat(@)".} # Public 
proc isDateEditEnabled*(this:ptr QCalendarWidget): bool {.header:headerFile, importcpp:"#.isDateEditEnabled(@)".} # Public 
proc setDateEditEnabled*(this:ptr QCalendarWidget, enable: bool) {.header:headerFile, importcpp:"#.setDateEditEnabled(@)".} # Public 
proc dateEditAcceptDelay*(this:ptr QCalendarWidget): cint {.header:headerFile, importcpp:"#.dateEditAcceptDelay(@)".} # Public 
proc setDateEditAcceptDelay*(this:ptr QCalendarWidget, delay: cint) {.header:headerFile, importcpp:"#.setDateEditAcceptDelay(@)".} # Public 
proc setCurrentPage*(this:ptr QCalendarWidget, year: cint, month: cint) {.header:headerFile, importcpp:"#.setCurrentPage(@)".} # Public 
proc setGridVisible*(this:ptr QCalendarWidget, show: bool) {.header:headerFile, importcpp:"#.setGridVisible(@)".} # Public 
proc setNavigationBarVisible*(this:ptr QCalendarWidget, visible: bool) {.header:headerFile, importcpp:"#.setNavigationBarVisible(@)".} # Public 
proc showNextMonth*(this:ptr QCalendarWidget) {.header:headerFile, importcpp:"#.showNextMonth(@)".} # Public 
proc showPreviousMonth*(this:ptr QCalendarWidget) {.header:headerFile, importcpp:"#.showPreviousMonth(@)".} # Public 
proc showNextYear*(this:ptr QCalendarWidget) {.header:headerFile, importcpp:"#.showNextYear(@)".} # Public 
proc showPreviousYear*(this:ptr QCalendarWidget) {.header:headerFile, importcpp:"#.showPreviousYear(@)".} # Public 
proc showSelectedDate*(this:ptr QCalendarWidget) {.header:headerFile, importcpp:"#.showSelectedDate(@)".} # Public 
proc showToday*(this:ptr QCalendarWidget) {.header:headerFile, importcpp:"#.showToday(@)".} # Public 
proc selectionChanged*(this:ptr QCalendarWidget) {.header:headerFile, importcpp:"#.selectionChanged(@)".} # Public 
proc currentPageChanged*(this:ptr QCalendarWidget, year: cint, month: cint) {.header:headerFile, importcpp:"#.currentPageChanged(@)".} # Public 

# Protected methods methods for QCalendarWidget
import nimqt/qtcore/qcoreevent
proc event*(this:ptr QCalendarWidget, event: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Protected 
import nimqt/qtcore/qobject
proc eventFilter*(this:ptr QCalendarWidget, watched: ptr QObject, event: ptr QEvent): bool {.header:headerFile, importcpp:"#.eventFilter(@)".} # Protected 
import nimqt/qtgui/qevent
proc mousePressEvent*(this:ptr QCalendarWidget, event: ptr QMouseEvent) {.header:headerFile, importcpp:"#.mousePressEvent(@)".} # Protected 
proc resizeEvent*(this:ptr QCalendarWidget, event: ptr QResizeEvent) {.header:headerFile, importcpp:"#.resizeEvent(@)".} # Protected 
proc keyPressEvent*(this:ptr QCalendarWidget, event: ptr QKeyEvent) {.header:headerFile, importcpp:"#.keyPressEvent(@)".} # Protected 
proc updateCells*(this:ptr QCalendarWidget) {.header:headerFile, importcpp:"#.updateCells(@)".} # Protected 

export qevent
export qtextformat
export qstring
export qsize
export qnamespace
export qwidget
export qpaintdevice
export qobject
export qcoreevent