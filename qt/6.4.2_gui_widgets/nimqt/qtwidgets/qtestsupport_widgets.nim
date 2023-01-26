const headerFile* = "QtWidgets/qtestsupport_widgets.h"

import nimqt/qtgui/qtestsupport_gui
# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}


type
    # Classes and enums found in the C++ code
    QTest_QTouchEventWidgetSequence* {.header:headerFile,importcpp:"QTest::QTouchEventWidgetSequence" ,pure.} = object of QTest_QTouchEventSequence
{.push warning[Deprecated]: on.}

# Stuff for class QTest_QTouchEventWidgetSequence

# Public methods for QTest_QTouchEventWidgetSequence
proc stationary*(this: ptr QTest_QTouchEventWidgetSequence, touchId: cint): QTest_QTouchEventWidgetSequence {.header:headerFile, importcpp:"#.stationary(@)".} # Public
# 1 default parameters!
proc commit*(this: ptr QTest_QTouchEventWidgetSequence, processEvents: bool): bool {.header:headerFile, importcpp:"#.commit(@)".} # Public
proc commit*(this: ptr QTest_QTouchEventWidgetSequence): bool {.header:headerFile, importcpp:"#.commit(@)".} # Public

export qtestsupport_gui