const headerFile* = "QtGui/qtextformat.h"

# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}


type
    # Classes and enums found in the C++ code
    # Global
    QTextLength_Type* {.header:headerFile,importcpp:"QTextLength::Type".} = enum VariableLength = 0, FixedLength = 0x1, PercentageLength = 0x2
    QTextFormat_FormatType* {.header:headerFile,importcpp:"QTextFormat::FormatType".} = enum InvalidFormat = 0, BlockFormat = 0x1, CharFormat = 0x2, ListFormat = 0x3, 
        FrameFormat = 0x4, UserFormat = 0x5
    QTextFormat_Property* {.header:headerFile,importcpp:"QTextFormat::Property".} = enum ObjectIndex = 0, CssFloat = 0x1, LayoutDirection = 0x2, OutlinePen = 0x3, 
        BackgroundBrush = 0x4, ForegroundBrush = 0x5, BackgroundImageUrl = 0x6, BlockAlignment = 0x7, BlockTopMargin = 0x8, 
        BlockBottomMargin = 0x9, BlockLeftMargin = 0xa, BlockRightMargin = 0xb, TextIndent = 0xc, TabPositions = 0xd, 
        BlockIndent = 0xe, LineHeight = 0xf, LineHeightType = 0x10, BlockNonBreakableLines = 0x11, BlockTrailingHorizontalRulerWidth = 0x12, 
        HeadingLevel = 0x13, BlockQuoteLevel = 0x14, BlockCodeLanguage = 0x15, BlockCodeFence = 0x16, BlockMarker = 0x17, 
        FirstFontProperty = 0x18, FontCapitalization = 0x19, FontLetterSpacing = 0x1a, FontWordSpacing = 0x1b, FontStyleHint = 0x1c, 
        FontStyleStrategy = 0x1d, FontKerning = 0x1e, FontHintingPreference = 0x1f, FontFamilies = 0x20, FontStyleName = 0x21, 
        FontLetterSpacingType = 0x22, FontStretch = 0x23, FontFamily = 0x24, FontPointSize = 0x25, FontSizeAdjustment = 0x26, 
        FontSizeIncrement = 0x27, FontWeight = 0x28, FontItalic = 0x29, FontUnderline = 0x2a, FontOverline = 0x2b, 
        FontStrikeOut = 0x2c, FontFixedPitch = 0x2d, FontPixelSize = 0x2e, LastFontProperty = 0x2f, TextUnderlineColor = 0x30, 
        TextVerticalAlignment = 0x31, TextOutline = 0x32, TextUnderlineStyle = 0x33, TextToolTip = 0x34, TextSuperScriptBaseline = 0x35, 
        TextSubScriptBaseline = 0x36, TextBaselineOffset = 0x37, IsAnchor = 0x38, AnchorHref = 0x39, AnchorName = 0x3a, 
        OldFontLetterSpacingType = 0x3b, OldFontStretch = 0x3c, OldTextUnderlineColor = 0x3d, OldFontFamily = 0x3e, ObjectType = 0x3f, 
        ListStyle = 0x40, ListIndent = 0x41, ListNumberPrefix = 0x42, ListNumberSuffix = 0x43, FrameBorder = 0x44, 
        FrameMargin = 0x45, FramePadding = 0x46, FrameWidth = 0x47, FrameHeight = 0x48, FrameTopMargin = 0x49, 
        FrameBottomMargin = 0x4a, FrameLeftMargin = 0x4b, FrameRightMargin = 0x4c, FrameBorderBrush = 0x4d, FrameBorderStyle = 0x4e, 
        TableColumns = 0x4f, TableColumnWidthConstraints = 0x50, TableCellSpacing = 0x51, TableCellPadding = 0x52, TableHeaderRowCount = 0x53, 
        TableBorderCollapse = 0x54, TableCellRowSpan = 0x55, TableCellColumnSpan = 0x56, TableCellTopPadding = 0x57, TableCellBottomPadding = 0x58, 
        TableCellLeftPadding = 0x59, TableCellRightPadding = 0x5a, TableCellTopBorder = 0x5b, TableCellBottomBorder = 0x5c, TableCellLeftBorder = 0x5d, 
        TableCellRightBorder = 0x5e, TableCellTopBorderStyle = 0x5f, TableCellBottomBorderStyle = 0x60, TableCellLeftBorderStyle = 0x61, TableCellRightBorderStyle = 0x62, 
        TableCellTopBorderBrush = 0x63, TableCellBottomBorderBrush = 0x64, TableCellLeftBorderBrush = 0x65, TableCellRightBorderBrush = 0x66, ImageName = 0x67, 
        ImageTitle = 0x68, ImageAltText = 0x69, ImageWidth = 0x6a, ImageHeight = 0x6b, ImageQuality = 0x6c, 
        FullWidthSelection = 0x6d, PageBreakPolicy = 0x6e, UserProperty = 0x6f
    QTextFormat_ObjectTypes* {.header:headerFile,importcpp:"QTextFormat::ObjectTypes".} = enum NoObject = 0, ImageObject = 0x1, TableObject = 0x2, TableCellObject = 0x3, 
        UserObject = 0x4
    QTextFormat_PageBreakFlag* {.header:headerFile,importcpp:"QTextFormat::PageBreakFlag".} = enum PageBreak_Auto = 0, PageBreak_AlwaysBefore = 0x1, PageBreak_AlwaysAfter = 0x2
    QTextCharFormat_VerticalAlignment* {.header:headerFile,importcpp:"QTextCharFormat::VerticalAlignment".} = enum AlignNormal = 0, AlignSuperScript = 0x1, AlignSubScript = 0x2, AlignMiddle = 0x3, 
        AlignTop = 0x4, AlignBottom = 0x5, AlignBaseline = 0x6
    QTextCharFormat_UnderlineStyle* {.header:headerFile,importcpp:"QTextCharFormat::UnderlineStyle".} = enum NoUnderline = 0, SingleUnderline = 0x1, DashUnderline = 0x2, DotLine = 0x3, 
        DashDotLine = 0x4, DashDotDotLine = 0x5, WaveUnderline = 0x6, SpellCheckUnderline = 0x7
    QTextCharFormat_FontPropertiesInheritanceBehavior* {.header:headerFile,importcpp:"QTextCharFormat::FontPropertiesInheritanceBehavior".} = enum FontPropertiesSpecifiedOnly = 0, FontPropertiesAll = 0x1
    QTextBlockFormat_LineHeightTypes* {.header:headerFile,importcpp:"QTextBlockFormat::LineHeightTypes".} = enum SingleHeight = 0, ProportionalHeight = 0x1, FixedHeight = 0x2, MinimumHeight = 0x3, 
        LineDistanceHeight = 0x4
    QTextBlockFormat_MarkerType* {.header:headerFile,importcpp:"QTextBlockFormat::MarkerType".} = enum NoMarker = 0, Unchecked = 0x1, Checked = 0x2
    QTextListFormat_Style* {.header:headerFile,importcpp:"QTextListFormat::Style".} = enum ListDisc = 0, ListCircle = 0x1, ListSquare = 0x2, ListDecimal = 0x3, 
        ListLowerAlpha = 0x4, ListUpperAlpha = 0x5, ListLowerRoman = 0x6, ListUpperRoman = 0x7, ListStyleUndefined = 0x8
    QTextFrameFormat_Position* {.header:headerFile,importcpp:"QTextFrameFormat::Position".} = enum InFlow = 0, FloatLeft = 0x1, FloatRight = 0x2
    QTextFrameFormat_BorderStyle* {.header:headerFile,importcpp:"QTextFrameFormat::BorderStyle".} = enum BorderStyle_None = 0, BorderStyle_Dotted = 0x1, BorderStyle_Dashed = 0x2, BorderStyle_Solid = 0x3, 
        BorderStyle_Double = 0x4, BorderStyle_DotDash = 0x5, BorderStyle_DotDotDash = 0x6, BorderStyle_Groove = 0x7, BorderStyle_Ridge = 0x8, 
        BorderStyle_Inset = 0x9, BorderStyle_Outset = 0xa
    QTextLength* {.header:headerFile,importcpp:"QTextLength" ,pure.} = object {.inheritable.}
    QTextFormat* {.header:headerFile,importcpp:"QTextFormat" ,pure.} = object {.inheritable.}
    QTextCharFormat* {.header:headerFile,importcpp:"QTextCharFormat" ,pure.} = object of QTextFormat
    QTextBlockFormat* {.header:headerFile,importcpp:"QTextBlockFormat" ,pure.} = object of QTextFormat
    QTextListFormat* {.header:headerFile,importcpp:"QTextListFormat" ,pure.} = object of QTextFormat
    QTextImageFormat* {.header:headerFile,importcpp:"QTextImageFormat" ,pure.} = object of QTextCharFormat
    QTextFrameFormat* {.header:headerFile,importcpp:"QTextFrameFormat" ,pure.} = object of QTextFormat
    QTextTableFormat* {.header:headerFile,importcpp:"QTextTableFormat" ,pure.} = object of QTextFrameFormat
    QTextTableCellFormat* {.header:headerFile,importcpp:"QTextTableCellFormat" ,pure.} = object of QTextCharFormat
{.push warning[Deprecated]: on.}
import nimqt/qtcore/qflags


