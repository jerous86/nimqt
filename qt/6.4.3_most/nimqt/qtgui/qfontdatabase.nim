const headerFile* = "QtGui/qfontdatabase.h"

type
    # Enums found in the C++ code
    # Global
    QFontDatabase_WritingSystem* {.header:headerFile,importcpp:"QFontDatabase::WritingSystem".} = enum Any = 0, Latin = 0x1, Greek = 0x2, Cyrillic = 0x3, 
        Armenian = 0x4, Hebrew = 0x5, Arabic = 0x6, Syriac = 0x7, Thaana = 0x8, 
        Devanagari = 0x9, Bengali = 0xa, Gurmukhi = 0xb, Gujarati = 0xc, Oriya = 0xd, 
        Tamil = 0xe, Telugu = 0xf, Kannada = 0x10, Malayalam = 0x11, Sinhala = 0x12, 
        Thai = 0x13, Lao = 0x14, Tibetan = 0x15, Myanmar = 0x16, Georgian = 0x17, 
        Khmer = 0x18, SimplifiedChinese = 0x19, TraditionalChinese = 0x1a, Japanese = 0x1b, Korean = 0x1c, 
        Vietnamese = 0x1d, Symbol = 0x1e, Ogham = 0x1f, Runic = 0x20, Nko = 0x21, 
        WritingSystemsCount = 0x22
    QFontDatabase_SystemFont* {.header:headerFile,importcpp:"QFontDatabase::SystemFont".} = enum GeneralFont = 0, FixedFont = 0x1, TitleFont = 0x2, SmallestReadableFont = 0x3

type
    # Classes found in the C++ code
    QFontDatabase* {.header:headerFile,importcpp:"QFontDatabase" ,pure,inheritable.} = object

# Consts
const
    # Global
    QFontDatabase_WritingSystemOther* = 30 # from anonymous enum Symbol

# Stuff for class QFontDatabase

# Public constructors for QFontDatabase
proc newQFontDatabase*(): QFontDatabase {. header:headerFile, importcpp:"QFontDatabase(@)", constructor .} #

