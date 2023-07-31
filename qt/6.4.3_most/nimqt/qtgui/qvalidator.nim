const headerFile* = "QtGui/qvalidator.h"

type
    # Enums found in the C++ code
    # Global
    QValidator_State* {.header:headerFile,importcpp:"QValidator::State".} = enum Invalid = 0, Intermediate = 0x1, Acceptable = 0x2
    QDoubleValidator_Notation* {.header:headerFile,importcpp:"QDoubleValidator::Notation".} = enum StandardNotation = 0, ScientificNotation = 0x1

import nimqt/qtcore/qobject
type
    # Classes found in the C++ code
    QValidator* {.header:headerFile,importcpp:"QValidator" ,pure.} = object of QObject
    QIntValidator* {.header:headerFile,importcpp:"QIntValidator" ,pure.} = object of QValidator
    QDoubleValidator* {.header:headerFile,importcpp:"QDoubleValidator" ,pure.} = object of QValidator
    QRegularExpressionValidator* {.header:headerFile,importcpp:"QRegularExpressionValidator" ,pure.} = object of QValidator


type
    # typedefs found in the C++ code
    QIntValidator_State * = QValidator_State
    QDoubleValidator_State * = QValidator_State
    QRegularExpressionValidator_State * = QValidator_State

# Stuff for class QValidator

# Public constructors for QValidator
# 1 default parameters!
proc newQValidator*(parent: ptr QObject): ptr QValidator {. header:headerFile, importcpp:"new QValidator(@)" .} #
proc newQValidator*(): ptr QValidator {. header:headerFile, importcpp:"new QValidator(@)" .} #

# Public methods for QValidator
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QValidator_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QValidator::tr(@)".} # Public static
proc static_QValidator_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QValidator::tr(@)".} # Public static
import nimqt/qtcore/qlocale
proc setLocale*(this: ptr QValidator, locale: QLocale) {.header:headerFile, importcpp:"#.setLocale(@)".} # Public
proc locale*(this: ptr QValidator): QLocale {.header:headerFile, importcpp:"#.locale(@)".} # Public
proc validate*(this: ptr QValidator, arg_1: QString, arg_2: cint): QValidator_State {.header:headerFile, importcpp:"#.validate(@)".} # Public
proc fixup*(this: ptr QValidator, arg_0: QString) {.header:headerFile, importcpp:"#.fixup(@)".} # Public
proc changed*(this: ptr QValidator) {.header:headerFile, importcpp:"#.changed(@)".} # Public
# Stuff for class QIntValidator

# Public constructors for QIntValidator
# 1 default parameters!
proc newQIntValidator*(parent: ptr QObject): ptr QIntValidator {. header:headerFile, importcpp:"new QIntValidator(@)" .} #
proc newQIntValidator*(): ptr QIntValidator {. header:headerFile, importcpp:"new QIntValidator(@)" .} #
# 1 default parameters!
proc newQIntValidator*(bottom: cint, top: cint, parent: ptr QObject): ptr QIntValidator {. header:headerFile, importcpp:"new QIntValidator(@)" .} #
proc newQIntValidator*(bottom: cint, top: cint): ptr QIntValidator {. header:headerFile, importcpp:"new QIntValidator(@)" .} #

# Public methods for QIntValidator
# 1 default parameters!
proc static_QIntValidator_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QIntValidator::tr(@)".} # Public static
proc static_QIntValidator_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QIntValidator::tr(@)".} # Public static
proc validate*(this: ptr QIntValidator, arg_2: QString, arg_3: cint): QValidator_State {.header:headerFile, importcpp:"#.validate(@)".} # Public
proc fixup*(this: ptr QIntValidator, input: QString) {.header:headerFile, importcpp:"#.fixup(@)".} # Public
proc setBottom*(this: ptr QIntValidator, arg_0: cint) {.header:headerFile, importcpp:"#.setBottom(@)".} # Public
proc setTop*(this: ptr QIntValidator, arg_0: cint) {.header:headerFile, importcpp:"#.setTop(@)".} # Public
proc setRange*(this: ptr QIntValidator, bottom: cint, top: cint) {.header:headerFile, importcpp:"#.setRange(@)".} # Public
proc bottom*(this: ptr QIntValidator): cint {.header:headerFile, importcpp:"#.bottom(@)".} # Public
proc top*(this: ptr QIntValidator): cint {.header:headerFile, importcpp:"#.top(@)".} # Public
proc bottomChanged*(this: ptr QIntValidator, bottom: cint) {.header:headerFile, importcpp:"#.bottomChanged(@)".} # Public
proc topChanged*(this: ptr QIntValidator, top: cint) {.header:headerFile, importcpp:"#.topChanged(@)".} # Public
# Stuff for class QDoubleValidator

