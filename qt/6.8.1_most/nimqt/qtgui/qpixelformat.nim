const headerFile* = "QtGui/qpixelformat.h"

type
    # Enums found in the C++ code
    # Global
    QPixelFormat_ColorModel* {.header:headerFile,importcpp:"QPixelFormat::ColorModel".} = enum RGB = 0, BGR = 0x1, Indexed = 0x2, Grayscale = 0x3, 
        CMYK = 0x4, HSL = 0x5, HSV = 0x6, YUV = 0x7, Alpha = 0x8
    QPixelFormat_AlphaUsage* {.header:headerFile,importcpp:"QPixelFormat::AlphaUsage".} = enum UsesAlpha = 0, IgnoresAlpha = 0x1
    QPixelFormat_AlphaPosition* {.header:headerFile,importcpp:"QPixelFormat::AlphaPosition".} = enum AtBeginning = 0, AtEnd = 0x1
    QPixelFormat_AlphaPremultiplied* {.header:headerFile,importcpp:"QPixelFormat::AlphaPremultiplied".} = enum NotPremultiplied = 0, Premultiplied = 0x1
    QPixelFormat_TypeInterpretation* {.header:headerFile,importcpp:"QPixelFormat::TypeInterpretation".} = enum UnsignedInteger = 0, UnsignedShort = 0x1, UnsignedByte = 0x2, FloatingPoint = 0x3
    QPixelFormat_YUVLayout* {.header:headerFile,importcpp:"QPixelFormat::YUVLayout".} = enum YUV444 = 0, YUV422 = 0x1, YUV411 = 0x2, YUV420P = 0x3, 
        YUV420SP = 0x4, YV12 = 0x5, UYVY = 0x6, YUYV = 0x7, NV12 = 0x8, 
        NV21 = 0x9, IMC1 = 0xa, IMC2 = 0xb, IMC3 = 0xc, IMC4 = 0xd, 
        Y8 = 0xe, Y16 = 0xf
    QPixelFormat_ByteOrder* {.header:headerFile,importcpp:"QPixelFormat::ByteOrder".} = enum LittleEndian = 0, BigEndian = 0x1, CurrentSystemEndian = 0x2

type
    # Classes found in the C++ code
    QPixelFormat* {.header:headerFile,importcpp:"QPixelFormat" ,pure,inheritable.} = object

# Stuff for class QPixelFormat

# Public constructors for QPixelFormat
proc newQPixelFormat*(): QPixelFormat {. header:headerFile, importcpp:"QPixelFormat(@)", constructor .} #
# 1 default parameters!
proc newQPixelFormat*(colorModel: QPixelFormat_ColorModel, firstSize: char, secondSize: char, thirdSize: char, fourthSize: char, fifthSize: char, alphaSize: char, alphaUsage: QPixelFormat_AlphaUsage, alphaPosition: QPixelFormat_AlphaPosition, premultiplied: QPixelFormat_AlphaPremultiplied, typeInterpretation: QPixelFormat_TypeInterpretation, byteOrder: QPixelFormat_ByteOrder, subEnum: char): QPixelFormat {. header:headerFile, importcpp:"QPixelFormat(@)", constructor .} #
proc newQPixelFormat*(colorModel: QPixelFormat_ColorModel, firstSize: char, secondSize: char, thirdSize: char, fourthSize: char, fifthSize: char, alphaSize: char, alphaUsage: QPixelFormat_AlphaUsage, alphaPosition: QPixelFormat_AlphaPosition, premultiplied: QPixelFormat_AlphaPremultiplied, typeInterpretation: QPixelFormat_TypeInterpretation, byteOrder: QPixelFormat_ByteOrder): QPixelFormat {. header:headerFile, importcpp:"QPixelFormat(@)", constructor .} #

# Public methods for QPixelFormat
proc colorModel*(this: QPixelFormat): QPixelFormat_ColorModel {.header:headerFile, importcpp:"#.colorModel(@)".} # Public
proc channelCount*(this: QPixelFormat): char {.header:headerFile, importcpp:"#.channelCount(@)".} # Public
proc redSize*(this: QPixelFormat): char {.header:headerFile, importcpp:"#.redSize(@)".} # Public
proc greenSize*(this: QPixelFormat): char {.header:headerFile, importcpp:"#.greenSize(@)".} # Public
proc blueSize*(this: QPixelFormat): char {.header:headerFile, importcpp:"#.blueSize(@)".} # Public
proc cyanSize*(this: QPixelFormat): char {.header:headerFile, importcpp:"#.cyanSize(@)".} # Public
proc magentaSize*(this: QPixelFormat): char {.header:headerFile, importcpp:"#.magentaSize(@)".} # Public
proc yellowSize*(this: QPixelFormat): char {.header:headerFile, importcpp:"#.yellowSize(@)".} # Public
proc blackSize*(this: QPixelFormat): char {.header:headerFile, importcpp:"#.blackSize(@)".} # Public
proc hueSize*(this: QPixelFormat): char {.header:headerFile, importcpp:"#.hueSize(@)".} # Public
proc saturationSize*(this: QPixelFormat): char {.header:headerFile, importcpp:"#.saturationSize(@)".} # Public
proc lightnessSize*(this: QPixelFormat): char {.header:headerFile, importcpp:"#.lightnessSize(@)".} # Public
proc brightnessSize*(this: QPixelFormat): char {.header:headerFile, importcpp:"#.brightnessSize(@)".} # Public
proc alphaSize*(this: QPixelFormat): char {.header:headerFile, importcpp:"#.alphaSize(@)".} # Public
proc bitsPerPixel*(this: QPixelFormat): char {.header:headerFile, importcpp:"#.bitsPerPixel(@)".} # Public
proc alphaUsage*(this: QPixelFormat): QPixelFormat_AlphaUsage {.header:headerFile, importcpp:"#.alphaUsage(@)".} # Public
proc alphaPosition*(this: QPixelFormat): QPixelFormat_AlphaPosition {.header:headerFile, importcpp:"#.alphaPosition(@)".} # Public
proc premultiplied*(this: QPixelFormat): QPixelFormat_AlphaPremultiplied {.header:headerFile, importcpp:"#.premultiplied(@)".} # Public
proc typeInterpretation*(this: QPixelFormat): QPixelFormat_TypeInterpretation {.header:headerFile, importcpp:"#.typeInterpretation(@)".} # Public
proc byteOrder*(this: QPixelFormat): QPixelFormat_ByteOrder {.header:headerFile, importcpp:"#.byteOrder(@)".} # Public
proc yuvLayout*(this: QPixelFormat): QPixelFormat_YUVLayout {.header:headerFile, importcpp:"#.yuvLayout(@)".} # Public
proc subEnum*(this: QPixelFormat): char {.header:headerFile, importcpp:"#.subEnum(@)".} # Public

