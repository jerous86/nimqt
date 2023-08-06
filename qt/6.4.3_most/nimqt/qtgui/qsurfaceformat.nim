const headerFile* = "QtGui/qsurfaceformat.h"

type
    # Enums found in the C++ code
    # Global
    QSurfaceFormat_FormatOption* {.header:headerFile,importcpp:"QSurfaceFormat::FormatOption".} = enum StereoBuffers = 0x1, DebugContext = 0x2, DeprecatedFunctions = 0x4, ResetNotification = 0x8, 
        ProtectedContent = 0x10
    QSurfaceFormat_SwapBehavior* {.header:headerFile,importcpp:"QSurfaceFormat::SwapBehavior".} = enum DefaultSwapBehavior = 0, SingleBuffer = 0x1, DoubleBuffer = 0x2, TripleBuffer = 0x3
    QSurfaceFormat_RenderableType* {.header:headerFile,importcpp:"QSurfaceFormat::RenderableType".} = enum DefaultRenderableType = 0, OpenGL = 0x1, OpenGLES = 0x2, OpenVG = 0x4
    QSurfaceFormat_OpenGLContextProfile* {.header:headerFile,importcpp:"QSurfaceFormat::OpenGLContextProfile".} = enum NoProfile = 0, CoreProfile = 0x1, CompatibilityProfile = 0x2
    QSurfaceFormat_ColorSpace* {.header:headerFile,importcpp:"QSurfaceFormat::ColorSpace".} = enum DefaultColorSpace = 0, sRGBColorSpace = 0x1

type
    # Classes found in the C++ code
    QSurfaceFormat* {.header:headerFile,importcpp:"QSurfaceFormat" ,pure,inheritable.} = object
import nimqt/qtcore/qflags


type
    # typedefs found in the C++ code
    QSurfaceFormat_FormatOptions * = QFlags[QSurfaceFormat_FormatOption]

# Stuff for class QSurfaceFormat

# Public constructors for QSurfaceFormat
proc newQSurfaceFormat*(): QSurfaceFormat {. header:headerFile, importcpp:"QSurfaceFormat(@)", constructor .} #
proc newQSurfaceFormat*(options: QFlags[QSurfaceFormat_FormatOption]): QSurfaceFormat {. header:headerFile, importcpp:"QSurfaceFormat(@)", constructor .} #
proc newQSurfaceFormat*(other: QSurfaceFormat): QSurfaceFormat {. header:headerFile, importcpp:"QSurfaceFormat(@)", constructor .} #

