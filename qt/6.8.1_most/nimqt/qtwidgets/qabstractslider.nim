const headerFile* = "QtWidgets/qabstractslider.h"

type
    # Enums found in the C++ code
    # Global
    QAbstractSlider_SliderAction* {.header:headerFile,importcpp:"QAbstractSlider::SliderAction".} = enum SliderNoAction = 0, SliderSingleStepAdd = 0x1, SliderSingleStepSub = 0x2, SliderPageStepAdd = 0x3, 
        SliderPageStepSub = 0x4, SliderToMinimum = 0x5, SliderToMaximum = 0x6, SliderMove = 0x7
    QAbstractSlider_SliderChange* {.header:headerFile,importcpp:"QAbstractSlider::SliderChange".} = enum SliderRangeChange = 0, SliderOrientationChange = 0x1, SliderStepsChange = 0x2, SliderValueChange = 0x3

import nimqt/qtwidgets/qwidget
type
    # Classes found in the C++ code
    QAbstractSlider* {.header:headerFile,importcpp:"QAbstractSlider" ,pure.} = object of QWidget
import nimqt/qtgui/qpaintdevice


type
    # typedefs found in the C++ code
    QAbstractSlider_RenderFlag * = QWidget_RenderFlag
    QAbstractSlider_RenderFlags * = QWidget_RenderFlags
    QAbstractSlider_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric

# Stuff for class QAbstractSlider

# Public constructors for QAbstractSlider
# 1 default parameters!
proc newQAbstractSlider*(parent: ptr QWidget): ptr QAbstractSlider {. header:headerFile, importcpp:"new QAbstractSlider(@)" .} #
proc newQAbstractSlider*(): ptr QAbstractSlider {. header:headerFile, importcpp:"new QAbstractSlider(@)" .} #

# Public methods for QAbstractSlider
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QAbstractSlider_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QAbstractSlider::tr(@)".} # Public static
proc static_QAbstractSlider_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QAbstractSlider::tr(@)".} # Public static
import nimqt/qtcore/qnamespace
proc orientation*(this: ptr QAbstractSlider): Qt_Orientation {.header:headerFile, importcpp:"#.orientation(@)".} # Public
proc setMinimum*(this: ptr QAbstractSlider, arg_0: cint) {.header:headerFile, importcpp:"#.setMinimum(@)".} # Public
proc minimum*(this: ptr QAbstractSlider): cint {.header:headerFile, importcpp:"#.minimum(@)".} # Public
proc setMaximum*(this: ptr QAbstractSlider, arg_0: cint) {.header:headerFile, importcpp:"#.setMaximum(@)".} # Public
proc maximum*(this: ptr QAbstractSlider): cint {.header:headerFile, importcpp:"#.maximum(@)".} # Public
proc setSingleStep*(this: ptr QAbstractSlider, arg_0: cint) {.header:headerFile, importcpp:"#.setSingleStep(@)".} # Public
proc singleStep*(this: ptr QAbstractSlider): cint {.header:headerFile, importcpp:"#.singleStep(@)".} # Public
proc setPageStep*(this: ptr QAbstractSlider, arg_0: cint) {.header:headerFile, importcpp:"#.setPageStep(@)".} # Public
proc pageStep*(this: ptr QAbstractSlider): cint {.header:headerFile, importcpp:"#.pageStep(@)".} # Public
proc setTracking*(this: ptr QAbstractSlider, enable: bool) {.header:headerFile, importcpp:"#.setTracking(@)".} # Public
proc hasTracking*(this: ptr QAbstractSlider): bool {.header:headerFile, importcpp:"#.hasTracking(@)".} # Public
proc setSliderDown*(this: ptr QAbstractSlider, arg_0: bool) {.header:headerFile, importcpp:"#.setSliderDown(@)".} # Public
proc isSliderDown*(this: ptr QAbstractSlider): bool {.header:headerFile, importcpp:"#.isSliderDown(@)".} # Public
proc setSliderPosition*(this: ptr QAbstractSlider, arg_0: cint) {.header:headerFile, importcpp:"#.setSliderPosition(@)".} # Public
proc sliderPosition*(this: ptr QAbstractSlider): cint {.header:headerFile, importcpp:"#.sliderPosition(@)".} # Public
proc setInvertedAppearance*(this: ptr QAbstractSlider, arg_0: bool) {.header:headerFile, importcpp:"#.setInvertedAppearance(@)".} # Public
proc invertedAppearance*(this: ptr QAbstractSlider): bool {.header:headerFile, importcpp:"#.invertedAppearance(@)".} # Public
proc setInvertedControls*(this: ptr QAbstractSlider, arg_0: bool) {.header:headerFile, importcpp:"#.setInvertedControls(@)".} # Public
proc invertedControls*(this: ptr QAbstractSlider): bool {.header:headerFile, importcpp:"#.invertedControls(@)".} # Public
proc value*(this: ptr QAbstractSlider): cint {.header:headerFile, importcpp:"#.value(@)".} # Public
proc triggerAction*(this: ptr QAbstractSlider, action: QAbstractSlider_SliderAction) {.header:headerFile, importcpp:"#.triggerAction(@)".} # Public
proc setValue*(this: ptr QAbstractSlider, arg_0: cint) {.header:headerFile, importcpp:"#.setValue(@)".} # Public
proc setOrientation*(this: ptr QAbstractSlider, arg_0: Qt_Orientation) {.header:headerFile, importcpp:"#.setOrientation(@)".} # Public
proc setRange*(this: ptr QAbstractSlider, min: cint, max: cint) {.header:headerFile, importcpp:"#.setRange(@)".} # Public
proc valueChanged*(this: ptr QAbstractSlider, value: cint) {.header:headerFile, importcpp:"#.valueChanged(@)".} # Public
proc sliderPressed*(this: ptr QAbstractSlider) {.header:headerFile, importcpp:"#.sliderPressed(@)".} # Public
proc sliderMoved*(this: ptr QAbstractSlider, position: cint) {.header:headerFile, importcpp:"#.sliderMoved(@)".} # Public
proc sliderReleased*(this: ptr QAbstractSlider) {.header:headerFile, importcpp:"#.sliderReleased(@)".} # Public
proc rangeChanged*(this: ptr QAbstractSlider, min: cint, max: cint) {.header:headerFile, importcpp:"#.rangeChanged(@)".} # Public
proc actionTriggered*(this: ptr QAbstractSlider, action: cint) {.header:headerFile, importcpp:"#.actionTriggered(@)".} # Public

