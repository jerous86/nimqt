const headerFile* = "QtWidgets/qsystemtrayicon.h"

type
    # Enums found in the C++ code
    # Global
    QSystemTrayIcon_ActivationReason* {.header:headerFile,importcpp:"QSystemTrayIcon::ActivationReason".} = enum Unknown = 0, Context = 0x1, DoubleClick = 0x2, Trigger = 0x3, 
        MiddleClick = 0x4
    QSystemTrayIcon_MessageIcon* {.header:headerFile,importcpp:"QSystemTrayIcon::MessageIcon".} = enum NoIcon = 0, Information = 0x1, Warning = 0x2, Critical = 0x3

import nimqt/qtcore/qobject
type
    # Classes found in the C++ code
    QSystemTrayIcon* {.header:headerFile,importcpp:"QSystemTrayIcon" ,pure.} = object of QObject

# Stuff for class QSystemTrayIcon

# Public constructors for QSystemTrayIcon
# 1 default parameters!
proc newQSystemTrayIcon*(parent: ptr QObject): ptr QSystemTrayIcon {. header:headerFile, importcpp:"new QSystemTrayIcon(@)" .} #
proc newQSystemTrayIcon*(): ptr QSystemTrayIcon {. header:headerFile, importcpp:"new QSystemTrayIcon(@)" .} #
import nimqt/qtgui/qicon
# 1 default parameters!
proc newQSystemTrayIcon*(icon: QIcon, parent: ptr QObject): ptr QSystemTrayIcon {. header:headerFile, importcpp:"new QSystemTrayIcon(@)" .} #
proc newQSystemTrayIcon*(icon: QIcon): ptr QSystemTrayIcon {. header:headerFile, importcpp:"new QSystemTrayIcon(@)" .} #

# Public methods for QSystemTrayIcon
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QSystemTrayIcon_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QSystemTrayIcon::tr(@)".} # Public static
proc static_QSystemTrayIcon_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QSystemTrayIcon::tr(@)".} # Public static
import nimqt/qtwidgets/qmenu
proc setContextMenu*(this: ptr QSystemTrayIcon, menu: ptr QMenu) {.header:headerFile, importcpp:"#.setContextMenu(@)".} # Public
proc contextMenu*(this: ptr QSystemTrayIcon): ptr QMenu {.header:headerFile, importcpp:"#.contextMenu(@)".} # Public
proc icon*(this: ptr QSystemTrayIcon): QIcon {.header:headerFile, importcpp:"#.icon(@)".} # Public
proc setIcon*(this: ptr QSystemTrayIcon, icon: QIcon) {.header:headerFile, importcpp:"#.setIcon(@)".} # Public
proc toolTip*(this: ptr QSystemTrayIcon): QString {.header:headerFile, importcpp:"#.toolTip(@)".} # Public
proc setToolTip*(this: ptr QSystemTrayIcon, tip: QString) {.header:headerFile, importcpp:"#.setToolTip(@)".} # Public
proc static_QSystemTrayIcon_isSystemTrayAvailable*(): bool {.header:headerFile, importcpp:"QSystemTrayIcon::isSystemTrayAvailable(@)".} # Public static
proc static_QSystemTrayIcon_supportsMessages*(): bool {.header:headerFile, importcpp:"QSystemTrayIcon::supportsMessages(@)".} # Public static
import nimqt/qtcore/qrect
proc geometry*(this: ptr QSystemTrayIcon): QRect {.header:headerFile, importcpp:"#.geometry(@)".} # Public
proc isVisible*(this: ptr QSystemTrayIcon): bool {.header:headerFile, importcpp:"#.isVisible(@)".} # Public
proc setVisible*(this: ptr QSystemTrayIcon, visible: bool) {.header:headerFile, importcpp:"#.setVisible(@)".} # Public
proc show*(this: ptr QSystemTrayIcon) {.header:headerFile, importcpp:"#.show(@)".} # Public
proc hide*(this: ptr QSystemTrayIcon) {.header:headerFile, importcpp:"#.hide(@)".} # Public
# 1 default parameters!
proc showMessage*(this: ptr QSystemTrayIcon, title: QString, msg: QString, icon: QIcon, msecs: cint) {.header:headerFile, importcpp:"#.showMessage(@)".} # Public
proc showMessage*(this: ptr QSystemTrayIcon, title: QString, msg: QString, icon: QIcon) {.header:headerFile, importcpp:"#.showMessage(@)".} # Public
# 1 default parameters!
proc showMessage*(this: ptr QSystemTrayIcon, title: QString, msg: QString, icon: QSystemTrayIcon_MessageIcon, msecs: cint) {.header:headerFile, importcpp:"#.showMessage(@)".} # Public
proc showMessage*(this: ptr QSystemTrayIcon, title: QString, msg: QString, icon: QSystemTrayIcon_MessageIcon) {.header:headerFile, importcpp:"#.showMessage(@)".} # Public
proc activated*(this: ptr QSystemTrayIcon, reason: QSystemTrayIcon_ActivationReason) {.header:headerFile, importcpp:"#.activated(@)".} # Public
proc messageClicked*(this: ptr QSystemTrayIcon) {.header:headerFile, importcpp:"#.messageClicked(@)".} # Public

# Protected methods methods for QSystemTrayIcon
import nimqt/qtcore/qcoreevent
proc event*(this: ptr QSystemTrayIcon, event: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Protected

export qmenu
export qstring
export qrect
export qobject
export qcoreevent
export qicon
