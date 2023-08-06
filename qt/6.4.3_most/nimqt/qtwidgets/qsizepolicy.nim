const headerFile* = "QtWidgets/qsizepolicy.h"

type
    # Enums found in the C++ code
    # Global
    QSizePolicy_PolicyFlag* {.header:headerFile,importcpp:"QSizePolicy::PolicyFlag".} = enum GrowFlag = 0x1, ExpandFlag = 0x2, ShrinkFlag = 0x4, IgnoreFlag = 0x8
    QSizePolicy_Policy* {.header:headerFile,importcpp:"QSizePolicy::Policy".} = enum Fixed = 0, Minimum = 0x1, MinimumExpanding = 0x3, Maximum = 0x4, 
        Preferred = 0x5, Expanding = 0x7, Ignored = 0xd
    QSizePolicy_ControlType* {.header:headerFile,importcpp:"QSizePolicy::ControlType".} = enum DefaultType = 0x1, ButtonBox = 0x2, CheckBox = 0x4, ComboBox = 0x8, 
        Frame = 0x10, GroupBox = 0x20, Label = 0x40, Line = 0x80, LineEdit = 0x100, 
        PushButton = 0x200, RadioButton = 0x400, Slider = 0x800, SpinBox = 0x1000, TabWidget = 0x2000, 
        ToolButton = 0x4000

type
    # Classes found in the C++ code
    QSizePolicy* {.header:headerFile,importcpp:"QSizePolicy" ,pure,inheritable.} = object
import nimqt/qtcore/qflags


type
    # typedefs found in the C++ code
    QSizePolicy_ControlTypes * = QFlags[QSizePolicy_ControlType]

# Stuff for class QSizePolicy

# Public constructors for QSizePolicy
proc newQSizePolicy*(): QSizePolicy {. header:headerFile, importcpp:"QSizePolicy(@)", constructor .} #
proc newQSizePolicy*(horizontal: QSizePolicy_Policy, vertical: QSizePolicy_Policy, `type`: QSizePolicy_ControlType): QSizePolicy {. header:headerFile, importcpp:"QSizePolicy(@)", constructor .} #

# Public methods for QSizePolicy
proc qt_check_for_QGADGET_macro*(this: QSizePolicy) {.header:headerFile, importcpp:"#.qt_check_for_QGADGET_macro(@)".} # Public
proc horizontalPolicy*(this: QSizePolicy): QSizePolicy_Policy {.header:headerFile, importcpp:"#.horizontalPolicy(@)".} # Public
proc verticalPolicy*(this: QSizePolicy): QSizePolicy_Policy {.header:headerFile, importcpp:"#.verticalPolicy(@)".} # Public
proc controlType*(this: QSizePolicy): QSizePolicy_ControlType {.header:headerFile, importcpp:"#.controlType(@)".} # Public
proc setHorizontalPolicy*(this: QSizePolicy, d: QSizePolicy_Policy) {.header:headerFile, importcpp:"#.setHorizontalPolicy(@)".} # Public
proc setVerticalPolicy*(this: QSizePolicy, d: QSizePolicy_Policy) {.header:headerFile, importcpp:"#.setVerticalPolicy(@)".} # Public
proc setControlType*(this: QSizePolicy, `type`: QSizePolicy_ControlType) {.header:headerFile, importcpp:"#.setControlType(@)".} # Public
import nimqt/qtcore/qnamespace
proc expandingDirections*(this: QSizePolicy): Qt_Orientations {.header:headerFile, importcpp:"#.expandingDirections(@)".} # Public
proc setHeightForWidth*(this: QSizePolicy, b: bool) {.header:headerFile, importcpp:"#.setHeightForWidth(@)".} # Public
proc hasHeightForWidth*(this: QSizePolicy): bool {.header:headerFile, importcpp:"#.hasHeightForWidth(@)".} # Public
proc setWidthForHeight*(this: QSizePolicy, b: bool) {.header:headerFile, importcpp:"#.setWidthForHeight(@)".} # Public
proc hasWidthForHeight*(this: QSizePolicy): bool {.header:headerFile, importcpp:"#.hasWidthForHeight(@)".} # Public
proc `!=`*(this: QSizePolicy, s: QSizePolicy): bool {.header:headerFile, importcpp:"#.operator!=(@)".} # Public
proc horizontalStretch*(this: QSizePolicy): cint {.header:headerFile, importcpp:"#.horizontalStretch(@)".} # Public
proc verticalStretch*(this: QSizePolicy): cint {.header:headerFile, importcpp:"#.verticalStretch(@)".} # Public
proc setHorizontalStretch*(this: QSizePolicy, stretchFactor: cint) {.header:headerFile, importcpp:"#.setHorizontalStretch(@)".} # Public
proc setVerticalStretch*(this: QSizePolicy, stretchFactor: cint) {.header:headerFile, importcpp:"#.setVerticalStretch(@)".} # Public
proc retainSizeWhenHidden*(this: QSizePolicy): bool {.header:headerFile, importcpp:"#.retainSizeWhenHidden(@)".} # Public
proc setRetainSizeWhenHidden*(this: QSizePolicy, retainSize: bool) {.header:headerFile, importcpp:"#.setRetainSizeWhenHidden(@)".} # Public
proc transpose*(this: QSizePolicy) {.header:headerFile, importcpp:"#.transpose(@)".} # Public
proc transposed*(this: QSizePolicy): QSizePolicy {.header:headerFile, importcpp:"#.transposed(@)".} # Public

export qnamespace
export qflags
