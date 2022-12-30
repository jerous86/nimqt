const headerFile* = "QtCore/qnamespace.h"

# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}


type
    # Classes and enums found in the C++ code
    # Global
    Qt_GlobalColor* {.header:headerFile,importcpp:"Qt::GlobalColor".} = enum color0 = 0, color1 = 0x1, black = 0x2, white = 0x3, 
        darkGray = 0x4, gray = 0x5, lightGray = 0x6, red = 0x7, green = 0x8, 
        blue = 0x9, cyan = 0xa, magenta = 0xb, yellow = 0xc, darkRed = 0xd, 
        darkGreen = 0xe, darkBlue = 0xf, darkCyan = 0x10, darkMagenta = 0x11, darkYellow = 0x12, 
        transparent = 0x13
    Qt_MouseButton* {.header:headerFile,importcpp:"Qt::MouseButton".} = enum NoButton = 0, LeftButton = 0x1, RightButton = 0x2, MiddleButton = 0x3, 
        BackButton = 0x4, XButton1 = 0x5, ExtraButton1 = 0x6, ForwardButton = 0x7, XButton2 = 0x8, 
        ExtraButton2 = 0x9, TaskButton = 0xa, ExtraButton3 = 0xb, ExtraButton4 = 0xc, ExtraButton5 = 0xd, 
        ExtraButton6 = 0xe, ExtraButton7 = 0xf, ExtraButton8 = 0x10, ExtraButton9 = 0x11, ExtraButton10 = 0x12, 
        ExtraButton11 = 0x13, ExtraButton12 = 0x14, ExtraButton13 = 0x15, ExtraButton14 = 0x16, ExtraButton15 = 0x17, 
        ExtraButton16 = 0x18, ExtraButton17 = 0x19, ExtraButton18 = 0x1a, ExtraButton19 = 0x1b, ExtraButton20 = 0x1c, 
        ExtraButton21 = 0x1d, ExtraButton22 = 0x1e, ExtraButton23 = 0x1f, ExtraButton24 = 0x20, AllButtons = 0x21, 
        MaxMouseButton = 0x22, MouseButtonMask = 0x23
    Qt_Orientation* {.header:headerFile,importcpp:"Qt::Orientation".} = enum Horizontal = 0, Vertical = 0x1
    Qt_FocusPolicy* {.header:headerFile,importcpp:"Qt::FocusPolicy".} = enum NoFocus = 0, TabFocus = 0x1, ClickFocus = 0x2, StrongFocus = 0x3, 
        WheelFocus = 0x4
    Qt_TabFocusBehavior* {.header:headerFile,importcpp:"Qt::TabFocusBehavior".} = enum NoTabFocus = 0, TabFocusTextControls = 0x1, TabFocusListControls = 0x2, TabFocusAllControls = 0x3
    Qt_SortOrder* {.header:headerFile,importcpp:"Qt::SortOrder".} = enum AscendingOrder = 0, DescendingOrder = 0x1
    Qt_SplitBehaviorFlags* {.header:headerFile,importcpp:"Qt::SplitBehaviorFlags".} = enum KeepEmptyParts = 0, SkipEmptyParts = 0x1
    Qt_TileRule* {.header:headerFile,importcpp:"Qt::TileRule".} = enum StretchTile = 0, RepeatTile = 0x1, RoundTile = 0x2
    Qt_AlignmentFlag* {.header:headerFile,importcpp:"Qt::AlignmentFlag".} = enum AlignLeft = 0, AlignLeading = 0x1, AlignRight = 0x2, AlignTrailing = 0x3, 
        AlignHCenter = 0x4, AlignJustify = 0x5, AlignAbsolute = 0x6, AlignHorizontal_Mask = 0x7, AlignTop = 0x8, 
        AlignBottom = 0x9, AlignVCenter = 0xa, AlignBaseline = 0xb, AlignVertical_Mask = 0xc, AlignCenter = 0xd
    Qt_TextFlag* {.header:headerFile,importcpp:"Qt::TextFlag".} = enum TextSingleLine = 0, TextDontClip = 0x1, TextExpandTabs = 0x2, TextShowMnemonic = 0x3, 
        TextWordWrap = 0x4, TextWrapAnywhere = 0x5, TextDontPrint = 0x6, TextIncludeTrailingSpaces = 0x7, TextHideMnemonic = 0x8, 
        TextJustificationForced = 0x9, TextForceLeftToRight = 0xa, TextForceRightToLeft = 0xb, TextLongestVariant = 0xc
    Qt_TextElideMode* {.header:headerFile,importcpp:"Qt::TextElideMode".} = enum ElideLeft = 0, ElideRight = 0x1, ElideMiddle = 0x2, ElideNone = 0x3
    Qt_WhiteSpaceMode* {.header:headerFile,importcpp:"Qt::WhiteSpaceMode".} = enum WhiteSpaceNormal = 0, WhiteSpacePre = 0x1, WhiteSpaceNoWrap = 0x2, WhiteSpaceModeUndefined = 0x3
    Qt_HitTestAccuracy* {.header:headerFile,importcpp:"Qt::HitTestAccuracy".} = enum ExactHit = 0, FuzzyHit = 0x1
    Qt_WindowType* {.header:headerFile,importcpp:"Qt::WindowType".} = enum Widget = 0, Window = 0x1, Dialog = 0x2, Sheet = 0x3, 
        Drawer = 0x4, Popup = 0x5, Tool = 0x6, ToolTip = 0x7, SplashScreen = 0x8, 
        Desktop = 0x9, SubWindow = 0xa, ForeignWindow = 0xb, CoverWindow = 0xc, WindowType_Mask = 0xd, 
        MSWindowsFixedSizeDialogHint = 0xe, MSWindowsOwnDC = 0xf, BypassWindowManagerHint = 0x10, X11BypassWindowManagerHint = 0x11, FramelessWindowHint = 0x12, 
        WindowTitleHint = 0x13, WindowSystemMenuHint = 0x14, WindowMinimizeButtonHint = 0x15, WindowMaximizeButtonHint = 0x16, WindowMinMaxButtonsHint = 0x17, 
        WindowContextHelpButtonHint = 0x18, WindowShadeButtonHint = 0x19, WindowStaysOnTopHint = 0x1a, WindowTransparentForInput = 0x1b, WindowOverridesSystemGestures = 0x1c, 
        WindowDoesNotAcceptFocus = 0x1d, MaximizeUsingFullscreenGeometryHint = 0x1e, CustomizeWindowHint = 0x1f, WindowStaysOnBottomHint = 0x20, WindowCloseButtonHint = 0x21, 
        MacWindowToolBarButtonHint = 0x22, BypassGraphicsProxyWidget = 0x23, NoDropShadowWindowHint = 0x24, WindowFullscreenButtonHint = 0x25
    Qt_WindowState* {.header:headerFile,importcpp:"Qt::WindowState".} = enum WindowNoState = 0, WindowMinimized = 0x1, WindowMaximized = 0x2, WindowFullScreen = 0x3, 
        WindowActive = 0x4
    Qt_ApplicationState* {.header:headerFile,importcpp:"Qt::ApplicationState".} = enum ApplicationSuspended = 0, ApplicationHidden = 0x1, ApplicationInactive = 0x2, ApplicationActive = 0x3
    Qt_ScreenOrientation* {.header:headerFile,importcpp:"Qt::ScreenOrientation".} = enum PrimaryOrientation = 0, PortraitOrientation = 0x1, LandscapeOrientation = 0x2, InvertedPortraitOrientation = 0x3, 
        InvertedLandscapeOrientation = 0x4
    Qt_WidgetAttribute* {.header:headerFile,importcpp:"Qt::WidgetAttribute".} = enum WA_Disabled = 0, WA_UnderMouse = 0x1, WA_MouseTracking = 0x2, WA_OpaquePaintEvent = 0x3, 
        WA_StaticContents = 0x4, WA_LaidOut = 0x5, WA_PaintOnScreen = 0x6, WA_NoSystemBackground = 0x7, WA_UpdatesDisabled = 0x8, 
        WA_Mapped = 0x9, WA_InputMethodEnabled = 0xa, WA_WState_Visible = 0xb, WA_WState_Hidden = 0xc, WA_ForceDisabled = 0xd, 
        WA_KeyCompression = 0xe, WA_PendingMoveEvent = 0xf, WA_PendingResizeEvent = 0x10, WA_SetPalette = 0x11, WA_SetFont = 0x12, 
        WA_SetCursor = 0x13, WA_NoChildEventsFromChildren = 0x14, WA_WindowModified = 0x15, WA_Resized = 0x16, WA_Moved = 0x17, 
        WA_PendingUpdate = 0x18, WA_InvalidSize = 0x19, WA_CustomWhatsThis = 0x1a, WA_LayoutOnEntireRect = 0x1b, WA_OutsideWSRange = 0x1c, 
        WA_GrabbedShortcut = 0x1d, WA_TransparentForMouseEvents = 0x1e, WA_PaintUnclipped = 0x1f, WA_SetWindowIcon = 0x20, WA_NoMouseReplay = 0x21, 
        WA_DeleteOnClose = 0x22, WA_RightToLeft = 0x23, WA_SetLayoutDirection = 0x24, WA_NoChildEventsForParent = 0x25, WA_ForceUpdatesDisabled = 0x26, 
        WA_WState_Created = 0x27, WA_WState_CompressKeys = 0x28, WA_WState_InPaintEvent = 0x29, WA_WState_Reparented = 0x2a, WA_WState_ConfigPending = 0x2b, 
        WA_WState_Polished = 0x2c, WA_WState_OwnSizePolicy = 0x2d, WA_WState_ExplicitShowHide = 0x2e, WA_ShowModal = 0x2f, WA_MouseNoMask = 0x30, 
        WA_NoMousePropagation = 0x31, WA_Hover = 0x32, WA_InputMethodTransparent = 0x33, WA_QuitOnClose = 0x34, WA_KeyboardFocusChange = 0x35, 
        WA_AcceptDrops = 0x36, WA_DropSiteRegistered = 0x37, WA_WindowPropagation = 0x38, WA_NoX11EventCompression = 0x39, WA_TintedBackground = 0x3a, 
        WA_X11OpenGLOverlay = 0x3b, WA_AlwaysShowToolTips = 0x3c, WA_MacOpaqueSizeGrip = 0x3d, WA_SetStyle = 0x3e, WA_SetLocale = 0x3f, 
        WA_MacShowFocusRect = 0x40, WA_MacNormalSize = 0x41, WA_MacSmallSize = 0x42, WA_MacMiniSize = 0x43, WA_LayoutUsesWidgetRect = 0x44, 
        WA_StyledBackground = 0x45, WA_CanHostQMdiSubWindowTitleBar = 0x46, WA_MacAlwaysShowToolWindow = 0x47, WA_StyleSheet = 0x48, WA_ShowWithoutActivating = 0x49, 
        WA_X11BypassTransientForHint = 0x4a, WA_NativeWindow = 0x4b, WA_DontCreateNativeAncestors = 0x4c, WA_DontShowOnScreen = 0x4d, WA_X11NetWmWindowTypeDesktop = 0x4e, 
        WA_X11NetWmWindowTypeDock = 0x4f, WA_X11NetWmWindowTypeToolBar = 0x50, WA_X11NetWmWindowTypeMenu = 0x51, WA_X11NetWmWindowTypeUtility = 0x52, WA_X11NetWmWindowTypeSplash = 0x53, 
        WA_X11NetWmWindowTypeDialog = 0x54, WA_X11NetWmWindowTypeDropDownMenu = 0x55, WA_X11NetWmWindowTypePopupMenu = 0x56, WA_X11NetWmWindowTypeToolTip = 0x57, WA_X11NetWmWindowTypeNotification = 0x58, 
        WA_X11NetWmWindowTypeCombo = 0x59, WA_X11NetWmWindowTypeDND = 0x5a, WA_SetWindowModality = 0x5b, WA_WState_WindowOpacitySet = 0x5c, WA_TranslucentBackground = 0x5d, 
        WA_AcceptTouchEvents = 0x5e, WA_WState_AcceptedTouchBeginEvent = 0x5f, WA_TouchPadAcceptSingleTouchEvents = 0x60, WA_X11DoNotAcceptFocus = 0x61, WA_AlwaysStackOnTop = 0x62, 
        WA_TabletTracking = 0x63, WA_ContentsMarginsRespectsSafeArea = 0x64, WA_StyleSheetTarget = 0x65, WA_AttributeCount = 0x66
    Qt_ApplicationAttribute* {.header:headerFile,importcpp:"Qt::ApplicationAttribute".} = enum AA_DontShowIconsInMenus = 0, AA_NativeWindows = 0x1, AA_DontCreateNativeWidgetSiblings = 0x2, AA_PluginApplication = 0x3, 
        AA_DontUseNativeMenuBar = 0x4, AA_MacDontSwapCtrlAndMeta = 0x5, AA_Use96Dpi = 0x6, AA_DisableNativeVirtualKeyboard = 0x7, AA_SynthesizeTouchForUnhandledMouseEvents = 0x8, 
        AA_SynthesizeMouseForUnhandledTouchEvents = 0x9, AA_UseHighDpiPixmaps = 0xa, AA_ForceRasterWidgets = 0xb, AA_UseDesktopOpenGL = 0xc, AA_UseOpenGLES = 0xd, 
        AA_UseSoftwareOpenGL = 0xe, AA_ShareOpenGLContexts = 0xf, AA_SetPalette = 0x10, AA_EnableHighDpiScaling = 0x11, AA_DisableHighDpiScaling = 0x12, 
        AA_UseStyleSheetPropagationInWidgetStyles = 0x13, AA_DontUseNativeDialogs = 0x14, AA_SynthesizeMouseForUnhandledTabletEvents = 0x15, AA_CompressHighFrequencyEvents = 0x16, AA_DontCheckOpenGLContextThreadAffinity = 0x17, 
        AA_DisableShaderDiskCache = 0x18, AA_DontShowShortcutsInContextMenus = 0x19, AA_CompressTabletEvents = 0x1a, AA_DisableSessionManager = 0x1b, AA_AttributeCount = 0x1c
    Qt_ImageConversionFlag* {.header:headerFile,importcpp:"Qt::ImageConversionFlag".} = enum ColorMode_Mask = 0, AutoColor = 0x1, ColorOnly = 0x2, MonoOnly = 0x3, 
        AlphaDither_Mask = 0x4, ThresholdAlphaDither = 0x5, OrderedAlphaDither = 0x6, DiffuseAlphaDither = 0x7, NoAlpha = 0x8, 
        Dither_Mask = 0x9, DiffuseDither = 0xa, OrderedDither = 0xb, ThresholdDither = 0xc, DitherMode_Mask = 0xd, 
        AutoDither = 0xe, PreferDither = 0xf, AvoidDither = 0x10, NoOpaqueDetection = 0x11, NoFormatConversion = 0x12
    Qt_BGMode* {.header:headerFile,importcpp:"Qt::BGMode".} = enum TransparentMode = 0, OpaqueMode = 0x1
    Qt_Key* {.header:headerFile,importcpp:"Qt::Key".} = enum Key_Space = 0, Key_Any = 0x1, Key_Exclam = 0x2, Key_QuoteDbl = 0x3, 
        Key_NumberSign = 0x4, Key_Dollar = 0x5, Key_Percent = 0x6, Key_Ampersand = 0x7, Key_Apostrophe = 0x8, 
        Key_ParenLeft = 0x9, Key_ParenRight = 0xa, Key_Asterisk = 0xb, Key_Plus = 0xc, Key_Comma = 0xd, 
        Key_Minus = 0xe, Key_Period = 0xf, Key_Slash = 0x10, Key_0 = 0x11, Key_1 = 0x12, 
        Key_2 = 0x13, Key_3 = 0x14, Key_4 = 0x15, Key_5 = 0x16, Key_6 = 0x17, 
        Key_7 = 0x18, Key_8 = 0x19, Key_9 = 0x1a, Key_Colon = 0x1b, Key_Semicolon = 0x1c, 
        Key_Less = 0x1d, Key_Equal = 0x1e, Key_Greater = 0x1f, Key_Question = 0x20, Key_At = 0x21, 
        Key_A = 0x22, Key_B = 0x23, Key_C = 0x24, Key_D = 0x25, Key_E = 0x26, 
        Key_F = 0x27, Key_G = 0x28, Key_H = 0x29, Key_I = 0x2a, Key_J = 0x2b, 
        Key_K = 0x2c, Key_L = 0x2d, Key_M = 0x2e, Key_N = 0x2f, Key_O = 0x30, 
        Key_P = 0x31, Key_Q = 0x32, Key_R = 0x33, Key_S = 0x34, Key_T = 0x35, 
        Key_U = 0x36, Key_V = 0x37, Key_W = 0x38, Key_X = 0x39, Key_Y = 0x3a, 
        Key_Z = 0x3b, Key_BracketLeft = 0x3c, Key_Backslash = 0x3d, Key_BracketRight = 0x3e, Key_AsciiCircum = 0x3f, 
        Key_Underscore = 0x40, Key_QuoteLeft = 0x41, Key_BraceLeft = 0x42, Key_Bar = 0x43, Key_BraceRight = 0x44, 
        Key_AsciiTilde = 0x45, Key_nobreakspace = 0x46, Key_exclamdown = 0x47, Key_cent = 0x48, Key_sterling = 0x49, 
        Key_currency = 0x4a, Key_yen = 0x4b, Key_brokenbar = 0x4c, Key_section = 0x4d, Key_diaeresis = 0x4e, 
        Key_copyright = 0x4f, Key_ordfeminine = 0x50, Key_guillemotleft = 0x51, Key_notsign = 0x52, Key_hyphen = 0x53, 
        Key_registered = 0x54, Key_macron = 0x55, Key_degree = 0x56, Key_plusminus = 0x57, Key_twosuperior = 0x58, 
        Key_threesuperior = 0x59, Key_acute = 0x5a, Key_mu = 0x5b, Key_paragraph = 0x5c, Key_periodcentered = 0x5d, 
        Key_cedilla = 0x5e, Key_onesuperior = 0x5f, Key_masculine = 0x60, Key_guillemotright = 0x61, Key_onequarter = 0x62, 
        Key_onehalf = 0x63, Key_threequarters = 0x64, Key_questiondown = 0x65, Key_Agrave = 0x66, Key_Aacute = 0x67, 
        Key_Acircumflex = 0x68, Key_Atilde = 0x69, Key_Adiaeresis = 0x6a, Key_Aring = 0x6b, Key_AE = 0x6c, 
        Key_Ccedilla = 0x6d, Key_Egrave = 0x6e, Key_Eacute = 0x6f, Key_Ecircumflex = 0x70, Key_Ediaeresis = 0x71, 
        Key_Igrave = 0x72, Key_Iacute = 0x73, Key_Icircumflex = 0x74, Key_Idiaeresis = 0x75, Key_ETH = 0x76, 
        Key_Ntilde = 0x77, Key_Ograve = 0x78, Key_Oacute = 0x79, Key_Ocircumflex = 0x7a, Key_Otilde = 0x7b, 
        Key_Odiaeresis = 0x7c, Key_multiply = 0x7d, Key_Ooblique = 0x7e, Key_Ugrave = 0x7f, Key_Uacute = 0x80, 
        Key_Ucircumflex = 0x81, Key_Udiaeresis = 0x82, Key_Yacute = 0x83, Key_THORN = 0x84, Key_ssharp = 0x85, 
        Key_division = 0x86, Key_ydiaeresis = 0x87, Key_Escape = 0x88, Key_Tab = 0x89, Key_Backtab = 0x8a, 
        Key_Backspace = 0x8b, Key_Return = 0x8c, Key_Enter = 0x8d, Key_Insert = 0x8e, Key_Delete = 0x8f, 
        Key_Pause = 0x90, Key_Print = 0x91, Key_SysReq = 0x92, Key_Clear = 0x93, Key_Home = 0x94, 
        Key_End = 0x95, Key_Left = 0x96, Key_Up = 0x97, Key_Right = 0x98, Key_Down = 0x99, 
        Key_PageUp = 0x9a, Key_PageDown = 0x9b, Key_Shift = 0x9c, Key_Control = 0x9d, Key_Meta = 0x9e, 
        Key_Alt = 0x9f, Key_CapsLock = 0xa0, Key_NumLock = 0xa1, Key_ScrollLock = 0xa2, Key_F1 = 0xa3, 
        Key_F2 = 0xa4, Key_F3 = 0xa5, Key_F4 = 0xa6, Key_F5 = 0xa7, Key_F6 = 0xa8, 
        Key_F7 = 0xa9, Key_F8 = 0xaa, Key_F9 = 0xab, Key_F10 = 0xac, Key_F11 = 0xad, 
        Key_F12 = 0xae, Key_F13 = 0xaf, Key_F14 = 0xb0, Key_F15 = 0xb1, Key_F16 = 0xb2, 
        Key_F17 = 0xb3, Key_F18 = 0xb4, Key_F19 = 0xb5, Key_F20 = 0xb6, Key_F21 = 0xb7, 
        Key_F22 = 0xb8, Key_F23 = 0xb9, Key_F24 = 0xba, Key_F25 = 0xbb, Key_F26 = 0xbc, 
        Key_F27 = 0xbd, Key_F28 = 0xbe, Key_F29 = 0xbf, Key_F30 = 0xc0, Key_F31 = 0xc1, 
        Key_F32 = 0xc2, Key_F33 = 0xc3, Key_F34 = 0xc4, Key_F35 = 0xc5, Key_Super_L = 0xc6, 
        Key_Super_R = 0xc7, Key_Menu = 0xc8, Key_Hyper_L = 0xc9, Key_Hyper_R = 0xca, Key_Help = 0xcb, 
        Key_Direction_L = 0xcc, Key_Direction_R = 0xcd, Key_AltGr = 0xce, Key_Multi_key = 0xcf, Key_Codeinput = 0xd0, 
        Key_SingleCandidate = 0xd1, Key_MultipleCandidate = 0xd2, Key_PreviousCandidate = 0xd3, Key_Mode_switch = 0xd4, Key_Kanji = 0xd5, 
        Key_Muhenkan = 0xd6, Key_Henkan = 0xd7, Key_Romaji = 0xd8, Key_Hiragana = 0xd9, Key_Katakana = 0xda, 
        Key_Hiragana_Katakana = 0xdb, Key_Zenkaku = 0xdc, Key_Hankaku = 0xdd, Key_Zenkaku_Hankaku = 0xde, Key_Touroku = 0xdf, 
        Key_Massyo = 0xe0, Key_Kana_Lock = 0xe1, Key_Kana_Shift = 0xe2, Key_Eisu_Shift = 0xe3, Key_Eisu_toggle = 0xe4, 
        Key_Hangul = 0xe5, Key_Hangul_Start = 0xe6, Key_Hangul_End = 0xe7, Key_Hangul_Hanja = 0xe8, Key_Hangul_Jamo = 0xe9, 
        Key_Hangul_Romaja = 0xea, Key_Hangul_Jeonja = 0xeb, Key_Hangul_Banja = 0xec, Key_Hangul_PreHanja = 0xed, Key_Hangul_PostHanja = 0xee, 
        Key_Hangul_Special = 0xef, Key_Dead_Grave = 0xf0, Key_Dead_Acute = 0xf1, Key_Dead_Circumflex = 0xf2, Key_Dead_Tilde = 0xf3, 
        Key_Dead_Macron = 0xf4, Key_Dead_Breve = 0xf5, Key_Dead_Abovedot = 0xf6, Key_Dead_Diaeresis = 0xf7, Key_Dead_Abovering = 0xf8, 
        Key_Dead_Doubleacute = 0xf9, Key_Dead_Caron = 0xfa, Key_Dead_Cedilla = 0xfb, Key_Dead_Ogonek = 0xfc, Key_Dead_Iota = 0xfd, 
        Key_Dead_Voiced_Sound = 0xfe, Key_Dead_Semivoiced_Sound = 0xff, Key_Dead_Belowdot = 0x100, Key_Dead_Hook = 0x101, Key_Dead_Horn = 0x102, 
        Key_Dead_Stroke = 0x103, Key_Dead_Abovecomma = 0x104, Key_Dead_Abovereversedcomma = 0x105, Key_Dead_Doublegrave = 0x106, Key_Dead_Belowring = 0x107, 
        Key_Dead_Belowmacron = 0x108, Key_Dead_Belowcircumflex = 0x109, Key_Dead_Belowtilde = 0x10a, Key_Dead_Belowbreve = 0x10b, Key_Dead_Belowdiaeresis = 0x10c, 
        Key_Dead_Invertedbreve = 0x10d, Key_Dead_Belowcomma = 0x10e, Key_Dead_Currency = 0x10f, Key_Dead_a = 0x110, Key_Dead_A = 0x111, 
        Key_Dead_e = 0x112, Key_Dead_E = 0x113, Key_Dead_i = 0x114, Key_Dead_I = 0x115, Key_Dead_o = 0x116, 
        Key_Dead_O = 0x117, Key_Dead_u = 0x118, Key_Dead_U = 0x119, Key_Dead_Small_Schwa = 0x11a, Key_Dead_Capital_Schwa = 0x11b, 
        Key_Dead_Greek = 0x11c, Key_Dead_Lowline = 0x11d, Key_Dead_Aboveverticalline = 0x11e, Key_Dead_Belowverticalline = 0x11f, Key_Dead_Longsolidusoverlay = 0x120, 
        Key_Back = 0x121, Key_Forward = 0x122, Key_Stop = 0x123, Key_Refresh = 0x124, Key_VolumeDown = 0x125, 
        Key_VolumeMute = 0x126, Key_VolumeUp = 0x127, Key_BassBoost = 0x128, Key_BassUp = 0x129, Key_BassDown = 0x12a, 
        Key_TrebleUp = 0x12b, Key_TrebleDown = 0x12c, Key_MediaPlay = 0x12d, Key_MediaStop = 0x12e, Key_MediaPrevious = 0x12f, 
        Key_MediaNext = 0x130, Key_MediaRecord = 0x131, Key_MediaPause = 0x132, Key_MediaTogglePlayPause = 0x133, Key_HomePage = 0x134, 
        Key_Favorites = 0x135, Key_Search = 0x136, Key_Standby = 0x137, Key_OpenUrl = 0x138, Key_LaunchMail = 0x139, 
        Key_LaunchMedia = 0x13a, Key_Launch0 = 0x13b, Key_Launch1 = 0x13c, Key_Launch2 = 0x13d, Key_Launch3 = 0x13e, 
        Key_Launch4 = 0x13f, Key_Launch5 = 0x140, Key_Launch6 = 0x141, Key_Launch7 = 0x142, Key_Launch8 = 0x143, 
        Key_Launch9 = 0x144, Key_LaunchA = 0x145, Key_LaunchB = 0x146, Key_LaunchC = 0x147, Key_LaunchD = 0x148, 
        Key_LaunchE = 0x149, Key_LaunchF = 0x14a, Key_MonBrightnessUp = 0x14b, Key_MonBrightnessDown = 0x14c, Key_KeyboardLightOnOff = 0x14d, 
        Key_KeyboardBrightnessUp = 0x14e, Key_KeyboardBrightnessDown = 0x14f, Key_PowerOff = 0x150, Key_WakeUp = 0x151, Key_Eject = 0x152, 
        Key_ScreenSaver = 0x153, Key_WWW = 0x154, Key_Memo = 0x155, Key_LightBulb = 0x156, Key_Shop = 0x157, 
        Key_History = 0x158, Key_AddFavorite = 0x159, Key_HotLinks = 0x15a, Key_BrightnessAdjust = 0x15b, Key_Finance = 0x15c, 
        Key_Community = 0x15d, Key_AudioRewind = 0x15e, Key_BackForward = 0x15f, Key_ApplicationLeft = 0x160, Key_ApplicationRight = 0x161, 
        Key_Book = 0x162, Key_CD = 0x163, Key_Calculator = 0x164, Key_ToDoList = 0x165, Key_ClearGrab = 0x166, 
        Key_Close = 0x167, Key_Copy = 0x168, Key_Cut = 0x169, Key_Display = 0x16a, Key_DOS = 0x16b, 
        Key_Documents = 0x16c, Key_Excel = 0x16d, Key_Explorer = 0x16e, Key_Game = 0x16f, Key_Go = 0x170, 
        Key_iTouch = 0x171, Key_LogOff = 0x172, Key_Market = 0x173, Key_Meeting = 0x174, Key_MenuKB = 0x175, 
        Key_MenuPB = 0x176, Key_MySites = 0x177, Key_News = 0x178, Key_OfficeHome = 0x179, Key_Option = 0x17a, 
        Key_Paste = 0x17b, Key_Phone = 0x17c, Key_Calendar = 0x17d, Key_Reply = 0x17e, Key_Reload = 0x17f, 
        Key_RotateWindows = 0x180, Key_RotationPB = 0x181, Key_RotationKB = 0x182, Key_Save = 0x183, Key_Send = 0x184, 
        Key_Spell = 0x185, Key_SplitScreen = 0x186, Key_Support = 0x187, Key_TaskPane = 0x188, Key_Terminal = 0x189, 
        Key_Tools = 0x18a, Key_Travel = 0x18b, Key_Video = 0x18c, Key_Word = 0x18d, Key_Xfer = 0x18e, 
        Key_ZoomIn = 0x18f, Key_ZoomOut = 0x190, Key_Away = 0x191, Key_Messenger = 0x192, Key_WebCam = 0x193, 
        Key_MailForward = 0x194, Key_Pictures = 0x195, Key_Music = 0x196, Key_Battery = 0x197, Key_Bluetooth = 0x198, 
        Key_WLAN = 0x199, Key_UWB = 0x19a, Key_AudioForward = 0x19b, Key_AudioRepeat = 0x19c, Key_AudioRandomPlay = 0x19d, 
        Key_Subtitle = 0x19e, Key_AudioCycleTrack = 0x19f, Key_Time = 0x1a0, Key_Hibernate = 0x1a1, Key_View = 0x1a2, 
        Key_TopMenu = 0x1a3, Key_PowerDown = 0x1a4, Key_Suspend = 0x1a5, Key_ContrastAdjust = 0x1a6, Key_LaunchG = 0x1a7, 
        Key_LaunchH = 0x1a8, Key_TouchpadToggle = 0x1a9, Key_TouchpadOn = 0x1aa, Key_TouchpadOff = 0x1ab, Key_MicMute = 0x1ac, 
        Key_Red = 0x1ad, Key_Green = 0x1ae, Key_Yellow = 0x1af, Key_Blue = 0x1b0, Key_ChannelUp = 0x1b1, 
        Key_ChannelDown = 0x1b2, Key_Guide = 0x1b3, Key_Info = 0x1b4, Key_Settings = 0x1b5, Key_MicVolumeUp = 0x1b6, 
        Key_MicVolumeDown = 0x1b7, Key_New = 0x1b8, Key_Open = 0x1b9, Key_Find = 0x1ba, Key_Undo = 0x1bb, 
        Key_Redo = 0x1bc, Key_MediaLast = 0x1bd, Key_Select = 0x1be, Key_Yes = 0x1bf, Key_No = 0x1c0, 
        Key_Cancel = 0x1c1, Key_Printer = 0x1c2, Key_Execute = 0x1c3, Key_Sleep = 0x1c4, Key_Play = 0x1c5, 
        Key_Zoom = 0x1c6, Key_Exit = 0x1c7, Key_Context1 = 0x1c8, Key_Context2 = 0x1c9, Key_Context3 = 0x1ca, 
        Key_Context4 = 0x1cb, Key_Call = 0x1cc, Key_Hangup = 0x1cd, Key_Flip = 0x1ce, Key_ToggleCallHangup = 0x1cf, 
        Key_VoiceDial = 0x1d0, Key_LastNumberRedial = 0x1d1, Key_Camera = 0x1d2, Key_CameraFocus = 0x1d3, Key_unknown = 0x1d4
    Qt_KeyboardModifier* {.header:headerFile,importcpp:"Qt::KeyboardModifier".} = enum NoModifier = 0, ShiftModifier = 0x1, ControlModifier = 0x2, AltModifier = 0x3, 
        MetaModifier = 0x4, KeypadModifier = 0x5, GroupSwitchModifier = 0x6, KeyboardModifierMask = 0x7
    Qt_Modifier* {.header:headerFile,importcpp:"Qt::Modifier".} = enum META = 0, SHIFT = 0x1, CTRL = 0x2, ALT = 0x3, 
        MODIFIER_MASK = 0x4
    Qt_ArrowType* {.header:headerFile,importcpp:"Qt::ArrowType".} = enum NoArrow = 0, UpArrow = 0x1, DownArrow = 0x2, LeftArrow = 0x3, 
        RightArrow = 0x4
    Qt_PenStyle* {.header:headerFile,importcpp:"Qt::PenStyle".} = enum NoPen = 0, SolidLine = 0x1, DashLine = 0x2, DotLine = 0x3, 
        DashDotLine = 0x4, DashDotDotLine = 0x5, CustomDashLine = 0x6, MPenStyle = 0x7
    Qt_PenCapStyle* {.header:headerFile,importcpp:"Qt::PenCapStyle".} = enum FlatCap = 0, SquareCap = 0x1, RoundCap = 0x2, MPenCapStyle = 0x3
    Qt_PenJoinStyle* {.header:headerFile,importcpp:"Qt::PenJoinStyle".} = enum MiterJoin = 0, BevelJoin = 0x1, RoundJoin = 0x2, SvgMiterJoin = 0x3, 
        MPenJoinStyle = 0x4
    Qt_BrushStyle* {.header:headerFile,importcpp:"Qt::BrushStyle".} = enum NoBrush = 0, SolidPattern = 0x1, Dense1Pattern = 0x2, Dense2Pattern = 0x3, 
        Dense3Pattern = 0x4, Dense4Pattern = 0x5, Dense5Pattern = 0x6, Dense6Pattern = 0x7, Dense7Pattern = 0x8, 
        HorPattern = 0x9, VerPattern = 0xa, CrossPattern = 0xb, BDiagPattern = 0xc, FDiagPattern = 0xd, 
        DiagCrossPattern = 0xe, LinearGradientPattern = 0xf, RadialGradientPattern = 0x10, ConicalGradientPattern = 0x11, TexturePattern = 0x12
    Qt_SizeMode* {.header:headerFile,importcpp:"Qt::SizeMode".} = enum AbsoluteSize = 0, RelativeSize = 0x1
    Qt_UIEffect* {.header:headerFile,importcpp:"Qt::UIEffect".} = enum UI_General = 0, UI_AnimateMenu = 0x1, UI_FadeMenu = 0x2, UI_AnimateCombo = 0x3, 
        UI_AnimateTooltip = 0x4, UI_FadeTooltip = 0x5, UI_AnimateToolBox = 0x6
    Qt_CursorShape* {.header:headerFile,importcpp:"Qt::CursorShape".} = enum ArrowCursor = 0, UpArrowCursor = 0x1, CrossCursor = 0x2, WaitCursor = 0x3, 
        IBeamCursor = 0x4, SizeVerCursor = 0x5, SizeHorCursor = 0x6, SizeBDiagCursor = 0x7, SizeFDiagCursor = 0x8, 
        SizeAllCursor = 0x9, BlankCursor = 0xa, SplitVCursor = 0xb, SplitHCursor = 0xc, PointingHandCursor = 0xd, 
        ForbiddenCursor = 0xe, WhatsThisCursor = 0xf, BusyCursor = 0x10, OpenHandCursor = 0x11, ClosedHandCursor = 0x12, 
        DragCopyCursor = 0x13, DragMoveCursor = 0x14, DragLinkCursor = 0x15, LastCursor = 0x16, BitmapCursor = 0x17, 
        CustomCursor = 0x18
    Qt_TextFormat* {.header:headerFile,importcpp:"Qt::TextFormat".} = enum PlainText = 0, RichText = 0x1, AutoText = 0x2, MarkdownText = 0x3
    Qt_AspectRatioMode* {.header:headerFile,importcpp:"Qt::AspectRatioMode".} = enum IgnoreAspectRatio = 0, KeepAspectRatio = 0x1, KeepAspectRatioByExpanding = 0x2
    Qt_DockWidgetArea* {.header:headerFile,importcpp:"Qt::DockWidgetArea".} = enum LeftDockWidgetArea = 0, RightDockWidgetArea = 0x1, TopDockWidgetArea = 0x2, BottomDockWidgetArea = 0x3, 
        DockWidgetArea_Mask = 0x4, AllDockWidgetAreas = 0x5, NoDockWidgetArea = 0x6
    Qt_DockWidgetAreaSizes* {.header:headerFile,importcpp:"Qt::DockWidgetAreaSizes".} = enum NDockWidgetAreas = 0
    Qt_ToolBarArea* {.header:headerFile,importcpp:"Qt::ToolBarArea".} = enum LeftToolBarArea = 0, RightToolBarArea = 0x1, TopToolBarArea = 0x2, BottomToolBarArea = 0x3, 
        ToolBarArea_Mask = 0x4, AllToolBarAreas = 0x5, NoToolBarArea = 0x6
    Qt_ToolBarAreaSizes* {.header:headerFile,importcpp:"Qt::ToolBarAreaSizes".} = enum NToolBarAreas = 0
    Qt_DateFormat* {.header:headerFile,importcpp:"Qt::DateFormat".} = enum TextDate = 0, ISODate = 0x1, RFC2822Date = 0x2, ISODateWithMs = 0x3
    Qt_TimeSpec* {.header:headerFile,importcpp:"Qt::TimeSpec".} = enum LocalTime = 0, UTC = 0x1, OffsetFromUTC = 0x2, TimeZone = 0x3
    Qt_DayOfWeek* {.header:headerFile,importcpp:"Qt::DayOfWeek".} = enum Monday = 0, Tuesday = 0x1, Wednesday = 0x2, Thursday = 0x3, 
        Friday = 0x4, Saturday = 0x5, Sunday = 0x6
    Qt_ScrollBarPolicy* {.header:headerFile,importcpp:"Qt::ScrollBarPolicy".} = enum ScrollBarAsNeeded = 0, ScrollBarAlwaysOff = 0x1, ScrollBarAlwaysOn = 0x2
    Qt_CaseSensitivity* {.header:headerFile,importcpp:"Qt::CaseSensitivity".} = enum CaseInsensitive = 0, CaseSensitive = 0x1
    Qt_Corner* {.header:headerFile,importcpp:"Qt::Corner".} = enum TopLeftCorner = 0, TopRightCorner = 0x1, BottomLeftCorner = 0x2, BottomRightCorner = 0x3
    Qt_Edge* {.header:headerFile,importcpp:"Qt::Edge".} = enum TopEdge = 0, LeftEdge = 0x1, RightEdge = 0x2, BottomEdge = 0x3
    Qt_ConnectionType* {.header:headerFile,importcpp:"Qt::ConnectionType".} = enum AutoConnection = 0, DirectConnection = 0x1, QueuedConnection = 0x2, BlockingQueuedConnection = 0x3, 
        UniqueConnection = 0x4, SingleShotConnection = 0x5
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
    Qt_InputMethodQuery* {.header:headerFile,importcpp:"Qt::InputMethodQuery".} = enum ImEnabled = 0, ImCursorRectangle = 0x1, ImFont = 0x2, ImCursorPosition = 0x3, 
        ImSurroundingText = 0x4, ImCurrentSelection = 0x5, ImMaximumTextLength = 0x6, ImAnchorPosition = 0x7, ImHints = 0x8, 
        ImPreferredLanguage = 0x9, ImAbsolutePosition = 0xa, ImTextBeforeCursor = 0xb, ImTextAfterCursor = 0xc, ImEnterKeyType = 0xd, 
        ImAnchorRectangle = 0xe, ImInputItemClipRectangle = 0xf, ImReadOnly = 0x10, ImPlatformData = 0x11, ImQueryInput = 0x12, 
        ImQueryAll = 0x13
    Qt_InputMethodHint* {.header:headerFile,importcpp:"Qt::InputMethodHint".} = enum ImhNone = 0, ImhHiddenText = 0x1, ImhSensitiveData = 0x2, ImhNoAutoUppercase = 0x3, 
        ImhPreferNumbers = 0x4, ImhPreferUppercase = 0x5, ImhPreferLowercase = 0x6, ImhNoPredictiveText = 0x7, ImhDate = 0x8, 
        ImhTime = 0x9, ImhPreferLatin = 0xa, ImhMultiLine = 0xb, ImhNoEditMenu = 0xc, ImhNoTextHandles = 0xd, 
        ImhDigitsOnly = 0xe, ImhFormattedNumbersOnly = 0xf, ImhUppercaseOnly = 0x10, ImhLowercaseOnly = 0x11, ImhDialableCharactersOnly = 0x12, 
        ImhEmailCharactersOnly = 0x13, ImhUrlCharactersOnly = 0x14, ImhLatinOnly = 0x15, ImhExclusiveInputMask = 0x16
    Qt_EnterKeyType* {.header:headerFile,importcpp:"Qt::EnterKeyType".} = enum EnterKeyDefault = 0, EnterKeyReturn = 0x1, EnterKeyDone = 0x2, EnterKeyGo = 0x3, 
        EnterKeySend = 0x4, EnterKeySearch = 0x5, EnterKeyNext = 0x6, EnterKeyPrevious = 0x7
    Qt_ToolButtonStyle* {.header:headerFile,importcpp:"Qt::ToolButtonStyle".} = enum ToolButtonIconOnly = 0, ToolButtonTextOnly = 0x1, ToolButtonTextBesideIcon = 0x2, ToolButtonTextUnderIcon = 0x3, 
        ToolButtonFollowStyle = 0x4
    Qt_LayoutDirection* {.header:headerFile,importcpp:"Qt::LayoutDirection".} = enum LeftToRight = 0, RightToLeft = 0x1, LayoutDirectionAuto = 0x2
    Qt_AnchorPoint* {.header:headerFile,importcpp:"Qt::AnchorPoint".} = enum AnchorLeft = 0, AnchorHorizontalCenter = 0x1, AnchorRight = 0x2, AnchorTop = 0x3, 
        AnchorVerticalCenter = 0x4, AnchorBottom = 0x5
    Qt_FindChildOption* {.header:headerFile,importcpp:"Qt::FindChildOption".} = enum FindDirectChildrenOnly = 0, FindChildrenRecursively = 0x1
    Qt_DropAction* {.header:headerFile,importcpp:"Qt::DropAction".} = enum CopyAction = 0, MoveAction = 0x1, LinkAction = 0x2, ActionMask = 0x3, 
        TargetMoveAction = 0x4, IgnoreAction = 0x5
    Qt_CheckState* {.header:headerFile,importcpp:"Qt::CheckState".} = enum Unchecked = 0, PartiallyChecked = 0x1, Checked = 0x2
    Qt_ItemDataRole* {.header:headerFile,importcpp:"Qt::ItemDataRole".} = enum DisplayRole = 0, DecorationRole = 0x1, EditRole = 0x2, ToolTipRole = 0x3, 
        StatusTipRole = 0x4, WhatsThisRole = 0x5, FontRole = 0x6, TextAlignmentRole = 0x7, BackgroundRole = 0x8, 
        ForegroundRole = 0x9, CheckStateRole = 0xa, AccessibleTextRole = 0xb, AccessibleDescriptionRole = 0xc, SizeHintRole = 0xd, 
        InitialSortOrderRole = 0xe, DisplayPropertyRole = 0xf, DecorationPropertyRole = 0x10, ToolTipPropertyRole = 0x11, StatusTipPropertyRole = 0x12, 
        WhatsThisPropertyRole = 0x13, UserRole = 0x14
    Qt_ItemFlag* {.header:headerFile,importcpp:"Qt::ItemFlag".} = enum NoItemFlags = 0, ItemIsSelectable = 0x1, ItemIsEditable = 0x2, ItemIsDragEnabled = 0x3, 
        ItemIsDropEnabled = 0x4, ItemIsUserCheckable = 0x5, ItemIsEnabled = 0x6, ItemIsAutoTristate = 0x7, ItemNeverHasChildren = 0x8, 
        ItemIsUserTristate = 0x9
    Qt_MatchFlag* {.header:headerFile,importcpp:"Qt::MatchFlag".} = enum MatchExactly = 0, MatchContains = 0x1, MatchStartsWith = 0x2, MatchEndsWith = 0x3, 
        MatchRegularExpression = 0x4, MatchWildcard = 0x5, MatchFixedString = 0x6, MatchTypeMask = 0x7, MatchCaseSensitive = 0x8, 
        MatchWrap = 0x9, MatchRecursive = 0xa
    Qt_WindowModality* {.header:headerFile,importcpp:"Qt::WindowModality".} = enum NonModal = 0, WindowModal = 0x1, ApplicationModal = 0x2
    Qt_TextInteractionFlag* {.header:headerFile,importcpp:"Qt::TextInteractionFlag".} = enum NoTextInteraction = 0, TextSelectableByMouse = 0x1, TextSelectableByKeyboard = 0x2, LinksAccessibleByMouse = 0x3, 
        LinksAccessibleByKeyboard = 0x4, TextEditable = 0x5, TextEditorInteraction = 0x6, TextBrowserInteraction = 0x7
    Qt_EventPriority* {.header:headerFile,importcpp:"Qt::EventPriority".} = enum HighEventPriority = 0, NormalEventPriority = 0x1, LowEventPriority = 0x2
    Qt_SizeHint* {.header:headerFile,importcpp:"Qt::SizeHint".} = enum MinimumSize = 0, PreferredSize = 0x1, MaximumSize = 0x2, MinimumDescent = 0x3, 
        NSizeHints = 0x4
    Qt_WindowFrameSection* {.header:headerFile,importcpp:"Qt::WindowFrameSection".} = enum NoSection = 0, LeftSection = 0x1, TopLeftSection = 0x2, TopSection = 0x3, 
        TopRightSection = 0x4, RightSection = 0x5, BottomRightSection = 0x6, BottomSection = 0x7, BottomLeftSection = 0x8, 
        TitleBarArea = 0x9
    Qt_Initialization* {.header:headerFile,importcpp:"Qt::Initialization".} = enum Uninitialized = 0
    Qt_CoordinateSystem* {.header:headerFile,importcpp:"Qt::CoordinateSystem".} = enum DeviceCoordinates = 0, LogicalCoordinates = 0x1
    Qt_TouchPointState* {.header:headerFile,importcpp:"Qt::TouchPointState".} = enum TouchPointUnknownState = 0, TouchPointPressed = 0x1, TouchPointMoved = 0x2, TouchPointStationary = 0x3, 
        TouchPointReleased = 0x4
    Qt_GestureState* {.header:headerFile,importcpp:"Qt::GestureState".} = enum NoGesture = 0, GestureStarted = 0x1, GestureUpdated = 0x2, GestureFinished = 0x3, 
        GestureCanceled = 0x4
    Qt_GestureType* {.header:headerFile,importcpp:"Qt::GestureType".} = enum TapGesture = 0, TapAndHoldGesture = 0x1, PanGesture = 0x2, PinchGesture = 0x3, 
        SwipeGesture = 0x4, CustomGesture = 0x5, LastGestureType = 0x6
    Qt_GestureFlag* {.header:headerFile,importcpp:"Qt::GestureFlag".} = enum DontStartGestureOnChildren = 0, ReceivePartialGestures = 0x1, IgnoredGesturesPropagateToParent = 0x2
    Qt_NativeGestureType* {.header:headerFile,importcpp:"Qt::NativeGestureType".} = enum BeginNativeGesture = 0, EndNativeGesture = 0x1, PanNativeGesture = 0x2, ZoomNativeGesture = 0x3, 
        SmartZoomNativeGesture = 0x4, RotateNativeGesture = 0x5, SwipeNativeGesture = 0x6
    Qt_NavigationMode* {.header:headerFile,importcpp:"Qt::NavigationMode".} = enum NavigationModeNone = 0, NavigationModeKeypadTabOrder = 0x1, NavigationModeKeypadDirectional = 0x2, NavigationModeCursorAuto = 0x3, 
        NavigationModeCursorForceVisible = 0x4
    Qt_CursorMoveStyle* {.header:headerFile,importcpp:"Qt::CursorMoveStyle".} = enum LogicalMoveStyle = 0, VisualMoveStyle = 0x1
    Qt_TimerType* {.header:headerFile,importcpp:"Qt::TimerType".} = enum PreciseTimer = 0, CoarseTimer = 0x1, VeryCoarseTimer = 0x2
    Qt_ScrollPhase* {.header:headerFile,importcpp:"Qt::ScrollPhase".} = enum NoScrollPhase = 0, ScrollBegin = 0x1, ScrollUpdate = 0x2, ScrollEnd = 0x3, 
        ScrollMomentum = 0x4
    Qt_MouseEventSource* {.header:headerFile,importcpp:"Qt::MouseEventSource".} = enum MouseEventNotSynthesized = 0, MouseEventSynthesizedBySystem = 0x1, MouseEventSynthesizedByQt = 0x2, MouseEventSynthesizedByApplication = 0x3
    Qt_MouseEventFlag* {.header:headerFile,importcpp:"Qt::MouseEventFlag".} = enum NoMouseEventFlag = 0, MouseEventCreatedDoubleClick = 0x1, MouseEventFlagMask = 0x2
    Qt_ChecksumType* {.header:headerFile,importcpp:"Qt::ChecksumType".} = enum ChecksumIso3309 = 0, ChecksumItuV41 = 0x1
    Qt_HighDpiScaleFactorRoundingPolicy* {.header:headerFile,importcpp:"Qt::HighDpiScaleFactorRoundingPolicy".} = enum Unset = 0, Round = 0x1, Ceil = 0x2, Floor = 0x3, 
        RoundPreferFloor = 0x4, PassThrough = 0x5
    Qt_ReturnByValueConstant* {.header:headerFile,importcpp:"Qt::ReturnByValueConstant".} = enum ReturnByValue = 0
    QInternal_PaintDeviceFlags* {.header:headerFile,importcpp:"QInternal::PaintDeviceFlags".} = enum UnknownDevice = 0, Widget = 0x1, Pixmap = 0x2, Image = 0x3, 
        Printer = 0x4, Picture = 0x5, Pbuffer = 0x6, FramebufferObject = 0x7, CustomRaster = 0x8, 
        PaintBuffer = 0x9, OpenGL = 0xa
    QInternal_RelayoutType* {.header:headerFile,importcpp:"QInternal::RelayoutType".} = enum RelayoutNormal = 0, RelayoutDragging = 0x1, RelayoutDropped = 0x2
    QInternal_DockPosition* {.header:headerFile,importcpp:"QInternal::DockPosition".} = enum LeftDock = 0, RightDock = 0x1, TopDock = 0x2, BottomDock = 0x3, 
        DockCount = 0x4
    QInternal_Callback* {.header:headerFile,importcpp:"QInternal::Callback".} = enum EventNotifyCallback = 0, LastCallback = 0x1
    Qt_Disambiguated_t* {.header:headerFile,importcpp:"Qt::Disambiguated_t" ,pure.} = object {.inheritable.}
    QInternal* {.header:headerFile,importcpp:"QInternal" ,pure.} = object {.inheritable.}
    QKeyCombination* {.header:headerFile,importcpp:"QKeyCombination" ,pure.} = object {.inheritable.}
{.push warning[Deprecated]: on.}
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

