const headerFile* = "QtCore/qlocale.h"

type
    # Enums found in the C++ code
    # Global
    QLocale_Language* {.header:headerFile,importcpp:"QLocale::Language".} = enum AnyLanguage = 0, C = 0x1, Abkhazian = 0x2, Afar = 0x3, 
        Afrikaans = 0x4, Aghem = 0x5, Akan = 0x6, Akkadian = 0x7, Akoose = 0x8, 
        Albanian = 0x9, AmericanSignLanguage = 0xa, Amharic = 0xb, AncientEgyptian = 0xc, AncientGreek = 0xd, 
        Arabic = 0xe, Aragonese = 0xf, Aramaic = 0x10, Armenian = 0x11, Assamese = 0x12, 
        Asturian = 0x13, Asu = 0x14, Atsam = 0x15, Avaric = 0x16, Avestan = 0x17, 
        Aymara = 0x18, Azerbaijani = 0x19, Bafia = 0x1a, Balinese = 0x1b, Bambara = 0x1c, 
        Bamun = 0x1d, Bangla = 0x1e, Basaa = 0x1f, Bashkir = 0x20, Basque = 0x21, 
        BatakToba = 0x22, Belarusian = 0x23, Bemba = 0x24, Bena = 0x25, Bhojpuri = 0x26, 
        Bislama = 0x27, Blin = 0x28, Bodo = 0x29, Bosnian = 0x2a, Breton = 0x2b, 
        Buginese = 0x2c, Bulgarian = 0x2d, Burmese = 0x2e, Cantonese = 0x2f, Catalan = 0x30, 
        Cebuano = 0x31, CentralAtlasTamazight = 0x32, CentralKurdish = 0x33, Chakma = 0x34, Chamorro = 0x35, 
        Chechen = 0x36, Cherokee = 0x37, Chickasaw = 0x38, Chiga = 0x39, Chinese = 0x3a, 
        Church = 0x3b, Chuvash = 0x3c, Colognian = 0x3d, Coptic = 0x3e, Cornish = 0x3f, 
        Corsican = 0x40, Cree = 0x41, Croatian = 0x42, Czech = 0x43, Danish = 0x44, 
        Divehi = 0x45, Dogri = 0x46, Duala = 0x47, Dutch = 0x48, Dzongkha = 0x49, 
        Embu = 0x4a, English = 0x4b, Erzya = 0x4c, Esperanto = 0x4d, Estonian = 0x4e, 
        Ewe = 0x4f, Ewondo = 0x50, Faroese = 0x51, Fijian = 0x52, Filipino = 0x53, 
        Finnish = 0x54, French = 0x55, Friulian = 0x56, Fulah = 0x57, Gaelic = 0x58, 
        Ga = 0x59, Galician = 0x5a, Ganda = 0x5b, Geez = 0x5c, Georgian = 0x5d, 
        German = 0x5e, Gothic = 0x5f, Greek = 0x60, Guarani = 0x61, Gujarati = 0x62, 
        Gusii = 0x63, Haitian = 0x64, Hausa = 0x65, Hawaiian = 0x66, Hebrew = 0x67, 
        Herero = 0x68, Hindi = 0x69, HiriMotu = 0x6a, Hungarian = 0x6b, Icelandic = 0x6c, 
        Ido = 0x6d, Igbo = 0x6e, InariSami = 0x6f, Indonesian = 0x70, Ingush = 0x71, 
        Interlingua = 0x72, Interlingue = 0x73, Inuktitut = 0x74, Inupiaq = 0x75, Irish = 0x76, 
        Italian = 0x77, Japanese = 0x78, Javanese = 0x79, Jju = 0x7a, JolaFonyi = 0x7b, 
        Kabuverdianu = 0x7c, Kabyle = 0x7d, Kako = 0x7e, Kalaallisut = 0x7f, Kalenjin = 0x80, 
        Kamba = 0x81, Kannada = 0x82, Kanuri = 0x83, Kashmiri = 0x84, Kazakh = 0x85, 
        Kenyang = 0x86, Khmer = 0x87, Kiche = 0x88, Kikuyu = 0x89, Kinyarwanda = 0x8a, 
        Komi = 0x8b, Kongo = 0x8c, Konkani = 0x8d, Korean = 0x8e, Koro = 0x8f, 
        KoyraboroSenni = 0x90, KoyraChiini = 0x91, Kpelle = 0x92, Kuanyama = 0x93, Kurdish = 0x94, 
        Kwasio = 0x95, Kyrgyz = 0x96, Lakota = 0x97, Langi = 0x98, Lao = 0x99, 
        Latin = 0x9a, Latvian = 0x9b, Lezghian = 0x9c, Limburgish = 0x9d, Lingala = 0x9e, 
        LiteraryChinese = 0x9f, Lithuanian = 0xa0, Lojban = 0xa1, LowerSorbian = 0xa2, LowGerman = 0xa3, 
        LubaKatanga = 0xa4, LuleSami = 0xa5, Luo = 0xa6, Luxembourgish = 0xa7, Luyia = 0xa8, 
        Macedonian = 0xa9, Machame = 0xaa, Maithili = 0xab, MakhuwaMeetto = 0xac, Makonde = 0xad, 
        Malagasy = 0xae, Malayalam = 0xaf, Malay = 0xb0, Maltese = 0xb1, Mandingo = 0xb2, 
        Manipuri = 0xb3, Manx = 0xb4, Maori = 0xb5, Mapuche = 0xb6, Marathi = 0xb7, 
        Marshallese = 0xb8, Masai = 0xb9, Mazanderani = 0xba, Mende = 0xbb, Meru = 0xbc, 
        Meta = 0xbd, Mohawk = 0xbe, Mongolian = 0xbf, Morisyen = 0xc0, Mundang = 0xc1, 
        Muscogee = 0xc2, Nama = 0xc3, NauruLanguage = 0xc4, Navajo = 0xc5, Ndonga = 0xc6, 
        Nepali = 0xc7, Newari = 0xc8, Ngiemboon = 0xc9, Ngomba = 0xca, NigerianPidgin = 0xcb, 
        Nko = 0xcc, NorthernLuri = 0xcd, NorthernSami = 0xce, NorthernSotho = 0xcf, NorthNdebele = 0xd0, 
        NorwegianBokmal = 0xd1, NorwegianNynorsk = 0xd2, Nuer = 0xd3, Nyanja = 0xd4, Nyankole = 0xd5, 
        Occitan = 0xd6, Odia = 0xd7, Ojibwa = 0xd8, OldIrish = 0xd9, OldNorse = 0xda, 
        OldPersian = 0xdb, Oromo = 0xdc, Osage = 0xdd, Ossetic = 0xde, Pahlavi = 0xdf, 
        Palauan = 0xe0, Pali = 0xe1, Papiamento = 0xe2, Pashto = 0xe3, Persian = 0xe4, 
        Phoenician = 0xe5, Polish = 0xe6, Portuguese = 0xe7, Prussian = 0xe8, Punjabi = 0xe9, 
        Quechua = 0xea, Romanian = 0xeb, Romansh = 0xec, Rombo = 0xed, Rundi = 0xee, 
        Russian = 0xef, Rwa = 0xf0, Saho = 0xf1, Sakha = 0xf2, Samburu = 0xf3, 
        Samoan = 0xf4, Sango = 0xf5, Sangu = 0xf6, Sanskrit = 0xf7, Santali = 0xf8, 
        Sardinian = 0xf9, Saurashtra = 0xfa, Sena = 0xfb, Serbian = 0xfc, Shambala = 0xfd, 
        Shona = 0xfe, SichuanYi = 0xff, Sicilian = 0x100, Sidamo = 0x101, Silesian = 0x102, 
        Sindhi = 0x103, Sinhala = 0x104, SkoltSami = 0x105, Slovak = 0x106, Slovenian = 0x107, 
        Soga = 0x108, Somali = 0x109, SouthernKurdish = 0x10a, SouthernSami = 0x10b, SouthernSotho = 0x10c, 
        SouthNdebele = 0x10d, Spanish = 0x10e, StandardMoroccanTamazight = 0x10f, Sundanese = 0x110, Swahili = 0x111, 
        Swati = 0x112, Swedish = 0x113, SwissGerman = 0x114, Syriac = 0x115, Tachelhit = 0x116, 
        Tahitian = 0x117, TaiDam = 0x118, Taita = 0x119, Tajik = 0x11a, Tamil = 0x11b, 
        Taroko = 0x11c, Tasawaq = 0x11d, Tatar = 0x11e, Telugu = 0x11f, Teso = 0x120, 
        Thai = 0x121, Tibetan = 0x122, Tigre = 0x123, Tigrinya = 0x124, TokelauLanguage = 0x125, 
        TokPisin = 0x126, Tongan = 0x127, Tsonga = 0x128, Tswana = 0x129, Turkish = 0x12a, 
        Turkmen = 0x12b, TuvaluLanguage = 0x12c, Tyap = 0x12d, Ugaritic = 0x12e, Ukrainian = 0x12f, 
        UpperSorbian = 0x130, Urdu = 0x131, Uyghur = 0x132, Uzbek = 0x133, Vai = 0x134, 
        Venda = 0x135, Vietnamese = 0x136, Volapuk = 0x137, Vunjo = 0x138, Walloon = 0x139, 
        Walser = 0x13a, Warlpiri = 0x13b, Welsh = 0x13c, WesternBalochi = 0x13d, WesternFrisian = 0x13e, 
        Wolaytta = 0x13f, Wolof = 0x140, Xhosa = 0x141, Yangben = 0x142, Yiddish = 0x143, 
        Yoruba = 0x144, Zarma = 0x145, Zhuang = 0x146, Zulu = 0x147, Kaingang = 0x148, 
        Nheengatu = 0x149
    QLocale_Script* {.header:headerFile,importcpp:"QLocale::Script".} = enum AnyScript = 0, AdlamScript = 0x1, AhomScript = 0x2, AnatolianHieroglyphsScript = 0x3, 
        ArabicScript = 0x4, ArmenianScript = 0x5, AvestanScript = 0x6, BalineseScript = 0x7, BamumScript = 0x8, 
        BanglaScript = 0x9, BassaVahScript = 0xa, BatakScript = 0xb, BhaiksukiScript = 0xc, BopomofoScript = 0xd, 
        BrahmiScript = 0xe, BrailleScript = 0xf, BugineseScript = 0x10, BuhidScript = 0x11, CanadianAboriginalScript = 0x12, 
        CarianScript = 0x13, CaucasianAlbanianScript = 0x14, ChakmaScript = 0x15, ChamScript = 0x16, CherokeeScript = 0x17, 
        CopticScript = 0x18, CuneiformScript = 0x19, CypriotScript = 0x1a, CyrillicScript = 0x1b, DeseretScript = 0x1c, 
        DevanagariScript = 0x1d, DuployanScript = 0x1e, EgyptianHieroglyphsScript = 0x1f, ElbasanScript = 0x20, EthiopicScript = 0x21, 
        FraserScript = 0x22, GeorgianScript = 0x23, GlagoliticScript = 0x24, GothicScript = 0x25, GranthaScript = 0x26, 
        GreekScript = 0x27, GujaratiScript = 0x28, GurmukhiScript = 0x29, HangulScript = 0x2a, HanScript = 0x2b, 
        HanunooScript = 0x2c, HanWithBopomofoScript = 0x2d, HatranScript = 0x2e, HebrewScript = 0x2f, HiraganaScript = 0x30, 
        ImperialAramaicScript = 0x31, InscriptionalPahlaviScript = 0x32, InscriptionalParthianScript = 0x33, JamoScript = 0x34, JapaneseScript = 0x35, 
        JavaneseScript = 0x36, KaithiScript = 0x37, KannadaScript = 0x38, KatakanaScript = 0x39, KayahLiScript = 0x3a, 
        KharoshthiScript = 0x3b, KhmerScript = 0x3c, KhojkiScript = 0x3d, KhudawadiScript = 0x3e, KoreanScript = 0x3f, 
        LannaScript = 0x40, LaoScript = 0x41, LatinScript = 0x42, LepchaScript = 0x43, LimbuScript = 0x44, 
        LinearAScript = 0x45, LinearBScript = 0x46, LycianScript = 0x47, LydianScript = 0x48, MahajaniScript = 0x49, 
        MalayalamScript = 0x4a, MandaeanScript = 0x4b, ManichaeanScript = 0x4c, MarchenScript = 0x4d, MeiteiMayekScript = 0x4e, 
        MendeScript = 0x4f, MeroiticCursiveScript = 0x50, MeroiticScript = 0x51, ModiScript = 0x52, MongolianScript = 0x53, 
        MroScript = 0x54, MultaniScript = 0x55, MyanmarScript = 0x56, NabataeanScript = 0x57, NewaScript = 0x58, 
        NewTaiLueScript = 0x59, NkoScript = 0x5a, OdiaScript = 0x5b, OghamScript = 0x5c, OlChikiScript = 0x5d, 
        OldHungarianScript = 0x5e, OldItalicScript = 0x5f, OldNorthArabianScript = 0x60, OldPermicScript = 0x61, OldPersianScript = 0x62, 
        OldSouthArabianScript = 0x63, OrkhonScript = 0x64, OsageScript = 0x65, OsmanyaScript = 0x66, PahawhHmongScript = 0x67, 
        PalmyreneScript = 0x68, PauCinHauScript = 0x69, PhagsPaScript = 0x6a, PhoenicianScript = 0x6b, PollardPhoneticScript = 0x6c, 
        PsalterPahlaviScript = 0x6d, RejangScript = 0x6e, RunicScript = 0x6f, SamaritanScript = 0x70, SaurashtraScript = 0x71, 
        SharadaScript = 0x72, ShavianScript = 0x73, SiddhamScript = 0x74, SignWritingScript = 0x75, SimplifiedHanScript = 0x76, 
        SinhalaScript = 0x77, SoraSompengScript = 0x78, SundaneseScript = 0x79, SylotiNagriScript = 0x7a, SyriacScript = 0x7b, 
        TagalogScript = 0x7c, TagbanwaScript = 0x7d, TaiLeScript = 0x7e, TaiVietScript = 0x7f, TakriScript = 0x80, 
        TamilScript = 0x81, TangutScript = 0x82, TeluguScript = 0x83, ThaanaScript = 0x84, ThaiScript = 0x85, 
        TibetanScript = 0x86, TifinaghScript = 0x87, TirhutaScript = 0x88, TraditionalHanScript = 0x89, UgariticScript = 0x8a, 
        VaiScript = 0x8b, VarangKshitiScript = 0x8c, YiScript = 0x8d
    QLocale_Country* {.header:headerFile,importcpp:"QLocale::Country".} = enum AnyTerritory = 0, Afghanistan = 0x1, AlandIslands = 0x2, Albania = 0x3, 
        Algeria = 0x4, AmericanSamoa = 0x5, Andorra = 0x6, Angola = 0x7, Anguilla = 0x8, 
        Antarctica = 0x9, AntiguaAndBarbuda = 0xa, Argentina = 0xb, Armenia = 0xc, Aruba = 0xd, 
        AscensionIsland = 0xe, Australia = 0xf, Austria = 0x10, Azerbaijan = 0x11, Bahamas = 0x12, 
        Bahrain = 0x13, Bangladesh = 0x14, Barbados = 0x15, Belarus = 0x16, Belgium = 0x17, 
        Belize = 0x18, Benin = 0x19, Bermuda = 0x1a, Bhutan = 0x1b, Bolivia = 0x1c, 
        BosniaAndHerzegovina = 0x1d, Botswana = 0x1e, BouvetIsland = 0x1f, Brazil = 0x20, BritishIndianOceanTerritory = 0x21, 
        BritishVirginIslands = 0x22, Brunei = 0x23, Bulgaria = 0x24, BurkinaFaso = 0x25, Burundi = 0x26, 
        Cambodia = 0x27, Cameroon = 0x28, Canada = 0x29, CanaryIslands = 0x2a, CapeVerde = 0x2b, 
        CaribbeanNetherlands = 0x2c, CaymanIslands = 0x2d, CentralAfricanRepublic = 0x2e, CeutaAndMelilla = 0x2f, Chad = 0x30, 
        Chile = 0x31, China = 0x32, ChristmasIsland = 0x33, ClippertonIsland = 0x34, CocosIslands = 0x35, 
        Colombia = 0x36, Comoros = 0x37, CongoBrazzaville = 0x38, CongoKinshasa = 0x39, CookIslands = 0x3a, 
        CostaRica = 0x3b, Croatia = 0x3c, Cuba = 0x3d, Curacao = 0x3e, Cyprus = 0x3f, 
        Czechia = 0x40, Denmark = 0x41, DiegoGarcia = 0x42, Djibouti = 0x43, Dominica = 0x44, 
        DominicanRepublic = 0x45, Ecuador = 0x46, Egypt = 0x47, ElSalvador = 0x48, EquatorialGuinea = 0x49, 
        Eritrea = 0x4a, Estonia = 0x4b, Eswatini = 0x4c, Ethiopia = 0x4d, Europe = 0x4e, 
        EuropeanUnion = 0x4f, FalklandIslands = 0x50, FaroeIslands = 0x51, Fiji = 0x52, Finland = 0x53, 
        France = 0x54, FrenchGuiana = 0x55, FrenchPolynesia = 0x56, FrenchSouthernTerritories = 0x57, Gabon = 0x58, 
        Gambia = 0x59, Georgia = 0x5a, Germany = 0x5b, Ghana = 0x5c, Gibraltar = 0x5d, 
        Greece = 0x5e, Greenland = 0x5f, Grenada = 0x60, Guadeloupe = 0x61, Guam = 0x62, 
        Guatemala = 0x63, Guernsey = 0x64, GuineaBissau = 0x65, Guinea = 0x66, Guyana = 0x67, 
        Haiti = 0x68, HeardAndMcDonaldIslands = 0x69, Honduras = 0x6a, HongKong = 0x6b, Hungary = 0x6c, 
        Iceland = 0x6d, India = 0x6e, Indonesia = 0x6f, Iran = 0x70, Iraq = 0x71, 
        Ireland = 0x72, IsleOfMan = 0x73, Israel = 0x74, Italy = 0x75, IvoryCoast = 0x76, 
        Jamaica = 0x77, Japan = 0x78, Jersey = 0x79, Jordan = 0x7a, Kazakhstan = 0x7b, 
        Kenya = 0x7c, Kiribati = 0x7d, Kosovo = 0x7e, Kuwait = 0x7f, Kyrgyzstan = 0x80, 
        Laos = 0x81, LatinAmerica = 0x82, Latvia = 0x83, Lebanon = 0x84, Lesotho = 0x85, 
        Liberia = 0x86, Libya = 0x87, Liechtenstein = 0x88, Lithuania = 0x89, Luxembourg = 0x8a, 
        Macao = 0x8b, Macedonia = 0x8c, Madagascar = 0x8d, Malawi = 0x8e, Malaysia = 0x8f, 
        Maldives = 0x90, Mali = 0x91, Malta = 0x92, MarshallIslands = 0x93, Martinique = 0x94, 
        Mauritania = 0x95, Mauritius = 0x96, Mayotte = 0x97, Mexico = 0x98, Micronesia = 0x99, 
        Moldova = 0x9a, Monaco = 0x9b, Mongolia = 0x9c, Montenegro = 0x9d, Montserrat = 0x9e, 
        Morocco = 0x9f, Mozambique = 0xa0, Myanmar = 0xa1, Namibia = 0xa2, NauruTerritory = 0xa3, 
        Nepal = 0xa4, Netherlands = 0xa5, NewCaledonia = 0xa6, NewZealand = 0xa7, Nicaragua = 0xa8, 
        Nigeria = 0xa9, Niger = 0xaa, Niue = 0xab, NorfolkIsland = 0xac, NorthernMarianaIslands = 0xad, 
        NorthKorea = 0xae, Norway = 0xaf, Oman = 0xb0, OutlyingOceania = 0xb1, Pakistan = 0xb2, 
        Palau = 0xb3, PalestinianTerritories = 0xb4, Panama = 0xb5, PapuaNewGuinea = 0xb6, Paraguay = 0xb7, 
        Peru = 0xb8, Philippines = 0xb9, Pitcairn = 0xba, Poland = 0xbb, Portugal = 0xbc, 
        PuertoRico = 0xbd, Qatar = 0xbe, Reunion = 0xbf, Romania = 0xc0, Russia = 0xc1, 
        Rwanda = 0xc2, SaintBarthelemy = 0xc3, SaintHelena = 0xc4, SaintKittsAndNevis = 0xc5, SaintLucia = 0xc6, 
        SaintMartin = 0xc7, SaintPierreAndMiquelon = 0xc8, SaintVincentAndGrenadines = 0xc9, Samoa = 0xca, SanMarino = 0xcb, 
        SaoTomeAndPrincipe = 0xcc, SaudiArabia = 0xcd, Senegal = 0xce, Serbia = 0xcf, Seychelles = 0xd0, 
        SierraLeone = 0xd1, Singapore = 0xd2, SintMaarten = 0xd3, Slovakia = 0xd4, Slovenia = 0xd5, 
        SolomonIslands = 0xd6, Somalia = 0xd7, SouthAfrica = 0xd8, SouthGeorgiaAndSouthSandwichIslands = 0xd9, SouthKorea = 0xda, 
        SouthSudan = 0xdb, Spain = 0xdc, SriLanka = 0xdd, Sudan = 0xde, Suriname = 0xdf, 
        SvalbardAndJanMayen = 0xe0, Sweden = 0xe1, Switzerland = 0xe2, Syria = 0xe3, Taiwan = 0xe4, 
        Tajikistan = 0xe5, Tanzania = 0xe6, Thailand = 0xe7, TimorLeste = 0xe8, Togo = 0xe9, 
        TokelauTerritory = 0xea, Tonga = 0xeb, TrinidadAndTobago = 0xec, TristanDaCunha = 0xed, Tunisia = 0xee, 
        Turkey = 0xef, Turkmenistan = 0xf0, TurksAndCaicosIslands = 0xf1, TuvaluTerritory = 0xf2, Uganda = 0xf3, 
        Ukraine = 0xf4, UnitedArabEmirates = 0xf5, UnitedKingdom = 0xf6, UnitedStatesOutlyingIslands = 0xf7, UnitedStates = 0xf8, 
        UnitedStatesVirginIslands = 0xf9, Uruguay = 0xfa, Uzbekistan = 0xfb, Vanuatu = 0xfc, VaticanCity = 0xfd, 
        Venezuela = 0xfe, Vietnam = 0xff, WallisAndFutuna = 0x100, WesternSahara = 0x101, World = 0x102, 
        Yemen = 0x103, Zambia = 0x104, Zimbabwe = 0x105
    QLocale_MeasurementSystem* {.header:headerFile,importcpp:"QLocale::MeasurementSystem".} = enum MetricSystem = 0, ImperialUSSystem = 0x1, ImperialUKSystem = 0x2
    QLocale_FormatType* {.header:headerFile,importcpp:"QLocale::FormatType".} = enum LongFormat = 0, ShortFormat = 0x1, NarrowFormat = 0x2
    QLocale_NumberOption* {.header:headerFile,importcpp:"QLocale::NumberOption".} = enum DefaultNumberOptions = 0, OmitGroupSeparator = 0x1, RejectGroupSeparator = 0x2, OmitLeadingZeroInExponent = 0x4, 
        RejectLeadingZeroInExponent = 0x8, IncludeTrailingZeroesAfterDot = 0x10, RejectTrailingZeroesAfterDot = 0x20
    QLocale_FloatingPointPrecisionOption* {.header:headerFile,importcpp:"QLocale::FloatingPointPrecisionOption".} = enum FloatingPointShortest = -128
    QLocale_CurrencySymbolFormat* {.header:headerFile,importcpp:"QLocale::CurrencySymbolFormat".} = enum CurrencyIsoCode = 0, CurrencySymbol = 0x1, CurrencyDisplayName = 0x2
    QLocale_DataSizeFormat* {.header:headerFile,importcpp:"QLocale::DataSizeFormat".} = enum DataSizeIecFormat = 0, DataSizeBase1000 = 0x1, DataSizeSIQuantifiers = 0x2, DataSizeSIFormat = 0x3
    QLocale_LanguageCodeType* {.header:headerFile,importcpp:"QLocale::LanguageCodeType".} = enum AnyLanguageCode = -1, ISO639Part1 = 0x1, ISO639Part2B = 0x2, ISO639Part2T = 0x4, 
        ISO639Part2 = 0x6, ISO639Part3 = 0x8, ISO639Alpha3 = 0xe, ISO639 = 0xf, LegacyLanguageCode = 0x8000
    QLocale_QuotationStyle* {.header:headerFile,importcpp:"QLocale::QuotationStyle".} = enum StandardQuotation = 0, AlternateQuotation = 0x1

