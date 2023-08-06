const headerFile* = "QtGui/qtextobject.h"

import nimqt/qtcore/qobject
type
    # Classes found in the C++ code
    QTextObject* {.header:headerFile,importcpp:"QTextObject" ,pure.} = object of QObject
    QTextBlockGroup* {.header:headerFile,importcpp:"QTextBlockGroup" ,pure.} = object of QTextObject
    QTextFrameLayoutData* {.header:headerFile,importcpp:"QTextFrameLayoutData" ,pure,inheritable.} = object
    QTextFrame* {.header:headerFile,importcpp:"QTextFrame" ,pure.} = object of QTextObject
    QTextBlockUserData* {.header:headerFile,importcpp:"QTextBlockUserData" ,pure,inheritable.} = object
    QTextBlock* {.header:headerFile,importcpp:"QTextBlock" ,pure,inheritable.} = object
    QTextFragment* {.header:headerFile,importcpp:"QTextFragment" ,pure,inheritable.} = object

# Stuff for class QTextObject

# Public methods for QTextObject
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QTextObject_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QTextObject::tr(@)".} # Public static
proc static_QTextObject_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QTextObject::tr(@)".} # Public static
import nimqt/qtgui/qtextformat
proc format*(this: ptr QTextObject): QTextFormat {.header:headerFile, importcpp:"#.format(@)".} # Public
proc formatIndex*(this: ptr QTextObject): cint {.header:headerFile, importcpp:"#.formatIndex(@)".} # Public
import nimqt/qtgui/qtextdocument
proc document*(this: ptr QTextObject): ptr QTextDocument {.header:headerFile, importcpp:"#.document(@)".} # Public
proc objectIndex*(this: ptr QTextObject): cint {.header:headerFile, importcpp:"#.objectIndex(@)".} # Public

# Protected methods methods for QTextObject
proc setFormat*(this: ptr QTextObject, format: QTextFormat) {.header:headerFile, importcpp:"#.setFormat(@)".} # Protected
# Stuff for class QTextBlockGroup

# Public methods for QTextBlockGroup
# 1 default parameters!
proc static_QTextBlockGroup_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QTextBlockGroup::tr(@)".} # Public static
proc static_QTextBlockGroup_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QTextBlockGroup::tr(@)".} # Public static

# Protected methods methods for QTextBlockGroup
proc blockInserted*(this: ptr QTextBlockGroup, `block`: QTextBlock) {.header:headerFile, importcpp:"#.blockInserted(@)".} # Protected
proc blockRemoved*(this: ptr QTextBlockGroup, `block`: QTextBlock) {.header:headerFile, importcpp:"#.blockRemoved(@)".} # Protected
proc blockFormatChanged*(this: ptr QTextBlockGroup, `block`: QTextBlock) {.header:headerFile, importcpp:"#.blockFormatChanged(@)".} # Protected
import nimqt/qtcore/qlist
proc blockList*(this: ptr QTextBlockGroup): QList[QTextBlock] {.header:headerFile, importcpp:"#.blockList(@)".} # Protected
# Stuff for class QTextFrame

# Public constructors for QTextFrame
proc newQTextFrame*(doc: ptr QTextDocument): ptr QTextFrame {. header:headerFile, importcpp:"new QTextFrame(@)" .} #

# Public methods for QTextFrame
# 1 default parameters!
proc static_QTextFrame_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QTextFrame::tr(@)".} # Public static
proc static_QTextFrame_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QTextFrame::tr(@)".} # Public static
proc setFrameFormat*(this: ptr QTextFrame, format: QTextFrameFormat) {.header:headerFile, importcpp:"#.setFrameFormat(@)".} # Public
proc frameFormat*(this: ptr QTextFrame): QTextFrameFormat {.header:headerFile, importcpp:"#.frameFormat(@)".} # Public
import nimqt/qtgui/qtextcursor
proc firstCursorPosition*(this: ptr QTextFrame): QTextCursor {.header:headerFile, importcpp:"#.firstCursorPosition(@)".} # Public
proc lastCursorPosition*(this: ptr QTextFrame): QTextCursor {.header:headerFile, importcpp:"#.lastCursorPosition(@)".} # Public
proc firstPosition*(this: ptr QTextFrame): cint {.header:headerFile, importcpp:"#.firstPosition(@)".} # Public
proc lastPosition*(this: ptr QTextFrame): cint {.header:headerFile, importcpp:"#.lastPosition(@)".} # Public
proc layoutData*(this: ptr QTextFrame): ptr QTextFrameLayoutData {.header:headerFile, importcpp:"#.layoutData(@)".} # Public
proc setLayoutData*(this: ptr QTextFrame, data: ptr QTextFrameLayoutData) {.header:headerFile, importcpp:"#.setLayoutData(@)".} # Public
proc childFrames*(this: ptr QTextFrame): QList[ptr QTextFrame] {.header:headerFile, importcpp:"#.childFrames(@)".} # Public
proc parentFrame*(this: ptr QTextFrame): ptr QTextFrame {.header:headerFile, importcpp:"#.parentFrame(@)".} # Public
# Stuff for class QTextBlock

# Public constructors for QTextBlock
proc newQTextBlock*(): QTextBlock {. header:headerFile, importcpp:"QTextBlock(@)", constructor .} #
proc newQTextBlock*(o: QTextBlock): QTextBlock {. header:headerFile, importcpp:"QTextBlock(@)", constructor .} #

