const headerFile* = "QtQml/qjsengine.h"

type
    # Enums found in the C++ code
    # Global
    QJSEngine_ObjectOwnership* {.header:headerFile,importcpp:"QJSEngine::ObjectOwnership".} = enum CppOwnership = 0, JavaScriptOwnership = 0x1
    QJSEngine_Extension* {.header:headerFile,importcpp:"QJSEngine::Extension".} = enum AllExtensions = -1, TranslationExtension = 0x1, ConsoleExtension = 0x2, GarbageCollectionExtension = 0x4

import nimqt/qtcore/qobject
type
    # Classes found in the C++ code
    QJSEngine* {.header:headerFile,importcpp:"QJSEngine" ,pure.} = object of QObject
import nimqt/qtcore/qflags


type
    # typedefs found in the C++ code
    QJSEngine_Extensions * = QFlags[QJSEngine_Extension]

# Stuff for class QJSEngine

# Public constructors for QJSEngine
proc newQJSEngine*(): ptr QJSEngine {. header:headerFile, importcpp:"new QJSEngine(@)" .} #
proc newQJSEngine*(parent: ptr QObject): ptr QJSEngine {. header:headerFile, importcpp:"new QJSEngine(@)" .} #

# Public methods for QJSEngine
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QJSEngine_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QJSEngine::tr(@)".} # Public static
proc static_QJSEngine_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QJSEngine::tr(@)".} # Public static
import nimqt/qtqml/qjsvalue
proc globalObject*(this: ptr QJSEngine): QJSValue {.header:headerFile, importcpp:"#.globalObject(@)".} # Public
import nimqt/qtcore/qstringlist
# 3 default parameters!
proc evaluate*(this: ptr QJSEngine, program: QString, fileName: QString, lineNumber: cint, exceptionStackTrace: ptr QStringList): QJSValue {.header:headerFile, importcpp:"#.evaluate(@)".} # Public
proc evaluate*(this: ptr QJSEngine, program: QString, fileName: QString, lineNumber: cint): QJSValue {.header:headerFile, importcpp:"#.evaluate(@)".} # Public
proc evaluate*(this: ptr QJSEngine, program: QString, fileName: QString): QJSValue {.header:headerFile, importcpp:"#.evaluate(@)".} # Public
proc evaluate*(this: ptr QJSEngine, program: QString): QJSValue {.header:headerFile, importcpp:"#.evaluate(@)".} # Public
proc importModule*(this: ptr QJSEngine, fileName: QString): QJSValue {.header:headerFile, importcpp:"#.importModule(@)".} # Public
proc registerModule*(this: ptr QJSEngine, moduleName: QString, value: QJSValue): bool {.header:headerFile, importcpp:"#.registerModule(@)".} # Public
proc newObject*(this: ptr QJSEngine): QJSValue {.header:headerFile, importcpp:"#.newObject(@)".} # Public
proc newSymbol*(this: ptr QJSEngine, name: QString): QJSValue {.header:headerFile, importcpp:"#.newSymbol(@)".} # Public
# 1 default parameters!
proc newArray*(this: ptr QJSEngine, length: cuint): QJSValue {.header:headerFile, importcpp:"#.newArray(@)".} # Public
proc newArray*(this: ptr QJSEngine): QJSValue {.header:headerFile, importcpp:"#.newArray(@)".} # Public
proc newQObject*(this: ptr QJSEngine, `object`: ptr QObject): QJSValue {.header:headerFile, importcpp:"#.newQObject(@)".} # Public
# 1 default parameters!
proc newErrorObject*(this: ptr QJSEngine, errorType: QJSValue_ErrorType, message: QString): QJSValue {.header:headerFile, importcpp:"#.newErrorObject(@)".} # Public
proc newErrorObject*(this: ptr QJSEngine, errorType: QJSValue_ErrorType): QJSValue {.header:headerFile, importcpp:"#.newErrorObject(@)".} # Public
proc collectGarbage*(this: ptr QJSEngine) {.header:headerFile, importcpp:"#.collectGarbage(@)".} # Public
proc static_QJSEngine_setObjectOwnership*(arg_0: ptr QObject, arg_1: QJSEngine_ObjectOwnership) {.header:headerFile, importcpp:"QJSEngine::setObjectOwnership(@)".} # Public static
proc static_QJSEngine_objectOwnership*(arg_1: ptr QObject): QJSEngine_ObjectOwnership {.header:headerFile, importcpp:"QJSEngine::objectOwnership(@)".} # Public static
# 1 default parameters!
proc installExtensions*(this: ptr QJSEngine, extensions: QFlags[QJSEngine_Extension], `object`: QJSValue) {.header:headerFile, importcpp:"#.installExtensions(@)".} # Public
proc installExtensions*(this: ptr QJSEngine, extensions: QFlags[QJSEngine_Extension]) {.header:headerFile, importcpp:"#.installExtensions(@)".} # Public
proc setInterrupted*(this: ptr QJSEngine, interrupted: bool) {.header:headerFile, importcpp:"#.setInterrupted(@)".} # Public
proc isInterrupted*(this: ptr QJSEngine): bool {.header:headerFile, importcpp:"#.isInterrupted(@)".} # Public
proc throwError*(this: ptr QJSEngine, message: QString) {.header:headerFile, importcpp:"#.throwError(@)".} # Public
# 1 default parameters!
proc throwError*(this: ptr QJSEngine, errorType: QJSValue_ErrorType, message: QString) {.header:headerFile, importcpp:"#.throwError(@)".} # Public
proc throwError*(this: ptr QJSEngine, errorType: QJSValue_ErrorType) {.header:headerFile, importcpp:"#.throwError(@)".} # Public
proc throwError*(this: ptr QJSEngine, error: QJSValue) {.header:headerFile, importcpp:"#.throwError(@)".} # Public
proc hasError*(this: ptr QJSEngine): bool {.header:headerFile, importcpp:"#.hasError(@)".} # Public
proc catchError*(this: ptr QJSEngine): QJSValue {.header:headerFile, importcpp:"#.catchError(@)".} # Public
proc uiLanguage*(this: ptr QJSEngine): QString {.header:headerFile, importcpp:"#.uiLanguage(@)".} # Public
proc setUiLanguage*(this: ptr QJSEngine, language: QString) {.header:headerFile, importcpp:"#.setUiLanguage(@)".} # Public
proc uiLanguageChanged*(this: ptr QJSEngine) {.header:headerFile, importcpp:"#.uiLanguageChanged(@)".} # Public

export qjsvalue
export qstringlist
export qstring
export qflags
export qobject
