const headerFile* = "QtCore/qchar.h"

type
    # Enums found in the C++ code
    # Global
    QChar_SpecialCharacter* {.header:headerFile,importcpp:"QChar::SpecialCharacter".} = enum Null = 0, Tabulation = 0x9, LineFeed = 0xa, FormFeed = 0xc, 
        CarriageReturn = 0xd, Space = 0x20, Nbsp = 0xa0, SoftHyphen = 0xad, LineSeparator = 0x2028, 
        ParagraphSeparator = 0x2029, VisualTabCharacter = 0x2192, ByteOrderMark = 0xfeff, ObjectReplacementCharacter = 0xfffc, ReplacementCharacter = 0xfffd, 
        ByteOrderSwapped = 0xfffe, LastValidCodePoint = 0x10ffff
    QChar_Script* {.header:headerFile,importcpp:"QChar::Script".} = enum Script_Unknown = 0, Script_Inherited = 0x1, Script_Common = 0x2, Script_Latin = 0x3, 
        Script_Greek = 0x4, Script_Cyrillic = 0x5, Script_Armenian = 0x6, Script_Hebrew = 0x7, Script_Arabic = 0x8, 
        Script_Syriac = 0x9, Script_Thaana = 0xa, Script_Devanagari = 0xb, Script_Bengali = 0xc, Script_Gurmukhi = 0xd, 
        Script_Gujarati = 0xe, Script_Oriya = 0xf, Script_Tamil = 0x10, Script_Telugu = 0x11, Script_Kannada = 0x12, 
        Script_Malayalam = 0x13, Script_Sinhala = 0x14, Script_Thai = 0x15, Script_Lao = 0x16, Script_Tibetan = 0x17, 
        Script_Myanmar = 0x18, Script_Georgian = 0x19, Script_Hangul = 0x1a, Script_Ethiopic = 0x1b, Script_Cherokee = 0x1c, 
        Script_CanadianAboriginal = 0x1d, Script_Ogham = 0x1e, Script_Runic = 0x1f, Script_Khmer = 0x20, Script_Mongolian = 0x21, 
        Script_Hiragana = 0x22, Script_Katakana = 0x23, Script_Bopomofo = 0x24, Script_Han = 0x25, Script_Yi = 0x26, 
        Script_OldItalic = 0x27, Script_Gothic = 0x28, Script_Deseret = 0x29, Script_Tagalog = 0x2a, Script_Hanunoo = 0x2b, 
        Script_Buhid = 0x2c, Script_Tagbanwa = 0x2d, Script_Coptic = 0x2e, Script_Limbu = 0x2f, Script_TaiLe = 0x30, 
        Script_LinearB = 0x31, Script_Ugaritic = 0x32, Script_Shavian = 0x33, Script_Osmanya = 0x34, Script_Cypriot = 0x35, 
        Script_Braille = 0x36, Script_Buginese = 0x37, Script_NewTaiLue = 0x38, Script_Glagolitic = 0x39, Script_Tifinagh = 0x3a, 
        Script_SylotiNagri = 0x3b, Script_OldPersian = 0x3c, Script_Kharoshthi = 0x3d, Script_Balinese = 0x3e, Script_Cuneiform = 0x3f, 
        Script_Phoenician = 0x40, Script_PhagsPa = 0x41, Script_Nko = 0x42, Script_Sundanese = 0x43, Script_Lepcha = 0x44, 
        Script_OlChiki = 0x45, Script_Vai = 0x46, Script_Saurashtra = 0x47, Script_KayahLi = 0x48, Script_Rejang = 0x49, 
        Script_Lycian = 0x4a, Script_Carian = 0x4b, Script_Lydian = 0x4c, Script_Cham = 0x4d, Script_TaiTham = 0x4e, 
        Script_TaiViet = 0x4f, Script_Avestan = 0x50, Script_EgyptianHieroglyphs = 0x51, Script_Samaritan = 0x52, Script_Lisu = 0x53, 
        Script_Bamum = 0x54, Script_Javanese = 0x55, Script_MeeteiMayek = 0x56, Script_ImperialAramaic = 0x57, Script_OldSouthArabian = 0x58, 
        Script_InscriptionalParthian = 0x59, Script_InscriptionalPahlavi = 0x5a, Script_OldTurkic = 0x5b, Script_Kaithi = 0x5c, Script_Batak = 0x5d, 
        Script_Brahmi = 0x5e, Script_Mandaic = 0x5f, Script_Chakma = 0x60, Script_MeroiticCursive = 0x61, Script_MeroiticHieroglyphs = 0x62, 
        Script_Miao = 0x63, Script_Sharada = 0x64, Script_SoraSompeng = 0x65, Script_Takri = 0x66, Script_CaucasianAlbanian = 0x67, 
        Script_BassaVah = 0x68, Script_Duployan = 0x69, Script_Elbasan = 0x6a, Script_Grantha = 0x6b, Script_PahawhHmong = 0x6c, 
        Script_Khojki = 0x6d, Script_LinearA = 0x6e, Script_Mahajani = 0x6f, Script_Manichaean = 0x70, Script_MendeKikakui = 0x71, 
        Script_Modi = 0x72, Script_Mro = 0x73, Script_OldNorthArabian = 0x74, Script_Nabataean = 0x75, Script_Palmyrene = 0x76, 
        Script_PauCinHau = 0x77, Script_OldPermic = 0x78, Script_PsalterPahlavi = 0x79, Script_Siddham = 0x7a, Script_Khudawadi = 0x7b, 
        Script_Tirhuta = 0x7c, Script_WarangCiti = 0x7d, Script_Ahom = 0x7e, Script_AnatolianHieroglyphs = 0x7f, Script_Hatran = 0x80, 
        Script_Multani = 0x81, Script_OldHungarian = 0x82, Script_SignWriting = 0x83, Script_Adlam = 0x84, Script_Bhaiksuki = 0x85, 
        Script_Marchen = 0x86, Script_Newa = 0x87, Script_Osage = 0x88, Script_Tangut = 0x89, Script_MasaramGondi = 0x8a, 
        Script_Nushu = 0x8b, Script_Soyombo = 0x8c, Script_ZanabazarSquare = 0x8d, Script_Dogra = 0x8e, Script_GunjalaGondi = 0x8f, 
        Script_HanifiRohingya = 0x90, Script_Makasar = 0x91, Script_Medefaidrin = 0x92, Script_OldSogdian = 0x93, Script_Sogdian = 0x94, 
        Script_Elymaic = 0x95, Script_Nandinagari = 0x96, Script_NyiakengPuachueHmong = 0x97, Script_Wancho = 0x98, Script_Chorasmian = 0x99, 
        Script_DivesAkuru = 0x9a, Script_KhitanSmallScript = 0x9b, Script_Yezidi = 0x9c, Script_CyproMinoan = 0x9d, Script_OldUyghur = 0x9e, 
        Script_Tangsa = 0x9f, Script_Toto = 0xa0, Script_Vithkuqi = 0xa1, ScriptCount = 0xa2
    QChar_Direction* {.header:headerFile,importcpp:"QChar::Direction".} = enum DirL = 0, DirR = 0x1, DirEN = 0x2, DirES = 0x3, 
        DirET = 0x4, DirAN = 0x5, DirCS = 0x6, DirB = 0x7, DirS = 0x8, 
        DirWS = 0x9, DirON = 0xa, DirLRE = 0xb, DirLRO = 0xc, DirAL = 0xd, 
        DirRLE = 0xe, DirRLO = 0xf, DirPDF = 0x10, DirNSM = 0x11, DirBN = 0x12, 
        DirLRI = 0x13, DirRLI = 0x14, DirFSI = 0x15, DirPDI = 0x16
    QChar_Decomposition* {.header:headerFile,importcpp:"QChar::Decomposition".} = enum NoDecomposition = 0, Canonical = 0x1, Font = 0x2, NoBreak = 0x3, 
        Initial = 0x4, Medial = 0x5, Final = 0x6, Isolated = 0x7, Circle = 0x8, 
        Super = 0x9, Sub = 0xa, Vertical = 0xb, Wide = 0xc, Narrow = 0xd, 
        Small = 0xe, Square = 0xf, Compat = 0x10, Fraction = 0x11
    QChar_JoiningType* {.header:headerFile,importcpp:"QChar::JoiningType".} = enum Joining_None = 0, Joining_Causing = 0x1, Joining_Dual = 0x2, Joining_Right = 0x3, 
        Joining_Left = 0x4, Joining_Transparent = 0x5
    QChar_CombiningClass* {.header:headerFile,importcpp:"QChar::CombiningClass".} = enum Combining_BelowLeftAttached = 0xc8, Combining_BelowAttached = 0xca, Combining_BelowRightAttached = 0xcc, Combining_LeftAttached = 0xd0, 
        Combining_RightAttached = 0xd2, Combining_AboveLeftAttached = 0xd4, Combining_AboveAttached = 0xd6, Combining_AboveRightAttached = 0xd8, Combining_BelowLeft = 0xda, 
        Combining_Below = 0xdc, Combining_BelowRight = 0xde, Combining_Left = 0xe0, Combining_Right = 0xe2, Combining_AboveLeft = 0xe4, 
        Combining_Above = 0xe6, Combining_AboveRight = 0xe8, Combining_DoubleBelow = 0xe9, Combining_DoubleAbove = 0xea, Combining_IotaSubscript = 0xf0
    QChar_UnicodeVersion* {.header:headerFile,importcpp:"QChar::UnicodeVersion".} = enum Unicode_Unassigned = 0, Unicode_1_1 = 0x1, Unicode_2_0 = 0x2, Unicode_2_1_2 = 0x3, 
        Unicode_3_0 = 0x4, Unicode_3_1 = 0x5, Unicode_3_2 = 0x6, Unicode_4_0 = 0x7, Unicode_4_1 = 0x8, 
        Unicode_5_0 = 0x9, Unicode_5_1 = 0xa, Unicode_5_2 = 0xb, Unicode_6_0 = 0xc, Unicode_6_1 = 0xd, 
        Unicode_6_2 = 0xe, Unicode_6_3 = 0xf, Unicode_7_0 = 0x10, Unicode_8_0 = 0x11, Unicode_9_0 = 0x12, 
        Unicode_10_0 = 0x13, Unicode_11_0 = 0x14, Unicode_12_0 = 0x15, Unicode_12_1 = 0x16, Unicode_13_0 = 0x17, 
        Unicode_14_0 = 0x18

