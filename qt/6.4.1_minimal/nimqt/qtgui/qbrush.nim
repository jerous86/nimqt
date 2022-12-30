const headerFile* = "QtGui/qbrush.h"

# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}


type
    # Classes and enums found in the C++ code
    # Global
    QGradient_Type* {.header:headerFile,importcpp:"QGradient::Type".} = enum LinearGradient = 0, RadialGradient = 0x1, ConicalGradient = 0x2, NoGradient = 0x3
    QGradient_Spread* {.header:headerFile,importcpp:"QGradient::Spread".} = enum PadSpread = 0, ReflectSpread = 0x1, RepeatSpread = 0x2
    QGradient_CoordinateMode* {.header:headerFile,importcpp:"QGradient::CoordinateMode".} = enum LogicalMode = 0, StretchToDeviceMode = 0x1, ObjectBoundingMode = 0x2, ObjectMode = 0x3
    QGradient_InterpolationMode* {.header:headerFile,importcpp:"QGradient::InterpolationMode".} = enum ColorInterpolation = 0, ComponentInterpolation = 0x1
    QGradient_Preset* {.header:headerFile,importcpp:"QGradient::Preset".} = enum WarmFlame = 0, NightFade = 0x1, SpringWarmth = 0x2, JuicyPeach = 0x3, 
        YoungPassion = 0x4, LadyLips = 0x5, SunnyMorning = 0x6, RainyAshville = 0x7, FrozenDreams = 0x8, 
        WinterNeva = 0x9, DustyGrass = 0xa, TemptingAzure = 0xb, HeavyRain = 0xc, AmyCrisp = 0xd, 
        MeanFruit = 0xe, DeepBlue = 0xf, RipeMalinka = 0x10, CloudyKnoxville = 0x11, MalibuBeach = 0x12, 
        NewLife = 0x13, TrueSunset = 0x14, MorpheusDen = 0x15, RareWind = 0x16, NearMoon = 0x17, 
        WildApple = 0x18, SaintPetersburg = 0x19, PlumPlate = 0x1a, EverlastingSky = 0x1b, HappyFisher = 0x1c, 
        Blessing = 0x1d, SharpeyeEagle = 0x1e, LadogaBottom = 0x1f, LemonGate = 0x20, ItmeoBranding = 0x21, 
        ZeusMiracle = 0x22, OldHat = 0x23, StarWine = 0x24, HappyAcid = 0x25, AwesomePine = 0x26, 
        NewYork = 0x27, ShyRainbow = 0x28, MixedHopes = 0x29, FlyHigh = 0x2a, StrongBliss = 0x2b, 
        FreshMilk = 0x2c, SnowAgain = 0x2d, FebruaryInk = 0x2e, KindSteel = 0x2f, SoftGrass = 0x30, 
        GrownEarly = 0x31, SharpBlues = 0x32, ShadyWater = 0x33, DirtyBeauty = 0x34, GreatWhale = 0x35, 
        TeenNotebook = 0x36, PoliteRumors = 0x37, SweetPeriod = 0x38, WideMatrix = 0x39, SoftCherish = 0x3a, 
        RedSalvation = 0x3b, BurningSpring = 0x3c, NightParty = 0x3d, SkyGlider = 0x3e, HeavenPeach = 0x3f, 
        PurpleDivision = 0x40, AquaSplash = 0x41, SpikyNaga = 0x42, LoveKiss = 0x43, CleanMirror = 0x44, 
        PremiumDark = 0x45, ColdEvening = 0x46, CochitiLake = 0x47, SummerGames = 0x48, PassionateBed = 0x49, 
        MountainRock = 0x4a, DesertHump = 0x4b, JungleDay = 0x4c, PhoenixStart = 0x4d, OctoberSilence = 0x4e, 
        FarawayRiver = 0x4f, AlchemistLab = 0x50, OverSun = 0x51, PremiumWhite = 0x52, MarsParty = 0x53, 
        EternalConstance = 0x54, JapanBlush = 0x55, SmilingRain = 0x56, CloudyApple = 0x57, BigMango = 0x58, 
        HealthyWater = 0x59, AmourAmour = 0x5a, RiskyConcrete = 0x5b, StrongStick = 0x5c, ViciousStance = 0x5d, 
        PaloAlto = 0x5e, HappyMemories = 0x5f, MidnightBloom = 0x60, Crystalline = 0x61, PartyBliss = 0x62, 
        ConfidentCloud = 0x63, LeCocktail = 0x64, RiverCity = 0x65, FrozenBerry = 0x66, ChildCare = 0x67, 
        FlyingLemon = 0x68, NewRetrowave = 0x69, HiddenJaguar = 0x6a, AboveTheSky = 0x6b, Nega = 0x6c, 
        DenseWater = 0x6d, Seashore = 0x6e, MarbleWall = 0x6f, CheerfulCaramel = 0x70, NightSky = 0x71, 
        MagicLake = 0x72, YoungGrass = 0x73, ColorfulPeach = 0x74, GentleCare = 0x75, PlumBath = 0x76, 
        HappyUnicorn = 0x77, AfricanField = 0x78, SolidStone = 0x79, OrangeJuice = 0x7a, GlassWater = 0x7b, 
        NorthMiracle = 0x7c, FruitBlend = 0x7d, MillenniumPine = 0x7e, HighFlight = 0x7f, MoleHall = 0x80, 
        SpaceShift = 0x81, ForestInei = 0x82, RoyalGarden = 0x83, RichMetal = 0x84, JuicyCake = 0x85, 
        SmartIndigo = 0x86, SandStrike = 0x87, NorseBeauty = 0x88, AquaGuidance = 0x89, SunVeggie = 0x8a, 
        SeaLord = 0x8b, BlackSea = 0x8c, GrassShampoo = 0x8d, LandingAircraft = 0x8e, WitchDance = 0x8f, 
        SleeplessNight = 0x90, AngelCare = 0x91, CrystalRiver = 0x92, SoftLipstick = 0x93, SaltMountain = 0x94, 
        PerfectWhite = 0x95, FreshOasis = 0x96, StrictNovember = 0x97, MorningSalad = 0x98, DeepRelief = 0x99, 
        SeaStrike = 0x9a, NightCall = 0x9b, SupremeSky = 0x9c, LightBlue = 0x9d, MindCrawl = 0x9e, 
        LilyMeadow = 0x9f, SugarLollipop = 0xa0, SweetDessert = 0xa1, MagicRay = 0xa2, TeenParty = 0xa3, 
        FrozenHeat = 0xa4, GagarinView = 0xa5, FabledSunset = 0xa6, PerfectBlue = 0xa7, NumPresets = 0xa8
    QBrushDataPointerDeleter* {.header:headerFile,importcpp:"QBrushDataPointerDeleter" ,pure.} = object {.inheritable.}
    QBrush* {.header:headerFile,importcpp:"QBrush" ,pure.} = object {.inheritable.}
    QBrushData* {.header:headerFile,importcpp:"QBrushData" ,pure.} = object {.inheritable.}
    QGradient* {.header:headerFile,importcpp:"QGradient" ,pure.} = object {.inheritable.}
    QLinearGradient* {.header:headerFile,importcpp:"QLinearGradient" ,pure.} = object of QGradient
    QRadialGradient* {.header:headerFile,importcpp:"QRadialGradient" ,pure.} = object of QGradient
    QConicalGradient* {.header:headerFile,importcpp:"QConicalGradient" ,pure.} = object of QGradient
{.push warning[Deprecated]: on.}


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
proc swap*(this:QBrush, other: QBrush) {.header:headerFile, importcpp:"#.swap(@)".} # Public 
proc style*(this:QBrush): Qt_BrushStyle {.header:headerFile, importcpp:"#.style(@)".} # Public 
proc setStyle*(this:QBrush, arg_0: Qt_BrushStyle) {.header:headerFile, importcpp:"#.setStyle(@)".} # Public 
proc texture*(this:QBrush): QPixmap {.header:headerFile, importcpp:"#.texture(@)".} # Public 
proc setTexture*(this:QBrush, pixmap: QPixmap) {.header:headerFile, importcpp:"#.setTexture(@)".} # Public 
proc textureImage*(this:QBrush): QImage {.header:headerFile, importcpp:"#.textureImage(@)".} # Public 
proc setTextureImage*(this:QBrush, image: QImage) {.header:headerFile, importcpp:"#.setTextureImage(@)".} # Public 
proc color*(this:QBrush): QColor {.header:headerFile, importcpp:"#.color(@)".} # Public 
proc setColor*(this:QBrush, color: QColor) {.header:headerFile, importcpp:"#.setColor(@)".} # Public 
proc setColor*(this:QBrush, color: Qt_GlobalColor) {.header:headerFile, importcpp:"#.setColor(@)".} # Public 
proc gradient*(this:QBrush): ptr QGradient {.header:headerFile, importcpp:"#.gradient(@)".} # Public 
proc isOpaque*(this:QBrush): bool {.header:headerFile, importcpp:"#.isOpaque(@)".} # Public 
proc `!=`*(this:QBrush, b: QBrush): bool {.header:headerFile, importcpp:"#.operator!=(@)".} # Public 
proc isDetached*(this:QBrush): bool {.header:headerFile, importcpp:"#.isDetached(@)".} # Public 
# Stuff for class QGradient