type
    # typedefs found in the C++ code
    QTextCharFormat_FormatType * = QTextFormat_FormatType
    QTextCharFormat_Property * = QTextFormat_Property
    QTextCharFormat_ObjectTypes * = QTextFormat_ObjectTypes
    QTextCharFormat_PageBreakFlag * = QTextFormat_PageBreakFlag
    QTextCharFormat_PageBreakFlags * = QTextFormat_PageBreakFlags
    QTextBlockFormat_FormatType * = QTextFormat_FormatType
    QTextBlockFormat_Property * = QTextFormat_Property
    QTextBlockFormat_ObjectTypes * = QTextFormat_ObjectTypes
    QTextBlockFormat_PageBreakFlag * = QTextFormat_PageBreakFlag
    QTextBlockFormat_PageBreakFlags * = QTextFormat_PageBreakFlags
    QTextListFormat_FormatType * = QTextFormat_FormatType
    QTextListFormat_Property * = QTextFormat_Property
    QTextListFormat_ObjectTypes * = QTextFormat_ObjectTypes
    QTextListFormat_PageBreakFlag * = QTextFormat_PageBreakFlag
    QTextListFormat_PageBreakFlags * = QTextFormat_PageBreakFlags
    QTextImageFormat_VerticalAlignment * = QTextCharFormat_VerticalAlignment
    QTextImageFormat_UnderlineStyle * = QTextCharFormat_UnderlineStyle
    QTextImageFormat_FontPropertiesInheritanceBehavior * = QTextCharFormat_FontPropertiesInheritanceBehavior
    QTextImageFormat_FormatType * = QTextFormat_FormatType
    QTextImageFormat_Property * = QTextFormat_Property
    QTextImageFormat_ObjectTypes * = QTextFormat_ObjectTypes
    QTextImageFormat_PageBreakFlag * = QTextFormat_PageBreakFlag
    QTextImageFormat_PageBreakFlags * = QTextFormat_PageBreakFlags
    QTextFrameFormat_FormatType * = QTextFormat_FormatType
    QTextFrameFormat_Property * = QTextFormat_Property
    QTextFrameFormat_ObjectTypes * = QTextFormat_ObjectTypes
    QTextFrameFormat_PageBreakFlag * = QTextFormat_PageBreakFlag
    QTextFrameFormat_PageBreakFlags * = QTextFormat_PageBreakFlags
    QTextTableFormat_Position * = QTextFrameFormat_Position
    QTextTableFormat_BorderStyle * = QTextFrameFormat_BorderStyle
    QTextTableFormat_FormatType * = QTextFormat_FormatType
    QTextTableFormat_Property * = QTextFormat_Property
    QTextTableFormat_ObjectTypes * = QTextFormat_ObjectTypes
    QTextTableFormat_PageBreakFlag * = QTextFormat_PageBreakFlag
    QTextTableFormat_PageBreakFlags * = QTextFormat_PageBreakFlags
    QTextTableCellFormat_VerticalAlignment * = QTextCharFormat_VerticalAlignment
    QTextTableCellFormat_UnderlineStyle * = QTextCharFormat_UnderlineStyle
    QTextTableCellFormat_FontPropertiesInheritanceBehavior * = QTextCharFormat_FontPropertiesInheritanceBehavior
    QTextTableCellFormat_FormatType * = QTextFormat_FormatType
    QTextTableCellFormat_Property * = QTextFormat_Property
    QTextTableCellFormat_ObjectTypes * = QTextFormat_ObjectTypes
    QTextTableCellFormat_PageBreakFlag * = QTextFormat_PageBreakFlag
    QTextTableCellFormat_PageBreakFlags * = QTextFormat_PageBreakFlags
    QTextFormat_PageBreakFlags * = QFlags[QTextFormat_PageBreakFlag]

# Stuff for class QTextLength

# Public constructors for QTextLength
proc newQTextLength*(): QTextLength {. header:headerFile, importcpp:"QTextLength(@)", constructor .} # 
proc newQTextLength*(`type`: QTextLength_Type, value: cfloat): QTextLength {. header:headerFile, importcpp:"QTextLength(@)", constructor .} # 

# Public methods for QTextLength
proc `type`*(this:QTextLength): QTextLength_Type {.header:headerFile, importcpp:"#.type(@)".} # Public 
proc value*(this:QTextLength, maximumLength: cfloat): cfloat {.header:headerFile, importcpp:"#.value(@)".} # Public 
proc rawValue*(this:QTextLength): cfloat {.header:headerFile, importcpp:"#.rawValue(@)".} # Public 
proc `!=`*(this:QTextLength, other: QTextLength): bool {.header:headerFile, importcpp:"#.operator!=(@)".} # Public 
# Stuff for class QTextFormat