type
    # Classes found in the C++ code
    QLocale* {.header:headerFile,importcpp:"QLocale" ,pure,inheritable.} = object
import nimqt/qtcore/qflags


type
    # typedefs found in the C++ code
    QLocale_Territory * = QLocale_Country
    QLocale_NumberOptions * = QFlags[QLocale_NumberOption]
    QLocale_DataSizeFormats * = QFlags[QLocale_DataSizeFormat]
    QLocale_LanguageCodeTypes * = QFlags[QLocale_LanguageCodeType]

# Consts
const
    # Global
    QLocale_LanguageBengali* = 30 # from anonymous enum Bangla
    QLocale_LanguageByelorussian* = 35 # from anonymous enum Belarusian
    QLocale_LanguageCentralMoroccoTamazight* = 50 # from anonymous enum CentralAtlasTamazight
    QLocale_LanguageBhutani* = 73 # from anonymous enum Dzongkha
    QLocale_LanguageInupiak* = 117 # from anonymous enum Inupiaq
    QLocale_LanguageGreenlandic* = 127 # from anonymous enum Kalaallisut
    QLocale_LanguageCambodian* = 135 # from anonymous enum Khmer
    QLocale_LanguageKwanyama* = 147 # from anonymous enum Kuanyama
    QLocale_LanguageKirghiz* = 150 # from anonymous enum Kyrgyz
    QLocale_LanguageNavaho* = 197 # from anonymous enum Navajo
    QLocale_LanguageChewa* = 212 # from anonymous enum Nyanja
    QLocale_LanguageOriya* = 215 # from anonymous enum Odia
    QLocale_LanguageAfan* = 220 # from anonymous enum Oromo
    QLocale_LanguageRhaetoRomance* = 236 # from anonymous enum Romansh
    QLocale_LanguageKurundi* = 238 # from anonymous enum Rundi
    QLocale_LanguageUighur* = 306 # from anonymous enum Uyghur
    QLocale_LanguageUigur* = 306 # from anonymous enum Uyghur
    QLocale_LanguageFrisian* = 318 # from anonymous enum WesternFrisian
    QLocale_LanguageWalamo* = 319 # from anonymous enum Wolaytta
    QLocale_LanguageLastLanguage* = 329 # from anonymous enum Nheengatu
    QLocale_ScriptBengaliScript* = 9 # from anonymous enum BanglaScript
    QLocale_ScriptMendeKikakuiScript* = 79 # from anonymous enum MendeScript
    QLocale_ScriptOriyaScript* = 91 # from anonymous enum OdiaScript
    QLocale_ScriptSimplifiedChineseScript* = 118 # from anonymous enum SimplifiedHanScript
    QLocale_ScriptTraditionalChineseScript* = 137 # from anonymous enum TraditionalHanScript
    QLocale_ScriptLastScript* = 141 # from anonymous enum YiScript
    QLocale_CountryAnyCountry* = 0 # from anonymous enum AnyTerritory
    QLocale_CountryBosniaAndHerzegowina* = 29 # from anonymous enum BosniaAndHerzegovina
    QLocale_CountryBonaire* = 44 # from anonymous enum CaribbeanNetherlands
    QLocale_CountryPeoplesRepublicOfCongo* = 56 # from anonymous enum CongoBrazzaville
    QLocale_CountryDemocraticRepublicOfCongo* = 57 # from anonymous enum CongoKinshasa
    QLocale_CountryCuraSao* = 62 # from anonymous enum Curacao
    QLocale_CountryCzechRepublic* = 64 # from anonymous enum Czechia
    QLocale_CountrySwaziland* = 76 # from anonymous enum Eswatini
    QLocale_CountryLatinAmericaAndTheCaribbean* = 130 # from anonymous enum LatinAmerica
    QLocale_CountryMacau* = 139 # from anonymous enum Macao
    QLocale_CountryNauruCountry* = 163 # from anonymous enum NauruTerritory
    QLocale_CountryDemocraticRepublicOfKorea* = 174 # from anonymous enum NorthKorea
    QLocale_CountryRussianFederation* = 193 # from anonymous enum Russia
    QLocale_CountrySaintVincentAndTheGrenadines* = 201 # from anonymous enum SaintVincentAndGrenadines
    QLocale_CountrySouthGeorgiaAndTheSouthSandwichIslands* = 217 # from anonymous enum SouthGeorgiaAndSouthSandwichIslands
    QLocale_CountryRepublicOfKorea* = 218 # from anonymous enum SouthKorea
    QLocale_CountrySvalbardAndJanMayenIslands* = 224 # from anonymous enum SvalbardAndJanMayen
    QLocale_CountrySyrianArabRepublic* = 227 # from anonymous enum Syria
    QLocale_CountryEastTimor* = 232 # from anonymous enum TimorLeste
    QLocale_CountryTokelauCountry* = 234 # from anonymous enum TokelauTerritory
    QLocale_CountryTuvaluCountry* = 242 # from anonymous enum TuvaluTerritory
    QLocale_CountryUnitedStatesMinorOutlyingIslands* = 247 # from anonymous enum UnitedStatesOutlyingIslands
    QLocale_CountryVaticanCityState* = 253 # from anonymous enum VaticanCity
    QLocale_CountryWallisAndFutunaIslands* = 256 # from anonymous enum WallisAndFutuna
    QLocale_CountryLastTerritory* = 261 # from anonymous enum Zimbabwe
    QLocale_CountryLastCountry* = 261 # from anonymous enum Zimbabwe
    QLocale_MeasurementSystemImperialSystem* = 1 # from anonymous enum ImperialUSSystem
    QLocale_DataSizeFormatDataSizeTraditionalFormat* = 2 # from anonymous enum DataSizeSIQuantifiers
    QLocale_LanguageCodeTypeISO639Alpha2* = 1 # from anonymous enum ISO639Part1