# Public constructors for QGradient
proc newQGradient*(): ptr QGradient {. header:headerFile, importcpp:"new QGradient(@)" .} # 
proc newQGradient*(arg_0: QGradient_Preset): ptr QGradient {. header:headerFile, importcpp:"new QGradient(@)" .} # 

# Public methods for QGradient
proc qt_check_for_QGADGET_macro*(this:ptr QGradient) {.header:headerFile, importcpp:"#.qt_check_for_QGADGET_macro(@)".} # Public 
proc `type`*(this:ptr QGradient): QGradient_Type {.header:headerFile, importcpp:"#.type(@)".} # Public 
proc setSpread*(this:ptr QGradient, spread: QGradient_Spread) {.header:headerFile, importcpp:"#.setSpread(@)".} # Public 
proc spread*(this:ptr QGradient): QGradient_Spread {.header:headerFile, importcpp:"#.spread(@)".} # Public 
proc setColorAt*(this:ptr QGradient, pos: cfloat, color: QColor) {.header:headerFile, importcpp:"#.setColorAt(@)".} # Public 
proc coordinateMode*(this:ptr QGradient): QGradient_CoordinateMode {.header:headerFile, importcpp:"#.coordinateMode(@)".} # Public 
proc setCoordinateMode*(this:ptr QGradient, mode: QGradient_CoordinateMode) {.header:headerFile, importcpp:"#.setCoordinateMode(@)".} # Public 
proc interpolationMode*(this:ptr QGradient): QGradient_InterpolationMode {.header:headerFile, importcpp:"#.interpolationMode(@)".} # Public 
proc setInterpolationMode*(this:ptr QGradient, mode: QGradient_InterpolationMode) {.header:headerFile, importcpp:"#.setInterpolationMode(@)".} # Public 
proc `!=`*(this:ptr QGradient, other: QGradient): bool {.header:headerFile, importcpp:"#.operator!=(@)".} # Public 
# Stuff for class QLinearGradient

