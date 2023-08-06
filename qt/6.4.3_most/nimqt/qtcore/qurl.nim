const headerFile* = "QtCore/qurl.h"

type
    # Enums found in the C++ code
    # Global
    QUrl_ParsingMode* {.header:headerFile,importcpp:"QUrl::ParsingMode".} = enum TolerantMode = 0, StrictMode = 0x1, DecodedMode = 0x2
    QUrl_UrlFormattingOption* {.header:headerFile,importcpp:"QUrl::UrlFormattingOption".} = enum None = 0, RemoveScheme = 0x1, RemovePassword = 0x2, RemoveUserInfo = 0x6, 
        RemovePort = 0x8, RemoveAuthority = 0x1e, RemovePath = 0x20, RemoveQuery = 0x40, RemoveFragment = 0x80, 
        PreferLocalFile = 0x200, StripTrailingSlash = 0x400, RemoveFilename = 0x800, NormalizePathSegments = 0x1000
    QUrl_ComponentFormattingOption* {.header:headerFile,importcpp:"QUrl::ComponentFormattingOption".} = enum PrettyDecoded = 0, EncodeSpaces = 0x100000, EncodeUnicode = 0x200000, EncodeDelimiters = 0xc00000, 
        EncodeReserved = 0x1000000, FullyEncoded = 0x1f00000, DecodeReserved = 0x2000000, FullyDecoded = 0x7f00000
    QUrl_UserInputResolutionOption* {.header:headerFile,importcpp:"QUrl::UserInputResolutionOption".} = enum DefaultResolution = 0, AssumeLocalFile = 0x1
    QUrl_AceProcessingOption* {.header:headerFile,importcpp:"QUrl::AceProcessingOption".} = enum IgnoreIDNWhitelist = 0x1, AceTransitionalProcessing = 0x2

type
    # Classes found in the C++ code
    QUrlTwoFlags*[E1, E2] {.header:headerFile,importcpp:"QUrlTwoFlags" ,pure,inheritable.} = object
    QUrl* {.header:headerFile,importcpp:"QUrl" ,pure,inheritable.} = object
import nimqt/qtcore/qflags


type
    # typedefs found in the C++ code
    QUrl_ComponentFormattingOptions * = QFlags[QUrl_ComponentFormattingOption]
    QUrl_FormattingOptions * = QFlags[QUrl_UrlFormattingOption]
    QUrl_UserInputResolutionOptions * = QFlags[QUrl_UserInputResolutionOption]
    QUrl_AceProcessingOptions * = QFlags[QUrl_AceProcessingOption]

# Stuff for class QUrlTwoFlags

# Public constructors for QUrlTwoFlags
proc newQUrlTwoFlags*[E1, E2](): QUrlTwoFlags[E1, E2] {. header:headerFile, importcpp:"QUrlTwoFlags(@)", constructor .} #
proc newQUrlTwoFlags*[E1, E2](f: E1): QUrlTwoFlags[E1, E2] {. header:headerFile, importcpp:"QUrlTwoFlags(@)", constructor .} #
proc newQUrlTwoFlags*[E1, E2](f: E2): QUrlTwoFlags[E1, E2] {. header:headerFile, importcpp:"QUrlTwoFlags(@)", constructor .} #
proc newQUrlTwoFlags*[E1, E2](f: QFlag): QUrlTwoFlags[E1, E2] {. header:headerFile, importcpp:"QUrlTwoFlags(@)", constructor .} #
proc newQUrlTwoFlags*[E1, E2](f: QFlags[E1]): QUrlTwoFlags[E1, E2] {. header:headerFile, importcpp:"QUrlTwoFlags(@)", constructor .} #
proc newQUrlTwoFlags*[E1, E2](f: QFlags[E2]): QUrlTwoFlags[E1, E2] {. header:headerFile, importcpp:"QUrlTwoFlags(@)", constructor .} #

