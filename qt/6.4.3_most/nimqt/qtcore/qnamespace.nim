const headerFile* = "QtCore/qnamespace.h"

type
    # Enums found in the C++ code
    # Global
    Qt_GlobalColor* {.header:headerFile,importcpp:"Qt::GlobalColor".} = enum color0 = 0, color1 = 0x1, black = 0x2, white = 0x3, 
        darkGray = 0x4, gray = 0x5, lightGray = 0x6, red = 0x7, green = 0x8, 
        blue = 0x9, cyan = 0xa, magenta = 0xb, yellow = 0xc, darkRed = 0xd, 
        darkGreen = 0xe, darkBlue = 0xf, darkCyan = 0x10, darkMagenta = 0x11, darkYellow = 0x12, 
        transparent = 0x13
    Qt_MouseButton* {.header:headerFile,importcpp:"Qt::MouseButton".} = enum MouseButtonMask = -1, NoButton = 0, LeftButton = 0x1, RightButton = 0x2, 
        MiddleButton = 0x4, BackButton = 0x8, ForwardButton = 0x10, TaskButton = 0x20, ExtraButton4 = 0x40, 
        ExtraButton5 = 0x80, ExtraButton6 = 0x100, ExtraButton7 = 0x200, ExtraButton8 = 0x400, ExtraButton9 = 0x800, 
        ExtraButton10 = 0x1000, ExtraButton11 = 0x2000, ExtraButton12 = 0x4000, ExtraButton13 = 0x8000, ExtraButton14 = 0x10000, 
        ExtraButton15 = 0x20000, ExtraButton16 = 0x40000, ExtraButton17 = 0x80000, ExtraButton18 = 0x100000, ExtraButton19 = 0x200000, 
        ExtraButton20 = 0x400000, ExtraButton21 = 0x800000, ExtraButton22 = 0x1000000, ExtraButton23 = 0x2000000, ExtraButton24 = 0x4000000, 
        AllButtons = 0x7ffffff
    Qt_Orientation* {.header:headerFile,importcpp:"Qt::Orientation".} = enum Horizontal = 0x1, Vertical = 0x2
    Qt_FocusPolicy* {.header:headerFile,importcpp:"Qt::FocusPolicy".} = enum NoFocus = 0, TabFocus = 0x1, ClickFocus = 0x2, StrongFocus = 0xb, 
        WheelFocus = 0xf
    Qt_TabFocusBehavior* {.header:headerFile,importcpp:"Qt::TabFocusBehavior".} = enum NoTabFocus = 0, TabFocusTextControls = 0x1, TabFocusListControls = 0x2, TabFocusAllControls = 0xff
    Qt_SortOrder* {.header:headerFile,importcpp:"Qt::SortOrder".} = enum AscendingOrder = 0, DescendingOrder = 0x1
    Qt_SplitBehaviorFlags* {.header:headerFile,importcpp:"Qt::SplitBehaviorFlags".} = enum KeepEmptyParts = 0, SkipEmptyParts = 0x1
    Qt_TileRule* {.header:headerFile,importcpp:"Qt::TileRule".} = enum StretchTile = 0, RepeatTile = 0x1, RoundTile = 0x2
    Qt_AlignmentFlag* {.header:headerFile,importcpp:"Qt::AlignmentFlag".} = enum AlignLeft = 0x1, AlignRight = 0x2, AlignHCenter = 0x4, AlignJustify = 0x8, 
        AlignAbsolute = 0x10, AlignHorizontal_Mask = 0x1f, AlignTop = 0x20, AlignBottom = 0x40, AlignVCenter = 0x80, 
        AlignCenter = 0x84, AlignBaseline = 0x100, AlignVertical_Mask = 0x1e0
    Qt_TextFlag* {.header:headerFile,importcpp:"Qt::TextFlag".} = enum TextSingleLine = 0x100, TextDontClip = 0x200, TextExpandTabs = 0x400, TextShowMnemonic = 0x800, 
        TextWordWrap = 0x1000, TextWrapAnywhere = 0x2000, TextDontPrint = 0x4000, TextHideMnemonic = 0x8000, TextJustificationForced = 0x10000, 
        TextForceLeftToRight = 0x20000, TextForceRightToLeft = 0x40000, TextLongestVariant = 0x80000, TextIncludeTrailingSpaces = 0x8000000
    Qt_TextElideMode* {.header:headerFile,importcpp:"Qt::TextElideMode".} = enum ElideLeft = 0, ElideRight = 0x1, ElideMiddle = 0x2, ElideNone = 0x3
    Qt_WhiteSpaceMode* {.header:headerFile,importcpp:"Qt::WhiteSpaceMode".} = enum WhiteSpaceModeUndefined = -1, WhiteSpaceNormal = 0, WhiteSpacePre = 0x1, WhiteSpaceNoWrap = 0x2
    Qt_HitTestAccuracy* {.header:headerFile,importcpp:"Qt::HitTestAccuracy".} = enum ExactHit = 0, FuzzyHit = 0x1
    Qt_WindowType* {.header:headerFile,importcpp:"Qt::WindowType".} = enum WindowFullscreenButtonHint = -2147483648, Widget = 0, Window = 0x1, Dialog = 0x3, 
        Sheet = 0x5, Drawer = 0x7, Popup = 0x9, Tool = 0xb, ToolTip = 0xd, 
        SplashScreen = 0xf, Desktop = 0x11, SubWindow = 0x12, ForeignWindow = 0x21, CoverWindow = 0x41, 
        WindowType_Mask = 0xff, MSWindowsFixedSizeDialogHint = 0x100, MSWindowsOwnDC = 0x200, BypassWindowManagerHint = 0x400, FramelessWindowHint = 0x800, 
        WindowTitleHint = 0x1000, WindowSystemMenuHint = 0x2000, WindowMinimizeButtonHint = 0x4000, WindowMaximizeButtonHint = 0x8000, WindowMinMaxButtonsHint = 0xc000, 
        WindowContextHelpButtonHint = 0x10000, WindowShadeButtonHint = 0x20000, WindowStaysOnTopHint = 0x40000, WindowTransparentForInput = 0x80000, WindowOverridesSystemGestures = 0x100000, 
        WindowDoesNotAcceptFocus = 0x200000, MaximizeUsingFullscreenGeometryHint = 0x400000, CustomizeWindowHint = 0x2000000, WindowStaysOnBottomHint = 0x4000000, WindowCloseButtonHint = 0x8000000, 
        MacWindowToolBarButtonHint = 0x10000000, BypassGraphicsProxyWidget = 0x20000000, NoDropShadowWindowHint = 0x40000000
    Qt_WindowState* {.header:headerFile,importcpp:"Qt::WindowState".} = enum WindowNoState = 0, WindowMinimized = 0x1, WindowMaximized = 0x2, WindowFullScreen = 0x4, 
        WindowActive = 0x8
    Qt_ApplicationState* {.header:headerFile,importcpp:"Qt::ApplicationState".} = enum ApplicationSuspended = 0, ApplicationHidden = 0x1, ApplicationInactive = 0x2, ApplicationActive = 0x4
    Qt_ScreenOrientation* {.header:headerFile,importcpp:"Qt::ScreenOrientation".} = enum PrimaryOrientation = 0, PortraitOrientation = 0x1, LandscapeOrientation = 0x2, InvertedPortraitOrientation = 0x4, 
        InvertedLandscapeOrientation = 0x8
    Qt_WidgetAttribute* {.header:headerFile,importcpp:"Qt::WidgetAttribute".} = enum WA_Disabled = 0, WA_UnderMouse = 0x1, WA_MouseTracking = 0x2, WA_OpaquePaintEvent = 0x4, 
        WA_StaticContents = 0x5, WA_LaidOut = 0x7, WA_PaintOnScreen = 0x8, WA_NoSystemBackground = 0x9, WA_UpdatesDisabled = 0xa, 
        WA_Mapped = 0xb, WA_InputMethodEnabled = 0xe, WA_WState_Visible = 0xf, WA_WState_Hidden = 0x10, WA_ForceDisabled = 0x20, 
        WA_KeyCompression = 0x21, WA_PendingMoveEvent = 0x22, WA_PendingResizeEvent = 0x23, WA_SetPalette = 0x24, WA_SetFont = 0x25, 
        WA_SetCursor = 0x26, WA_NoChildEventsFromChildren = 0x27, WA_WindowModified = 0x29, WA_Resized = 0x2a, WA_Moved = 0x2b, 
        WA_PendingUpdate = 0x2c, WA_InvalidSize = 0x2d, WA_CustomWhatsThis = 0x2f, WA_LayoutOnEntireRect = 0x30, WA_OutsideWSRange = 0x31, 
        WA_GrabbedShortcut = 0x32, WA_TransparentForMouseEvents = 0x33, WA_PaintUnclipped = 0x34, WA_SetWindowIcon = 0x35, WA_NoMouseReplay = 0x36, 
        WA_DeleteOnClose = 0x37, WA_RightToLeft = 0x38, WA_SetLayoutDirection = 0x39, WA_NoChildEventsForParent = 0x3a, WA_ForceUpdatesDisabled = 0x3b, 
        WA_WState_Created = 0x3c, WA_WState_CompressKeys = 0x3d, WA_WState_InPaintEvent = 0x3e, WA_WState_Reparented = 0x3f, WA_WState_ConfigPending = 0x40, 
        WA_WState_Polished = 0x42, WA_WState_OwnSizePolicy = 0x44, WA_WState_ExplicitShowHide = 0x45, WA_ShowModal = 0x46, WA_MouseNoMask = 0x47, 
        WA_NoMousePropagation = 0x49, WA_Hover = 0x4a, WA_InputMethodTransparent = 0x4b, WA_QuitOnClose = 0x4c, WA_KeyboardFocusChange = 0x4d, 
        WA_AcceptDrops = 0x4e, WA_DropSiteRegistered = 0x4f, WA_WindowPropagation = 0x50, WA_NoX11EventCompression = 0x51, WA_TintedBackground = 0x52, 
        WA_X11OpenGLOverlay = 0x53, WA_AlwaysShowToolTips = 0x54, WA_MacOpaqueSizeGrip = 0x55, WA_SetStyle = 0x56, WA_SetLocale = 0x57, 
        WA_MacShowFocusRect = 0x58, WA_MacNormalSize = 0x59, WA_MacSmallSize = 0x5a, WA_MacMiniSize = 0x5b, WA_LayoutUsesWidgetRect = 0x5c, 
        WA_StyledBackground = 0x5d, WA_CanHostQMdiSubWindowTitleBar = 0x5f, WA_MacAlwaysShowToolWindow = 0x60, WA_StyleSheet = 0x61, WA_ShowWithoutActivating = 0x62, 
        WA_X11BypassTransientForHint = 0x63, WA_NativeWindow = 0x64, WA_DontCreateNativeAncestors = 0x65, WA_DontShowOnScreen = 0x67, WA_X11NetWmWindowTypeDesktop = 0x68, 
        WA_X11NetWmWindowTypeDock = 0x69, WA_X11NetWmWindowTypeToolBar = 0x6a, WA_X11NetWmWindowTypeMenu = 0x6b, WA_X11NetWmWindowTypeUtility = 0x6c, WA_X11NetWmWindowTypeSplash = 0x6d, 
        WA_X11NetWmWindowTypeDialog = 0x6e, WA_X11NetWmWindowTypeDropDownMenu = 0x6f, WA_X11NetWmWindowTypePopupMenu = 0x70, WA_X11NetWmWindowTypeToolTip = 0x71, WA_X11NetWmWindowTypeNotification = 0x72, 
        WA_X11NetWmWindowTypeCombo = 0x73, WA_X11NetWmWindowTypeDND = 0x74, WA_SetWindowModality = 0x76, WA_WState_WindowOpacitySet = 0x77, WA_TranslucentBackground = 0x78, 
        WA_AcceptTouchEvents = 0x79, WA_WState_AcceptedTouchBeginEvent = 0x7a, WA_TouchPadAcceptSingleTouchEvents = 0x7b, WA_X11DoNotAcceptFocus = 0x7e, WA_AlwaysStackOnTop = 0x80, 
        WA_TabletTracking = 0x81, WA_ContentsMarginsRespectsSafeArea = 0x82, WA_StyleSheetTarget = 0x83, WA_AttributeCount = 0x84
    Qt_ApplicationAttribute* {.header:headerFile,importcpp:"Qt::ApplicationAttribute".} = enum AA_DontShowIconsInMenus = 0x2, AA_NativeWindows = 0x3, AA_DontCreateNativeWidgetSiblings = 0x4, AA_PluginApplication = 0x5, 
        AA_DontUseNativeMenuBar = 0x6, AA_MacDontSwapCtrlAndMeta = 0x7, AA_Use96Dpi = 0x8, AA_DisableNativeVirtualKeyboard = 0x9, AA_SynthesizeTouchForUnhandledMouseEvents = 0xb, 
        AA_SynthesizeMouseForUnhandledTouchEvents = 0xc, AA_UseHighDpiPixmaps = 0xd, AA_ForceRasterWidgets = 0xe, AA_UseDesktopOpenGL = 0xf, AA_UseOpenGLES = 0x10, 
        AA_UseSoftwareOpenGL = 0x11, AA_ShareOpenGLContexts = 0x12, AA_SetPalette = 0x13, AA_EnableHighDpiScaling = 0x14, AA_DisableHighDpiScaling = 0x15, 
        AA_UseStyleSheetPropagationInWidgetStyles = 0x16, AA_DontUseNativeDialogs = 0x17, AA_SynthesizeMouseForUnhandledTabletEvents = 0x18, AA_CompressHighFrequencyEvents = 0x19, AA_DontCheckOpenGLContextThreadAffinity = 0x1a, 
        AA_DisableShaderDiskCache = 0x1b, AA_DontShowShortcutsInContextMenus = 0x1c, AA_CompressTabletEvents = 0x1d, AA_DisableSessionManager = 0x1f, AA_AttributeCount = 0x20
    Qt_ImageConversionFlag* {.header:headerFile,importcpp:"Qt::ImageConversionFlag".} = enum AutoColor = 0, MonoOnly = 0x2, ColorMode_Mask = 0x3, OrderedAlphaDither = 0x4, 
        DiffuseAlphaDither = 0x8, AlphaDither_Mask = 0xc, OrderedDither = 0x10, ThresholdDither = 0x20, Dither_Mask = 0x30, 
        PreferDither = 0x40, AvoidDither = 0x80, DitherMode_Mask = 0xc0, NoOpaqueDetection = 0x100, NoFormatConversion = 0x200
    Qt_BGMode* {.header:headerFile,importcpp:"Qt::BGMode".} = enum TransparentMode = 0, OpaqueMode = 0x1
    Qt_Key* {.header:headerFile,importcpp:"Qt::Key".} = enum Key_Space = 0x20, Key_Exclam = 0x21, Key_QuoteDbl = 0x22, Key_NumberSign = 0x23, 
        Key_Dollar = 0x24, Key_Percent = 0x25, Key_Ampersand = 0x26, Key_Apostrophe = 0x27, Key_ParenLeft = 0x28, 
        Key_ParenRight = 0x29, Key_Asterisk = 0x2a, Key_Plus = 0x2b, Key_Comma = 0x2c, Key_Minus = 0x2d, 
        Key_Period = 0x2e, Key_Slash = 0x2f, Key_0 = 0x30, Key_1 = 0x31, Key_2 = 0x32, 
        Key_3 = 0x33, Key_4 = 0x34, Key_5 = 0x35, Key_6 = 0x36, Key_7 = 0x37, 
        Key_8 = 0x38, Key_9 = 0x39, Key_Colon = 0x3a, Key_Semicolon = 0x3b, Key_Less = 0x3c, 
        Key_Equal = 0x3d, Key_Greater = 0x3e, Key_Question = 0x3f, Key_At = 0x40, Key_A = 0x41, 
        Key_B = 0x42, Key_C = 0x43, Key_D = 0x44, Key_E = 0x45, Key_F = 0x46, 
        Key_G = 0x47, Key_H = 0x48, Key_I = 0x49, Key_J = 0x4a, Key_K = 0x4b, 
        Key_L = 0x4c, Key_M = 0x4d, Key_N = 0x4e, Key_O = 0x4f, Key_P = 0x50, 
        Key_Q = 0x51, Key_R = 0x52, Key_S = 0x53, Key_T = 0x54, Key_U = 0x55, 
        Key_V = 0x56, Key_W = 0x57, Key_X = 0x58, Key_Y = 0x59, Key_Z = 0x5a, 
        Key_BracketLeft = 0x5b, Key_Backslash = 0x5c, Key_BracketRight = 0x5d, Key_AsciiCircum = 0x5e, Key_Underscore = 0x5f, 
        Key_QuoteLeft = 0x60, Key_BraceLeft = 0x7b, Key_Bar = 0x7c, Key_BraceRight = 0x7d, Key_AsciiTilde = 0x7e, 
        Key_nobreakspace = 0xa0, Key_exclamdown = 0xa1, Key_cent = 0xa2, Key_sterling = 0xa3, Key_currency = 0xa4, 
        Key_yen = 0xa5, Key_brokenbar = 0xa6, Key_section = 0xa7, Key_diaeresis = 0xa8, Key_copyright = 0xa9, 
        Key_ordfeminine = 0xaa, Key_guillemotleft = 0xab, Key_notsign = 0xac, Key_hyphen = 0xad, Key_registered = 0xae, 
        Key_macron = 0xaf, Key_degree = 0xb0, Key_plusminus = 0xb1, Key_twosuperior = 0xb2, Key_threesuperior = 0xb3, 
        Key_acute = 0xb4, Key_mu = 0xb5, Key_paragraph = 0xb6, Key_periodcentered = 0xb7, Key_cedilla = 0xb8, 
        Key_onesuperior = 0xb9, Key_masculine = 0xba, Key_guillemotright = 0xbb, Key_onequarter = 0xbc, Key_onehalf = 0xbd, 
        Key_threequarters = 0xbe, Key_questiondown = 0xbf, Key_Agrave = 0xc0, Key_Aacute = 0xc1, Key_Acircumflex = 0xc2, 
        Key_Atilde = 0xc3, Key_Adiaeresis = 0xc4, Key_Aring = 0xc5, Key_AE = 0xc6, Key_Ccedilla = 0xc7, 
        Key_Egrave = 0xc8, Key_Eacute = 0xc9, Key_Ecircumflex = 0xca, Key_Ediaeresis = 0xcb, Key_Igrave = 0xcc, 
        Key_Iacute = 0xcd, Key_Icircumflex = 0xce, Key_Idiaeresis = 0xcf, Key_ETH = 0xd0, Key_Ntilde = 0xd1, 
        Key_Ograve = 0xd2, Key_Oacute = 0xd3, Key_Ocircumflex = 0xd4, Key_Otilde = 0xd5, Key_Odiaeresis = 0xd6, 
        Key_multiply = 0xd7, Key_Ooblique = 0xd8, Key_Ugrave = 0xd9, Key_Uacute = 0xda, Key_Ucircumflex = 0xdb, 
        Key_Udiaeresis = 0xdc, Key_Yacute = 0xdd, Key_THORN = 0xde, Key_ssharp = 0xdf, Key_division = 0xf7, 
        Key_ydiaeresis = 0xff, Key_Escape = 0x1000000, Key_Tab = 0x1000001, Key_Backtab = 0x1000002, Key_Backspace = 0x1000003, 
        Key_Return = 0x1000004, Key_Enter = 0x1000005, Key_Insert = 0x1000006, Key_Delete = 0x1000007, Key_Pause = 0x1000008, 
        Key_Print = 0x1000009, Key_SysReq = 0x100000a, Key_Clear = 0x100000b, Key_Home = 0x1000010, Key_End = 0x1000011, 
        Key_Left = 0x1000012, Key_Up = 0x1000013, Key_Right = 0x1000014, Key_Down = 0x1000015, Key_PageUp = 0x1000016, 
        Key_PageDown = 0x1000017, Key_Shift = 0x1000020, Key_Control = 0x1000021, Key_Meta = 0x1000022, Key_Alt = 0x1000023, 
        Key_CapsLock = 0x1000024, Key_NumLock = 0x1000025, Key_ScrollLock = 0x1000026, Key_F1 = 0x1000030, Key_F2 = 0x1000031, 
        Key_F3 = 0x1000032, Key_F4 = 0x1000033, Key_F5 = 0x1000034, Key_F6 = 0x1000035, Key_F7 = 0x1000036, 
        Key_F8 = 0x1000037, Key_F9 = 0x1000038, Key_F10 = 0x1000039, Key_F11 = 0x100003a, Key_F12 = 0x100003b, 
        Key_F13 = 0x100003c, Key_F14 = 0x100003d, Key_F15 = 0x100003e, Key_F16 = 0x100003f, Key_F17 = 0x1000040, 
        Key_F18 = 0x1000041, Key_F19 = 0x1000042, Key_F20 = 0x1000043, Key_F21 = 0x1000044, Key_F22 = 0x1000045, 
        Key_F23 = 0x1000046, Key_F24 = 0x1000047, Key_F25 = 0x1000048, Key_F26 = 0x1000049, Key_F27 = 0x100004a, 
        Key_F28 = 0x100004b, Key_F29 = 0x100004c, Key_F30 = 0x100004d, Key_F31 = 0x100004e, Key_F32 = 0x100004f, 
        Key_F33 = 0x1000050, Key_F34 = 0x1000051, Key_F35 = 0x1000052, Key_Super_L = 0x1000053, Key_Super_R = 0x1000054, 
        Key_Menu = 0x1000055, Key_Hyper_L = 0x1000056, Key_Hyper_R = 0x1000057, Key_Help = 0x1000058, Key_Direction_L = 0x1000059, 
        Key_Direction_R = 0x1000060, Key_Back = 0x1000061, Key_Forward = 0x1000062, Key_Stop = 0x1000063, Key_Refresh = 0x1000064, 
        Key_VolumeDown = 0x1000070, Key_VolumeMute = 0x1000071, Key_VolumeUp = 0x1000072, Key_BassBoost = 0x1000073, Key_BassUp = 0x1000074, 
        Key_BassDown = 0x1000075, Key_TrebleUp = 0x1000076, Key_TrebleDown = 0x1000077, Key_MediaPlay = 0x1000080, Key_MediaStop = 0x1000081, 
        Key_MediaPrevious = 0x1000082, Key_MediaNext = 0x1000083, Key_MediaRecord = 0x1000084, Key_MediaPause = 0x1000085, Key_MediaTogglePlayPause = 0x1000086, 
        Key_HomePage = 0x1000090, Key_Favorites = 0x1000091, Key_Search = 0x1000092, Key_Standby = 0x1000093, Key_OpenUrl = 0x1000094, 
        Key_LaunchMail = 0x10000a0, Key_LaunchMedia = 0x10000a1, Key_Launch0 = 0x10000a2, Key_Launch1 = 0x10000a3, Key_Launch2 = 0x10000a4, 
        Key_Launch3 = 0x10000a5, Key_Launch4 = 0x10000a6, Key_Launch5 = 0x10000a7, Key_Launch6 = 0x10000a8, Key_Launch7 = 0x10000a9, 
        Key_Launch8 = 0x10000aa, Key_Launch9 = 0x10000ab, Key_LaunchA = 0x10000ac, Key_LaunchB = 0x10000ad, Key_LaunchC = 0x10000ae, 
        Key_LaunchD = 0x10000af, Key_LaunchE = 0x10000b0, Key_LaunchF = 0x10000b1, Key_MonBrightnessUp = 0x10000b2, Key_MonBrightnessDown = 0x10000b3, 
        Key_KeyboardLightOnOff = 0x10000b4, Key_KeyboardBrightnessUp = 0x10000b5, Key_KeyboardBrightnessDown = 0x10000b6, Key_PowerOff = 0x10000b7, Key_WakeUp = 0x10000b8, 
        Key_Eject = 0x10000b9, Key_ScreenSaver = 0x10000ba, Key_WWW = 0x10000bb, Key_Memo = 0x10000bc, Key_LightBulb = 0x10000bd, 
        Key_Shop = 0x10000be, Key_History = 0x10000bf, Key_AddFavorite = 0x10000c0, Key_HotLinks = 0x10000c1, Key_BrightnessAdjust = 0x10000c2, 
        Key_Finance = 0x10000c3, Key_Community = 0x10000c4, Key_AudioRewind = 0x10000c5, Key_BackForward = 0x10000c6, Key_ApplicationLeft = 0x10000c7, 
        Key_ApplicationRight = 0x10000c8, Key_Book = 0x10000c9, Key_CD = 0x10000ca, Key_Calculator = 0x10000cb, Key_ToDoList = 0x10000cc, 
        Key_ClearGrab = 0x10000cd, Key_Close = 0x10000ce, Key_Copy = 0x10000cf, Key_Cut = 0x10000d0, Key_Display = 0x10000d1, 
        Key_DOS = 0x10000d2, Key_Documents = 0x10000d3, Key_Excel = 0x10000d4, Key_Explorer = 0x10000d5, Key_Game = 0x10000d6, 
        Key_Go = 0x10000d7, Key_iTouch = 0x10000d8, Key_LogOff = 0x10000d9, Key_Market = 0x10000da, Key_Meeting = 0x10000db, 
        Key_MenuKB = 0x10000dc, Key_MenuPB = 0x10000dd, Key_MySites = 0x10000de, Key_News = 0x10000df, Key_OfficeHome = 0x10000e0, 
        Key_Option = 0x10000e1, Key_Paste = 0x10000e2, Key_Phone = 0x10000e3, Key_Calendar = 0x10000e4, Key_Reply = 0x10000e5, 
        Key_Reload = 0x10000e6, Key_RotateWindows = 0x10000e7, Key_RotationPB = 0x10000e8, Key_RotationKB = 0x10000e9, Key_Save = 0x10000ea, 
        Key_Send = 0x10000eb, Key_Spell = 0x10000ec, Key_SplitScreen = 0x10000ed, Key_Support = 0x10000ee, Key_TaskPane = 0x10000ef, 
        Key_Terminal = 0x10000f0, Key_Tools = 0x10000f1, Key_Travel = 0x10000f2, Key_Video = 0x10000f3, Key_Word = 0x10000f4, 
        Key_Xfer = 0x10000f5, Key_ZoomIn = 0x10000f6, Key_ZoomOut = 0x10000f7, Key_Away = 0x10000f8, Key_Messenger = 0x10000f9, 
        Key_WebCam = 0x10000fa, Key_MailForward = 0x10000fb, Key_Pictures = 0x10000fc, Key_Music = 0x10000fd, Key_Battery = 0x10000fe, 
        Key_Bluetooth = 0x10000ff, Key_WLAN = 0x1000100, Key_UWB = 0x1000101, Key_AudioForward = 0x1000102, Key_AudioRepeat = 0x1000103, 
        Key_AudioRandomPlay = 0x1000104, Key_Subtitle = 0x1000105, Key_AudioCycleTrack = 0x1000106, Key_Time = 0x1000107, Key_Hibernate = 0x1000108, 
        Key_View = 0x1000109, Key_TopMenu = 0x100010a, Key_PowerDown = 0x100010b, Key_Suspend = 0x100010c, Key_ContrastAdjust = 0x100010d, 
        Key_LaunchG = 0x100010e, Key_LaunchH = 0x100010f, Key_TouchpadToggle = 0x1000110, Key_TouchpadOn = 0x1000111, Key_TouchpadOff = 0x1000112, 
        Key_MicMute = 0x1000113, Key_Red = 0x1000114, Key_Green = 0x1000115, Key_Yellow = 0x1000116, Key_Blue = 0x1000117, 
        Key_ChannelUp = 0x1000118, Key_ChannelDown = 0x1000119, Key_Guide = 0x100011a, Key_Info = 0x100011b, Key_Settings = 0x100011c, 
        Key_MicVolumeUp = 0x100011d, Key_MicVolumeDown = 0x100011e, Key_New = 0x1000120, Key_Open = 0x1000121, Key_Find = 0x1000122, 
        Key_Undo = 0x1000123, Key_Redo = 0x1000124, Key_AltGr = 0x1001103, Key_Multi_key = 0x1001120, Key_Kanji = 0x1001121, 
        Key_Muhenkan = 0x1001122, Key_Henkan = 0x1001123, Key_Romaji = 0x1001124, Key_Hiragana = 0x1001125, Key_Katakana = 0x1001126, 
        Key_Hiragana_Katakana = 0x1001127, Key_Zenkaku = 0x1001128, Key_Hankaku = 0x1001129, Key_Zenkaku_Hankaku = 0x100112a, Key_Touroku = 0x100112b, 
        Key_Massyo = 0x100112c, Key_Kana_Lock = 0x100112d, Key_Kana_Shift = 0x100112e, Key_Eisu_Shift = 0x100112f, Key_Eisu_toggle = 0x1001130, 
        Key_Hangul = 0x1001131, Key_Hangul_Start = 0x1001132, Key_Hangul_End = 0x1001133, Key_Hangul_Hanja = 0x1001134, Key_Hangul_Jamo = 0x1001135, 
        Key_Hangul_Romaja = 0x1001136, Key_Codeinput = 0x1001137, Key_Hangul_Jeonja = 0x1001138, Key_Hangul_Banja = 0x1001139, Key_Hangul_PreHanja = 0x100113a, 
        Key_Hangul_PostHanja = 0x100113b, Key_SingleCandidate = 0x100113c, Key_MultipleCandidate = 0x100113d, Key_PreviousCandidate = 0x100113e, Key_Hangul_Special = 0x100113f, 
        Key_Mode_switch = 0x100117e, Key_Dead_Grave = 0x1001250, Key_Dead_Acute = 0x1001251, Key_Dead_Circumflex = 0x1001252, Key_Dead_Tilde = 0x1001253, 
        Key_Dead_Macron = 0x1001254, Key_Dead_Breve = 0x1001255, Key_Dead_Abovedot = 0x1001256, Key_Dead_Diaeresis = 0x1001257, Key_Dead_Abovering = 0x1001258, 
        Key_Dead_Doubleacute = 0x1001259, Key_Dead_Caron = 0x100125a, Key_Dead_Cedilla = 0x100125b, Key_Dead_Ogonek = 0x100125c, Key_Dead_Iota = 0x100125d, 
        Key_Dead_Voiced_Sound = 0x100125e, Key_Dead_Semivoiced_Sound = 0x100125f, Key_Dead_Belowdot = 0x1001260, Key_Dead_Hook = 0x1001261, Key_Dead_Horn = 0x1001262, 
        Key_Dead_Stroke = 0x1001263, Key_Dead_Abovecomma = 0x1001264, Key_Dead_Abovereversedcomma = 0x1001265, Key_Dead_Doublegrave = 0x1001266, Key_Dead_Belowring = 0x1001267, 
        Key_Dead_Belowmacron = 0x1001268, Key_Dead_Belowcircumflex = 0x1001269, Key_Dead_Belowtilde = 0x100126a, Key_Dead_Belowbreve = 0x100126b, Key_Dead_Belowdiaeresis = 0x100126c, 
        Key_Dead_Invertedbreve = 0x100126d, Key_Dead_Belowcomma = 0x100126e, Key_Dead_Currency = 0x100126f, Key_Dead_a0 = 0x1001280, Key_Dead_A = 0x1001281, 
        Key_Dead_e0 = 0x1001282, Key_Dead_E = 0x1001283, Key_Dead_i0 = 0x1001284, Key_Dead_I = 0x1001285, Key_Dead_o0 = 0x1001286, 
        Key_Dead_O = 0x1001287, Key_Dead_u0 = 0x1001288, Key_Dead_U = 0x1001289, Key_Dead_Small_Schwa = 0x100128a, Key_Dead_Capital_Schwa = 0x100128b, 
        Key_Dead_Greek = 0x100128c, Key_Dead_Lowline = 0x1001290, Key_Dead_Aboveverticalline = 0x1001291, Key_Dead_Belowverticalline = 0x1001292, Key_Dead_Longsolidusoverlay = 0x1001293, 
        Key_MediaLast = 0x100ffff, Key_Select = 0x1010000, Key_Yes = 0x1010001, Key_No = 0x1010002, Key_Cancel = 0x1020001, 
        Key_Printer = 0x1020002, Key_Execute = 0x1020003, Key_Sleep = 0x1020004, Key_Play = 0x1020005, Key_Zoom = 0x1020006, 
        Key_Exit = 0x102000a, Key_Context1 = 0x1100000, Key_Context2 = 0x1100001, Key_Context3 = 0x1100002, Key_Context4 = 0x1100003, 
        Key_Call = 0x1100004, Key_Hangup = 0x1100005, Key_Flip = 0x1100006, Key_ToggleCallHangup = 0x1100007, Key_VoiceDial = 0x1100008, 
        Key_LastNumberRedial = 0x1100009, Key_Camera = 0x1100020, Key_CameraFocus = 0x1100021, Key_unknown = 0x1ffffff
    Qt_KeyboardModifier* {.header:headerFile,importcpp:"Qt::KeyboardModifier".} = enum KeyboardModifierMask = -33554432, NoModifier = 0, ShiftModifier = 0x2000000, ControlModifier = 0x4000000, 
        AltModifier = 0x8000000, MetaModifier = 0x10000000, KeypadModifier = 0x20000000, GroupSwitchModifier = 0x40000000
    Qt_Modifier* {.header:headerFile,importcpp:"Qt::Modifier".} = enum MODIFIER_MASK = -33554432, SHIFT = 0x2000000, CTRL = 0x4000000, ALT = 0x8000000, 
        META = 0x10000000
    Qt_ArrowType* {.header:headerFile,importcpp:"Qt::ArrowType".} = enum NoArrow = 0, UpArrow = 0x1, DownArrow = 0x2, LeftArrow = 0x3, 
        RightArrow = 0x4
    Qt_PenStyle* {.header:headerFile,importcpp:"Qt::PenStyle".} = enum NoPen = 0, SolidLine = 0x1, DashLine = 0x2, DotLine = 0x3, 
        DashDotLine = 0x4, DashDotDotLine = 0x5, CustomDashLine = 0x6, MPenStyle = 0xf
    Qt_PenCapStyle* {.header:headerFile,importcpp:"Qt::PenCapStyle".} = enum FlatCap = 0, SquareCap = 0x10, RoundCap = 0x20, MPenCapStyle = 0x30
    Qt_PenJoinStyle* {.header:headerFile,importcpp:"Qt::PenJoinStyle".} = enum MiterJoin = 0, BevelJoin = 0x40, RoundJoin = 0x80, SvgMiterJoin = 0x100, 
        MPenJoinStyle = 0x1c0
    Qt_BrushStyle* {.header:headerFile,importcpp:"Qt::BrushStyle".} = enum NoBrush = 0, SolidPattern = 0x1, Dense1Pattern = 0x2, Dense2Pattern = 0x3, 
        Dense3Pattern = 0x4, Dense4Pattern = 0x5, Dense5Pattern = 0x6, Dense6Pattern = 0x7, Dense7Pattern = 0x8, 
        HorPattern = 0x9, VerPattern = 0xa, CrossPattern = 0xb, BDiagPattern = 0xc, FDiagPattern = 0xd, 
        DiagCrossPattern = 0xe, LinearGradientPattern = 0xf, RadialGradientPattern = 0x10, ConicalGradientPattern = 0x11, TexturePattern = 0x18
    Qt_SizeMode* {.header:headerFile,importcpp:"Qt::SizeMode".} = enum AbsoluteSize = 0, RelativeSize = 0x1
    Qt_UIEffect* {.header:headerFile,importcpp:"Qt::UIEffect".} = enum UI_General = 0, UI_AnimateMenu = 0x1, UI_FadeMenu = 0x2, UI_AnimateCombo = 0x3, 
        UI_AnimateTooltip = 0x4, UI_FadeTooltip = 0x5, UI_AnimateToolBox = 0x6
    Qt_CursorShape* {.header:headerFile,importcpp:"Qt::CursorShape".} = enum ArrowCursor = 0, UpArrowCursor = 0x1, CrossCursor = 0x2, WaitCursor = 0x3, 
        IBeamCursor = 0x4, SizeVerCursor = 0x5, SizeHorCursor = 0x6, SizeBDiagCursor = 0x7, SizeFDiagCursor = 0x8, 
        SizeAllCursor = 0x9, BlankCursor = 0xa, SplitVCursor = 0xb, SplitHCursor = 0xc, PointingHandCursor = 0xd, 
        ForbiddenCursor = 0xe, WhatsThisCursor = 0xf, BusyCursor = 0x10, OpenHandCursor = 0x11, ClosedHandCursor = 0x12, 
        DragCopyCursor = 0x13, DragMoveCursor = 0x14, DragLinkCursor = 0x15, BitmapCursor = 0x18, CustomCursor = 0x19
    Qt_TextFormat* {.header:headerFile,importcpp:"Qt::TextFormat".} = enum PlainText = 0, RichText = 0x1, AutoText = 0x2, MarkdownText = 0x3
    Qt_AspectRatioMode* {.header:headerFile,importcpp:"Qt::AspectRatioMode".} = enum IgnoreAspectRatio = 0, KeepAspectRatio = 0x1, KeepAspectRatioByExpanding = 0x2
    Qt_DockWidgetArea* {.header:headerFile,importcpp:"Qt::DockWidgetArea".} = enum NoDockWidgetArea = 0, LeftDockWidgetArea = 0x1, RightDockWidgetArea = 0x2, TopDockWidgetArea = 0x4, 
        BottomDockWidgetArea = 0x8, DockWidgetArea_Mask = 0xf
    Qt_DockWidgetAreaSizes* {.header:headerFile,importcpp:"Qt::DockWidgetAreaSizes".} = enum NDockWidgetAreas = 0x4
    Qt_ToolBarArea* {.header:headerFile,importcpp:"Qt::ToolBarArea".} = enum NoToolBarArea = 0, LeftToolBarArea = 0x1, RightToolBarArea = 0x2, TopToolBarArea = 0x4, 
        BottomToolBarArea = 0x8, ToolBarArea_Mask = 0xf
    Qt_ToolBarAreaSizes* {.header:headerFile,importcpp:"Qt::ToolBarAreaSizes".} = enum NToolBarAreas = 0x4
    Qt_DateFormat* {.header:headerFile,importcpp:"Qt::DateFormat".} = enum TextDate = 0, ISODate = 0x1, RFC2822Date = 0x8, ISODateWithMs = 0x9
    Qt_TimeSpec* {.header:headerFile,importcpp:"Qt::TimeSpec".} = enum LocalTime = 0, UTC = 0x1, OffsetFromUTC = 0x2, TimeZone = 0x3
    Qt_DayOfWeek* {.header:headerFile,importcpp:"Qt::DayOfWeek".} = enum Monday = 0x1, Tuesday = 0x2, Wednesday = 0x3, Thursday = 0x4, 
        Friday = 0x5, Saturday = 0x6, Sunday = 0x7
    Qt_ScrollBarPolicy* {.header:headerFile,importcpp:"Qt::ScrollBarPolicy".} = enum ScrollBarAsNeeded = 0, ScrollBarAlwaysOff = 0x1, ScrollBarAlwaysOn = 0x2
    Qt_CaseSensitivity* {.header:headerFile,importcpp:"Qt::CaseSensitivity".} = enum CaseInsensitive = 0, CaseSensitive = 0x1
    Qt_Corner* {.header:headerFile,importcpp:"Qt::Corner".} = enum TopLeftCorner = 0, TopRightCorner = 0x1, BottomLeftCorner = 0x2, BottomRightCorner = 0x3
    Qt_Edge* {.header:headerFile,importcpp:"Qt::Edge".} = enum TopEdge = 0x1, LeftEdge = 0x2, RightEdge = 0x4, BottomEdge = 0x8
    Qt_ConnectionType* {.header:headerFile,importcpp:"Qt::ConnectionType".} = enum AutoConnection = 0, DirectConnection = 0x1, QueuedConnection = 0x2, BlockingQueuedConnection = 0x3, 
        UniqueConnection = 0x80, SingleShotConnection = 0x100
    Qt_ShortcutContext* {.header:headerFile,importcpp:"Qt::ShortcutContext".} = enum WidgetShortcut = 0, WindowShortcut = 0x1, ApplicationShortcut = 0x2, WidgetWithChildrenShortcut = 0x3
    Qt_FillRule* {.header:headerFile,importcpp:"Qt::FillRule".} = enum OddEvenFill = 0, WindingFill = 0x1
    Qt_MaskMode* {.header:headerFile,importcpp:"Qt::MaskMode".} = enum MaskInColor = 0, MaskOutColor = 0x1
    Qt_ClipOperation* {.header:headerFile,importcpp:"Qt::ClipOperation".} = enum NoClip = 0, ReplaceClip = 0x1, IntersectClip = 0x2
    Qt_ItemSelectionMode* {.header:headerFile,importcpp:"Qt::ItemSelectionMode".} = enum ContainsItemShape = 0, IntersectsItemShape = 0x1, ContainsItemBoundingRect = 0x2, IntersectsItemBoundingRect = 0x3
    Qt_ItemSelectionOperation* {.header:headerFile,importcpp:"Qt::ItemSelectionOperation".} = enum ReplaceSelection = 0, AddToSelection = 0x1
    Qt_TransformationMode* {.header:headerFile,importcpp:"Qt::TransformationMode".} = enum FastTransformation = 0, SmoothTransformation = 0x1
    Qt_Axis* {.header:headerFile,importcpp:"Qt::Axis".} = enum XAxis = 0, YAxis = 0x1, ZAxis = 0x2
    Qt_FocusReason* {.header:headerFile,importcpp:"Qt::FocusReason".} = enum MouseFocusReason = 0, TabFocusReason = 0x1, BacktabFocusReason = 0x2, ActiveWindowFocusReason = 0x3, 
        PopupFocusReason = 0x4, ShortcutFocusReason = 0x5, MenuBarFocusReason = 0x6, OtherFocusReason = 0x7, NoFocusReason = 0x8
    Qt_ContextMenuPolicy* {.header:headerFile,importcpp:"Qt::ContextMenuPolicy".} = enum NoContextMenu = 0, DefaultContextMenu = 0x1, ActionsContextMenu = 0x2, CustomContextMenu = 0x3, 
        PreventContextMenu = 0x4
    Qt_InputMethodQuery* {.header:headerFile,importcpp:"Qt::InputMethodQuery".} = enum ImPlatformData = -2147483648, ImQueryAll = -1, ImEnabled = 0x1, ImCursorRectangle = 0x2, 
        ImFont = 0x4, ImCursorPosition = 0x8, ImSurroundingText = 0x10, ImCurrentSelection = 0x20, ImMaximumTextLength = 0x40, 
        ImAnchorPosition = 0x80, ImHints = 0x100, ImPreferredLanguage = 0x200, ImAbsolutePosition = 0x400, ImTextBeforeCursor = 0x800, 
        ImTextAfterCursor = 0x1000, ImEnterKeyType = 0x2000, ImAnchorRectangle = 0x4000, ImQueryInput = 0x40ba, ImInputItemClipRectangle = 0x8000, 
        ImReadOnly = 0x10000
    Qt_InputMethodHint* {.header:headerFile,importcpp:"Qt::InputMethodHint".} = enum ImhExclusiveInputMask = -65536, ImhNone = 0, ImhHiddenText = 0x1, ImhSensitiveData = 0x2, 
        ImhNoAutoUppercase = 0x4, ImhPreferNumbers = 0x8, ImhPreferUppercase = 0x10, ImhPreferLowercase = 0x20, ImhNoPredictiveText = 0x40, 
        ImhDate = 0x80, ImhTime = 0x100, ImhPreferLatin = 0x200, ImhMultiLine = 0x400, ImhNoEditMenu = 0x800, 
        ImhNoTextHandles = 0x1000, ImhDigitsOnly = 0x10000, ImhFormattedNumbersOnly = 0x20000, ImhUppercaseOnly = 0x40000, ImhLowercaseOnly = 0x80000, 
        ImhDialableCharactersOnly = 0x100000, ImhEmailCharactersOnly = 0x200000, ImhUrlCharactersOnly = 0x400000, ImhLatinOnly = 0x800000
    Qt_EnterKeyType* {.header:headerFile,importcpp:"Qt::EnterKeyType".} = enum EnterKeyDefault = 0, EnterKeyReturn = 0x1, EnterKeyDone = 0x2, EnterKeyGo = 0x3, 
        EnterKeySend = 0x4, EnterKeySearch = 0x5, EnterKeyNext = 0x6, EnterKeyPrevious = 0x7
    Qt_ToolButtonStyle* {.header:headerFile,importcpp:"Qt::ToolButtonStyle".} = enum ToolButtonIconOnly = 0, ToolButtonTextOnly = 0x1, ToolButtonTextBesideIcon = 0x2, ToolButtonTextUnderIcon = 0x3, 
        ToolButtonFollowStyle = 0x4
    Qt_LayoutDirection* {.header:headerFile,importcpp:"Qt::LayoutDirection".} = enum LeftToRight = 0, RightToLeft = 0x1, LayoutDirectionAuto = 0x2
    Qt_AnchorPoint* {.header:headerFile,importcpp:"Qt::AnchorPoint".} = enum AnchorLeft = 0, AnchorHorizontalCenter = 0x1, AnchorRight = 0x2, AnchorTop = 0x3, 
        AnchorVerticalCenter = 0x4, AnchorBottom = 0x5
    Qt_FindChildOption* {.header:headerFile,importcpp:"Qt::FindChildOption".} = enum FindDirectChildrenOnly = 0, FindChildrenRecursively = 0x1
    Qt_DropAction* {.header:headerFile,importcpp:"Qt::DropAction".} = enum IgnoreAction = 0, CopyAction = 0x1, MoveAction = 0x2, LinkAction = 0x4, 
        ActionMask = 0xff, TargetMoveAction = 0x8002
    Qt_CheckState* {.header:headerFile,importcpp:"Qt::CheckState".} = enum Unchecked = 0, PartiallyChecked = 0x1, Checked = 0x2
    Qt_ItemDataRole* {.header:headerFile,importcpp:"Qt::ItemDataRole".} = enum DisplayRole = 0, DecorationRole = 0x1, EditRole = 0x2, ToolTipRole = 0x3, 
        StatusTipRole = 0x4, WhatsThisRole = 0x5, FontRole = 0x6, TextAlignmentRole = 0x7, BackgroundRole = 0x8, 
        ForegroundRole = 0x9, CheckStateRole = 0xa, AccessibleTextRole = 0xb, AccessibleDescriptionRole = 0xc, SizeHintRole = 0xd, 
        InitialSortOrderRole = 0xe, DisplayPropertyRole = 0x1b, DecorationPropertyRole = 0x1c, ToolTipPropertyRole = 0x1d, StatusTipPropertyRole = 0x1e, 
        WhatsThisPropertyRole = 0x1f, UserRole = 0x100
    Qt_ItemFlag* {.header:headerFile,importcpp:"Qt::ItemFlag".} = enum NoItemFlags = 0, ItemIsSelectable = 0x1, ItemIsEditable = 0x2, ItemIsDragEnabled = 0x4, 
        ItemIsDropEnabled = 0x8, ItemIsUserCheckable = 0x10, ItemIsEnabled = 0x20, ItemIsAutoTristate = 0x40, ItemNeverHasChildren = 0x80, 
        ItemIsUserTristate = 0x100
    Qt_MatchFlag* {.header:headerFile,importcpp:"Qt::MatchFlag".} = enum MatchExactly = 0, MatchContains = 0x1, MatchStartsWith = 0x2, MatchEndsWith = 0x3, 
        MatchRegularExpression = 0x4, MatchWildcard = 0x5, MatchFixedString = 0x8, MatchTypeMask = 0xf, MatchCaseSensitive = 0x10, 
        MatchWrap = 0x20, MatchRecursive = 0x40
    Qt_WindowModality* {.header:headerFile,importcpp:"Qt::WindowModality".} = enum NonModal = 0, WindowModal = 0x1, ApplicationModal = 0x2
    Qt_TextInteractionFlag* {.header:headerFile,importcpp:"Qt::TextInteractionFlag".} = enum NoTextInteraction = 0, TextSelectableByMouse = 0x1, TextSelectableByKeyboard = 0x2, LinksAccessibleByMouse = 0x4, 
        LinksAccessibleByKeyboard = 0x8, TextBrowserInteraction = 0xd, TextEditable = 0x10, TextEditorInteraction = 0x13
    Qt_EventPriority* {.header:headerFile,importcpp:"Qt::EventPriority".} = enum LowEventPriority = -1, NormalEventPriority = 0, HighEventPriority = 0x1
    Qt_SizeHint* {.header:headerFile,importcpp:"Qt::SizeHint".} = enum MinimumSize = 0, PreferredSize = 0x1, MaximumSize = 0x2, MinimumDescent = 0x3, 
        NSizeHints = 0x4
    Qt_WindowFrameSection* {.header:headerFile,importcpp:"Qt::WindowFrameSection".} = enum NoSection = 0, LeftSection = 0x1, TopLeftSection = 0x2, TopSection = 0x3, 
        TopRightSection = 0x4, RightSection = 0x5, BottomRightSection = 0x6, BottomSection = 0x7, BottomLeftSection = 0x8, 
        TitleBarArea = 0x9
    Qt_Initialization* {.header:headerFile,importcpp:"Qt::Initialization".} = enum Uninitialized = 0
    Qt_CoordinateSystem* {.header:headerFile,importcpp:"Qt::CoordinateSystem".} = enum DeviceCoordinates = 0, LogicalCoordinates = 0x1
    Qt_TouchPointState* {.header:headerFile,importcpp:"Qt::TouchPointState".} = enum TouchPointUnknownState = 0, TouchPointPressed = 0x1, TouchPointMoved = 0x2, TouchPointStationary = 0x4, 
        TouchPointReleased = 0x8
    Qt_GestureState* {.header:headerFile,importcpp:"Qt::GestureState".} = enum NoGesture = 0, GestureStarted = 0x1, GestureUpdated = 0x2, GestureFinished = 0x3, 
        GestureCanceled = 0x4
    Qt_GestureType* {.header:headerFile,importcpp:"Qt::GestureType".} = enum LastGestureType = -1, TapGesture = 0x1, TapAndHoldGesture = 0x2, PanGesture = 0x3, 
        PinchGesture = 0x4, SwipeGesture = 0x5, CustomGesture = 0x100
    Qt_GestureFlag* {.header:headerFile,importcpp:"Qt::GestureFlag".} = enum DontStartGestureOnChildren = 0x1, ReceivePartialGestures = 0x2, IgnoredGesturesPropagateToParent = 0x4
    Qt_NativeGestureType* {.header:headerFile,importcpp:"Qt::NativeGestureType".} = enum BeginNativeGesture = 0, EndNativeGesture = 0x1, PanNativeGesture = 0x2, ZoomNativeGesture = 0x3, 
        SmartZoomNativeGesture = 0x4, RotateNativeGesture = 0x5, SwipeNativeGesture = 0x6
    Qt_NavigationMode* {.header:headerFile,importcpp:"Qt::NavigationMode".} = enum NavigationModeNone = 0, NavigationModeKeypadTabOrder = 0x1, NavigationModeKeypadDirectional = 0x2, NavigationModeCursorAuto = 0x3, 
        NavigationModeCursorForceVisible = 0x4
    Qt_CursorMoveStyle* {.header:headerFile,importcpp:"Qt::CursorMoveStyle".} = enum LogicalMoveStyle = 0, VisualMoveStyle = 0x1
    Qt_TimerType* {.header:headerFile,importcpp:"Qt::TimerType".} = enum PreciseTimer = 0, CoarseTimer = 0x1, VeryCoarseTimer = 0x2
    Qt_ScrollPhase* {.header:headerFile,importcpp:"Qt::ScrollPhase".} = enum NoScrollPhase = 0, ScrollBegin = 0x1, ScrollUpdate = 0x2, ScrollEnd = 0x3, 
        ScrollMomentum = 0x4
    Qt_MouseEventSource* {.header:headerFile,importcpp:"Qt::MouseEventSource".} = enum MouseEventNotSynthesized = 0, MouseEventSynthesizedBySystem = 0x1, MouseEventSynthesizedByQt = 0x2, MouseEventSynthesizedByApplication = 0x3
    Qt_MouseEventFlag* {.header:headerFile,importcpp:"Qt::MouseEventFlag".} = enum NoMouseEventFlag = 0, MouseEventCreatedDoubleClick = 0x1, MouseEventFlagMask = 0xff
    Qt_ChecksumType* {.header:headerFile,importcpp:"Qt::ChecksumType".} = enum ChecksumIso3309 = 0, ChecksumItuV41 = 0x1
    Qt_HighDpiScaleFactorRoundingPolicy* {.header:headerFile,importcpp:"Qt::HighDpiScaleFactorRoundingPolicy".} = enum Unset = 0, Round = 0x1, Ceil = 0x2, Floor = 0x3, 
        RoundPreferFloor = 0x4, PassThrough = 0x5
    Qt_ReturnByValueConstant* {.header:headerFile,importcpp:"Qt::ReturnByValueConstant".} = enum ReturnByValue = 0
    QInternal_PaintDeviceFlags* {.header:headerFile,importcpp:"QInternal::PaintDeviceFlags", pure.} = enum UnknownDevice = 0, Widget = 0x1, Pixmap = 0x2, Image = 0x3, 
        Printer = 0x4, Picture = 0x5, Pbuffer = 0x6, FramebufferObject = 0x7, CustomRaster = 0x8, 
        PaintBuffer = 0xa, OpenGL = 0xb
    QInternal_RelayoutType* {.header:headerFile,importcpp:"QInternal::RelayoutType".} = enum RelayoutNormal = 0, RelayoutDragging = 0x1, RelayoutDropped = 0x2
    QInternal_DockPosition* {.header:headerFile,importcpp:"QInternal::DockPosition".} = enum LeftDock = 0, RightDock = 0x1, TopDock = 0x2, BottomDock = 0x3, 
        DockCount = 0x4
    QInternal_Callback* {.header:headerFile,importcpp:"QInternal::Callback".} = enum EventNotifyCallback = 0, LastCallback = 0x1

