const headerFile* = "QtWidgets/qsizepolicy.h"

# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}


type
    # Classes and enums found in the C++ code
    # Global
    QSizePolicy_PolicyFlag* {.header:headerFile,importcpp:"QSizePolicy::PolicyFlag".} = enum GrowFlag = 0, ExpandFlag = 0x1, ShrinkFlag = 0x2, IgnoreFlag = 0x3
    QSizePolicy_Policy* {.header:headerFile,importcpp:"QSizePolicy::Policy".} = enum Fixed = 0, Minimum = 0x1, Maximum = 0x2, Preferred = 0x3,
        MinimumExpanding = 0x4, Expanding = 0x5, Ignored = 0x6
    QSizePolicy_ControlType* {.header:headerFile,importcpp:"QSizePolicy::ControlType".} = enum DefaultType = 0, ButtonBox = 0x1, CheckBox = 0x2, ComboBox = 0x3,
        Frame = 0x4, GroupBox = 0x5, Label = 0x6, Line = 0x7, LineEdit = 0x8,
        PushButton = 0x9, RadioButton = 0xa, Slider = 0xb, SpinBox = 0xc, TabWidget = 0xd,
        ToolButton = 0xe
    QSizePolicy* {.header:headerFile,importcpp:"QSizePolicy" ,pure.} = object {.inheritable.}
{.push warning[Deprecated]: on.}
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