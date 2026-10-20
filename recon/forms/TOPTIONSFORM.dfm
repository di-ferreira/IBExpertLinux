object OptionsForm: TOptionsForm
  Left = 320
  Top = 289
  Width = 658
  Height = 470
  HelpContext = 2000
  BorderIcons = ['biSystemMenu', 'biMaximize']
  Caption = 'Environment Options'
  Color = clBtnFace
  Constraints.MinHeight = 470
  DefaultMonitor = dmMainForm
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  Scaled = False
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TdfsSplitter
    Left = 217
    Top = 0
    Width = 3
    Height = 390
    Cursor = crHSplit
    Align = alLeft
    Color = clBtnShadow
    ParentColor = False
    ResizeStyle = rsUpdate
    Maximized = False
    Minimized = False
    ButtonCursor = crDefault
  end
  object Panel1: TPanel
    Left = 0
    Top = 390
    Width = 642
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object Bevel2: TBevel
      Left = 0
      Top = 0
      Width = 642
      Height = 5
      Align = alTop
      Shape = bsBottomLine
    end
    object OkB: TButton
      Left = 408
      Top = 11
      Width = 75
      Height = 24
      Anchors = ['akRight', 'akBottom']
      Caption = 'OK'
      ModalResult = 1
      TabOrder = 0
    end
    object CancelB: TButton
      Left = 486
      Top = 11
      Width = 75
      Height = 24
      Anchors = ['akRight', 'akBottom']
      Cancel = True
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
    end
    object bHelp: TButton
      Left = 564
      Top = 11
      Width = 75
      Height = 24
      Anchors = ['akRight', 'akBottom']
      Cancel = True
      Caption = 'Help'
      TabOrder = 2
      OnClick = bHelpClick
    end
  end
  object Pages: TIBEPageControl
    Left = 220
    Top = 0
    Width = 422
    Height = 390
    HelpContext = 2017
    AdvOfficePagerStyler = OptionsStyler
    Align = alClient
    ActivePage = tsScriptExecutive
    AntiAlias = aaNone
    ButtonSettings.PageListButtonHint = 'Page List'
    Constraints.MinWidth = 408
    Glow = False
    PageMargin = 0
    TabSettings.LeftMargin = 2
    TabSettings.RightMargin = 2
    TabSettings.Height = 24
    TabSettings.Spacing = 2
    TabSettings.Shape = tsRightRamp
    TabSettings.Rounding = 3
    ShowShortCutHints = False
    OnChange = PagesChange
    TabOrder = 0
    TabStop = True
    NextPictureChanged = True
    PrevPictureChanged = True
    object tsPreferences: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 422
      Height = 365
      HelpContext = 2001
      Caption = 'Preferences'
      PageAppearance.BorderColor = clBtnFace
      PageAppearance.Color = clBtnFace
      PageAppearance.ColorTo = clBtnFace
      PageAppearance.ColorMirror = clBtnFace
      PageAppearance.ColorMirrorTo = clBtnFace
      PageAppearance.Gradient = ggVertical
      PageAppearance.GradientMirror = ggVertical
      TabAppearance.BorderColor = clBtnFace
      TabAppearance.BorderColorHot = 12697277
      TabAppearance.BorderColorSelected = 12697533
      TabAppearance.BorderColorSelectedHot = 6277882
      TabAppearance.BorderColorDisabled = clBtnFace
      TabAppearance.BorderColorDown = clBtnFace
      TabAppearance.Color = clBtnFace
      TabAppearance.ColorTo = clWhite
      TabAppearance.ColorSelected = 16316660
      TabAppearance.ColorSelectedTo = 15722466
      TabAppearance.ColorDisabled = clWhite
      TabAppearance.ColorDisabledTo = clSilver
      TabAppearance.ColorHot = 13558249
      TabAppearance.ColorHotTo = 14669780
      TabAppearance.ColorMirror = clBtnFace
      TabAppearance.ColorMirrorTo = clWhite
      TabAppearance.ColorMirrorHot = 12966111
      TabAppearance.ColorMirrorHotTo = 9359081
      TabAppearance.ColorMirrorSelected = 15722466
      TabAppearance.ColorMirrorSelectedTo = 15722466
      TabAppearance.ColorMirrorDisabled = clBtnFace
      TabAppearance.ColorMirrorDisabledTo = clSilver
      TabAppearance.Font.Charset = DEFAULT_CHARSET
      TabAppearance.Font.Color = clWindowText
      TabAppearance.Font.Height = -11
      TabAppearance.Font.Name = 'Segoe UI'
      TabAppearance.Font.Style = []
      TabAppearance.Gradient = ggVertical
      TabAppearance.GradientMirror = ggVertical
      TabAppearance.GradientHot = ggRadial
      TabAppearance.GradientMirrorHot = ggVertical
      TabAppearance.GradientSelected = ggVertical
      TabAppearance.GradientMirrorSelected = ggVertical
      TabAppearance.GradientDisabled = ggVertical
      TabAppearance.GradientMirrorDisabled = ggVertical
      TabAppearance.TextColor = clBlack
      TabAppearance.TextColorHot = 6050636
      TabAppearance.TextColorSelected = 6050636
      TabAppearance.TextColorDisabled = clGray
      TabAppearance.ShadowColor = 14077385
      TabAppearance.HighLightColor = 16775871
      TabAppearance.HighLightColorHot = 16250099
      TabAppearance.HighLightColorSelected = 6540536
      TabAppearance.HighLightColorSelectedHot = 12451839
      TabAppearance.HighLightColorDown = 16776144
      TabAppearance.BackGround.Color = clBtnFace
      TabAppearance.BackGround.ColorTo = clBtnFace
      TabAppearance.BackGround.Direction = gdHorizontal
      object lUserInterface: TLabel
        Left = 15
        Top = 15
        Width = 190
        Height = 13
        AutoSize = False
        Caption = 'User Interface'
        FocusControl = cbInterface
      end
      object lInterfaceLanguage: TLabel
        Left = 214
        Top = 15
        Width = 174
        Height = 14
        AutoSize = False
        Caption = 'Interface Language'
        FocusControl = cbInterface
      end
      object lServerVersion: TLabel
        Left = 15
        Top = 63
        Width = 193
        Height = 13
        Anchors = ['akLeft', 'akTop', 'akRight']
        AutoSize = False
        Caption = 'Default Server Version'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lDefClientLib: TLabel
        Left = 15
        Top = 111
        Width = 120
        Height = 13
        Caption = 'Default Client Library File'
      end
      object lLocalizeFormShortcut: TLabel
        Left = 14
        Top = 158
        Width = 174
        Height = 14
        AutoSize = False
        Caption = 'Localize Form Shortcut'
        FocusControl = cbInterface
      end
      object lDefaultCharset: TLabel
        Left = 214
        Top = 63
        Width = 193
        Height = 13
        Anchors = ['akLeft', 'akTop', 'akRight']
        AutoSize = False
        Caption = 'Default Character Set'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object cbRestoreDesktop: TdxCheckEdit
        Left = 10
        Top = 252
        Width = 400
        TabOrder = 7
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = 'Restore Desktop After Connect'
        StyleController = IBEMainForm.MainCheckSC
      end
      object cbMaximizeFirstChild: TdxCheckEdit
        Left = 10
        Top = 276
        Width = 400
        TabOrder = 8
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = 'Maximize First Child Window'
        StyleController = IBEMainForm.MainCheckSC
      end
      object cbInterface: TdxPickEdit
        Left = 14
        Top = 33
        Width = 192
        TabOrder = 0
        StyleController = IBEMainForm.MainSC
        Text = 'Single Document Interface (SDI)'
        OnChange = cbInterfaceChange
        DropDownListStyle = True
        Items.Strings = ['Single Document Interface (SDI)', 'Multiple Document Interface (MDI)']
      end
      object cbZoomToFullScreen: TdxCheckEdit
        Left = 10
        Top = 300
        Width = 400
        TabOrder = 9
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = 'Zoom to Full Screen'
        StyleController = IBEMainForm.MainCheckSC
      end
      object cbDisableMultipleInstances: TdxCheckEdit
        Left = 10
        Top = 228
        Width = 392
        TabOrder = 6
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = 'Disable Mutliple Instances of IBExpert'
        StyleController = IBEMainForm.MainCheckSC
        State = cbsChecked
      end
      object cbAutoHideExplorer: TdxCheckEdit
        Left = 10
        Top = 325
        Width = 400
        TabOrder = 10
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = 'Autohide DB Explorer when Inactive'
        StyleController = IBEMainForm.MainCheckSC
      end
      object cbAutoHideMainForm: TdxCheckEdit
        Left = 10
        Top = 349
        Width = 400
        TabOrder = 11
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = 'Autohide Main Form when Inactive'
        StyleController = IBEMainForm.MainCheckSC
      end
      object cbNoSplash: TdxCheckEdit
        Left = 10
        Top = 204
        Width = 400
        TabOrder = 5
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = 'Don''t Show Splash Screen'
        StyleController = IBEMainForm.MainCheckSC
      end
      object cbInterfaceLanguage: TdxPickEdit
        Left = 213
        Top = 33
        Width = 186
        TabOrder = 1
        Anchors = ['akLeft', 'akTop', 'akRight']
        StyleController = IBEMainForm.MainSC
        OnChange = cbInterfaceChange
        DropDownRows = 20
        DropDownListStyle = True
      end
      object cbServerVersion: TdxPickEdit
        Left = 14
        Top = 80
        Width = 192
        TabOrder = 2
        StyleController = IBEMainForm.MainSC
        DropDownRows = 20
        DropDownListStyle = True
        Items.Strings = ['Unknown', 'InterBase 5.x', 'InterBase 6.0-6.1', 'InterBase 6.5', 'Firebird 1.0', 'Firebird 1.5', 'Yaffil 1.0', 'InterBase 7.0', 'InterBase 7.1']
      end
      object eDefClientLib: TdxButtonEdit
        Left = 14
        Top = 128
        Width = 385
        TabOrder = 4
        OnExit = eDefClientLibExit
        Anchors = ['akLeft', 'akTop', 'akRight']
        StyleController = IBEMainForm.MainSC
        Text = 'gds32.dll'
        Buttons = <
          item
            Default = True
            Glyph.Data = {3e020000424d3e0200000000000036000000280000000d0000000d00000001001800000000000802000000000000000000000000000000000000ff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ff00000000000000000000000000000000000000000000000000000000000000ff00ffff00ffff00ff00000000000000408080408080408080408080408080408080408080408080000000ff00ffff00ff0000000080ffff000000408080408080408080408080408080408080408080408080000000ff00ff0000000080ffff80ffff0000004080804080804080804080804080804080804080804080800000000000000080ffff80ffff80ffff0000000000000000000000000000000000000000000000000000000000000080ffff80ffff80ffff80ffff80ffff80ffff80ffff80ffff000000ff00ffff00ffff00ff0000000080ffff80ffff80ffff000000000000000000000000000000000000ff00ffff00ffff00ff00ff00ff000000000000000000ff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ff00ff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ff000000000000000000ff00ff00ff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ff000000000000ff00ff00ff00ffff00ffff00ffff00ffff00ff000000ff00ffff00ffff00ff000000ff00ff000000ff00ff00ff00ffff00ffff00ffff00ffff00ffff00ff000000000000000000ff00ffff00ffff00ffff00ff00}
            Kind = bkGlyph
            Width = 21
          end
        >
        OnButtonClick = eUDBClientLibraryButtonClick
        ExistButtons = True
      end
      object hkLocalizeForm: THotKey
        Left = 14
        Top = 176
        Width = 192
        Height = 21
        HotKey = 32833
        InvalidKeys = ['hcNone', 'hcShift']
        Modifiers = ['hkAlt']
        TabOrder = 3
      end
      object cbDefaultCharset: TdxPickEdit
        Left = 213
        Top = 80
        Width = 186
        TabOrder = 12
        StyleController = IBEMainForm.MainSC
        DropDownRows = 20
        DropDownListStyle = True
        Items.Strings = ['ASCII', 'BIG_5', 'CYRL', 'DOS437', 'DOS850', 'DOS852', 'DOS857', 'DOS860', 'DOS861', 'DOS863', 'DOS865', 'EUCJ_0208', 'GB_2312', 'ISO8859_1', 'ISO8859_2', 'KSC_5601', 'NEXT', 'NONE', 'OCTETS', 'SJIS_0208', 'UNICODE_FSS', 'UTF8', 'WIN1250', 'WIN1251', 'WIN1252', 'WIN1253', 'WIN1254']
        Sorted = True
      end
    end
    object tsConfirmations: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 422
      Height = 365
      HelpContext = 2002
      Caption = 'Confirmations'
      PageAppearance.BorderColor = clBtnFace
      PageAppearance.Color = clBtnFace
      PageAppearance.ColorTo = clBtnFace
      PageAppearance.ColorMirror = clBtnFace
      PageAppearance.ColorMirrorTo = clBtnFace
      PageAppearance.Gradient = ggVertical
      PageAppearance.GradientMirror = ggVertical
      TabAppearance.BorderColor = clBtnFace
      TabAppearance.BorderColorHot = 12697277
      TabAppearance.BorderColorSelected = 12697533
      TabAppearance.BorderColorSelectedHot = 6277882
      TabAppearance.BorderColorDisabled = clBtnFace
      TabAppearance.BorderColorDown = clBtnFace
      TabAppearance.Color = clBtnFace
      TabAppearance.ColorTo = clWhite
      TabAppearance.ColorSelected = 16316660
      TabAppearance.ColorSelectedTo = 15722466
      TabAppearance.ColorDisabled = clWhite
      TabAppearance.ColorDisabledTo = clSilver
      TabAppearance.ColorHot = 13558249
      TabAppearance.ColorHotTo = 14669780
      TabAppearance.ColorMirror = clBtnFace
      TabAppearance.ColorMirrorTo = clWhite
      TabAppearance.ColorMirrorHot = 12966111
      TabAppearance.ColorMirrorHotTo = 9359081
      TabAppearance.ColorMirrorSelected = 15722466
      TabAppearance.ColorMirrorSelectedTo = 15722466
      TabAppearance.ColorMirrorDisabled = clBtnFace
      TabAppearance.ColorMirrorDisabledTo = clSilver
      TabAppearance.Font.Charset = DEFAULT_CHARSET
      TabAppearance.Font.Color = clWindowText
      TabAppearance.Font.Height = -11
      TabAppearance.Font.Name = 'Segoe UI'
      TabAppearance.Font.Style = []
      TabAppearance.Gradient = ggVertical
      TabAppearance.GradientMirror = ggVertical
      TabAppearance.GradientHot = ggRadial
      TabAppearance.GradientMirrorHot = ggVertical
      TabAppearance.GradientSelected = ggVertical
      TabAppearance.GradientMirrorSelected = ggVertical
      TabAppearance.GradientDisabled = ggVertical
      TabAppearance.GradientMirrorDisabled = ggVertical
      TabAppearance.TextColor = clBlack
      TabAppearance.TextColorHot = 6050636
      TabAppearance.TextColorSelected = 6050636
      TabAppearance.TextColorDisabled = clGray
      TabAppearance.ShadowColor = 14077385
      TabAppearance.HighLightColor = 16775871
      TabAppearance.HighLightColorHot = 16250099
      TabAppearance.HighLightColorSelected = 6540536
      TabAppearance.HighLightColorSelectedHot = 12451839
      TabAppearance.HighLightColorDown = 16776144
      TabAppearance.BackGround.Color = clBtnFace
      TabAppearance.BackGround.ColorTo = clBtnFace
      TabAppearance.BackGround.Direction = gdHorizontal
      object Label1: TLabel
        Left = 16
        Top = 191
        Width = 268
        Height = 13
        Caption = 'When there is an active transaction in form to be closed'
      end
      object ObjectSaveC: TdxCheckEdit
        Left = 10
        Top = 10
        Width = 457
        TabOrder = 0
        Caption = 'Confirm &object (or documentation) saving'
        StyleController = IBEMainForm.MainCheckSC
        State = cbsChecked
      end
      object ObjectExitC: TdxCheckEdit
        Left = 10
        Top = 34
        Width = 457
        TabOrder = 1
        Caption = 'Confirm exit from &editor (if object is changed)'
        StyleController = IBEMainForm.MainCheckSC
        State = cbsChecked
      end
      object ObjectDropC: TdxCheckEdit
        Left = 10
        Top = 58
        Width = 457
        TabOrder = 2
        Caption = 'Confirm object &dropping'
        StyleController = IBEMainForm.MainCheckSC
        State = cbsChecked
      end
      object ExitC: TdxCheckEdit
        Left = 10
        Top = 82
        Width = 457
        TabOrder = 3
        Caption = 'Confirm e&xit'
        StyleController = IBEMainForm.MainCheckSC
        State = cbsChecked
      end
      object SuccessC: TdxCheckEdit
        Left = 10
        Top = 106
        Width = 457
        TabOrder = 4
        Caption = 'Confirm s&uccess compilation'
        StyleController = IBEMainForm.MainCheckSC
      end
      object cbConfirmCommitRollback: TdxCheckEdit
        Left = 10
        Top = 154
        Width = 457
        TabOrder = 5
        Caption = 'Confirm commit/rollback transaction'
        StyleController = IBEMainForm.MainCheckSC
      end
      object cbTransActionWhenCloseForm: TComboBox
        Left = 16
        Top = 215
        Width = 201
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 6
        Items.Strings = ['Let me choose an action', 'Commit transaction', 'Rollback transaction']
      end
      object cbConfirmCloseAllWindows: TdxCheckEdit
        Left = 10
        Top = 130
        Width = 408
        TabOrder = 7
        Caption = 'Confirm closing of all windows'
        StyleController = IBEMainForm.MainCheckSC
      end
    end
    object tsTools: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 422
      Height = 365
      HelpContext = 2003
      Caption = 'Tools'
      PageAppearance.BorderColor = clBtnFace
      PageAppearance.Color = clBtnFace
      PageAppearance.ColorTo = clBtnFace
      PageAppearance.ColorMirror = clBtnFace
      PageAppearance.ColorMirrorTo = clBtnFace
      PageAppearance.Gradient = ggVertical
      PageAppearance.GradientMirror = ggVertical
      TabAppearance.BorderColor = clBtnFace
      TabAppearance.BorderColorHot = 12697277
      TabAppearance.BorderColorSelected = 12697533
      TabAppearance.BorderColorSelectedHot = 6277882
      TabAppearance.BorderColorDisabled = clBtnFace
      TabAppearance.BorderColorDown = clBtnFace
      TabAppearance.Color = clBtnFace
      TabAppearance.ColorTo = clWhite
      TabAppearance.ColorSelected = 16316660
      TabAppearance.ColorSelectedTo = 15722466
      TabAppearance.ColorDisabled = clWhite
      TabAppearance.ColorDisabledTo = clSilver
      TabAppearance.ColorHot = 13558249
      TabAppearance.ColorHotTo = 14669780
      TabAppearance.ColorMirror = clBtnFace
      TabAppearance.ColorMirrorTo = clWhite
      TabAppearance.ColorMirrorHot = 12966111
      TabAppearance.ColorMirrorHotTo = 9359081
      TabAppearance.ColorMirrorSelected = 15722466
      TabAppearance.ColorMirrorSelectedTo = 15722466
      TabAppearance.ColorMirrorDisabled = clBtnFace
      TabAppearance.ColorMirrorDisabledTo = clSilver
      TabAppearance.Font.Charset = DEFAULT_CHARSET
      TabAppearance.Font.Color = clWindowText
      TabAppearance.Font.Height = -11
      TabAppearance.Font.Name = 'Segoe UI'
      TabAppearance.Font.Style = []
      TabAppearance.Gradient = ggVertical
      TabAppearance.GradientMirror = ggVertical
      TabAppearance.GradientHot = ggRadial
      TabAppearance.GradientMirrorHot = ggVertical
      TabAppearance.GradientSelected = ggVertical
      TabAppearance.GradientMirrorSelected = ggVertical
      TabAppearance.GradientDisabled = ggVertical
      TabAppearance.GradientMirrorDisabled = ggVertical
      TabAppearance.TextColor = clBlack
      TabAppearance.TextColorHot = 6050636
      TabAppearance.TextColorSelected = 6050636
      TabAppearance.TextColorDisabled = clGray
      TabAppearance.ShadowColor = 14077385
      TabAppearance.HighLightColor = 16775871
      TabAppearance.HighLightColorHot = 16250099
      TabAppearance.HighLightColorSelected = 6540536
      TabAppearance.HighLightColorSelectedHot = 12451839
      TabAppearance.HighLightColorDown = 16776144
      TabAppearance.BackGround.Color = clBtnFace
      TabAppearance.BackGround.ColorTo = clBtnFace
      TabAppearance.BackGround.Direction = gdHorizontal
      object cbInplaceEditors: TdxCheckEdit
        Left = 10
        Top = 71
        Width = 397
        TabOrder = 0
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = 'Inplace Objects Editors'
        StyleController = IBEMainForm.MainCheckSC
        State = cbsChecked
      end
      object cbAutoGrant: TdxCheckEdit
        Left = 10
        Top = 10
        Width = 395
        TabOrder = 1
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = 'Autogrant privileges when compiling procedures, triggers and views'
        StyleController = IBEMainForm.MainCheckSC
      end
      object cbRevokeExisting: TdxCheckEdit
        Left = 10
        Top = 35
        Width = 415
        TabOrder = 2
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = 'Revoke existing privileges before auto granting'
        StyleController = IBEMainForm.MainCheckSC
      end
    end
    object tsDBExplorer: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 422
      Height = 365
      HelpContext = 2004
      Caption = 'DB Explorer'
      PageAppearance.BorderColor = clBtnFace
      PageAppearance.Color = clBtnFace
      PageAppearance.ColorTo = clBtnFace
      PageAppearance.ColorMirror = clBtnFace
      PageAppearance.ColorMirrorTo = clBtnFace
      PageAppearance.Gradient = ggVertical
      PageAppearance.GradientMirror = ggVertical
      TabAppearance.BorderColor = clBtnFace
      TabAppearance.BorderColorHot = 12697277
      TabAppearance.BorderColorSelected = 12697533
      TabAppearance.BorderColorSelectedHot = 6277882
      TabAppearance.BorderColorDisabled = clBtnFace
      TabAppearance.BorderColorDown = clBtnFace
      TabAppearance.Color = clBtnFace
      TabAppearance.ColorTo = clWhite
      TabAppearance.ColorSelected = 16316660
      TabAppearance.ColorSelectedTo = 15722466
      TabAppearance.ColorDisabled = clWhite
      TabAppearance.ColorDisabledTo = clSilver
      TabAppearance.ColorHot = 13558249
      TabAppearance.ColorHotTo = 14669780
      TabAppearance.ColorMirror = clBtnFace
      TabAppearance.ColorMirrorTo = clWhite
      TabAppearance.ColorMirrorHot = 12966111
      TabAppearance.ColorMirrorHotTo = 9359081
      TabAppearance.ColorMirrorSelected = 15722466
      TabAppearance.ColorMirrorSelectedTo = 15722466
      TabAppearance.ColorMirrorDisabled = clBtnFace
      TabAppearance.ColorMirrorDisabledTo = clSilver
      TabAppearance.Font.Charset = DEFAULT_CHARSET
      TabAppearance.Font.Color = clWindowText
      TabAppearance.Font.Height = -11
      TabAppearance.Font.Name = 'Segoe UI'
      TabAppearance.Font.Style = []
      TabAppearance.Gradient = ggVertical
      TabAppearance.GradientMirror = ggVertical
      TabAppearance.GradientHot = ggRadial
      TabAppearance.GradientMirrorHot = ggVertical
      TabAppearance.GradientSelected = ggVertical
      TabAppearance.GradientMirrorSelected = ggVertical
      TabAppearance.GradientDisabled = ggVertical
      TabAppearance.GradientMirrorDisabled = ggVertical
      TabAppearance.TextColor = clBlack
      TabAppearance.TextColorHot = 6050636
      TabAppearance.TextColorSelected = 6050636
      TabAppearance.TextColorDisabled = clGray
      TabAppearance.ShadowColor = 14077385
      TabAppearance.HighLightColor = 16775871
      TabAppearance.HighLightColorHot = 16250099
      TabAppearance.HighLightColorSelected = 6540536
      TabAppearance.HighLightColorSelectedHot = 12451839
      TabAppearance.HighLightColorDown = 16776144
      TabAppearance.BackGround.Color = clBtnFace
      TabAppearance.BackGround.ColorTo = clBtnFace
      TabAppearance.BackGround.Direction = gdHorizontal
      object lColors: TLabel
        Left = 17
        Top = 174
        Width = 414
        Height = 13
        Anchors = ['akLeft', 'akTop', 'akRight']
        AutoSize = False
        Caption = 'Colors'
      end
      object lTabPosition: TLabel
        Left = 16
        Top = 134
        Width = 58
        Height = 13
        Caption = 'Tab position'
      end
      object ShowDescC: TdxCheckEdit
        Left = 10
        Top = 10
        Width = 411
        TabOrder = 0
        Caption = 'Show Objects &Descriptions'
        StyleController = IBEMainForm.MainCheckSC
      end
      object cbDoubleClickExpanding: TdxCheckEdit
        Left = 10
        Top = 32
        Width = 411
        TabOrder = 1
        Caption = 'Double-click Expanding'
        StyleController = IBEMainForm.MainCheckSC
        State = cbsChecked
      end
      object dxTabSheet2: TAdvOfficePage
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        Caption = 'DB Explorer'
        PageAppearance.BorderColor = clGray
        PageAppearance.Color = clWhite
        PageAppearance.ColorTo = clWhite
        PageAppearance.ColorMirror = clSilver
        PageAppearance.ColorMirrorTo = clWhite
        PageAppearance.Gradient = ggVertical
        PageAppearance.GradientMirror = ggVertical
        TabAppearance.BorderColor = clBtnFace
        TabAppearance.BorderColorHot = clBlue
        TabAppearance.BorderColorSelected = clBtnFace
        TabAppearance.BorderColorSelectedHot = clNone
        TabAppearance.BorderColorDisabled = clNone
        TabAppearance.BorderColorDown = clNone
        TabAppearance.Color = clBtnFace
        TabAppearance.ColorTo = clWhite
        TabAppearance.ColorSelected = clWhite
        TabAppearance.ColorSelectedTo = clBtnFace
        TabAppearance.ColorDisabled = clNone
        TabAppearance.ColorDisabledTo = clNone
        TabAppearance.ColorHot = clYellow
        TabAppearance.ColorHotTo = clNone
        TabAppearance.ColorMirror = clWhite
        TabAppearance.ColorMirrorTo = clWhite
        TabAppearance.ColorMirrorHot = clNone
        TabAppearance.ColorMirrorHotTo = clNone
        TabAppearance.ColorMirrorSelected = clWhite
        TabAppearance.ColorMirrorSelectedTo = clWhite
        TabAppearance.ColorMirrorDisabled = clNone
        TabAppearance.ColorMirrorDisabledTo = clNone
        TabAppearance.Font.Charset = DEFAULT_CHARSET
        TabAppearance.Font.Color = clWindowText
        TabAppearance.Font.Height = -11
        TabAppearance.Font.Name = 'Tahoma'
        TabAppearance.Font.Style = []
        TabAppearance.Gradient = ggVertical
        TabAppearance.GradientMirror = ggVertical
        TabAppearance.GradientHot = ggVertical
        TabAppearance.GradientMirrorHot = ggVertical
        TabAppearance.GradientSelected = ggVertical
        TabAppearance.GradientMirrorSelected = ggVertical
        TabAppearance.GradientDisabled = ggVertical
        TabAppearance.GradientMirrorDisabled = ggVertical
        TabAppearance.TextColor = clBlue
        TabAppearance.TextColorHot = clBlue
        TabAppearance.TextColorSelected = clBlue
        TabAppearance.TextColorDisabled = clWhite
        TabAppearance.ShadowColor = 15255470
        TabAppearance.HighLightColor = 16775871
        TabAppearance.HighLightColorHot = 16643309
        TabAppearance.HighLightColorSelected = 6540536
        TabAppearance.HighLightColorSelectedHot = 12451839
        TabAppearance.HighLightColorDown = 16776144
        TabAppearance.BackGround.Color = clWhite
        TabAppearance.BackGround.ColorTo = clBtnFace
        TabAppearance.BackGround.Direction = gdHorizontal
        object Label2: TLabel
          Left = 14
          Top = 64
          Width = 99
          Height = 13
          Caption = 'System objects color'
        end
        object dxCheckEdit1: TdxCheckEdit
          Left = 10
          Top = 10
          Width = 257
          TabOrder = 0
          Caption = 'Show Objects &Descriptions'
          StyleController = IBEMainForm.MainCheckSC
        end
        object dxCheckEdit2: TdxCheckEdit
          Left = 10
          Top = 32
          Width = 257
          TabOrder = 1
          Caption = 'Double-click expanding'
          StyleController = IBEMainForm.MainCheckSC
          State = cbsChecked
        end
        object dxButtonEdit1: TdxButtonEdit
          Left = 13
          Top = 83
          Width = 158
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          ReadOnly = False
          StyleController = IBEMainForm.MainSC
          Buttons = <
            item
              Default = True
            end
          >
          ViewStyle = vsHideCursor
          OnButtonClick = cbGridColorButtonClick
          StoredValues = 64
          ExistButtons = True
        end
        object dxButtonEdit2: TdxButtonEdit
          Left = 13
          Top = 131
          Width = 158
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          ReadOnly = False
          StyleController = IBEMainForm.MainSC
          Buttons = <
            item
              Default = True
            end
          >
          ViewStyle = vsHideCursor
          OnButtonClick = cbGridColorButtonClick
          StoredValues = 64
          ExistButtons = True
        end
      end
      object DBPagesTL: TdxTreeList
        Left = 13
        Top = 272
        Width = 209
        Height = 57
        Bands = <
          item
          end
        >
        DefaultLayout = True
        HeaderPanelRowCount = 1
        DragMode = dmAutomatic
        TabOrder = 3
        Visible = False
        HideSelection = False
        LookAndFeel = lfFlat
        Options = ['aoColumnSizing', 'aoColumnMoving', 'aoTabThrough', 'aoRowSelect', 'aoDrawEndEllipsis', 'aoAutoWidth', 'aoHideFocusRect']
        OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSortRefresh']
        TreeLineColor = clGrayText
        ShowButtons = False
        ShowRoot = False
        GridLineColor = clSilver
        Data = {165 bytes}
        object DBPagesName: TdxTreeListColumn
          Width = 182
          BandIndex = 0
          RowIndex = 0
        end
        object DBPagesCheck: TdxTreeListColumn
          Width = 25
          BandIndex = 0
          RowIndex = 0
        end
      end
      object tlDBEColors: TdxTreeList
        Left = 16
        Top = 192
        Width = 403
        Height = 97
        Bands = <
          item
          end
        >
        DefaultLayout = True
        HeaderPanelRowCount = 1
        DragMode = dmAutomatic
        TabOrder = 4
        HideSelection = False
        LookAndFeel = lfFlat
        Options = ['aoColumnSizing', 'aoEditing', 'aoTabThrough', 'aoImmediateEditor', 'aoDrawEndEllipsis', 'aoAutoWidth', 'aoHideFocusRect']
        OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSortRefresh']
        TreeLineColor = clGrayText
        ShowButtons = False
        ShowGrid = True
        ShowRoot = False
        GridLineColor = clSilver
        OnDblClick = tlDBEColorsDblClick
        OnKeyPress = tlDBEColorsKeyPress
        OnCustomDrawCell = tlDBEColorsCustomDrawCell
        OnChangeColumn = tlDBEColorsChangeColumn
        Anchors = ['akLeft', 'akTop', 'akRight']
        Data = {229 bytes}
        object tlcObject: TdxTreeListColumn
          Caption = 'Object'
          DisableEditor = True
          Width = 264
          BandIndex = 0
          RowIndex = 0
        end
        object tlcColor: TdxTreeListButtonColumn
          Caption = 'Color'
          DisableEditor = True
          ReadOnly = True
          Width = 137
          BandIndex = 0
          RowIndex = 0
          ShowButtonStyle = sbAlways
          Buttons = <
            item
              Default = True
            end
          >
        end
      end
      object cbFilterDBNodes: TdxCheckEdit
        Left = 10
        Top = 55
        Width = 411
        TabOrder = 5
        Caption = 'Allow filter inactive database nodes'
        StyleController = IBEMainForm.MainCheckSC
      end
      object cbTabPosition: TdxPickEdit
        Left = 80
        Top = 131
        Width = 118
        TabOrder = 6
        StyleController = IBEMainForm.MainSC
        DropDownListStyle = True
        Items.Strings = ['Top', 'Bottom', 'Left', 'Right']
      end
      object cbFilterStrictEqual: TdxCheckEdit
        Left = 11
        Top = 79
        Width = 411
        TabOrder = 7
        Caption = 'Strict equal if no wildcards used in the filter string '
        StyleController = IBEMainForm.MainCheckSC
      end
    end
    object tsSQLEditor: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 422
      Height = 365
      HelpContext = 2005
      Caption = 'SQL Editor'
      PageAppearance.BorderColor = clBtnFace
      PageAppearance.Color = clBtnFace
      PageAppearance.ColorTo = clBtnFace
      PageAppearance.ColorMirror = clBtnFace
      PageAppearance.ColorMirrorTo = clBtnFace
      PageAppearance.Gradient = ggVertical
      PageAppearance.GradientMirror = ggVertical
      TabAppearance.BorderColor = clBtnFace
      TabAppearance.BorderColorHot = 12697277
      TabAppearance.BorderColorSelected = 12697533
      TabAppearance.BorderColorSelectedHot = 6277882
      TabAppearance.BorderColorDisabled = clBtnFace
      TabAppearance.BorderColorDown = clBtnFace
      TabAppearance.Color = clBtnFace
      TabAppearance.ColorTo = clWhite
      TabAppearance.ColorSelected = 16316660
      TabAppearance.ColorSelectedTo = 15722466
      TabAppearance.ColorDisabled = clWhite
      TabAppearance.ColorDisabledTo = clSilver
      TabAppearance.ColorHot = 13558249
      TabAppearance.ColorHotTo = 14669780
      TabAppearance.ColorMirror = clBtnFace
      TabAppearance.ColorMirrorTo = clWhite
      TabAppearance.ColorMirrorHot = 12966111
      TabAppearance.ColorMirrorHotTo = 9359081
      TabAppearance.ColorMirrorSelected = 15722466
      TabAppearance.ColorMirrorSelectedTo = 15722466
      TabAppearance.ColorMirrorDisabled = clBtnFace
      TabAppearance.ColorMirrorDisabledTo = clSilver
      TabAppearance.Font.Charset = DEFAULT_CHARSET
      TabAppearance.Font.Color = clWindowText
      TabAppearance.Font.Height = -11
      TabAppearance.Font.Name = 'Segoe UI'
      TabAppearance.Font.Style = []
      TabAppearance.Gradient = ggVertical
      TabAppearance.GradientMirror = ggVertical
      TabAppearance.GradientHot = ggRadial
      TabAppearance.GradientMirrorHot = ggVertical
      TabAppearance.GradientSelected = ggVertical
      TabAppearance.GradientMirrorSelected = ggVertical
      TabAppearance.GradientDisabled = ggVertical
      TabAppearance.GradientMirrorDisabled = ggVertical
      TabAppearance.TextColor = clBlack
      TabAppearance.TextColorHot = 6050636
      TabAppearance.TextColorSelected = 6050636
      TabAppearance.TextColorDisabled = clGray
      TabAppearance.ShadowColor = 14077385
      TabAppearance.HighLightColor = 16775871
      TabAppearance.HighLightColorHot = 16250099
      TabAppearance.HighLightColorSelected = 6540536
      TabAppearance.HighLightColorSelectedHot = 12451839
      TabAppearance.HighLightColorDown = 16776144
      TabAppearance.BackGround.Color = clBtnFace
      TabAppearance.BackGround.ColorTo = clBtnFace
      TabAppearance.BackGround.Direction = gdHorizontal
      object FetchAllC: TdxCheckEdit
        Left = 10
        Top = 10
        Width = 400
        TabOrder = 0
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = '&Fetch All'
        StyleController = IBEMainForm.MainCheckSC
      end
      object cbGotoResults: TdxCheckEdit
        Left = 10
        Top = 33
        Width = 400
        TabOrder = 1
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = 'Go to Results page after executing'
        StyleController = IBEMainForm.MainCheckSC
      end
      object cbClearDDL: TdxCheckEdit
        Left = 10
        Top = 56
        Width = 400
        TabOrder = 2
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = 'Clear DDL statements after successfull execution'
        StyleController = IBEMainForm.MainCheckSC
      end
      object cbSeparateResultsPage: TdxCheckEdit
        Left = 10
        Top = 79
        Width = 400
        TabOrder = 3
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = 'Separate Results page'
        StyleController = IBEMainForm.MainCheckSC
        State = cbsChecked
      end
      object cbSyncActiveQuery: TdxCheckEdit
        Left = 10
        Top = 128
        Width = 406
        TabOrder = 4
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = 'Synchronize text of active query in opened SQL Editors immediately'
        StyleController = IBEMainForm.MainCheckSC
      end
      object gbWhenSecondSQLEditorStarts: TGroupBox
        Left = 15
        Top = 160
        Width = 399
        Height = 105
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = ' When the second, third etc. SQL Editor starts  '
        TabOrder = 5
        object cbSQLEditorUseNextQuerySet: TdxCheckEdit
          Left = 8
          Top = 24
          Width = 384
          TabOrder = 0
          Anchors = ['akLeft', 'akTop', 'akRight']
          Caption = 'Use next existing query set '
          StyleController = IBEMainForm.MainCheckSC
        end
        object cbSQLEditorCreateNewQuerySet: TdxCheckEdit
          Left = 23
          Top = 48
          Width = 369
          TabOrder = 1
          Anchors = ['akLeft', 'akTop', 'akRight']
          Caption = 'Create a new query set if there are no more inactive query sets'
          StyleController = IBEMainForm.MainCheckSC
        end
        object cbSQLEditorCreateEmptyQuery: TdxCheckEdit
          Left = 8
          Top = 72
          Width = 384
          TabOrder = 2
          Anchors = ['akLeft', 'akTop', 'akRight']
          Caption = 'Create a new empty query in query set used by this SQL Editor'
          StyleController = IBEMainForm.MainCheckSC
        end
      end
    end
    object tsScriptExecutive: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 422
      Height = 365
      HelpContext = 2006
      Caption = 'Script Executive'
      PageAppearance.BorderColor = clBtnFace
      PageAppearance.Color = clBtnFace
      PageAppearance.ColorTo = clBtnFace
      PageAppearance.ColorMirror = clBtnFace
      PageAppearance.ColorMirrorTo = clBtnFace
      PageAppearance.Gradient = ggVertical
      PageAppearance.GradientMirror = ggVertical
      TabAppearance.BorderColor = clBtnFace
      TabAppearance.BorderColorHot = 12697277
      TabAppearance.BorderColorSelected = 12697533
      TabAppearance.BorderColorSelectedHot = 6277882
      TabAppearance.BorderColorDisabled = clBtnFace
      TabAppearance.BorderColorDown = clBtnFace
      TabAppearance.Color = clBtnFace
      TabAppearance.ColorTo = clWhite
      TabAppearance.ColorSelected = 16316660
      TabAppearance.ColorSelectedTo = 15722466
      TabAppearance.ColorDisabled = clWhite
      TabAppearance.ColorDisabledTo = clSilver
      TabAppearance.ColorHot = 13558249
      TabAppearance.ColorHotTo = 14669780
      TabAppearance.ColorMirror = clBtnFace
      TabAppearance.ColorMirrorTo = clWhite
      TabAppearance.ColorMirrorHot = 12966111
      TabAppearance.ColorMirrorHotTo = 9359081
      TabAppearance.ColorMirrorSelected = 15722466
      TabAppearance.ColorMirrorSelectedTo = 15722466
      TabAppearance.ColorMirrorDisabled = clBtnFace
      TabAppearance.ColorMirrorDisabledTo = clSilver
      TabAppearance.Font.Charset = DEFAULT_CHARSET
      TabAppearance.Font.Color = clWindowText
      TabAppearance.Font.Height = -11
      TabAppearance.Font.Name = 'Segoe UI'
      TabAppearance.Font.Style = []
      TabAppearance.Gradient = ggVertical
      TabAppearance.GradientMirror = ggVertical
      TabAppearance.GradientHot = ggRadial
      TabAppearance.GradientMirrorHot = ggVertical
      TabAppearance.GradientSelected = ggVertical
      TabAppearance.GradientMirrorSelected = ggVertical
      TabAppearance.GradientDisabled = ggVertical
      TabAppearance.GradientMirrorDisabled = ggVertical
      TabAppearance.TextColor = clBlack
      TabAppearance.TextColorHot = 6050636
      TabAppearance.TextColorSelected = 6050636
      TabAppearance.TextColorDisabled = clGray
      TabAppearance.ShadowColor = 14077385
      TabAppearance.HighLightColor = 16775871
      TabAppearance.HighLightColorHot = 16250099
      TabAppearance.HighLightColorSelected = 6540536
      TabAppearance.HighLightColorSelectedHot = 12451839
      TabAppearance.HighLightColorDown = 16776144
      TabAppearance.BackGround.Color = clBtnFace
      TabAppearance.BackGround.ColorTo = clBtnFace
      TabAppearance.BackGround.Direction = gdHorizontal
      object AbortOnErrorC: TdxCheckEdit
        Left = 10
        Top = 10
        Width = 393
        TabOrder = 0
        OnClick = AbortOnErrorCClick
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = 'A&bort Script on Error'
        StyleController = IBEMainForm.MainCheckSC
      end
      object RollbackOnAbortC: TdxCheckEdit
        Left = 10
        Top = 33
        Width = 376
        TabOrder = 1
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = '&Rollback on Abort'
        StyleController = IBEMainForm.MainCheckSC
      end
      object cbSEFireEventBlocks: TdxCheckEdit
        Left = 10
        Top = 57
        Width = 376
        TabOrder = 2
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = 'Fire event blocks'
        StyleController = IBEMainForm.MainCheckSC
        State = cbsChecked
      end
    end
    object tsFonts: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 422
      Height = 365
      HelpContext = 2007
      Caption = 'Fonts'
      PageAppearance.BorderColor = clBtnFace
      PageAppearance.Color = clBtnFace
      PageAppearance.ColorTo = clBtnFace
      PageAppearance.ColorMirror = clBtnFace
      PageAppearance.ColorMirrorTo = clBtnFace
      PageAppearance.Gradient = ggVertical
      PageAppearance.GradientMirror = ggVertical
      TabAppearance.BorderColor = clBtnFace
      TabAppearance.BorderColorHot = 12697277
      TabAppearance.BorderColorSelected = 12697533
      TabAppearance.BorderColorSelectedHot = 6277882
      TabAppearance.BorderColorDisabled = clBtnFace
      TabAppearance.BorderColorDown = clBtnFace
      TabAppearance.Color = clBtnFace
      TabAppearance.ColorTo = clWhite
      TabAppearance.ColorSelected = 16316660
      TabAppearance.ColorSelectedTo = 15722466
      TabAppearance.ColorDisabled = clWhite
      TabAppearance.ColorDisabledTo = clSilver
      TabAppearance.ColorHot = 13558249
      TabAppearance.ColorHotTo = 14669780
      TabAppearance.ColorMirror = clBtnFace
      TabAppearance.ColorMirrorTo = clWhite
      TabAppearance.ColorMirrorHot = 12966111
      TabAppearance.ColorMirrorHotTo = 9359081
      TabAppearance.ColorMirrorSelected = 15722466
      TabAppearance.ColorMirrorSelectedTo = 15722466
      TabAppearance.ColorMirrorDisabled = clBtnFace
      TabAppearance.ColorMirrorDisabledTo = clSilver
      TabAppearance.Font.Charset = DEFAULT_CHARSET
      TabAppearance.Font.Color = clWindowText
      TabAppearance.Font.Height = -11
      TabAppearance.Font.Name = 'Segoe UI'
      TabAppearance.Font.Style = []
      TabAppearance.Gradient = ggVertical
      TabAppearance.GradientMirror = ggVertical
      TabAppearance.GradientHot = ggRadial
      TabAppearance.GradientMirrorHot = ggVertical
      TabAppearance.GradientSelected = ggVertical
      TabAppearance.GradientMirrorSelected = ggVertical
      TabAppearance.GradientDisabled = ggVertical
      TabAppearance.GradientMirrorDisabled = ggVertical
      TabAppearance.TextColor = clBlack
      TabAppearance.TextColorHot = 6050636
      TabAppearance.TextColorSelected = 6050636
      TabAppearance.TextColorDisabled = clGray
      TabAppearance.ShadowColor = 14077385
      TabAppearance.HighLightColor = 16775871
      TabAppearance.HighLightColorHot = 16250099
      TabAppearance.HighLightColorSelected = 6540536
      TabAppearance.HighLightColorSelectedHot = 12451839
      TabAppearance.HighLightColorDown = 16776144
      TabAppearance.BackGround.Color = clBtnFace
      TabAppearance.BackGround.ColorTo = clBtnFace
      TabAppearance.BackGround.Direction = gdHorizontal
      object lSystemFont: TLabel
        Left = 10
        Top = 6
        Width = 240
        Height = 13
        AutoSize = False
        Caption = 'System Font Name'
        Transparent = True
      end
      object lSystemFontSize: TLabel
        Left = 10
        Top = 51
        Width = 189
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'System Font Size'
        Transparent = True
      end
      object FontsC: TFontComboBox
        Left = 10
        Top = 23
        Width = 241
        Height = 20
        Cursor = crArrow
        Options = ['foNoOEMFonts']
        TabOrder = 0
        OnChange = FontsCChange
      end
      object FontSizeC: TdxPickEdit
        Left = 202
        Top = 48
        Width = 49
        TabOrder = 1
        StyleController = IBEMainForm.MainSC
        Text = '8'
        OnChange = FontSizeCChange
        Items.Strings = ['8', '10', '11', '12', '14', '16', '18', '20', '22', '26']
      end
      object FontSampleP: TPanel
        Left = 10
        Top = 74
        Width = 241
        Height = 49
        BevelInner = bvLowered
        Caption = 'Sample Text 12345'
        Color = clWindow
        TabOrder = 2
      end
    end
    object tsTransactions: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 422
      Height = 365
      HelpContext = 2008
      Caption = 'Transactions'
      PageAppearance.BorderColor = clBtnFace
      PageAppearance.Color = clBtnFace
      PageAppearance.ColorTo = clBtnFace
      PageAppearance.ColorMirror = clBtnFace
      PageAppearance.ColorMirrorTo = clBtnFace
      PageAppearance.Gradient = ggVertical
      PageAppearance.GradientMirror = ggVertical
      TabAppearance.BorderColor = clBtnFace
      TabAppearance.BorderColorHot = 12697277
      TabAppearance.BorderColorSelected = 12697533
      TabAppearance.BorderColorSelectedHot = 6277882
      TabAppearance.BorderColorDisabled = clBtnFace
      TabAppearance.BorderColorDown = clBtnFace
      TabAppearance.Color = clBtnFace
      TabAppearance.ColorTo = clWhite
      TabAppearance.ColorSelected = 16316660
      TabAppearance.ColorSelectedTo = 15722466
      TabAppearance.ColorDisabled = clWhite
      TabAppearance.ColorDisabledTo = clSilver
      TabAppearance.ColorHot = 13558249
      TabAppearance.ColorHotTo = 14669780
      TabAppearance.ColorMirror = clBtnFace
      TabAppearance.ColorMirrorTo = clWhite
      TabAppearance.ColorMirrorHot = 12966111
      TabAppearance.ColorMirrorHotTo = 9359081
      TabAppearance.ColorMirrorSelected = 15722466
      TabAppearance.ColorMirrorSelectedTo = 15722466
      TabAppearance.ColorMirrorDisabled = clBtnFace
      TabAppearance.ColorMirrorDisabledTo = clSilver
      TabAppearance.Font.Charset = DEFAULT_CHARSET
      TabAppearance.Font.Color = clWindowText
      TabAppearance.Font.Height = -11
      TabAppearance.Font.Name = 'Segoe UI'
      TabAppearance.Font.Style = []
      TabAppearance.Gradient = ggVertical
      TabAppearance.GradientMirror = ggVertical
      TabAppearance.GradientHot = ggRadial
      TabAppearance.GradientMirrorHot = ggVertical
      TabAppearance.GradientSelected = ggVertical
      TabAppearance.GradientMirrorSelected = ggVertical
      TabAppearance.GradientDisabled = ggVertical
      TabAppearance.GradientMirrorDisabled = ggVertical
      TabAppearance.TextColor = clBlack
      TabAppearance.TextColorHot = 6050636
      TabAppearance.TextColorSelected = 6050636
      TabAppearance.TextColorDisabled = clGray
      TabAppearance.ShadowColor = 14077385
      TabAppearance.HighLightColor = 16775871
      TabAppearance.HighLightColorHot = 16250099
      TabAppearance.HighLightColorSelected = 6540536
      TabAppearance.HighLightColorSelectedHot = 12451839
      TabAppearance.HighLightColorDown = 16776144
      TabAppearance.BackGround.Color = clBtnFace
      TabAppearance.BackGround.ColorTo = clBtnFace
      TabAppearance.BackGround.Direction = gdHorizontal
      object lRemark: TLabel
        Left = 8
        Top = 347
        Width = 296
        Height = 13
        Caption = 'Remark: IBExpert will automatically delete wrong parameters!'
        Transparent = True
      end
      object rgDataTransactions: TRadioGroup
        Left = 9
        Top = 8
        Width = 393
        Height = 100
        Caption = '  Data Transactions Properties  '
        Items.Strings = ['Snapshot', 'Read Committed', 'Read-Only Table Stability', 'Read-Write Table Stability']
        TabOrder = 1
        OnClick = rgDataTransactionsChange
      end
      object DataTBPM: TdxMemo
        Tag = 1000
        Left = 209
        Top = 21
        Width = 185
        TabOrder = 0
        OnExit = DataTBPMExit
        StyleController = IBEMainForm.MainSC
        WordWrap = False
        Height = 80
      end
      object rgMetadataTransactions: TRadioGroup
        Left = 9
        Top = 120
        Width = 393
        Height = 100
        Caption = '  Metadata Transactions Properties  '
        Items.Strings = ['Snapshot', 'Read Committed', 'Read-Only Table Stability', 'Read-Write Table Stability']
        TabOrder = 3
        OnClick = rgDataTransactionsChange
      end
      object MetaTBPM: TdxMemo
        Tag = 1000
        Left = 209
        Top = 134
        Width = 185
        TabOrder = 2
        OnExit = DataTBPMExit
        StyleController = IBEMainForm.MainSC
        WordWrap = False
        Height = 78
      end
      object rgScriptTransaction: TRadioGroup
        Left = 9
        Top = 232
        Width = 393
        Height = 100
        Caption = '  Script Transaction Properties  '
        Items.Strings = ['Snapshot', 'Read Committed', 'Read-Only Table Stability', 'Read-Write Table Stability']
        TabOrder = 4
        OnClick = rgDataTransactionsChange
      end
      object ScriptTBPM: TdxMemo
        Tag = 1000
        Left = 209
        Top = 246
        Width = 185
        TabOrder = 5
        OnExit = DataTBPMExit
        StyleController = IBEMainForm.MainSC
        WordWrap = False
        Height = 78
      end
    end
    object tsGrids: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 422
      Height = 365
      HelpContext = 2009
      Caption = 'Grid'
      ImageIndex = 7
      PageAppearance.BorderColor = clBtnFace
      PageAppearance.Color = clBtnFace
      PageAppearance.ColorTo = clBtnFace
      PageAppearance.ColorMirror = clBtnFace
      PageAppearance.ColorMirrorTo = clBtnFace
      PageAppearance.Gradient = ggVertical
      PageAppearance.GradientMirror = ggVertical
      TabAppearance.BorderColor = clBtnFace
      TabAppearance.BorderColorHot = 12697277
      TabAppearance.BorderColorSelected = 12697533
      TabAppearance.BorderColorSelectedHot = 6277882
      TabAppearance.BorderColorDisabled = clBtnFace
      TabAppearance.BorderColorDown = clBtnFace
      TabAppearance.Color = clBtnFace
      TabAppearance.ColorTo = clWhite
      TabAppearance.ColorSelected = 16316660
      TabAppearance.ColorSelectedTo = 15722466
      TabAppearance.ColorDisabled = clWhite
      TabAppearance.ColorDisabledTo = clSilver
      TabAppearance.ColorHot = 13558249
      TabAppearance.ColorHotTo = 14669780
      TabAppearance.ColorMirror = clBtnFace
      TabAppearance.ColorMirrorTo = clWhite
      TabAppearance.ColorMirrorHot = 12966111
      TabAppearance.ColorMirrorHotTo = 9359081
      TabAppearance.ColorMirrorSelected = 15722466
      TabAppearance.ColorMirrorSelectedTo = 15722466
      TabAppearance.ColorMirrorDisabled = clBtnFace
      TabAppearance.ColorMirrorDisabledTo = clSilver
      TabAppearance.Font.Charset = DEFAULT_CHARSET
      TabAppearance.Font.Color = clWindowText
      TabAppearance.Font.Height = -11
      TabAppearance.Font.Name = 'Segoe UI'
      TabAppearance.Font.Style = []
      TabAppearance.Gradient = ggVertical
      TabAppearance.GradientMirror = ggVertical
      TabAppearance.GradientHot = ggRadial
      TabAppearance.GradientMirrorHot = ggVertical
      TabAppearance.GradientSelected = ggVertical
      TabAppearance.GradientMirrorSelected = ggVertical
      TabAppearance.GradientDisabled = ggVertical
      TabAppearance.GradientMirrorDisabled = ggVertical
      TabAppearance.TextColor = clBlack
      TabAppearance.TextColorHot = 6050636
      TabAppearance.TextColorSelected = 6050636
      TabAppearance.TextColorDisabled = clGray
      TabAppearance.ShadowColor = 14077385
      TabAppearance.HighLightColor = 16775871
      TabAppearance.HighLightColorHot = 16250099
      TabAppearance.HighLightColorSelected = 6540536
      TabAppearance.HighLightColorSelectedHot = 12451839
      TabAppearance.HighLightColorDown = 16776144
      TabAppearance.BackGround.Color = clBtnFace
      TabAppearance.BackGround.ColorTo = clBtnFace
      TabAppearance.BackGround.Direction = gdHorizontal
      object StripyC: TdxCheckEdit
        Left = 10
        Top = 10
        Width = 420
        TabOrder = 0
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = 'Stripy &Grids'
        StyleController = IBEMainForm.MainCheckSC
        State = cbsChecked
      end
      object gbNulls: TGroupBox
        Left = 13
        Top = 229
        Width = 148
        Height = 115
        Caption = ' NULLs '
        TabOrder = 1
        object lNullText: TLabel
          Left = 9
          Top = 19
          Width = 22
          Height = 13
          Caption = 'Text'
          FocusControl = eNullText
        end
        object lNullColor: TLabel
          Left = 9
          Top = 65
          Width = 25
          Height = 13
          Caption = 'Color'
        end
        object eNullText: TdxEdit
          Left = 9
          Top = 38
          Width = 127
          TabOrder = 0
          Text = '<null>'
          StyleController = IBEMainForm.MainSC
        end
        object cbNullColor: TdxButtonEdit
          Left = 9
          Top = 83
          Width = 127
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          ReadOnly = False
          StyleController = IBEMainForm.MainSC
          Buttons = <
            item
              Default = True
            end
          >
          ViewStyle = vsHideCursor
          OnButtonClick = cbGridColorButtonClick
          StoredValues = 64
          ExistButtons = True
        end
      end
      object cbTracking: TdxCheckEdit
        Left = 10
        Top = 33
        Width = 420
        TabOrder = 2
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = 'Scrollbars tracking'
        StyleController = IBEMainForm.MainCheckSC
      end
      object cbImmediateEditor: TdxCheckEdit
        Left = 10
        Top = 79
        Width = 420
        TabOrder = 3
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = 'Immediate editor'
        StyleController = IBEMainForm.MainCheckSC
      end
      object cbTextBlobsAsMemo: TdxCheckEdit
        Left = 10
        Top = 56
        Width = 420
        TabOrder = 4
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = 'Show text blobs as memo'
        StyleController = IBEMainForm.MainCheckSC
      end
      object cbAllowRecordsGrouping: TdxCheckEdit
        Left = 10
        Top = 103
        Width = 420
        TabOrder = 5
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = 'Allow records grouping '
        StyleController = IBEMainForm.MainCheckSC
      end
      object cbGridTooltips: TdxCheckEdit
        Left = 10
        Top = 127
        Width = 420
        TabOrder = 6
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = 'Enable tooltips'
        StyleController = IBEMainForm.MainCheckSC
      end
      object cbGridTabs: TdxCheckEdit
        Left = 10
        Top = 151
        Width = 420
        TabOrder = 7
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = 'Enable navigation using Tab and Shift+Tab keys'
        StyleController = IBEMainForm.MainCheckSC
      end
      object cbAllowMultiselect: TdxCheckEdit
        Left = 10
        Top = 175
        Width = 420
        TabOrder = 8
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = 'Allow multiselect'
        StyleController = IBEMainForm.MainCheckSC
      end
      object GroupBox3: TGroupBox
        Left = 170
        Top = 229
        Width = 252
        Height = 115
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = ' NOT NULL fields '
        TabOrder = 9
        object lNotNullsColor: TLabel
          Left = 9
          Top = 65
          Width = 25
          Height = 13
          Caption = 'Color'
          Visible = False
        end
        object cbGridNotNullsBold: TdxCheckEdit
          Left = 5
          Top = 19
          Width = 241
          TabOrder = 0
          Anchors = ['akLeft', 'akTop', 'akRight']
          Caption = 'Highlight with bold font'
          StyleController = IBEMainForm.MainCheckSC
        end
        object cbGridNotNullsColor: TdxCheckEdit
          Left = 5
          Top = 41
          Width = 241
          TabOrder = 1
          Anchors = ['akLeft', 'akTop', 'akRight']
          Caption = 'Highlight with color'
          StyleController = IBEMainForm.MainCheckSC
          OnChange = cbGridNotNullsColorChange
        end
        object eNotNullsColor: TdxButtonEdit
          Left = 9
          Top = 83
          Width = 127
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          Visible = False
          ReadOnly = False
          StyleController = IBEMainForm.MainSC
          Buttons = <
            item
              Default = True
            end
          >
          ViewStyle = vsHideCursor
          OnButtonClick = cbGridColorButtonClick
          StoredValues = 64
          ExistButtons = True
        end
      end
      object cbGridFullRefresh: TdxCheckEdit
        Left = 10
        Top = 198
        Width = 420
        TabOrder = 10
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = 'Full refresh (close and open dataset) if Refresh button clicked'
        StyleController = IBEMainForm.MainCheckSC
      end
    end
    object tsGridColors: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 422
      Height = 365
      HelpContext = 2010
      Caption = 'Colors'
      PageAppearance.BorderColor = clBtnFace
      PageAppearance.Color = clBtnFace
      PageAppearance.ColorTo = clBtnFace
      PageAppearance.ColorMirror = clBtnFace
      PageAppearance.ColorMirrorTo = clBtnFace
      PageAppearance.Gradient = ggVertical
      PageAppearance.GradientMirror = ggVertical
      TabAppearance.BorderColor = clBtnFace
      TabAppearance.BorderColorHot = 12697277
      TabAppearance.BorderColorSelected = 12697533
      TabAppearance.BorderColorSelectedHot = 6277882
      TabAppearance.BorderColorDisabled = clBtnFace
      TabAppearance.BorderColorDown = clBtnFace
      TabAppearance.Color = clBtnFace
      TabAppearance.ColorTo = clWhite
      TabAppearance.ColorSelected = 16316660
      TabAppearance.ColorSelectedTo = 15722466
      TabAppearance.ColorDisabled = clWhite
      TabAppearance.ColorDisabledTo = clSilver
      TabAppearance.ColorHot = 13558249
      TabAppearance.ColorHotTo = 14669780
      TabAppearance.ColorMirror = clBtnFace
      TabAppearance.ColorMirrorTo = clWhite
      TabAppearance.ColorMirrorHot = 12966111
      TabAppearance.ColorMirrorHotTo = 9359081
      TabAppearance.ColorMirrorSelected = 15722466
      TabAppearance.ColorMirrorSelectedTo = 15722466
      TabAppearance.ColorMirrorDisabled = clBtnFace
      TabAppearance.ColorMirrorDisabledTo = clSilver
      TabAppearance.Font.Charset = DEFAULT_CHARSET
      TabAppearance.Font.Color = clWindowText
      TabAppearance.Font.Height = -11
      TabAppearance.Font.Name = 'Segoe UI'
      TabAppearance.Font.Style = []
      TabAppearance.Gradient = ggVertical
      TabAppearance.GradientMirror = ggVertical
      TabAppearance.GradientHot = ggRadial
      TabAppearance.GradientMirrorHot = ggVertical
      TabAppearance.GradientSelected = ggVertical
      TabAppearance.GradientMirrorSelected = ggVertical
      TabAppearance.GradientDisabled = ggVertical
      TabAppearance.GradientMirrorDisabled = ggVertical
      TabAppearance.TextColor = clBlack
      TabAppearance.TextColorHot = 6050636
      TabAppearance.TextColorSelected = 6050636
      TabAppearance.TextColorDisabled = clGray
      TabAppearance.ShadowColor = 14077385
      TabAppearance.HighLightColor = 16775871
      TabAppearance.HighLightColorHot = 16250099
      TabAppearance.HighLightColorSelected = 6540536
      TabAppearance.HighLightColorSelectedHot = 12451839
      TabAppearance.HighLightColorDown = 16776144
      TabAppearance.BackGround.Color = clBtnFace
      TabAppearance.BackGround.ColorTo = clBtnFace
      TabAppearance.BackGround.Direction = gdHorizontal
      object lGrid: TLabel
        Left = 109
        Top = 18
        Width = 78
        Height = 13
        Alignment = taRightJustify
        Caption = 'Grid Background'
        Transparent = True
      end
      object lRow: TLabel
        Left = 126
        Top = 50
        Width = 61
        Height = 13
        Alignment = taRightJustify
        Caption = 'Current Row'
        Transparent = True
      end
      object lStriply: TLabel
        Left = 138
        Top = 84
        Width = 49
        Height = 13
        Alignment = taRightJustify
        Caption = 'Odd Rows'
        Transparent = True
      end
      object cbGridColor: TdxButtonEdit
        Left = 190
        Top = 14
        Width = 128
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        ReadOnly = False
        StyleController = IBEMainForm.MainSC
        Buttons = <
          item
            Default = True
          end
        >
        ViewStyle = vsHideCursor
        OnButtonClick = cbGridColorButtonClick
        StoredValues = 64
        ExistButtons = True
      end
      object cbRowColor: TdxButtonEdit
        Left = 190
        Top = 47
        Width = 128
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        ReadOnly = False
        StyleController = IBEMainForm.MainSC
        Buttons = <
          item
            Default = True
          end
        >
        ViewStyle = vsHideCursor
        OnButtonClick = cbGridColorButtonClick
        StoredValues = 64
        ExistButtons = True
      end
      object cbStriplyColor: TdxButtonEdit
        Left = 190
        Top = 81
        Width = 128
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        ReadOnly = False
        StyleController = IBEMainForm.MainSC
        Buttons = <
          item
            Default = True
          end
        >
        ViewStyle = vsHideCursor
        OnButtonClick = cbGridColorButtonClick
        StoredValues = 64
        ExistButtons = True
      end
    end
    object tsGridFormats: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 422
      Height = 365
      HelpContext = 2011
      Caption = 'Display Formats'
      PageAppearance.BorderColor = clBtnFace
      PageAppearance.Color = clBtnFace
      PageAppearance.ColorTo = clBtnFace
      PageAppearance.ColorMirror = clBtnFace
      PageAppearance.ColorMirrorTo = clBtnFace
      PageAppearance.Gradient = ggVertical
      PageAppearance.GradientMirror = ggVertical
      TabAppearance.BorderColor = clBtnFace
      TabAppearance.BorderColorHot = 12697277
      TabAppearance.BorderColorSelected = 12697533
      TabAppearance.BorderColorSelectedHot = 6277882
      TabAppearance.BorderColorDisabled = clBtnFace
      TabAppearance.BorderColorDown = clBtnFace
      TabAppearance.Color = clBtnFace
      TabAppearance.ColorTo = clWhite
      TabAppearance.ColorSelected = 16316660
      TabAppearance.ColorSelectedTo = 15722466
      TabAppearance.ColorDisabled = clWhite
      TabAppearance.ColorDisabledTo = clSilver
      TabAppearance.ColorHot = 13558249
      TabAppearance.ColorHotTo = 14669780
      TabAppearance.ColorMirror = clBtnFace
      TabAppearance.ColorMirrorTo = clWhite
      TabAppearance.ColorMirrorHot = 12966111
      TabAppearance.ColorMirrorHotTo = 9359081
      TabAppearance.ColorMirrorSelected = 15722466
      TabAppearance.ColorMirrorSelectedTo = 15722466
      TabAppearance.ColorMirrorDisabled = clBtnFace
      TabAppearance.ColorMirrorDisabledTo = clSilver
      TabAppearance.Font.Charset = DEFAULT_CHARSET
      TabAppearance.Font.Color = clWindowText
      TabAppearance.Font.Height = -11
      TabAppearance.Font.Name = 'Segoe UI'
      TabAppearance.Font.Style = []
      TabAppearance.Gradient = ggVertical
      TabAppearance.GradientMirror = ggVertical
      TabAppearance.GradientHot = ggRadial
      TabAppearance.GradientMirrorHot = ggVertical
      TabAppearance.GradientSelected = ggVertical
      TabAppearance.GradientMirrorSelected = ggVertical
      TabAppearance.GradientDisabled = ggVertical
      TabAppearance.GradientMirrorDisabled = ggVertical
      TabAppearance.TextColor = clBlack
      TabAppearance.TextColorHot = 6050636
      TabAppearance.TextColorSelected = 6050636
      TabAppearance.TextColorDisabled = clGray
      TabAppearance.ShadowColor = 14077385
      TabAppearance.HighLightColor = 16775871
      TabAppearance.HighLightColorHot = 16250099
      TabAppearance.HighLightColorSelected = 6540536
      TabAppearance.HighLightColorSelectedHot = 12451839
      TabAppearance.HighLightColorDown = 16776144
      TabAppearance.BackGround.Color = clBtnFace
      TabAppearance.BackGround.ColorTo = clBtnFace
      TabAppearance.BackGround.Direction = gdHorizontal
      object lInteger: TLabel
        Left = 8
        Top = 11
        Width = 150
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Integer fields'
        FocusControl = IntMaskE
        Transparent = True
      end
      object lFloat: TLabel
        Left = 8
        Top = 41
        Width = 150
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Float fields'
        FocusControl = FltMaskE
        Transparent = True
      end
      object lDateTime: TLabel
        Left = 8
        Top = 97
        Width = 150
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'DateTime Fields'
        FocusControl = DateTimeMaskE
        Transparent = True
      end
      object lDate: TLabel
        Left = 8
        Top = 128
        Width = 150
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Date Fields'
        FocusControl = DateMaskE
        Transparent = True
      end
      object lTime: TLabel
        Left = 8
        Top = 159
        Width = 150
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Time Fields'
        FocusControl = TimeMaskE
        Transparent = True
      end
      object lStringWidth: TLabel
        Left = 11
        Top = 210
        Width = 126
        Height = 13
        Caption = 'String Fields Width (chars)'
        FocusControl = seStrFldWidth
        Transparent = True
      end
      object IntMaskE: TdxEdit
        Left = 163
        Top = 8
        Width = 158
        TabOrder = 0
        Text = '#,###,##0'
        StyleController = IBEMainForm.MainSC
      end
      object FltMaskE: TdxEdit
        Left = 163
        Top = 38
        Width = 158
        TabOrder = 1
        Text = '#,###,##0.000'
        StyleController = IBEMainForm.MainSC
      end
      object DateTimeMaskE: TdxEdit
        Left = 163
        Top = 94
        Width = 158
        TabOrder = 2
        Text = 'dd.mm.yy hh:mm'
        StyleController = IBEMainForm.MainSC
      end
      object DateMaskE: TdxEdit
        Left = 163
        Top = 125
        Width = 158
        TabOrder = 3
        Text = 'dd.mm.yy'
        StyleController = IBEMainForm.MainSC
      end
      object TimeMaskE: TdxEdit
        Left = 163
        Top = 156
        Width = 158
        TabOrder = 4
        Text = 'hh:mm'
        StyleController = IBEMainForm.MainSC
      end
      object seStrFldWidth: TdxSpinEdit
        Left = 141
        Top = 207
        Width = 57
        TabOrder = 5
        StyleController = IBEMainForm.MainSC
        MaxValue = -1.2938158758247024e-172
        Value = -1.4916681462400413e-154
        StoredValues = 16
      end
      object cbUseFieldScale: TdxCheckEdit
        Left = 159
        Top = 62
        Width = 257
        TabOrder = 6
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = 'Use Field Scale'
        StyleController = IBEMainForm.MainCheckSC
      end
    end
    object tsHelp: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 422
      Height = 365
      HelpContext = 2012
      Caption = 'Additional Help'
      ImageIndex = 5
      PageAppearance.BorderColor = clBtnFace
      PageAppearance.Color = clBtnFace
      PageAppearance.ColorTo = clBtnFace
      PageAppearance.ColorMirror = clBtnFace
      PageAppearance.ColorMirrorTo = clBtnFace
      PageAppearance.Gradient = ggVertical
      PageAppearance.GradientMirror = ggVertical
      TabAppearance.BorderColor = clBtnFace
      TabAppearance.BorderColorHot = 12697277
      TabAppearance.BorderColorSelected = 12697533
      TabAppearance.BorderColorSelectedHot = 6277882
      TabAppearance.BorderColorDisabled = clBtnFace
      TabAppearance.BorderColorDown = clBtnFace
      TabAppearance.Color = clBtnFace
      TabAppearance.ColorTo = clWhite
      TabAppearance.ColorSelected = 16316660
      TabAppearance.ColorSelectedTo = 15722466
      TabAppearance.ColorDisabled = clWhite
      TabAppearance.ColorDisabledTo = clSilver
      TabAppearance.ColorHot = 13558249
      TabAppearance.ColorHotTo = 14669780
      TabAppearance.ColorMirror = clBtnFace
      TabAppearance.ColorMirrorTo = clWhite
      TabAppearance.ColorMirrorHot = 12966111
      TabAppearance.ColorMirrorHotTo = 9359081
      TabAppearance.ColorMirrorSelected = 15722466
      TabAppearance.ColorMirrorSelectedTo = 15722466
      TabAppearance.ColorMirrorDisabled = clBtnFace
      TabAppearance.ColorMirrorDisabledTo = clSilver
      TabAppearance.Font.Charset = DEFAULT_CHARSET
      TabAppearance.Font.Color = clWindowText
      TabAppearance.Font.Height = -11
      TabAppearance.Font.Name = 'Segoe UI'
      TabAppearance.Font.Style = []
      TabAppearance.Gradient = ggVertical
      TabAppearance.GradientMirror = ggVertical
      TabAppearance.GradientHot = ggRadial
      TabAppearance.GradientMirrorHot = ggVertical
      TabAppearance.GradientSelected = ggVertical
      TabAppearance.GradientMirrorSelected = ggVertical
      TabAppearance.GradientDisabled = ggVertical
      TabAppearance.GradientMirrorDisabled = ggVertical
      TabAppearance.TextColor = clBlack
      TabAppearance.TextColorHot = 6050636
      TabAppearance.TextColorSelected = 6050636
      TabAppearance.TextColorDisabled = clGray
      TabAppearance.ShadowColor = 14077385
      TabAppearance.HighLightColor = 16775871
      TabAppearance.HighLightColorHot = 16250099
      TabAppearance.HighLightColorSelected = 6540536
      TabAppearance.HighLightColorSelectedHot = 12451839
      TabAppearance.HighLightColorDown = 16776144
      TabAppearance.BackGround.Color = clBtnFace
      TabAppearance.BackGround.ColorTo = clBtnFace
      TabAppearance.BackGround.Direction = gdHorizontal
      object tlAddHelp: TdxTreeList
        Left = 0
        Top = 1
        Width = 322
        Height = 364
        Bands = <
          item
          end
        >
        DefaultLayout = True
        HeaderPanelRowCount = 1
        Align = alClient
        DragMode = dmAutomatic
        TabOrder = 0
        HideSelection = False
        LookAndFeel = lfFlat
        Options = ['aoColumnSizing', 'aoColumnMoving', 'aoEditing', 'aoTabThrough', 'aoImmediateEditor', 'aoDrawEndEllipsis', 'aoHideFocusRect']
        OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSortRefresh']
        TreeLineColor = clGrayText
        ShowGrid = True
        ShowRoot = False
        GridLineColor = clSilver
        object tlcMenuCap: TdxTreeListColumn
          Caption = 'Menu caption'
          Width = 285
          BandIndex = 0
          RowIndex = 0
        end
        object tlcFileName: TdxTreeListButtonColumn
          Caption = 'File name'
          Width = 290
          BandIndex = 0
          RowIndex = 0
          Buttons = <
            item
              Default = True
            end
          >
          OnButtonClick = tlcFileNameButtonClick
        end
      end
      object Panel2: TPanel
        Left = 322
        Top = 1
        Width = 100
        Height = 364
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 1
        object bAddHelp: TButton
          Left = 7
          Top = 6
          Width = 89
          Height = 25
          Action = actAdd
          Anchors = ['akTop', 'akRight']
          TabOrder = 0
        end
        object bRemoveHelp: TButton
          Left = 7
          Top = 36
          Width = 89
          Height = 25
          Action = actRemove
          Anchors = ['akTop', 'akRight']
          TabOrder = 1
        end
        object Button1: TButton
          Left = 7
          Top = 81
          Width = 89
          Height = 25
          Action = actMoveUp
          Anchors = ['akTop', 'akRight']
          TabOrder = 2
        end
        object Button2: TButton
          Left = 7
          Top = 111
          Width = 89
          Height = 25
          Action = actMoveDown
          Anchors = ['akTop', 'akRight']
          TabOrder = 3
        end
      end
    end
    object tsAddTools: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 422
      Height = 365
      HelpContext = 2013
      Caption = 'Additional Tools'
      PageAppearance.BorderColor = clBtnFace
      PageAppearance.Color = clBtnFace
      PageAppearance.ColorTo = clBtnFace
      PageAppearance.ColorMirror = clBtnFace
      PageAppearance.ColorMirrorTo = clBtnFace
      PageAppearance.Gradient = ggVertical
      PageAppearance.GradientMirror = ggVertical
      TabAppearance.BorderColor = clBtnFace
      TabAppearance.BorderColorHot = 12697277
      TabAppearance.BorderColorSelected = 12697533
      TabAppearance.BorderColorSelectedHot = 6277882
      TabAppearance.BorderColorDisabled = clBtnFace
      TabAppearance.BorderColorDown = clBtnFace
      TabAppearance.Color = clBtnFace
      TabAppearance.ColorTo = clWhite
      TabAppearance.ColorSelected = 16316660
      TabAppearance.ColorSelectedTo = 15722466
      TabAppearance.ColorDisabled = clWhite
      TabAppearance.ColorDisabledTo = clSilver
      TabAppearance.ColorHot = 13558249
      TabAppearance.ColorHotTo = 14669780
      TabAppearance.ColorMirror = clBtnFace
      TabAppearance.ColorMirrorTo = clWhite
      TabAppearance.ColorMirrorHot = 12966111
      TabAppearance.ColorMirrorHotTo = 9359081
      TabAppearance.ColorMirrorSelected = 15722466
      TabAppearance.ColorMirrorSelectedTo = 15722466
      TabAppearance.ColorMirrorDisabled = clBtnFace
      TabAppearance.ColorMirrorDisabledTo = clSilver
      TabAppearance.Font.Charset = DEFAULT_CHARSET
      TabAppearance.Font.Color = clWindowText
      TabAppearance.Font.Height = -11
      TabAppearance.Font.Name = 'Segoe UI'
      TabAppearance.Font.Style = []
      TabAppearance.Gradient = ggVertical
      TabAppearance.GradientMirror = ggVertical
      TabAppearance.GradientHot = ggRadial
      TabAppearance.GradientMirrorHot = ggVertical
      TabAppearance.GradientSelected = ggVertical
      TabAppearance.GradientMirrorSelected = ggVertical
      TabAppearance.GradientDisabled = ggVertical
      TabAppearance.GradientMirrorDisabled = ggVertical
      TabAppearance.TextColor = clBlack
      TabAppearance.TextColorHot = 6050636
      TabAppearance.TextColorSelected = 6050636
      TabAppearance.TextColorDisabled = clGray
      TabAppearance.ShadowColor = 14077385
      TabAppearance.HighLightColor = 16775871
      TabAppearance.HighLightColorHot = 16250099
      TabAppearance.HighLightColorSelected = 6540536
      TabAppearance.HighLightColorSelectedHot = 12451839
      TabAppearance.HighLightColorDown = 16776144
      TabAppearance.BackGround.Color = clBtnFace
      TabAppearance.BackGround.ColorTo = clBtnFace
      TabAppearance.BackGround.Direction = gdHorizontal
      object Panel3: TPanel
        Left = 322
        Top = 1
        Width = 100
        Height = 364
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 2
        object Button7: TButton
          Left = 7
          Top = 6
          Width = 89
          Height = 25
          Action = actAdd
          Anchors = ['akTop', 'akRight']
          TabOrder = 0
        end
        object Button8: TButton
          Left = 7
          Top = 36
          Width = 89
          Height = 25
          Action = actRemove
          Anchors = ['akTop', 'akRight']
          TabOrder = 1
        end
        object Button9: TButton
          Left = 7
          Top = 81
          Width = 89
          Height = 25
          Action = actMoveUp
          Anchors = ['akTop', 'akRight']
          TabOrder = 2
        end
        object Button10: TButton
          Left = 7
          Top = 111
          Width = 89
          Height = 25
          Action = actMoveDown
          Anchors = ['akTop', 'akRight']
          TabOrder = 3
        end
      end
      object dxTabSheet1: TAdvOfficePage
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        Caption = 'Additional Help'
        ImageIndex = 5
        PageAppearance.BorderColor = clGray
        PageAppearance.Color = clWhite
        PageAppearance.ColorTo = clWhite
        PageAppearance.ColorMirror = clSilver
        PageAppearance.ColorMirrorTo = clWhite
        PageAppearance.Gradient = ggVertical
        PageAppearance.GradientMirror = ggVertical
        TabAppearance.BorderColor = clBtnFace
        TabAppearance.BorderColorHot = clBlue
        TabAppearance.BorderColorSelected = clBtnFace
        TabAppearance.BorderColorSelectedHot = clNone
        TabAppearance.BorderColorDisabled = clNone
        TabAppearance.BorderColorDown = clNone
        TabAppearance.Color = clBtnFace
        TabAppearance.ColorTo = clWhite
        TabAppearance.ColorSelected = clWhite
        TabAppearance.ColorSelectedTo = clBtnFace
        TabAppearance.ColorDisabled = clNone
        TabAppearance.ColorDisabledTo = clNone
        TabAppearance.ColorHot = clYellow
        TabAppearance.ColorHotTo = clNone
        TabAppearance.ColorMirror = clWhite
        TabAppearance.ColorMirrorTo = clWhite
        TabAppearance.ColorMirrorHot = clNone
        TabAppearance.ColorMirrorHotTo = clNone
        TabAppearance.ColorMirrorSelected = clWhite
        TabAppearance.ColorMirrorSelectedTo = clWhite
        TabAppearance.ColorMirrorDisabled = clNone
        TabAppearance.ColorMirrorDisabledTo = clNone
        TabAppearance.Font.Charset = DEFAULT_CHARSET
        TabAppearance.Font.Color = clWindowText
        TabAppearance.Font.Height = -11
        TabAppearance.Font.Name = 'Tahoma'
        TabAppearance.Font.Style = []
        TabAppearance.Gradient = ggVertical
        TabAppearance.GradientMirror = ggVertical
        TabAppearance.GradientHot = ggVertical
        TabAppearance.GradientMirrorHot = ggVertical
        TabAppearance.GradientSelected = ggVertical
        TabAppearance.GradientMirrorSelected = ggVertical
        TabAppearance.GradientDisabled = ggVertical
        TabAppearance.GradientMirrorDisabled = ggVertical
        TabAppearance.TextColor = clBlue
        TabAppearance.TextColorHot = clBlue
        TabAppearance.TextColorSelected = clBlue
        TabAppearance.TextColorDisabled = clWhite
        TabAppearance.ShadowColor = 15255470
        TabAppearance.HighLightColor = 16775871
        TabAppearance.HighLightColorHot = 16643309
        TabAppearance.HighLightColorSelected = 6540536
        TabAppearance.HighLightColorSelectedHot = 12451839
        TabAppearance.HighLightColorDown = 16776144
        TabAppearance.BackGround.Color = clWhite
        TabAppearance.BackGround.ColorTo = clBtnFace
        TabAppearance.BackGround.Direction = gdHorizontal
        object Button3: TButton
          Left = 398
          Top = 6
          Width = 89
          Height = 25
          Caption = 'Add'
          TabOrder = 0
        end
        object Button4: TButton
          Left = 398
          Top = 36
          Width = 89
          Height = 25
          Caption = 'Remove'
          TabOrder = 1
        end
        object Button5: TButton
          Left = 398
          Top = 81
          Width = 89
          Height = 25
          Action = actMoveUp
          TabOrder = 2
        end
        object Button6: TButton
          Left = 398
          Top = 111
          Width = 89
          Height = 25
          Action = actMoveDown
          TabOrder = 3
        end
        object dxTreeList1: TdxTreeList
          Left = 1
          Top = 0
          Width = 390
          Height = 329
          Bands = <
            item
            end
          >
          DefaultLayout = True
          HeaderPanelRowCount = 1
          DragMode = dmAutomatic
          TabOrder = 4
          HideSelection = False
          LookAndFeel = lfFlat
          Options = ['aoColumnSizing', 'aoColumnMoving', 'aoEditing', 'aoTabThrough', 'aoImmediateEditor', 'aoDrawEndEllipsis', 'aoAutoWidth', 'aoHideFocusRect']
          OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSortRefresh']
          TreeLineColor = clGrayText
          ShowGrid = True
          ShowRoot = False
          GridLineColor = clSilver
          object dxTreeListColumn1: TdxTreeListColumn
            Caption = 'Menu caption'
            Width = 173
            BandIndex = 0
            RowIndex = 0
          end
          object dxTreeListButtonColumn1: TdxTreeListButtonColumn
            Caption = 'File name'
            Width = 290
            BandIndex = 0
            RowIndex = 0
            Buttons = <
              item
                Default = True
              end
            >
            OnButtonClick = tlcFileNameButtonClick
          end
        end
      end
      object tlAddTools: TdxTreeList
        Left = 0
        Top = 1
        Width = 322
        Height = 364
        Bands = <
          item
          end
        >
        DefaultLayout = True
        HeaderPanelRowCount = 1
        Align = alClient
        DragMode = dmAutomatic
        TabOrder = 0
        HideSelection = False
        LookAndFeel = lfFlat
        Options = ['aoColumnSizing', 'aoEditing', 'aoTabThrough', 'aoImmediateEditor', 'aoDrawEndEllipsis', 'aoHideFocusRect']
        OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSortRefresh']
        TreeLineColor = clGrayText
        ShowGrid = True
        ShowRoot = False
        GridLineColor = clSilver
        OnEdited = tlAddToolsEdited
        OnEditing = tlAddToolsEditing
        object tlcATMenuCaption: TdxTreeListColumn
          Caption = 'Menu caption'
          Width = 173
          BandIndex = 0
          RowIndex = 0
        end
        object tlcATProgram: TdxTreeListButtonColumn
          Caption = 'Program'
          Width = 290
          BandIndex = 0
          RowIndex = 0
          Buttons = <
            item
              Default = True
            end
          >
          OnButtonClick = tlcATProgramButtonClick
        end
        object tlcATParameters: TdxTreeListColumn
          Caption = 'Parameters'
          Width = 301
          BandIndex = 0
          RowIndex = 0
        end
        object tlcATWorkingDir: TdxTreeListColumn
          Caption = 'Working Dir'
          Width = 300
          BandIndex = 0
          RowIndex = 0
        end
        object tlcATShortcut: TdxTreeListColumn
          Caption = 'Shortcut'
          BandIndex = 0
          RowIndex = 0
        end
      end
    end
    object tsBlackList: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 422
      Height = 365
      HelpContext = 2014
      Caption = 'Disabled Names'
      PageAppearance.BorderColor = clBtnFace
      PageAppearance.Color = clBtnFace
      PageAppearance.ColorTo = clBtnFace
      PageAppearance.ColorMirror = clBtnFace
      PageAppearance.ColorMirrorTo = clBtnFace
      PageAppearance.Gradient = ggVertical
      PageAppearance.GradientMirror = ggVertical
      TabAppearance.BorderColor = clBtnFace
      TabAppearance.BorderColorHot = 12697277
      TabAppearance.BorderColorSelected = 12697533
      TabAppearance.BorderColorSelectedHot = 6277882
      TabAppearance.BorderColorDisabled = clBtnFace
      TabAppearance.BorderColorDown = clBtnFace
      TabAppearance.Color = clBtnFace
      TabAppearance.ColorTo = clWhite
      TabAppearance.ColorSelected = 16316660
      TabAppearance.ColorSelectedTo = 15722466
      TabAppearance.ColorDisabled = clWhite
      TabAppearance.ColorDisabledTo = clSilver
      TabAppearance.ColorHot = 13558249
      TabAppearance.ColorHotTo = 14669780
      TabAppearance.ColorMirror = clBtnFace
      TabAppearance.ColorMirrorTo = clWhite
      TabAppearance.ColorMirrorHot = 12966111
      TabAppearance.ColorMirrorHotTo = 9359081
      TabAppearance.ColorMirrorSelected = 15722466
      TabAppearance.ColorMirrorSelectedTo = 15722466
      TabAppearance.ColorMirrorDisabled = clBtnFace
      TabAppearance.ColorMirrorDisabledTo = clSilver
      TabAppearance.Font.Charset = DEFAULT_CHARSET
      TabAppearance.Font.Color = clWindowText
      TabAppearance.Font.Height = -11
      TabAppearance.Font.Name = 'Segoe UI'
      TabAppearance.Font.Style = []
      TabAppearance.Gradient = ggVertical
      TabAppearance.GradientMirror = ggVertical
      TabAppearance.GradientHot = ggRadial
      TabAppearance.GradientMirrorHot = ggVertical
      TabAppearance.GradientSelected = ggVertical
      TabAppearance.GradientMirrorSelected = ggVertical
      TabAppearance.GradientDisabled = ggVertical
      TabAppearance.GradientMirrorDisabled = ggVertical
      TabAppearance.TextColor = clBlack
      TabAppearance.TextColorHot = 6050636
      TabAppearance.TextColorSelected = 6050636
      TabAppearance.TextColorDisabled = clGray
      TabAppearance.ShadowColor = 14077385
      TabAppearance.HighLightColor = 16775871
      TabAppearance.HighLightColorHot = 16250099
      TabAppearance.HighLightColorSelected = 6540536
      TabAppearance.HighLightColorSelectedHot = 12451839
      TabAppearance.HighLightColorDown = 16776144
      TabAppearance.BackGround.Color = clBtnFace
      TabAppearance.BackGround.ColorTo = clBtnFace
      TabAppearance.BackGround.Direction = gdHorizontal
      object mNames: TdxMemo
        Tag = 1000
        Left = 0
        Top = 1
        Width = 422
        Align = alClient
        TabOrder = 0
        StyleController = IBEMainForm.MainSC
        Height = 364
      end
    end
    object tsAssociations: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 422
      Height = 365
      HelpContext = 2015
      Caption = 'Associations'
      PageAppearance.BorderColor = clBtnFace
      PageAppearance.Color = clBtnFace
      PageAppearance.ColorTo = clBtnFace
      PageAppearance.ColorMirror = clBtnFace
      PageAppearance.ColorMirrorTo = clBtnFace
      PageAppearance.Gradient = ggVertical
      PageAppearance.GradientMirror = ggVertical
      TabAppearance.BorderColor = clBtnFace
      TabAppearance.BorderColorHot = 12697277
      TabAppearance.BorderColorSelected = 12697533
      TabAppearance.BorderColorSelectedHot = 6277882
      TabAppearance.BorderColorDisabled = clBtnFace
      TabAppearance.BorderColorDown = clBtnFace
      TabAppearance.Color = clBtnFace
      TabAppearance.ColorTo = clWhite
      TabAppearance.ColorSelected = 16316660
      TabAppearance.ColorSelectedTo = 15722466
      TabAppearance.ColorDisabled = clWhite
      TabAppearance.ColorDisabledTo = clSilver
      TabAppearance.ColorHot = 13558249
      TabAppearance.ColorHotTo = 14669780
      TabAppearance.ColorMirror = clBtnFace
      TabAppearance.ColorMirrorTo = clWhite
      TabAppearance.ColorMirrorHot = 12966111
      TabAppearance.ColorMirrorHotTo = 9359081
      TabAppearance.ColorMirrorSelected = 15722466
      TabAppearance.ColorMirrorSelectedTo = 15722466
      TabAppearance.ColorMirrorDisabled = clBtnFace
      TabAppearance.ColorMirrorDisabledTo = clSilver
      TabAppearance.Font.Charset = DEFAULT_CHARSET
      TabAppearance.Font.Color = clWindowText
      TabAppearance.Font.Height = -11
      TabAppearance.Font.Name = 'Segoe UI'
      TabAppearance.Font.Style = []
      TabAppearance.Gradient = ggVertical
      TabAppearance.GradientMirror = ggVertical
      TabAppearance.GradientHot = ggRadial
      TabAppearance.GradientMirrorHot = ggVertical
      TabAppearance.GradientSelected = ggVertical
      TabAppearance.GradientMirrorSelected = ggVertical
      TabAppearance.GradientDisabled = ggVertical
      TabAppearance.GradientMirrorDisabled = ggVertical
      TabAppearance.TextColor = clBlack
      TabAppearance.TextColorHot = 6050636
      TabAppearance.TextColorSelected = 6050636
      TabAppearance.TextColorDisabled = clGray
      TabAppearance.ShadowColor = 14077385
      TabAppearance.HighLightColor = 16775871
      TabAppearance.HighLightColorHot = 16250099
      TabAppearance.HighLightColorSelected = 6540536
      TabAppearance.HighLightColorSelectedHot = 12451839
      TabAppearance.HighLightColorDown = 16776144
      TabAppearance.BackGround.Color = clBtnFace
      TabAppearance.BackGround.ColorTo = clBtnFace
      TabAppearance.BackGround.Direction = gdHorizontal
      object cbAssGDB: TdxCheckEdit
        Left = 10
        Top = 10
        Width = 362
        TabOrder = 0
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = 'Associate ''.gdb'' with IBExpert'
        StyleController = IBEMainForm.MainCheckSC
      end
      object cbAssSQL: TdxCheckEdit
        Left = 10
        Top = 117
        Width = 362
        TabOrder = 1
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = 'Associate ''.sql'' with IBExpert'
        StyleController = IBEMainForm.MainCheckSC
      end
      object cbAssFdb: TdxCheckEdit
        Left = 10
        Top = 32
        Width = 362
        TabOrder = 2
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = 'Associate ''.fdb'' with IBExpert'
        StyleController = IBEMainForm.MainCheckSC
      end
      object cbAssIb: TdxCheckEdit
        Left = 10
        Top = 57
        Width = 362
        TabOrder = 3
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = 'Associate ''.ib'' with IBExpert'
        StyleController = IBEMainForm.MainCheckSC
      end
      object cbAssGRC: TdxCheckEdit
        Left = 10
        Top = 149
        Width = 362
        TabOrder = 4
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = 'Associate ''.grc'' with IBExpert'
        StyleController = IBEMainForm.MainCheckSC
      end
      object cbAssMxd: TdxCheckEdit
        Left = 10
        Top = 81
        Width = 362
        TabOrder = 5
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = 'Associate ''.mxd'' (Morfik database) with IBExpert'
        StyleController = IBEMainForm.MainCheckSC
      end
      object Memo1: TMemo
        Tag = 1000
        Left = 16
        Top = 224
        Width = 393
        Height = 121
        TabStop = False
        Anchors = ['akLeft', 'akTop', 'akRight']
        BorderStyle = bsNone
        Lines.Strings = ['WARNING:', 'In Windows Vista and Windows 7 you must have administrator privileges to ', 'change file extension associations. Otherwise you will get an error.', 'Run IBExpert as administrator temporarily if necessary.']
        ParentColor = True
        ReadOnly = True
        TabOrder = 6
      end
    end
    object tsIBEDirect: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 422
      Height = 365
      HelpContext = 2016
      Caption = 'IBExpert Direct'
      PageAppearance.BorderColor = clBtnFace
      PageAppearance.Color = clBtnFace
      PageAppearance.ColorTo = clBtnFace
      PageAppearance.ColorMirror = clBtnFace
      PageAppearance.ColorMirrorTo = clBtnFace
      PageAppearance.Gradient = ggVertical
      PageAppearance.GradientMirror = ggVertical
      TabAppearance.BorderColor = clBtnFace
      TabAppearance.BorderColorHot = 12697277
      TabAppearance.BorderColorSelected = 12697533
      TabAppearance.BorderColorSelectedHot = 6277882
      TabAppearance.BorderColorDisabled = clBtnFace
      TabAppearance.BorderColorDown = clBtnFace
      TabAppearance.Color = clBtnFace
      TabAppearance.ColorTo = clWhite
      TabAppearance.ColorSelected = 16316660
      TabAppearance.ColorSelectedTo = 15722466
      TabAppearance.ColorDisabled = clWhite
      TabAppearance.ColorDisabledTo = clSilver
      TabAppearance.ColorHot = 13558249
      TabAppearance.ColorHotTo = 14669780
      TabAppearance.ColorMirror = clBtnFace
      TabAppearance.ColorMirrorTo = clWhite
      TabAppearance.ColorMirrorHot = 12966111
      TabAppearance.ColorMirrorHotTo = 9359081
      TabAppearance.ColorMirrorSelected = 15722466
      TabAppearance.ColorMirrorSelectedTo = 15722466
      TabAppearance.ColorMirrorDisabled = clBtnFace
      TabAppearance.ColorMirrorDisabledTo = clSilver
      TabAppearance.Font.Charset = DEFAULT_CHARSET
      TabAppearance.Font.Color = clWindowText
      TabAppearance.Font.Height = -11
      TabAppearance.Font.Name = 'Segoe UI'
      TabAppearance.Font.Style = []
      TabAppearance.Gradient = ggVertical
      TabAppearance.GradientMirror = ggVertical
      TabAppearance.GradientHot = ggRadial
      TabAppearance.GradientMirrorHot = ggVertical
      TabAppearance.GradientSelected = ggVertical
      TabAppearance.GradientMirrorSelected = ggVertical
      TabAppearance.GradientDisabled = ggVertical
      TabAppearance.GradientMirrorDisabled = ggVertical
      TabAppearance.TextColor = clBlack
      TabAppearance.TextColorHot = 6050636
      TabAppearance.TextColorSelected = 6050636
      TabAppearance.TextColorDisabled = clGray
      TabAppearance.ShadowColor = 14077385
      TabAppearance.HighLightColor = 16775871
      TabAppearance.HighLightColorHot = 16250099
      TabAppearance.HighLightColorSelected = 6540536
      TabAppearance.HighLightColorSelectedHot = 12451839
      TabAppearance.HighLightColorDown = 16776144
      TabAppearance.BackGround.Color = clBtnFace
      TabAppearance.BackGround.ColorTo = clBtnFace
      TabAppearance.BackGround.Direction = gdHorizontal
      object GroupBox1: TGroupBox
        Left = 9
        Top = 16
        Width = 405
        Height = 273
        Anchors = ['akLeft', 'akTop', 'akRight']
        TabOrder = 1
        object lPollingInterval: TLabel
          Left = 13
          Top = 28
          Width = 116
          Height = 13
          Caption = 'Polling Interval (in days)'
        end
        object lLastIBEDirUpdate: TLabel
          Left = 8
          Top = 113
          Width = 198
          Height = 13
          Alignment = taRightJustify
          Anchors = ['akLeft', 'akTop', 'akRight']
          AutoSize = False
          Caption = 'Last update'
        end
        object lProxyAddress: TLabel
          Left = 14
          Top = 178
          Width = 69
          Height = 13
          Caption = 'Proxy address'
        end
        object lProxyPort: TLabel
          Left = 200
          Top = 178
          Width = 51
          Height = 13
          Caption = 'Proxy port'
        end
        object lProxyUserName: TLabel
          Left = 14
          Top = 224
          Width = 78
          Height = 13
          Caption = 'Proxy username'
        end
        object lProxyPassword: TLabel
          Left = 200
          Top = 224
          Width = 77
          Height = 13
          Caption = 'Proxy password'
        end
        object sePollingInterval: TdxSpinEdit
          Left = 133
          Top = 24
          Width = 52
          TabOrder = 0
          StyleController = IBEMainForm.MainSC
          MaxValue = -3.105036184601418e+231
          MinValue = -0.0
          Value = -2.6815615859885194e+154
          StoredValues = 48
        end
        object cbAutoShowIBEDirect: TdxCheckEdit
          Left = 8
          Top = 56
          Width = 375
          TabOrder = 1
          Anchors = ['akLeft', 'akTop', 'akRight']
          Caption = 'Automaticaly show IBExpert Direct on refresh'
          StyleController = IBEMainForm.MainCheckSC
        end
        object cbPollNetOnStart: TdxCheckEdit
          Left = 8
          Top = 79
          Width = 375
          TabOrder = 2
          Anchors = ['akLeft', 'akTop', 'akRight']
          Caption = 'Poll network when IBExpert starts'
          StyleController = IBEMainForm.MainCheckSC
        end
        object eLastUpdate: TdxEdit
          Left = 212
          Top = 109
          Width = 179
          Enabled = False
          TabOrder = 3
          Anchors = ['akTop', 'akRight']
          ReadOnly = True
          StyleController = IBEMainForm.MainSC
          StoredValues = 64
        end
        object eProxyAddress: TdxEdit
          Left = 13
          Top = 195
          Width = 180
          Enabled = False
          TabOrder = 4
          StyleController = IBEMainForm.MainSC
        end
        object eProxyPort: TdxEdit
          Left = 199
          Top = 195
          Width = 178
          Enabled = False
          TabOrder = 5
          StyleController = IBEMainForm.MainSC
        end
        object cbIBEDirectUseProxy: TdxCheckEdit
          Left = 9
          Top = 150
          Width = 375
          TabOrder = 6
          Anchors = ['akLeft', 'akTop', 'akRight']
          Caption = 'Use a proxy server'
          StyleController = IBEMainForm.MainCheckSC
          OnChange = cbIBEDirectUseProxyChange
        end
        object eProxyUserName: TdxEdit
          Left = 13
          Top = 241
          Width = 180
          Enabled = False
          TabOrder = 7
          StyleController = IBEMainForm.MainSC
        end
        object eProxyPassword: TdxEdit
          Left = 199
          Top = 241
          Width = 178
          Enabled = False
          TabOrder = 8
          PasswordChar = '*'
          StyleController = IBEMainForm.MainSC
        end
      end
      object cbAutoPollNet: TdxCheckEdit
        Left = 17
        Top = 11
        Width = 160
        TabOrder = 0
        Caption = 'Automatically poll network'
        StyleController = IBEMainForm.MainCheckSC
        OnChange = cbAutoPollNetChange
      end
      object pIBEDirDataFile: TPanel
        Left = 8
        Top = 297
        Width = 408
        Height = 61
        Anchors = ['akLeft', 'akTop', 'akRight']
        BevelOuter = bvNone
        TabOrder = 2
        object lIBEDirDataFile: TLabel
          Left = 2
          Top = 11
          Width = 113
          Height = 13
          Caption = 'IBExpert Direct Datafile'
        end
        object eIBEDirDataFile: TdxEdit
          Left = 0
          Top = 30
          Width = 405
          TabOrder = 0
          Anchors = ['akLeft', 'akTop', 'akRight']
          StyleController = IBEMainForm.MainSC
        end
      end
    end
    object dxTabSheet3: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 422
      Height = 365
      HelpContext = 2017
      Caption = 'IBExpert User Database'
      PageAppearance.BorderColor = clBtnFace
      PageAppearance.Color = clBtnFace
      PageAppearance.ColorTo = clBtnFace
      PageAppearance.ColorMirror = clBtnFace
      PageAppearance.ColorMirrorTo = clBtnFace
      PageAppearance.Gradient = ggVertical
      PageAppearance.GradientMirror = ggVertical
      TabAppearance.BorderColor = clBtnFace
      TabAppearance.BorderColorHot = 12697277
      TabAppearance.BorderColorSelected = 12697533
      TabAppearance.BorderColorSelectedHot = 6277882
      TabAppearance.BorderColorDisabled = clBtnFace
      TabAppearance.BorderColorDown = clBtnFace
      TabAppearance.Color = clBtnFace
      TabAppearance.ColorTo = clWhite
      TabAppearance.ColorSelected = 16316660
      TabAppearance.ColorSelectedTo = 15722466
      TabAppearance.ColorDisabled = clWhite
      TabAppearance.ColorDisabledTo = clSilver
      TabAppearance.ColorHot = 13558249
      TabAppearance.ColorHotTo = 14669780
      TabAppearance.ColorMirror = clBtnFace
      TabAppearance.ColorMirrorTo = clWhite
      TabAppearance.ColorMirrorHot = 12966111
      TabAppearance.ColorMirrorHotTo = 9359081
      TabAppearance.ColorMirrorSelected = 15722466
      TabAppearance.ColorMirrorSelectedTo = 15722466
      TabAppearance.ColorMirrorDisabled = clBtnFace
      TabAppearance.ColorMirrorDisabledTo = clSilver
      TabAppearance.Font.Charset = DEFAULT_CHARSET
      TabAppearance.Font.Color = clWindowText
      TabAppearance.Font.Height = -11
      TabAppearance.Font.Name = 'Segoe UI'
      TabAppearance.Font.Style = []
      TabAppearance.Gradient = ggVertical
      TabAppearance.GradientMirror = ggVertical
      TabAppearance.GradientHot = ggRadial
      TabAppearance.GradientMirrorHot = ggVertical
      TabAppearance.GradientSelected = ggVertical
      TabAppearance.GradientMirrorSelected = ggVertical
      TabAppearance.GradientDisabled = ggVertical
      TabAppearance.GradientMirrorDisabled = ggVertical
      TabAppearance.TextColor = clBlack
      TabAppearance.TextColorHot = 6050636
      TabAppearance.TextColorSelected = 6050636
      TabAppearance.TextColorDisabled = clGray
      TabAppearance.ShadowColor = 14077385
      TabAppearance.HighLightColor = 16775871
      TabAppearance.HighLightColorHot = 16250099
      TabAppearance.HighLightColorSelected = 6540536
      TabAppearance.HighLightColorSelectedHot = 12451839
      TabAppearance.HighLightColorDown = 16776144
      TabAppearance.BackGround.Color = clBtnFace
      TabAppearance.BackGround.ColorTo = clBtnFace
      TabAppearance.BackGround.Direction = gdHorizontal
      object GroupBox2: TGroupBox
        Left = 8
        Top = 16
        Width = 401
        Height = 276
        TabOrder = 0
        object lUDBConnectString: TLabel
          Left = 8
          Top = 28
          Width = 159
          Height = 13
          Caption = 'User Database Connection String'
        end
        object lUDBUserName: TLabel
          Left = 8
          Top = 72
          Width = 53
          Height = 13
          Caption = 'User Name'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lUDBPassword: TLabel
          Left = 9
          Top = 115
          Width = 46
          Height = 13
          Caption = 'Password'
        end
        object Label7: TLabel
          Left = 9
          Top = 166
          Width = 82
          Height = 13
          Caption = 'Client Library File'
        end
        object eUDBConnectString: TdxEdit
          Left = 7
          Top = 44
          Width = 386
          Enabled = False
          TabOrder = 0
          Anchors = ['akLeft', 'akTop', 'akRight']
          MaxLength = 0
          StyleController = IBEMainForm.MainSC
          StoredValues = 2
        end
        object eUDBUserName: TdxEdit
          Left = 7
          Top = 88
          Width = 146
          Enabled = False
          TabOrder = 1
          Text = 'SYSDBA'
          StyleController = IBEMainForm.MainSC
        end
        object eUDBPassword: TdxEdit
          Left = 8
          Top = 131
          Width = 146
          Enabled = False
          TabOrder = 2
          PasswordChar = '*'
          StyleController = IBEMainForm.MainSC
        end
        object Button11: TButton
          Left = 8
          Top = 240
          Width = 385
          Height = 25
          Action = actFillUserDB
          TabOrder = 3
        end
        object cbUDBProjectView: TdxCheckEdit
          Left = 5
          Top = 211
          Width = 389
          TabOrder = 4
          Anchors = ['akLeft', 'akTop', 'akRight']
          AutoSize = False
          Caption = 'Store Project View Data in User Database'
          StyleController = IBEMainForm.MainCheckSC
          OnChange = cbAllowUDBChange
          Height = 21
        end
        object eUDBClientLibrary: TdxButtonEdit
          Left = 8
          Top = 183
          Width = 385
          Enabled = False
          TabOrder = 5
          Anchors = ['akLeft', 'akTop', 'akRight']
          StyleController = IBEMainForm.MainSC
          Text = 'gds32.dll'
          Buttons = <
            item
              Default = True
              Glyph.Data = {3e020000424d3e0200000000000036000000280000000d0000000d00000001001800000000000802000000000000000000000000000000000000ff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ff00000000000000000000000000000000000000000000000000000000000000ff00ffff00ffff00ff00000000000000408080408080408080408080408080408080408080408080000000ff00ffff00ff0000000080ffff000000408080408080408080408080408080408080408080408080000000ff00ff0000000080ffff80ffff0000004080804080804080804080804080804080804080804080800000000000000080ffff80ffff80ffff0000000000000000000000000000000000000000000000000000000000000080ffff80ffff80ffff80ffff80ffff80ffff80ffff80ffff000000ff00ffff00ffff00ff0000000080ffff80ffff80ffff000000000000000000000000000000000000ff00ffff00ffff00ff00ff00ff000000000000000000ff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ff00ff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ff000000000000000000ff00ff00ff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ff000000000000ff00ff00ff00ffff00ffff00ffff00ffff00ff000000ff00ffff00ffff00ff000000ff00ff000000ff00ff00ff00ffff00ffff00ffff00ffff00ffff00ff000000000000000000ff00ffff00ffff00ffff00ff00}
              Kind = bkGlyph
              Width = 21
            end
          >
          OnButtonClick = eUDBClientLibraryButtonClick
          ExistButtons = True
        end
      end
      object cbAllowUDB: TdxCheckEdit
        Left = 17
        Top = 11
        Width = 160
        TabOrder = 1
        AutoSize = False
        Caption = 'Allow User Database'
        StyleController = IBEMainForm.MainCheckSC
        OnChange = cbAllowUDBChange
        Height = 21
      end
    end
    object dxTabSheet4: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 422
      Height = 365
      HelpContext = 2018
      Caption = 'Sounds'
      PageAppearance.BorderColor = clBtnFace
      PageAppearance.Color = clBtnFace
      PageAppearance.ColorTo = clBtnFace
      PageAppearance.ColorMirror = clBtnFace
      PageAppearance.ColorMirrorTo = clBtnFace
      PageAppearance.Gradient = ggVertical
      PageAppearance.GradientMirror = ggVertical
      TabAppearance.BorderColor = clBtnFace
      TabAppearance.BorderColorHot = 12697277
      TabAppearance.BorderColorSelected = 12697533
      TabAppearance.BorderColorSelectedHot = 6277882
      TabAppearance.BorderColorDisabled = clBtnFace
      TabAppearance.BorderColorDown = clBtnFace
      TabAppearance.Color = clBtnFace
      TabAppearance.ColorTo = clWhite
      TabAppearance.ColorSelected = 16316660
      TabAppearance.ColorSelectedTo = 15722466
      TabAppearance.ColorDisabled = clWhite
      TabAppearance.ColorDisabledTo = clSilver
      TabAppearance.ColorHot = 13558249
      TabAppearance.ColorHotTo = 14669780
      TabAppearance.ColorMirror = clBtnFace
      TabAppearance.ColorMirrorTo = clWhite
      TabAppearance.ColorMirrorHot = 12966111
      TabAppearance.ColorMirrorHotTo = 9359081
      TabAppearance.ColorMirrorSelected = 15722466
      TabAppearance.ColorMirrorSelectedTo = 15722466
      TabAppearance.ColorMirrorDisabled = clBtnFace
      TabAppearance.ColorMirrorDisabledTo = clSilver
      TabAppearance.Font.Charset = DEFAULT_CHARSET
      TabAppearance.Font.Color = clWindowText
      TabAppearance.Font.Height = -11
      TabAppearance.Font.Name = 'Segoe UI'
      TabAppearance.Font.Style = []
      TabAppearance.Gradient = ggVertical
      TabAppearance.GradientMirror = ggVertical
      TabAppearance.GradientHot = ggRadial
      TabAppearance.GradientMirrorHot = ggVertical
      TabAppearance.GradientSelected = ggVertical
      TabAppearance.GradientMirrorSelected = ggVertical
      TabAppearance.GradientDisabled = ggVertical
      TabAppearance.GradientMirrorDisabled = ggVertical
      TabAppearance.TextColor = clBlack
      TabAppearance.TextColorHot = 6050636
      TabAppearance.TextColorSelected = 6050636
      TabAppearance.TextColorDisabled = clGray
      TabAppearance.ShadowColor = 14077385
      TabAppearance.HighLightColor = 16775871
      TabAppearance.HighLightColorHot = 16250099
      TabAppearance.HighLightColorSelected = 6540536
      TabAppearance.HighLightColorSelectedHot = 12451839
      TabAppearance.HighLightColorDown = 16776144
      TabAppearance.BackGround.Color = clBtnFace
      TabAppearance.BackGround.ColorTo = clBtnFace
      TabAppearance.BackGround.Direction = gdHorizontal
      object Label9: TLabel
        Left = 15
        Top = 41
        Width = 154
        Height = 13
        Caption = 'When a long query finished play'
      end
      object SoundC: TdxCheckEdit
        Left = 10
        Top = 11
        Width = 392
        TabOrder = 0
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = 'Enable Sounds'
        StyleController = IBEMainForm.MainCheckSC
        State = cbsChecked
      end
      object eEndOfLongQuerySound: TdxButtonEdit
        Left = 14
        Top = 58
        Width = 404
        TabOrder = 1
        Anchors = ['akLeft', 'akTop', 'akRight']
        StyleController = IBEMainForm.MainSC
        Buttons = <
          item
            Default = True
            Glyph.Data = {3e020000424d3e0200000000000036000000280000000d0000000d00000001001800000000000802000000000000000000000000000000000000ff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ff00000000000000000000000000000000000000000000000000000000000000ff00ffff00ffff00ff00000000000000408080408080408080408080408080408080408080408080000000ff00ffff00ff0000000080ffff000000408080408080408080408080408080408080408080408080000000ff00ff0000000080ffff80ffff0000004080804080804080804080804080804080804080804080800000000000000080ffff80ffff80ffff0000000000000000000000000000000000000000000000000000000000000080ffff80ffff80ffff80ffff80ffff80ffff80ffff80ffff000000ff00ffff00ffff00ff0000000080ffff80ffff80ffff000000000000000000000000000000000000ff00ffff00ffff00ff00ff00ff000000000000000000ff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ff00ff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ff000000000000000000ff00ff00ff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ff000000000000ff00ff00ff00ffff00ffff00ffff00ffff00ff000000ff00ffff00ffff00ff000000ff00ff000000ff00ff00ff00ffff00ffff00ffff00ffff00ffff00ff000000000000000000ff00ffff00ffff00ffff00ff00}
            Kind = bkGlyph
            Width = 21
          end
        >
        OnButtonClick = eEndOfLongQuerySoundButtonClick
        ExistButtons = True
      end
    end
    object dxTabSheet5: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 422
      Height = 365
      HelpContext = 2019
      Caption = 'IBExpert After Start Script'
      PageAppearance.BorderColor = clBtnFace
      PageAppearance.Color = clBtnFace
      PageAppearance.ColorTo = clBtnFace
      PageAppearance.ColorMirror = clBtnFace
      PageAppearance.ColorMirrorTo = clBtnFace
      PageAppearance.Gradient = ggVertical
      PageAppearance.GradientMirror = ggVertical
      TabAppearance.BorderColor = clBtnFace
      TabAppearance.BorderColorHot = 12697277
      TabAppearance.BorderColorSelected = 12697533
      TabAppearance.BorderColorSelectedHot = 6277882
      TabAppearance.BorderColorDisabled = clBtnFace
      TabAppearance.BorderColorDown = clBtnFace
      TabAppearance.Color = clBtnFace
      TabAppearance.ColorTo = clWhite
      TabAppearance.ColorSelected = 16316660
      TabAppearance.ColorSelectedTo = 15722466
      TabAppearance.ColorDisabled = clWhite
      TabAppearance.ColorDisabledTo = clSilver
      TabAppearance.ColorHot = 13558249
      TabAppearance.ColorHotTo = 14669780
      TabAppearance.ColorMirror = clBtnFace
      TabAppearance.ColorMirrorTo = clWhite
      TabAppearance.ColorMirrorHot = 12966111
      TabAppearance.ColorMirrorHotTo = 9359081
      TabAppearance.ColorMirrorSelected = 15722466
      TabAppearance.ColorMirrorSelectedTo = 15722466
      TabAppearance.ColorMirrorDisabled = clBtnFace
      TabAppearance.ColorMirrorDisabledTo = clSilver
      TabAppearance.Font.Charset = DEFAULT_CHARSET
      TabAppearance.Font.Color = clWindowText
      TabAppearance.Font.Height = -11
      TabAppearance.Font.Name = 'Segoe UI'
      TabAppearance.Font.Style = []
      TabAppearance.Gradient = ggVertical
      TabAppearance.GradientMirror = ggVertical
      TabAppearance.GradientHot = ggRadial
      TabAppearance.GradientMirrorHot = ggVertical
      TabAppearance.GradientSelected = ggVertical
      TabAppearance.GradientMirrorSelected = ggVertical
      TabAppearance.GradientDisabled = ggVertical
      TabAppearance.GradientMirrorDisabled = ggVertical
      TabAppearance.TextColor = clBlack
      TabAppearance.TextColorHot = 6050636
      TabAppearance.TextColorSelected = 6050636
      TabAppearance.TextColorDisabled = clGray
      TabAppearance.ShadowColor = 14077385
      TabAppearance.HighLightColor = 16775871
      TabAppearance.HighLightColorHot = 16250099
      TabAppearance.HighLightColorSelected = 6540536
      TabAppearance.HighLightColorSelectedHot = 12451839
      TabAppearance.HighLightColorDown = 16776144
      TabAppearance.BackGround.Color = clBtnFace
      TabAppearance.BackGround.ColorTo = clBtnFace
      TabAppearance.BackGround.Direction = gdHorizontal
      object AfterStartScriptFm: TEditFrame
        Top = 1
        Width = 422
        Height = 364
        object lBookmark: TLabel
          Width = 46
        end
        object EditM: TSQLMemo
          Width = 422
          Height = 346
        end
        object pIncSearch: TPanel
          Top = 346
          Width = 422
        end
      end
    end
    object tsDefaultDirs: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 422
      Height = 365
      Caption = 'Files and directories'
      PageAppearance.BorderColor = clBtnFace
      PageAppearance.Color = clBtnFace
      PageAppearance.ColorTo = clBtnFace
      PageAppearance.ColorMirror = clBtnFace
      PageAppearance.ColorMirrorTo = clBtnFace
      PageAppearance.Gradient = ggVertical
      PageAppearance.GradientMirror = ggVertical
      TabAppearance.BorderColor = clBtnFace
      TabAppearance.BorderColorHot = 12697277
      TabAppearance.BorderColorSelected = 12697533
      TabAppearance.BorderColorSelectedHot = 6277882
      TabAppearance.BorderColorDisabled = clBtnFace
      TabAppearance.BorderColorDown = clBtnFace
      TabAppearance.Color = clBtnFace
      TabAppearance.ColorTo = clWhite
      TabAppearance.ColorSelected = 16316660
      TabAppearance.ColorSelectedTo = 15722466
      TabAppearance.ColorDisabled = clWhite
      TabAppearance.ColorDisabledTo = clSilver
      TabAppearance.ColorHot = 13558249
      TabAppearance.ColorHotTo = 14669780
      TabAppearance.ColorMirror = clBtnFace
      TabAppearance.ColorMirrorTo = clWhite
      TabAppearance.ColorMirrorHot = 12966111
      TabAppearance.ColorMirrorHotTo = 9359081
      TabAppearance.ColorMirrorSelected = 15722466
      TabAppearance.ColorMirrorSelectedTo = 15722466
      TabAppearance.ColorMirrorDisabled = clBtnFace
      TabAppearance.ColorMirrorDisabledTo = clSilver
      TabAppearance.Font.Charset = DEFAULT_CHARSET
      TabAppearance.Font.Color = clWindowText
      TabAppearance.Font.Height = -11
      TabAppearance.Font.Name = 'Segoe UI'
      TabAppearance.Font.Style = []
      TabAppearance.Gradient = ggVertical
      TabAppearance.GradientMirror = ggVertical
      TabAppearance.GradientHot = ggRadial
      TabAppearance.GradientMirrorHot = ggVertical
      TabAppearance.GradientSelected = ggVertical
      TabAppearance.GradientMirrorSelected = ggVertical
      TabAppearance.GradientDisabled = ggVertical
      TabAppearance.GradientMirrorDisabled = ggVertical
      TabAppearance.TextColor = clBlack
      TabAppearance.TextColorHot = 6050636
      TabAppearance.TextColorSelected = 6050636
      TabAppearance.TextColorDisabled = clGray
      TabAppearance.ShadowColor = 14077385
      TabAppearance.HighLightColor = 16775871
      TabAppearance.HighLightColorHot = 16250099
      TabAppearance.HighLightColorSelected = 6540536
      TabAppearance.HighLightColorSelectedHot = 12451839
      TabAppearance.HighLightColorDown = 16776144
      TabAppearance.BackGround.Color = clBtnFace
      TabAppearance.BackGround.ColorTo = clBtnFace
      TabAppearance.BackGround.Direction = gdHorizontal
      object lUserBlocksDir: TLabel
        Left = 9
        Top = 8
        Width = 100
        Height = 13
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = 'User blocks directory'
      end
      object feUserBlocksDirectory: TdxButtonEdit
        Left = 8
        Top = 27
        Width = 407
        TabOrder = 0
        Anchors = ['akLeft', 'akTop', 'akRight']
        StyleController = IBEMainForm.MainSC
        Buttons = <
          item
            Default = True
            Glyph.Data = {3e020000424d3e0200000000000036000000280000000d0000000d00000001001800000000000802000000000000000000000000000000000000ff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ff00000000000000000000000000000000000000000000000000000000000000ff00ffff00ffff00ff00000000000000408080408080408080408080408080408080408080408080000000ff00ffff00ff0000000080ffff000000408080408080408080408080408080408080408080408080000000ff00ff0000000080ffff80ffff0000004080804080804080804080804080804080804080804080800000000000000080ffff80ffff80ffff0000000000000000000000000000000000000000000000000000000000000080ffff80ffff80ffff80ffff80ffff80ffff80ffff80ffff000000ff00ffff00ffff00ff0000000080ffff80ffff80ffff000000000000000000000000000000000000ff00ffff00ffff00ff00ff00ff000000000000000000ff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ff00ff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ff000000000000000000ff00ff00ff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ff000000000000ff00ff00ff00ffff00ffff00ffff00ffff00ff000000ff00ffff00ffff00ff000000ff00ff000000ff00ff00ff00ffff00ffff00ffff00ffff00ffff00ff000000000000000000ff00ffff00ffff00ffff00ff00}
            Kind = bkGlyph
            Width = 21
          end
        >
        OnButtonClick = feUserBlocksDirectoryButtonClick
        ExistButtons = True
      end
      object cbOnlySpecifiedBlocksDir: TdxCheckEdit
        Left = 5
        Top = 52
        Width = 412
        TabOrder = 1
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = 'Use blocks from specified directory only'
        StyleController = IBEMainForm.MainCheckSC
      end
    end
  end
  object TL: TdxTreeList
    Tag = -1000
    Left = 0
    Top = 0
    Width = 217
    Height = 390
    Bands = <
      item
      end
    >
    DefaultLayout = True
    HeaderPanelRowCount = 1
    Align = alLeft
    DragMode = dmAutomatic
    TabOrder = 2
    HideSelection = False
    LookAndFeel = lfFlat
    Options = ['aoColumnSizing', 'aoTabThrough', 'aoRowSelect', 'aoDrawEndEllipsis', 'aoAutoWidth']
    OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragExpand', 'aoAutoSearch']
    TreeLineColor = clGrayText
    ShowHeader = False
    GridLineColor = clSilver
    OnChangeNode = TLChangeNode
    Constraints.MinWidth = 150
    Data = {907 bytes}
    object ObjectsTLColumn1: TdxTreeListColumn
      BandIndex = 0
      RowIndex = 0
    end
  end
  object ColorD: TColorDialog
    Ctl3D = True
    Options = ['cdFullOpen']
    Left = 36
    Top = 272
  end
  object ActionList1: TActionList
    OnUpdate = ActionList1Update
    Left = 108
    Top = 272
    object actExit: TAction
      Caption = 'Exit'
      ShortCut = 27
      OnExecute = actExitExecute
    end
    object actLocalize: TAction
      Caption = 'Localize'
      ShortCut = 57420
      OnExecute = actLocalizeExecute
    end
    object actMoveUp: TAction
      Caption = 'Move Up'
      OnExecute = actMoveUpExecute
    end
    object actMoveDown: TAction
      Caption = 'Move Down'
      OnExecute = actMoveDownExecute
    end
    object actInsertHelp: TAction
      Caption = 'New help'
      ShortCut = 45
      OnExecute = actInsertHelpExecute
    end
    object actAppendHelp: TAction
      Caption = 'actAppendHelp'
      ShortCut = 40
      OnExecute = actAppendHelpExecute
    end
    object actApplyBestFit: TAction
      Caption = 'actApplyBestFit'
      ShortCut = 16491
      OnExecute = actApplyBestFitExecute
    end
    object actAdd: TAction
      Caption = 'Add'
      OnExecute = actAddExecute
    end
    object actRemove: TAction
      Caption = 'Remove'
      OnExecute = actRemoveExecute
    end
    object actFillUserDB: TAction
      Caption = 'Create and Init User Database'
      OnExecute = actFillUserDBExecute
      OnUpdate = actFillUserDBUpdate
    end
  end
  object OD: TOpenDialog
    Left = 71
    Top = 271
  end
  object OptionsStyler: TAdvOfficePagerOfficeStyler
    Style = psOffice2007Silver
    PageAppearance.BorderColor = clBtnFace
    PageAppearance.Color = clBtnFace
    PageAppearance.ColorTo = clBtnFace
    PageAppearance.ColorMirror = clBtnFace
    PageAppearance.ColorMirrorTo = clBtnFace
    PageAppearance.Gradient = ggVertical
    PageAppearance.GradientMirror = ggVertical
    TabAppearance.BorderColor = clBtnFace
    TabAppearance.BorderColorHot = 12697277
    TabAppearance.BorderColorSelected = 12697533
    TabAppearance.BorderColorSelectedHot = 6277882
    TabAppearance.BorderColorDisabled = clBtnFace
    TabAppearance.BorderColorDown = clBtnFace
    TabAppearance.Color = clBtnFace
    TabAppearance.ColorTo = clWhite
    TabAppearance.ColorSelected = 16316660
    TabAppearance.ColorSelectedTo = 15722466
    TabAppearance.ColorDisabled = clWhite
    TabAppearance.ColorDisabledTo = clSilver
    TabAppearance.ColorHot = 13558249
    TabAppearance.ColorHotTo = 14669780
    TabAppearance.ColorMirror = clBtnFace
    TabAppearance.ColorMirrorTo = clWhite
    TabAppearance.ColorMirrorHot = 12966111
    TabAppearance.ColorMirrorHotTo = 9359081
    TabAppearance.ColorMirrorSelected = 15722466
    TabAppearance.ColorMirrorSelectedTo = 15722466
    TabAppearance.ColorMirrorDisabled = clBtnFace
    TabAppearance.ColorMirrorDisabledTo = clSilver
    TabAppearance.Font.Charset = DEFAULT_CHARSET
    TabAppearance.Font.Color = clWindowText
    TabAppearance.Font.Height = -11
    TabAppearance.Font.Name = 'Segoe UI'
    TabAppearance.Font.Style = []
    TabAppearance.Gradient = ggVertical
    TabAppearance.GradientMirror = ggVertical
    TabAppearance.GradientHot = ggRadial
    TabAppearance.GradientMirrorHot = ggVertical
    TabAppearance.GradientSelected = ggVertical
    TabAppearance.GradientMirrorSelected = ggVertical
    TabAppearance.GradientDisabled = ggVertical
    TabAppearance.GradientMirrorDisabled = ggVertical
    TabAppearance.TextColor = clBlack
    TabAppearance.TextColorHot = 6050636
    TabAppearance.TextColorSelected = 6050636
    TabAppearance.TextColorDisabled = clGray
    TabAppearance.ShadowColor = 14077385
    TabAppearance.HighLightColor = 16775871
    TabAppearance.HighLightColorHot = 16250099
    TabAppearance.HighLightColorSelected = 6540536
    TabAppearance.HighLightColorSelectedHot = 12451839
    TabAppearance.HighLightColorDown = 16776144
    TabAppearance.BackGround.Color = clBtnFace
    TabAppearance.BackGround.ColorTo = clBtnFace
    TabAppearance.BackGround.Direction = gdHorizontal
    GlowButtonAppearance.BorderColor = 13421257
    GlowButtonAppearance.BorderColorHot = 10079963
    GlowButtonAppearance.BorderColorDown = 4548219
    GlowButtonAppearance.BorderColorChecked = 4548219
    GlowButtonAppearance.BorderColorDisabled = 13882323
    GlowButtonAppearance.Color = 15987697
    GlowButtonAppearance.ColorTo = 16119283
    GlowButtonAppearance.ColorChecked = 11918331
    GlowButtonAppearance.ColorCheckedTo = 7915518
    GlowButtonAppearance.ColorDisabled = 15921906
    GlowButtonAppearance.ColorDisabledTo = 15921906
    GlowButtonAppearance.ColorDown = 7778289
    GlowButtonAppearance.ColorDownTo = 4296947
    GlowButtonAppearance.ColorHot = 15465983
    GlowButtonAppearance.ColorHotTo = 11332863
    GlowButtonAppearance.ColorMirror = 15657703
    GlowButtonAppearance.ColorMirrorTo = 16316406
    GlowButtonAppearance.ColorMirrorHot = 5888767
    GlowButtonAppearance.ColorMirrorHotTo = 10807807
    GlowButtonAppearance.ColorMirrorDown = 946929
    GlowButtonAppearance.ColorMirrorDownTo = 5021693
    GlowButtonAppearance.ColorMirrorChecked = 10480637
    GlowButtonAppearance.ColorMirrorCheckedTo = 5682430
    GlowButtonAppearance.ColorMirrorDisabled = 11974326
    GlowButtonAppearance.ColorMirrorDisabledTo = 15921906
    GlowButtonAppearance.GradientHot = ggVertical
    GlowButtonAppearance.GradientMirrorHot = ggVertical
    GlowButtonAppearance.GradientDown = ggVertical
    GlowButtonAppearance.GradientMirrorDown = ggVertical
    GlowButtonAppearance.GradientChecked = ggVertical
    Left = 588
    Top = 34
  end
end