# Public methods for QUrlTwoFlags
proc `&=`*[E1, E2](this: QUrlTwoFlags[E1, E2], mask: cint): QUrlTwoFlags[E1, E2] {.header:headerFile, importcpp:"#.operator&=(@)".} # Public
proc `&=`*[E1, E2](this: QUrlTwoFlags[E1, E2], mask: cuint): QUrlTwoFlags[E1, E2] {.header:headerFile, importcpp:"#.operator&=(@)".} # Public
proc `&=`*[E1, E2](this: QUrlTwoFlags[E1, E2], mask: QFlags[E1]): QUrlTwoFlags[E1, E2] {.header:headerFile, importcpp:"#.operator&=(@)".} # Public
proc `&=`*[E1, E2](this: QUrlTwoFlags[E1, E2], mask: QFlags[E2]): QUrlTwoFlags[E1, E2] {.header:headerFile, importcpp:"#.operator&=(@)".} # Public
proc `|=`*[E1, E2](this: QUrlTwoFlags[E1, E2], f: QUrlTwoFlags[E1, E2]): QUrlTwoFlags[E1, E2] {.header:headerFile, importcpp:"#.operator|=(@)".} # Public
proc `|=`*[E1, E2](this: QUrlTwoFlags[E1, E2], f: E1): QUrlTwoFlags[E1, E2] {.header:headerFile, importcpp:"#.operator|=(@)".} # Public
proc `|=`*[E1, E2](this: QUrlTwoFlags[E1, E2], f: E2): QUrlTwoFlags[E1, E2] {.header:headerFile, importcpp:"#.operator|=(@)".} # Public
proc `|=`*[E1, E2](this: QUrlTwoFlags[E1, E2], mask: QFlags[E1]): QUrlTwoFlags[E1, E2] {.header:headerFile, importcpp:"#.operator|=(@)".} # Public
proc `|=`*[E1, E2](this: QUrlTwoFlags[E1, E2], mask: QFlags[E2]): QUrlTwoFlags[E1, E2] {.header:headerFile, importcpp:"#.operator|=(@)".} # Public
proc `^=`*[E1, E2](this: QUrlTwoFlags[E1, E2], f: QUrlTwoFlags[E1, E2]): QUrlTwoFlags[E1, E2] {.header:headerFile, importcpp:"#.operator^=(@)".} # Public
proc `^=`*[E1, E2](this: QUrlTwoFlags[E1, E2], f: E1): QUrlTwoFlags[E1, E2] {.header:headerFile, importcpp:"#.operator^=(@)".} # Public
proc `^=`*[E1, E2](this: QUrlTwoFlags[E1, E2], f: E2): QUrlTwoFlags[E1, E2] {.header:headerFile, importcpp:"#.operator^=(@)".} # Public
proc `^=`*[E1, E2](this: QUrlTwoFlags[E1, E2], mask: QFlags[E1]): QUrlTwoFlags[E1, E2] {.header:headerFile, importcpp:"#.operator^=(@)".} # Public
proc `^=`*[E1, E2](this: QUrlTwoFlags[E1, E2], mask: QFlags[E2]): QUrlTwoFlags[E1, E2] {.header:headerFile, importcpp:"#.operator^=(@)".} # Public
proc `!`*[E1, E2](this: QUrlTwoFlags[E1, E2]): bool {.header:headerFile, importcpp:"#.operator!(@)".} # Public
proc `|`*[E1, E2](this: QUrlTwoFlags[E1, E2], f: QUrlTwoFlags[E1, E2]): QUrlTwoFlags[E1, E2] {.header:headerFile, importcpp:"#.operator|(@)".} # Public
proc `|`*[E1, E2](this: QUrlTwoFlags[E1, E2], f: E1): QUrlTwoFlags[E1, E2] {.header:headerFile, importcpp:"#.operator|(@)".} # Public
proc `|`*[E1, E2](this: QUrlTwoFlags[E1, E2], f: E2): QUrlTwoFlags[E1, E2] {.header:headerFile, importcpp:"#.operator|(@)".} # Public
proc `^`*[E1, E2](this: QUrlTwoFlags[E1, E2], f: QUrlTwoFlags[E1, E2]): QUrlTwoFlags[E1, E2] {.header:headerFile, importcpp:"#.operator^(@)".} # Public
proc `^`*[E1, E2](this: QUrlTwoFlags[E1, E2], f: E1): QUrlTwoFlags[E1, E2] {.header:headerFile, importcpp:"#.operator^(@)".} # Public
proc `^`*[E1, E2](this: QUrlTwoFlags[E1, E2], f: E2): QUrlTwoFlags[E1, E2] {.header:headerFile, importcpp:"#.operator^(@)".} # Public
proc `&`*[E1, E2](this: QUrlTwoFlags[E1, E2], mask: cint): QUrlTwoFlags[E1, E2] {.header:headerFile, importcpp:"#.operator&(@)".} # Public
proc `&`*[E1, E2](this: QUrlTwoFlags[E1, E2], mask: cuint): QUrlTwoFlags[E1, E2] {.header:headerFile, importcpp:"#.operator&(@)".} # Public
proc `&`*[E1, E2](this: QUrlTwoFlags[E1, E2], f: E1): QUrlTwoFlags[E1, E2] {.header:headerFile, importcpp:"#.operator&(@)".} # Public
proc `&`*[E1, E2](this: QUrlTwoFlags[E1, E2], f: E2): QUrlTwoFlags[E1, E2] {.header:headerFile, importcpp:"#.operator&(@)".} # Public
proc `~`*[E1, E2](this: QUrlTwoFlags[E1, E2]): QUrlTwoFlags[E1, E2] {.header:headerFile, importcpp:"#.operator~(@)".} # Public
proc testFlag*[E1, E2](this: QUrlTwoFlags[E1, E2], f: E1): bool {.header:headerFile, importcpp:"#.testFlag(@)".} # Public
proc testFlag*[E1, E2](this: QUrlTwoFlags[E1, E2], f: E2): bool {.header:headerFile, importcpp:"#.testFlag(@)".} # Public
# Stuff for class QUrl

