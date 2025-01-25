const headerFile* = "QtGui/qfont.h"

type
    # Enums found in the C++ code
    # Global
    QFont_StyleHint* {.header:headerFile,importcpp:"QFont::StyleHint".} = enum Helvetica = 0, Times = 0x1, Courier = 0x2, OldEnglish = 0x3, 
        System = 0x4, AnyStyle = 0x5, Cursive = 0x6, Monospace = 0x7, Fantasy = 0x8
    QFont_StyleStrategy* {.header:headerFile,importcpp:"QFont::StyleStrategy".} = enum PreferDefault = 0x1, PreferBitmap = 0x2, PreferDevice = 0x4, PreferOutline = 0x8, 
        ForceOutline = 0x10, PreferMatch = 0x20, PreferQuality = 0x40, PreferAntialias = 0x80, NoAntialias = 0x100, 
        NoSubpixelAntialias = 0x800, PreferNoShaping = 0x1000, NoFontMerging = 0x8000
    QFont_HintingPreference* {.header:headerFile,importcpp:"QFont::HintingPreference".} = enum PreferDefaultHinting = 0, PreferNoHinting = 0x1, PreferVerticalHinting = 0x2, PreferFullHinting = 0x3
    QFont_Weight* {.header:headerFile,importcpp:"QFont::Weight".} = enum Thin = 0x64, ExtraLight = 0xc8, Light = 0x12c, Normal = 0x190, 
        Medium = 0x1f4, DemiBold = 0x258, Bold = 0x2bc, ExtraBold = 0x320, Black = 0x384
    QFont_Style* {.header:headerFile,importcpp:"QFont::Style".} = enum StyleNormal = 0, StyleItalic = 0x1, StyleOblique = 0x2
    QFont_Stretch* {.header:headerFile,importcpp:"QFont::Stretch".} = enum AnyStretch = 0, UltraCondensed = 0x32, ExtraCondensed = 0x3e, Condensed = 0x4b, 
        SemiCondensed = 0x57, Unstretched = 0x64, SemiExpanded = 0x70, Expanded = 0x7d, ExtraExpanded = 0x96, 
        UltraExpanded = 0xc8
    QFont_Capitalization* {.header:headerFile,importcpp:"QFont::Capitalization".} = enum MixedCase = 0, AllUppercase = 0x1, AllLowercase = 0x2, SmallCaps = 0x3, 
        Capitalize = 0x4
    QFont_SpacingType* {.header:headerFile,importcpp:"QFont::SpacingType".} = enum PercentageSpacing = 0, AbsoluteSpacing = 0x1
    QFont_ResolveProperties* {.header:headerFile,importcpp:"QFont::ResolveProperties".} = enum NoPropertiesResolved = 0, FamilyResolved = 0x1, SizeResolved = 0x2, StyleHintResolved = 0x4, 
        StyleStrategyResolved = 0x8, WeightResolved = 0x10, StyleResolved = 0x20, UnderlineResolved = 0x40, OverlineResolved = 0x80, 
        StrikeOutResolved = 0x100, FixedPitchResolved = 0x200, StretchResolved = 0x400, KerningResolved = 0x800, CapitalizationResolved = 0x1000, 
        LetterSpacingResolved = 0x2000, WordSpacingResolved = 0x4000, HintingPreferenceResolved = 0x8000, StyleNameResolved = 0x10000, FamiliesResolved = 0x20000, 
        AllPropertiesResolved = 0x3ffff

type
    # Classes found in the C++ code
    QFont* {.header:headerFile,importcpp:"QFont" ,pure,inheritable.} = object

# Consts
const
    # Global
    QFont_StyleHintSansSerif* = 0 # from anonymous enum Helvetica
    QFont_StyleHintSerif* = 1 # from anonymous enum Times
    QFont_StyleHintTypeWriter* = 2 # from anonymous enum Courier
    QFont_StyleHintDecorative* = 3 # from anonymous enum OldEnglish

# Stuff for class QFont

# Public constructors for QFont
proc newQFont*(): QFont {. header:headerFile, importcpp:"QFont(@)", constructor .} #
import nimqt/qtcore/qstring
# 1 default parameters!
proc newQFont*(family: QString, pointSize: cint, weight: cint, italic: bool): QFont {. header:headerFile, importcpp:"QFont(@)", constructor .} #
proc newQFont*(family: QString, pointSize: cint, weight: cint): QFont {. header:headerFile, importcpp:"QFont(@)", constructor .} #
import nimqt/qtcore/qstringlist
# 1 default parameters!
proc newQFont*(families: QStringList, pointSize: cint, weight: cint, italic: bool): QFont {. header:headerFile, importcpp:"QFont(@)", constructor .} #
proc newQFont*(families: QStringList, pointSize: cint, weight: cint): QFont {. header:headerFile, importcpp:"QFont(@)", constructor .} #
import nimqt/qtgui/qpaintdevice
proc newQFont*(font: QFont, pd: ptr QPaintDevice): QFont {. header:headerFile, importcpp:"QFont(@)", constructor .} #
proc newQFont*(font: QFont): QFont {. header:headerFile, importcpp:"QFont(@)", constructor .} #

