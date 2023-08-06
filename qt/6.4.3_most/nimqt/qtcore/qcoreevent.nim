const headerFile* = "QtCore/qcoreevent.h"

type
    # Enums found in the C++ code
    # Global
    QEvent_Type* {.header:headerFile,importcpp:"QEvent::Type".} = enum None = 0, Timer = 0x1, MouseButtonPress = 0x2, MouseButtonRelease = 0x3, 
        MouseButtonDblClick = 0x4, MouseMove = 0x5, KeyPress = 0x6, KeyRelease = 0x7, FocusIn = 0x8, 
        FocusOut = 0x9, Enter = 0xa, Leave = 0xb, Paint = 0xc, Move = 0xd, 
        Resize = 0xe, Create = 0xf, Destroy = 0x10, Show = 0x11, Hide = 0x12, 
        Close = 0x13, Quit = 0x14, ParentChange = 0x15, ThreadChange = 0x16, FocusAboutToChange = 0x17, 
        WindowActivate = 0x18, WindowDeactivate = 0x19, ShowToParent = 0x1a, HideToParent = 0x1b, Wheel = 0x1f, 
        WindowTitleChange = 0x21, WindowIconChange = 0x22, ApplicationWindowIconChange = 0x23, ApplicationFontChange = 0x24, ApplicationLayoutDirectionChange = 0x25, 
        ApplicationPaletteChange = 0x26, PaletteChange = 0x27, Clipboard = 0x28, Speech = 0x2a, MetaCall = 0x2b, 
        SockAct = 0x32, ShortcutOverride = 0x33, DeferredDelete = 0x34, DragEnter = 0x3c, DragMove = 0x3d, 
        DragLeave = 0x3e, Drop = 0x3f, DragResponse = 0x40, ChildAdded = 0x44, ChildPolished = 0x45, 
        ChildRemoved = 0x47, ShowWindowRequest = 0x49, PolishRequest = 0x4a, Polish = 0x4b, LayoutRequest = 0x4c, 
        UpdateRequest = 0x4d, UpdateLater = 0x4e, EmbeddingControl = 0x4f, ActivateControl = 0x50, DeactivateControl = 0x51, 
        ContextMenu = 0x52, InputMethod = 0x53, TabletMove = 0x57, LocaleChange = 0x58, LanguageChange = 0x59, 
        LayoutDirectionChange = 0x5a, Style = 0x5b, TabletPress = 0x5c, TabletRelease = 0x5d, OkRequest = 0x5e, 
        HelpRequest = 0x5f, IconDrag = 0x60, FontChange = 0x61, EnabledChange = 0x62, ActivationChange = 0x63, 
        StyleChange = 0x64, IconTextChange = 0x65, ModifiedChange = 0x66, WindowBlocked = 0x67, WindowUnblocked = 0x68, 
        WindowStateChange = 0x69, ReadOnlyChange = 0x6a, MouseTrackingChange = 0x6d, ToolTip = 0x6e, WhatsThis = 0x6f, 
        StatusTip = 0x70, ActionChanged = 0x71, ActionAdded = 0x72, ActionRemoved = 0x73, FileOpen = 0x74, 
        Shortcut = 0x75, WhatsThisClicked = 0x76, ToolBarChange = 0x78, ApplicationActivate = 0x79, ApplicationDeactivate = 0x7a, 
        QueryWhatsThis = 0x7b, EnterWhatsThisMode = 0x7c, LeaveWhatsThisMode = 0x7d, ZOrderChange = 0x7e, HoverEnter = 0x7f, 
        HoverLeave = 0x80, HoverMove = 0x81, ParentAboutToChange = 0x83, WinEventAct = 0x84, AcceptDropsChange = 0x98, 
        ZeroTimerEvent = 0x9a, GraphicsSceneMouseMove = 0x9b, GraphicsSceneMousePress = 0x9c, GraphicsSceneMouseRelease = 0x9d, GraphicsSceneMouseDoubleClick = 0x9e, 
        GraphicsSceneContextMenu = 0x9f, GraphicsSceneHoverEnter = 0xa0, GraphicsSceneHoverMove = 0xa1, GraphicsSceneHoverLeave = 0xa2, GraphicsSceneHelp = 0xa3, 
        GraphicsSceneDragEnter = 0xa4, GraphicsSceneDragMove = 0xa5, GraphicsSceneDragLeave = 0xa6, GraphicsSceneDrop = 0xa7, GraphicsSceneWheel = 0xa8, 
        KeyboardLayoutChange = 0xa9, DynamicPropertyChange = 0xaa, TabletEnterProximity = 0xab, TabletLeaveProximity = 0xac, NonClientAreaMouseMove = 0xad, 
        NonClientAreaMouseButtonPress = 0xae, NonClientAreaMouseButtonRelease = 0xaf, NonClientAreaMouseButtonDblClick = 0xb0, MacSizeChange = 0xb1, ContentsRectChange = 0xb2, 
        MacGLWindowChange = 0xb3, FutureCallOut = 0xb4, GraphicsSceneResize = 0xb5, GraphicsSceneMove = 0xb6, CursorChange = 0xb7, 
        ToolTipChange = 0xb8, NetworkReplyUpdated = 0xb9, GrabMouse = 0xba, UngrabMouse = 0xbb, GrabKeyboard = 0xbc, 
        UngrabKeyboard = 0xbd, StateMachineSignal = 0xc0, StateMachineWrapped = 0xc1, TouchBegin = 0xc2, TouchUpdate = 0xc3, 
        TouchEnd = 0xc4, NativeGesture = 0xc5, Gesture = 0xc6, RequestSoftwareInputPanel = 0xc7, CloseSoftwareInputPanel = 0xc8, 
        GestureOverride = 0xca, WinIdChange = 0xcb, ScrollPrepare = 0xcc, Scroll = 0xcd, Expose = 0xce, 
        InputMethodQuery = 0xcf, OrientationChange = 0xd0, TouchCancel = 0xd1, ThemeChange = 0xd2, SockClose = 0xd3, 
        PlatformPanel = 0xd4, StyleAnimationUpdate = 0xd5, ApplicationStateChange = 0xd6, WindowChangeInternal = 0xd7, ScreenChangeInternal = 0xd8, 
        PlatformSurface = 0xd9, Pointer = 0xda, TabletTrackingChange = 0xdb, GraphicsSceneLeave = 0xdc, WindowAboutToChangeInternal = 0xdd, 
        User = 0x3e8, MaxUser = 0xffff