# Public constructors for QLinearGradient
proc newQLinearGradient*(): ptr QLinearGradient {. header:headerFile, importcpp:"new QLinearGradient(@)" .} # 
import nimqt/qtcore/qpoint
proc newQLinearGradient*(start: QPointF, finalStop: QPointF): ptr QLinearGradient {. header:headerFile, importcpp:"new QLinearGradient(@)" .} # 
proc newQLinearGradient*(xStart: cfloat, yStart: cfloat, xFinalStop: cfloat, yFinalStop: cfloat): ptr QLinearGradient {. header:headerFile, importcpp:"new QLinearGradient(@)" .} # 

# Public methods for QLinearGradient
proc start*(this:ptr QLinearGradient): QPointF {.header:headerFile, importcpp:"#.start(@)".} # Public 
proc setStart*(this:ptr QLinearGradient, start: QPointF) {.header:headerFile, importcpp:"#.setStart(@)".} # Public 
proc setStart*(this:ptr QLinearGradient, x: cfloat, y: cfloat) {.header:headerFile, importcpp:"#.setStart(@)".} # Public 
proc finalStop*(this:ptr QLinearGradient): QPointF {.header:headerFile, importcpp:"#.finalStop(@)".} # Public 
proc setFinalStop*(this:ptr QLinearGradient, stop: QPointF) {.header:headerFile, importcpp:"#.setFinalStop(@)".} # Public 
proc setFinalStop*(this:ptr QLinearGradient, x: cfloat, y: cfloat) {.header:headerFile, importcpp:"#.setFinalStop(@)".} # Public 
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
proc center*(this:ptr QRadialGradient): QPointF {.header:headerFile, importcpp:"#.center(@)".} # Public 
proc setCenter*(this:ptr QRadialGradient, center: QPointF) {.header:headerFile, importcpp:"#.setCenter(@)".} # Public 
proc setCenter*(this:ptr QRadialGradient, x: cfloat, y: cfloat) {.header:headerFile, importcpp:"#.setCenter(@)".} # Public 
proc focalPoint*(this:ptr QRadialGradient): QPointF {.header:headerFile, importcpp:"#.focalPoint(@)".} # Public 
proc setFocalPoint*(this:ptr QRadialGradient, focalPoint: QPointF) {.header:headerFile, importcpp:"#.setFocalPoint(@)".} # Public 
proc setFocalPoint*(this:ptr QRadialGradient, x: cfloat, y: cfloat) {.header:headerFile, importcpp:"#.setFocalPoint(@)".} # Public 
proc radius*(this:ptr QRadialGradient): cfloat {.header:headerFile, importcpp:"#.radius(@)".} # Public 
proc setRadius*(this:ptr QRadialGradient, radius: cfloat) {.header:headerFile, importcpp:"#.setRadius(@)".} # Public 
proc centerRadius*(this:ptr QRadialGradient): cfloat {.header:headerFile, importcpp:"#.centerRadius(@)".} # Public 
proc setCenterRadius*(this:ptr QRadialGradient, radius: cfloat) {.header:headerFile, importcpp:"#.setCenterRadius(@)".} # Public 
proc focalRadius*(this:ptr QRadialGradient): cfloat {.header:headerFile, importcpp:"#.focalRadius(@)".} # Public 
proc setFocalRadius*(this:ptr QRadialGradient, radius: cfloat) {.header:headerFile, importcpp:"#.setFocalRadius(@)".} # Public 
# Stuff for class QConicalGradient

