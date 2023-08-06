const headerFile* = "QtGui/qtextoption.h"

type
    # Enums found in the C++ code
    # Global
    QTextOption_TabType* {.header:headerFile,importcpp:"QTextOption::TabType".} = enum LeftTab = 0, RightTab = 0x1, CenterTab = 0x2, DelimiterTab = 0x3
    QTextOption_WrapMode* {.header:headerFile,importcpp:"QTextOption::WrapMode".} = enum NoWrap = 0, WordWrap = 0x1, ManualWrap = 0x2, WrapAnywhere = 0x3, 
        WrapAtWordBoundaryOrAnywhere = 0x4
    QTextOption_Flag* {.header:headerFile,importcpp:"QTextOption::Flag".} = enum IncludeTrailingSpaces = -2147483648, ShowTabsAndSpaces = 0x1, ShowLineAndParagraphSeparators = 0x2, AddSpaceForLineAndParagraphSeparators = 0x4, 
        SuppressColors = 0x8, ShowDocumentTerminator = 0x10

type
    # Classes found in the C++ code
    QTextOption* {.header:headerFile,importcpp:"QTextOption" ,pure,inheritable.} = object
    QTextOption_Tab* {.header:headerFile,importcpp:"QTextOption::Tab" ,pure,inheritable.} = object
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
import nimqt/qtcore/qlist
proc setTabArray*(this: QTextOption, tabStops: QList[cfloat]) {.header:headerFile, importcpp:"#.setTabArray(@)".} # Public
proc tabArray*(this: QTextOption): QList[cfloat] {.header:headerFile, importcpp:"#.tabArray(@)".} # Public
proc setTabs*(this: QTextOption, tabStops: QList[QTextOption_Tab]) {.header:headerFile, importcpp:"#.setTabs(@)".} # Public
proc tabs*(this: QTextOption): QList[QTextOption_Tab] {.header:headerFile, importcpp:"#.tabs(@)".} # Public
proc setUseDesignMetrics*(this: QTextOption, b: bool) {.header:headerFile, importcpp:"#.setUseDesignMetrics(@)".} # Public
proc useDesignMetrics*(this: QTextOption): bool {.header:headerFile, importcpp:"#.useDesignMetrics(@)".} # Public
# Stuff for class QTextOption_Tab

# Public constructors for QTextOption_Tab
proc newQTextOption_Tab*(): QTextOption_Tab {. header:headerFile, importcpp:"QTextOption_Tab(@)", constructor .} #
import nimqt/qtcore/qchar
proc newQTextOption_Tab*(pos: cfloat, tabType: QTextOption_TabType, delim: QChar): QTextOption_Tab {. header:headerFile, importcpp:"QTextOption_Tab(@)", constructor .} #

# Public methods for QTextOption_Tab
proc `!=`*(this: QTextOption_Tab, other: QTextOption_Tab): bool {.header:headerFile, importcpp:"#.operator!=(@)".} # Public

export qnamespace
export qlist
export qchar
export qflags
