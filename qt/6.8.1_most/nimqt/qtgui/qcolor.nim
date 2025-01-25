const headerFile* = "QtGui/qcolor.h"

type
    # Enums found in the C++ code
    # Global
    QColor_Spec* {.header:headerFile,importcpp:"QColor::Spec".} = enum Invalid = 0, Rgb = 0x1, Hsv = 0x2, Cmyk = 0x3, 
        Hsl = 0x4, ExtendedRgb = 0x5
    QColor_NameFormat* {.header:headerFile,importcpp:"QColor::NameFormat".} = enum HexRgb = 0, HexArgb = 0x1

type
    # Classes found in the C++ code
    QColor* {.header:headerFile,importcpp:"QColor" ,pure,inheritable.} = object

# Stuff for class QColor

# Public constructors for QColor
proc newQColor*(): QColor {. header:headerFile, importcpp:"QColor(@)", constructor .} #
import nimqt/qtcore/qnamespace
proc newQColor*(color: Qt_GlobalColor): QColor {. header:headerFile, importcpp:"QColor(@)", constructor .} #
# 1 default parameters!
proc newQColor*(r: cint, g: cint, b: cint, a: cint): QColor {. header:headerFile, importcpp:"QColor(@)", constructor .} #
proc newQColor*(r: cint, g: cint, b: cint): QColor {. header:headerFile, importcpp:"QColor(@)", constructor .} #
import nimqt/qtgui/qrgba64
proc newQColor*(rgba64: QRgba64): QColor {. header:headerFile, importcpp:"QColor(@)", constructor .} #
import nimqt/qtcore/qstring
proc newQColor*(name: QString): QColor {. header:headerFile, importcpp:"QColor(@)", constructor .} #
proc newQColor*(aname: ptr char): QColor {. header:headerFile, importcpp:"QColor(@)", constructor .} #
proc newQColor*(spec: QColor_Spec): QColor {. header:headerFile, importcpp:"QColor(@)", constructor .} #
# 1 default parameters!
proc newQColor*(spec: QColor_Spec, a1: cushort, a2: cushort, a3: cushort, a4: cushort, a5: cushort): QColor {. header:headerFile, importcpp:"QColor(@)", constructor .} #
proc newQColor*(spec: QColor_Spec, a1: cushort, a2: cushort, a3: cushort, a4: cushort): QColor {. header:headerFile, importcpp:"QColor(@)", constructor .} #