type
    # Classes found in the C++ code
    QLatin1Char* {.header:headerFile,importcpp:"QLatin1Char" ,pure,inheritable.} = object
    QChar* {.header:headerFile,importcpp:"QChar" ,pure,inheritable.} = object

# Stuff for class QLatin1Char

# Public constructors for QLatin1Char
proc newQLatin1Char*(c: char): QLatin1Char {. header:headerFile, importcpp:"QLatin1Char(@)", constructor .} #

# Public methods for QLatin1Char
proc toLatin1*(this: QLatin1Char): char {.header:headerFile, importcpp:"#.toLatin1(@)".} # Public
proc unicode*(this: QLatin1Char): cushort {.header:headerFile, importcpp:"#.unicode(@)".} # Public
# Stuff for class QChar

# Public constructors for QChar
proc newQChar*(): QChar {. header:headerFile, importcpp:"QChar(@)", constructor .} #
proc newQChar*(rc: cushort): QChar {. header:headerFile, importcpp:"QChar(@)", constructor .} #
proc newQChar*(c: char, r: char): QChar {. header:headerFile, importcpp:"QChar(@)", constructor .} #
proc newQChar*(rc: cshort): QChar {. header:headerFile, importcpp:"QChar(@)", constructor .} #
proc newQChar*(rc: cuint): QChar {. header:headerFile, importcpp:"QChar(@)", constructor .} #
proc newQChar*(rc: cint): QChar {. header:headerFile, importcpp:"QChar(@)", constructor .} #
proc newQChar*(s: QChar_SpecialCharacter): QChar {. header:headerFile, importcpp:"QChar(@)", constructor .} #
proc newQChar*(ch: QLatin1Char): QChar {. header:headerFile, importcpp:"QChar(@)", constructor .} #
proc newQChar*(ch: cushort): QChar {. header:headerFile, importcpp:"QChar(@)", constructor .} #
proc newQChar*(c: char): QChar {. header:headerFile, importcpp:"QChar(@)", constructor .} #