# Public methods for QSurfaceFormat
proc qt_check_for_QGADGET_macro*(this: QSurfaceFormat) {.header:headerFile, importcpp:"#.qt_check_for_QGADGET_macro(@)".} # Public
proc setDepthBufferSize*(this: QSurfaceFormat, size: cint) {.header:headerFile, importcpp:"#.setDepthBufferSize(@)".} # Public
proc depthBufferSize*(this: QSurfaceFormat): cint {.header:headerFile, importcpp:"#.depthBufferSize(@)".} # Public
proc setStencilBufferSize*(this: QSurfaceFormat, size: cint) {.header:headerFile, importcpp:"#.setStencilBufferSize(@)".} # Public
proc stencilBufferSize*(this: QSurfaceFormat): cint {.header:headerFile, importcpp:"#.stencilBufferSize(@)".} # Public
proc setRedBufferSize*(this: QSurfaceFormat, size: cint) {.header:headerFile, importcpp:"#.setRedBufferSize(@)".} # Public
proc redBufferSize*(this: QSurfaceFormat): cint {.header:headerFile, importcpp:"#.redBufferSize(@)".} # Public
proc setGreenBufferSize*(this: QSurfaceFormat, size: cint) {.header:headerFile, importcpp:"#.setGreenBufferSize(@)".} # Public
proc greenBufferSize*(this: QSurfaceFormat): cint {.header:headerFile, importcpp:"#.greenBufferSize(@)".} # Public
proc setBlueBufferSize*(this: QSurfaceFormat, size: cint) {.header:headerFile, importcpp:"#.setBlueBufferSize(@)".} # Public
proc blueBufferSize*(this: QSurfaceFormat): cint {.header:headerFile, importcpp:"#.blueBufferSize(@)".} # Public
proc setAlphaBufferSize*(this: QSurfaceFormat, size: cint) {.header:headerFile, importcpp:"#.setAlphaBufferSize(@)".} # Public
proc alphaBufferSize*(this: QSurfaceFormat): cint {.header:headerFile, importcpp:"#.alphaBufferSize(@)".} # Public
proc setSamples*(this: QSurfaceFormat, numSamples: cint) {.header:headerFile, importcpp:"#.setSamples(@)".} # Public
proc samples*(this: QSurfaceFormat): cint {.header:headerFile, importcpp:"#.samples(@)".} # Public
proc setSwapBehavior*(this: QSurfaceFormat, behavior: QSurfaceFormat_SwapBehavior) {.header:headerFile, importcpp:"#.setSwapBehavior(@)".} # Public
proc swapBehavior*(this: QSurfaceFormat): QSurfaceFormat_SwapBehavior {.header:headerFile, importcpp:"#.swapBehavior(@)".} # Public
proc hasAlpha*(this: QSurfaceFormat): bool {.header:headerFile, importcpp:"#.hasAlpha(@)".} # Public
proc setProfile*(this: QSurfaceFormat, profile: QSurfaceFormat_OpenGLContextProfile) {.header:headerFile, importcpp:"#.setProfile(@)".} # Public
proc profile*(this: QSurfaceFormat): QSurfaceFormat_OpenGLContextProfile {.header:headerFile, importcpp:"#.profile(@)".} # Public
proc setRenderableType*(this: QSurfaceFormat, `type`: QSurfaceFormat_RenderableType) {.header:headerFile, importcpp:"#.setRenderableType(@)".} # Public
proc renderableType*(this: QSurfaceFormat): QSurfaceFormat_RenderableType {.header:headerFile, importcpp:"#.renderableType(@)".} # Public
proc setMajorVersion*(this: QSurfaceFormat, majorVersion: cint) {.header:headerFile, importcpp:"#.setMajorVersion(@)".} # Public
proc majorVersion*(this: QSurfaceFormat): cint {.header:headerFile, importcpp:"#.majorVersion(@)".} # Public
proc setMinorVersion*(this: QSurfaceFormat, minorVersion: cint) {.header:headerFile, importcpp:"#.setMinorVersion(@)".} # Public
proc minorVersion*(this: QSurfaceFormat): cint {.header:headerFile, importcpp:"#.minorVersion(@)".} # Public
proc version*(this: QSurfaceFormat): cint {.header:headerFile, importcpp:"#.version(@)".} # Public
proc setVersion*(this: QSurfaceFormat, major: cint, minor: cint) {.header:headerFile, importcpp:"#.setVersion(@)".} # Public
proc stereo*(this: QSurfaceFormat): bool {.header:headerFile, importcpp:"#.stereo(@)".} # Public
proc setStereo*(this: QSurfaceFormat, enable: bool) {.header:headerFile, importcpp:"#.setStereo(@)".} # Public
proc setOptions*(this: QSurfaceFormat, options: QFlags[QSurfaceFormat_FormatOption]) {.header:headerFile, importcpp:"#.setOptions(@)".} # Public
# 1 default parameters!
proc setOption*(this: QSurfaceFormat, option: QSurfaceFormat_FormatOption, on: bool) {.header:headerFile, importcpp:"#.setOption(@)".} # Public
proc setOption*(this: QSurfaceFormat, option: QSurfaceFormat_FormatOption) {.header:headerFile, importcpp:"#.setOption(@)".} # Public
proc testOption*(this: QSurfaceFormat, option: QSurfaceFormat_FormatOption): bool {.header:headerFile, importcpp:"#.testOption(@)".} # Public
proc options*(this: QSurfaceFormat): QFlags[QSurfaceFormat_FormatOption] {.header:headerFile, importcpp:"#.options(@)".} # Public
proc swapInterval*(this: QSurfaceFormat): cint {.header:headerFile, importcpp:"#.swapInterval(@)".} # Public
proc setSwapInterval*(this: QSurfaceFormat, interval: cint) {.header:headerFile, importcpp:"#.setSwapInterval(@)".} # Public
import nimqt/qtgui/qcolorspace
proc colorSpace*(this: QSurfaceFormat): QColorSpace {.header:headerFile, importcpp:"#.colorSpace(@)".} # Public
proc setColorSpace*(this: QSurfaceFormat, colorSpace: QColorSpace) {.header:headerFile, importcpp:"#.setColorSpace(@)".} # Public
proc setColorSpace*(this: QSurfaceFormat, colorSpace: QSurfaceFormat_ColorSpace) {.header:headerFile, importcpp:"#.setColorSpace(@)".} # Public
proc static_QSurfaceFormat_setDefaultFormat*(format: QSurfaceFormat) {.header:headerFile, importcpp:"QSurfaceFormat::setDefaultFormat(@)".} # Public static
proc static_QSurfaceFormat_defaultFormat*(): QSurfaceFormat {.header:headerFile, importcpp:"QSurfaceFormat::defaultFormat(@)".} # Public static

export qcolorspace
export qflags