# Public constructors for QUrl
proc newQUrl*(): QUrl {. header:headerFile, importcpp:"QUrl(@)", constructor .} #
proc newQUrl*(copy: QUrl): QUrl {. header:headerFile, importcpp:"QUrl(@)", constructor .} #
import nimqt/qtcore/qstring
proc newQUrl*(url: QString, mode: QUrl_ParsingMode): QUrl {. header:headerFile, importcpp:"QUrl(@)", constructor .} #
proc newQUrl*(other: QUrl): QUrl {. header:headerFile, importcpp:"QUrl(@)", constructor .} #

# Public methods for QUrl
proc swap*(this: QUrl, other: QUrl) {.header:headerFile, importcpp:"#.swap(@)".} # Public
proc setUrl*(this: QUrl, url: QString, mode: QUrl_ParsingMode) {.header:headerFile, importcpp:"#.setUrl(@)".} # Public
# 1 default parameters!
proc url*(this: QUrl, options: QFlags[QUrl_UrlFormattingOption]): QString {.header:headerFile, importcpp:"#.url(@)".} # Public
proc url*(this: QUrl): QString {.header:headerFile, importcpp:"#.url(@)".} # Public
# 1 default parameters!
proc toString*(this: QUrl, options: QFlags[QUrl_UrlFormattingOption]): QString {.header:headerFile, importcpp:"#.toString(@)".} # Public
proc toString*(this: QUrl): QString {.header:headerFile, importcpp:"#.toString(@)".} # Public
# 1 default parameters!
proc toDisplayString*(this: QUrl, options: QFlags[QUrl_UrlFormattingOption]): QString {.header:headerFile, importcpp:"#.toDisplayString(@)".} # Public
proc toDisplayString*(this: QUrl): QString {.header:headerFile, importcpp:"#.toDisplayString(@)".} # Public
proc adjusted*(this: QUrl, options: QFlags[QUrl_UrlFormattingOption]): QUrl {.header:headerFile, importcpp:"#.adjusted(@)".} # Public
import nimqt/qtcore/qbytearray
# 1 default parameters!
proc toEncoded*(this: QUrl, options: QFlags[QUrl_UrlFormattingOption]): QByteArray {.header:headerFile, importcpp:"#.toEncoded(@)".} # Public
proc toEncoded*(this: QUrl): QByteArray {.header:headerFile, importcpp:"#.toEncoded(@)".} # Public
proc static_QUrl_fromEncoded*(url: QByteArray, mode: QUrl_ParsingMode): QUrl {.header:headerFile, importcpp:"QUrl::fromEncoded(@)".} # Public static
# 2 default parameters!
proc static_QUrl_fromUserInput*(userInput: QString, workingDirectory: QString, options: QFlags[QUrl_UserInputResolutionOption]): QUrl {.header:headerFile, importcpp:"QUrl::fromUserInput(@)".} # Public static
proc static_QUrl_fromUserInput*(userInput: QString, workingDirectory: QString): QUrl {.header:headerFile, importcpp:"QUrl::fromUserInput(@)".} # Public static
proc static_QUrl_fromUserInput*(userInput: QString): QUrl {.header:headerFile, importcpp:"QUrl::fromUserInput(@)".} # Public static
proc isValid*(this: QUrl): bool {.header:headerFile, importcpp:"#.isValid(@)".} # Public
proc errorString*(this: QUrl): QString {.header:headerFile, importcpp:"#.errorString(@)".} # Public
proc isEmpty*(this: QUrl): bool {.header:headerFile, importcpp:"#.isEmpty(@)".} # Public
proc clear*(this: QUrl) {.header:headerFile, importcpp:"#.clear(@)".} # Public
proc setScheme*(this: QUrl, scheme: QString) {.header:headerFile, importcpp:"#.setScheme(@)".} # Public
proc scheme*(this: QUrl): QString {.header:headerFile, importcpp:"#.scheme(@)".} # Public
proc setAuthority*(this: QUrl, authority: QString, mode: QUrl_ParsingMode) {.header:headerFile, importcpp:"#.setAuthority(@)".} # Public
# 1 default parameters!
proc authority*(this: QUrl, options: QFlags[QUrl_ComponentFormattingOption]): QString {.header:headerFile, importcpp:"#.authority(@)".} # Public
proc authority*(this: QUrl): QString {.header:headerFile, importcpp:"#.authority(@)".} # Public
proc setUserInfo*(this: QUrl, userInfo: QString, mode: QUrl_ParsingMode) {.header:headerFile, importcpp:"#.setUserInfo(@)".} # Public
# 1 default parameters!
proc userInfo*(this: QUrl, options: QFlags[QUrl_ComponentFormattingOption]): QString {.header:headerFile, importcpp:"#.userInfo(@)".} # Public
proc userInfo*(this: QUrl): QString {.header:headerFile, importcpp:"#.userInfo(@)".} # Public
proc setUserName*(this: QUrl, userName: QString, mode: QUrl_ParsingMode) {.header:headerFile, importcpp:"#.setUserName(@)".} # Public
# 1 default parameters!
proc userName*(this: QUrl, options: QFlags[QUrl_ComponentFormattingOption]): QString {.header:headerFile, importcpp:"#.userName(@)".} # Public
proc userName*(this: QUrl): QString {.header:headerFile, importcpp:"#.userName(@)".} # Public
proc setPassword*(this: QUrl, password: QString, mode: QUrl_ParsingMode) {.header:headerFile, importcpp:"#.setPassword(@)".} # Public
# 1 default parameters!
proc password*(this: QUrl, arg_1: QFlags[QUrl_ComponentFormattingOption]): QString {.header:headerFile, importcpp:"#.password(@)".} # Public
proc password*(this: QUrl): QString {.header:headerFile, importcpp:"#.password(@)".} # Public
proc setHost*(this: QUrl, host: QString, mode: QUrl_ParsingMode) {.header:headerFile, importcpp:"#.setHost(@)".} # Public
# 1 default parameters!
proc host*(this: QUrl, arg_1: QFlags[QUrl_ComponentFormattingOption]): QString {.header:headerFile, importcpp:"#.host(@)".} # Public
proc host*(this: QUrl): QString {.header:headerFile, importcpp:"#.host(@)".} # Public
proc setPort*(this: QUrl, port: cint) {.header:headerFile, importcpp:"#.setPort(@)".} # Public
proc port*(this: QUrl, defaultPort: cint): cint {.header:headerFile, importcpp:"#.port(@)".} # Public
proc setPath*(this: QUrl, path: QString, mode: QUrl_ParsingMode) {.header:headerFile, importcpp:"#.setPath(@)".} # Public
# 1 default parameters!
proc path*(this: QUrl, options: QFlags[QUrl_ComponentFormattingOption]): QString {.header:headerFile, importcpp:"#.path(@)".} # Public
proc path*(this: QUrl): QString {.header:headerFile, importcpp:"#.path(@)".} # Public
# 1 default parameters!
proc fileName*(this: QUrl, options: QFlags[QUrl_ComponentFormattingOption]): QString {.header:headerFile, importcpp:"#.fileName(@)".} # Public
proc fileName*(this: QUrl): QString {.header:headerFile, importcpp:"#.fileName(@)".} # Public
proc hasQuery*(this: QUrl): bool {.header:headerFile, importcpp:"#.hasQuery(@)".} # Public
proc setQuery*(this: QUrl, query: QString, mode: QUrl_ParsingMode) {.header:headerFile, importcpp:"#.setQuery(@)".} # Public
import nimqt/qtcore/qurlquery
proc setQuery*(this: QUrl, query: QUrlQuery) {.header:headerFile, importcpp:"#.setQuery(@)".} # Public
# 1 default parameters!
proc query*(this: QUrl, arg_1: QFlags[QUrl_ComponentFormattingOption]): QString {.header:headerFile, importcpp:"#.query(@)".} # Public
proc query*(this: QUrl): QString {.header:headerFile, importcpp:"#.query(@)".} # Public
proc hasFragment*(this: QUrl): bool {.header:headerFile, importcpp:"#.hasFragment(@)".} # Public
# 1 default parameters!
proc fragment*(this: QUrl, options: QFlags[QUrl_ComponentFormattingOption]): QString {.header:headerFile, importcpp:"#.fragment(@)".} # Public
proc fragment*(this: QUrl): QString {.header:headerFile, importcpp:"#.fragment(@)".} # Public
proc setFragment*(this: QUrl, fragment: QString, mode: QUrl_ParsingMode) {.header:headerFile, importcpp:"#.setFragment(@)".} # Public
proc resolved*(this: QUrl, relative: QUrl): QUrl {.header:headerFile, importcpp:"#.resolved(@)".} # Public
proc isRelative*(this: QUrl): bool {.header:headerFile, importcpp:"#.isRelative(@)".} # Public
proc isParentOf*(this: QUrl, url: QUrl): bool {.header:headerFile, importcpp:"#.isParentOf(@)".} # Public
proc isLocalFile*(this: QUrl): bool {.header:headerFile, importcpp:"#.isLocalFile(@)".} # Public
proc static_QUrl_fromLocalFile*(localfile: QString): QUrl {.header:headerFile, importcpp:"QUrl::fromLocalFile(@)".} # Public static
proc toLocalFile*(this: QUrl): QString {.header:headerFile, importcpp:"#.toLocalFile(@)".} # Public
proc detach*(this: QUrl) {.header:headerFile, importcpp:"#.detach(@)".} # Public
proc isDetached*(this: QUrl): bool {.header:headerFile, importcpp:"#.isDetached(@)".} # Public
proc `<`*(this: QUrl, url: QUrl): bool {.header:headerFile, importcpp:"#.operator<(@)".} # Public
proc `!=`*(this: QUrl, url: QUrl): bool {.header:headerFile, importcpp:"#.operator!=(@)".} # Public
proc matches*(this: QUrl, url: QUrl, options: QFlags[QUrl_UrlFormattingOption]): bool {.header:headerFile, importcpp:"#.matches(@)".} # Public
proc static_QUrl_fromPercentEncoding*(arg_1: QByteArray): QString {.header:headerFile, importcpp:"QUrl::fromPercentEncoding(@)".} # Public static
# 2 default parameters!
proc static_QUrl_toPercentEncoding*(arg_1: QString, exclude: QByteArray, `include`: QByteArray): QByteArray {.header:headerFile, importcpp:"QUrl::toPercentEncoding(@)".} # Public static
proc static_QUrl_toPercentEncoding*(arg_1: QString, exclude: QByteArray): QByteArray {.header:headerFile, importcpp:"QUrl::toPercentEncoding(@)".} # Public static
proc static_QUrl_toPercentEncoding*(arg_1: QString): QByteArray {.header:headerFile, importcpp:"QUrl::toPercentEncoding(@)".} # Public static
# 1 default parameters!
proc static_QUrl_fromAce*(domain: QByteArray, options: QFlags[QUrl_AceProcessingOption]): QString {.header:headerFile, importcpp:"QUrl::fromAce(@)".} # Public static
proc static_QUrl_fromAce*(domain: QByteArray): QString {.header:headerFile, importcpp:"QUrl::fromAce(@)".} # Public static
# 1 default parameters!
proc static_QUrl_toAce*(domain: QString, options: QFlags[QUrl_AceProcessingOption]): QByteArray {.header:headerFile, importcpp:"QUrl::toAce(@)".} # Public static
proc static_QUrl_toAce*(domain: QString): QByteArray {.header:headerFile, importcpp:"QUrl::toAce(@)".} # Public static
import nimqt/qtcore/qstringlist
proc static_QUrl_idnWhitelist*(): QStringList {.header:headerFile, importcpp:"QUrl::idnWhitelist(@)".} # Public static
import nimqt/qtcore/qlist
# 1 default parameters!
proc static_QUrl_toStringList*(uris: QList[QUrl], options: QFlags[QUrl_UrlFormattingOption]): QStringList {.header:headerFile, importcpp:"QUrl::toStringList(@)".} # Public static
proc static_QUrl_toStringList*(uris: QList[QUrl]): QStringList {.header:headerFile, importcpp:"QUrl::toStringList(@)".} # Public static
proc static_QUrl_fromStringList*(uris: QStringList, mode: QUrl_ParsingMode): QList[QUrl] {.header:headerFile, importcpp:"QUrl::fromStringList(@)".} # Public static
proc static_QUrl_setIdnWhitelist*(arg_0: QStringList) {.header:headerFile, importcpp:"QUrl::setIdnWhitelist(@)".} # Public static

export qstringlist
export qstring
export qurlquery
export qbytearray
export qlist
export qflags