# Public constructors for QTextFormat
proc newQTextFormat*(): ptr QTextFormat {. header:headerFile, importcpp:"new QTextFormat(@)" .} # 
proc newQTextFormat*(`type`: cint): ptr QTextFormat {. header:headerFile, importcpp:"new QTextFormat(@)" .} # 
proc newQTextFormat*(rhs: QTextFormat): ptr QTextFormat {. header:headerFile, importcpp:"new QTextFormat(@)" .} # 

# Public methods for QTextFormat
proc qt_check_for_QGADGET_macro*(this:ptr QTextFormat) {.header:headerFile, importcpp:"#.qt_check_for_QGADGET_macro(@)".} # Public 
proc swap*(this:ptr QTextFormat, other: QTextFormat) {.header:headerFile, importcpp:"#.swap(@)".} # Public 
proc merge*(this:ptr QTextFormat, other: QTextFormat) {.header:headerFile, importcpp:"#.merge(@)".} # Public 
proc isValid*(this:ptr QTextFormat): bool {.header:headerFile, importcpp:"#.isValid(@)".} # Public 
proc isEmpty*(this:ptr QTextFormat): bool {.header:headerFile, importcpp:"#.isEmpty(@)".} # Public 
proc `type`*(this:ptr QTextFormat): cint {.header:headerFile, importcpp:"#.type(@)".} # Public 
proc objectIndex*(this:ptr QTextFormat): cint {.header:headerFile, importcpp:"#.objectIndex(@)".} # Public 
proc setObjectIndex*(this:ptr QTextFormat, `object`: cint) {.header:headerFile, importcpp:"#.setObjectIndex(@)".} # Public 
import nimqt/qtcore/qvariant
proc property*(this:ptr QTextFormat, propertyId: cint): QVariant {.header:headerFile, importcpp:"#.property(@)".} # Public 
proc setProperty*(this:ptr QTextFormat, propertyId: cint, value: QVariant) {.header:headerFile, importcpp:"#.setProperty(@)".} # Public 
proc clearProperty*(this:ptr QTextFormat, propertyId: cint) {.header:headerFile, importcpp:"#.clearProperty(@)".} # Public 
proc hasProperty*(this:ptr QTextFormat, propertyId: cint): bool {.header:headerFile, importcpp:"#.hasProperty(@)".} # Public 
proc boolProperty*(this:ptr QTextFormat, propertyId: cint): bool {.header:headerFile, importcpp:"#.boolProperty(@)".} # Public 
proc intProperty*(this:ptr QTextFormat, propertyId: cint): cint {.header:headerFile, importcpp:"#.intProperty(@)".} # Public 
proc doubleProperty*(this:ptr QTextFormat, propertyId: cint): cfloat {.header:headerFile, importcpp:"#.doubleProperty(@)".} # Public 
import nimqt/qtcore/qstring
proc stringProperty*(this:ptr QTextFormat, propertyId: cint): QString {.header:headerFile, importcpp:"#.stringProperty(@)".} # Public 
import nimqt/qtgui/qcolor
proc colorProperty*(this:ptr QTextFormat, propertyId: cint): QColor {.header:headerFile, importcpp:"#.colorProperty(@)".} # Public 
import nimqt/qtgui/qpen
proc penProperty*(this:ptr QTextFormat, propertyId: cint): QPen {.header:headerFile, importcpp:"#.penProperty(@)".} # Public 
import nimqt/qtgui/qbrush
proc brushProperty*(this:ptr QTextFormat, propertyId: cint): QBrush {.header:headerFile, importcpp:"#.brushProperty(@)".} # Public 
proc lengthProperty*(this:ptr QTextFormat, propertyId: cint): QTextLength {.header:headerFile, importcpp:"#.lengthProperty(@)".} # Public 
import nimqt/qtcore/qlist
proc lengthVectorProperty*(this:ptr QTextFormat, propertyId: cint): QList[QTextLength] {.header:headerFile, importcpp:"#.lengthVectorProperty(@)".} # Public 
proc setProperty*(this:ptr QTextFormat, propertyId: cint, lengths: QList[QTextLength]) {.header:headerFile, importcpp:"#.setProperty(@)".} # Public 
proc propertyCount*(this:ptr QTextFormat): cint {.header:headerFile, importcpp:"#.propertyCount(@)".} # Public 
proc setObjectType*(this:ptr QTextFormat, `type`: cint) {.header:headerFile, importcpp:"#.setObjectType(@)".} # Public 
proc objectType*(this:ptr QTextFormat): cint {.header:headerFile, importcpp:"#.objectType(@)".} # Public 
proc isCharFormat*(this:ptr QTextFormat): bool {.header:headerFile, importcpp:"#.isCharFormat(@)".} # Public 
proc isBlockFormat*(this:ptr QTextFormat): bool {.header:headerFile, importcpp:"#.isBlockFormat(@)".} # Public 
proc isListFormat*(this:ptr QTextFormat): bool {.header:headerFile, importcpp:"#.isListFormat(@)".} # Public 
proc isFrameFormat*(this:ptr QTextFormat): bool {.header:headerFile, importcpp:"#.isFrameFormat(@)".} # Public 
proc isImageFormat*(this:ptr QTextFormat): bool {.header:headerFile, importcpp:"#.isImageFormat(@)".} # Public 
proc isTableFormat*(this:ptr QTextFormat): bool {.header:headerFile, importcpp:"#.isTableFormat(@)".} # Public 
proc isTableCellFormat*(this:ptr QTextFormat): bool {.header:headerFile, importcpp:"#.isTableCellFormat(@)".} # Public 
proc toBlockFormat*(this:ptr QTextFormat): QTextBlockFormat {.header:headerFile, importcpp:"#.toBlockFormat(@)".} # Public 
proc toCharFormat*(this:ptr QTextFormat): QTextCharFormat {.header:headerFile, importcpp:"#.toCharFormat(@)".} # Public 
proc toListFormat*(this:ptr QTextFormat): QTextListFormat {.header:headerFile, importcpp:"#.toListFormat(@)".} # Public 
proc toTableFormat*(this:ptr QTextFormat): QTextTableFormat {.header:headerFile, importcpp:"#.toTableFormat(@)".} # Public 
proc toFrameFormat*(this:ptr QTextFormat): QTextFrameFormat {.header:headerFile, importcpp:"#.toFrameFormat(@)".} # Public 
proc toImageFormat*(this:ptr QTextFormat): QTextImageFormat {.header:headerFile, importcpp:"#.toImageFormat(@)".} # Public 
proc toTableCellFormat*(this:ptr QTextFormat): QTextTableCellFormat {.header:headerFile, importcpp:"#.toTableCellFormat(@)".} # Public 
proc `!=`*(this:ptr QTextFormat, rhs: QTextFormat): bool {.header:headerFile, importcpp:"#.operator!=(@)".} # Public 
import nimqt/qtcore/qnamespace
proc setLayoutDirection*(this:ptr QTextFormat, direction: Qt_LayoutDirection) {.header:headerFile, importcpp:"#.setLayoutDirection(@)".} # Public 
proc layoutDirection*(this:ptr QTextFormat): Qt_LayoutDirection {.header:headerFile, importcpp:"#.layoutDirection(@)".} # Public 
proc setBackground*(this:ptr QTextFormat, brush: QBrush) {.header:headerFile, importcpp:"#.setBackground(@)".} # Public 
proc background*(this:ptr QTextFormat): QBrush {.header:headerFile, importcpp:"#.background(@)".} # Public 
proc clearBackground*(this:ptr QTextFormat) {.header:headerFile, importcpp:"#.clearBackground(@)".} # Public 
proc setForeground*(this:ptr QTextFormat, brush: QBrush) {.header:headerFile, importcpp:"#.setForeground(@)".} # Public 
proc foreground*(this:ptr QTextFormat): QBrush {.header:headerFile, importcpp:"#.foreground(@)".} # Public 
proc clearForeground*(this:ptr QTextFormat) {.header:headerFile, importcpp:"#.clearForeground(@)".} # Public 
# Stuff for class QTextCharFormat

