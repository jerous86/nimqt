const headerFile* = "QtGui/qbrush.h"

type
    # Enums found in the C++ code
    # Global
    QGradient_Type* {.header:headerFile,importcpp:"QGradient::Type".} = enum LinearGradient = 0, RadialGradient = 0x1, ConicalGradient = 0x2, NoGradient = 0x3
    QGradient_Spread* {.header:headerFile,importcpp:"QGradient::Spread".} = enum PadSpread = 0, ReflectSpread = 0x1, RepeatSpread = 0x2
    QGradient_CoordinateMode* {.header:headerFile,importcpp:"QGradient::CoordinateMode".} = enum LogicalMode = 0, StretchToDeviceMode = 0x1, ObjectBoundingMode = 0x2, ObjectMode = 0x3
    QGradient_InterpolationMode* {.header:headerFile,importcpp:"QGradient::InterpolationMode".} = enum ColorInterpolation = 0, ComponentInterpolation = 0x1
    QGradient_Preset* {.header:headerFile,importcpp:"QGradient::Preset".} = enum WarmFlame = 0x1, NightFade = 0x2, SpringWarmth = 0x3, JuicyPeach = 0x4, 
        YoungPassion = 0x5, LadyLips = 0x6, SunnyMorning = 0x7, RainyAshville = 0x8, FrozenDreams = 0x9, 
        WinterNeva = 0xa, DustyGrass = 0xb, TemptingAzure = 0xc, HeavyRain = 0xd, AmyCrisp = 0xe, 
        MeanFruit = 0xf, DeepBlue = 0x10, RipeMalinka = 0x11, CloudyKnoxville = 0x12, MalibuBeach = 0x13, 
        NewLife = 0x14, TrueSunset = 0x15, MorpheusDen = 0x16, RareWind = 0x17, NearMoon = 0x18, 
        WildApple = 0x19, SaintPetersburg = 0x1a, PlumPlate = 0x1c, EverlastingSky = 0x1d, HappyFisher = 0x1e, 
        Blessing = 0x1f, SharpeyeEagle = 0x20, LadogaBottom = 0x21, LemonGate = 0x22, ItmeoBranding = 0x23, 
        ZeusMiracle = 0x24, OldHat = 0x25, StarWine = 0x26, HappyAcid = 0x29, AwesomePine = 0x2a, 
        NewYork = 0x2b, ShyRainbow = 0x2c, MixedHopes = 0x2e, FlyHigh = 0x2f, StrongBliss = 0x30, 
        FreshMilk = 0x31, SnowAgain = 0x32, FebruaryInk = 0x33, KindSteel = 0x34, SoftGrass = 0x35, 
        GrownEarly = 0x36, SharpBlues = 0x37, ShadyWater = 0x38, DirtyBeauty = 0x39, GreatWhale = 0x3a, 
        TeenNotebook = 0x3b, PoliteRumors = 0x3c, SweetPeriod = 0x3d, WideMatrix = 0x3e, SoftCherish = 0x3f, 
        RedSalvation = 0x40, BurningSpring = 0x41, NightParty = 0x42, SkyGlider = 0x43, HeavenPeach = 0x44, 
        PurpleDivision = 0x45, AquaSplash = 0x46, SpikyNaga = 0x48, LoveKiss = 0x49, CleanMirror = 0x4b, 
        PremiumDark = 0x4c, ColdEvening = 0x4d, CochitiLake = 0x4e, SummerGames = 0x4f, PassionateBed = 0x50, 
        MountainRock = 0x51, DesertHump = 0x52, JungleDay = 0x53, PhoenixStart = 0x54, OctoberSilence = 0x55, 
        FarawayRiver = 0x56, AlchemistLab = 0x57, OverSun = 0x58, PremiumWhite = 0x59, MarsParty = 0x5a, 
        EternalConstance = 0x5b, JapanBlush = 0x5c, SmilingRain = 0x5d, CloudyApple = 0x5e, BigMango = 0x5f, 
        HealthyWater = 0x60, AmourAmour = 0x61, RiskyConcrete = 0x62, StrongStick = 0x63, ViciousStance = 0x64, 
        PaloAlto = 0x65, HappyMemories = 0x66, MidnightBloom = 0x67, Crystalline = 0x68, PartyBliss = 0x6a, 
        ConfidentCloud = 0x6b, LeCocktail = 0x6c, RiverCity = 0x6d, FrozenBerry = 0x6e, ChildCare = 0x70, 
        FlyingLemon = 0x71, NewRetrowave = 0x72, HiddenJaguar = 0x73, AboveTheSky = 0x74, Nega = 0x75, 
        DenseWater = 0x76, Seashore = 0x78, MarbleWall = 0x79, CheerfulCaramel = 0x7a, NightSky = 0x7b, 
        MagicLake = 0x7c, YoungGrass = 0x7d, ColorfulPeach = 0x7e, GentleCare = 0x7f, PlumBath = 0x80, 
        HappyUnicorn = 0x81, AfricanField = 0x83, SolidStone = 0x84, OrangeJuice = 0x85, GlassWater = 0x86, 
        NorthMiracle = 0x88, FruitBlend = 0x89, MillenniumPine = 0x8a, HighFlight = 0x8b, MoleHall = 0x8c, 
        SpaceShift = 0x8e, ForestInei = 0x8f, RoyalGarden = 0x90, RichMetal = 0x91, JuicyCake = 0x92, 
        SmartIndigo = 0x93, SandStrike = 0x94, NorseBeauty = 0x95, AquaGuidance = 0x96, SunVeggie = 0x97, 
        SeaLord = 0x98, BlackSea = 0x99, GrassShampoo = 0x9a, LandingAircraft = 0x9b, WitchDance = 0x9c, 
        SleeplessNight = 0x9d, AngelCare = 0x9e, CrystalRiver = 0x9f, SoftLipstick = 0xa0, SaltMountain = 0xa1, 
        PerfectWhite = 0xa2, FreshOasis = 0xa3, StrictNovember = 0xa4, MorningSalad = 0xa5, DeepRelief = 0xa6, 
        SeaStrike = 0xa7, NightCall = 0xa8, SupremeSky = 0xa9, LightBlue = 0xaa, MindCrawl = 0xab, 
        LilyMeadow = 0xac, SugarLollipop = 0xad, SweetDessert = 0xae, MagicRay = 0xaf, TeenParty = 0xb0, 
        FrozenHeat = 0xb1, GagarinView = 0xb2, FabledSunset = 0xb3, PerfectBlue = 0xb4, NumPresets = 0xb5

