const headerFile* = "QtCore/qcoreevent.h"

# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}


type
    # Classes and enums found in the C++ code
    # Global
    QEvent_Type* {.header:headerFile,importcpp:"QEvent::Type".} = enum None = 0, Timer = 0x1, MouseButtonPress = 0x2, MouseButtonRelease = 0x3,
        MouseButtonDblClick = 0x4, MouseMove = 0x5, KeyPress = 0x6, KeyRelease = 0x7, FocusIn = 0x8,
        FocusOut = 0x9, FocusAboutToChange = 0xa, Enter = 0xb, Leave = 0xc, Paint = 0xd,
        Move = 0xe, Resize = 0xf, Create = 0x10, Destroy = 0x11, Show = 0x12,
        Hide = 0x13, Close = 0x14, Quit = 0x15, ParentChange = 0x16, ParentAboutToChange = 0x17,
        ThreadChange = 0x18, WindowActivate = 0x19, WindowDeactivate = 0x1a, ShowToParent = 0x1b, HideToParent = 0x1c,
        Wheel = 0x1d, WindowTitleChange = 0x1e, WindowIconChange = 0x1f, ApplicationWindowIconChange = 0x20, ApplicationFontChange = 0x21,
        ApplicationLayoutDirectionChange = 0x22, ApplicationPaletteChange = 0x23, PaletteChange = 0x24, Clipboard = 0x25, Speech = 0x26,
        MetaCall = 0x27, SockAct = 0x28, WinEventAct = 0x29, DeferredDelete = 0x2a, DragEnter = 0x2b,
        DragMove = 0x2c, DragLeave = 0x2d, Drop = 0x2e, DragResponse = 0x2f, ChildAdded = 0x30,
        ChildPolished = 0x31, ChildRemoved = 0x32, ShowWindowRequest = 0x33, PolishRequest = 0x34, Polish = 0x35,
        LayoutRequest = 0x36, UpdateRequest = 0x37, UpdateLater = 0x38, EmbeddingControl = 0x39, ActivateControl = 0x3a,
        DeactivateControl = 0x3b, ContextMenu = 0x3c, InputMethod = 0x3d, TabletMove = 0x3e, LocaleChange = 0x3f,
        LanguageChange = 0x40, LayoutDirectionChange = 0x41, Style = 0x42, TabletPress = 0x43, TabletRelease = 0x44,
        OkRequest = 0x45, HelpRequest = 0x46, IconDrag = 0x47, FontChange = 0x48, EnabledChange = 0x49,
        ActivationChange = 0x4a, StyleChange = 0x4b, IconTextChange = 0x4c, ModifiedChange = 0x4d, MouseTrackingChange = 0x4e,
        WindowBlocked = 0x4f, WindowUnblocked = 0x50, WindowStateChange = 0x51, ReadOnlyChange = 0x52, ToolTip = 0x53,
        WhatsThis = 0x54, StatusTip = 0x55, ActionChanged = 0x56, ActionAdded = 0x57, ActionRemoved = 0x58,
        FileOpen = 0x59, Shortcut = 0x5a, ShortcutOverride = 0x5b, WhatsThisClicked = 0x5c, ToolBarChange = 0x5d,
        ApplicationActivate = 0x5e, ApplicationActivated = 0x5f, ApplicationDeactivate = 0x60, ApplicationDeactivated = 0x61, QueryWhatsThis = 0x62,
        EnterWhatsThisMode = 0x63, LeaveWhatsThisMode = 0x64, ZOrderChange = 0x65, HoverEnter = 0x66, HoverLeave = 0x67,
        HoverMove = 0x68, AcceptDropsChange = 0x69, ZeroTimerEvent = 0x6a, GraphicsSceneMouseMove = 0x6b, GraphicsSceneMousePress = 0x6c,
        GraphicsSceneMouseRelease = 0x6d, GraphicsSceneMouseDoubleClick = 0x6e, GraphicsSceneContextMenu = 0x6f, GraphicsSceneHoverEnter = 0x70, GraphicsSceneHoverMove = 0x71,
        GraphicsSceneHoverLeave = 0x72, GraphicsSceneHelp = 0x73, GraphicsSceneDragEnter = 0x74, GraphicsSceneDragMove = 0x75, GraphicsSceneDragLeave = 0x76,
        GraphicsSceneDrop = 0x77, GraphicsSceneWheel = 0x78, GraphicsSceneLeave = 0x79, KeyboardLayoutChange = 0x7a, DynamicPropertyChange = 0x7b,
        TabletEnterProximity = 0x7c, TabletLeaveProximity = 0x7d, NonClientAreaMouseMove = 0x7e, NonClientAreaMouseButtonPress = 0x7f, NonClientAreaMouseButtonRelease = 0x80,
        NonClientAreaMouseButtonDblClick = 0x81, MacSizeChange = 0x82, ContentsRectChange = 0x83, MacGLWindowChange = 0x84, FutureCallOut = 0x85,
        GraphicsSceneResize = 0x86, GraphicsSceneMove = 0x87, CursorChange = 0x88, ToolTipChange = 0x89, NetworkReplyUpdated = 0x8a,
        GrabMouse = 0x8b, UngrabMouse = 0x8c, GrabKeyboard = 0x8d, UngrabKeyboard = 0x8e, StateMachineSignal = 0x8f,
        StateMachineWrapped = 0x90, TouchBegin = 0x91, TouchUpdate = 0x92, TouchEnd = 0x93, NativeGesture = 0x94,
        RequestSoftwareInputPanel = 0x95, CloseSoftwareInputPanel = 0x96, WinIdChange = 0x97, Gesture = 0x98, GestureOverride = 0x99,
        ScrollPrepare = 0x9a, Scroll = 0x9b, Expose = 0x9c, InputMethodQuery = 0x9d, OrientationChange = 0x9e,
        TouchCancel = 0x9f, ThemeChange = 0xa0, SockClose = 0xa1, PlatformPanel = 0xa2, StyleAnimationUpdate = 0xa3,
        ApplicationStateChange = 0xa4, WindowChangeInternal = 0xa5, ScreenChangeInternal = 0xa6, PlatformSurface = 0xa7, Pointer = 0xa8,
        TabletTrackingChange = 0xa9, WindowAboutToChangeInternal = 0xaa, User = 0xab, MaxUser = 0xac
    QEvent* {.header:headerFile,importcpp:"QEvent" ,pure.} = object {.inheritable.}
    QEvent_InputEventTag* {.header:headerFile,importcpp:"QEvent::InputEventTag" ,pure.} = object {.inheritable.}
    QEvent_PointerEventTag* {.header:headerFile,importcpp:"QEvent::PointerEventTag" ,pure.} = object {.inheritable.}
    QEvent_SinglePointEventTag* {.header:headerFile,importcpp:"QEvent::SinglePointEventTag" ,pure.} = object {.inheritable.}
    QTimerEvent* {.header:headerFile,importcpp:"QTimerEvent" ,pure.} = object of QEvent
    QChildEvent* {.header:headerFile,importcpp:"QChildEvent" ,pure.} = object of QEvent
    QDynamicPropertyChangeEvent* {.header:headerFile,importcpp:"QDynamicPropertyChangeEvent" ,pure.} = object of QEvent
    QDeferredDeleteEvent* {.header:headerFile,importcpp:"QDeferredDeleteEvent" ,pure.} = object of QEvent
{.push warning[Deprecated]: on.}


