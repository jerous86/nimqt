const headerFile* = "QtWidgets/qdatawidgetmapper.h"

type
    # Enums found in the C++ code
    # Global
    QDataWidgetMapper_SubmitPolicy* {.header:headerFile,importcpp:"QDataWidgetMapper::SubmitPolicy".} = enum AutoSubmit = 0, ManualSubmit = 0x1

import nimqt/qtcore/qobject
type
    # Classes found in the C++ code
    QDataWidgetMapper* {.header:headerFile,importcpp:"QDataWidgetMapper" ,pure.} = object of QObject

# Stuff for class QDataWidgetMapper

# Public constructors for QDataWidgetMapper
# 1 default parameters!
proc newQDataWidgetMapper*(parent: ptr QObject): ptr QDataWidgetMapper {. header:headerFile, importcpp:"new QDataWidgetMapper(@)" .} #
proc newQDataWidgetMapper*(): ptr QDataWidgetMapper {. header:headerFile, importcpp:"new QDataWidgetMapper(@)" .} #

# Public methods for QDataWidgetMapper
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QDataWidgetMapper_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QDataWidgetMapper::tr(@)".} # Public static
proc static_QDataWidgetMapper_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QDataWidgetMapper::tr(@)".} # Public static
import nimqt/qtcore/qabstractitemmodel
proc setModel*(this: ptr QDataWidgetMapper, model: ptr QAbstractItemModel) {.header:headerFile, importcpp:"#.setModel(@)".} # Public
proc model*(this: ptr QDataWidgetMapper): ptr QAbstractItemModel {.header:headerFile, importcpp:"#.model(@)".} # Public
import nimqt/qtwidgets/qabstractitemdelegate
proc setItemDelegate*(this: ptr QDataWidgetMapper, delegate: ptr QAbstractItemDelegate) {.header:headerFile, importcpp:"#.setItemDelegate(@)".} # Public
proc itemDelegate*(this: ptr QDataWidgetMapper): ptr QAbstractItemDelegate {.header:headerFile, importcpp:"#.itemDelegate(@)".} # Public
proc setRootIndex*(this: ptr QDataWidgetMapper, index: QModelIndex) {.header:headerFile, importcpp:"#.setRootIndex(@)".} # Public
proc rootIndex*(this: ptr QDataWidgetMapper): QModelIndex {.header:headerFile, importcpp:"#.rootIndex(@)".} # Public
import nimqt/qtcore/qnamespace
proc setOrientation*(this: ptr QDataWidgetMapper, aOrientation: Qt_Orientation) {.header:headerFile, importcpp:"#.setOrientation(@)".} # Public
proc orientation*(this: ptr QDataWidgetMapper): Qt_Orientation {.header:headerFile, importcpp:"#.orientation(@)".} # Public
proc setSubmitPolicy*(this: ptr QDataWidgetMapper, policy: QDataWidgetMapper_SubmitPolicy) {.header:headerFile, importcpp:"#.setSubmitPolicy(@)".} # Public
proc submitPolicy*(this: ptr QDataWidgetMapper): QDataWidgetMapper_SubmitPolicy {.header:headerFile, importcpp:"#.submitPolicy(@)".} # Public
import nimqt/qtwidgets/qwidget
proc addMapping*(this: ptr QDataWidgetMapper, widget: ptr QWidget, section: cint) {.header:headerFile, importcpp:"#.addMapping(@)".} # Public
import nimqt/qtcore/qbytearray
proc addMapping*(this: ptr QDataWidgetMapper, widget: ptr QWidget, section: cint, propertyName: QByteArray) {.header:headerFile, importcpp:"#.addMapping(@)".} # Public
proc removeMapping*(this: ptr QDataWidgetMapper, widget: ptr QWidget) {.header:headerFile, importcpp:"#.removeMapping(@)".} # Public
proc mappedSection*(this: ptr QDataWidgetMapper, widget: ptr QWidget): cint {.header:headerFile, importcpp:"#.mappedSection(@)".} # Public
proc mappedPropertyName*(this: ptr QDataWidgetMapper, widget: ptr QWidget): QByteArray {.header:headerFile, importcpp:"#.mappedPropertyName(@)".} # Public
proc mappedWidgetAt*(this: ptr QDataWidgetMapper, section: cint): ptr QWidget {.header:headerFile, importcpp:"#.mappedWidgetAt(@)".} # Public
proc clearMapping*(this: ptr QDataWidgetMapper) {.header:headerFile, importcpp:"#.clearMapping(@)".} # Public
proc currentIndex*(this: ptr QDataWidgetMapper): cint {.header:headerFile, importcpp:"#.currentIndex(@)".} # Public
proc revert*(this: ptr QDataWidgetMapper) {.header:headerFile, importcpp:"#.revert(@)".} # Public
proc submit*(this: ptr QDataWidgetMapper): bool {.header:headerFile, importcpp:"#.submit(@)".} # Public
proc toFirst*(this: ptr QDataWidgetMapper) {.header:headerFile, importcpp:"#.toFirst(@)".} # Public
proc toLast*(this: ptr QDataWidgetMapper) {.header:headerFile, importcpp:"#.toLast(@)".} # Public
proc toNext*(this: ptr QDataWidgetMapper) {.header:headerFile, importcpp:"#.toNext(@)".} # Public
proc toPrevious*(this: ptr QDataWidgetMapper) {.header:headerFile, importcpp:"#.toPrevious(@)".} # Public
proc setCurrentIndex*(this: ptr QDataWidgetMapper, index: cint) {.header:headerFile, importcpp:"#.setCurrentIndex(@)".} # Public
proc setCurrentModelIndex*(this: ptr QDataWidgetMapper, index: QModelIndex) {.header:headerFile, importcpp:"#.setCurrentModelIndex(@)".} # Public
proc currentIndexChanged*(this: ptr QDataWidgetMapper, index: cint) {.header:headerFile, importcpp:"#.currentIndexChanged(@)".} # Public

export qstring
export qnamespace
export qbytearray
export qabstractitemmodel
export qabstractitemdelegate
export qwidget
export qobject