type
    # Classes found in the C++ code
    QBrushDataPointerDeleter* {.header:headerFile,importcpp:"QBrushDataPointerDeleter" ,pure,inheritable.} = object
    QBrush* {.header:headerFile,importcpp:"QBrush" ,pure,inheritable.} = object
    QBrushData* {.header:headerFile,importcpp:"QBrushData" ,pure,inheritable.} = object
    QGradient* {.header:headerFile,importcpp:"QGradient" ,pure,inheritable.} = object
    QLinearGradient* {.header:headerFile,importcpp:"QLinearGradient" ,pure.} = object of QGradient
    QRadialGradient* {.header:headerFile,importcpp:"QRadialGradient" ,pure.} = object of QGradient
    QConicalGradient* {.header:headerFile,importcpp:"QConicalGradient" ,pure.} = object of QGradient


type
    # typedefs found in the C++ code
    QLinearGradient_Type * = QGradient_Type
    QLinearGradient_Spread * = QGradient_Spread
    QLinearGradient_CoordinateMode * = QGradient_CoordinateMode
    QLinearGradient_InterpolationMode * = QGradient_InterpolationMode
    QLinearGradient_Preset * = QGradient_Preset
    QRadialGradient_Type * = QGradient_Type
    QRadialGradient_Spread * = QGradient_Spread
    QRadialGradient_CoordinateMode * = QGradient_CoordinateMode
    QRadialGradient_InterpolationMode * = QGradient_InterpolationMode
    QRadialGradient_Preset * = QGradient_Preset
    QConicalGradient_Type * = QGradient_Type
    QConicalGradient_Spread * = QGradient_Spread
    QConicalGradient_CoordinateMode * = QGradient_CoordinateMode
    QConicalGradient_InterpolationMode * = QGradient_InterpolationMode
    QConicalGradient_Preset * = QGradient_Preset

