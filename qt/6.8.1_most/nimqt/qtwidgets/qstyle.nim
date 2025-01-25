const headerFile* = "QtWidgets/qstyle.h"

type
    # Enums found in the C++ code
    # Global
    QStyle_StateFlag* {.header:headerFile,importcpp:"QStyle::StateFlag".} = enum State_None = 0, State_Enabled = 0x1, State_Raised = 0x2, State_Sunken = 0x4, 
        State_Off = 0x8, State_NoChange = 0x10, State_On = 0x20, State_DownArrow = 0x40, State_Horizontal = 0x80, 
        State_HasFocus = 0x100, State_Top = 0x200, State_Bottom = 0x400, State_FocusAtBorder = 0x800, State_AutoRaise = 0x1000, 
        State_MouseOver = 0x2000, State_UpArrow = 0x4000, State_Selected = 0x8000, State_Active = 0x10000, State_Window = 0x20000, 
        State_Open = 0x40000, State_Children = 0x80000, State_Item = 0x100000, State_Sibling = 0x200000, State_Editing = 0x400000, 
        State_KeyboardFocusChange = 0x800000, State_ReadOnly = 0x2000000, State_Small = 0x4000000, State_Mini = 0x8000000
    QStyle_PrimitiveElement* {.header:headerFile,importcpp:"QStyle::PrimitiveElement".} = enum PE_Frame = 0, PE_FrameDefaultButton = 0x1, PE_FrameDockWidget = 0x2, PE_FrameFocusRect = 0x3, 
        PE_FrameGroupBox = 0x4, PE_FrameLineEdit = 0x5, PE_FrameMenu = 0x6, PE_FrameStatusBarItem = 0x7, PE_FrameTabWidget = 0x8, 
        PE_FrameWindow = 0x9, PE_FrameButtonBevel = 0xa, PE_FrameButtonTool = 0xb, PE_FrameTabBarBase = 0xc, PE_PanelButtonCommand = 0xd, 
        PE_PanelButtonBevel = 0xe, PE_PanelButtonTool = 0xf, PE_PanelMenuBar = 0x10, PE_PanelToolBar = 0x11, PE_PanelLineEdit = 0x12, 
        PE_IndicatorArrowDown = 0x13, PE_IndicatorArrowLeft = 0x14, PE_IndicatorArrowRight = 0x15, PE_IndicatorArrowUp = 0x16, PE_IndicatorBranch = 0x17, 
        PE_IndicatorButtonDropDown = 0x18, PE_IndicatorItemViewItemCheck = 0x19, PE_IndicatorCheckBox = 0x1a, PE_IndicatorDockWidgetResizeHandle = 0x1b, PE_IndicatorHeaderArrow = 0x1c, 
        PE_IndicatorMenuCheckMark = 0x1d, PE_IndicatorProgressChunk = 0x1e, PE_IndicatorRadioButton = 0x1f, PE_IndicatorSpinDown = 0x20, PE_IndicatorSpinMinus = 0x21, 
        PE_IndicatorSpinPlus = 0x22, PE_IndicatorSpinUp = 0x23, PE_IndicatorToolBarHandle = 0x24, PE_IndicatorToolBarSeparator = 0x25, PE_PanelTipLabel = 0x26, 
        PE_IndicatorTabTear = 0x27, PE_PanelScrollAreaCorner = 0x28, PE_Widget = 0x29, PE_IndicatorColumnViewArrow = 0x2a, PE_IndicatorItemViewItemDrop = 0x2b, 
        PE_PanelItemViewItem = 0x2c, PE_PanelItemViewRow = 0x2d, PE_PanelStatusBar = 0x2e, PE_IndicatorTabClose = 0x2f, PE_PanelMenu = 0x30, 
        PE_IndicatorTabTearRight = 0x31, PE_CustomBase = 0xf000000
    QStyle_ControlElement* {.header:headerFile,importcpp:"QStyle::ControlElement".} = enum CE_CustomBase = -268435456, CE_PushButton = 0, CE_PushButtonBevel = 0x1, CE_PushButtonLabel = 0x2, 
        CE_CheckBox = 0x3, CE_CheckBoxLabel = 0x4, CE_RadioButton = 0x5, CE_RadioButtonLabel = 0x6, CE_TabBarTab = 0x7, 
        CE_TabBarTabShape = 0x8, CE_TabBarTabLabel = 0x9, CE_ProgressBar = 0xa, CE_ProgressBarGroove = 0xb, CE_ProgressBarContents = 0xc, 
        CE_ProgressBarLabel = 0xd, CE_MenuItem = 0xe, CE_MenuScroller = 0xf, CE_MenuVMargin = 0x10, CE_MenuHMargin = 0x11, 
        CE_MenuTearoff = 0x12, CE_MenuEmptyArea = 0x13, CE_MenuBarItem = 0x14, CE_MenuBarEmptyArea = 0x15, CE_ToolButtonLabel = 0x16, 
        CE_Header = 0x17, CE_HeaderSection = 0x18, CE_HeaderLabel = 0x19, CE_ToolBoxTab = 0x1a, CE_SizeGrip = 0x1b, 
        CE_Splitter = 0x1c, CE_RubberBand = 0x1d, CE_DockWidgetTitle = 0x1e, CE_ScrollBarAddLine = 0x1f, CE_ScrollBarSubLine = 0x20, 
        CE_ScrollBarAddPage = 0x21, CE_ScrollBarSubPage = 0x22, CE_ScrollBarSlider = 0x23, CE_ScrollBarFirst = 0x24, CE_ScrollBarLast = 0x25, 
        CE_FocusFrame = 0x26, CE_ComboBoxLabel = 0x27, CE_ToolBar = 0x28, CE_ToolBoxTabShape = 0x29, CE_ToolBoxTabLabel = 0x2a, 
        CE_HeaderEmptyArea = 0x2b, CE_ColumnViewGrip = 0x2c, CE_ItemViewItem = 0x2d, CE_ShapedFrame = 0x2e
    QStyle_SubElement* {.header:headerFile,importcpp:"QStyle::SubElement".} = enum SE_CustomBase = -268435456, SE_PushButtonContents = 0, SE_PushButtonFocusRect = 0x1, SE_CheckBoxIndicator = 0x2, 
        SE_CheckBoxContents = 0x3, SE_CheckBoxFocusRect = 0x4, SE_CheckBoxClickRect = 0x5, SE_RadioButtonIndicator = 0x6, SE_RadioButtonContents = 0x7, 
        SE_RadioButtonFocusRect = 0x8, SE_RadioButtonClickRect = 0x9, SE_ComboBoxFocusRect = 0xa, SE_SliderFocusRect = 0xb, SE_ProgressBarGroove = 0xc, 
        SE_ProgressBarContents = 0xd, SE_ProgressBarLabel = 0xe, SE_ToolBoxTabContents = 0xf, SE_HeaderLabel = 0x10, SE_HeaderArrow = 0x11, 
        SE_TabWidgetTabBar = 0x12, SE_TabWidgetTabPane = 0x13, SE_TabWidgetTabContents = 0x14, SE_TabWidgetLeftCorner = 0x15, SE_TabWidgetRightCorner = 0x16, 
        SE_ItemViewItemCheckIndicator = 0x17, SE_TabBarTearIndicator = 0x18, SE_TreeViewDisclosureItem = 0x19, SE_LineEditContents = 0x1a, SE_FrameContents = 0x1b, 
        SE_DockWidgetCloseButton = 0x1c, SE_DockWidgetFloatButton = 0x1d, SE_DockWidgetTitleBarText = 0x1e, SE_DockWidgetIcon = 0x1f, SE_CheckBoxLayoutItem = 0x20, 
        SE_ComboBoxLayoutItem = 0x21, SE_DateTimeEditLayoutItem = 0x22, SE_LabelLayoutItem = 0x23, SE_ProgressBarLayoutItem = 0x24, SE_PushButtonLayoutItem = 0x25, 
        SE_RadioButtonLayoutItem = 0x26, SE_SliderLayoutItem = 0x27, SE_SpinBoxLayoutItem = 0x28, SE_ToolButtonLayoutItem = 0x29, SE_FrameLayoutItem = 0x2a, 
        SE_GroupBoxLayoutItem = 0x2b, SE_TabWidgetLayoutItem = 0x2c, SE_ItemViewItemDecoration = 0x2d, SE_ItemViewItemText = 0x2e, SE_ItemViewItemFocusRect = 0x2f, 
        SE_TabBarTabLeftButton = 0x30, SE_TabBarTabRightButton = 0x31, SE_TabBarTabText = 0x32, SE_ShapedFrameContents = 0x33, SE_ToolBarHandle = 0x34, 
        SE_TabBarScrollLeftButton = 0x35, SE_TabBarScrollRightButton = 0x36, SE_TabBarTearIndicatorRight = 0x37, SE_PushButtonBevel = 0x38
    QStyle_ComplexControl* {.header:headerFile,importcpp:"QStyle::ComplexControl".} = enum CC_CustomBase = -268435456, CC_SpinBox = 0, CC_ComboBox = 0x1, CC_ScrollBar = 0x2, 
        CC_Slider = 0x3, CC_ToolButton = 0x4, CC_TitleBar = 0x5, CC_Dial = 0x6, CC_GroupBox = 0x7, 
        CC_MdiControls = 0x8
    QStyle_SubControl* {.header:headerFile,importcpp:"QStyle::SubControl".} = enum SC_CustomBase = -268435456, SC_All = -1, SC_None = 0, SC_ScrollBarAddLine = 0x1, 
        SC_ScrollBarSubLine = 0x2, SC_ScrollBarAddPage = 0x4, SC_ScrollBarSubPage = 0x8, SC_ScrollBarFirst = 0x10, SC_ScrollBarLast = 0x20, 
        SC_ScrollBarSlider = 0x40, SC_ScrollBarGroove = 0x80, SC_TitleBarLabel = 0x100
    QStyle_PixelMetric* {.header:headerFile,importcpp:"QStyle::PixelMetric".} = enum PM_CustomBase = -268435456, PM_ButtonMargin = 0, PM_ButtonDefaultIndicator = 0x1, PM_MenuButtonIndicator = 0x2, 
        PM_ButtonShiftHorizontal = 0x3, PM_ButtonShiftVertical = 0x4, PM_DefaultFrameWidth = 0x5, PM_SpinBoxFrameWidth = 0x6, PM_ComboBoxFrameWidth = 0x7, 
        PM_MaximumDragDistance = 0x8, PM_ScrollBarExtent = 0x9, PM_ScrollBarSliderMin = 0xa, PM_SliderThickness = 0xb, PM_SliderControlThickness = 0xc, 
        PM_SliderLength = 0xd, PM_SliderTickmarkOffset = 0xe, PM_SliderSpaceAvailable = 0xf, PM_DockWidgetSeparatorExtent = 0x10, PM_DockWidgetHandleExtent = 0x11, 
        PM_DockWidgetFrameWidth = 0x12, PM_TabBarTabOverlap = 0x13, PM_TabBarTabHSpace = 0x14, PM_TabBarTabVSpace = 0x15, PM_TabBarBaseHeight = 0x16, 
        PM_TabBarBaseOverlap = 0x17, PM_ProgressBarChunkWidth = 0x18, PM_SplitterWidth = 0x19, PM_TitleBarHeight = 0x1a, PM_MenuScrollerHeight = 0x1b, 
        PM_MenuHMargin = 0x1c, PM_MenuVMargin = 0x1d, PM_MenuPanelWidth = 0x1e, PM_MenuTearoffHeight = 0x1f, PM_MenuDesktopFrameWidth = 0x20, 
        PM_MenuBarPanelWidth = 0x21, PM_MenuBarItemSpacing = 0x22, PM_MenuBarVMargin = 0x23, PM_MenuBarHMargin = 0x24, PM_IndicatorWidth = 0x25, 
        PM_IndicatorHeight = 0x26, PM_ExclusiveIndicatorWidth = 0x27, PM_ExclusiveIndicatorHeight = 0x28, PM_DialogButtonsSeparator = 0x29, PM_DialogButtonsButtonWidth = 0x2a, 
        PM_DialogButtonsButtonHeight = 0x2b, PM_MdiSubWindowFrameWidth = 0x2c, PM_MdiSubWindowMinimizedWidth = 0x2d, PM_HeaderMargin = 0x2e, PM_HeaderMarkSize = 0x2f, 
        PM_HeaderGripMargin = 0x30, PM_TabBarTabShiftHorizontal = 0x31, PM_TabBarTabShiftVertical = 0x32, PM_TabBarScrollButtonWidth = 0x33, PM_ToolBarFrameWidth = 0x34, 
        PM_ToolBarHandleExtent = 0x35, PM_ToolBarItemSpacing = 0x36, PM_ToolBarItemMargin = 0x37, PM_ToolBarSeparatorExtent = 0x38, PM_ToolBarExtensionExtent = 0x39, 
        PM_SpinBoxSliderHeight = 0x3a, PM_ToolBarIconSize = 0x3b, PM_ListViewIconSize = 0x3c, PM_IconViewIconSize = 0x3d, PM_SmallIconSize = 0x3e, 
        PM_LargeIconSize = 0x3f, PM_FocusFrameVMargin = 0x40, PM_FocusFrameHMargin = 0x41, PM_ToolTipLabelFrameWidth = 0x42, PM_CheckBoxLabelSpacing = 0x43, 
        PM_TabBarIconSize = 0x44, PM_SizeGripSize = 0x45, PM_DockWidgetTitleMargin = 0x46, PM_MessageBoxIconSize = 0x47, PM_ButtonIconSize = 0x48, 
        PM_DockWidgetTitleBarButtonMargin = 0x49, PM_RadioButtonLabelSpacing = 0x4a, PM_LayoutLeftMargin = 0x4b, PM_LayoutTopMargin = 0x4c, PM_LayoutRightMargin = 0x4d, 
        PM_LayoutBottomMargin = 0x4e, PM_LayoutHorizontalSpacing = 0x4f, PM_LayoutVerticalSpacing = 0x50, PM_TabBar_ScrollButtonOverlap = 0x51, PM_TextCursorWidth = 0x52, 
        PM_TabCloseIndicatorWidth = 0x53, PM_TabCloseIndicatorHeight = 0x54, PM_ScrollView_ScrollBarSpacing = 0x55, PM_ScrollView_ScrollBarOverlap = 0x56, PM_SubMenuOverlap = 0x57, 
        PM_TreeViewIndentation = 0x58, PM_HeaderDefaultSectionSizeHorizontal = 0x59, PM_HeaderDefaultSectionSizeVertical = 0x5a, PM_TitleBarButtonIconSize = 0x5b, PM_TitleBarButtonSize = 0x5c, 
        PM_LineEditIconSize = 0x5d, PM_LineEditIconMargin = 0x5e
    QStyle_ContentsType* {.header:headerFile,importcpp:"QStyle::ContentsType".} = enum CT_CustomBase = -268435456, CT_PushButton = 0, CT_CheckBox = 0x1, CT_RadioButton = 0x2, 
        CT_ToolButton = 0x3, CT_ComboBox = 0x4, CT_Splitter = 0x5, CT_ProgressBar = 0x6, CT_MenuItem = 0x7, 
        CT_MenuBarItem = 0x8, CT_MenuBar = 0x9, CT_Menu = 0xa, CT_TabBarTab = 0xb, CT_Slider = 0xc, 
        CT_ScrollBar = 0xd, CT_LineEdit = 0xe, CT_SpinBox = 0xf, CT_SizeGrip = 0x10, CT_TabWidget = 0x11, 
        CT_DialogButtons = 0x12, CT_HeaderSection = 0x13, CT_GroupBox = 0x14, CT_MdiControls = 0x15, CT_ItemViewItem = 0x16
    QStyle_RequestSoftwareInputPanel* {.header:headerFile,importcpp:"QStyle::RequestSoftwareInputPanel".} = enum RSIP_OnMouseClickAndAlreadyFocused = 0, RSIP_OnMouseClick = 0x1
    QStyle_StyleHint* {.header:headerFile,importcpp:"QStyle::StyleHint".} = enum SH_CustomBase = -268435456, SH_EtchDisabledText = 0, SH_DitherDisabledText = 0x1, SH_ScrollBar_MiddleClickAbsolutePosition = 0x2, 
        SH_ScrollBar_ScrollWhenPointerLeavesControl = 0x3, SH_TabBar_SelectMouseType = 0x4, SH_TabBar_Alignment = 0x5, SH_Header_ArrowAlignment = 0x6, SH_Slider_SnapToValue = 0x7, 
        SH_Slider_SloppyKeyEvents = 0x8, SH_ProgressDialog_CenterCancelButton = 0x9, SH_ProgressDialog_TextLabelAlignment = 0xa, SH_PrintDialog_RightAlignButtons = 0xb, SH_MainWindow_SpaceBelowMenuBar = 0xc, 
        SH_FontDialog_SelectAssociatedText = 0xd, SH_Menu_AllowActiveAndDisabled = 0xe, SH_Menu_SpaceActivatesItem = 0xf, SH_Menu_SubMenuPopupDelay = 0x10, SH_ScrollView_FrameOnlyAroundContents = 0x11, 
        SH_MenuBar_AltKeyNavigation = 0x12, SH_ComboBox_ListMouseTracking = 0x13, SH_Menu_MouseTracking = 0x14, SH_MenuBar_MouseTracking = 0x15, SH_ItemView_ChangeHighlightOnFocus = 0x16, 
        SH_Widget_ShareActivation = 0x17, SH_Workspace_FillSpaceOnMaximize = 0x18, SH_ComboBox_Popup = 0x19, SH_TitleBar_NoBorder = 0x1a, SH_Slider_StopMouseOverSlider = 0x1b, 
        SH_BlinkCursorWhenTextSelected = 0x1c, SH_RichText_FullWidthSelection = 0x1d, SH_Menu_Scrollable = 0x1e, SH_GroupBox_TextLabelVerticalAlignment = 0x1f, SH_GroupBox_TextLabelColor = 0x20, 
        SH_Menu_SloppySubMenus = 0x21, SH_Table_GridLineColor = 0x22, SH_LineEdit_PasswordCharacter = 0x23, SH_DialogButtons_DefaultButton = 0x24, SH_ToolBox_SelectedPageTitleBold = 0x25, 
        SH_TabBar_PreferNoArrows = 0x26, SH_ScrollBar_LeftClickAbsolutePosition = 0x27, SH_ListViewExpand_SelectMouseType = 0x28, SH_UnderlineShortcut = 0x29, SH_SpinBox_AnimateButton = 0x2a, 
        SH_SpinBox_KeyPressAutoRepeatRate = 0x2b, SH_SpinBox_ClickAutoRepeatRate = 0x2c, SH_Menu_FillScreenWithScroll = 0x2d, SH_ToolTipLabel_Opacity = 0x2e, SH_DrawMenuBarSeparator = 0x2f, 
        SH_TitleBar_ModifyNotification = 0x30, SH_Button_FocusPolicy = 0x31, SH_MessageBox_UseBorderForButtonSpacing = 0x32, SH_TitleBar_AutoRaise = 0x33, SH_ToolButton_PopupDelay = 0x34, 
        SH_FocusFrame_Mask = 0x35, SH_RubberBand_Mask = 0x36, SH_WindowFrame_Mask = 0x37, SH_SpinControls_DisableOnBounds = 0x38, SH_Dial_BackgroundRole = 0x39, 
        SH_ComboBox_LayoutDirection = 0x3a, SH_ItemView_EllipsisLocation = 0x3b, SH_ItemView_ShowDecorationSelected = 0x3c, SH_ItemView_ActivateItemOnSingleClick = 0x3d, SH_ScrollBar_ContextMenu = 0x3e, 
        SH_ScrollBar_RollBetweenButtons = 0x3f, SH_Slider_AbsoluteSetButtons = 0x40, SH_Slider_PageSetButtons = 0x41, SH_Menu_KeyboardSearch = 0x42, SH_TabBar_ElideMode = 0x43, 
        SH_DialogButtonLayout = 0x44, SH_ComboBox_PopupFrameStyle = 0x45, SH_MessageBox_TextInteractionFlags = 0x46, SH_DialogButtonBox_ButtonsHaveIcons = 0x47, SH_MessageBox_CenterButtons = 0x48, 
        SH_Menu_SelectionWrap = 0x49, SH_ItemView_MovementWithoutUpdatingSelection = 0x4a, SH_ToolTip_Mask = 0x4b, SH_FocusFrame_AboveWidget = 0x4c, SH_TextControl_FocusIndicatorTextCharFormat = 0x4d, 
        SH_WizardStyle = 0x4e, SH_ItemView_ArrowKeysNavigateIntoChildren = 0x4f, SH_Menu_Mask = 0x50, SH_Menu_FlashTriggeredItem = 0x51, SH_Menu_FadeOutOnHide = 0x52, 
        SH_SpinBox_ClickAutoRepeatThreshold = 0x53, SH_ItemView_PaintAlternatingRowColorsForEmptyArea = 0x54, SH_FormLayoutWrapPolicy = 0x55, SH_TabWidget_DefaultTabPosition = 0x56, SH_ToolBar_Movable = 0x57, 
        SH_FormLayoutFieldGrowthPolicy = 0x58, SH_FormLayoutFormAlignment = 0x59, SH_FormLayoutLabelAlignment = 0x5a, SH_ItemView_DrawDelegateFrame = 0x5b, SH_TabBar_CloseButtonPosition = 0x5c, 
        SH_DockWidget_ButtonsHaveFrame = 0x5d, SH_ToolButtonStyle = 0x5e, SH_RequestSoftwareInputPanel = 0x5f, SH_ScrollBar_Transient = 0x60, SH_Menu_SupportsSections = 0x61, 
        SH_ToolTip_WakeUpDelay = 0x62, SH_ToolTip_FallAsleepDelay = 0x63, SH_Widget_Animate = 0x64, SH_Splitter_OpaqueResize = 0x65, SH_ComboBox_UseNativePopup = 0x66, 
        SH_LineEdit_PasswordMaskDelay = 0x67, SH_TabBar_ChangeCurrentDelay = 0x68, SH_Menu_SubMenuUniDirection = 0x69, SH_Menu_SubMenuUniDirectionFailCount = 0x6a, SH_Menu_SubMenuSloppySelectOtherActions = 0x6b, 
        SH_Menu_SubMenuSloppyCloseTimeout = 0x6c, SH_Menu_SubMenuResetWhenReenteringParent = 0x6d, SH_Menu_SubMenuDontStartSloppyOnLeave = 0x6e, SH_ItemView_ScrollMode = 0x6f, SH_TitleBar_ShowToolTipsOnButtons = 0x70, 
        SH_Widget_Animation_Duration = 0x71, SH_ComboBox_AllowWheelScrolling = 0x72, SH_SpinBox_ButtonsInsideFrame = 0x73, SH_SpinBox_StepModifier = 0x74, SH_TabBar_AllowWheelScrolling = 0x75, 
        SH_Table_AlwaysDrawLeftTopGridLines = 0x76, SH_SpinBox_SelectOnStep = 0x77
    QStyle_StandardPixmap* {.header:headerFile,importcpp:"QStyle::StandardPixmap".} = enum SP_CustomBase = -268435456, SP_TitleBarMenuButton = 0, SP_TitleBarMinButton = 0x1, SP_TitleBarMaxButton = 0x2, 
        SP_TitleBarCloseButton = 0x3, SP_TitleBarNormalButton = 0x4, SP_TitleBarShadeButton = 0x5, SP_TitleBarUnshadeButton = 0x6, SP_TitleBarContextHelpButton = 0x7, 
        SP_DockWidgetCloseButton = 0x8, SP_MessageBoxInformation = 0x9, SP_MessageBoxWarning = 0xa, SP_MessageBoxCritical = 0xb, SP_MessageBoxQuestion = 0xc, 
        SP_DesktopIcon = 0xd, SP_TrashIcon = 0xe, SP_ComputerIcon = 0xf, SP_DriveFDIcon = 0x10, SP_DriveHDIcon = 0x11, 
        SP_DriveCDIcon = 0x12, SP_DriveDVDIcon = 0x13, SP_DriveNetIcon = 0x14, SP_DirOpenIcon = 0x15, SP_DirClosedIcon = 0x16, 
        SP_DirLinkIcon = 0x17, SP_DirLinkOpenIcon = 0x18, SP_FileIcon = 0x19, SP_FileLinkIcon = 0x1a, SP_ToolBarHorizontalExtensionButton = 0x1b, 
        SP_ToolBarVerticalExtensionButton = 0x1c, SP_FileDialogStart = 0x1d, SP_FileDialogEnd = 0x1e, SP_FileDialogToParent = 0x1f, SP_FileDialogNewFolder = 0x20, 
        SP_FileDialogDetailedView = 0x21, SP_FileDialogInfoView = 0x22, SP_FileDialogContentsView = 0x23, SP_FileDialogListView = 0x24, SP_FileDialogBack = 0x25, 
        SP_DirIcon = 0x26, SP_DialogOkButton = 0x27, SP_DialogCancelButton = 0x28, SP_DialogHelpButton = 0x29, SP_DialogOpenButton = 0x2a, 
        SP_DialogSaveButton = 0x2b, SP_DialogCloseButton = 0x2c, SP_DialogApplyButton = 0x2d, SP_DialogResetButton = 0x2e, SP_DialogDiscardButton = 0x2f, 
        SP_DialogYesButton = 0x30, SP_DialogNoButton = 0x31, SP_ArrowUp = 0x32, SP_ArrowDown = 0x33, SP_ArrowLeft = 0x34, 
        SP_ArrowRight = 0x35, SP_ArrowBack = 0x36, SP_ArrowForward = 0x37, SP_DirHomeIcon = 0x38, SP_CommandLink = 0x39, 
        SP_VistaShield = 0x3a, SP_BrowserReload = 0x3b, SP_BrowserStop = 0x3c, SP_MediaPlay = 0x3d, SP_MediaStop = 0x3e, 
        SP_MediaPause = 0x3f, SP_MediaSkipForward = 0x40, SP_MediaSkipBackward = 0x41, SP_MediaSeekForward = 0x42, SP_MediaSeekBackward = 0x43, 
        SP_MediaVolume = 0x44, SP_MediaVolumeMuted = 0x45, SP_LineEditClearButton = 0x46, SP_DialogYesToAllButton = 0x47, SP_DialogNoToAllButton = 0x48, 
        SP_DialogSaveAllButton = 0x49, SP_DialogAbortButton = 0x4a, SP_DialogRetryButton = 0x4b, SP_DialogIgnoreButton = 0x4c, SP_RestoreDefaultsButton = 0x4d, 
        SP_TabCloseButton = 0x4e, NStandardPixmap = 0x4f