# Public constructors for QDoubleValidator
# 1 default parameters!
proc newQDoubleValidator*(parent: ptr QObject): ptr QDoubleValidator {. header:headerFile, importcpp:"new QDoubleValidator(@)" .} #
proc newQDoubleValidator*(): ptr QDoubleValidator {. header:headerFile, importcpp:"new QDoubleValidator(@)" .} #
# 1 default parameters!
proc newQDoubleValidator*(bottom: cdouble, top: cdouble, decimals: cint, parent: ptr QObject): ptr QDoubleValidator {. header:headerFile, importcpp:"new QDoubleValidator(@)" .} #
proc newQDoubleValidator*(bottom: cdouble, top: cdouble, decimals: cint): ptr QDoubleValidator {. header:headerFile, importcpp:"new QDoubleValidator(@)" .} #

# Public methods for QDoubleValidator
# 1 default parameters!
proc static_QDoubleValidator_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QDoubleValidator::tr(@)".} # Public static
proc static_QDoubleValidator_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QDoubleValidator::tr(@)".} # Public static
proc validate*(this: ptr QDoubleValidator, arg_2: QString, arg_3: cint): QValidator_State {.header:headerFile, importcpp:"#.validate(@)".} # Public
proc fixup*(this: ptr QDoubleValidator, input: QString) {.header:headerFile, importcpp:"#.fixup(@)".} # Public
proc setRange*(this: ptr QDoubleValidator, bottom: cdouble, top: cdouble, decimals: cint) {.header:headerFile, importcpp:"#.setRange(@)".} # Public
proc setRange*(this: ptr QDoubleValidator, bottom: cdouble, top: cdouble) {.header:headerFile, importcpp:"#.setRange(@)".} # Public
proc setBottom*(this: ptr QDoubleValidator, arg_0: cdouble) {.header:headerFile, importcpp:"#.setBottom(@)".} # Public
proc setTop*(this: ptr QDoubleValidator, arg_0: cdouble) {.header:headerFile, importcpp:"#.setTop(@)".} # Public
proc setDecimals*(this: ptr QDoubleValidator, arg_0: cint) {.header:headerFile, importcpp:"#.setDecimals(@)".} # Public
proc setNotation*(this: ptr QDoubleValidator, arg_0: QDoubleValidator_Notation) {.header:headerFile, importcpp:"#.setNotation(@)".} # Public
proc bottom*(this: ptr QDoubleValidator): cdouble {.header:headerFile, importcpp:"#.bottom(@)".} # Public
proc top*(this: ptr QDoubleValidator): cdouble {.header:headerFile, importcpp:"#.top(@)".} # Public
proc decimals*(this: ptr QDoubleValidator): cint {.header:headerFile, importcpp:"#.decimals(@)".} # Public
proc notation*(this: ptr QDoubleValidator): QDoubleValidator_Notation {.header:headerFile, importcpp:"#.notation(@)".} # Public
proc bottomChanged*(this: ptr QDoubleValidator, bottom: cdouble) {.header:headerFile, importcpp:"#.bottomChanged(@)".} # Public
proc topChanged*(this: ptr QDoubleValidator, top: cdouble) {.header:headerFile, importcpp:"#.topChanged(@)".} # Public
proc decimalsChanged*(this: ptr QDoubleValidator, decimals: cint) {.header:headerFile, importcpp:"#.decimalsChanged(@)".} # Public
proc notationChanged*(this: ptr QDoubleValidator, notation: QDoubleValidator_Notation) {.header:headerFile, importcpp:"#.notationChanged(@)".} # Public
# Stuff for class QRegularExpressionValidator

# Public constructors for QRegularExpressionValidator
# 1 default parameters!
proc newQRegularExpressionValidator*(parent: ptr QObject): ptr QRegularExpressionValidator {. header:headerFile, importcpp:"new QRegularExpressionValidator(@)" .} #
proc newQRegularExpressionValidator*(): ptr QRegularExpressionValidator {. header:headerFile, importcpp:"new QRegularExpressionValidator(@)" .} #
import nimqt/qtcore/qregularexpression
# 1 default parameters!
proc newQRegularExpressionValidator*(re: QRegularExpression, parent: ptr QObject): ptr QRegularExpressionValidator {. header:headerFile, importcpp:"new QRegularExpressionValidator(@)" .} #
proc newQRegularExpressionValidator*(re: QRegularExpression): ptr QRegularExpressionValidator {. header:headerFile, importcpp:"new QRegularExpressionValidator(@)" .} #

# Public methods for QRegularExpressionValidator
# 1 default parameters!
proc static_QRegularExpressionValidator_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QRegularExpressionValidator::tr(@)".} # Public static
proc static_QRegularExpressionValidator_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QRegularExpressionValidator::tr(@)".} # Public static
proc validate*(this: ptr QRegularExpressionValidator, input: QString, pos: cint): QValidator_State {.header:headerFile, importcpp:"#.validate(@)".} # Public
proc regularExpression*(this: ptr QRegularExpressionValidator): QRegularExpression {.header:headerFile, importcpp:"#.regularExpression(@)".} # Public
proc setRegularExpression*(this: ptr QRegularExpressionValidator, re: QRegularExpression) {.header:headerFile, importcpp:"#.setRegularExpression(@)".} # Public
proc regularExpressionChanged*(this: ptr QRegularExpressionValidator, re: QRegularExpression) {.header:headerFile, importcpp:"#.regularExpressionChanged(@)".} # Public

export qstring
export qlocale
export qregularexpression
export qobject