# Stuff for class QBrush

# Public constructors for QBrush
proc newQBrush*(): QBrush {. header:headerFile, importcpp:"QBrush(@)", constructor .} #
import nimqt/qtcore/qnamespace
proc newQBrush*(bs: Qt_BrushStyle): QBrush {. header:headerFile, importcpp:"QBrush(@)", constructor .} #
import nimqt/qtgui/qcolor
proc newQBrush*(color: QColor): QBrush {. header:headerFile, importcpp:"QBrush(@)", constructor .} #
proc newQBrush*(color: QColor, bs: Qt_BrushStyle): QBrush {. header:headerFile, importcpp:"QBrush(@)", constructor .} #
proc newQBrush*(color: Qt_GlobalColor, bs: Qt_BrushStyle): QBrush {. header:headerFile, importcpp:"QBrush(@)", constructor .} #
import nimqt/qtgui/qpixmap
proc newQBrush*(color: QColor, pixmap: QPixmap): QBrush {. header:headerFile, importcpp:"QBrush(@)", constructor .} #
proc newQBrush*(color: Qt_GlobalColor, pixmap: QPixmap): QBrush {. header:headerFile, importcpp:"QBrush(@)", constructor .} #
proc newQBrush*(pixmap: QPixmap): QBrush {. header:headerFile, importcpp:"QBrush(@)", constructor .} #
import nimqt/qtgui/qimage
proc newQBrush*(image: QImage): QBrush {. header:headerFile, importcpp:"QBrush(@)", constructor .} #
proc newQBrush*(brush: QBrush): QBrush {. header:headerFile, importcpp:"QBrush(@)", constructor .} #
proc newQBrush*(gradient: QGradient): QBrush {. header:headerFile, importcpp:"QBrush(@)", constructor .} #

# Public methods for QBrush
proc swap*(this: QBrush, other: QBrush) {.header:headerFile, importcpp:"#.swap(@)".} # Public
proc style*(this: QBrush): Qt_BrushStyle {.header:headerFile, importcpp:"#.style(@)".} # Public
proc setStyle*(this: QBrush, arg_0: Qt_BrushStyle) {.header:headerFile, importcpp:"#.setStyle(@)".} # Public
import nimqt/qtgui/qtransform
proc transform*(this: QBrush): QTransform {.header:headerFile, importcpp:"#.transform(@)".} # Public
proc setTransform*(this: QBrush, arg_0: QTransform) {.header:headerFile, importcpp:"#.setTransform(@)".} # Public
proc texture*(this: QBrush): QPixmap {.header:headerFile, importcpp:"#.texture(@)".} # Public
proc setTexture*(this: QBrush, pixmap: QPixmap) {.header:headerFile, importcpp:"#.setTexture(@)".} # Public
proc textureImage*(this: QBrush): QImage {.header:headerFile, importcpp:"#.textureImage(@)".} # Public
proc setTextureImage*(this: QBrush, image: QImage) {.header:headerFile, importcpp:"#.setTextureImage(@)".} # Public
proc color*(this: QBrush): QColor {.header:headerFile, importcpp:"#.color(@)".} # Public
proc setColor*(this: QBrush, color: QColor) {.header:headerFile, importcpp:"#.setColor(@)".} # Public
proc setColor*(this: QBrush, color: Qt_GlobalColor) {.header:headerFile, importcpp:"#.setColor(@)".} # Public
proc gradient*(this: QBrush): ptr QGradient {.header:headerFile, importcpp:"#.gradient(@)".} # Public
proc isOpaque*(this: QBrush): bool {.header:headerFile, importcpp:"#.isOpaque(@)".} # Public
proc `!=`*(this: QBrush, b: QBrush): bool {.header:headerFile, importcpp:"#.operator!=(@)".} # Public
proc isDetached*(this: QBrush): bool {.header:headerFile, importcpp:"#.isDetached(@)".} # Public
# Stuff for class QGradient

