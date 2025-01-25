const headerFile* = "QtCore/qmetacontainer.h"

type
    # Classes found in the C++ code
    QMetaContainer* {.header:headerFile,importcpp:"QMetaContainer" ,pure,inheritable.} = object
    QMetaSequence* {.header:headerFile,importcpp:"QMetaSequence" ,pure.} = object of QMetaContainer
    QMetaAssociation* {.header:headerFile,importcpp:"QMetaAssociation" ,pure.} = object of QMetaContainer

# Stuff for class QMetaContainer

# Public constructors for QMetaContainer
proc newQMetaContainer*(): ptr QMetaContainer {. header:headerFile, importcpp:"new QMetaContainer(@)" .} #

# Public methods for QMetaContainer
proc hasSize*(this: ptr QMetaContainer): bool {.header:headerFile, importcpp:"#.hasSize(@)".} # Public
proc size*(this: ptr QMetaContainer): cint {.header:headerFile, importcpp:"#.size(@)".} # Public
proc canClear*(this: ptr QMetaContainer): bool {.header:headerFile, importcpp:"#.canClear(@)".} # Public
proc clear*(this: ptr QMetaContainer, container: ptr) {.header:headerFile, importcpp:"#.clear(@)".} # Public
proc begin*(this: ptr QMetaContainer, container: ptr): ptr  {.header:headerFile, importcpp:"#.begin(@)".} # Public
proc `end`*(this: ptr QMetaContainer, container: ptr): ptr  {.header:headerFile, importcpp:"#.end(@)".} # Public
proc constBegin*(this: ptr QMetaContainer, container: ptr): ptr  {.header:headerFile, importcpp:"#.constBegin(@)".} # Public
proc constEnd*(this: ptr QMetaContainer, container: ptr): ptr  {.header:headerFile, importcpp:"#.constEnd(@)".} # Public
# Stuff for class QMetaSequence

# Public constructors for QMetaSequence
proc newQMetaSequence*(): ptr QMetaSequence {. header:headerFile, importcpp:"new QMetaSequence(@)" .} #

# Public methods for QMetaSequence
proc isSortable*(this: ptr QMetaSequence): bool {.header:headerFile, importcpp:"#.isSortable(@)".} # Public
proc canAddValueAtBegin*(this: ptr QMetaSequence): bool {.header:headerFile, importcpp:"#.canAddValueAtBegin(@)".} # Public
proc addValueAtBegin*(this: ptr QMetaSequence, container: ptr, value: ptr) {.header:headerFile, importcpp:"#.addValueAtBegin(@)".} # Public
proc canAddValueAtEnd*(this: ptr QMetaSequence): bool {.header:headerFile, importcpp:"#.canAddValueAtEnd(@)".} # Public
proc addValueAtEnd*(this: ptr QMetaSequence, container: ptr, value: ptr) {.header:headerFile, importcpp:"#.addValueAtEnd(@)".} # Public
proc canRemoveValueAtBegin*(this: ptr QMetaSequence): bool {.header:headerFile, importcpp:"#.canRemoveValueAtBegin(@)".} # Public
proc removeValueAtBegin*(this: ptr QMetaSequence, container: ptr) {.header:headerFile, importcpp:"#.removeValueAtBegin(@)".} # Public
proc canRemoveValueAtEnd*(this: ptr QMetaSequence): bool {.header:headerFile, importcpp:"#.canRemoveValueAtEnd(@)".} # Public
proc removeValueAtEnd*(this: ptr QMetaSequence, container: ptr) {.header:headerFile, importcpp:"#.removeValueAtEnd(@)".} # Public
proc canGetValueAtIndex*(this: ptr QMetaSequence): bool {.header:headerFile, importcpp:"#.canGetValueAtIndex(@)".} # Public
proc valueAtIndex*(this: ptr QMetaSequence, container: ptr, index: cint, result: ptr) {.header:headerFile, importcpp:"#.valueAtIndex(@)".} # Public
proc canSetValueAtIndex*(this: ptr QMetaSequence): bool {.header:headerFile, importcpp:"#.canSetValueAtIndex(@)".} # Public
proc setValueAtIndex*(this: ptr QMetaSequence, container: ptr, index: cint, value: ptr) {.header:headerFile, importcpp:"#.setValueAtIndex(@)".} # Public
proc canAddValue*(this: ptr QMetaSequence): bool {.header:headerFile, importcpp:"#.canAddValue(@)".} # Public
proc addValue*(this: ptr QMetaSequence, container: ptr, value: ptr) {.header:headerFile, importcpp:"#.addValue(@)".} # Public
proc canRemoveValue*(this: ptr QMetaSequence): bool {.header:headerFile, importcpp:"#.canRemoveValue(@)".} # Public
proc removeValue*(this: ptr QMetaSequence, container: ptr) {.header:headerFile, importcpp:"#.removeValue(@)".} # Public
# Stuff for class QMetaAssociation

# Public constructors for QMetaAssociation
proc newQMetaAssociation*(): ptr QMetaAssociation {. header:headerFile, importcpp:"new QMetaAssociation(@)" .} #

# Public methods for QMetaAssociation
proc canInsertKey*(this: ptr QMetaAssociation): bool {.header:headerFile, importcpp:"#.canInsertKey(@)".} # Public
proc insertKey*(this: ptr QMetaAssociation, container: ptr, key: ptr) {.header:headerFile, importcpp:"#.insertKey(@)".} # Public
proc canRemoveKey*(this: ptr QMetaAssociation): bool {.header:headerFile, importcpp:"#.canRemoveKey(@)".} # Public
proc removeKey*(this: ptr QMetaAssociation, container: ptr, key: ptr) {.header:headerFile, importcpp:"#.removeKey(@)".} # Public
proc canContainsKey*(this: ptr QMetaAssociation): bool {.header:headerFile, importcpp:"#.canContainsKey(@)".} # Public
proc containsKey*(this: ptr QMetaAssociation, container: ptr, key: ptr): bool {.header:headerFile, importcpp:"#.containsKey(@)".} # Public
proc canGetMappedAtKey*(this: ptr QMetaAssociation): bool {.header:headerFile, importcpp:"#.canGetMappedAtKey(@)".} # Public
proc mappedAtKey*(this: ptr QMetaAssociation, container: ptr, key: ptr, mapped: ptr) {.header:headerFile, importcpp:"#.mappedAtKey(@)".} # Public
proc canSetMappedAtKey*(this: ptr QMetaAssociation): bool {.header:headerFile, importcpp:"#.canSetMappedAtKey(@)".} # Public
proc setMappedAtKey*(this: ptr QMetaAssociation, container: ptr, key: ptr, mapped: ptr) {.header:headerFile, importcpp:"#.setMappedAtKey(@)".} # Public