# Public constructors for QTextCharFormat
proc newQTextCharFormat*(): ptr QTextCharFormat {. header:headerFile, importcpp:"new QTextCharFormat(@)" .} # 

# Public methods for QTextCharFormat
proc isValid*(this:ptr QTextCharFormat): bool {.header:headerFile, importcpp:"#.isValid(@)".} # Public 
import nimqt/qtgui/qfont
proc setFont*(this:ptr QTextCharFormat, font: QFont, behavior: QTextCharFormat_FontPropertiesInheritanceBehavior) {.header:headerFile, importcpp:"#.setFont(@)".} # Public 
proc font*(this:ptr QTextCharFormat): QFont {.header:headerFile, importcpp:"#.font(@)".} # Public 
proc setFontFamily*(this:ptr QTextCharFormat, family: QString) {.header:headerFile, importcpp:"#.setFontFamily(@)".} # Public 
proc fontFamily*(this:ptr QTextCharFormat): QString {.header:headerFile, importcpp:"#.fontFamily(@)".} # Public 
import nimqt/qtcore/qstringlist
proc setFontFamilies*(this:ptr QTextCharFormat, families: QStringList) {.header:headerFile, importcpp:"#.setFontFamilies(@)".} # Public 
proc fontFamilies*(this:ptr QTextCharFormat): QVariant {.header:headerFile, importcpp:"#.fontFamilies(@)".} # Public 
proc setFontStyleName*(this:ptr QTextCharFormat, styleName: QString) {.header:headerFile, importcpp:"#.setFontStyleName(@)".} # Public 
proc fontStyleName*(this:ptr QTextCharFormat): QVariant {.header:headerFile, importcpp:"#.fontStyleName(@)".} # Public 
proc setFontPointSize*(this:ptr QTextCharFormat, size: cfloat) {.header:headerFile, importcpp:"#.setFontPointSize(@)".} # Public 
proc fontPointSize*(this:ptr QTextCharFormat): cfloat {.header:headerFile, importcpp:"#.fontPointSize(@)".} # Public 
proc setFontWeight*(this:ptr QTextCharFormat, weight: cint) {.header:headerFile, importcpp:"#.setFontWeight(@)".} # Public 
proc fontWeight*(this:ptr QTextCharFormat): cint {.header:headerFile, importcpp:"#.fontWeight(@)".} # Public 
proc setFontItalic*(this:ptr QTextCharFormat, italic: bool) {.header:headerFile, importcpp:"#.setFontItalic(@)".} # Public 
proc fontItalic*(this:ptr QTextCharFormat): bool {.header:headerFile, importcpp:"#.fontItalic(@)".} # Public 
proc setFontCapitalization*(this:ptr QTextCharFormat, capitalization: QFont_Capitalization) {.header:headerFile, importcpp:"#.setFontCapitalization(@)".} # Public 
proc fontCapitalization*(this:ptr QTextCharFormat): QFont_Capitalization {.header:headerFile, importcpp:"#.fontCapitalization(@)".} # Public 
proc setFontLetterSpacingType*(this:ptr QTextCharFormat, letterSpacingType: QFont_SpacingType) {.header:headerFile, importcpp:"#.setFontLetterSpacingType(@)".} # Public 
proc fontLetterSpacingType*(this:ptr QTextCharFormat): QFont_SpacingType {.header:headerFile, importcpp:"#.fontLetterSpacingType(@)".} # Public 
proc setFontLetterSpacing*(this:ptr QTextCharFormat, spacing: cfloat) {.header:headerFile, importcpp:"#.setFontLetterSpacing(@)".} # Public 
proc fontLetterSpacing*(this:ptr QTextCharFormat): cfloat {.header:headerFile, importcpp:"#.fontLetterSpacing(@)".} # Public 
proc setFontWordSpacing*(this:ptr QTextCharFormat, spacing: cfloat) {.header:headerFile, importcpp:"#.setFontWordSpacing(@)".} # Public 
proc fontWordSpacing*(this:ptr QTextCharFormat): cfloat {.header:headerFile, importcpp:"#.fontWordSpacing(@)".} # Public 
proc setFontUnderline*(this:ptr QTextCharFormat, underline: bool) {.header:headerFile, importcpp:"#.setFontUnderline(@)".} # Public 
proc fontUnderline*(this:ptr QTextCharFormat): bool {.header:headerFile, importcpp:"#.fontUnderline(@)".} # Public 
proc setFontOverline*(this:ptr QTextCharFormat, overline: bool) {.header:headerFile, importcpp:"#.setFontOverline(@)".} # Public 
proc fontOverline*(this:ptr QTextCharFormat): bool {.header:headerFile, importcpp:"#.fontOverline(@)".} # Public 
proc setFontStrikeOut*(this:ptr QTextCharFormat, strikeOut: bool) {.header:headerFile, importcpp:"#.setFontStrikeOut(@)".} # Public 
proc fontStrikeOut*(this:ptr QTextCharFormat): bool {.header:headerFile, importcpp:"#.fontStrikeOut(@)".} # Public 
proc setUnderlineColor*(this:ptr QTextCharFormat, color: QColor) {.header:headerFile, importcpp:"#.setUnderlineColor(@)".} # Public 
proc underlineColor*(this:ptr QTextCharFormat): QColor {.header:headerFile, importcpp:"#.underlineColor(@)".} # Public 
proc setFontFixedPitch*(this:ptr QTextCharFormat, fixedPitch: bool) {.header:headerFile, importcpp:"#.setFontFixedPitch(@)".} # Public 
proc fontFixedPitch*(this:ptr QTextCharFormat): bool {.header:headerFile, importcpp:"#.fontFixedPitch(@)".} # Public 
proc setFontStretch*(this:ptr QTextCharFormat, factor: cint) {.header:headerFile, importcpp:"#.setFontStretch(@)".} # Public 
proc fontStretch*(this:ptr QTextCharFormat): cint {.header:headerFile, importcpp:"#.fontStretch(@)".} # Public 
proc setFontStyleHint*(this:ptr QTextCharFormat, hint: QFont_StyleHint, strategy: QFont_StyleStrategy) {.header:headerFile, importcpp:"#.setFontStyleHint(@)".} # Public 
proc setFontStyleStrategy*(this:ptr QTextCharFormat, strategy: QFont_StyleStrategy) {.header:headerFile, importcpp:"#.setFontStyleStrategy(@)".} # Public 
proc fontStyleHint*(this:ptr QTextCharFormat): QFont_StyleHint {.header:headerFile, importcpp:"#.fontStyleHint(@)".} # Public 
proc fontStyleStrategy*(this:ptr QTextCharFormat): QFont_StyleStrategy {.header:headerFile, importcpp:"#.fontStyleStrategy(@)".} # Public 
proc setFontHintingPreference*(this:ptr QTextCharFormat, hintingPreference: QFont_HintingPreference) {.header:headerFile, importcpp:"#.setFontHintingPreference(@)".} # Public 
proc fontHintingPreference*(this:ptr QTextCharFormat): QFont_HintingPreference {.header:headerFile, importcpp:"#.fontHintingPreference(@)".} # Public 
proc setFontKerning*(this:ptr QTextCharFormat, enable: bool) {.header:headerFile, importcpp:"#.setFontKerning(@)".} # Public 
proc fontKerning*(this:ptr QTextCharFormat): bool {.header:headerFile, importcpp:"#.fontKerning(@)".} # Public 
proc setUnderlineStyle*(this:ptr QTextCharFormat, style: QTextCharFormat_UnderlineStyle) {.header:headerFile, importcpp:"#.setUnderlineStyle(@)".} # Public 
proc underlineStyle*(this:ptr QTextCharFormat): QTextCharFormat_UnderlineStyle {.header:headerFile, importcpp:"#.underlineStyle(@)".} # Public 
proc setVerticalAlignment*(this:ptr QTextCharFormat, alignment: QTextCharFormat_VerticalAlignment) {.header:headerFile, importcpp:"#.setVerticalAlignment(@)".} # Public 
proc verticalAlignment*(this:ptr QTextCharFormat): QTextCharFormat_VerticalAlignment {.header:headerFile, importcpp:"#.verticalAlignment(@)".} # Public 
proc setTextOutline*(this:ptr QTextCharFormat, pen: QPen) {.header:headerFile, importcpp:"#.setTextOutline(@)".} # Public 
proc textOutline*(this:ptr QTextCharFormat): QPen {.header:headerFile, importcpp:"#.textOutline(@)".} # Public 
proc setToolTip*(this:ptr QTextCharFormat, tip: QString) {.header:headerFile, importcpp:"#.setToolTip(@)".} # Public 
proc toolTip*(this:ptr QTextCharFormat): QString {.header:headerFile, importcpp:"#.toolTip(@)".} # Public 
proc setSuperScriptBaseline*(this:ptr QTextCharFormat, baseline: cfloat) {.header:headerFile, importcpp:"#.setSuperScriptBaseline(@)".} # Public 
proc superScriptBaseline*(this:ptr QTextCharFormat): cfloat {.header:headerFile, importcpp:"#.superScriptBaseline(@)".} # Public 
proc setSubScriptBaseline*(this:ptr QTextCharFormat, baseline: cfloat) {.header:headerFile, importcpp:"#.setSubScriptBaseline(@)".} # Public 
proc subScriptBaseline*(this:ptr QTextCharFormat): cfloat {.header:headerFile, importcpp:"#.subScriptBaseline(@)".} # Public 
proc setBaselineOffset*(this:ptr QTextCharFormat, baseline: cfloat) {.header:headerFile, importcpp:"#.setBaselineOffset(@)".} # Public 
proc baselineOffset*(this:ptr QTextCharFormat): cfloat {.header:headerFile, importcpp:"#.baselineOffset(@)".} # Public 
proc setAnchor*(this:ptr QTextCharFormat, anchor: bool) {.header:headerFile, importcpp:"#.setAnchor(@)".} # Public 
proc isAnchor*(this:ptr QTextCharFormat): bool {.header:headerFile, importcpp:"#.isAnchor(@)".} # Public 
proc setAnchorHref*(this:ptr QTextCharFormat, value: QString) {.header:headerFile, importcpp:"#.setAnchorHref(@)".} # Public 
proc anchorHref*(this:ptr QTextCharFormat): QString {.header:headerFile, importcpp:"#.anchorHref(@)".} # Public 
proc setAnchorNames*(this:ptr QTextCharFormat, names: QStringList) {.header:headerFile, importcpp:"#.setAnchorNames(@)".} # Public 
proc anchorNames*(this:ptr QTextCharFormat): QStringList {.header:headerFile, importcpp:"#.anchorNames(@)".} # Public 
proc setTableCellRowSpan*(this:ptr QTextCharFormat, tableCellRowSpan: cint) {.header:headerFile, importcpp:"#.setTableCellRowSpan(@)".} # Public 
proc tableCellRowSpan*(this:ptr QTextCharFormat): cint {.header:headerFile, importcpp:"#.tableCellRowSpan(@)".} # Public 
proc setTableCellColumnSpan*(this:ptr QTextCharFormat, tableCellColumnSpan: cint) {.header:headerFile, importcpp:"#.setTableCellColumnSpan(@)".} # Public 
proc tableCellColumnSpan*(this:ptr QTextCharFormat): cint {.header:headerFile, importcpp:"#.tableCellColumnSpan(@)".} # Public 
# Stuff for class QTextBlockFormat