type
    # typedefs found in the C++ code
    QTimerEvent_Type * = QEvent_Type
    QChildEvent_Type * = QEvent_Type
    QDynamicPropertyChangeEvent_Type * = QEvent_Type
    QDeferredDeleteEvent_Type * = QEvent_Type

# Stuff for class QEvent

# Public constructors for QEvent
proc newQEvent*(`type`: QEvent_Type): ptr QEvent {. header:headerFile, importcpp:"new QEvent(@)" .} #

# Public methods for QEvent
proc qt_check_for_QGADGET_macro*(this: ptr QEvent) {.header:headerFile, importcpp:"#.qt_check_for_QGADGET_macro(@)".} # Public
proc `type`*(this: ptr QEvent): QEvent_Type {.header:headerFile, importcpp:"#.type(@)".} # Public
proc spontaneous*(this: ptr QEvent): bool {.header:headerFile, importcpp:"#.spontaneous(@)".} # Public
proc setAccepted*(this: ptr QEvent, accepted: bool) {.header:headerFile, importcpp:"#.setAccepted(@)".} # Public
proc isAccepted*(this: ptr QEvent): bool {.header:headerFile, importcpp:"#.isAccepted(@)".} # Public
proc accept*(this: ptr QEvent) {.header:headerFile, importcpp:"#.accept(@)".} # Public
proc ignore*(this: ptr QEvent) {.header:headerFile, importcpp:"#.ignore(@)".} # Public
proc isInputEvent*(this: ptr QEvent): bool {.header:headerFile, importcpp:"#.isInputEvent(@)".} # Public
proc isPointerEvent*(this: ptr QEvent): bool {.header:headerFile, importcpp:"#.isPointerEvent(@)".} # Public
proc isSinglePointEvent*(this: ptr QEvent): bool {.header:headerFile, importcpp:"#.isSinglePointEvent(@)".} # Public
proc static_QEvent_registerEventType*(hint: cint): cint {.header:headerFile, importcpp:"QEvent::registerEventType(@)".} # Public static
proc clone*(this: ptr QEvent): ptr QEvent {.header:headerFile, importcpp:"#.clone(@)".} # Public
# Stuff for class QTimerEvent

