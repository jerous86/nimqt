const headerFile* = "QtGui/qtextoption.h"

# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}


type
    # Classes and enums found in the C++ code
    # Global
    QTextOption_TabType* {.header:headerFile,importcpp:"QTextOption::TabType".} = enum LeftTab = 0, RightTab = 0x1, CenterTab = 0x2, DelimiterTab = 0x3
    QTextOption_WrapMode* {.header:headerFile,importcpp:"QTextOption::WrapMode".} = enum NoWrap = 0, WordWrap = 0x1, ManualWrap = 0x2, WrapAnywhere = 0x3, 
        WrapAtWordBoundaryOrAnywhere = 0x4
    QTextOption_Flag* {.header:headerFile,importcpp:"QTextOption::Flag".} = enum ShowTabsAndSpaces = 0, ShowLineAndParagraphSeparators = 0x1, AddSpaceForLineAndParagraphSeparators = 0x2, SuppressColors = 0x3, 
        ShowDocumentTerminator = 0x4, IncludeTrailingSpaces = 0x5
    QTextOption* {.header:headerFile,importcpp:"QTextOption" ,pure.} = object {.inheritable.}
    QTextOption_Tab* {.header:headerFile,importcpp:"QTextOption::Tab" ,pure.} = object {.inheritable.}
{.push warning[Deprecated]: on.}
import nimqt/qtcore/qflags


type
    # typedefs found in the C++ code
    QTextOption_Flags * = QFlags[QTextOption_Flag]

# Stuff for class QTextOption

# Public constructors for QTextOption
proc newQTextOption*(): QTextOption {. header:headerFile, importcpp:"QTextOption(@)", constructor .} #
import nimqt/qtcore/qnamespace
proc newQTextOption*(alignment: Qt_Alignment): QTextOption {. header:headerFile, importcpp:"QTextOption(@)", constructor .} #
proc newQTextOption*(o: QTextOption): QTextOption {. header:headerFile, importcpp:"QTextOption(@)", constructor .} #

# Public methods for QTextOption
proc setAlignment*(this: QTextOption, alignment: Qt_Alignment) {.header:headerFile, importcpp:"#.setAlignment(@)".} # Public
proc alignment*(this: QTextOption): Qt_Alignment {.header:headerFile, importcpp:"#.alignment(@)".} # Public
proc setTextDirection*(this: QTextOption, aDirection: Qt_LayoutDirection) {.header:headerFile, importcpp:"#.setTextDirection(@)".} # Public
proc textDirection*(this: QTextOption): Qt_LayoutDirection {.header:headerFile, importcpp:"#.textDirection(@)".} # Public
proc setWrapMode*(this: QTextOption, wrap: QTextOption_WrapMode) {.header:headerFile, importcpp:"#.setWrapMode(@)".} # Public
proc wrapMode*(this: QTextOption): QTextOption_WrapMode {.header:headerFile, importcpp:"#.wrapMode(@)".} # Public
proc setFlags*(this: QTextOption, flags: QFlags[QTextOption_Flag]) {.header:headerFile, importcpp:"#.setFlags(@)".} # Public
proc flags*(this: QTextOption): QFlags[QTextOption_Flag] {.header:headerFile, importcpp:"#.flags(@)".} # Public
proc setTabStopDistance*(this: QTextOption, tabStopDistance: cfloat) {.header:headerFile, importcpp:"#.setTabStopDistance(@)".} # Public
proc tabStopDistance*(this: QTextOption): cfloat {.header:headerFile, importcpp:"#.tabStopDistance(@)".} # Public
proc setUseDesignMetrics*(this: QTextOption, b: bool) {.header:headerFile, importcpp:"#.setUseDesignMetrics(@)".} # Public
proc useDesignMetrics*(this: QTextOption): bool {.header:headerFile, importcpp:"#.useDesignMetrics(@)".} # Public
# Stuff for class QTextOption_Tab

# Public constructors for QTextOption_Tab
proc newQTextOption_Tab*(): QTextOption_Tab {. header:headerFile, importcpp:"QTextOption_Tab(@)", constructor .} #

# Public methods for QTextOption_Tab
proc `!=`*(this: QTextOption_Tab, other: QTextOption_Tab): bool {.header:headerFile, importcpp:"#.operator!=(@)".} # Public

export qnamespace
export qflags