# Public methods for QColor
import nimqt/qtcore/qanystringview
proc static_QColor_fromString*(name: QAnyStringView): QColor {.header:headerFile, importcpp:"QColor::fromString(@)".} # Public static
proc isValid*(this: QColor): bool {.header:headerFile, importcpp:"#.isValid(@)".} # Public
proc name*(this: QColor, format: QColor_NameFormat): QString {.header:headerFile, importcpp:"#.name(@)".} # Public
proc setNamedColor*(this: QColor, name: QString) {.header:headerFile, importcpp:"#.setNamedColor(@)".} # Public
import nimqt/qtcore/qstringlist
proc static_QColor_colorNames*(): QStringList {.header:headerFile, importcpp:"QColor::colorNames(@)".} # Public static
proc spec*(this: QColor): QColor_Spec {.header:headerFile, importcpp:"#.spec(@)".} # Public
proc alpha*(this: QColor): cint {.header:headerFile, importcpp:"#.alpha(@)".} # Public
proc setAlpha*(this: QColor, alpha: cint) {.header:headerFile, importcpp:"#.setAlpha(@)".} # Public
proc alphaF*(this: QColor): cfloat {.header:headerFile, importcpp:"#.alphaF(@)".} # Public
proc setAlphaF*(this: QColor, alpha: cfloat) {.header:headerFile, importcpp:"#.setAlphaF(@)".} # Public
proc red*(this: QColor): cint {.header:headerFile, importcpp:"#.red(@)".} # Public
proc green*(this: QColor): cint {.header:headerFile, importcpp:"#.green(@)".} # Public
proc blue*(this: QColor): cint {.header:headerFile, importcpp:"#.blue(@)".} # Public
proc setRed*(this: QColor, red: cint) {.header:headerFile, importcpp:"#.setRed(@)".} # Public
proc setGreen*(this: QColor, green: cint) {.header:headerFile, importcpp:"#.setGreen(@)".} # Public
proc setBlue*(this: QColor, blue: cint) {.header:headerFile, importcpp:"#.setBlue(@)".} # Public
proc redF*(this: QColor): cfloat {.header:headerFile, importcpp:"#.redF(@)".} # Public
proc greenF*(this: QColor): cfloat {.header:headerFile, importcpp:"#.greenF(@)".} # Public
proc blueF*(this: QColor): cfloat {.header:headerFile, importcpp:"#.blueF(@)".} # Public
proc setRedF*(this: QColor, red: cfloat) {.header:headerFile, importcpp:"#.setRedF(@)".} # Public
proc setGreenF*(this: QColor, green: cfloat) {.header:headerFile, importcpp:"#.setGreenF(@)".} # Public
proc setBlueF*(this: QColor, blue: cfloat) {.header:headerFile, importcpp:"#.setBlueF(@)".} # Public
# 1 default parameters!
proc getRgb*(this: QColor, r: ptr cint, g: ptr cint, b: ptr cint, a: ptr cint) {.header:headerFile, importcpp:"#.getRgb(@)".} # Public
proc getRgb*(this: QColor, r: ptr cint, g: ptr cint, b: ptr cint) {.header:headerFile, importcpp:"#.getRgb(@)".} # Public
# 1 default parameters!
proc setRgb*(this: QColor, r: cint, g: cint, b: cint, a: cint) {.header:headerFile, importcpp:"#.setRgb(@)".} # Public
proc setRgb*(this: QColor, r: cint, g: cint, b: cint) {.header:headerFile, importcpp:"#.setRgb(@)".} # Public
# 1 default parameters!
proc getRgbF*(this: QColor, r: ptr cfloat, g: ptr cfloat, b: ptr cfloat, a: ptr cfloat) {.header:headerFile, importcpp:"#.getRgbF(@)".} # Public
proc getRgbF*(this: QColor, r: ptr cfloat, g: ptr cfloat, b: ptr cfloat) {.header:headerFile, importcpp:"#.getRgbF(@)".} # Public
# 1 default parameters!
proc setRgbF*(this: QColor, r: cfloat, g: cfloat, b: cfloat, a: cfloat) {.header:headerFile, importcpp:"#.setRgbF(@)".} # Public
proc setRgbF*(this: QColor, r: cfloat, g: cfloat, b: cfloat) {.header:headerFile, importcpp:"#.setRgbF(@)".} # Public
proc rgba64*(this: QColor): QRgba64 {.header:headerFile, importcpp:"#.rgba64(@)".} # Public
proc setRgba64*(this: QColor, rgba: QRgba64) {.header:headerFile, importcpp:"#.setRgba64(@)".} # Public
proc hue*(this: QColor): cint {.header:headerFile, importcpp:"#.hue(@)".} # Public
proc saturation*(this: QColor): cint {.header:headerFile, importcpp:"#.saturation(@)".} # Public
proc hsvHue*(this: QColor): cint {.header:headerFile, importcpp:"#.hsvHue(@)".} # Public
proc hsvSaturation*(this: QColor): cint {.header:headerFile, importcpp:"#.hsvSaturation(@)".} # Public
proc value*(this: QColor): cint {.header:headerFile, importcpp:"#.value(@)".} # Public
proc hueF*(this: QColor): cfloat {.header:headerFile, importcpp:"#.hueF(@)".} # Public
proc saturationF*(this: QColor): cfloat {.header:headerFile, importcpp:"#.saturationF(@)".} # Public
proc hsvHueF*(this: QColor): cfloat {.header:headerFile, importcpp:"#.hsvHueF(@)".} # Public
proc hsvSaturationF*(this: QColor): cfloat {.header:headerFile, importcpp:"#.hsvSaturationF(@)".} # Public
proc valueF*(this: QColor): cfloat {.header:headerFile, importcpp:"#.valueF(@)".} # Public
# 1 default parameters!
proc getHsv*(this: QColor, h: ptr cint, s: ptr cint, v: ptr cint, a: ptr cint) {.header:headerFile, importcpp:"#.getHsv(@)".} # Public
proc getHsv*(this: QColor, h: ptr cint, s: ptr cint, v: ptr cint) {.header:headerFile, importcpp:"#.getHsv(@)".} # Public
# 1 default parameters!
proc setHsv*(this: QColor, h: cint, s: cint, v: cint, a: cint) {.header:headerFile, importcpp:"#.setHsv(@)".} # Public
proc setHsv*(this: QColor, h: cint, s: cint, v: cint) {.header:headerFile, importcpp:"#.setHsv(@)".} # Public
# 1 default parameters!
proc getHsvF*(this: QColor, h: ptr cfloat, s: ptr cfloat, v: ptr cfloat, a: ptr cfloat) {.header:headerFile, importcpp:"#.getHsvF(@)".} # Public
proc getHsvF*(this: QColor, h: ptr cfloat, s: ptr cfloat, v: ptr cfloat) {.header:headerFile, importcpp:"#.getHsvF(@)".} # Public
# 1 default parameters!
proc setHsvF*(this: QColor, h: cfloat, s: cfloat, v: cfloat, a: cfloat) {.header:headerFile, importcpp:"#.setHsvF(@)".} # Public
proc setHsvF*(this: QColor, h: cfloat, s: cfloat, v: cfloat) {.header:headerFile, importcpp:"#.setHsvF(@)".} # Public
proc cyan*(this: QColor): cint {.header:headerFile, importcpp:"#.cyan(@)".} # Public
proc magenta*(this: QColor): cint {.header:headerFile, importcpp:"#.magenta(@)".} # Public
proc yellow*(this: QColor): cint {.header:headerFile, importcpp:"#.yellow(@)".} # Public
proc black*(this: QColor): cint {.header:headerFile, importcpp:"#.black(@)".} # Public
proc cyanF*(this: QColor): cfloat {.header:headerFile, importcpp:"#.cyanF(@)".} # Public
proc magentaF*(this: QColor): cfloat {.header:headerFile, importcpp:"#.magentaF(@)".} # Public
proc yellowF*(this: QColor): cfloat {.header:headerFile, importcpp:"#.yellowF(@)".} # Public
proc blackF*(this: QColor): cfloat {.header:headerFile, importcpp:"#.blackF(@)".} # Public
# 1 default parameters!
proc getCmyk*(this: QColor, c: ptr cint, m: ptr cint, y: ptr cint, k: ptr cint, a: ptr cint) {.header:headerFile, importcpp:"#.getCmyk(@)".} # Public
proc getCmyk*(this: QColor, c: ptr cint, m: ptr cint, y: ptr cint, k: ptr cint) {.header:headerFile, importcpp:"#.getCmyk(@)".} # Public
# 1 default parameters!
proc setCmyk*(this: QColor, c: cint, m: cint, y: cint, k: cint, a: cint) {.header:headerFile, importcpp:"#.setCmyk(@)".} # Public
proc setCmyk*(this: QColor, c: cint, m: cint, y: cint, k: cint) {.header:headerFile, importcpp:"#.setCmyk(@)".} # Public
# 1 default parameters!
proc getCmykF*(this: QColor, c: ptr cfloat, m: ptr cfloat, y: ptr cfloat, k: ptr cfloat, a: ptr cfloat) {.header:headerFile, importcpp:"#.getCmykF(@)".} # Public
proc getCmykF*(this: QColor, c: ptr cfloat, m: ptr cfloat, y: ptr cfloat, k: ptr cfloat) {.header:headerFile, importcpp:"#.getCmykF(@)".} # Public
# 1 default parameters!
proc setCmykF*(this: QColor, c: cfloat, m: cfloat, y: cfloat, k: cfloat, a: cfloat) {.header:headerFile, importcpp:"#.setCmykF(@)".} # Public
proc setCmykF*(this: QColor, c: cfloat, m: cfloat, y: cfloat, k: cfloat) {.header:headerFile, importcpp:"#.setCmykF(@)".} # Public
proc hslHue*(this: QColor): cint {.header:headerFile, importcpp:"#.hslHue(@)".} # Public
proc hslSaturation*(this: QColor): cint {.header:headerFile, importcpp:"#.hslSaturation(@)".} # Public
proc lightness*(this: QColor): cint {.header:headerFile, importcpp:"#.lightness(@)".} # Public
proc hslHueF*(this: QColor): cfloat {.header:headerFile, importcpp:"#.hslHueF(@)".} # Public
proc hslSaturationF*(this: QColor): cfloat {.header:headerFile, importcpp:"#.hslSaturationF(@)".} # Public
proc lightnessF*(this: QColor): cfloat {.header:headerFile, importcpp:"#.lightnessF(@)".} # Public
# 1 default parameters!
proc getHsl*(this: QColor, h: ptr cint, s: ptr cint, l: ptr cint, a: ptr cint) {.header:headerFile, importcpp:"#.getHsl(@)".} # Public
proc getHsl*(this: QColor, h: ptr cint, s: ptr cint, l: ptr cint) {.header:headerFile, importcpp:"#.getHsl(@)".} # Public
# 1 default parameters!
proc setHsl*(this: QColor, h: cint, s: cint, l: cint, a: cint) {.header:headerFile, importcpp:"#.setHsl(@)".} # Public
proc setHsl*(this: QColor, h: cint, s: cint, l: cint) {.header:headerFile, importcpp:"#.setHsl(@)".} # Public
# 1 default parameters!
proc getHslF*(this: QColor, h: ptr cfloat, s: ptr cfloat, l: ptr cfloat, a: ptr cfloat) {.header:headerFile, importcpp:"#.getHslF(@)".} # Public
proc getHslF*(this: QColor, h: ptr cfloat, s: ptr cfloat, l: ptr cfloat) {.header:headerFile, importcpp:"#.getHslF(@)".} # Public
# 1 default parameters!
proc setHslF*(this: QColor, h: cfloat, s: cfloat, l: cfloat, a: cfloat) {.header:headerFile, importcpp:"#.setHslF(@)".} # Public
proc setHslF*(this: QColor, h: cfloat, s: cfloat, l: cfloat) {.header:headerFile, importcpp:"#.setHslF(@)".} # Public
proc toRgb*(this: QColor): QColor {.header:headerFile, importcpp:"#.toRgb(@)".} # Public
proc toHsv*(this: QColor): QColor {.header:headerFile, importcpp:"#.toHsv(@)".} # Public
proc toCmyk*(this: QColor): QColor {.header:headerFile, importcpp:"#.toCmyk(@)".} # Public
proc toHsl*(this: QColor): QColor {.header:headerFile, importcpp:"#.toHsl(@)".} # Public
proc toExtendedRgb*(this: QColor): QColor {.header:headerFile, importcpp:"#.toExtendedRgb(@)".} # Public
proc convertTo*(this: QColor, colorSpec: QColor_Spec): QColor {.header:headerFile, importcpp:"#.convertTo(@)".} # Public
# 1 default parameters!
proc static_QColor_fromRgb*(r: cint, g: cint, b: cint, a: cint): QColor {.header:headerFile, importcpp:"QColor::fromRgb(@)".} # Public static
proc static_QColor_fromRgb*(r: cint, g: cint, b: cint): QColor {.header:headerFile, importcpp:"QColor::fromRgb(@)".} # Public static
# 1 default parameters!
proc static_QColor_fromRgbF*(r: cfloat, g: cfloat, b: cfloat, a: cfloat): QColor {.header:headerFile, importcpp:"QColor::fromRgbF(@)".} # Public static
proc static_QColor_fromRgbF*(r: cfloat, g: cfloat, b: cfloat): QColor {.header:headerFile, importcpp:"QColor::fromRgbF(@)".} # Public static
# 1 default parameters!
proc static_QColor_fromRgba64*(r: cushort, g: cushort, b: cushort, a: cushort): QColor {.header:headerFile, importcpp:"QColor::fromRgba64(@)".} # Public static
proc static_QColor_fromRgba64*(r: cushort, g: cushort, b: cushort): QColor {.header:headerFile, importcpp:"QColor::fromRgba64(@)".} # Public static
proc static_QColor_fromRgba64*(rgba: QRgba64): QColor {.header:headerFile, importcpp:"QColor::fromRgba64(@)".} # Public static
# 1 default parameters!
proc static_QColor_fromHsv*(h: cint, s: cint, v: cint, a: cint): QColor {.header:headerFile, importcpp:"QColor::fromHsv(@)".} # Public static
proc static_QColor_fromHsv*(h: cint, s: cint, v: cint): QColor {.header:headerFile, importcpp:"QColor::fromHsv(@)".} # Public static
# 1 default parameters!
proc static_QColor_fromHsvF*(h: cfloat, s: cfloat, v: cfloat, a: cfloat): QColor {.header:headerFile, importcpp:"QColor::fromHsvF(@)".} # Public static
proc static_QColor_fromHsvF*(h: cfloat, s: cfloat, v: cfloat): QColor {.header:headerFile, importcpp:"QColor::fromHsvF(@)".} # Public static
# 1 default parameters!
proc static_QColor_fromCmyk*(c: cint, m: cint, y: cint, k: cint, a: cint): QColor {.header:headerFile, importcpp:"QColor::fromCmyk(@)".} # Public static
proc static_QColor_fromCmyk*(c: cint, m: cint, y: cint, k: cint): QColor {.header:headerFile, importcpp:"QColor::fromCmyk(@)".} # Public static
# 1 default parameters!
proc static_QColor_fromCmykF*(c: cfloat, m: cfloat, y: cfloat, k: cfloat, a: cfloat): QColor {.header:headerFile, importcpp:"QColor::fromCmykF(@)".} # Public static
proc static_QColor_fromCmykF*(c: cfloat, m: cfloat, y: cfloat, k: cfloat): QColor {.header:headerFile, importcpp:"QColor::fromCmykF(@)".} # Public static
# 1 default parameters!
proc static_QColor_fromHsl*(h: cint, s: cint, l: cint, a: cint): QColor {.header:headerFile, importcpp:"QColor::fromHsl(@)".} # Public static
proc static_QColor_fromHsl*(h: cint, s: cint, l: cint): QColor {.header:headerFile, importcpp:"QColor::fromHsl(@)".} # Public static
# 1 default parameters!
proc static_QColor_fromHslF*(h: cfloat, s: cfloat, l: cfloat, a: cfloat): QColor {.header:headerFile, importcpp:"QColor::fromHslF(@)".} # Public static
proc static_QColor_fromHslF*(h: cfloat, s: cfloat, l: cfloat): QColor {.header:headerFile, importcpp:"QColor::fromHslF(@)".} # Public static
# 1 default parameters!
proc lighter*(this: QColor, f: cint): QColor {.header:headerFile, importcpp:"#.lighter(@)".} # Public
proc lighter*(this: QColor): QColor {.header:headerFile, importcpp:"#.lighter(@)".} # Public
# 1 default parameters!
proc darker*(this: QColor, f: cint): QColor {.header:headerFile, importcpp:"#.darker(@)".} # Public
proc darker*(this: QColor): QColor {.header:headerFile, importcpp:"#.darker(@)".} # Public
proc `!=`*(this: QColor, c: QColor): bool {.header:headerFile, importcpp:"#.operator!=(@)".} # Public
proc static_QColor_isValidColor*(name: QString): bool {.header:headerFile, importcpp:"QColor::isValidColor(@)".} # Public static
proc static_QColor_isValidColorName*(arg_0: QAnyStringView): bool {.header:headerFile, importcpp:"QColor::isValidColorName(@)".} # Public static

export qstringlist
export qstring
export qnamespace
export qanystringview
export qrgba64