# Public constructors for QTimerEvent
proc newQTimerEvent*(timerId: cint): ptr QTimerEvent {. header:headerFile, importcpp:"new QTimerEvent(@)" .} #

# Public methods for QTimerEvent
proc clone*(this: ptr QTimerEvent): ptr QTimerEvent {.header:headerFile, importcpp:"#.clone(@)".} # Public
proc timerId*(this: ptr QTimerEvent): cint {.header:headerFile, importcpp:"#.timerId(@)".} # Public
# Stuff for class QChildEvent

# Public constructors for QChildEvent
import nimqt/qtcore/qobject
proc newQChildEvent*(`type`: QEvent_Type, child: ptr QObject): ptr QChildEvent {. header:headerFile, importcpp:"new QChildEvent(@)" .} #

# Public methods for QChildEvent
proc clone*(this: ptr QChildEvent): ptr QChildEvent {.header:headerFile, importcpp:"#.clone(@)".} # Public
proc child*(this: ptr QChildEvent): ptr QObject {.header:headerFile, importcpp:"#.child(@)".} # Public
proc added*(this: ptr QChildEvent): bool {.header:headerFile, importcpp:"#.added(@)".} # Public
proc polished*(this: ptr QChildEvent): bool {.header:headerFile, importcpp:"#.polished(@)".} # Public
proc removed*(this: ptr QChildEvent): bool {.header:headerFile, importcpp:"#.removed(@)".} # Public
# Stuff for class QDynamicPropertyChangeEvent

# Public constructors for QDynamicPropertyChangeEvent
import nimqt/qtcore/qbytearray
proc newQDynamicPropertyChangeEvent*(name: QByteArray): ptr QDynamicPropertyChangeEvent {. header:headerFile, importcpp:"new QDynamicPropertyChangeEvent(@)" .} #

# Public methods for QDynamicPropertyChangeEvent
proc clone*(this: ptr QDynamicPropertyChangeEvent): ptr QDynamicPropertyChangeEvent {.header:headerFile, importcpp:"#.clone(@)".} # Public
proc propertyName*(this: ptr QDynamicPropertyChangeEvent): QByteArray {.header:headerFile, importcpp:"#.propertyName(@)".} # Public
# Stuff for class QDeferredDeleteEvent

# Public constructors for QDeferredDeleteEvent
proc newQDeferredDeleteEvent*(): ptr QDeferredDeleteEvent {. header:headerFile, importcpp:"new QDeferredDeleteEvent(@)" .} #

# Public methods for QDeferredDeleteEvent
proc clone*(this: ptr QDeferredDeleteEvent): ptr QDeferredDeleteEvent {.header:headerFile, importcpp:"#.clone(@)".} # Public
proc loopLevel*(this: ptr QDeferredDeleteEvent): cint {.header:headerFile, importcpp:"#.loopLevel(@)".} # Public

export qbytearray
export qobject