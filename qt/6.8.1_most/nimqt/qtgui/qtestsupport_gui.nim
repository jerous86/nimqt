const headerFile* = "QtGui/qtestsupport_gui.h"

type
    # Classes found in the C++ code
    QTest_QTouchEventSequence* {.header:headerFile,importcpp:"QTest::QTouchEventSequence" ,pure,inheritable.} = object

# Stuff for class QTest_QTouchEventSequence

# Public methods for QTest_QTouchEventSequence
import nimqt/qtgui/qwindow
import nimqt/qtcore/qpoint
# 1 default parameters!
proc press*(this: ptr QTest_QTouchEventSequence, touchId: cint, pt: QPoint, window: ptr QWindow): QTest_QTouchEventSequence {.header:headerFile, importcpp:"#.press(@)".} # Public
proc press*(this: ptr QTest_QTouchEventSequence, touchId: cint, pt: QPoint): QTest_QTouchEventSequence {.header:headerFile, importcpp:"#.press(@)".} # Public
# 1 default parameters!
proc move*(this: ptr QTest_QTouchEventSequence, touchId: cint, pt: QPoint, window: ptr QWindow): QTest_QTouchEventSequence {.header:headerFile, importcpp:"#.move(@)".} # Public
proc move*(this: ptr QTest_QTouchEventSequence, touchId: cint, pt: QPoint): QTest_QTouchEventSequence {.header:headerFile, importcpp:"#.move(@)".} # Public
# 1 default parameters!
proc release*(this: ptr QTest_QTouchEventSequence, touchId: cint, pt: QPoint, window: ptr QWindow): QTest_QTouchEventSequence {.header:headerFile, importcpp:"#.release(@)".} # Public
proc release*(this: ptr QTest_QTouchEventSequence, touchId: cint, pt: QPoint): QTest_QTouchEventSequence {.header:headerFile, importcpp:"#.release(@)".} # Public
proc stationary*(this: ptr QTest_QTouchEventSequence, touchId: cint): QTest_QTouchEventSequence {.header:headerFile, importcpp:"#.stationary(@)".} # Public
# 1 default parameters!
proc commit*(this: ptr QTest_QTouchEventSequence, processEvents: bool): bool {.header:headerFile, importcpp:"#.commit(@)".} # Public
proc commit*(this: ptr QTest_QTouchEventSequence): bool {.header:headerFile, importcpp:"#.commit(@)".} # Public

# Protected methods methods for QTest_QTouchEventSequence
proc mapToScreen*(this: ptr QTest_QTouchEventSequence, window: ptr QWindow, pt: QPoint): QPoint {.header:headerFile, importcpp:"#.mapToScreen(@)".} # Protected
import nimqt/qtgui/qeventpoint
proc point*(this: ptr QTest_QTouchEventSequence, touchId: cint): QEventPoint {.header:headerFile, importcpp:"#.point(@)".} # Protected
proc pointOrPreviousPoint*(this: ptr QTest_QTouchEventSequence, touchId: cint): QEventPoint {.header:headerFile, importcpp:"#.pointOrPreviousPoint(@)".} # Protected

export qwindow
export qpoint
export qeventpoint