# Public methods for QTextBlock
proc isValid*(this: QTextBlock): bool {.header:headerFile, importcpp:"#.isValid(@)".} # Public
proc `!=`*(this: QTextBlock, o: QTextBlock): bool {.header:headerFile, importcpp:"#.operator!=(@)".} # Public
proc `<`*(this: QTextBlock, o: QTextBlock): bool {.header:headerFile, importcpp:"#.operator<(@)".} # Public
proc position*(this: QTextBlock): cint {.header:headerFile, importcpp:"#.position(@)".} # Public
proc length*(this: QTextBlock): cint {.header:headerFile, importcpp:"#.length(@)".} # Public
proc contains*(this: QTextBlock, position: cint): bool {.header:headerFile, importcpp:"#.contains(@)".} # Public
import nimqt/qtgui/qtextlayout
proc layout*(this: QTextBlock): ptr QTextLayout {.header:headerFile, importcpp:"#.layout(@)".} # Public
proc clearLayout*(this: QTextBlock) {.header:headerFile, importcpp:"#.clearLayout(@)".} # Public
proc blockFormat*(this: QTextBlock): QTextBlockFormat {.header:headerFile, importcpp:"#.blockFormat(@)".} # Public
proc blockFormatIndex*(this: QTextBlock): cint {.header:headerFile, importcpp:"#.blockFormatIndex(@)".} # Public
proc charFormat*(this: QTextBlock): QTextCharFormat {.header:headerFile, importcpp:"#.charFormat(@)".} # Public
proc charFormatIndex*(this: QTextBlock): cint {.header:headerFile, importcpp:"#.charFormatIndex(@)".} # Public
import nimqt/qtcore/qnamespace
proc textDirection*(this: QTextBlock): Qt_LayoutDirection {.header:headerFile, importcpp:"#.textDirection(@)".} # Public
proc text*(this: QTextBlock): QString {.header:headerFile, importcpp:"#.text(@)".} # Public
proc textFormats*(this: QTextBlock): QList[QTextLayout_FormatRange] {.header:headerFile, importcpp:"#.textFormats(@)".} # Public
proc document*(this: QTextBlock): ptr QTextDocument {.header:headerFile, importcpp:"#.document(@)".} # Public
proc userData*(this: QTextBlock): ptr QTextBlockUserData {.header:headerFile, importcpp:"#.userData(@)".} # Public
proc setUserData*(this: QTextBlock, data: ptr QTextBlockUserData) {.header:headerFile, importcpp:"#.setUserData(@)".} # Public
proc userState*(this: QTextBlock): cint {.header:headerFile, importcpp:"#.userState(@)".} # Public
proc setUserState*(this: QTextBlock, state: cint) {.header:headerFile, importcpp:"#.setUserState(@)".} # Public
proc revision*(this: QTextBlock): cint {.header:headerFile, importcpp:"#.revision(@)".} # Public
proc setRevision*(this: QTextBlock, rev: cint) {.header:headerFile, importcpp:"#.setRevision(@)".} # Public
proc isVisible*(this: QTextBlock): bool {.header:headerFile, importcpp:"#.isVisible(@)".} # Public
proc setVisible*(this: QTextBlock, visible: bool) {.header:headerFile, importcpp:"#.setVisible(@)".} # Public
proc blockNumber*(this: QTextBlock): cint {.header:headerFile, importcpp:"#.blockNumber(@)".} # Public
proc firstLineNumber*(this: QTextBlock): cint {.header:headerFile, importcpp:"#.firstLineNumber(@)".} # Public
proc setLineCount*(this: QTextBlock, count: cint) {.header:headerFile, importcpp:"#.setLineCount(@)".} # Public
proc lineCount*(this: QTextBlock): cint {.header:headerFile, importcpp:"#.lineCount(@)".} # Public
proc next*(this: QTextBlock): QTextBlock {.header:headerFile, importcpp:"#.next(@)".} # Public
proc previous*(this: QTextBlock): QTextBlock {.header:headerFile, importcpp:"#.previous(@)".} # Public
proc fragmentIndex*(this: QTextBlock): cint {.header:headerFile, importcpp:"#.fragmentIndex(@)".} # Public
# Stuff for class QTextFragment

# Public constructors for QTextFragment
proc newQTextFragment*(): QTextFragment {. header:headerFile, importcpp:"QTextFragment(@)", constructor .} #
proc newQTextFragment*(o: QTextFragment): QTextFragment {. header:headerFile, importcpp:"QTextFragment(@)", constructor .} #

# Public methods for QTextFragment
proc isValid*(this: QTextFragment): bool {.header:headerFile, importcpp:"#.isValid(@)".} # Public
proc `!=`*(this: QTextFragment, o: QTextFragment): bool {.header:headerFile, importcpp:"#.operator!=(@)".} # Public
proc `<`*(this: QTextFragment, o: QTextFragment): bool {.header:headerFile, importcpp:"#.operator<(@)".} # Public
proc position*(this: QTextFragment): cint {.header:headerFile, importcpp:"#.position(@)".} # Public
proc length*(this: QTextFragment): cint {.header:headerFile, importcpp:"#.length(@)".} # Public
proc contains*(this: QTextFragment, position: cint): bool {.header:headerFile, importcpp:"#.contains(@)".} # Public
proc charFormat*(this: QTextFragment): QTextCharFormat {.header:headerFile, importcpp:"#.charFormat(@)".} # Public
proc charFormatIndex*(this: QTextFragment): cint {.header:headerFile, importcpp:"#.charFormatIndex(@)".} # Public
proc text*(this: QTextFragment): QString {.header:headerFile, importcpp:"#.text(@)".} # Public
import nimqt/qtgui/qglyphrun
proc glyphRuns*(this: QTextFragment, `from`: cint, length: cint): QList[QGlyphRun] {.header:headerFile, importcpp:"#.glyphRuns(@)".} # Public

export qtextlayout
export qtextformat
export qstring
export qtextcursor
export qnamespace
export qlist
export qglyphrun
export qobject
export qtextdocument