# Stuff for class QLocale

# Public constructors for QLocale
proc newQLocale*(): QLocale {. header:headerFile, importcpp:"QLocale(@)", constructor .} #
import nimqt/qtcore/qstring
proc newQLocale*(name: QString): QLocale {. header:headerFile, importcpp:"QLocale(@)", constructor .} #
proc newQLocale*(language: QLocale_Language, territory: QLocale_Country): QLocale {. header:headerFile, importcpp:"QLocale(@)", constructor .} #
proc newQLocale*(language: QLocale_Language, script: QLocale_Script, territory: QLocale_Country): QLocale {. header:headerFile, importcpp:"QLocale(@)", constructor .} #
proc newQLocale*(other: QLocale): QLocale {. header:headerFile, importcpp:"QLocale(@)", constructor .} #

# Public methods for QLocale
proc qt_check_for_QGADGET_macro*(this: QLocale) {.header:headerFile, importcpp:"#.qt_check_for_QGADGET_macro(@)".} # Public
proc swap*(this: QLocale, other: QLocale) {.header:headerFile, importcpp:"#.swap(@)".} # Public
proc language*(this: QLocale): QLocale_Language {.header:headerFile, importcpp:"#.language(@)".} # Public
proc script*(this: QLocale): QLocale_Script {.header:headerFile, importcpp:"#.script(@)".} # Public
proc territory*(this: QLocale): QLocale_Country {.header:headerFile, importcpp:"#.territory(@)".} # Public
proc country*(this: QLocale): QLocale_Country {.header:headerFile, importcpp:"#.country(@)".} # Public
proc name*(this: QLocale): QString {.header:headerFile, importcpp:"#.name(@)".} # Public
proc bcp47Name*(this: QLocale): QString {.header:headerFile, importcpp:"#.bcp47Name(@)".} # Public
proc nativeLanguageName*(this: QLocale): QString {.header:headerFile, importcpp:"#.nativeLanguageName(@)".} # Public
proc nativeTerritoryName*(this: QLocale): QString {.header:headerFile, importcpp:"#.nativeTerritoryName(@)".} # Public
proc nativeCountryName*(this: QLocale): QString {.header:headerFile, importcpp:"#.nativeCountryName(@)".} # Public
# 1 default parameters!
proc toShort*(this: QLocale, s: QString, ok: ptr bool): cshort {.header:headerFile, importcpp:"#.toShort(@)".} # Public
proc toShort*(this: QLocale, s: QString): cshort {.header:headerFile, importcpp:"#.toShort(@)".} # Public
# 1 default parameters!
proc toUShort*(this: QLocale, s: QString, ok: ptr bool): cushort {.header:headerFile, importcpp:"#.toUShort(@)".} # Public
proc toUShort*(this: QLocale, s: QString): cushort {.header:headerFile, importcpp:"#.toUShort(@)".} # Public
# 1 default parameters!
proc toInt*(this: QLocale, s: QString, ok: ptr bool): cint {.header:headerFile, importcpp:"#.toInt(@)".} # Public
proc toInt*(this: QLocale, s: QString): cint {.header:headerFile, importcpp:"#.toInt(@)".} # Public
# 1 default parameters!
proc toUInt*(this: QLocale, s: QString, ok: ptr bool): cuint {.header:headerFile, importcpp:"#.toUInt(@)".} # Public
proc toUInt*(this: QLocale, s: QString): cuint {.header:headerFile, importcpp:"#.toUInt(@)".} # Public
# 1 default parameters!
proc toLong*(this: QLocale, s: QString, ok: ptr bool): clong {.header:headerFile, importcpp:"#.toLong(@)".} # Public
proc toLong*(this: QLocale, s: QString): clong {.header:headerFile, importcpp:"#.toLong(@)".} # Public
# 1 default parameters!
proc toULong*(this: QLocale, s: QString, ok: ptr bool): culong {.header:headerFile, importcpp:"#.toULong(@)".} # Public
proc toULong*(this: QLocale, s: QString): culong {.header:headerFile, importcpp:"#.toULong(@)".} # Public
# 1 default parameters!
proc toLongLong*(this: QLocale, s: QString, ok: ptr bool): clonglong {.header:headerFile, importcpp:"#.toLongLong(@)".} # Public
proc toLongLong*(this: QLocale, s: QString): clonglong {.header:headerFile, importcpp:"#.toLongLong(@)".} # Public
# 1 default parameters!
proc toULongLong*(this: QLocale, s: QString, ok: ptr bool): culonglong {.header:headerFile, importcpp:"#.toULongLong(@)".} # Public
proc toULongLong*(this: QLocale, s: QString): culonglong {.header:headerFile, importcpp:"#.toULongLong(@)".} # Public
# 1 default parameters!
proc toFloat*(this: QLocale, s: QString, ok: ptr bool): cfloat {.header:headerFile, importcpp:"#.toFloat(@)".} # Public
proc toFloat*(this: QLocale, s: QString): cfloat {.header:headerFile, importcpp:"#.toFloat(@)".} # Public
# 1 default parameters!
proc toDouble*(this: QLocale, s: QString, ok: ptr bool): cdouble {.header:headerFile, importcpp:"#.toDouble(@)".} # Public
proc toDouble*(this: QLocale, s: QString): cdouble {.header:headerFile, importcpp:"#.toDouble(@)".} # Public
proc toString*(this: QLocale, i: clonglong): QString {.header:headerFile, importcpp:"#.toString(@)".} # Public
proc toString*(this: QLocale, i: culonglong): QString {.header:headerFile, importcpp:"#.toString(@)".} # Public
proc toString*(this: QLocale, i: clong): QString {.header:headerFile, importcpp:"#.toString(@)".} # Public
proc toString*(this: QLocale, i: culong): QString {.header:headerFile, importcpp:"#.toString(@)".} # Public
proc toString*(this: QLocale, i: cshort): QString {.header:headerFile, importcpp:"#.toString(@)".} # Public
proc toString*(this: QLocale, i: cushort): QString {.header:headerFile, importcpp:"#.toString(@)".} # Public
when (not defined(windows)):
    proc toString*(this: QLocale, i: cint): QString {.header:headerFile, importcpp:"#.toString(@)".} # Public
