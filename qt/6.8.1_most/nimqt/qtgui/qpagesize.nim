const headerFile* = "QtGui/qpagesize.h"

type
    # Enums found in the C++ code
    # Global
    QPageSize_PageSizeId* {.header:headerFile,importcpp:"QPageSize::PageSizeId".} = enum Letter = 0, Legal = 0x1, Executive = 0x2, A0 = 0x3, 
        A1 = 0x4, A2 = 0x5, A3 = 0x6, A4 = 0x7, A5 = 0x8, 
        A6 = 0x9, A7 = 0xa, A8 = 0xb, A9 = 0xc, A10 = 0xd, 
        B0 = 0xe, B1 = 0xf, B2 = 0x10, B3 = 0x11, B4 = 0x12, 
        B5 = 0x13, B6 = 0x14, B7 = 0x15, B8 = 0x16, B9 = 0x17, 
        B10 = 0x18, C5E = 0x19, Comm10E = 0x1a, DLE = 0x1b, Folio = 0x1c, 
        Ledger = 0x1d, Tabloid = 0x1e, Custom = 0x1f, A3Extra = 0x20, A4Extra = 0x21, 
        A4Plus = 0x22, A4Small = 0x23, A5Extra = 0x24, B5Extra = 0x25, JisB0 = 0x26, 
        JisB1 = 0x27, JisB2 = 0x28, JisB3 = 0x29, JisB4 = 0x2a, JisB5 = 0x2b, 
        JisB6 = 0x2c, JisB7 = 0x2d, JisB8 = 0x2e, JisB9 = 0x2f, JisB10 = 0x30, 
        AnsiC = 0x31, AnsiD = 0x32, AnsiE = 0x33, LegalExtra = 0x34, LetterExtra = 0x35, 
        LetterPlus = 0x36, LetterSmall = 0x37, TabloidExtra = 0x38, ArchA = 0x39, ArchB = 0x3a, 
        ArchC = 0x3b, ArchD = 0x3c, ArchE = 0x3d, Imperial7x9 = 0x3e, Imperial8x10 = 0x3f, 
        Imperial9x11 = 0x40, Imperial9x12 = 0x41, Imperial10x11 = 0x42, Imperial10x13 = 0x43, Imperial10x14 = 0x44, 
        Imperial12x11 = 0x45, Imperial15x11 = 0x46, ExecutiveStandard = 0x47, Note = 0x48, Quarto = 0x49, 
        Statement = 0x4a, SuperA = 0x4b, SuperB = 0x4c, Postcard = 0x4d, DoublePostcard = 0x4e, 
        Prc16K = 0x4f, Prc32K = 0x50, Prc32KBig = 0x51, FanFoldUS = 0x52, FanFoldGerman = 0x53, 
        FanFoldGermanLegal = 0x54, EnvelopeB4 = 0x55, EnvelopeB5 = 0x56, EnvelopeB6 = 0x57, EnvelopeC0 = 0x58, 
        EnvelopeC1 = 0x59, EnvelopeC2 = 0x5a, EnvelopeC3 = 0x5b, EnvelopeC4 = 0x5c, EnvelopeC6 = 0x5d, 
        EnvelopeC65 = 0x5e, EnvelopeC7 = 0x5f, Envelope9 = 0x60, Envelope11 = 0x61, Envelope12 = 0x62, 
        Envelope14 = 0x63, EnvelopeMonarch = 0x64, EnvelopePersonal = 0x65, EnvelopeChou3 = 0x66, EnvelopeChou4 = 0x67, 
        EnvelopeInvite = 0x68, EnvelopeItalian = 0x69, EnvelopeKaku2 = 0x6a, EnvelopeKaku3 = 0x6b, EnvelopePrc1 = 0x6c, 
        EnvelopePrc2 = 0x6d, EnvelopePrc3 = 0x6e, EnvelopePrc4 = 0x6f, EnvelopePrc5 = 0x70, EnvelopePrc6 = 0x71, 
        EnvelopePrc7 = 0x72, EnvelopePrc8 = 0x73, EnvelopePrc9 = 0x74, EnvelopePrc10 = 0x75, EnvelopeYou4 = 0x76
    QPageSize_Unit* {.header:headerFile,importcpp:"QPageSize::Unit".} = enum Millimeter = 0, Point = 0x1, Inch = 0x2, Pica = 0x3, 
        Didot = 0x4, Cicero = 0x5
    QPageSize_SizeMatchPolicy* {.header:headerFile,importcpp:"QPageSize::SizeMatchPolicy".} = enum FuzzyMatch = 0, FuzzyOrientationMatch = 0x1, ExactMatch = 0x2

type
    # Classes found in the C++ code
    QPageSize* {.header:headerFile,importcpp:"QPageSize" ,pure,inheritable.} = object

# Consts
const
    # Global
    QPageSize_PageSizeIdAnsiA* = 0 # from anonymous enum Letter
    QPageSize_PageSizeIdEnvelopeC5* = 25 # from anonymous enum C5E
    QPageSize_PageSizeIdEnvelope10* = 26 # from anonymous enum Comm10E
    QPageSize_PageSizeIdEnvelopeDL* = 27 # from anonymous enum DLE
    QPageSize_PageSizeIdAnsiB* = 29 # from anonymous enum Ledger
    QPageSize_PageSizeIdLastPageSize* = 118 # from anonymous enum EnvelopeYou4

# Stuff for class QPageSize