# Public constructors for QTextBlockFormat
proc newQTextBlockFormat*(): ptr QTextBlockFormat {. header:headerFile, importcpp:"new QTextBlockFormat(@)" .} # 

# Public methods for QTextBlockFormat
proc isValid*(this:ptr QTextBlockFormat): bool {.header:headerFile, importcpp:"#.isValid(@)".} # Public 
proc setAlignment*(this:ptr QTextBlockFormat, alignment: Qt_Alignment) {.header:headerFile, importcpp:"#.setAlignment(@)".} # Public 
proc alignment*(this:ptr QTextBlockFormat): Qt_Alignment {.header:headerFile, importcpp:"#.alignment(@)".} # Public 
proc setTopMargin*(this:ptr QTextBlockFormat, margin: cfloat) {.header:headerFile, importcpp:"#.setTopMargin(@)".} # Public 
proc topMargin*(this:ptr QTextBlockFormat): cfloat {.header:headerFile, importcpp:"#.topMargin(@)".} # Public 
proc setBottomMargin*(this:ptr QTextBlockFormat, margin: cfloat) {.header:headerFile, importcpp:"#.setBottomMargin(@)".} # Public 
proc bottomMargin*(this:ptr QTextBlockFormat): cfloat {.header:headerFile, importcpp:"#.bottomMargin(@)".} # Public 
proc setLeftMargin*(this:ptr QTextBlockFormat, margin: cfloat) {.header:headerFile, importcpp:"#.setLeftMargin(@)".} # Public 
proc leftMargin*(this:ptr QTextBlockFormat): cfloat {.header:headerFile, importcpp:"#.leftMargin(@)".} # Public 
proc setRightMargin*(this:ptr QTextBlockFormat, margin: cfloat) {.header:headerFile, importcpp:"#.setRightMargin(@)".} # Public 
proc rightMargin*(this:ptr QTextBlockFormat): cfloat {.header:headerFile, importcpp:"#.rightMargin(@)".} # Public 
proc setTextIndent*(this:ptr QTextBlockFormat, aindent: cfloat) {.header:headerFile, importcpp:"#.setTextIndent(@)".} # Public 
proc textIndent*(this:ptr QTextBlockFormat): cfloat {.header:headerFile, importcpp:"#.textIndent(@)".} # Public 
proc setIndent*(this:ptr QTextBlockFormat, indent: cint) {.header:headerFile, importcpp:"#.setIndent(@)".} # Public 
proc indent*(this:ptr QTextBlockFormat): cint {.header:headerFile, importcpp:"#.indent(@)".} # Public 
proc setHeadingLevel*(this:ptr QTextBlockFormat, alevel: cint) {.header:headerFile, importcpp:"#.setHeadingLevel(@)".} # Public 
proc headingLevel*(this:ptr QTextBlockFormat): cint {.header:headerFile, importcpp:"#.headingLevel(@)".} # Public 
proc setLineHeight*(this:ptr QTextBlockFormat, height: cfloat, heightType: cint) {.header:headerFile, importcpp:"#.setLineHeight(@)".} # Public 
proc lineHeight*(this:ptr QTextBlockFormat, scriptLineHeight: cfloat, scaling: cfloat): cfloat {.header:headerFile, importcpp:"#.lineHeight(@)".} # Public 
proc lineHeight*(this:ptr QTextBlockFormat): cfloat {.header:headerFile, importcpp:"#.lineHeight(@)".} # Public 
proc lineHeightType*(this:ptr QTextBlockFormat): cint {.header:headerFile, importcpp:"#.lineHeightType(@)".} # Public 
proc setNonBreakableLines*(this:ptr QTextBlockFormat, b: bool) {.header:headerFile, importcpp:"#.setNonBreakableLines(@)".} # Public 
proc nonBreakableLines*(this:ptr QTextBlockFormat): bool {.header:headerFile, importcpp:"#.nonBreakableLines(@)".} # Public 
proc setPageBreakPolicy*(this:ptr QTextBlockFormat, flags: QTextFormat_PageBreakFlags) {.header:headerFile, importcpp:"#.setPageBreakPolicy(@)".} # Public 
proc pageBreakPolicy*(this:ptr QTextBlockFormat): QTextFormat_PageBreakFlags {.header:headerFile, importcpp:"#.pageBreakPolicy(@)".} # Public 
proc setMarker*(this:ptr QTextBlockFormat, marker: QTextBlockFormat_MarkerType) {.header:headerFile, importcpp:"#.setMarker(@)".} # Public 
proc marker*(this:ptr QTextBlockFormat): QTextBlockFormat_MarkerType {.header:headerFile, importcpp:"#.marker(@)".} # Public 
# Stuff for class QTextListFormat

