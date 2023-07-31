const headerFile* = "QtWidgets/qtestsupport_widgets.h"

import nimqt/qtgui/qtestsupport_gui
type
    # Classes found in the C++ code
    QTest_QTouchEventWidgetSequence* {.header:headerFile,importcpp:"QTest::QTouchEventWidgetSequence" ,pure.} = object of QTest_QTouchEventSequence

# Stuff for class QTest_QTouchEventWidgetSequence

# Public methods for QTest_QTouchEventWidgetSequence
import nimqt/qtcore/qpoint
import nimqt/qtwidgets/qwidget
# 1 default parameters!
proc press*(this: ptr QTest_QTouchEventWidgetSequence, touchId: cint, pt: QPoint, widget: ptr QWidget): QTest_QTouchEventWidgetSequence {.header:headerFile, importcpp:"#.press(@)".} # Public
proc press*(this: ptr QTest_QTouchEventWidgetSequence, touchId: cint, pt: QPoint): QTest_QTouchEventWidgetSequence {.header:headerFile, importcpp:"#.press(@)".} # Public
# 1 default parameters!
proc move*(this: ptr QTest_QTouchEventWidgetSequence, touchId: cint, pt: QPoint, widget: ptr QWidget): QTest_QTouchEventWidgetSequence {.header:headerFile, importcpp:"#.move(@)".} # Public
proc move*(this: ptr QTest_QTouchEventWidgetSequence, touchId: cint, pt: QPoint): QTest_QTouchEventWidgetSequence {.header:headerFile, importcpp:"#.move(@)".} # Public
# 1 default parameters!
proc release*(this: ptr QTest_QTouchEventWidgetSequence, touchId: cint, pt: QPoint, widget: ptr QWidget): QTest_QTouchEventWidgetSequence {.header:headerFile, importcpp:"#.release(@)".} # Public
proc release*(this: ptr QTest_QTouchEventWidgetSequence, touchId: cint, pt: QPoint): QTest_QTouchEventWidgetSequence {.header:headerFile, importcpp:"#.release(@)".} # Public
proc stationary*(this: ptr QTest_QTouchEventWidgetSequence, touchId: cint): QTest_QTouchEventWidgetSequence {.header:headerFile, importcpp:"#.stationary(@)".} # Public
# 1 default parameters!
proc commit*(this: ptr QTest_QTouchEventWidgetSequence, processEvents: bool): bool {.header:headerFile, importcpp:"#.commit(@)".} # Public
proc commit*(this: ptr QTest_QTouchEventWidgetSequence): bool {.header:headerFile, importcpp:"#.commit(@)".} # Public

export qtestsupport_gui
export qpoint
export qwidget