# Public methods for QFont
proc qt_check_for_QGADGET_macro*(this: QFont) {.header:headerFile, importcpp:"#.qt_check_for_QGADGET_macro(@)".} # Public
proc swap*(this: QFont, other: QFont) {.header:headerFile, importcpp:"#.swap(@)".} # Public
proc family*(this: QFont): QString {.header:headerFile, importcpp:"#.family(@)".} # Public
proc setFamily*(this: QFont, arg_0: QString) {.header:headerFile, importcpp:"#.setFamily(@)".} # Public
proc families*(this: QFont): QStringList {.header:headerFile, importcpp:"#.families(@)".} # Public
proc setFamilies*(this: QFont, arg_0: QStringList) {.header:headerFile, importcpp:"#.setFamilies(@)".} # Public
proc styleName*(this: QFont): QString {.header:headerFile, importcpp:"#.styleName(@)".} # Public
proc setStyleName*(this: QFont, arg_0: QString) {.header:headerFile, importcpp:"#.setStyleName(@)".} # Public
proc pointSize*(this: QFont): cint {.header:headerFile, importcpp:"#.pointSize(@)".} # Public
proc setPointSize*(this: QFont, arg_0: cint) {.header:headerFile, importcpp:"#.setPointSize(@)".} # Public
proc pointSizeF*(this: QFont): cfloat {.header:headerFile, importcpp:"#.pointSizeF(@)".} # Public
proc setPointSizeF*(this: QFont, arg_0: cfloat) {.header:headerFile, importcpp:"#.setPointSizeF(@)".} # Public
proc pixelSize*(this: QFont): cint {.header:headerFile, importcpp:"#.pixelSize(@)".} # Public
proc setPixelSize*(this: QFont, arg_0: cint) {.header:headerFile, importcpp:"#.setPixelSize(@)".} # Public
proc weight*(this: QFont): QFont_Weight {.header:headerFile, importcpp:"#.weight(@)".} # Public
proc setWeight*(this: QFont, weight: QFont_Weight) {.header:headerFile, importcpp:"#.setWeight(@)".} # Public
proc bold*(this: QFont): bool {.header:headerFile, importcpp:"#.bold(@)".} # Public
proc setBold*(this: QFont, arg_0: bool) {.header:headerFile, importcpp:"#.setBold(@)".} # Public
proc setStyle*(this: QFont, style: QFont_Style) {.header:headerFile, importcpp:"#.setStyle(@)".} # Public
proc style*(this: QFont): QFont_Style {.header:headerFile, importcpp:"#.style(@)".} # Public
proc italic*(this: QFont): bool {.header:headerFile, importcpp:"#.italic(@)".} # Public
proc setItalic*(this: QFont, b: bool) {.header:headerFile, importcpp:"#.setItalic(@)".} # Public
proc underline*(this: QFont): bool {.header:headerFile, importcpp:"#.underline(@)".} # Public
proc setUnderline*(this: QFont, arg_0: bool) {.header:headerFile, importcpp:"#.setUnderline(@)".} # Public
proc overline*(this: QFont): bool {.header:headerFile, importcpp:"#.overline(@)".} # Public
proc setOverline*(this: QFont, arg_0: bool) {.header:headerFile, importcpp:"#.setOverline(@)".} # Public
proc strikeOut*(this: QFont): bool {.header:headerFile, importcpp:"#.strikeOut(@)".} # Public
proc setStrikeOut*(this: QFont, arg_0: bool) {.header:headerFile, importcpp:"#.setStrikeOut(@)".} # Public
proc fixedPitch*(this: QFont): bool {.header:headerFile, importcpp:"#.fixedPitch(@)".} # Public
proc setFixedPitch*(this: QFont, arg_0: bool) {.header:headerFile, importcpp:"#.setFixedPitch(@)".} # Public
proc kerning*(this: QFont): bool {.header:headerFile, importcpp:"#.kerning(@)".} # Public
proc setKerning*(this: QFont, arg_0: bool) {.header:headerFile, importcpp:"#.setKerning(@)".} # Public
proc styleHint*(this: QFont): QFont_StyleHint {.header:headerFile, importcpp:"#.styleHint(@)".} # Public
proc styleStrategy*(this: QFont): QFont_StyleStrategy {.header:headerFile, importcpp:"#.styleStrategy(@)".} # Public
proc setStyleHint*(this: QFont, arg_0: QFont_StyleHint, arg_1: QFont_StyleStrategy) {.header:headerFile, importcpp:"#.setStyleHint(@)".} # Public
proc setStyleStrategy*(this: QFont, s: QFont_StyleStrategy) {.header:headerFile, importcpp:"#.setStyleStrategy(@)".} # Public
proc stretch*(this: QFont): cint {.header:headerFile, importcpp:"#.stretch(@)".} # Public
proc setStretch*(this: QFont, arg_0: cint) {.header:headerFile, importcpp:"#.setStretch(@)".} # Public
proc letterSpacing*(this: QFont): cfloat {.header:headerFile, importcpp:"#.letterSpacing(@)".} # Public
proc letterSpacingType*(this: QFont): QFont_SpacingType {.header:headerFile, importcpp:"#.letterSpacingType(@)".} # Public
proc setLetterSpacing*(this: QFont, `type`: QFont_SpacingType, spacing: cfloat) {.header:headerFile, importcpp:"#.setLetterSpacing(@)".} # Public
proc wordSpacing*(this: QFont): cfloat {.header:headerFile, importcpp:"#.wordSpacing(@)".} # Public
proc setWordSpacing*(this: QFont, spacing: cfloat) {.header:headerFile, importcpp:"#.setWordSpacing(@)".} # Public
proc setCapitalization*(this: QFont, arg_0: QFont_Capitalization) {.header:headerFile, importcpp:"#.setCapitalization(@)".} # Public
proc capitalization*(this: QFont): QFont_Capitalization {.header:headerFile, importcpp:"#.capitalization(@)".} # Public
proc setHintingPreference*(this: QFont, hintingPreference: QFont_HintingPreference) {.header:headerFile, importcpp:"#.setHintingPreference(@)".} # Public
proc hintingPreference*(this: QFont): QFont_HintingPreference {.header:headerFile, importcpp:"#.hintingPreference(@)".} # Public
proc exactMatch*(this: QFont): bool {.header:headerFile, importcpp:"#.exactMatch(@)".} # Public
proc `!=`*(this: QFont, arg_0: QFont): bool {.header:headerFile, importcpp:"#.operator!=(@)".} # Public
proc `<`*(this: QFont, arg_0: QFont): bool {.header:headerFile, importcpp:"#.operator<(@)".} # Public
proc isCopyOf*(this: QFont, arg_0: QFont): bool {.header:headerFile, importcpp:"#.isCopyOf(@)".} # Public
proc key*(this: QFont): QString {.header:headerFile, importcpp:"#.key(@)".} # Public
proc toString*(this: QFont): QString {.header:headerFile, importcpp:"#.toString(@)".} # Public
proc fromString*(this: QFont, arg_0: QString): bool {.header:headerFile, importcpp:"#.fromString(@)".} # Public
proc static_QFont_substitute*(arg_1: QString): QString {.header:headerFile, importcpp:"QFont::substitute(@)".} # Public static
proc static_QFont_substitutes*(arg_1: QString): QStringList {.header:headerFile, importcpp:"QFont::substitutes(@)".} # Public static
proc static_QFont_substitutions*(): QStringList {.header:headerFile, importcpp:"QFont::substitutions(@)".} # Public static
proc static_QFont_insertSubstitution*(arg_0: QString, arg_1: QString) {.header:headerFile, importcpp:"QFont::insertSubstitution(@)".} # Public static
proc static_QFont_insertSubstitutions*(arg_0: QString, arg_1: QStringList) {.header:headerFile, importcpp:"QFont::insertSubstitutions(@)".} # Public static
proc static_QFont_removeSubstitutions*(arg_0: QString) {.header:headerFile, importcpp:"QFont::removeSubstitutions(@)".} # Public static
proc static_QFont_initialize*() {.header:headerFile, importcpp:"QFont::initialize(@)".} # Public static
proc static_QFont_cleanup*() {.header:headerFile, importcpp:"QFont::cleanup(@)".} # Public static
proc static_QFont_cacheStatistics*() {.header:headerFile, importcpp:"QFont::cacheStatistics(@)".} # Public static
proc defaultFamily*(this: QFont): QString {.header:headerFile, importcpp:"#.defaultFamily(@)".} # Public
proc resolve*(this: QFont, arg_1: QFont): QFont {.header:headerFile, importcpp:"#.resolve(@)".} # Public
proc resolveMask*(this: QFont): cuint {.header:headerFile, importcpp:"#.resolveMask(@)".} # Public
proc setResolveMask*(this: QFont, mask: cuint) {.header:headerFile, importcpp:"#.setResolveMask(@)".} # Public
proc setLegacyWeight*(this: QFont, legacyWeight: cint) {.header:headerFile, importcpp:"#.setLegacyWeight(@)".} # Public
proc legacyWeight*(this: QFont): cint {.header:headerFile, importcpp:"#.legacyWeight(@)".} # Public

export qstringlist
export qstring
export qpaintdevice