# Public methods for QChar
proc static_QChar_fromUcs2*(c: cushort): QChar {.header:headerFile, importcpp:"QChar::fromUcs2(@)".} # Public static
proc direction*(this: QChar): QChar_Direction {.header:headerFile, importcpp:"#.direction(@)".} # Public
proc joiningType*(this: QChar): QChar_JoiningType {.header:headerFile, importcpp:"#.joiningType(@)".} # Public
proc combiningClass*(this: QChar): char {.header:headerFile, importcpp:"#.combiningClass(@)".} # Public
proc mirroredChar*(this: QChar): QChar {.header:headerFile, importcpp:"#.mirroredChar(@)".} # Public
proc hasMirrored*(this: QChar): bool {.header:headerFile, importcpp:"#.hasMirrored(@)".} # Public
proc decompositionTag*(this: QChar): QChar_Decomposition {.header:headerFile, importcpp:"#.decompositionTag(@)".} # Public
proc digitValue*(this: QChar): cint {.header:headerFile, importcpp:"#.digitValue(@)".} # Public
proc toLower*(this: QChar): QChar {.header:headerFile, importcpp:"#.toLower(@)".} # Public
proc toUpper*(this: QChar): QChar {.header:headerFile, importcpp:"#.toUpper(@)".} # Public
proc toTitleCase*(this: QChar): QChar {.header:headerFile, importcpp:"#.toTitleCase(@)".} # Public
proc toCaseFolded*(this: QChar): QChar {.header:headerFile, importcpp:"#.toCaseFolded(@)".} # Public
proc script*(this: QChar): QChar_Script {.header:headerFile, importcpp:"#.script(@)".} # Public
proc unicodeVersion*(this: QChar): QChar_UnicodeVersion {.header:headerFile, importcpp:"#.unicodeVersion(@)".} # Public
proc toLatin1*(this: QChar): char {.header:headerFile, importcpp:"#.toLatin1(@)".} # Public
proc unicode*(this: QChar): cushort {.header:headerFile, importcpp:"#.unicode(@)".} # Public
proc static_QChar_fromLatin1*(c: char): QChar {.header:headerFile, importcpp:"QChar::fromLatin1(@)".} # Public static
proc isNull*(this: QChar): bool {.header:headerFile, importcpp:"#.isNull(@)".} # Public
proc isPrint*(this: QChar): bool {.header:headerFile, importcpp:"#.isPrint(@)".} # Public
proc isSpace*(this: QChar): bool {.header:headerFile, importcpp:"#.isSpace(@)".} # Public
proc isMark*(this: QChar): bool {.header:headerFile, importcpp:"#.isMark(@)".} # Public
proc isPunct*(this: QChar): bool {.header:headerFile, importcpp:"#.isPunct(@)".} # Public
proc isSymbol*(this: QChar): bool {.header:headerFile, importcpp:"#.isSymbol(@)".} # Public
proc isLetter*(this: QChar): bool {.header:headerFile, importcpp:"#.isLetter(@)".} # Public
proc isNumber*(this: QChar): bool {.header:headerFile, importcpp:"#.isNumber(@)".} # Public
proc isLetterOrNumber*(this: QChar): bool {.header:headerFile, importcpp:"#.isLetterOrNumber(@)".} # Public
proc isDigit*(this: QChar): bool {.header:headerFile, importcpp:"#.isDigit(@)".} # Public
proc isLower*(this: QChar): bool {.header:headerFile, importcpp:"#.isLower(@)".} # Public
proc isUpper*(this: QChar): bool {.header:headerFile, importcpp:"#.isUpper(@)".} # Public
proc isTitleCase*(this: QChar): bool {.header:headerFile, importcpp:"#.isTitleCase(@)".} # Public
proc isNonCharacter*(this: QChar): bool {.header:headerFile, importcpp:"#.isNonCharacter(@)".} # Public
proc isHighSurrogate*(this: QChar): bool {.header:headerFile, importcpp:"#.isHighSurrogate(@)".} # Public
proc isLowSurrogate*(this: QChar): bool {.header:headerFile, importcpp:"#.isLowSurrogate(@)".} # Public
proc isSurrogate*(this: QChar): bool {.header:headerFile, importcpp:"#.isSurrogate(@)".} # Public
proc cell*(this: QChar): char {.header:headerFile, importcpp:"#.cell(@)".} # Public
proc row*(this: QChar): char {.header:headerFile, importcpp:"#.row(@)".} # Public
proc setCell*(this: QChar, acell: char) {.header:headerFile, importcpp:"#.setCell(@)".} # Public
proc setRow*(this: QChar, arow: char) {.header:headerFile, importcpp:"#.setRow(@)".} # Public
proc static_QChar_isNonCharacter*(ucs4: cuint): bool {.header:headerFile, importcpp:"QChar::isNonCharacter(@)".} # Public static
proc static_QChar_isHighSurrogate*(ucs4: cuint): bool {.header:headerFile, importcpp:"QChar::isHighSurrogate(@)".} # Public static
proc static_QChar_isLowSurrogate*(ucs4: cuint): bool {.header:headerFile, importcpp:"QChar::isLowSurrogate(@)".} # Public static
proc static_QChar_isSurrogate*(ucs4: cuint): bool {.header:headerFile, importcpp:"QChar::isSurrogate(@)".} # Public static
proc static_QChar_requiresSurrogates*(ucs4: cuint): bool {.header:headerFile, importcpp:"QChar::requiresSurrogates(@)".} # Public static
proc static_QChar_surrogateToUcs4*(high: cushort, low: cushort): cuint {.header:headerFile, importcpp:"QChar::surrogateToUcs4(@)".} # Public static
proc static_QChar_surrogateToUcs4*(high: QChar, low: QChar): cuint {.header:headerFile, importcpp:"QChar::surrogateToUcs4(@)".} # Public static
proc static_QChar_highSurrogate*(ucs4: cuint): cushort {.header:headerFile, importcpp:"QChar::highSurrogate(@)".} # Public static
proc static_QChar_lowSurrogate*(ucs4: cuint): cushort {.header:headerFile, importcpp:"QChar::lowSurrogate(@)".} # Public static
proc static_QChar_direction*(ucs4: cuint): QChar_Direction {.header:headerFile, importcpp:"QChar::direction(@)".} # Public static
proc static_QChar_joiningType*(ucs4: cuint): QChar_JoiningType {.header:headerFile, importcpp:"QChar::joiningType(@)".} # Public static
proc static_QChar_combiningClass*(ucs4: cuint): char {.header:headerFile, importcpp:"QChar::combiningClass(@)".} # Public static
proc static_QChar_mirroredChar*(ucs4: cuint): cuint {.header:headerFile, importcpp:"QChar::mirroredChar(@)".} # Public static
proc static_QChar_hasMirrored*(ucs4: cuint): bool {.header:headerFile, importcpp:"QChar::hasMirrored(@)".} # Public static
proc static_QChar_decompositionTag*(ucs4: cuint): QChar_Decomposition {.header:headerFile, importcpp:"QChar::decompositionTag(@)".} # Public static
proc static_QChar_digitValue*(ucs4: cuint): cint {.header:headerFile, importcpp:"QChar::digitValue(@)".} # Public static
proc static_QChar_toLower*(ucs4: cuint): cuint {.header:headerFile, importcpp:"QChar::toLower(@)".} # Public static
proc static_QChar_toUpper*(ucs4: cuint): cuint {.header:headerFile, importcpp:"QChar::toUpper(@)".} # Public static
proc static_QChar_toTitleCase*(ucs4: cuint): cuint {.header:headerFile, importcpp:"QChar::toTitleCase(@)".} # Public static
proc static_QChar_toCaseFolded*(ucs4: cuint): cuint {.header:headerFile, importcpp:"QChar::toCaseFolded(@)".} # Public static
proc static_QChar_script*(ucs4: cuint): QChar_Script {.header:headerFile, importcpp:"QChar::script(@)".} # Public static
proc static_QChar_unicodeVersion*(ucs4: cuint): QChar_UnicodeVersion {.header:headerFile, importcpp:"QChar::unicodeVersion(@)".} # Public static
proc static_QChar_currentUnicodeVersion*(): QChar_UnicodeVersion {.header:headerFile, importcpp:"QChar::currentUnicodeVersion(@)".} # Public static
proc static_QChar_isPrint*(ucs4: cuint): bool {.header:headerFile, importcpp:"QChar::isPrint(@)".} # Public static
proc static_QChar_isSpace*(ucs4: cuint): bool {.header:headerFile, importcpp:"QChar::isSpace(@)".} # Public static
proc static_QChar_isMark*(ucs4: cuint): bool {.header:headerFile, importcpp:"QChar::isMark(@)".} # Public static
proc static_QChar_isPunct*(ucs4: cuint): bool {.header:headerFile, importcpp:"QChar::isPunct(@)".} # Public static
proc static_QChar_isSymbol*(ucs4: cuint): bool {.header:headerFile, importcpp:"QChar::isSymbol(@)".} # Public static
proc static_QChar_isLetter*(ucs4: cuint): bool {.header:headerFile, importcpp:"QChar::isLetter(@)".} # Public static
proc static_QChar_isNumber*(ucs4: cuint): bool {.header:headerFile, importcpp:"QChar::isNumber(@)".} # Public static
proc static_QChar_isLetterOrNumber*(ucs4: cuint): bool {.header:headerFile, importcpp:"QChar::isLetterOrNumber(@)".} # Public static
proc static_QChar_isDigit*(ucs4: cuint): bool {.header:headerFile, importcpp:"QChar::isDigit(@)".} # Public static
proc static_QChar_isLower*(ucs4: cuint): bool {.header:headerFile, importcpp:"QChar::isLower(@)".} # Public static
proc static_QChar_isUpper*(ucs4: cuint): bool {.header:headerFile, importcpp:"QChar::isUpper(@)".} # Public static
proc static_QChar_isTitleCase*(ucs4: cuint): bool {.header:headerFile, importcpp:"QChar::isTitleCase(@)".} # Public static

