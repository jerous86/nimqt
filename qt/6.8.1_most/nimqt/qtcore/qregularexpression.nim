const headerFile* = "QtCore/qregularexpression.h"

type
    # Enums found in the C++ code
    # Global
    QRegularExpression_PatternOption* {.header:headerFile,importcpp:"QRegularExpression::PatternOption".} = enum NoPatternOption = 0, CaseInsensitiveOption = 0x1, DotMatchesEverythingOption = 0x2, MultilineOption = 0x4, 
        ExtendedPatternSyntaxOption = 0x8, InvertedGreedinessOption = 0x10, DontCaptureOption = 0x20, UseUnicodePropertiesOption = 0x40
    QRegularExpression_MatchType* {.header:headerFile,importcpp:"QRegularExpression::MatchType".} = enum NormalMatch = 0, PartialPreferCompleteMatch = 0x1, PartialPreferFirstMatch = 0x2, NoMatch = 0x3
    QRegularExpression_MatchOption* {.header:headerFile,importcpp:"QRegularExpression::MatchOption".} = enum NoMatchOption = 0, AnchorAtOffsetMatchOption = 0x1, DontCheckSubjectStringMatchOption = 0x2
    QRegularExpression_WildcardConversionOption* {.header:headerFile,importcpp:"QRegularExpression::WildcardConversionOption".} = enum DefaultWildcardConversion = 0, UnanchoredWildcardConversion = 0x1

type
    # Classes found in the C++ code
    QRegularExpression* {.header:headerFile,importcpp:"QRegularExpression" ,pure,inheritable.} = object
    QRegularExpressionMatch* {.header:headerFile,importcpp:"QRegularExpressionMatch" ,pure,inheritable.} = object
import nimqt/qtcore/qflags


type
    # typedefs found in the C++ code
    QRegularExpression_PatternOptions * = QFlags[QRegularExpression_PatternOption]
    QRegularExpression_MatchOptions * = QFlags[QRegularExpression_MatchOption]
    QRegularExpression_WildcardConversionOptions * = QFlags[QRegularExpression_WildcardConversionOption]
    QRegularExpressionMatchIterator* {.header:headerFile,importcpp:"QRegularExpressionMatchIterator" ,pure.} = object

# Consts
const
    # Global
    QRegularExpression_MatchOptionAnchoredMatchOption* = 1 # from anonymous enum AnchorAtOffsetMatchOption

# Stuff for class QRegularExpression

# Public constructors for QRegularExpression
proc newQRegularExpression*(): QRegularExpression {. header:headerFile, importcpp:"QRegularExpression(@)", constructor .} #
import nimqt/qtcore/qstring
# 1 default parameters!
proc newQRegularExpression*(pattern: QString, options: QFlags[QRegularExpression_PatternOption]): QRegularExpression {. header:headerFile, importcpp:"QRegularExpression(@)", constructor .} #
proc newQRegularExpression*(pattern: QString): QRegularExpression {. header:headerFile, importcpp:"QRegularExpression(@)", constructor .} #
proc newQRegularExpression*(re: QRegularExpression): QRegularExpression {. header:headerFile, importcpp:"QRegularExpression(@)", constructor .} #

# Public methods for QRegularExpression
proc patternOptions*(this: QRegularExpression): QFlags[QRegularExpression_PatternOption] {.header:headerFile, importcpp:"#.patternOptions(@)".} # Public
proc setPatternOptions*(this: QRegularExpression, options: QFlags[QRegularExpression_PatternOption]) {.header:headerFile, importcpp:"#.setPatternOptions(@)".} # Public
proc swap*(this: QRegularExpression, other: QRegularExpression) {.header:headerFile, importcpp:"#.swap(@)".} # Public
proc pattern*(this: QRegularExpression): QString {.header:headerFile, importcpp:"#.pattern(@)".} # Public
proc setPattern*(this: QRegularExpression, pattern: QString) {.header:headerFile, importcpp:"#.setPattern(@)".} # Public
proc isValid*(this: QRegularExpression): bool {.header:headerFile, importcpp:"#.isValid(@)".} # Public
proc patternErrorOffset*(this: QRegularExpression): cint {.header:headerFile, importcpp:"#.patternErrorOffset(@)".} # Public
proc errorString*(this: QRegularExpression): QString {.header:headerFile, importcpp:"#.errorString(@)".} # Public
proc captureCount*(this: QRegularExpression): cint {.header:headerFile, importcpp:"#.captureCount(@)".} # Public
import nimqt/qtcore/qstringlist
proc namedCaptureGroups*(this: QRegularExpression): QStringList {.header:headerFile, importcpp:"#.namedCaptureGroups(@)".} # Public
# 2 default parameters!
proc match*(this: QRegularExpression, subject: QString, offset: cint, matchType: QRegularExpression_MatchType, matchOptions: QFlags[QRegularExpression_MatchOption]): QRegularExpressionMatch {.header:headerFile, importcpp:"#.match(@)".} # Public
proc match*(this: QRegularExpression, subject: QString, offset: cint, matchType: QRegularExpression_MatchType): QRegularExpressionMatch {.header:headerFile, importcpp:"#.match(@)".} # Public
proc match*(this: QRegularExpression, subject: QString, offset: cint): QRegularExpressionMatch {.header:headerFile, importcpp:"#.match(@)".} # Public
proc optimize*(this: QRegularExpression) {.header:headerFile, importcpp:"#.optimize(@)".} # Public
proc static_QRegularExpression_escape*(str: QString): QString {.header:headerFile, importcpp:"QRegularExpression::escape(@)".} # Public static
# 1 default parameters!
proc static_QRegularExpression_wildcardToRegularExpression*(str: QString, options: QFlags[QRegularExpression_WildcardConversionOption]): QString {.header:headerFile, importcpp:"QRegularExpression::wildcardToRegularExpression(@)".} # Public static
proc static_QRegularExpression_wildcardToRegularExpression*(str: QString): QString {.header:headerFile, importcpp:"QRegularExpression::wildcardToRegularExpression(@)".} # Public static
proc static_QRegularExpression_anchoredPattern*(expression: QString): QString {.header:headerFile, importcpp:"QRegularExpression::anchoredPattern(@)".} # Public static
proc `!=`*(this: QRegularExpression, re: QRegularExpression): bool {.header:headerFile, importcpp:"#.operator!=(@)".} # Public
# Stuff for class QRegularExpressionMatch