# Public methods for QFontDatabase
proc qt_check_for_QGADGET_macro*(this: QFontDatabase) {.header:headerFile, importcpp:"#.qt_check_for_QGADGET_macro(@)".} # Public
import nimqt/qtcore/qlist
proc static_QFontDatabase_standardSizes*(): QList[cint] {.header:headerFile, importcpp:"QFontDatabase::standardSizes(@)".} # Public static
proc static_QFontDatabase_writingSystems*(): QList[QFontDatabase_WritingSystem] {.header:headerFile, importcpp:"QFontDatabase::writingSystems(@)".} # Public static
import nimqt/qtcore/qstring
proc static_QFontDatabase_writingSystems*(family: QString): QList[QFontDatabase_WritingSystem] {.header:headerFile, importcpp:"QFontDatabase::writingSystems(@)".} # Public static
import nimqt/qtcore/qstringlist
proc static_QFontDatabase_families*(writingSystem: QFontDatabase_WritingSystem): QStringList {.header:headerFile, importcpp:"QFontDatabase::families(@)".} # Public static
proc static_QFontDatabase_styles*(family: QString): QStringList {.header:headerFile, importcpp:"QFontDatabase::styles(@)".} # Public static
# 1 default parameters!
proc static_QFontDatabase_pointSizes*(family: QString, style: QString): QList[cint] {.header:headerFile, importcpp:"QFontDatabase::pointSizes(@)".} # Public static
proc static_QFontDatabase_pointSizes*(family: QString): QList[cint] {.header:headerFile, importcpp:"QFontDatabase::pointSizes(@)".} # Public static
proc static_QFontDatabase_smoothSizes*(family: QString, style: QString): QList[cint] {.header:headerFile, importcpp:"QFontDatabase::smoothSizes(@)".} # Public static
import nimqt/qtgui/qfont
proc static_QFontDatabase_styleString*(font: QFont): QString {.header:headerFile, importcpp:"QFontDatabase::styleString(@)".} # Public static
import nimqt/qtgui/qfontinfo
proc static_QFontDatabase_styleString*(fontInfo: QFontInfo): QString {.header:headerFile, importcpp:"QFontDatabase::styleString(@)".} # Public static
proc static_QFontDatabase_font*(family: QString, style: QString, pointSize: cint): QFont {.header:headerFile, importcpp:"QFontDatabase::font(@)".} # Public static
# 1 default parameters!
proc static_QFontDatabase_isBitmapScalable*(family: QString, style: QString): bool {.header:headerFile, importcpp:"QFontDatabase::isBitmapScalable(@)".} # Public static
proc static_QFontDatabase_isBitmapScalable*(family: QString): bool {.header:headerFile, importcpp:"QFontDatabase::isBitmapScalable(@)".} # Public static
# 1 default parameters!
proc static_QFontDatabase_isSmoothlyScalable*(family: QString, style: QString): bool {.header:headerFile, importcpp:"QFontDatabase::isSmoothlyScalable(@)".} # Public static
proc static_QFontDatabase_isSmoothlyScalable*(family: QString): bool {.header:headerFile, importcpp:"QFontDatabase::isSmoothlyScalable(@)".} # Public static
# 1 default parameters!
proc static_QFontDatabase_isScalable*(family: QString, style: QString): bool {.header:headerFile, importcpp:"QFontDatabase::isScalable(@)".} # Public static
proc static_QFontDatabase_isScalable*(family: QString): bool {.header:headerFile, importcpp:"QFontDatabase::isScalable(@)".} # Public static
# 1 default parameters!
proc static_QFontDatabase_isFixedPitch*(family: QString, style: QString): bool {.header:headerFile, importcpp:"QFontDatabase::isFixedPitch(@)".} # Public static
proc static_QFontDatabase_isFixedPitch*(family: QString): bool {.header:headerFile, importcpp:"QFontDatabase::isFixedPitch(@)".} # Public static
proc static_QFontDatabase_italic*(family: QString, style: QString): bool {.header:headerFile, importcpp:"QFontDatabase::italic(@)".} # Public static
proc static_QFontDatabase_bold*(family: QString, style: QString): bool {.header:headerFile, importcpp:"QFontDatabase::bold(@)".} # Public static
proc static_QFontDatabase_weight*(family: QString, style: QString): cint {.header:headerFile, importcpp:"QFontDatabase::weight(@)".} # Public static
proc static_QFontDatabase_hasFamily*(family: QString): bool {.header:headerFile, importcpp:"QFontDatabase::hasFamily(@)".} # Public static
proc static_QFontDatabase_writingSystemName*(writingSystem: QFontDatabase_WritingSystem): QString {.header:headerFile, importcpp:"QFontDatabase::writingSystemName(@)".} # Public static
proc static_QFontDatabase_writingSystemSample*(writingSystem: QFontDatabase_WritingSystem): QString {.header:headerFile, importcpp:"QFontDatabase::writingSystemSample(@)".} # Public static
proc static_QFontDatabase_addApplicationFont*(fileName: QString): cint {.header:headerFile, importcpp:"QFontDatabase::addApplicationFont(@)".} # Public static
import nimqt/qtcore/qbytearray
proc static_QFontDatabase_addApplicationFontFromData*(fontData: QByteArray): cint {.header:headerFile, importcpp:"QFontDatabase::addApplicationFontFromData(@)".} # Public static
proc static_QFontDatabase_applicationFontFamilies*(id: cint): QStringList {.header:headerFile, importcpp:"QFontDatabase::applicationFontFamilies(@)".} # Public static
proc static_QFontDatabase_removeApplicationFont*(id: cint): bool {.header:headerFile, importcpp:"QFontDatabase::removeApplicationFont(@)".} # Public static
proc static_QFontDatabase_removeAllApplicationFonts*(): bool {.header:headerFile, importcpp:"QFontDatabase::removeAllApplicationFonts(@)".} # Public static
proc static_QFontDatabase_systemFont*(`type`: QFontDatabase_SystemFont): QFont {.header:headerFile, importcpp:"QFontDatabase::systemFont(@)".} # Public static

export qfontinfo
export qfont
export qstringlist
export qstring
export qbytearray
export qlist
