const headerFile* = "QtWidgets/qcompleter.h"

type
    # Enums found in the C++ code
    # Global
    QCompleter_CompletionMode* {.header:headerFile,importcpp:"QCompleter::CompletionMode".} = enum PopupCompletion = 0, UnfilteredPopupCompletion = 0x1, InlineCompletion = 0x2
    QCompleter_ModelSorting* {.header:headerFile,importcpp:"QCompleter::ModelSorting".} = enum UnsortedModel = 0, CaseSensitivelySortedModel = 0x1, CaseInsensitivelySortedModel = 0x2

import nimqt/qtcore/qobject
type
    # Classes found in the C++ code
    QCompleter* {.header:headerFile,importcpp:"QCompleter" ,pure.} = object of QObject

# Stuff for class QCompleter

# Public constructors for QCompleter
# 1 default parameters!
proc newQCompleter*(parent: ptr QObject): ptr QCompleter {. header:headerFile, importcpp:"new QCompleter(@)" .} #
proc newQCompleter*(): ptr QCompleter {. header:headerFile, importcpp:"new QCompleter(@)" .} #
import nimqt/qtcore/qabstractitemmodel
# 1 default parameters!
proc newQCompleter*(model: ptr QAbstractItemModel, parent: ptr QObject): ptr QCompleter {. header:headerFile, importcpp:"new QCompleter(@)" .} #
proc newQCompleter*(model: ptr QAbstractItemModel): ptr QCompleter {. header:headerFile, importcpp:"new QCompleter(@)" .} #
import nimqt/qtcore/qstringlist
# 1 default parameters!
proc newQCompleter*(completions: QStringList, parent: ptr QObject): ptr QCompleter {. header:headerFile, importcpp:"new QCompleter(@)" .} #
proc newQCompleter*(completions: QStringList): ptr QCompleter {. header:headerFile, importcpp:"new QCompleter(@)" .} #

