const headerFile* = "QtGui/qtestsupport_gui.h"

# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}


type
    # Classes and enums found in the C++ code
    QTest_QTouchEventSequence* {.header:headerFile,importcpp:"QTest::QTouchEventSequence" ,pure.} = object {.inheritable.}
{.push warning[Deprecated]: on.}

# Stuff for class QTest_QTouchEventSequence

# Public methods for QTest_QTouchEventSequence
proc stationary*(this: ptr QTest_QTouchEventSequence, touchId: cint): QTest_QTouchEventSequence {.header:headerFile, importcpp:"#.stationary(@)".} # Public
# 1 default parameters!
proc commit*(this: ptr QTest_QTouchEventSequence, processEvents: bool): bool {.header:headerFile, importcpp:"#.commit(@)".} # Public
proc commit*(this: ptr QTest_QTouchEventSequence): bool {.header:headerFile, importcpp:"#.commit(@)".} # Public

# Protected methods methods for QTest_QTouchEventSequence
import nimqt/qtgui/qeventpoint
proc point*(this: ptr QTest_QTouchEventSequence, touchId: cint): QEventPoint {.header:headerFile, importcpp:"#.point(@)".} # Protected
proc pointOrPreviousPoint*(this: ptr QTest_QTouchEventSequence, touchId: cint): QEventPoint {.header:headerFile, importcpp:"#.pointOrPreviousPoint(@)".} # Protected

export qeventpoint