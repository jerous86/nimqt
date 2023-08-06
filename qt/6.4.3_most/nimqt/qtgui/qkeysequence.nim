const headerFile* = "QtGui/qkeysequence.h"

type
    # Enums found in the C++ code
    # Global
    QKeySequence_StandardKey* {.header:headerFile,importcpp:"QKeySequence::StandardKey".} = enum UnknownKey = 0, HelpContents = 0x1, WhatsThis = 0x2, Open = 0x3, 
        Close = 0x4, Save = 0x5, New = 0x6, Delete = 0x7, Cut = 0x8, 
        Copy = 0x9, Paste = 0xa, Undo = 0xb, Redo = 0xc, Back = 0xd, 
        Forward = 0xe, Refresh = 0xf, ZoomIn = 0x10, ZoomOut = 0x11, Print = 0x12, 
        AddTab = 0x13, NextChild = 0x14, PreviousChild = 0x15, Find = 0x16, FindNext = 0x17, 
        FindPrevious = 0x18, Replace = 0x19, SelectAll = 0x1a, Bold = 0x1b, Italic = 0x1c, 
        Underline = 0x1d, MoveToNextChar = 0x1e, MoveToPreviousChar = 0x1f, MoveToNextWord = 0x20, MoveToPreviousWord = 0x21, 
        MoveToNextLine = 0x22, MoveToPreviousLine = 0x23, MoveToNextPage = 0x24, MoveToPreviousPage = 0x25, MoveToStartOfLine = 0x26, 
        MoveToEndOfLine = 0x27, MoveToStartOfBlock = 0x28, MoveToEndOfBlock = 0x29, MoveToStartOfDocument = 0x2a, MoveToEndOfDocument = 0x2b, 
        SelectNextChar = 0x2c, SelectPreviousChar = 0x2d, SelectNextWord = 0x2e, SelectPreviousWord = 0x2f, SelectNextLine = 0x30, 
        SelectPreviousLine = 0x31, SelectNextPage = 0x32, SelectPreviousPage = 0x33, SelectStartOfLine = 0x34, SelectEndOfLine = 0x35, 
        SelectStartOfBlock = 0x36, SelectEndOfBlock = 0x37, SelectStartOfDocument = 0x38, SelectEndOfDocument = 0x39, DeleteStartOfWord = 0x3a, 
        DeleteEndOfWord = 0x3b, DeleteEndOfLine = 0x3c, InsertParagraphSeparator = 0x3d, InsertLineSeparator = 0x3e, SaveAs = 0x3f, 
        Preferences = 0x40, Quit = 0x41, FullScreen = 0x42, Deselect = 0x43, DeleteCompleteLine = 0x44, 
        Backspace = 0x45, Cancel = 0x46
    QKeySequence_SequenceFormat* {.header:headerFile,importcpp:"QKeySequence::SequenceFormat".} = enum NativeText = 0, PortableText = 0x1
    QKeySequence_SequenceMatch* {.header:headerFile,importcpp:"QKeySequence::SequenceMatch".} = enum NoMatch = 0, PartialMatch = 0x1, ExactMatch = 0x2

type
    # Classes found in the C++ code
    QKeySequence* {.header:headerFile,importcpp:"QKeySequence" ,pure,inheritable.} = object

# Stuff for class QKeySequence