type
    # Classes found in the C++ code
    QEvent* {.header:headerFile,importcpp:"QEvent" ,pure,inheritable.} = object
    QEvent_InputEventTag* {.header:headerFile,importcpp:"QEvent::InputEventTag" ,pure,inheritable.} = object
    QEvent_PointerEventTag* {.header:headerFile,importcpp:"QEvent::PointerEventTag" ,pure,inheritable.} = object
    QEvent_SinglePointEventTag* {.header:headerFile,importcpp:"QEvent::SinglePointEventTag" ,pure,inheritable.} = object
    QTimerEvent* {.header:headerFile,importcpp:"QTimerEvent" ,pure.} = object of QEvent
    QChildEvent* {.header:headerFile,importcpp:"QChildEvent" ,pure.} = object of QEvent
    QDynamicPropertyChangeEvent* {.header:headerFile,importcpp:"QDynamicPropertyChangeEvent" ,pure.} = object of QEvent
    QDeferredDeleteEvent* {.header:headerFile,importcpp:"QDeferredDeleteEvent" ,pure.} = object of QEvent


type
    # typedefs found in the C++ code
    QTimerEvent_Type * = QEvent_Type
    QChildEvent_Type * = QEvent_Type
    QDynamicPropertyChangeEvent_Type * = QEvent_Type
    QDeferredDeleteEvent_Type * = QEvent_Type

# Consts
const
    # Global
    QEvent_TypeApplicationActivated* = 121 # from anonymous enum ApplicationActivate
    QEvent_TypeApplicationDeactivated* = 122 # from anonymous enum ApplicationDeactivate

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