type
    # Classes found in the C++ code
    Qt_Disambiguated_t* {.header:headerFile,importcpp:"Qt::Disambiguated_t" ,pure,inheritable.} = object
    QInternal* {.header:headerFile,importcpp:"QInternal" ,pure,inheritable.} = object
    QKeyCombination* {.header:headerFile,importcpp:"QKeyCombination" ,pure,inheritable.} = object
import nimqt/qtcore/qflags


type
    # typedefs found in the C++ code
    Qt_MouseButtons * = QFlags[Qt_MouseButton]
    Qt_Orientations * = QFlags[Qt_Orientation]
    Qt_SplitBehavior * = QFlags[Qt_SplitBehaviorFlags]
    Qt_Alignment * = QFlags[Qt_AlignmentFlag]
    Qt_WindowFlags * = QFlags[Qt_WindowType]
    Qt_WindowStates * = QFlags[Qt_WindowState]
    Qt_ApplicationStates * = QFlags[Qt_ApplicationState]
    Qt_ScreenOrientations * = QFlags[Qt_ScreenOrientation]
    Qt_ImageConversionFlags * = QFlags[Qt_ImageConversionFlag]
    Qt_KeyboardModifiers * = QFlags[Qt_KeyboardModifier]
    Qt_Modifiers * = QFlags[Qt_Modifier]
    Qt_DockWidgetAreas * = QFlags[Qt_DockWidgetArea]
    Qt_ToolBarAreas * = QFlags[Qt_ToolBarArea]
    Qt_Edges * = QFlags[Qt_Edge]
    Qt_InputMethodQueries * = QFlags[Qt_InputMethodQuery]
    Qt_InputMethodHints * = QFlags[Qt_InputMethodHint]
    Qt_FindChildOptions * = QFlags[Qt_FindChildOption]
    Qt_DropActions * = QFlags[Qt_DropAction]
    Qt_ItemFlags * = QFlags[Qt_ItemFlag]
    Qt_MatchFlags * = QFlags[Qt_MatchFlag]
    Qt_TextInteractionFlags * = QFlags[Qt_TextInteractionFlag]
    Qt_TouchPointStates * = QFlags[Qt_TouchPointState]
    Qt_GestureFlags * = QFlags[Qt_GestureFlag]
    Qt_MouseEventFlags * = QFlags[Qt_MouseEventFlag]