# Public constructors for QKeySequence
proc newQKeySequence*(): QKeySequence {. header:headerFile, importcpp:"QKeySequence(@)", constructor .} #
import nimqt/qtcore/qstring
proc newQKeySequence*(key: QString, format: QKeySequence_SequenceFormat): QKeySequence {. header:headerFile, importcpp:"QKeySequence(@)", constructor .} #
# 3 default parameters!
proc newQKeySequence*(k1: cint, k2: cint, k3: cint, k4: cint): QKeySequence {. header:headerFile, importcpp:"QKeySequence(@)", constructor .} #
proc newQKeySequence*(k1: cint, k2: cint, k3: cint): QKeySequence {. header:headerFile, importcpp:"QKeySequence(@)", constructor .} #
proc newQKeySequence*(k1: cint, k2: cint): QKeySequence {. header:headerFile, importcpp:"QKeySequence(@)", constructor .} #
proc newQKeySequence*(k1: cint): QKeySequence {. header:headerFile, importcpp:"QKeySequence(@)", constructor .} #
import nimqt/qtcore/qnamespace
proc newQKeySequence*(k1: QKeyCombination, k2: QKeyCombination, k3: QKeyCombination, k4: QKeyCombination): QKeySequence {. header:headerFile, importcpp:"QKeySequence(@)", constructor .} #
proc newQKeySequence*(ks: QKeySequence): QKeySequence {. header:headerFile, importcpp:"QKeySequence(@)", constructor .} #
proc newQKeySequence*(key: QKeySequence_StandardKey): QKeySequence {. header:headerFile, importcpp:"QKeySequence(@)", constructor .} #

# Public methods for QKeySequence
proc qt_check_for_QGADGET_macro*(this: QKeySequence) {.header:headerFile, importcpp:"#.qt_check_for_QGADGET_macro(@)".} # Public
proc count*(this: QKeySequence): cint {.header:headerFile, importcpp:"#.count(@)".} # Public
proc isEmpty*(this: QKeySequence): bool {.header:headerFile, importcpp:"#.isEmpty(@)".} # Public
proc toString*(this: QKeySequence, format: QKeySequence_SequenceFormat): QString {.header:headerFile, importcpp:"#.toString(@)".} # Public
proc static_QKeySequence_fromString*(str: QString, format: QKeySequence_SequenceFormat): QKeySequence {.header:headerFile, importcpp:"QKeySequence::fromString(@)".} # Public static
import nimqt/qtcore/qlist
proc static_QKeySequence_listFromString*(str: QString, format: QKeySequence_SequenceFormat): QList[QKeySequence] {.header:headerFile, importcpp:"QKeySequence::listFromString(@)".} # Public static
proc static_QKeySequence_listToString*(list: QList[QKeySequence], format: QKeySequence_SequenceFormat): QString {.header:headerFile, importcpp:"QKeySequence::listToString(@)".} # Public static
proc matches*(this: QKeySequence, seq: QKeySequence): QKeySequence_SequenceMatch {.header:headerFile, importcpp:"#.matches(@)".} # Public
proc static_QKeySequence_mnemonic*(text: QString): QKeySequence {.header:headerFile, importcpp:"QKeySequence::mnemonic(@)".} # Public static
proc static_QKeySequence_keyBindings*(key: QKeySequence_StandardKey): QList[QKeySequence] {.header:headerFile, importcpp:"QKeySequence::keyBindings(@)".} # Public static
proc `[]`*(this: QKeySequence, i: cuint): QKeyCombination {.header:headerFile, importcpp:"#.operator[](@)".} # Public
proc swap*(this: QKeySequence, other: QKeySequence) {.header:headerFile, importcpp:"#.swap(@)".} # Public
proc `!=`*(this: QKeySequence, other: QKeySequence): bool {.header:headerFile, importcpp:"#.operator!=(@)".} # Public
proc `<`*(this: QKeySequence, ks: QKeySequence): bool {.header:headerFile, importcpp:"#.operator<(@)".} # Public
proc `>`*(this: QKeySequence, other: QKeySequence): bool {.header:headerFile, importcpp:"#.operator>(@)".} # Public
proc `<=`*(this: QKeySequence, other: QKeySequence): bool {.header:headerFile, importcpp:"#.operator<=(@)".} # Public
proc `>=`*(this: QKeySequence, other: QKeySequence): bool {.header:headerFile, importcpp:"#.operator>=(@)".} # Public
proc isDetached*(this: QKeySequence): bool {.header:headerFile, importcpp:"#.isDetached(@)".} # Public

export qstring
export qnamespace
export qlist
