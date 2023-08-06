const headerFile* = "QtGui/qrgba64.h"

type
    # Classes found in the C++ code
    QRgba64* {.header:headerFile,importcpp:"QRgba64" ,pure,inheritable.} = object

# Stuff for class QRgba64

# Public constructors for QRgba64
proc newQRgba64*(): QRgba64 {. header:headerFile, importcpp:"QRgba64(@)", constructor .} #

# Public methods for QRgba64
proc static_QRgba64_fromRgba64*(c: culonglong): QRgba64 {.header:headerFile, importcpp:"QRgba64::fromRgba64(@)".} # Public static
proc static_QRgba64_fromRgba64*(red: cushort, green: cushort, blue: cushort, alpha: cushort): QRgba64 {.header:headerFile, importcpp:"QRgba64::fromRgba64(@)".} # Public static
proc static_QRgba64_fromRgba*(red: uint8, green: uint8, blue: uint8, alpha: uint8): QRgba64 {.header:headerFile, importcpp:"QRgba64::fromRgba(@)".} # Public static
proc static_QRgba64_fromArgb32*(rgb: cuint): QRgba64 {.header:headerFile, importcpp:"QRgba64::fromArgb32(@)".} # Public static
proc isOpaque*(this: QRgba64): bool {.header:headerFile, importcpp:"#.isOpaque(@)".} # Public
proc isTransparent*(this: QRgba64): bool {.header:headerFile, importcpp:"#.isTransparent(@)".} # Public
proc red*(this: QRgba64): cushort {.header:headerFile, importcpp:"#.red(@)".} # Public
proc green*(this: QRgba64): cushort {.header:headerFile, importcpp:"#.green(@)".} # Public
proc blue*(this: QRgba64): cushort {.header:headerFile, importcpp:"#.blue(@)".} # Public
proc alpha*(this: QRgba64): cushort {.header:headerFile, importcpp:"#.alpha(@)".} # Public
proc setRed*(this: QRgba64, red: cushort) {.header:headerFile, importcpp:"#.setRed(@)".} # Public
proc setGreen*(this: QRgba64, green: cushort) {.header:headerFile, importcpp:"#.setGreen(@)".} # Public
proc setBlue*(this: QRgba64, blue: cushort) {.header:headerFile, importcpp:"#.setBlue(@)".} # Public
proc setAlpha*(this: QRgba64, alpha: cushort) {.header:headerFile, importcpp:"#.setAlpha(@)".} # Public
proc red8*(this: QRgba64): uint8 {.header:headerFile, importcpp:"#.red8(@)".} # Public
proc green8*(this: QRgba64): uint8 {.header:headerFile, importcpp:"#.green8(@)".} # Public
proc blue8*(this: QRgba64): uint8 {.header:headerFile, importcpp:"#.blue8(@)".} # Public
proc alpha8*(this: QRgba64): uint8 {.header:headerFile, importcpp:"#.alpha8(@)".} # Public
proc toArgb32*(this: QRgba64): cuint {.header:headerFile, importcpp:"#.toArgb32(@)".} # Public
proc toRgb16*(this: QRgba64): cushort {.header:headerFile, importcpp:"#.toRgb16(@)".} # Public
proc premultiplied*(this: QRgba64): QRgba64 {.header:headerFile, importcpp:"#.premultiplied(@)".} # Public
proc unpremultiplied*(this: QRgba64): QRgba64 {.header:headerFile, importcpp:"#.unpremultiplied(@)".} # Public

