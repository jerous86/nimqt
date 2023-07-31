const headerFile* = "QtCore/qtranslator.h"

import nimqt/qtcore/qobject
type
    # Classes found in the C++ code
    QTranslator* {.header:headerFile,importcpp:"QTranslator" ,pure.} = object of QObject

# Stuff for class QTranslator

# Public constructors for QTranslator
# 1 default parameters!
proc newQTranslator*(parent: ptr QObject): ptr QTranslator {. header:headerFile, importcpp:"new QTranslator(@)" .} #
proc newQTranslator*(): ptr QTranslator {. header:headerFile, importcpp:"new QTranslator(@)" .} #

# Public methods for QTranslator
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QTranslator_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QTranslator::tr(@)".} # Public static
proc static_QTranslator_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QTranslator::tr(@)".} # Public static
# 1 default parameters!
proc translate*(this: ptr QTranslator, context: ptr char, sourceText: ptr char, disambiguation: ptr char, n: cint): QString {.header:headerFile, importcpp:"#.translate(@)".} # Public
proc translate*(this: ptr QTranslator, context: ptr char, sourceText: ptr char, disambiguation: ptr char): QString {.header:headerFile, importcpp:"#.translate(@)".} # Public
proc isEmpty*(this: ptr QTranslator): bool {.header:headerFile, importcpp:"#.isEmpty(@)".} # Public
proc language*(this: ptr QTranslator): QString {.header:headerFile, importcpp:"#.language(@)".} # Public
proc filePath*(this: ptr QTranslator): QString {.header:headerFile, importcpp:"#.filePath(@)".} # Public
# 3 default parameters!
proc load*(this: ptr QTranslator, filename: QString, directory: QString, search_delimiters: QString, suffix: QString): bool {.header:headerFile, importcpp:"#.load(@)".} # Public
proc load*(this: ptr QTranslator, filename: QString, directory: QString, search_delimiters: QString): bool {.header:headerFile, importcpp:"#.load(@)".} # Public
proc load*(this: ptr QTranslator, filename: QString, directory: QString): bool {.header:headerFile, importcpp:"#.load(@)".} # Public
proc load*(this: ptr QTranslator, filename: QString): bool {.header:headerFile, importcpp:"#.load(@)".} # Public
import nimqt/qtcore/qlocale
# 3 default parameters!
proc load*(this: ptr QTranslator, locale: QLocale, filename: QString, prefix: QString, directory: QString, suffix: QString): bool {.header:headerFile, importcpp:"#.load(@)".} # Public
proc load*(this: ptr QTranslator, locale: QLocale, filename: QString, prefix: QString, directory: QString): bool {.header:headerFile, importcpp:"#.load(@)".} # Public
proc load*(this: ptr QTranslator, locale: QLocale, filename: QString, prefix: QString): bool {.header:headerFile, importcpp:"#.load(@)".} # Public
proc load*(this: ptr QTranslator, locale: QLocale, filename: QString): bool {.header:headerFile, importcpp:"#.load(@)".} # Public
# 1 default parameters!
proc load*(this: ptr QTranslator, data: ptr char, len: cint, directory: QString): bool {.header:headerFile, importcpp:"#.load(@)".} # Public
proc load*(this: ptr QTranslator, data: ptr char, len: cint): bool {.header:headerFile, importcpp:"#.load(@)".} # Public

export qstring
export qlocale
export qobject