# Public constructors for QTextListFormat
proc newQTextListFormat*(): ptr QTextListFormat {. header:headerFile, importcpp:"new QTextListFormat(@)" .} # 

# Public methods for QTextListFormat
proc isValid*(this:ptr QTextListFormat): bool {.header:headerFile, importcpp:"#.isValid(@)".} # Public 
proc setStyle*(this:ptr QTextListFormat, style: QTextListFormat_Style) {.header:headerFile, importcpp:"#.setStyle(@)".} # Public 
proc style*(this:ptr QTextListFormat): QTextListFormat_Style {.header:headerFile, importcpp:"#.style(@)".} # Public 
proc setIndent*(this:ptr QTextListFormat, indent: cint) {.header:headerFile, importcpp:"#.setIndent(@)".} # Public 
proc indent*(this:ptr QTextListFormat): cint {.header:headerFile, importcpp:"#.indent(@)".} # Public 
proc setNumberPrefix*(this:ptr QTextListFormat, numberPrefix: QString) {.header:headerFile, importcpp:"#.setNumberPrefix(@)".} # Public 
proc numberPrefix*(this:ptr QTextListFormat): QString {.header:headerFile, importcpp:"#.numberPrefix(@)".} # Public 
proc setNumberSuffix*(this:ptr QTextListFormat, numberSuffix: QString) {.header:headerFile, importcpp:"#.setNumberSuffix(@)".} # Public 
proc numberSuffix*(this:ptr QTextListFormat): QString {.header:headerFile, importcpp:"#.numberSuffix(@)".} # Public 
# Stuff for class QTextImageFormat

# Public constructors for QTextImageFormat
proc newQTextImageFormat*(): ptr QTextImageFormat {. header:headerFile, importcpp:"new QTextImageFormat(@)" .} # 

# Public methods for QTextImageFormat
proc isValid*(this:ptr QTextImageFormat): bool {.header:headerFile, importcpp:"#.isValid(@)".} # Public 
proc setName*(this:ptr QTextImageFormat, name: QString) {.header:headerFile, importcpp:"#.setName(@)".} # Public 
proc name*(this:ptr QTextImageFormat): QString {.header:headerFile, importcpp:"#.name(@)".} # Public 
proc setWidth*(this:ptr QTextImageFormat, width: cfloat) {.header:headerFile, importcpp:"#.setWidth(@)".} # Public 
proc width*(this:ptr QTextImageFormat): cfloat {.header:headerFile, importcpp:"#.width(@)".} # Public 
proc setHeight*(this:ptr QTextImageFormat, height: cfloat) {.header:headerFile, importcpp:"#.setHeight(@)".} # Public 
proc height*(this:ptr QTextImageFormat): cfloat {.header:headerFile, importcpp:"#.height(@)".} # Public 
proc setQuality*(this:ptr QTextImageFormat, quality: cint) {.header:headerFile, importcpp:"#.setQuality(@)".} # Public 
proc setQuality*(this:ptr QTextImageFormat) {.header:headerFile, importcpp:"#.setQuality(@)".} # Public 
proc quality*(this:ptr QTextImageFormat): cint {.header:headerFile, importcpp:"#.quality(@)".} # Public 
# Stuff for class QTextFrameFormat

# Public constructors for QTextFrameFormat
proc newQTextFrameFormat*(): ptr QTextFrameFormat {. header:headerFile, importcpp:"new QTextFrameFormat(@)" .} # 

