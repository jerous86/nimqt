const headerFile* = "QtCore/qsignalmapper.h"

import nimqt/qtcore/qobject
type
    # Classes found in the C++ code
    QSignalMapper* {.header:headerFile,importcpp:"QSignalMapper" ,pure.} = object of QObject

# Stuff for class QSignalMapper

# Public constructors for QSignalMapper
# 1 default parameters!
proc newQSignalMapper*(parent: ptr QObject): ptr QSignalMapper {. header:headerFile, importcpp:"new QSignalMapper(@)" .} #
proc newQSignalMapper*(): ptr QSignalMapper {. header:headerFile, importcpp:"new QSignalMapper(@)" .} #

# Public methods for QSignalMapper
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QSignalMapper_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QSignalMapper::tr(@)".} # Public static
proc static_QSignalMapper_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QSignalMapper::tr(@)".} # Public static
proc setMapping*(this: ptr QSignalMapper, sender: ptr QObject, id: cint) {.header:headerFile, importcpp:"#.setMapping(@)".} # Public
proc setMapping*(this: ptr QSignalMapper, sender: ptr QObject, text: QString) {.header:headerFile, importcpp:"#.setMapping(@)".} # Public
proc setMapping*(this: ptr QSignalMapper, sender: ptr QObject, `object`: ptr QObject) {.header:headerFile, importcpp:"#.setMapping(@)".} # Public
proc removeMappings*(this: ptr QSignalMapper, sender: ptr QObject) {.header:headerFile, importcpp:"#.removeMappings(@)".} # Public
proc mapping*(this: ptr QSignalMapper, id: cint): ptr QObject {.header:headerFile, importcpp:"#.mapping(@)".} # Public
proc mapping*(this: ptr QSignalMapper, text: QString): ptr QObject {.header:headerFile, importcpp:"#.mapping(@)".} # Public
proc mapping*(this: ptr QSignalMapper, `object`: ptr QObject): ptr QObject {.header:headerFile, importcpp:"#.mapping(@)".} # Public
proc mappedInt*(this: ptr QSignalMapper, arg_0: cint) {.header:headerFile, importcpp:"#.mappedInt(@)".} # Public
proc mappedString*(this: ptr QSignalMapper, arg_0: QString) {.header:headerFile, importcpp:"#.mappedString(@)".} # Public
proc mappedObject*(this: ptr QSignalMapper, arg_0: ptr QObject) {.header:headerFile, importcpp:"#.mappedObject(@)".} # Public
proc map*(this: ptr QSignalMapper) {.header:headerFile, importcpp:"#.map(@)".} # Public
proc map*(this: ptr QSignalMapper, sender: ptr QObject) {.header:headerFile, importcpp:"#.map(@)".} # Public

export qstring
export qobject