# Consts
const
    # Global
    Qt_MouseButtonXButton1* = 8 # from anonymous enum BackButton
    Qt_MouseButtonExtraButton1* = 8 # from anonymous enum BackButton
    Qt_MouseButtonXButton2* = 16 # from anonymous enum ForwardButton
    Qt_MouseButtonExtraButton2* = 16 # from anonymous enum ForwardButton
    Qt_MouseButtonExtraButton3* = 32 # from anonymous enum TaskButton
    Qt_MouseButtonMaxMouseButton* = 67108864 # from anonymous enum ExtraButton24
    Qt_AlignmentFlagAlignLeading* = 1 # from anonymous enum AlignLeft
    Qt_AlignmentFlagAlignTrailing* = 2 # from anonymous enum AlignRight
    Qt_WindowTypeX11BypassWindowManagerHint* = 1024 # from anonymous enum BypassWindowManagerHint
    Qt_ImageConversionFlagThresholdAlphaDither* = 0 # from anonymous enum AutoColor
    Qt_ImageConversionFlagDiffuseDither* = 0 # from anonymous enum AutoColor
    Qt_ImageConversionFlagAutoDither* = 0 # from anonymous enum AutoColor
    Qt_ImageConversionFlagColorOnly* = 3 # from anonymous enum ColorMode_Mask
    Qt_ImageConversionFlagNoAlpha* = 12 # from anonymous enum AlphaDither_Mask
    Qt_KeyKey_Any* = 32 # from anonymous enum Key_Space
    Qt_CursorShapeLastCursor* = 21 # from anonymous enum DragLinkCursor
    Qt_DockWidgetAreaAllDockWidgetAreas* = 15 # from anonymous enum DockWidgetArea_Mask
    Qt_ToolBarAreaAllToolBarAreas* = 15 # from anonymous enum ToolBarArea_Mask

