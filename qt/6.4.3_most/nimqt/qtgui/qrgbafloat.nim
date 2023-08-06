const headerFile* = "QtGui/qrgbafloat.h"

type
    # Classes found in the C++ code
    QRgbaFloat*[F] {.header:headerFile,importcpp:"QRgbaFloat" ,pure,inheritable.} = object


type
    # typedefs found in the C++ code
    QRgbaFloat16 * = QRgbaFloat[cfloat]
    QRgbaFloat32 * = QRgbaFloat[cfloat]
    QRgbaFloat_FastType * = cfloat

# Stuff for class QRgbaFloat

# Public methods for QRgbaFloat
proc static_QRgbaFloat_fromRgba64*[F](red: cushort, green: cushort, blue: cushort, alpha: cushort): QRgbaFloat[F] {.header:headerFile, importcpp:"QRgbaFloat::fromRgba64(@)".} # Public static
proc static_QRgbaFloat_fromRgba*[F](red: uint8, green: uint8, blue: uint8, alpha: uint8): QRgbaFloat[F] {.header:headerFile, importcpp:"QRgbaFloat::fromRgba(@)".} # Public static
proc static_QRgbaFloat_fromArgb32*[F](rgb: cuint): QRgbaFloat[F] {.header:headerFile, importcpp:"QRgbaFloat::fromArgb32(@)".} # Public static
proc isOpaque*[F](this: QRgbaFloat[F]): bool {.header:headerFile, importcpp:"#.isOpaque(@)".} # Public
proc isTransparent*[F](this: QRgbaFloat[F]): bool {.header:headerFile, importcpp:"#.isTransparent(@)".} # Public
proc red*[F](this: QRgbaFloat[F]): cfloat {.header:headerFile, importcpp:"#.red(@)".} # Public
proc green*[F](this: QRgbaFloat[F]): cfloat {.header:headerFile, importcpp:"#.green(@)".} # Public
proc blue*[F](this: QRgbaFloat[F]): cfloat {.header:headerFile, importcpp:"#.blue(@)".} # Public
proc alpha*[F](this: QRgbaFloat[F]): cfloat {.header:headerFile, importcpp:"#.alpha(@)".} # Public
proc setRed*[F](this: QRgbaFloat[F], red: cfloat) {.header:headerFile, importcpp:"#.setRed(@)".} # Public
proc setGreen*[F](this: QRgbaFloat[F], green: cfloat) {.header:headerFile, importcpp:"#.setGreen(@)".} # Public
proc setBlue*[F](this: QRgbaFloat[F], blue: cfloat) {.header:headerFile, importcpp:"#.setBlue(@)".} # Public
proc setAlpha*[F](this: QRgbaFloat[F], alpha: cfloat) {.header:headerFile, importcpp:"#.setAlpha(@)".} # Public
proc redNormalized*[F](this: QRgbaFloat[F]): cfloat {.header:headerFile, importcpp:"#.redNormalized(@)".} # Public
proc greenNormalized*[F](this: QRgbaFloat[F]): cfloat {.header:headerFile, importcpp:"#.greenNormalized(@)".} # Public
proc blueNormalized*[F](this: QRgbaFloat[F]): cfloat {.header:headerFile, importcpp:"#.blueNormalized(@)".} # Public
proc alphaNormalized*[F](this: QRgbaFloat[F]): cfloat {.header:headerFile, importcpp:"#.alphaNormalized(@)".} # Public
proc red8*[F](this: QRgbaFloat[F]): uint8 {.header:headerFile, importcpp:"#.red8(@)".} # Public
proc green8*[F](this: QRgbaFloat[F]): uint8 {.header:headerFile, importcpp:"#.green8(@)".} # Public
proc blue8*[F](this: QRgbaFloat[F]): uint8 {.header:headerFile, importcpp:"#.blue8(@)".} # Public
proc alpha8*[F](this: QRgbaFloat[F]): uint8 {.header:headerFile, importcpp:"#.alpha8(@)".} # Public
proc toArgb32*[F](this: QRgbaFloat[F]): cuint {.header:headerFile, importcpp:"#.toArgb32(@)".} # Public
proc red16*[F](this: QRgbaFloat[F]): cushort {.header:headerFile, importcpp:"#.red16(@)".} # Public
proc green16*[F](this: QRgbaFloat[F]): cushort {.header:headerFile, importcpp:"#.green16(@)".} # Public
proc blue16*[F](this: QRgbaFloat[F]): cushort {.header:headerFile, importcpp:"#.blue16(@)".} # Public
proc alpha16*[F](this: QRgbaFloat[F]): cushort {.header:headerFile, importcpp:"#.alpha16(@)".} # Public
proc premultiplied*[F](this: QRgbaFloat[F]): QRgbaFloat[F] {.header:headerFile, importcpp:"#.premultiplied(@)".} # Public
proc unpremultiplied*[F](this: QRgbaFloat[F]): QRgbaFloat[F] {.header:headerFile, importcpp:"#.unpremultiplied(@)".} # Public
proc `!=`*[F](this: QRgbaFloat[F], f: QRgbaFloat[F]): bool {.header:headerFile, importcpp:"#.operator!=(@)".} # Public