# Stuff for class Qt_Disambiguated_t

# Public constructors for Qt_Disambiguated_t
proc newQt_Disambiguated_t*(): Qt_Disambiguated_t {. header:headerFile, importcpp:"Qt_Disambiguated_t(@)", constructor .} # 
# Stuff for class QInternal

# Public methods for QInternal
proc static_QInternal_activateCallbacks*(arg_0: QInternal_Callback, arg_1: ptr ptr ): bool {.header:headerFile, importcpp:"QInternal::activateCallbacks(@)".} # Public static
# Stuff for class QKeyCombination

# Public constructors for QKeyCombination
proc newQKeyCombination*(key: Qt_Key): QKeyCombination {. header:headerFile, importcpp:"QKeyCombination(@)", constructor .} # 
proc newQKeyCombination*(modifiers: QFlags[Qt_Modifier], key: Qt_Key): QKeyCombination {. header:headerFile, importcpp:"QKeyCombination(@)", constructor .} # 
proc newQKeyCombination*(modifiers: QFlags[Qt_KeyboardModifier], key: Qt_Key): QKeyCombination {. header:headerFile, importcpp:"QKeyCombination(@)", constructor .} # 

# Public methods for QKeyCombination
proc keyboardModifiers*(this:QKeyCombination): QFlags[Qt_KeyboardModifier] {.header:headerFile, importcpp:"#.keyboardModifiers(@)".} # Public 
proc key*(this:QKeyCombination): Qt_Key {.header:headerFile, importcpp:"#.key(@)".} # Public 
proc static_QKeyCombination_fromCombined*(combined: cint): QKeyCombination {.header:headerFile, importcpp:"QKeyCombination::fromCombined(@)".} # Public static
proc toCombined*(this:QKeyCombination): cint {.header:headerFile, importcpp:"#.toCombined(@)".} # Public 
proc `<`*(this:QKeyCombination, arg_0: QKeyCombination): bool {.header:headerFile, importcpp:"#.operator<(@)".} # Public 

export qflags