# Stuff for class Qt_Disambiguated_t

# Public constructors for Qt_Disambiguated_t
proc newQt_Disambiguated_t*(): Qt_Disambiguated_t {. header:headerFile, importcpp:"Qt_Disambiguated_t(@)", constructor .} #
# Stuff for class QInternal

# Public methods for QInternal
proc static_QInternal_activateCallbacks*(arg_0: QInternal_Callback, arg_1: ptr ptr): bool {.header:headerFile, importcpp:"QInternal::activateCallbacks(@)".} # Public static
# Stuff for class QKeyCombination

# Public constructors for QKeyCombination
proc newQKeyCombination*(key: Qt_Key): QKeyCombination {. header:headerFile, importcpp:"QKeyCombination(@)", constructor .} #
proc newQKeyCombination*(modifiers: QFlags[Qt_Modifier], key: Qt_Key): QKeyCombination {. header:headerFile, importcpp:"QKeyCombination(@)", constructor .} #
proc newQKeyCombination*(modifiers: QFlags[Qt_KeyboardModifier], key: Qt_Key): QKeyCombination {. header:headerFile, importcpp:"QKeyCombination(@)", constructor .} #

# Public methods for QKeyCombination
proc keyboardModifiers*(this: QKeyCombination): QFlags[Qt_KeyboardModifier] {.header:headerFile, importcpp:"#.keyboardModifiers(@)".} # Public
proc key*(this: QKeyCombination): Qt_Key {.header:headerFile, importcpp:"#.key(@)".} # Public
proc static_QKeyCombination_fromCombined*(combined: cint): QKeyCombination {.header:headerFile, importcpp:"QKeyCombination::fromCombined(@)".} # Public static
proc toCombined*(this: QKeyCombination): cint {.header:headerFile, importcpp:"#.toCombined(@)".} # Public
proc `<`*(this: QKeyCombination, arg_0: QKeyCombination): bool {.header:headerFile, importcpp:"#.operator<(@)".} # Public

export qflags
