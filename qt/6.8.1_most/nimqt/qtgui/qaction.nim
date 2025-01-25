const headerFile* = "QtGui/qaction.h"

type
    # Enums found in the C++ code
    # Global
    QAction_MenuRole* {.header:headerFile,importcpp:"QAction::MenuRole".} = enum NoRole = 0, TextHeuristicRole = 0x1, ApplicationSpecificRole = 0x2, AboutQtRole = 0x3, 
        AboutRole = 0x4, PreferencesRole = 0x5, QuitRole = 0x6
    QAction_Priority* {.header:headerFile,importcpp:"QAction::Priority".} = enum LowPriority = 0, NormalPriority = 0x80, HighPriority = 0x100
    QAction_ActionEvent* {.header:headerFile,importcpp:"QAction::ActionEvent".} = enum Trigger = 0, Hover = 0x1

import nimqt/qtcore/qobject
type
    # Classes found in the C++ code
    QAction* {.header:headerFile,importcpp:"QAction" ,pure.} = object of QObject

# Stuff for class QAction

# Public constructors for QAction
# 1 default parameters!
proc newQAction*(parent: ptr QObject): ptr QAction {. header:headerFile, importcpp:"new QAction(@)" .} #
proc newQAction*(): ptr QAction {. header:headerFile, importcpp:"new QAction(@)" .} #
import nimqt/qtcore/qstring
# 1 default parameters!
proc newQAction*(text: QString, parent: ptr QObject): ptr QAction {. header:headerFile, importcpp:"new QAction(@)" .} #
proc newQAction*(text: QString): ptr QAction {. header:headerFile, importcpp:"new QAction(@)" .} #
import nimqt/qtgui/qicon
# 1 default parameters!
proc newQAction*(icon: QIcon, text: QString, parent: ptr QObject): ptr QAction {. header:headerFile, importcpp:"new QAction(@)" .} #
proc newQAction*(icon: QIcon, text: QString): ptr QAction {. header:headerFile, importcpp:"new QAction(@)" .} #

