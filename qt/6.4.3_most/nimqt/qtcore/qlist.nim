const headerFile* = "QtCore/qlist.h"

type
    # Classes found in the C++ code
    QList*[T] {.header:headerFile,importcpp:"QList" ,pure,inheritable.} = object
    QList_DisableRValueRefs*[T] {.header:headerFile,importcpp:"QList::DisableRValueRefs" ,pure,inheritable.} = object

# Stuff for class QList

# Public constructors for QList
proc newQList*[T](): QList[T] {. header:headerFile, importcpp:"QList(@)", constructor .} #
proc newQList*[T](size: cint): QList[T] {. header:headerFile, importcpp:"QList(@)", constructor .} #
proc newQList*[T](size: cint, t: T): QList[T] {. header:headerFile, importcpp:"QList(@)", constructor .} #

# Public methods for QList
proc swap*[T](this: QList[T], other: QList[T]) {.header:headerFile, importcpp:"#.swap(@)".} # Public
proc size*[T](this: QList[T]): cint {.header:headerFile, importcpp:"#.size(@)".} # Public
proc count*[T](this: QList[T]): cint {.header:headerFile, importcpp:"#.count(@)".} # Public
proc length*[T](this: QList[T]): cint {.header:headerFile, importcpp:"#.length(@)".} # Public
proc isEmpty*[T](this: QList[T]): bool {.header:headerFile, importcpp:"#.isEmpty(@)".} # Public
proc resize*[T](this: QList[T], size: cint) {.header:headerFile, importcpp:"#.resize(@)".} # Public
proc resize*[T](this: QList[T], size: cint, c: T) {.header:headerFile, importcpp:"#.resize(@)".} # Public
proc capacity*[T](this: QList[T]): cint {.header:headerFile, importcpp:"#.capacity(@)".} # Public
proc reserve*[T](this: QList[T], size: cint) {.header:headerFile, importcpp:"#.reserve(@)".} # Public
proc squeeze*[T](this: QList[T]) {.header:headerFile, importcpp:"#.squeeze(@)".} # Public
proc detach*[T](this: QList[T]) {.header:headerFile, importcpp:"#.detach(@)".} # Public
proc isDetached*[T](this: QList[T]): bool {.header:headerFile, importcpp:"#.isDetached(@)".} # Public
proc isSharedWith*[T](this: QList[T], other: QList[T]): bool {.header:headerFile, importcpp:"#.isSharedWith(@)".} # Public
proc data*[T](this: QList[T]): ptr T {.header:headerFile, importcpp:"#.data(@)".} # Public
proc constData*[T](this: QList[T]): ptr T {.header:headerFile, importcpp:"#.constData(@)".} # Public
proc clear*[T](this: QList[T]) {.header:headerFile, importcpp:"#.clear(@)".} # Public
proc at*[T](this: QList[T], i: cint): T {.header:headerFile, importcpp:"#.at(@)".} # Public
proc `[]`*[T](this: QList[T], i: cint): T {.header:headerFile, importcpp:"#.operator[](@)".} # Public
proc append*[T](this: QList[T], t: T) {.header:headerFile, importcpp:"#.append(@)".} # Public
proc append*[T](this: QList[T], l: QList[T]) {.header:headerFile, importcpp:"#.append(@)".} # Public
proc prepend*[T](this: QList[T], t: T) {.header:headerFile, importcpp:"#.prepend(@)".} # Public
proc replace*[T](this: QList[T], i: cint, t: T) {.header:headerFile, importcpp:"#.replace(@)".} # Public
# 1 default parameters!
proc remove*[T](this: QList[T], i: cint, n: cint) {.header:headerFile, importcpp:"#.remove(@)".} # Public
proc remove*[T](this: QList[T], i: cint) {.header:headerFile, importcpp:"#.remove(@)".} # Public
proc removeFirst*[T](this: QList[T]) {.header:headerFile, importcpp:"#.removeFirst(@)".} # Public
proc removeLast*[T](this: QList[T]) {.header:headerFile, importcpp:"#.removeLast(@)".} # Public
proc takeFirst*[T](this: QList[T]): T {.header:headerFile, importcpp:"#.takeFirst(@)".} # Public
proc takeLast*[T](this: QList[T]): T {.header:headerFile, importcpp:"#.takeLast(@)".} # Public
proc fill*[T](this: QList[T], t: T, size: cint): QList[T] {.header:headerFile, importcpp:"#.fill(@)".} # Public
proc removeAt*[T](this: QList[T], i: cint) {.header:headerFile, importcpp:"#.removeAt(@)".} # Public
proc takeAt*[T](this: QList[T], i: cint): T {.header:headerFile, importcpp:"#.takeAt(@)".} # Public
proc move*[T](this: QList[T], `from`: cint, to: cint) {.header:headerFile, importcpp:"#.move(@)".} # Public
proc first*[T](this: QList[T]): T {.header:headerFile, importcpp:"#.first(@)".} # Public
proc constFirst*[T](this: QList[T]): T {.header:headerFile, importcpp:"#.constFirst(@)".} # Public
proc last*[T](this: QList[T]): T {.header:headerFile, importcpp:"#.last(@)".} # Public
proc constLast*[T](this: QList[T]): T {.header:headerFile, importcpp:"#.constLast(@)".} # Public
proc startsWith*[T](this: QList[T], t: T): bool {.header:headerFile, importcpp:"#.startsWith(@)".} # Public
proc endsWith*[T](this: QList[T], t: T): bool {.header:headerFile, importcpp:"#.endsWith(@)".} # Public
proc mid*[T](this: QList[T], pos: cint, len: cint): QList[T] {.header:headerFile, importcpp:"#.mid(@)".} # Public
proc first*[T](this: QList[T], n: cint): QList[T] {.header:headerFile, importcpp:"#.first(@)".} # Public
proc last*[T](this: QList[T], n: cint): QList[T] {.header:headerFile, importcpp:"#.last(@)".} # Public
proc sliced*[T](this: QList[T], pos: cint): QList[T] {.header:headerFile, importcpp:"#.sliced(@)".} # Public
proc sliced*[T](this: QList[T], pos: cint, n: cint): QList[T] {.header:headerFile, importcpp:"#.sliced(@)".} # Public
proc value*[T](this: QList[T], i: cint): T {.header:headerFile, importcpp:"#.value(@)".} # Public
proc value*[T](this: QList[T], i: cint, defaultValue: T): T {.header:headerFile, importcpp:"#.value(@)".} # Public
proc swapItemsAt*[T](this: QList[T], i: cint, j: cint) {.header:headerFile, importcpp:"#.swapItemsAt(@)".} # Public
proc push_back*[T](this: QList[T], t: T) {.header:headerFile, importcpp:"#.push_back(@)".} # Public
proc push_front*[T](this: QList[T], t: T) {.header:headerFile, importcpp:"#.push_front(@)".} # Public
proc pop_back*[T](this: QList[T]) {.header:headerFile, importcpp:"#.pop_back(@)".} # Public
proc pop_front*[T](this: QList[T]) {.header:headerFile, importcpp:"#.pop_front(@)".} # Public
proc empty*[T](this: QList[T]): bool {.header:headerFile, importcpp:"#.empty(@)".} # Public
proc front*[T](this: QList[T]): T {.header:headerFile, importcpp:"#.front(@)".} # Public
proc back*[T](this: QList[T]): T {.header:headerFile, importcpp:"#.back(@)".} # Public
proc shrink_to_fit*[T](this: QList[T]) {.header:headerFile, importcpp:"#.shrink_to_fit(@)".} # Public
proc `+=`*[T](this: QList[T], l: QList[T]): QList[T] {.header:headerFile, importcpp:"#.operator+=(@)".} # Public
proc `+`*[T](this: QList[T], l: QList[T]): QList[T] {.header:headerFile, importcpp:"#.operator+(@)".} # Public
proc `+=`*[T](this: QList[T], t: T): QList[T] {.header:headerFile, importcpp:"#.operator+=(@)".} # Public
proc `<<`*[T](this: QList[T], t: T): QList[T] {.header:headerFile, importcpp:"#.operator<<(@)".} # Public
proc `<<`*[T](this: QList[T], l: QList[T]): QList[T] {.header:headerFile, importcpp:"#.operator<<(@)".} # Public
proc static_QList_fromList*[T](list: QList[T]): QList[T] {.header:headerFile, importcpp:"QList::fromList(@)".} # Public static
proc toList*[T](this: QList[T]): QList[T] {.header:headerFile, importcpp:"#.toList(@)".} # Public
proc static_QList_fromVector*[T](vector: QList[T]): QList[T] {.header:headerFile, importcpp:"QList::fromVector(@)".} # Public static
proc toVector*[T](this: QList[T]): QList[T] {.header:headerFile, importcpp:"#.toVector(@)".} # Public


# Additional code for qtcore/qlist
func len*[T](list: QList[T]): int = list.size
func add*[T](list: QList[T], x:T) = list.push_back x
iterator items*[T](list: QList[T]): T =
    for i in 0..<list.len: yield list.at(i.cint)