when (not defined(windows)):
    proc toString*(this: QLocale, i: cuint): QString {.header:headerFile, importcpp:"#.toString(@)".} # Public
# 1 default parameters!
proc toString*(this: QLocale, f: cdouble, format: char, precision: cint): QString {.header:headerFile, importcpp:"#.toString(@)".} # Public
proc toString*(this: QLocale, f: cdouble, format: char): QString {.header:headerFile, importcpp:"#.toString(@)".} # Public
# 1 default parameters!
proc toString*(this: QLocale, f: cfloat, format: char, precision: cint): QString {.header:headerFile, importcpp:"#.toString(@)".} # Public
proc toString*(this: QLocale, f: cfloat, format: char): QString {.header:headerFile, importcpp:"#.toString(@)".} # Public
import nimqt/qtcore/qdatetime
proc toString*(this: QLocale, date: QDate, format: QString): QString {.header:headerFile, importcpp:"#.toString(@)".} # Public
proc toString*(this: QLocale, time: QTime, format: QString): QString {.header:headerFile, importcpp:"#.toString(@)".} # Public
proc toString*(this: QLocale, dateTime: QDateTime, format: QString): QString {.header:headerFile, importcpp:"#.toString(@)".} # Public
proc toString*(this: QLocale, date: QDate, format: QLocale_FormatType): QString {.header:headerFile, importcpp:"#.toString(@)".} # Public
proc toString*(this: QLocale, time: QTime, format: QLocale_FormatType): QString {.header:headerFile, importcpp:"#.toString(@)".} # Public
proc toString*(this: QLocale, dateTime: QDateTime, format: QLocale_FormatType): QString {.header:headerFile, importcpp:"#.toString(@)".} # Public
import nimqt/qtcore/qcalendar
proc toString*(this: QLocale, date: QDate, format: QLocale_FormatType, cal: QCalendar): QString {.header:headerFile, importcpp:"#.toString(@)".} # Public
proc toString*(this: QLocale, dateTime: QDateTime, format: QLocale_FormatType, cal: QCalendar): QString {.header:headerFile, importcpp:"#.toString(@)".} # Public
proc dateFormat*(this: QLocale, format: QLocale_FormatType): QString {.header:headerFile, importcpp:"#.dateFormat(@)".} # Public
proc timeFormat*(this: QLocale, format: QLocale_FormatType): QString {.header:headerFile, importcpp:"#.timeFormat(@)".} # Public
proc dateTimeFormat*(this: QLocale, format: QLocale_FormatType): QString {.header:headerFile, importcpp:"#.dateTimeFormat(@)".} # Public
proc toDate*(this: QLocale, string: QString, arg_2: QLocale_FormatType): QDate {.header:headerFile, importcpp:"#.toDate(@)".} # Public
proc toTime*(this: QLocale, string: QString, arg_2: QLocale_FormatType): QTime {.header:headerFile, importcpp:"#.toTime(@)".} # Public
proc toDateTime*(this: QLocale, string: QString, format: QLocale_FormatType): QDateTime {.header:headerFile, importcpp:"#.toDateTime(@)".} # Public
proc toDate*(this: QLocale, string: QString, format: QString): QDate {.header:headerFile, importcpp:"#.toDate(@)".} # Public
proc toTime*(this: QLocale, string: QString, format: QString): QTime {.header:headerFile, importcpp:"#.toTime(@)".} # Public
proc toDateTime*(this: QLocale, string: QString, format: QString): QDateTime {.header:headerFile, importcpp:"#.toDateTime(@)".} # Public
proc toDate*(this: QLocale, string: QString, format: QLocale_FormatType, cal: QCalendar): QDate {.header:headerFile, importcpp:"#.toDate(@)".} # Public
proc toDateTime*(this: QLocale, string: QString, format: QLocale_FormatType, cal: QCalendar): QDateTime {.header:headerFile, importcpp:"#.toDateTime(@)".} # Public
proc toDate*(this: QLocale, string: QString, format: QString, cal: QCalendar): QDate {.header:headerFile, importcpp:"#.toDate(@)".} # Public
proc toDateTime*(this: QLocale, string: QString, format: QString, cal: QCalendar): QDateTime {.header:headerFile, importcpp:"#.toDateTime(@)".} # Public
proc decimalPoint*(this: QLocale): QString {.header:headerFile, importcpp:"#.decimalPoint(@)".} # Public
proc groupSeparator*(this: QLocale): QString {.header:headerFile, importcpp:"#.groupSeparator(@)".} # Public
proc percent*(this: QLocale): QString {.header:headerFile, importcpp:"#.percent(@)".} # Public
proc zeroDigit*(this: QLocale): QString {.header:headerFile, importcpp:"#.zeroDigit(@)".} # Public
proc negativeSign*(this: QLocale): QString {.header:headerFile, importcpp:"#.negativeSign(@)".} # Public
proc positiveSign*(this: QLocale): QString {.header:headerFile, importcpp:"#.positiveSign(@)".} # Public
proc exponential*(this: QLocale): QString {.header:headerFile, importcpp:"#.exponential(@)".} # Public
proc monthName*(this: QLocale, arg_1: cint, format: QLocale_FormatType): QString {.header:headerFile, importcpp:"#.monthName(@)".} # Public
proc standaloneMonthName*(this: QLocale, arg_1: cint, format: QLocale_FormatType): QString {.header:headerFile, importcpp:"#.standaloneMonthName(@)".} # Public
proc dayName*(this: QLocale, arg_1: cint, format: QLocale_FormatType): QString {.header:headerFile, importcpp:"#.dayName(@)".} # Public
proc standaloneDayName*(this: QLocale, arg_1: cint, format: QLocale_FormatType): QString {.header:headerFile, importcpp:"#.standaloneDayName(@)".} # Public
import nimqt/qtcore/qnamespace
proc firstDayOfWeek*(this: QLocale): Qt_DayOfWeek {.header:headerFile, importcpp:"#.firstDayOfWeek(@)".} # Public
import nimqt/qtcore/qlist
proc weekdays*(this: QLocale): QList[Qt_DayOfWeek] {.header:headerFile, importcpp:"#.weekdays(@)".} # Public
proc amText*(this: QLocale): QString {.header:headerFile, importcpp:"#.amText(@)".} # Public
proc pmText*(this: QLocale): QString {.header:headerFile, importcpp:"#.pmText(@)".} # Public
proc measurementSystem*(this: QLocale): QLocale_MeasurementSystem {.header:headerFile, importcpp:"#.measurementSystem(@)".} # Public
proc collation*(this: QLocale): QLocale {.header:headerFile, importcpp:"#.collation(@)".} # Public
proc textDirection*(this: QLocale): Qt_LayoutDirection {.header:headerFile, importcpp:"#.textDirection(@)".} # Public
proc toUpper*(this: QLocale, str: QString): QString {.header:headerFile, importcpp:"#.toUpper(@)".} # Public
proc toLower*(this: QLocale, str: QString): QString {.header:headerFile, importcpp:"#.toLower(@)".} # Public
proc currencySymbol*(this: QLocale, arg_1: QLocale_CurrencySymbolFormat): QString {.header:headerFile, importcpp:"#.currencySymbol(@)".} # Public
# 1 default parameters!
proc toCurrencyString*(this: QLocale, arg_1: clonglong, symbol: QString): QString {.header:headerFile, importcpp:"#.toCurrencyString(@)".} # Public
proc toCurrencyString*(this: QLocale, arg_1: clonglong): QString {.header:headerFile, importcpp:"#.toCurrencyString(@)".} # Public
# 1 default parameters!
proc toCurrencyString*(this: QLocale, arg_1: culonglong, symbol: QString): QString {.header:headerFile, importcpp:"#.toCurrencyString(@)".} # Public
proc toCurrencyString*(this: QLocale, arg_1: culonglong): QString {.header:headerFile, importcpp:"#.toCurrencyString(@)".} # Public
# 1 default parameters!
proc toCurrencyString*(this: QLocale, i: cshort, symbol: QString): QString {.header:headerFile, importcpp:"#.toCurrencyString(@)".} # Public
proc toCurrencyString*(this: QLocale, i: cshort): QString {.header:headerFile, importcpp:"#.toCurrencyString(@)".} # Public
# 1 default parameters!
proc toCurrencyString*(this: QLocale, i: cushort, symbol: QString): QString {.header:headerFile, importcpp:"#.toCurrencyString(@)".} # Public
proc toCurrencyString*(this: QLocale, i: cushort): QString {.header:headerFile, importcpp:"#.toCurrencyString(@)".} # Public
# 1 default parameters!
proc toCurrencyString*(this: QLocale, i: cint, symbol: QString): QString {.header:headerFile, importcpp:"#.toCurrencyString(@)".} # Public
proc toCurrencyString*(this: QLocale, i: cint): QString {.header:headerFile, importcpp:"#.toCurrencyString(@)".} # Public
# 1 default parameters!
proc toCurrencyString*(this: QLocale, i: cuint, symbol: QString): QString {.header:headerFile, importcpp:"#.toCurrencyString(@)".} # Public
proc toCurrencyString*(this: QLocale, i: cuint): QString {.header:headerFile, importcpp:"#.toCurrencyString(@)".} # Public
# 1 default parameters!
proc toCurrencyString*(this: QLocale, arg_1: cdouble, symbol: QString, precision: cint): QString {.header:headerFile, importcpp:"#.toCurrencyString(@)".} # Public
proc toCurrencyString*(this: QLocale, arg_1: cdouble, symbol: QString): QString {.header:headerFile, importcpp:"#.toCurrencyString(@)".} # Public
# 1 default parameters!
proc toCurrencyString*(this: QLocale, i: cfloat, symbol: QString, precision: cint): QString {.header:headerFile, importcpp:"#.toCurrencyString(@)".} # Public
proc toCurrencyString*(this: QLocale, i: cfloat, symbol: QString): QString {.header:headerFile, importcpp:"#.toCurrencyString(@)".} # Public
# 2 default parameters!
proc formattedDataSize*(this: QLocale, bytes: clonglong, precision: cint, format: QFlags[QLocale_DataSizeFormat]): QString {.header:headerFile, importcpp:"#.formattedDataSize(@)".} # Public
proc formattedDataSize*(this: QLocale, bytes: clonglong, precision: cint): QString {.header:headerFile, importcpp:"#.formattedDataSize(@)".} # Public
proc formattedDataSize*(this: QLocale, bytes: clonglong): QString {.header:headerFile, importcpp:"#.formattedDataSize(@)".} # Public
import nimqt/qtcore/qstringlist
proc uiLanguages*(this: QLocale): QStringList {.header:headerFile, importcpp:"#.uiLanguages(@)".} # Public
# 1 default parameters!
proc static_QLocale_languageToCode*(language: QLocale_Language, codeTypes: QFlags[QLocale_LanguageCodeType]): QString {.header:headerFile, importcpp:"QLocale::languageToCode(@)".} # Public static
proc static_QLocale_languageToCode*(language: QLocale_Language): QString {.header:headerFile, importcpp:"QLocale::languageToCode(@)".} # Public static
proc static_QLocale_territoryToCode*(territory: QLocale_Country): QString {.header:headerFile, importcpp:"QLocale::territoryToCode(@)".} # Public static
proc static_QLocale_countryToCode*(country: QLocale_Country): QString {.header:headerFile, importcpp:"QLocale::countryToCode(@)".} # Public static
proc static_QLocale_scriptToCode*(script: QLocale_Script): QString {.header:headerFile, importcpp:"QLocale::scriptToCode(@)".} # Public static
proc static_QLocale_languageToString*(language: QLocale_Language): QString {.header:headerFile, importcpp:"QLocale::languageToString(@)".} # Public static
proc static_QLocale_territoryToString*(territory: QLocale_Country): QString {.header:headerFile, importcpp:"QLocale::territoryToString(@)".} # Public static
proc static_QLocale_countryToString*(country: QLocale_Country): QString {.header:headerFile, importcpp:"QLocale::countryToString(@)".} # Public static
proc static_QLocale_scriptToString*(script: QLocale_Script): QString {.header:headerFile, importcpp:"QLocale::scriptToString(@)".} # Public static
proc static_QLocale_setDefault*(locale: QLocale) {.header:headerFile, importcpp:"QLocale::setDefault(@)".} # Public static
proc static_QLocale_c*(): QLocale {.header:headerFile, importcpp:"QLocale::c(@)".} # Public static
proc static_QLocale_system*(): QLocale {.header:headerFile, importcpp:"QLocale::system(@)".} # Public static
proc static_QLocale_matchingLocales*(language: QLocale_Language, script: QLocale_Script, territory: QLocale_Country): QList[QLocale] {.header:headerFile, importcpp:"QLocale::matchingLocales(@)".} # Public static
proc static_QLocale_countriesForLanguage*(lang: QLocale_Language): QList[QLocale_Country] {.header:headerFile, importcpp:"QLocale::countriesForLanguage(@)".} # Public static
proc setNumberOptions*(this: QLocale, options: QFlags[QLocale_NumberOption]) {.header:headerFile, importcpp:"#.setNumberOptions(@)".} # Public
proc numberOptions*(this: QLocale): QFlags[QLocale_NumberOption] {.header:headerFile, importcpp:"#.numberOptions(@)".} # Public
proc quoteString*(this: QLocale, str: QString, style: QLocale_QuotationStyle): QString {.header:headerFile, importcpp:"#.quoteString(@)".} # Public
proc createSeparatedList*(this: QLocale, strl: QStringList): QString {.header:headerFile, importcpp:"#.createSeparatedList(@)".} # Public

export qstringlist
export qstring
export qcalendar
export qnamespace
export qlist
export qdatetime
export qflags