# Public methods for QAction
# 1 default parameters!
proc static_QAction_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QAction::tr(@)".} # Public static
proc static_QAction_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QAction::tr(@)".} # Public static
import nimqt/qtcore/qlist
proc associatedObjects*(this: ptr QAction): QList[ptr QObject] {.header:headerFile, importcpp:"#.associatedObjects(@)".} # Public
import nimqt/qtgui/qactiongroup
proc setActionGroup*(this: ptr QAction, group: ptr QActionGroup) {.header:headerFile, importcpp:"#.setActionGroup(@)".} # Public
proc actionGroup*(this: ptr QAction): ptr QActionGroup {.header:headerFile, importcpp:"#.actionGroup(@)".} # Public
proc setIcon*(this: ptr QAction, icon: QIcon) {.header:headerFile, importcpp:"#.setIcon(@)".} # Public
proc icon*(this: ptr QAction): QIcon {.header:headerFile, importcpp:"#.icon(@)".} # Public
proc setText*(this: ptr QAction, text: QString) {.header:headerFile, importcpp:"#.setText(@)".} # Public
proc text*(this: ptr QAction): QString {.header:headerFile, importcpp:"#.text(@)".} # Public
proc setIconText*(this: ptr QAction, text: QString) {.header:headerFile, importcpp:"#.setIconText(@)".} # Public
proc iconText*(this: ptr QAction): QString {.header:headerFile, importcpp:"#.iconText(@)".} # Public
proc setToolTip*(this: ptr QAction, tip: QString) {.header:headerFile, importcpp:"#.setToolTip(@)".} # Public
proc toolTip*(this: ptr QAction): QString {.header:headerFile, importcpp:"#.toolTip(@)".} # Public
proc setStatusTip*(this: ptr QAction, statusTip: QString) {.header:headerFile, importcpp:"#.setStatusTip(@)".} # Public
proc statusTip*(this: ptr QAction): QString {.header:headerFile, importcpp:"#.statusTip(@)".} # Public
proc setWhatsThis*(this: ptr QAction, what: QString) {.header:headerFile, importcpp:"#.setWhatsThis(@)".} # Public
proc whatsThis*(this: ptr QAction): QString {.header:headerFile, importcpp:"#.whatsThis(@)".} # Public
proc setPriority*(this: ptr QAction, priority: QAction_Priority) {.header:headerFile, importcpp:"#.setPriority(@)".} # Public
proc priority*(this: ptr QAction): QAction_Priority {.header:headerFile, importcpp:"#.priority(@)".} # Public
proc setSeparator*(this: ptr QAction, b: bool) {.header:headerFile, importcpp:"#.setSeparator(@)".} # Public
proc isSeparator*(this: ptr QAction): bool {.header:headerFile, importcpp:"#.isSeparator(@)".} # Public
import nimqt/qtgui/qkeysequence
proc setShortcut*(this: ptr QAction, shortcut: QKeySequence) {.header:headerFile, importcpp:"#.setShortcut(@)".} # Public
proc shortcut*(this: ptr QAction): QKeySequence {.header:headerFile, importcpp:"#.shortcut(@)".} # Public
proc setShortcuts*(this: ptr QAction, shortcuts: QList[QKeySequence]) {.header:headerFile, importcpp:"#.setShortcuts(@)".} # Public
proc setShortcuts*(this: ptr QAction, arg_0: QKeySequence_StandardKey) {.header:headerFile, importcpp:"#.setShortcuts(@)".} # Public
proc shortcuts*(this: ptr QAction): QList[QKeySequence] {.header:headerFile, importcpp:"#.shortcuts(@)".} # Public
import nimqt/qtcore/qnamespace
proc setShortcutContext*(this: ptr QAction, context: Qt_ShortcutContext) {.header:headerFile, importcpp:"#.setShortcutContext(@)".} # Public
proc shortcutContext*(this: ptr QAction): Qt_ShortcutContext {.header:headerFile, importcpp:"#.shortcutContext(@)".} # Public
proc setAutoRepeat*(this: ptr QAction, arg_0: bool) {.header:headerFile, importcpp:"#.setAutoRepeat(@)".} # Public
proc autoRepeat*(this: ptr QAction): bool {.header:headerFile, importcpp:"#.autoRepeat(@)".} # Public
import nimqt/qtgui/qfont
proc setFont*(this: ptr QAction, font: QFont) {.header:headerFile, importcpp:"#.setFont(@)".} # Public
proc font*(this: ptr QAction): QFont {.header:headerFile, importcpp:"#.font(@)".} # Public
proc setCheckable*(this: ptr QAction, arg_0: bool) {.header:headerFile, importcpp:"#.setCheckable(@)".} # Public
proc isCheckable*(this: ptr QAction): bool {.header:headerFile, importcpp:"#.isCheckable(@)".} # Public
import nimqt/qtcore/qvariant
proc data*(this: ptr QAction): QVariant {.header:headerFile, importcpp:"#.data(@)".} # Public
proc setData*(this: ptr QAction, `var`: QVariant) {.header:headerFile, importcpp:"#.setData(@)".} # Public
proc isChecked*(this: ptr QAction): bool {.header:headerFile, importcpp:"#.isChecked(@)".} # Public
proc isEnabled*(this: ptr QAction): bool {.header:headerFile, importcpp:"#.isEnabled(@)".} # Public
proc isVisible*(this: ptr QAction): bool {.header:headerFile, importcpp:"#.isVisible(@)".} # Public
proc activate*(this: ptr QAction, event: QAction_ActionEvent) {.header:headerFile, importcpp:"#.activate(@)".} # Public
proc setMenuRole*(this: ptr QAction, menuRole: QAction_MenuRole) {.header:headerFile, importcpp:"#.setMenuRole(@)".} # Public
proc menuRole*(this: ptr QAction): QAction_MenuRole {.header:headerFile, importcpp:"#.menuRole(@)".} # Public
proc setIconVisibleInMenu*(this: ptr QAction, visible: bool) {.header:headerFile, importcpp:"#.setIconVisibleInMenu(@)".} # Public
proc isIconVisibleInMenu*(this: ptr QAction): bool {.header:headerFile, importcpp:"#.isIconVisibleInMenu(@)".} # Public
proc setShortcutVisibleInContextMenu*(this: ptr QAction, show: bool) {.header:headerFile, importcpp:"#.setShortcutVisibleInContextMenu(@)".} # Public
proc isShortcutVisibleInContextMenu*(this: ptr QAction): bool {.header:headerFile, importcpp:"#.isShortcutVisibleInContextMenu(@)".} # Public
# 1 default parameters!
proc showStatusText*(this: ptr QAction, `object`: ptr QObject): bool {.header:headerFile, importcpp:"#.showStatusText(@)".} # Public
proc showStatusText*(this: ptr QAction): bool {.header:headerFile, importcpp:"#.showStatusText(@)".} # Public
proc trigger*(this: ptr QAction) {.header:headerFile, importcpp:"#.trigger(@)".} # Public
proc hover*(this: ptr QAction) {.header:headerFile, importcpp:"#.hover(@)".} # Public
proc setChecked*(this: ptr QAction, arg_0: bool) {.header:headerFile, importcpp:"#.setChecked(@)".} # Public
proc toggle*(this: ptr QAction) {.header:headerFile, importcpp:"#.toggle(@)".} # Public
proc setEnabled*(this: ptr QAction, arg_0: bool) {.header:headerFile, importcpp:"#.setEnabled(@)".} # Public
proc resetEnabled*(this: ptr QAction) {.header:headerFile, importcpp:"#.resetEnabled(@)".} # Public
proc setDisabled*(this: ptr QAction, b: bool) {.header:headerFile, importcpp:"#.setDisabled(@)".} # Public
proc setVisible*(this: ptr QAction, arg_0: bool) {.header:headerFile, importcpp:"#.setVisible(@)".} # Public
proc changed*(this: ptr QAction) {.header:headerFile, importcpp:"#.changed(@)".} # Public
proc enabledChanged*(this: ptr QAction, enabled: bool) {.header:headerFile, importcpp:"#.enabledChanged(@)".} # Public
proc checkableChanged*(this: ptr QAction, checkable: bool) {.header:headerFile, importcpp:"#.checkableChanged(@)".} # Public
proc visibleChanged*(this: ptr QAction) {.header:headerFile, importcpp:"#.visibleChanged(@)".} # Public
# 1 default parameters!
proc triggered*(this: ptr QAction, checked: bool) {.header:headerFile, importcpp:"#.triggered(@)".} # Public
proc triggered*(this: ptr QAction) {.header:headerFile, importcpp:"#.triggered(@)".} # Public
proc hovered*(this: ptr QAction) {.header:headerFile, importcpp:"#.hovered(@)".} # Public
proc toggled*(this: ptr QAction, arg_0: bool) {.header:headerFile, importcpp:"#.toggled(@)".} # Public

# Protected methods methods for QAction
import nimqt/qtcore/qcoreevent
proc event*(this: ptr QAction, arg_0: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Protected

export qactiongroup
export qfont
export qstring
export qnamespace
export qlist
export qkeysequence
export qvariant
export qobject
export qcoreevent
export qicon

template handleChanged*(m: ptr QAction, body:untyped) = m.handleSignal0(SIGNAL "changed()", body)
template handleHovered*(m: ptr QAction, body:untyped) = m.handleSignal0(SIGNAL "hovered()", body)
template handleToggled*(m: ptr QAction, body:untyped) = m.handleSignal1(SIGNAL "toggled(bool)", checked:bool, body)
template handleTriggered*(m: ptr QAction, body:untyped) = m.handleSignal1(SIGNAL "triggered(bool)", checked:bool, body)
template handleVisibleChanged*(m: ptr QAction, body:untyped) = m.handleSignal0(SIGNAL "handleVisibleChanged()", body)