# Public methods for QTextFrameFormat
proc isValid*(this:ptr QTextFrameFormat): bool {.header:headerFile, importcpp:"#.isValid(@)".} # Public 
proc setPosition*(this:ptr QTextFrameFormat, f: QTextFrameFormat_Position) {.header:headerFile, importcpp:"#.setPosition(@)".} # Public 
proc position*(this:ptr QTextFrameFormat): QTextFrameFormat_Position {.header:headerFile, importcpp:"#.position(@)".} # Public 
proc setBorder*(this:ptr QTextFrameFormat, border: cfloat) {.header:headerFile, importcpp:"#.setBorder(@)".} # Public 
proc border*(this:ptr QTextFrameFormat): cfloat {.header:headerFile, importcpp:"#.border(@)".} # Public 
proc setBorderBrush*(this:ptr QTextFrameFormat, brush: QBrush) {.header:headerFile, importcpp:"#.setBorderBrush(@)".} # Public 
proc borderBrush*(this:ptr QTextFrameFormat): QBrush {.header:headerFile, importcpp:"#.borderBrush(@)".} # Public 
proc setBorderStyle*(this:ptr QTextFrameFormat, style: QTextFrameFormat_BorderStyle) {.header:headerFile, importcpp:"#.setBorderStyle(@)".} # Public 
proc borderStyle*(this:ptr QTextFrameFormat): QTextFrameFormat_BorderStyle {.header:headerFile, importcpp:"#.borderStyle(@)".} # Public 
proc setMargin*(this:ptr QTextFrameFormat, margin: cfloat) {.header:headerFile, importcpp:"#.setMargin(@)".} # Public 
proc margin*(this:ptr QTextFrameFormat): cfloat {.header:headerFile, importcpp:"#.margin(@)".} # Public 
proc setTopMargin*(this:ptr QTextFrameFormat, margin: cfloat) {.header:headerFile, importcpp:"#.setTopMargin(@)".} # Public 
proc topMargin*(this:ptr QTextFrameFormat): cfloat {.header:headerFile, importcpp:"#.topMargin(@)".} # Public 
proc setBottomMargin*(this:ptr QTextFrameFormat, margin: cfloat) {.header:headerFile, importcpp:"#.setBottomMargin(@)".} # Public 
proc bottomMargin*(this:ptr QTextFrameFormat): cfloat {.header:headerFile, importcpp:"#.bottomMargin(@)".} # Public 
proc setLeftMargin*(this:ptr QTextFrameFormat, margin: cfloat) {.header:headerFile, importcpp:"#.setLeftMargin(@)".} # Public 
proc leftMargin*(this:ptr QTextFrameFormat): cfloat {.header:headerFile, importcpp:"#.leftMargin(@)".} # Public 
proc setRightMargin*(this:ptr QTextFrameFormat, margin: cfloat) {.header:headerFile, importcpp:"#.setRightMargin(@)".} # Public 
proc rightMargin*(this:ptr QTextFrameFormat): cfloat {.header:headerFile, importcpp:"#.rightMargin(@)".} # Public 
proc setPadding*(this:ptr QTextFrameFormat, padding: cfloat) {.header:headerFile, importcpp:"#.setPadding(@)".} # Public 
proc padding*(this:ptr QTextFrameFormat): cfloat {.header:headerFile, importcpp:"#.padding(@)".} # Public 
proc setWidth*(this:ptr QTextFrameFormat, width: cfloat) {.header:headerFile, importcpp:"#.setWidth(@)".} # Public 
proc setWidth*(this:ptr QTextFrameFormat, length: QTextLength) {.header:headerFile, importcpp:"#.setWidth(@)".} # Public 
proc width*(this:ptr QTextFrameFormat): QTextLength {.header:headerFile, importcpp:"#.width(@)".} # Public 
proc setHeight*(this:ptr QTextFrameFormat, height: cfloat) {.header:headerFile, importcpp:"#.setHeight(@)".} # Public 
proc setHeight*(this:ptr QTextFrameFormat, height: QTextLength) {.header:headerFile, importcpp:"#.setHeight(@)".} # Public 
proc height*(this:ptr QTextFrameFormat): QTextLength {.header:headerFile, importcpp:"#.height(@)".} # Public 
proc setPageBreakPolicy*(this:ptr QTextFrameFormat, flags: QTextFormat_PageBreakFlags) {.header:headerFile, importcpp:"#.setPageBreakPolicy(@)".} # Public 
proc pageBreakPolicy*(this:ptr QTextFrameFormat): QTextFormat_PageBreakFlags {.header:headerFile, importcpp:"#.pageBreakPolicy(@)".} # Public 
# Stuff for class QTextTableFormat

# Public constructors for QTextTableFormat
proc newQTextTableFormat*(): ptr QTextTableFormat {. header:headerFile, importcpp:"new QTextTableFormat(@)" .} # 

# Public methods for QTextTableFormat
proc isValid*(this:ptr QTextTableFormat): bool {.header:headerFile, importcpp:"#.isValid(@)".} # Public 
proc columns*(this:ptr QTextTableFormat): cint {.header:headerFile, importcpp:"#.columns(@)".} # Public 
proc setColumns*(this:ptr QTextTableFormat, columns: cint) {.header:headerFile, importcpp:"#.setColumns(@)".} # Public 
proc setColumnWidthConstraints*(this:ptr QTextTableFormat, constraints: QList[QTextLength]) {.header:headerFile, importcpp:"#.setColumnWidthConstraints(@)".} # Public 
proc columnWidthConstraints*(this:ptr QTextTableFormat): QList[QTextLength] {.header:headerFile, importcpp:"#.columnWidthConstraints(@)".} # Public 
proc clearColumnWidthConstraints*(this:ptr QTextTableFormat) {.header:headerFile, importcpp:"#.clearColumnWidthConstraints(@)".} # Public 
proc cellSpacing*(this:ptr QTextTableFormat): cfloat {.header:headerFile, importcpp:"#.cellSpacing(@)".} # Public 
proc setCellSpacing*(this:ptr QTextTableFormat, spacing: cfloat) {.header:headerFile, importcpp:"#.setCellSpacing(@)".} # Public 
proc cellPadding*(this:ptr QTextTableFormat): cfloat {.header:headerFile, importcpp:"#.cellPadding(@)".} # Public 
proc setCellPadding*(this:ptr QTextTableFormat, padding: cfloat) {.header:headerFile, importcpp:"#.setCellPadding(@)".} # Public 
proc setAlignment*(this:ptr QTextTableFormat, alignment: Qt_Alignment) {.header:headerFile, importcpp:"#.setAlignment(@)".} # Public 
proc alignment*(this:ptr QTextTableFormat): Qt_Alignment {.header:headerFile, importcpp:"#.alignment(@)".} # Public 
proc setHeaderRowCount*(this:ptr QTextTableFormat, count: cint) {.header:headerFile, importcpp:"#.setHeaderRowCount(@)".} # Public 
proc headerRowCount*(this:ptr QTextTableFormat): cint {.header:headerFile, importcpp:"#.headerRowCount(@)".} # Public 
proc setBorderCollapse*(this:ptr QTextTableFormat, borderCollapse: bool) {.header:headerFile, importcpp:"#.setBorderCollapse(@)".} # Public 
proc borderCollapse*(this:ptr QTextTableFormat): bool {.header:headerFile, importcpp:"#.borderCollapse(@)".} # Public 
# Stuff for class QTextTableCellFormat