# Public constructors for QPageSize
proc newQPageSize*(): QPageSize {. header:headerFile, importcpp:"QPageSize(@)", constructor .} #
proc newQPageSize*(pageSizeId: QPageSize_PageSizeId): QPageSize {. header:headerFile, importcpp:"QPageSize(@)", constructor .} #
import nimqt/qtcore/qstring
import nimqt/qtcore/qsize
# 1 default parameters!
proc newQPageSize*(pointSize: QSize, name: QString, matchPolicy: QPageSize_SizeMatchPolicy): QPageSize {. header:headerFile, importcpp:"QPageSize(@)", constructor .} #
proc newQPageSize*(pointSize: QSize, name: QString): QPageSize {. header:headerFile, importcpp:"QPageSize(@)", constructor .} #
# 1 default parameters!
proc newQPageSize*(size: QSizeF, units: QPageSize_Unit, name: QString, matchPolicy: QPageSize_SizeMatchPolicy): QPageSize {. header:headerFile, importcpp:"QPageSize(@)", constructor .} #
proc newQPageSize*(size: QSizeF, units: QPageSize_Unit, name: QString): QPageSize {. header:headerFile, importcpp:"QPageSize(@)", constructor .} #
proc newQPageSize*(other: QPageSize): QPageSize {. header:headerFile, importcpp:"QPageSize(@)", constructor .} #

# Public methods for QPageSize
proc swap*(this: QPageSize, other: QPageSize) {.header:headerFile, importcpp:"#.swap(@)".} # Public
proc isEquivalentTo*(this: QPageSize, other: QPageSize): bool {.header:headerFile, importcpp:"#.isEquivalentTo(@)".} # Public
proc isValid*(this: QPageSize): bool {.header:headerFile, importcpp:"#.isValid(@)".} # Public
proc key*(this: QPageSize): QString {.header:headerFile, importcpp:"#.key(@)".} # Public
proc name*(this: QPageSize): QString {.header:headerFile, importcpp:"#.name(@)".} # Public
proc id*(this: QPageSize): QPageSize_PageSizeId {.header:headerFile, importcpp:"#.id(@)".} # Public
proc windowsId*(this: QPageSize): cint {.header:headerFile, importcpp:"#.windowsId(@)".} # Public
proc definitionSize*(this: QPageSize): QSizeF {.header:headerFile, importcpp:"#.definitionSize(@)".} # Public
proc definitionUnits*(this: QPageSize): QPageSize_Unit {.header:headerFile, importcpp:"#.definitionUnits(@)".} # Public
proc size*(this: QPageSize, units: QPageSize_Unit): QSizeF {.header:headerFile, importcpp:"#.size(@)".} # Public
proc sizePoints*(this: QPageSize): QSize {.header:headerFile, importcpp:"#.sizePoints(@)".} # Public
proc sizePixels*(this: QPageSize, resolution: cint): QSize {.header:headerFile, importcpp:"#.sizePixels(@)".} # Public
proc rect*(this: QPageSize): cint {.header:headerFile, importcpp:"#.rect(@)".} # Public
proc rectPoints*(this: QPageSize): cint {.header:headerFile, importcpp:"#.rectPoints(@)".} # Public
proc rectPixels*(this: QPageSize): cint {.header:headerFile, importcpp:"#.rectPixels(@)".} # Public
proc static_QPageSize_key*(pageSizeId: QPageSize_PageSizeId): QString {.header:headerFile, importcpp:"QPageSize::key(@)".} # Public static
proc static_QPageSize_name*(pageSizeId: QPageSize_PageSizeId): QString {.header:headerFile, importcpp:"QPageSize::name(@)".} # Public static
proc static_QPageSize_id*(pointSize: QSize, matchPolicy: QPageSize_SizeMatchPolicy): QPageSize_PageSizeId {.header:headerFile, importcpp:"QPageSize::id(@)".} # Public static
proc static_QPageSize_id*(size: QSizeF, units: QPageSize_Unit, matchPolicy: QPageSize_SizeMatchPolicy): QPageSize_PageSizeId {.header:headerFile, importcpp:"QPageSize::id(@)".} # Public static
proc static_QPageSize_id*(windowsId: cint): QPageSize_PageSizeId {.header:headerFile, importcpp:"QPageSize::id(@)".} # Public static
proc static_QPageSize_windowsId*(pageSizeId: QPageSize_PageSizeId): cint {.header:headerFile, importcpp:"QPageSize::windowsId(@)".} # Public static
proc static_QPageSize_definitionSize*(pageSizeId: QPageSize_PageSizeId): QSizeF {.header:headerFile, importcpp:"QPageSize::definitionSize(@)".} # Public static
proc static_QPageSize_definitionUnits*(pageSizeId: QPageSize_PageSizeId): QPageSize_Unit {.header:headerFile, importcpp:"QPageSize::definitionUnits(@)".} # Public static
proc static_QPageSize_size*(pageSizeId: QPageSize_PageSizeId, units: QPageSize_Unit): QSizeF {.header:headerFile, importcpp:"QPageSize::size(@)".} # Public static
proc static_QPageSize_sizePoints*(pageSizeId: QPageSize_PageSizeId): QSize {.header:headerFile, importcpp:"QPageSize::sizePoints(@)".} # Public static
proc static_QPageSize_sizePixels*(pageSizeId: QPageSize_PageSizeId, resolution: cint): QSize {.header:headerFile, importcpp:"QPageSize::sizePixels(@)".} # Public static

export qstring
export qsize