import nimqt/qtcore/qobject
type
    # Classes found in the C++ code
    QStyle* {.header:headerFile,importcpp:"QStyle" ,pure.} = object of QObject
import nimqt/qtcore/qflags


type
    # typedefs found in the C++ code
    QStyle_State * = QFlags[QStyle_StateFlag]
    QStyle_SubControls * = QFlags[QStyle_SubControl]

# Consts
const
    # Global
    QStyle_PrimitiveElementPE_IndicatorTabTearLeft* = 39 # from anonymous enum PE_IndicatorTabTear
    QStyle_SubElementSE_TabBarTearIndicatorLeft* = 24 # from anonymous enum SE_TabBarTearIndicator
    QStyle_SubControlSC_SpinBoxUp* = 1 # from anonymous enum SC_ScrollBarAddLine
    QStyle_SubControlSC_ComboBoxFrame* = 1 # from anonymous enum SC_ScrollBarAddLine
    QStyle_SubControlSC_SliderGroove* = 1 # from anonymous enum SC_ScrollBarAddLine
    QStyle_SubControlSC_ToolButton* = 1 # from anonymous enum SC_ScrollBarAddLine
    QStyle_SubControlSC_TitleBarSysMenu* = 1 # from anonymous enum SC_ScrollBarAddLine
    QStyle_SubControlSC_DialGroove* = 1 # from anonymous enum SC_ScrollBarAddLine
    QStyle_SubControlSC_GroupBoxCheckBox* = 1 # from anonymous enum SC_ScrollBarAddLine
    QStyle_SubControlSC_MdiMinButton* = 1 # from anonymous enum SC_ScrollBarAddLine
    QStyle_SubControlSC_SpinBoxDown* = 2 # from anonymous enum SC_ScrollBarSubLine
    QStyle_SubControlSC_ComboBoxEditField* = 2 # from anonymous enum SC_ScrollBarSubLine
    QStyle_SubControlSC_SliderHandle* = 2 # from anonymous enum SC_ScrollBarSubLine
    QStyle_SubControlSC_ToolButtonMenu* = 2 # from anonymous enum SC_ScrollBarSubLine
    QStyle_SubControlSC_TitleBarMinButton* = 2 # from anonymous enum SC_ScrollBarSubLine
    QStyle_SubControlSC_DialHandle* = 2 # from anonymous enum SC_ScrollBarSubLine
    QStyle_SubControlSC_GroupBoxLabel* = 2 # from anonymous enum SC_ScrollBarSubLine
    QStyle_SubControlSC_MdiNormalButton* = 2 # from anonymous enum SC_ScrollBarSubLine
    QStyle_SubControlSC_SpinBoxFrame* = 4 # from anonymous enum SC_ScrollBarAddPage
    QStyle_SubControlSC_ComboBoxArrow* = 4 # from anonymous enum SC_ScrollBarAddPage
    QStyle_SubControlSC_SliderTickmarks* = 4 # from anonymous enum SC_ScrollBarAddPage
    QStyle_SubControlSC_TitleBarMaxButton* = 4 # from anonymous enum SC_ScrollBarAddPage
    QStyle_SubControlSC_DialTickmarks* = 4 # from anonymous enum SC_ScrollBarAddPage
    QStyle_SubControlSC_GroupBoxContents* = 4 # from anonymous enum SC_ScrollBarAddPage
    QStyle_SubControlSC_MdiCloseButton* = 4 # from anonymous enum SC_ScrollBarAddPage
    QStyle_SubControlSC_SpinBoxEditField* = 8 # from anonymous enum SC_ScrollBarSubPage
    QStyle_SubControlSC_ComboBoxListBoxPopup* = 8 # from anonymous enum SC_ScrollBarSubPage
    QStyle_SubControlSC_TitleBarCloseButton* = 8 # from anonymous enum SC_ScrollBarSubPage
    QStyle_SubControlSC_GroupBoxFrame* = 8 # from anonymous enum SC_ScrollBarSubPage
    QStyle_SubControlSC_TitleBarNormalButton* = 16 # from anonymous enum SC_ScrollBarFirst
    QStyle_SubControlSC_TitleBarShadeButton* = 32 # from anonymous enum SC_ScrollBarLast
    QStyle_SubControlSC_TitleBarUnshadeButton* = 64 # from anonymous enum SC_ScrollBarSlider
    QStyle_SubControlSC_TitleBarContextHelpButton* = 128 # from anonymous enum SC_ScrollBarGroove