# Public constructors for QConicalGradient
proc newQConicalGradient*(): ptr QConicalGradient {. header:headerFile, importcpp:"new QConicalGradient(@)" .} # 
proc newQConicalGradient*(center: QPointF, startAngle: cfloat): ptr QConicalGradient {. header:headerFile, importcpp:"new QConicalGradient(@)" .} # 
proc newQConicalGradient*(cx: cfloat, cy: cfloat, startAngle: cfloat): ptr QConicalGradient {. header:headerFile, importcpp:"new QConicalGradient(@)" .} # 

# Public methods for QConicalGradient
proc center*(this:ptr QConicalGradient): QPointF {.header:headerFile, importcpp:"#.center(@)".} # Public 
proc setCenter*(this:ptr QConicalGradient, center: QPointF) {.header:headerFile, importcpp:"#.setCenter(@)".} # Public 
proc setCenter*(this:ptr QConicalGradient, x: cfloat, y: cfloat) {.header:headerFile, importcpp:"#.setCenter(@)".} # Public 
proc angle*(this:ptr QConicalGradient): cfloat {.header:headerFile, importcpp:"#.angle(@)".} # Public 
proc setAngle*(this:ptr QConicalGradient, angle: cfloat) {.header:headerFile, importcpp:"#.setAngle(@)".} # Public 

export qpixmap
export qimage
export qnamespace
export qpoint
export qcolor