# Public methods for QCompleter
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QCompleter_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QCompleter::tr(@)".} # Public static
proc static_QCompleter_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QCompleter::tr(@)".} # Public static
import nimqt/qtwidgets/qwidget
proc setWidget*(this: ptr QCompleter, widget: ptr QWidget) {.header:headerFile, importcpp:"#.setWidget(@)".} # Public
proc widget*(this: ptr QCompleter): ptr QWidget {.header:headerFile, importcpp:"#.widget(@)".} # Public
proc setModel*(this: ptr QCompleter, c: ptr QAbstractItemModel) {.header:headerFile, importcpp:"#.setModel(@)".} # Public
proc model*(this: ptr QCompleter): ptr QAbstractItemModel {.header:headerFile, importcpp:"#.model(@)".} # Public
proc setCompletionMode*(this: ptr QCompleter, mode: QCompleter_CompletionMode) {.header:headerFile, importcpp:"#.setCompletionMode(@)".} # Public
proc completionMode*(this: ptr QCompleter): QCompleter_CompletionMode {.header:headerFile, importcpp:"#.completionMode(@)".} # Public
import nimqt/qtcore/qnamespace
proc setFilterMode*(this: ptr QCompleter, filterMode: Qt_MatchFlags) {.header:headerFile, importcpp:"#.setFilterMode(@)".} # Public
proc filterMode*(this: ptr QCompleter): Qt_MatchFlags {.header:headerFile, importcpp:"#.filterMode(@)".} # Public
import nimqt/qtwidgets/qabstractitemview
proc popup*(this: ptr QCompleter): ptr QAbstractItemView {.header:headerFile, importcpp:"#.popup(@)".} # Public
proc setPopup*(this: ptr QCompleter, popup: ptr QAbstractItemView) {.header:headerFile, importcpp:"#.setPopup(@)".} # Public
proc setCaseSensitivity*(this: ptr QCompleter, caseSensitivity: Qt_CaseSensitivity) {.header:headerFile, importcpp:"#.setCaseSensitivity(@)".} # Public
proc caseSensitivity*(this: ptr QCompleter): Qt_CaseSensitivity {.header:headerFile, importcpp:"#.caseSensitivity(@)".} # Public
proc setModelSorting*(this: ptr QCompleter, sorting: QCompleter_ModelSorting) {.header:headerFile, importcpp:"#.setModelSorting(@)".} # Public
proc modelSorting*(this: ptr QCompleter): QCompleter_ModelSorting {.header:headerFile, importcpp:"#.modelSorting(@)".} # Public
proc setCompletionColumn*(this: ptr QCompleter, column: cint) {.header:headerFile, importcpp:"#.setCompletionColumn(@)".} # Public
proc completionColumn*(this: ptr QCompleter): cint {.header:headerFile, importcpp:"#.completionColumn(@)".} # Public
proc setCompletionRole*(this: ptr QCompleter, role: cint) {.header:headerFile, importcpp:"#.setCompletionRole(@)".} # Public
proc completionRole*(this: ptr QCompleter): cint {.header:headerFile, importcpp:"#.completionRole(@)".} # Public
proc wrapAround*(this: ptr QCompleter): bool {.header:headerFile, importcpp:"#.wrapAround(@)".} # Public
proc maxVisibleItems*(this: ptr QCompleter): cint {.header:headerFile, importcpp:"#.maxVisibleItems(@)".} # Public
proc setMaxVisibleItems*(this: ptr QCompleter, maxItems: cint) {.header:headerFile, importcpp:"#.setMaxVisibleItems(@)".} # Public
proc completionCount*(this: ptr QCompleter): cint {.header:headerFile, importcpp:"#.completionCount(@)".} # Public
proc setCurrentRow*(this: ptr QCompleter, row: cint): bool {.header:headerFile, importcpp:"#.setCurrentRow(@)".} # Public
proc currentRow*(this: ptr QCompleter): cint {.header:headerFile, importcpp:"#.currentRow(@)".} # Public
proc currentIndex*(this: ptr QCompleter): QModelIndex {.header:headerFile, importcpp:"#.currentIndex(@)".} # Public
proc currentCompletion*(this: ptr QCompleter): QString {.header:headerFile, importcpp:"#.currentCompletion(@)".} # Public
proc completionModel*(this: ptr QCompleter): ptr QAbstractItemModel {.header:headerFile, importcpp:"#.completionModel(@)".} # Public
proc completionPrefix*(this: ptr QCompleter): QString {.header:headerFile, importcpp:"#.completionPrefix(@)".} # Public
proc setCompletionPrefix*(this: ptr QCompleter, prefix: QString) {.header:headerFile, importcpp:"#.setCompletionPrefix(@)".} # Public
import nimqt/qtcore/qrect
# 1 default parameters!
proc complete*(this: ptr QCompleter, rect: QRect) {.header:headerFile, importcpp:"#.complete(@)".} # Public
proc complete*(this: ptr QCompleter) {.header:headerFile, importcpp:"#.complete(@)".} # Public
proc setWrapAround*(this: ptr QCompleter, wrap: bool) {.header:headerFile, importcpp:"#.setWrapAround(@)".} # Public
proc pathFromIndex*(this: ptr QCompleter, index: QModelIndex): QString {.header:headerFile, importcpp:"#.pathFromIndex(@)".} # Public
proc splitPath*(this: ptr QCompleter, path: QString): QStringList {.header:headerFile, importcpp:"#.splitPath(@)".} # Public
proc activated*(this: ptr QCompleter, text: QString) {.header:headerFile, importcpp:"#.activated(@)".} # Public
proc activated*(this: ptr QCompleter, index: QModelIndex) {.header:headerFile, importcpp:"#.activated(@)".} # Public
proc highlighted*(this: ptr QCompleter, text: QString) {.header:headerFile, importcpp:"#.highlighted(@)".} # Public
proc highlighted*(this: ptr QCompleter, index: QModelIndex) {.header:headerFile, importcpp:"#.highlighted(@)".} # Public

# Protected methods methods for QCompleter
import nimqt/qtcore/qcoreevent
proc eventFilter*(this: ptr QCompleter, o: ptr QObject, e: ptr QEvent): bool {.header:headerFile, importcpp:"#.eventFilter(@)".} # Protected
proc event*(this: ptr QCompleter, arg_0: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Protected

export qstringlist
export qstring
export qabstractitemview
export qnamespace
export qabstractitemmodel
export qwidget
export qrect
export qobject
export qcoreevent