# Public constructors for QGradient
proc newQGradient*(): ptr QGradient {. header:headerFile, importcpp:"new QGradient(@)" .} #
proc newQGradient*(arg_0: QGradient_Preset): ptr QGradient {. header:headerFile, importcpp:"new QGradient(@)" .} #

# Public methods for QGradient
proc qt_check_for_QGADGET_macro*(this: ptr QGradient) {.header:headerFile, importcpp:"#.qt_check_for_QGADGET_macro(@)".} # Public
proc `type`*(this: ptr QGradient): QGradient_Type {.header:headerFile, importcpp:"#.type(@)".} # Public
proc setSpread*(this: ptr QGradient, spread: QGradient_Spread) {.header:headerFile, importcpp:"#.setSpread(@)".} # Public
proc spread*(this: ptr QGradient): QGradient_Spread {.header:headerFile, importcpp:"#.spread(@)".} # Public
proc setColorAt*(this: ptr QGradient, pos: cfloat, color: QColor) {.header:headerFile, importcpp:"#.setColorAt(@)".} # Public
proc coordinateMode*(this: ptr QGradient): QGradient_CoordinateMode {.header:headerFile, importcpp:"#.coordinateMode(@)".} # Public
proc setCoordinateMode*(this: ptr QGradient, mode: QGradient_CoordinateMode) {.header:headerFile, importcpp:"#.setCoordinateMode(@)".} # Public
proc interpolationMode*(this: ptr QGradient): QGradient_InterpolationMode {.header:headerFile, importcpp:"#.interpolationMode(@)".} # Public
proc setInterpolationMode*(this: ptr QGradient, mode: QGradient_InterpolationMode) {.header:headerFile, importcpp:"#.setInterpolationMode(@)".} # Public
proc `!=`*(this: ptr QGradient, other: QGradient): bool {.header:headerFile, importcpp:"#.operator!=(@)".} # Public
# Stuff for class QLinearGradient

# Public constructors for QLinearGradient
proc newQLinearGradient*(): ptr QLinearGradient {. header:headerFile, importcpp:"new QLinearGradient(@)" .} #
import nimqt/qtcore/qpoint
proc newQLinearGradient*(start: QPointF, finalStop: QPointF): ptr QLinearGradient {. header:headerFile, importcpp:"new QLinearGradient(@)" .} #
proc newQLinearGradient*(xStart: cfloat, yStart: cfloat, xFinalStop: cfloat, yFinalStop: cfloat): ptr QLinearGradient {. header:headerFile, importcpp:"new QLinearGradient(@)" .} #

# Public methods for QLinearGradient
proc start*(this: ptr QLinearGradient): QPointF {.header:headerFile, importcpp:"#.start(@)".} # Public
proc setStart*(this: ptr QLinearGradient, start: QPointF) {.header:headerFile, importcpp:"#.setStart(@)".} # Public
proc setStart*(this: ptr QLinearGradient, x: cfloat, y: cfloat) {.header:headerFile, importcpp:"#.setStart(@)".} # Public
proc finalStop*(this: ptr QLinearGradient): QPointF {.header:headerFile, importcpp:"#.finalStop(@)".} # Public
proc setFinalStop*(this: ptr QLinearGradient, stop: QPointF) {.header:headerFile, importcpp:"#.setFinalStop(@)".} # Public
proc setFinalStop*(this: ptr QLinearGradient, x: cfloat, y: cfloat) {.header:headerFile, importcpp:"#.setFinalStop(@)".} # Public
# Stuff for class QRadialGradient