# Stuff for class QStyle

# Public constructors for QStyle
proc newQStyle*(): ptr QStyle {. header:headerFile, importcpp:"new QStyle(@)" .} #

# Public methods for QStyle
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QStyle_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QStyle::tr(@)".} # Public static
proc static_QStyle_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QStyle::tr(@)".} # Public static
proc name*(this: ptr QStyle): QString {.header:headerFile, importcpp:"#.name(@)".} # Public
import nimqt/qtwidgets/qwidget
proc polish*(this: ptr QStyle, widget: ptr QWidget) {.header:headerFile, importcpp:"#.polish(@)".} # Public
proc unpolish*(this: ptr QStyle, widget: ptr QWidget) {.header:headerFile, importcpp:"#.unpolish(@)".} # Public
import nimqt/qtgui/qpalette
proc polish*(this: ptr QStyle, palette: QPalette) {.header:headerFile, importcpp:"#.polish(@)".} # Public
import nimqt/qtgui/qfontmetrics
import nimqt/qtcore/qrect
proc itemTextRect*(this: ptr QStyle, fm: QFontMetrics, r: QRect, flags: cint, enabled: bool, text: QString): QRect {.header:headerFile, importcpp:"#.itemTextRect(@)".} # Public
import nimqt/qtgui/qpixmap
proc itemPixmapRect*(this: ptr QStyle, r: QRect, flags: cint, pixmap: QPixmap): QRect {.header:headerFile, importcpp:"#.itemPixmapRect(@)".} # Public
import nimqt/qtgui/qpainter
proc drawItemText*(this: ptr QStyle, painter: ptr QPainter, rect: QRect, flags: cint, pal: QPalette, enabled: bool, text: QString, textRole: QPalette_ColorRole) {.header:headerFile, importcpp:"#.drawItemText(@)".} # Public
proc drawItemPixmap*(this: ptr QStyle, painter: ptr QPainter, rect: QRect, alignment: cint, pixmap: QPixmap) {.header:headerFile, importcpp:"#.drawItemPixmap(@)".} # Public
proc standardPalette*(this: ptr QStyle): QPalette {.header:headerFile, importcpp:"#.standardPalette(@)".} # Public
import nimqt/qtcore/qnamespace
proc static_QStyle_visualRect*(direction: Qt_LayoutDirection, boundingRect: QRect, logicalRect: QRect): QRect {.header:headerFile, importcpp:"QStyle::visualRect(@)".} # Public static
import nimqt/qtcore/qpoint
proc static_QStyle_visualPos*(direction: Qt_LayoutDirection, boundingRect: QRect, logicalPos: QPoint): QPoint {.header:headerFile, importcpp:"QStyle::visualPos(@)".} # Public static
# 1 default parameters!
proc static_QStyle_sliderPositionFromValue*(min: cint, max: cint, val: cint, space: cint, upsideDown: bool): cint {.header:headerFile, importcpp:"QStyle::sliderPositionFromValue(@)".} # Public static
proc static_QStyle_sliderPositionFromValue*(min: cint, max: cint, val: cint, space: cint): cint {.header:headerFile, importcpp:"QStyle::sliderPositionFromValue(@)".} # Public static
# 1 default parameters!
proc static_QStyle_sliderValueFromPosition*(min: cint, max: cint, pos: cint, space: cint, upsideDown: bool): cint {.header:headerFile, importcpp:"QStyle::sliderValueFromPosition(@)".} # Public static
proc static_QStyle_sliderValueFromPosition*(min: cint, max: cint, pos: cint, space: cint): cint {.header:headerFile, importcpp:"QStyle::sliderValueFromPosition(@)".} # Public static
proc static_QStyle_visualAlignment*(direction: Qt_LayoutDirection, alignment: Qt_Alignment): Qt_Alignment {.header:headerFile, importcpp:"QStyle::visualAlignment(@)".} # Public static
import nimqt/qtcore/qsize
proc static_QStyle_alignedRect*(direction: Qt_LayoutDirection, alignment: Qt_Alignment, size: QSize, rectangle: QRect): QRect {.header:headerFile, importcpp:"QStyle::alignedRect(@)".} # Public static
proc proxy*(this: ptr QStyle): ptr QStyle {.header:headerFile, importcpp:"#.proxy(@)".} # Public

export qpixmap
export qfontmetrics
export qstring
export qsize
export qnamespace
export qpainter
export qpoint
export qwidget
export qrect
export qflags
export qobject
export qpalette