# Public constructors for QTextTableCellFormat
proc newQTextTableCellFormat*(): ptr QTextTableCellFormat {. header:headerFile, importcpp:"new QTextTableCellFormat(@)" .} # 

# Public methods for QTextTableCellFormat
proc isValid*(this:ptr QTextTableCellFormat): bool {.header:headerFile, importcpp:"#.isValid(@)".} # Public 
proc setTopPadding*(this:ptr QTextTableCellFormat, padding: cfloat) {.header:headerFile, importcpp:"#.setTopPadding(@)".} # Public 
proc topPadding*(this:ptr QTextTableCellFormat): cfloat {.header:headerFile, importcpp:"#.topPadding(@)".} # Public 
proc setBottomPadding*(this:ptr QTextTableCellFormat, padding: cfloat) {.header:headerFile, importcpp:"#.setBottomPadding(@)".} # Public 
proc bottomPadding*(this:ptr QTextTableCellFormat): cfloat {.header:headerFile, importcpp:"#.bottomPadding(@)".} # Public 
proc setLeftPadding*(this:ptr QTextTableCellFormat, padding: cfloat) {.header:headerFile, importcpp:"#.setLeftPadding(@)".} # Public 
proc leftPadding*(this:ptr QTextTableCellFormat): cfloat {.header:headerFile, importcpp:"#.leftPadding(@)".} # Public 
proc setRightPadding*(this:ptr QTextTableCellFormat, padding: cfloat) {.header:headerFile, importcpp:"#.setRightPadding(@)".} # Public 
proc rightPadding*(this:ptr QTextTableCellFormat): cfloat {.header:headerFile, importcpp:"#.rightPadding(@)".} # Public 
proc setPadding*(this:ptr QTextTableCellFormat, padding: cfloat) {.header:headerFile, importcpp:"#.setPadding(@)".} # Public 
proc setTopBorder*(this:ptr QTextTableCellFormat, width: cfloat) {.header:headerFile, importcpp:"#.setTopBorder(@)".} # Public 
proc topBorder*(this:ptr QTextTableCellFormat): cfloat {.header:headerFile, importcpp:"#.topBorder(@)".} # Public 
proc setBottomBorder*(this:ptr QTextTableCellFormat, width: cfloat) {.header:headerFile, importcpp:"#.setBottomBorder(@)".} # Public 
proc bottomBorder*(this:ptr QTextTableCellFormat): cfloat {.header:headerFile, importcpp:"#.bottomBorder(@)".} # Public 
proc setLeftBorder*(this:ptr QTextTableCellFormat, width: cfloat) {.header:headerFile, importcpp:"#.setLeftBorder(@)".} # Public 
proc leftBorder*(this:ptr QTextTableCellFormat): cfloat {.header:headerFile, importcpp:"#.leftBorder(@)".} # Public 
proc setRightBorder*(this:ptr QTextTableCellFormat, width: cfloat) {.header:headerFile, importcpp:"#.setRightBorder(@)".} # Public 
proc rightBorder*(this:ptr QTextTableCellFormat): cfloat {.header:headerFile, importcpp:"#.rightBorder(@)".} # Public 
proc setBorder*(this:ptr QTextTableCellFormat, width: cfloat) {.header:headerFile, importcpp:"#.setBorder(@)".} # Public 
proc setTopBorderStyle*(this:ptr QTextTableCellFormat, style: QTextFrameFormat_BorderStyle) {.header:headerFile, importcpp:"#.setTopBorderStyle(@)".} # Public 
proc topBorderStyle*(this:ptr QTextTableCellFormat): QTextFrameFormat_BorderStyle {.header:headerFile, importcpp:"#.topBorderStyle(@)".} # Public 
proc setBottomBorderStyle*(this:ptr QTextTableCellFormat, style: QTextFrameFormat_BorderStyle) {.header:headerFile, importcpp:"#.setBottomBorderStyle(@)".} # Public 
proc bottomBorderStyle*(this:ptr QTextTableCellFormat): QTextFrameFormat_BorderStyle {.header:headerFile, importcpp:"#.bottomBorderStyle(@)".} # Public 
proc setLeftBorderStyle*(this:ptr QTextTableCellFormat, style: QTextFrameFormat_BorderStyle) {.header:headerFile, importcpp:"#.setLeftBorderStyle(@)".} # Public 
proc leftBorderStyle*(this:ptr QTextTableCellFormat): QTextFrameFormat_BorderStyle {.header:headerFile, importcpp:"#.leftBorderStyle(@)".} # Public 
proc setRightBorderStyle*(this:ptr QTextTableCellFormat, style: QTextFrameFormat_BorderStyle) {.header:headerFile, importcpp:"#.setRightBorderStyle(@)".} # Public 
proc rightBorderStyle*(this:ptr QTextTableCellFormat): QTextFrameFormat_BorderStyle {.header:headerFile, importcpp:"#.rightBorderStyle(@)".} # Public 
proc setBorderStyle*(this:ptr QTextTableCellFormat, style: QTextFrameFormat_BorderStyle) {.header:headerFile, importcpp:"#.setBorderStyle(@)".} # Public 
proc setTopBorderBrush*(this:ptr QTextTableCellFormat, brush: QBrush) {.header:headerFile, importcpp:"#.setTopBorderBrush(@)".} # Public 
proc topBorderBrush*(this:ptr QTextTableCellFormat): QBrush {.header:headerFile, importcpp:"#.topBorderBrush(@)".} # Public 
proc setBottomBorderBrush*(this:ptr QTextTableCellFormat, brush: QBrush) {.header:headerFile, importcpp:"#.setBottomBorderBrush(@)".} # Public 
proc bottomBorderBrush*(this:ptr QTextTableCellFormat): QBrush {.header:headerFile, importcpp:"#.bottomBorderBrush(@)".} # Public 
proc setLeftBorderBrush*(this:ptr QTextTableCellFormat, brush: QBrush) {.header:headerFile, importcpp:"#.setLeftBorderBrush(@)".} # Public 
proc leftBorderBrush*(this:ptr QTextTableCellFormat): QBrush {.header:headerFile, importcpp:"#.leftBorderBrush(@)".} # Public 
proc setRightBorderBrush*(this:ptr QTextTableCellFormat, brush: QBrush) {.header:headerFile, importcpp:"#.setRightBorderBrush(@)".} # Public 
proc rightBorderBrush*(this:ptr QTextTableCellFormat): QBrush {.header:headerFile, importcpp:"#.rightBorderBrush(@)".} # Public 
proc setBorderBrush*(this:ptr QTextTableCellFormat, brush: QBrush) {.header:headerFile, importcpp:"#.setBorderBrush(@)".} # Public 

export qfont
export qstringlist
export qstring
export qnamespace
export qlist
export qbrush
export qvariant
export qflags
export qpen
export qcolor