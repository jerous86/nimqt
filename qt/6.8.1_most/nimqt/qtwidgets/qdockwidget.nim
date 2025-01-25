const headerFile* = "QtWidgets/qdockwidget.h"

type
    # Enums found in the C++ code
    # Global
    QDockWidget_DockWidgetFeature* {.header:headerFile,importcpp:"QDockWidget::DockWidgetFeature".} = enum NoDockWidgetFeatures = 0, DockWidgetClosable = 0x1, DockWidgetMovable = 0x2, DockWidgetFloatable = 0x4, 
        DockWidgetVerticalTitleBar = 0x8, DockWidgetFeatureMask = 0xf, Reserved = 0xff

import nimqt/qtwidgets/qwidget
type
    # Classes found in the C++ code
    QDockWidget* {.header:headerFile,importcpp:"QDockWidget" ,pure.} = object of QWidget
import nimqt/qtgui/qpaintdevice
import nimqt/qtcore/qflags


type
    # typedefs found in the C++ code
    QDockWidget_RenderFlag * = QWidget_RenderFlag
    QDockWidget_RenderFlags * = QWidget_RenderFlags
    QDockWidget_PaintDeviceMetric * = QPaintDevice_PaintDeviceMetric
    QDockWidget_DockWidgetFeatures * = QFlags[QDockWidget_DockWidgetFeature]

# Stuff for class QDockWidget

# Public constructors for QDockWidget
import nimqt/qtcore/qstring
import nimqt/qtcore/qnamespace
# 2 default parameters!
proc newQDockWidget*(title: QString, parent: ptr QWidget, flags: Qt_WindowFlags): ptr QDockWidget {. header:headerFile, importcpp:"new QDockWidget(@)" .} #
proc newQDockWidget*(title: QString, parent: ptr QWidget): ptr QDockWidget {. header:headerFile, importcpp:"new QDockWidget(@)" .} #
proc newQDockWidget*(title: QString): ptr QDockWidget {. header:headerFile, importcpp:"new QDockWidget(@)" .} #
# 2 default parameters!
proc newQDockWidget*(parent: ptr QWidget, flags: Qt_WindowFlags): ptr QDockWidget {. header:headerFile, importcpp:"new QDockWidget(@)" .} #
proc newQDockWidget*(parent: ptr QWidget): ptr QDockWidget {. header:headerFile, importcpp:"new QDockWidget(@)" .} #
proc newQDockWidget*(): ptr QDockWidget {. header:headerFile, importcpp:"new QDockWidget(@)" .} #

# Public methods for QDockWidget
# 1 default parameters!
proc static_QDockWidget_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QDockWidget::tr(@)".} # Public static
proc static_QDockWidget_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QDockWidget::tr(@)".} # Public static
proc widget*(this: ptr QDockWidget): ptr QWidget {.header:headerFile, importcpp:"#.widget(@)".} # Public
proc setWidget*(this: ptr QDockWidget, widget: ptr QWidget) {.header:headerFile, importcpp:"#.setWidget(@)".} # Public
proc setFeatures*(this: ptr QDockWidget, features: QFlags[QDockWidget_DockWidgetFeature]) {.header:headerFile, importcpp:"#.setFeatures(@)".} # Public
proc features*(this: ptr QDockWidget): QFlags[QDockWidget_DockWidgetFeature] {.header:headerFile, importcpp:"#.features(@)".} # Public
proc setFloating*(this: ptr QDockWidget, floating: bool) {.header:headerFile, importcpp:"#.setFloating(@)".} # Public
proc isFloating*(this: ptr QDockWidget): bool {.header:headerFile, importcpp:"#.isFloating(@)".} # Public
proc setAllowedAreas*(this: ptr QDockWidget, areas: Qt_DockWidgetAreas) {.header:headerFile, importcpp:"#.setAllowedAreas(@)".} # Public
proc allowedAreas*(this: ptr QDockWidget): Qt_DockWidgetAreas {.header:headerFile, importcpp:"#.allowedAreas(@)".} # Public
proc setTitleBarWidget*(this: ptr QDockWidget, widget: ptr QWidget) {.header:headerFile, importcpp:"#.setTitleBarWidget(@)".} # Public
proc titleBarWidget*(this: ptr QDockWidget): ptr QWidget {.header:headerFile, importcpp:"#.titleBarWidget(@)".} # Public
proc isAreaAllowed*(this: ptr QDockWidget, area: Qt_DockWidgetArea): bool {.header:headerFile, importcpp:"#.isAreaAllowed(@)".} # Public
import nimqt/qtgui/qaction
proc toggleViewAction*(this: ptr QDockWidget): ptr QAction {.header:headerFile, importcpp:"#.toggleViewAction(@)".} # Public
proc featuresChanged*(this: ptr QDockWidget, features: QFlags[QDockWidget_DockWidgetFeature]) {.header:headerFile, importcpp:"#.featuresChanged(@)".} # Public
proc topLevelChanged*(this: ptr QDockWidget, topLevel: bool) {.header:headerFile, importcpp:"#.topLevelChanged(@)".} # Public
proc allowedAreasChanged*(this: ptr QDockWidget, allowedAreas: Qt_DockWidgetAreas) {.header:headerFile, importcpp:"#.allowedAreasChanged(@)".} # Public
proc visibilityChanged*(this: ptr QDockWidget, visible: bool) {.header:headerFile, importcpp:"#.visibilityChanged(@)".} # Public
proc dockLocationChanged*(this: ptr QDockWidget, area: Qt_DockWidgetArea) {.header:headerFile, importcpp:"#.dockLocationChanged(@)".} # Public

# Protected methods methods for QDockWidget
import nimqt/qtcore/qcoreevent
proc changeEvent*(this: ptr QDockWidget, event: ptr QEvent) {.header:headerFile, importcpp:"#.changeEvent(@)".} # Protected
import nimqt/qtgui/qevent
proc closeEvent*(this: ptr QDockWidget, event: ptr QCloseEvent) {.header:headerFile, importcpp:"#.closeEvent(@)".} # Protected
proc paintEvent*(this: ptr QDockWidget, event: ptr QPaintEvent) {.header:headerFile, importcpp:"#.paintEvent(@)".} # Protected
proc event*(this: ptr QDockWidget, event: ptr QEvent): bool {.header:headerFile, importcpp:"#.event(@)".} # Protected

export qevent
export qstring
export qaction
export qnamespace
export qwidget
export qflags
export qpaintdevice
export qcoreevent