# Public constructors for QRegularExpressionMatch
proc newQRegularExpressionMatch*(): QRegularExpressionMatch {. header:headerFile, importcpp:"QRegularExpressionMatch(@)", constructor .} #
proc newQRegularExpressionMatch*(match: QRegularExpressionMatch): QRegularExpressionMatch {. header:headerFile, importcpp:"QRegularExpressionMatch(@)", constructor .} #

proc globalMatch*(this: QRegularExpression, subject:QString):QRegularExpressionMatchIterator {.header:headerFile, importcpp:"#.globalMatch(@)".}
proc hasNext*(this:QRegularExpressionMatchIterator):bool {.header:headerFile, importcpp:"#.hasNext(@)".}
proc next*(this:QRegularExpressionMatchIterator):QRegularExpressionMatch {.header:headerFile, importcpp:"#.next(@)".}

# Public methods for QRegularExpressionMatch
proc swap*(this: QRegularExpressionMatch, other: QRegularExpressionMatch) {.header:headerFile, importcpp:"#.swap(@)".} # Public
proc regularExpression*(this: QRegularExpressionMatch): QRegularExpression {.header:headerFile, importcpp:"#.regularExpression(@)".} # Public
proc matchType*(this: QRegularExpressionMatch): QRegularExpression_MatchType {.header:headerFile, importcpp:"#.matchType(@)".} # Public
proc matchOptions*(this: QRegularExpressionMatch): QRegularExpression_MatchOptions {.header:headerFile, importcpp:"#.matchOptions(@)".} # Public
proc hasMatch*(this: QRegularExpressionMatch): bool {.header:headerFile, importcpp:"#.hasMatch(@)".} # Public
proc hasPartialMatch*(this: QRegularExpressionMatch): bool {.header:headerFile, importcpp:"#.hasPartialMatch(@)".} # Public
proc isValid*(this: QRegularExpressionMatch): bool {.header:headerFile, importcpp:"#.isValid(@)".} # Public
proc lastCapturedIndex*(this: QRegularExpressionMatch): cint {.header:headerFile, importcpp:"#.lastCapturedIndex(@)".} # Public
proc hasCaptured*(this: QRegularExpressionMatch, name: QString): bool {.header:headerFile, importcpp:"#.hasCaptured(@)".} # Public
proc hasCaptured*(this: QRegularExpressionMatch, nth: cint): bool {.header:headerFile, importcpp:"#.hasCaptured(@)".} # Public
# 1 default parameters!
proc captured*(this: QRegularExpressionMatch, nth: cint): QString {.header:headerFile, importcpp:"#.captured(@)".} # Public
proc captured*(this: QRegularExpressionMatch): QString {.header:headerFile, importcpp:"#.captured(@)".} # Public
proc captured*(this: QRegularExpressionMatch, name: QString): QString {.header:headerFile, importcpp:"#.captured(@)".} # Public
proc capturedTexts*(this: QRegularExpressionMatch): QStringList {.header:headerFile, importcpp:"#.capturedTexts(@)".} # Public
proc capturedStart*(this: QRegularExpressionMatch): cint {.header:headerFile, importcpp:"#.capturedStart(@)".} # Public
proc capturedLength*(this: QRegularExpressionMatch): cint {.header:headerFile, importcpp:"#.capturedLength(@)".} # Public
proc capturedEnd*(this: QRegularExpressionMatch): cint {.header:headerFile, importcpp:"#.capturedEnd(@)".} # Public

export qstringlist
export qstring
export qflags