# Public constructors for QRadialGradient
proc newQRadialGradient*(): ptr QRadialGradient {. header:headerFile, importcpp:"new QRadialGradient(@)" .} #
proc newQRadialGradient*(center: QPointF, radius: cfloat, focalPoint: QPointF): ptr QRadialGradient {. header:headerFile, importcpp:"new QRadialGradient(@)" .} #
proc newQRadialGradient*(cx: cfloat, cy: cfloat, radius: cfloat, fx: cfloat, fy: cfloat): ptr QRadialGradient {. header:headerFile, importcpp:"new QRadialGradient(@)" .} #
proc newQRadialGradient*(center: QPointF, radius: cfloat): ptr QRadialGradient {. header:headerFile, importcpp:"new QRadialGradient(@)" .} #
proc newQRadialGradient*(cx: cfloat, cy: cfloat, radius: cfloat): ptr QRadialGradient {. header:headerFile, importcpp:"new QRadialGradient(@)" .} #
proc newQRadialGradient*(center: QPointF, centerRadius: cfloat, focalPoint: QPointF, focalRadius: cfloat): ptr QRadialGradient {. header:headerFile, importcpp:"new QRadialGradient(@)" .} #
proc newQRadialGradient*(cx: cfloat, cy: cfloat, centerRadius: cfloat, fx: cfloat, fy: cfloat, focalRadius: cfloat): ptr QRadialGradient {. header:headerFile, importcpp:"new QRadialGradient(@)" .} #

# Public methods for QRadialGradient
proc center*(this: ptr QRadialGradient): QPointF {.header:headerFile, importcpp:"#.center(@)".} # Public
proc setCenter*(this: ptr QRadialGradient, center: QPointF) {.header:headerFile, importcpp:"#.setCenter(@)".} # Public
proc setCenter*(this: ptr QRadialGradient, x: cfloat, y: cfloat) {.header:headerFile, importcpp:"#.setCenter(@)".} # Public
proc focalPoint*(this: ptr QRadialGradient): QPointF {.header:headerFile, importcpp:"#.focalPoint(@)".} # Public
proc setFocalPoint*(this: ptr QRadialGradient, focalPoint: QPointF) {.header:headerFile, importcpp:"#.setFocalPoint(@)".} # Public
proc setFocalPoint*(this: ptr QRadialGradient, x: cfloat, y: cfloat) {.header:headerFile, importcpp:"#.setFocalPoint(@)".} # Public
proc radius*(this: ptr QRadialGradient): cfloat {.header:headerFile, importcpp:"#.radius(@)".} # Public
proc setRadius*(this: ptr QRadialGradient, radius: cfloat) {.header:headerFile, importcpp:"#.setRadius(@)".} # Public
proc centerRadius*(this: ptr QRadialGradient): cfloat {.header:headerFile, importcpp:"#.centerRadius(@)".} # Public
proc setCenterRadius*(this: ptr QRadialGradient, radius: cfloat) {.header:headerFile, importcpp:"#.setCenterRadius(@)".} # Public
proc focalRadius*(this: ptr QRadialGradient): cfloat {.header:headerFile, importcpp:"#.focalRadius(@)".} # Public
proc setFocalRadius*(this: ptr QRadialGradient, radius: cfloat) {.header:headerFile, importcpp:"#.setFocalRadius(@)".} # Public
# Stuff for class QConicalGradient

# Public constructors for QConicalGradient
proc newQConicalGradient*(): ptr QConicalGradient {. header:headerFile, importcpp:"new QConicalGradient(@)" .} #
proc newQConicalGradient*(center: QPointF, startAngle: cfloat): ptr QConicalGradient {. header:headerFile, importcpp:"new QConicalGradient(@)" .} #
proc newQConicalGradient*(cx: cfloat, cy: cfloat, startAngle: cfloat): ptr QConicalGradient {. header:headerFile, importcpp:"new QConicalGradient(@)" .} #

# Public methods for QConicalGradient
proc center*(this: ptr QConicalGradient): QPointF {.header:headerFile, importcpp:"#.center(@)".} # Public
proc setCenter*(this: ptr QConicalGradient, center: QPointF) {.header:headerFile, importcpp:"#.setCenter(@)".} # Public
proc setCenter*(this: ptr QConicalGradient, x: cfloat, y: cfloat) {.header:headerFile, importcpp:"#.setCenter(@)".} # Public
proc angle*(this: ptr QConicalGradient): cfloat {.header:headerFile, importcpp:"#.angle(@)".} # Public
proc setAngle*(this: ptr QConicalGradient, angle: cfloat) {.header:headerFile, importcpp:"#.setAngle(@)".} # Public

export qpixmap
export qimage
export qnamespace
export qpoint
export qtransform
export qcolor