# Protected methods methods for QAbstractSlider
import nimqt/qtcore/qcoreevent
proc event*(this: ptr QAbstractSlider, e: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Protected
# 2 default parameters!
proc setRepeatAction*(this: ptr QAbstractSlider, action: QAbstractSlider_SliderAction, thresholdTime: cint, repeatTime: cint) {.header:headerFile, importcpp:"#.setRepeatAction(@)".} # Protected
proc setRepeatAction*(this: ptr QAbstractSlider, action: QAbstractSlider_SliderAction, thresholdTime: cint) {.header:headerFile, importcpp:"#.setRepeatAction(@)".} # Protected
proc setRepeatAction*(this: ptr QAbstractSlider, action: QAbstractSlider_SliderAction) {.header:headerFile, importcpp:"#.setRepeatAction(@)".} # Protected
proc repeatAction*(this: ptr QAbstractSlider): QAbstractSlider_SliderAction {.header:headerFile, importcpp:"#.repeatAction(@)".} # Protected
proc sliderChange*(this: ptr QAbstractSlider, change: QAbstractSlider_SliderChange) {.header:headerFile, importcpp:"#.sliderChange(@)".} # Protected
import nimqt/qtgui/qevent
proc keyPressEvent*(this: ptr QAbstractSlider, ev: ptr QKeyEvent) {.header:headerFile, importcpp:"#.keyPressEvent(@)".} # Protected
proc timerEvent*(this: ptr QAbstractSlider, arg_0: ptr QTimerEvent) {.header:headerFile, importcpp:"#.timerEvent(@)".} # Protected
proc wheelEvent*(this: ptr QAbstractSlider, e: ptr QWheelEvent) {.header:headerFile, importcpp:"#.wheelEvent(@)".} # Protected
proc changeEvent*(this: ptr QAbstractSlider, e: ptr QEvent) {.header:headerFile, importcpp:"#.changeEvent(@)".} # Protected

export qevent
export qstring
export qnamespace
export qwidget
export qpaintdevice
export qcoreevent
