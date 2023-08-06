const headerFile* = "QtCore/qurlquery.h"

type
    # Classes found in the C++ code
    QUrlQuery* {.header:headerFile,importcpp:"QUrlQuery" ,pure,inheritable.} = object

# Stuff for class QUrlQuery

# Public constructors for QUrlQuery
proc newQUrlQuery*(): QUrlQuery {. header:headerFile, importcpp:"QUrlQuery(@)", constructor .} #
import nimqt/qtcore/qurl
proc newQUrlQuery*(url: QUrl): QUrlQuery {. header:headerFile, importcpp:"QUrlQuery(@)", constructor .} #
import nimqt/qtcore/qstring
proc newQUrlQuery*(queryString: QString): QUrlQuery {. header:headerFile, importcpp:"QUrlQuery(@)", constructor .} #
proc newQUrlQuery*(list: cint): QUrlQuery {. header:headerFile, importcpp:"QUrlQuery(@)", constructor .} #
proc newQUrlQuery*(other: QUrlQuery): QUrlQuery {. header:headerFile, importcpp:"QUrlQuery(@)", constructor .} #

# Public methods for QUrlQuery
proc `!=`*(this: QUrlQuery, other: QUrlQuery): bool {.header:headerFile, importcpp:"#.operator!=(@)".} # Public
proc swap*(this: QUrlQuery, other: QUrlQuery) {.header:headerFile, importcpp:"#.swap(@)".} # Public
proc isEmpty*(this: QUrlQuery): bool {.header:headerFile, importcpp:"#.isEmpty(@)".} # Public
proc isDetached*(this: QUrlQuery): bool {.header:headerFile, importcpp:"#.isDetached(@)".} # Public
proc clear*(this: QUrlQuery) {.header:headerFile, importcpp:"#.clear(@)".} # Public
# 1 default parameters!
proc query*(this: QUrlQuery, encoding: QUrl_ComponentFormattingOptions): QString {.header:headerFile, importcpp:"#.query(@)".} # Public
proc query*(this: QUrlQuery): QString {.header:headerFile, importcpp:"#.query(@)".} # Public
proc setQuery*(this: QUrlQuery, queryString: QString) {.header:headerFile, importcpp:"#.setQuery(@)".} # Public
# 1 default parameters!
proc toString*(this: QUrlQuery, encoding: QUrl_ComponentFormattingOptions): QString {.header:headerFile, importcpp:"#.toString(@)".} # Public
proc toString*(this: QUrlQuery): QString {.header:headerFile, importcpp:"#.toString(@)".} # Public
import nimqt/qtcore/qchar
proc setQueryDelimiters*(this: QUrlQuery, valueDelimiter: QChar, pairDelimiter: QChar) {.header:headerFile, importcpp:"#.setQueryDelimiters(@)".} # Public
proc queryValueDelimiter*(this: QUrlQuery): QChar {.header:headerFile, importcpp:"#.queryValueDelimiter(@)".} # Public
proc queryPairDelimiter*(this: QUrlQuery): QChar {.header:headerFile, importcpp:"#.queryPairDelimiter(@)".} # Public
proc hasQueryItem*(this: QUrlQuery, key: QString): bool {.header:headerFile, importcpp:"#.hasQueryItem(@)".} # Public
proc addQueryItem*(this: QUrlQuery, key: QString, value: QString) {.header:headerFile, importcpp:"#.addQueryItem(@)".} # Public
proc removeQueryItem*(this: QUrlQuery, key: QString) {.header:headerFile, importcpp:"#.removeQueryItem(@)".} # Public
# 1 default parameters!
proc queryItemValue*(this: QUrlQuery, key: QString, encoding: QUrl_ComponentFormattingOptions): QString {.header:headerFile, importcpp:"#.queryItemValue(@)".} # Public
proc queryItemValue*(this: QUrlQuery, key: QString): QString {.header:headerFile, importcpp:"#.queryItemValue(@)".} # Public
import nimqt/qtcore/qstringlist
# 1 default parameters!
proc allQueryItemValues*(this: QUrlQuery, key: QString, encoding: QUrl_ComponentFormattingOptions): QStringList {.header:headerFile, importcpp:"#.allQueryItemValues(@)".} # Public
proc allQueryItemValues*(this: QUrlQuery, key: QString): QStringList {.header:headerFile, importcpp:"#.allQueryItemValues(@)".} # Public
proc static_QUrlQuery_defaultQueryValueDelimiter*(): cushort {.header:headerFile, importcpp:"QUrlQuery::defaultQueryValueDelimiter(@)".} # Public static
proc static_QUrlQuery_defaultQueryPairDelimiter*(): cushort {.header:headerFile, importcpp:"QUrlQuery::defaultQueryPairDelimiter(@)".} # Public static

export qstringlist
export qurl
export qstring
export qchar
