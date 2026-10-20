object RegisterDBForm: TRegisterDBForm
  Left = 351
  Top = 182
  HelpContext = 2500
  AutoScroll = False
  BorderIcons = ['biSystemMenu', 'biMaximize']
  Caption = 'Register Database'
  ClientHeight = 536
  ClientWidth = 704
  Color = clBtnFace
  Constraints.MinHeight = 526
  DefaultMonitor = dmMainForm
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TdfsSplitter
    Left = 206
    Top = 0
    Width = 3
    Height = 500
    Cursor = crHSplit
    Align = alLeft
    ResizeStyle = rsUpdate
    Maximized = False
    Minimized = False
    ButtonCursor = crDefault
  end
  object Bevel4: TBevel
    Left = 209
    Top = 0
    Width = 3
    Height = 500
    Align = alLeft
    Shape = bsLeftLine
  end
  object Panel1: TPanel
    Left = 0
    Top = 500
    Width = 704
    Height = 36
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object Bevel3: TBevel
      Left = 0
      Top = 0
      Width = 704
      Height = 9
      Align = alTop
      Shape = bsTopLine
    end
    object bTestConnect: TButton
      Left = 7
      Top = 8
      Width = 162
      Height = 24
      Action = aTestConnect
      Anchors = ['akLeft', 'akBottom']
      TabOrder = 0
    end
    object bRegister: TButton
      Left = 555
      Top = 8
      Width = 71
      Height = 24
      Anchors = ['akRight', 'akBottom']
      Caption = 'Register'
      Default = True
      Enabled = False
      TabOrder = 1
      OnClick = bRegisterClick
    end
    object CancelB: TButton
      Left = 632
      Top = 8
      Width = 68
      Height = 24
      Anchors = ['akRight', 'akBottom']
      Cancel = True
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 2
    end
    object bCopyData: TButton
      Left = 175
      Top = 8
      Width = 178
      Height = 24
      Anchors = ['akLeft', 'akBottom']
      Caption = 'Copy Registration Data...'
      TabOrder = 3
      OnClick = bCopyDataClick
    end
  end
  object Pages: TIBEPageControl
    Left = 212
    Top = 0
    Width = 492
    Height = 500
    AdvOfficePagerStyler = OptionsStyler
    Align = alClient
    ActivePage = tsBackupOptions
    AntiAlias = aaNone
    ButtonSettings.PageListButtonHint = 'Page List'
    Constraints.MinWidth = 486
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
    object tsIBGeneral: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 492
      Height = 475
      Caption = 'General'
      ImageIndex = 0
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
      object lDBName: TLabel
        Left = 9
        Top = 48
        Width = 487
        Height = 13
        AutoSize = False
        Caption = 'Database file (relative to server)'
        FocusControl = eDBFile
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = ['fsBold']
        ParentFont = False
      end
      object lDBAlias: TLabel
        Left = 9
        Top = 104
        Width = 150
        Height = 13
        AutoSize = False
        Caption = 'Database alias'
        FocusControl = eAlias
      end
      object lISC4Path: TLabel
        Left = 9
        Top = 300
        Width = 486
        Height = 13
        AutoSize = False
        Caption = 'Path to ISC4.GDB (relative to server)'
      end
      object lCharset: TLabel
        Left = 9
        Top = 246
        Width = 88
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Charset'
        FocusControl = CharSetC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = ['fsBold']
        ParentFont = False
      end
      object lUserName: TLabel
        Left = 9
        Top = 156
        Width = 88
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'User name'
        FocusControl = eUserName
      end
      object lPassword: TLabel
        Left = 9
        Top = 186
        Width = 88
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Password'
        FocusControl = ePassword
      end
      object lRole: TLabel
        Left = 9
        Top = 216
        Width = 88
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Role'
        FocusControl = eRole
      end
      object Bevel1: TBevel
        Left = 0
        Top = 430
        Width = 520
        Height = 9
        Anchors = ['akLeft', 'akTop', 'akRight']
        Shape = bsTopLine
      end
      object lFontCharset: TLabel
        Left = 0
        Top = 440
        Width = 315
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Screen font character set'
        Color = clBtnFace
        FocusControl = cbFontCharset
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = ['fsBold']
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object lAdditionalParams: TLabel
        Left = 241
        Top = 184
        Width = 143
        Height = 13
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = 'Additional connect parameters'
      end
      object lServer: TLabel
        Left = 9
        Top = 3
        Width = 38
        Height = 13
        Caption = 'Server'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = ['fsBold']
        ParentFont = False
      end
      object lServerName: TLabel
        Left = 123
        Top = 4
        Width = 72
        Height = 13
        Caption = 'Server name'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = ['fsBold']
        ParentFont = False
      end
      object lProtocol: TLabel
        Left = 276
        Top = 4
        Width = 48
        Height = 13
        Anchors = ['akTop', 'akRight']
        Caption = 'Protocol'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = ['fsBold']
        ParentFont = False
      end
      object Bevel2: TBevel
        Left = 1
        Top = 95
        Width = 518
        Height = 5
        Anchors = ['akLeft', 'akTop', 'akRight']
        Shape = bsTopLine
      end
      object lServerVersion: TLabel
        Left = 369
        Top = 4
        Width = 83
        Height = 13
        Anchors = ['akTop', 'akRight']
        Caption = 'Server version'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = ['fsBold']
        ParentFont = False
      end
      object lClientLibName: TLabel
        Left = 9
        Top = 344
        Width = 79
        Height = 13
        Caption = 'Client Library File'
      end
      object CharSetC: TdxPickEdit
        Left = 102
        Top = 242
        Width = 125
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        StyleController = IBEMainForm.MainSC
        Text = 'WIN1251'
        OnChange = CharSetCChange
        DropDownRows = 20
        Items.Strings = ['ASCII', 'BIG_5', 'CP943C', 'CYRL', 'DOS437', 'DOS850', 'DOS852', 'DOS857', 'DOS860', 'DOS861', 'DOS863', 'DOS865', 'EUCJ_0208', 'GB_2312', 'GBK', 'ISO8859_1', 'ISO8859_2', 'KSC_5601', 'NEXT', 'NONE', 'OCTETS', 'SJIS_0208', 'TIS620', 'UNICODE_FSS', 'UTF8', 'WIN1250', 'WIN1251', 'WIN1252', 'WIN1253', 'WIN1254']
        Sorted = True
      end
      object eAlias: TdxEdit
        Left = 9
        Top = 121
        Width = 477
        TabOrder = 5
        Anchors = ['akLeft', 'akTop', 'akRight']
        StyleController = IBEMainForm.MainSC
        OnChange = eDBFileChange
      end
      object eRole: TdxEdit
        Left = 102
        Top = 212
        Width = 125
        TabOrder = 8
        StyleController = IBEMainForm.MainSC
      end
      object ePassword: TdxEdit
        Left = 102
        Top = 182
        Width = 125
        TabOrder = 7
        PasswordChar = '*'
        StyleController = IBEMainForm.MainSC
      end
      object eUserName: TdxEdit
        Left = 102
        Top = 152
        Width = 125
        TabOrder = 6
        CharCase = ecUpperCase
        StyleController = IBEMainForm.MainSC
      end
      object cbFontCharset: TdxPickEdit
        Left = 320
        Top = 436
        Width = 166
        TabOrder = 14
        Anchors = ['akLeft', 'akTop', 'akRight']
        StyleController = IBEMainForm.MainSC
        DropDownRows = 20
        DropDownListStyle = True
        Sorted = True
      end
      object cbCapitalize: TdxCheckEdit
        Left = 5
        Top = 398
        Width = 480
        TabOrder = 13
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = 'Always capitalize database objects'' names'
        StyleController = IBEMainForm.MainCheckSC
        State = cbsChecked
      end
      object mAdd: TdxMemo
        Tag = 1000
        Left = 240
        Top = 201
        Width = 246
        TabOrder = 10
        Anchors = ['akLeft', 'akTop', 'akRight']
        StyleController = IBEMainForm.MainSC
        Height = 62
      end
      object cbServer: TdxPickEdit
        Left = 9
        Top = 20
        Width = 108
        TabOrder = 0
        StyleController = IBEMainForm.MainSC
        OnChange = cbServerChange
        DropDownListStyle = True
        Items.Strings = ['Local', 'Remote']
      end
      object cbServerName: TdxPickEdit
        Left = 123
        Top = 20
        Width = 147
        TabOrder = 1
        Anchors = ['akLeft', 'akTop', 'akRight']
        StyleController = IBEMainForm.MainSC
        DropDownRows = 20
      end
      object cbProtocol: TdxPickEdit
        Left = 276
        Top = 20
        Width = 87
        TabOrder = 2
        Anchors = ['akTop', 'akRight']
        StyleController = IBEMainForm.MainSC
        DropDownListStyle = True
        Items.Strings = ['TCP/IP', 'NetBEUI', 'SPX']
      end
      object eDBFile: TdxButtonEdit
        Left = 9
        Top = 65
        Width = 478
        TabOrder = 4
        OnExit = eDBFileExit
        Anchors = ['akLeft', 'akTop', 'akRight']
        StyleController = IBEMainForm.MainSC
        OnChange = eDBFileChange
        Buttons = <
          item
            Default = True
            Glyph.Data = {3e020000424d3e0200000000000036000000280000000d0000000d00000001001800000000000802000000000000000000000000000000000000ff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ff00000000000000000000000000000000000000000000000000000000000000ff00ffff00ffff00ff00000000000000408080408080408080408080408080408080408080408080000000ff00ffff00ff0000000080ffff000000408080408080408080408080408080408080408080408080000000ff00ff0000000080ffff80ffff0000004080804080804080804080804080804080804080804080800000000000000080ffff80ffff80ffff0000000000000000000000000000000000000000000000000000000000000080ffff80ffff80ffff80ffff80ffff80ffff80ffff80ffff000000ff00ffff00ffff00ff0000000080ffff80ffff80ffff000000000000000000000000000000000000ff00ffff00ffff00ff00ff00ff000000000000000000ff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ff00ff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ff000000000000000000ff00ff00ff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ff000000000000ff00ff00ff00ffff00ffff00ffff00ffff00ff000000ff00ffff00ffff00ff000000ff00ff000000ff00ff00ff00ffff00ffff00ffff00ffff00ffff00ff000000000000000000ff00ffff00ffff00ffff00ff00}
            Kind = bkGlyph
            Width = 21
          end
        >
        OnButtonClick = eDBFileButtonClick
        ExistButtons = True
      end
      object feISC4: TdxButtonEdit
        Left = 9
        Top = 318
        Width = 477
        TabOrder = 11
        OnExit = feISC4Exit
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
        OnButtonClick = feISC4ButtonClick
        ExistButtons = True
      end
      object cbServerVersion: TdxPickEdit
        Left = 369
        Top = 20
        Width = 118
        TabOrder = 3
        Anchors = ['akTop', 'akRight']
        StyleController = IBEMainForm.MainSC
        OnChange = cbServerVersionChange
        DropDownRows = 20
        DropDownListStyle = True
        Items.Strings = ['Unknown', 'InterBase 5.x', 'InterBase 6.0-6.1', 'InterBase 6.5', 'Firebird 1.0', 'Firebird 1.5', 'Yaffil 1.0', 'InterBase 7.0', 'InterBase 7.1', 'Firebird 2.0', 'InterBase 7.5']
      end
      object eClientLibrary: TdxButtonEdit
        Left = 9
        Top = 361
        Width = 477
        TabOrder = 12
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
        OnButtonClick = eClientLibraryButtonClick
        ExistButtons = True
      end
      object cbTrustedAuth: TdxCheckEdit
        Left = 236
        Top = 152
        Width = 247
        TabOrder = 15
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = 'Trusted authentication'
        StyleController = IBEMainForm.MainCheckSC
      end
      object cbDisableUTF8Conversion: TdxCheckEdit
        Left = 98
        Top = 271
        Width = 385
        TabOrder = 16
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = 'Do NOT perform conversion from/to UTF8'
        StyleController = IBEMainForm.MainCheckSC
      end
    end
    object tsAdditional: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 492
      Height = 475
      Caption = 'Additional'
      ImageIndex = 1
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
      object lPollInterval: TLabel
        Left = 13
        Top = 145
        Width = 148
        Height = 13
        Caption = 'Database poll interval, seconds'
      end
      object TrimC: TdxCheckEdit
        Left = 8
        Top = 40
        Width = 480
        TabOrder = 0
        Caption = 'Trim &Char Fields in Grids'
        StyleController = IBEMainForm.MainCheckSC
        State = cbsChecked
      end
      object cbAutocommit: TdxCheckEdit
        Left = 8
        Top = 63
        Width = 480
        TabOrder = 1
        Caption = 'Autocommit Transactions'
        StyleController = IBEMainForm.MainCheckSC
      end
      object ShowSysPerfC: TdxCheckEdit
        Left = 8
        Top = 17
        Width = 473
        TabOrder = 2
        Caption = 'Show System Tables into &Performance Analysis'
        StyleController = IBEMainForm.MainCheckSC
      end
      object cbUseCache: TdxCheckEdit
        Left = 8
        Top = 209
        Width = 480
        TabOrder = 3
        Caption = 'Use metadata cache'
        StyleController = IBEMainForm.MainCheckSC
      end
      object cbAutoOpenDB: TdxCheckEdit
        Left = 8
        Top = 85
        Width = 475
        TabOrder = 4
        Caption = 'Open database when IBExpert starts'
        StyleController = IBEMainForm.MainCheckSC
      end
      object cbLoginPrompt: TdxCheckEdit
        Left = 8
        Top = 109
        Width = 475
        TabOrder = 5
        Caption = 'Always prompt for a user name and password'
        StyleController = IBEMainForm.MainCheckSC
      end
      object cbDisablePerformanceAnalysis: TdxCheckEdit
        Left = 8
        Top = 257
        Width = 480
        TabOrder = 6
        Caption = 'Disable performance analysis'
        StyleController = IBEMainForm.MainCheckSC
      end
      object cbDisablePlan: TdxCheckEdit
        Left = 8
        Top = 233
        Width = 480
        TabOrder = 7
        Caption = 'Disable plan request in SQL Editor'
        StyleController = IBEMainForm.MainCheckSC
      end
      object cbDisableDescriptionInHints: TdxCheckEdit
        Left = 8
        Top = 281
        Width = 480
        TabOrder = 8
        Caption = 'Disable object descriptions in hints'
        StyleController = IBEMainForm.MainCheckSC
      end
      object cbDontDisplayMaxRdbFormat: TdxCheckEdit
        Left = 8
        Top = 304
        Width = 480
        TabOrder = 9
        Caption = 'Don''t display metadata changes counter info'
        StyleController = IBEMainForm.MainCheckSC
      end
      object sePollInterval: TdxSpinEdit
        Left = 169
        Top = 142
        Width = 72
        TabOrder = 10
        StyleController = IBEMainForm.MainSC
        Increment = -3.105036184601418e+231
        MaxValue = -2.5082282550565593e+204
        StoredValues = 48
      end
    end
    object tsDBExplorer: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 492
      Height = 475
      Caption = 'DB Explorer'
      ImageIndex = 2
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
      object ShowSTablesC: TdxCheckEdit
        Left = 8
        Top = 17
        Width = 473
        TabOrder = 0
        Caption = 'Show System &Tables'
        StyleController = IBEMainForm.MainCheckSC
      end
      object ShowSysDomainsC: TdxCheckEdit
        Left = 8
        Top = 39
        Width = 473
        TabOrder = 1
        Caption = 'Show System Generated &Domains'
        StyleController = IBEMainForm.MainCheckSC
      end
      object ShowSysTriggersC: TdxCheckEdit
        Left = 8
        Top = 61
        Width = 473
        TabOrder = 2
        Caption = 'Show System Generated T&riggers'
        StyleController = IBEMainForm.MainCheckSC
      end
      object cbShowObjectsDetails: TdxCheckEdit
        Left = 8
        Top = 107
        Width = 473
        TabOrder = 3
        Caption = 'Show objects details (fields, indices etc.)'
        StyleController = IBEMainForm.MainCheckSC
      end
      object cbShowSysIndices: TdxCheckEdit
        Left = 8
        Top = 84
        Width = 473
        TabOrder = 4
        Caption = 'Show System Indices'
        StyleController = IBEMainForm.MainCheckSC
      end
    end
    object tsSQLEditor: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 492
      Height = 475
      Caption = 'SQL Editor'
      ImageIndex = 3
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
      object lHistoryCount: TLabel
        Left = 6
        Top = 17
        Width = 120
        Height = 13
        Caption = 'SQL Editor History Count '
      end
      object seHistoryCount: TdxSpinEdit
        Left = 129
        Top = 14
        Width = 63
        TabOrder = 0
        StyleController = IBEMainForm.MainSC
        MaxValue = -1.2938158758247024e-172
        MinValue = -0.0
        Value = -6.80564733841877e+38
        StoredValues = 48
      end
    end
    object tsLogs: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 492
      Height = 475
      Caption = 'Log Files'
      ImageIndex = 4
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
      object cbIncludeTimeStamp: TdxCheckEdit
        Left = 8
        Top = 17
        Width = 473
        TabOrder = 0
        Caption = 'Write timestamp into logs'
        StyleController = IBEMainForm.MainCheckSC
      end
    end
    object tsLogMetadata: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 492
      Height = 475
      Caption = 'Metadata changes'
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
      object lMetaLog: TLabel
        Left = 15
        Top = 38
        Width = 85
        Height = 13
        Caption = 'Metadata Log File'
        Visible = False
      end
      object cbMetaLog: TdxCheckEdit
        Left = 12
        Top = 8
        Width = 472
        TabOrder = 0
        OnClick = cbMetaLogChange
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = 'Enable Logging Metadata Changes'
        StyleController = IBEMainForm.MainCheckSC
      end
      object feMetaLog: TdxButtonEdit
        Left = 15
        Top = 56
        Width = 459
        TabOrder = 1
        Visible = False
        StyleController = IBEMainForm.MainSC
        Buttons = <
          item
            Default = True
            Glyph.Data = {3e020000424d3e0200000000000036000000280000000d0000000d00000001001800000000000802000000000000000000000000000000000000ff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ff00000000000000000000000000000000000000000000000000000000000000ff00ffff00ffff00ff00000000000000408080408080408080408080408080408080408080408080000000ff00ffff00ff0000000080ffff000000408080408080408080408080408080408080408080408080000000ff00ff0000000080ffff80ffff0000004080804080804080804080804080804080804080804080800000000000000080ffff80ffff80ffff0000000000000000000000000000000000000000000000000000000000000080ffff80ffff80ffff80ffff80ffff80ffff80ffff80ffff000000ff00ffff00ffff00ff0000000080ffff80ffff80ffff000000000000000000000000000000000000ff00ffff00ffff00ff00ff00ff000000000000000000ff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ff00ff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ff000000000000000000ff00ff00ff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ff000000000000ff00ff00ff00ffff00ffff00ffff00ffff00ff000000ff00ffff00ffff00ff000000ff00ff000000ff00ff00ff00ffff00ffff00ffff00ffff00ffff00ff000000000000000000ff00ffff00ffff00ffff00ff00}
            Kind = bkGlyph
            Width = 21
          end
        >
        OnButtonClick = feMetaLogButtonClick
        ExistButtons = True
      end
    end
    object tsLogSQLEditor: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 492
      Height = 475
      Caption = 'SQL Editor'
      ImageIndex = 6
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
      object lSQLEditorLog: TLabel
        Left = 14
        Top = 38
        Width = 91
        Height = 13
        Caption = 'SQL Editor Log File'
        Visible = False
      end
      object cbSQLEditorLog: TdxCheckEdit
        Left = 12
        Top = 8
        Width = 479
        TabOrder = 0
        OnClick = cbSQLEditorLogChange
        Caption = 'Enable Logging SQL Editor '
        StyleController = IBEMainForm.MainCheckSC
      end
      object feSQLEditorLog: TdxButtonEdit
        Left = 15
        Top = 56
        Width = 459
        TabOrder = 1
        Visible = False
        StyleController = IBEMainForm.MainSC
        Buttons = <
          item
            Default = True
            Glyph.Data = {3e020000424d3e0200000000000036000000280000000d0000000d00000001001800000000000802000000000000000000000000000000000000ff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ff00000000000000000000000000000000000000000000000000000000000000ff00ffff00ffff00ff00000000000000408080408080408080408080408080408080408080408080000000ff00ffff00ff0000000080ffff000000408080408080408080408080408080408080408080408080000000ff00ff0000000080ffff80ffff0000004080804080804080804080804080804080804080804080800000000000000080ffff80ffff80ffff0000000000000000000000000000000000000000000000000000000000000080ffff80ffff80ffff80ffff80ffff80ffff80ffff80ffff000000ff00ffff00ffff00ff0000000080ffff80ffff80ffff000000000000000000000000000000000000ff00ffff00ffff00ff00ff00ff000000000000000000ff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ff00ff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ff000000000000000000ff00ff00ff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ff000000000000ff00ff00ff00ffff00ffff00ffff00ffff00ff000000ff00ffff00ffff00ff000000ff00ff000000ff00ff00ff00ffff00ffff00ffff00ffff00ffff00ff000000000000000000ff00ffff00ffff00ffff00ff00}
            Kind = bkGlyph
            Width = 21
          end
        >
        OnButtonClick = feSQLEditorLogButtonClick
        ExistButtons = True
      end
      object gbStatementsForLog: TGroupBox
        Left = 15
        Top = 91
        Width = 469
        Height = 112
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = ' Options  '
        TabOrder = 2
        Visible = False
        object cbLogSelect: TdxCheckEdit
          Left = 9
          Top = 20
          Width = 216
          TabOrder = 0
          Caption = 'Log SELECT'
          StyleController = IBEMainForm.MainCheckSC
        end
        object cbLogCreate: TdxCheckEdit
          Left = 233
          Top = 20
          Width = 228
          TabOrder = 1
          Anchors = ['akLeft', 'akTop', 'akRight']
          Caption = 'Log CREATE, ALTER, DROP'
          StyleController = IBEMainForm.MainCheckSC
        end
        object cbLogUpdate: TdxCheckEdit
          Left = 9
          Top = 62
          Width = 216
          TabOrder = 2
          Caption = 'Log UPDATE'
          StyleController = IBEMainForm.MainCheckSC
        end
        object cbLogInsert: TdxCheckEdit
          Left = 9
          Top = 41
          Width = 216
          TabOrder = 3
          Caption = 'Log INSERT'
          StyleController = IBEMainForm.MainCheckSC
        end
        object cbLogDelete: TdxCheckEdit
          Left = 9
          Top = 83
          Width = 216
          TabOrder = 4
          Caption = 'Log DELETE'
          StyleController = IBEMainForm.MainCheckSC
        end
        object cbLogValidOnly: TdxCheckEdit
          Left = 233
          Top = 83
          Width = 228
          TabOrder = 5
          Anchors = ['akLeft', 'akTop', 'akRight']
          Caption = 'Log valid only statements'
          StyleController = IBEMainForm.MainCheckSC
        end
        object cbLogOther: TdxCheckEdit
          Left = 233
          Top = 62
          Width = 228
          TabOrder = 6
          Anchors = ['akLeft', 'akTop', 'akRight']
          Caption = 'Log other statements'
          StyleController = IBEMainForm.MainCheckSC
        end
        object cbLogExecute: TdxCheckEdit
          Left = 233
          Top = 41
          Width = 228
          TabOrder = 7
          Anchors = ['akLeft', 'akTop', 'akRight']
          Caption = 'Log EXECUTE'
          StyleController = IBEMainForm.MainCheckSC
        end
      end
    end
    object tsScriptExecutiveLog: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 492
      Height = 475
      Caption = 'Script Executive'
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
      object lScriptExecutiveLog: TLabel
        Left = 15
        Top = 38
        Width = 458
        Height = 13
        Anchors = ['akLeft', 'akTop', 'akRight']
        AutoSize = False
        Caption = 'Script Executive Log File'
        Visible = False
      end
      object cbScriptExecutiveLog: TdxCheckEdit
        Left = 12
        Top = 8
        Width = 478
        TabOrder = 0
        OnClick = cbScriptExecutiveLogClick
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = 'Enable Logging Metadata Changes'
        StyleController = IBEMainForm.MainCheckSC
      end
      object feScriptExecutiveLogFile: TdxButtonEdit
        Left = 15
        Top = 56
        Width = 459
        TabOrder = 1
        Visible = False
        StyleController = IBEMainForm.MainSC
        Buttons = <
          item
            Default = True
            Glyph.Data = {3e020000424d3e0200000000000036000000280000000d0000000d00000001001800000000000802000000000000000000000000000000000000ff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ff00000000000000000000000000000000000000000000000000000000000000ff00ffff00ffff00ff00000000000000408080408080408080408080408080408080408080408080000000ff00ffff00ff0000000080ffff000000408080408080408080408080408080408080408080408080000000ff00ff0000000080ffff80ffff0000004080804080804080804080804080804080804080804080800000000000000080ffff80ffff80ffff0000000000000000000000000000000000000000000000000000000000000080ffff80ffff80ffff80ffff80ffff80ffff80ffff80ffff000000ff00ffff00ffff00ff0000000080ffff80ffff80ffff000000000000000000000000000000000000ff00ffff00ffff00ff00ff00ff000000000000000000ff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ff00ff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ff000000000000000000ff00ff00ff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ff000000000000ff00ff00ff00ffff00ffff00ffff00ffff00ff000000ff00ffff00ffff00ff000000ff00ff000000ff00ff00ff00ffff00ffff00ffff00ffff00ffff00ff000000000000000000ff00ffff00ffff00ffff00ff00}
            Kind = bkGlyph
            Width = 21
          end
        >
        OnButtonClick = feScriptExecutiveLogFileButtonClick
        ExistButtons = True
      end
    end
    object tsBackRest: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 492
      Height = 475
      Caption = 'Backup/Restore'
      ImageIndex = 8
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
    end
    object tsBRFiles: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 492
      Height = 475
      Caption = 'Files'
      ImageIndex = 9
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
      object FGFm: TFilesGridFrame
        Top = 1
        Width = 492
        Height = 474
        object Bevel1: TBevel
          Width = 492
        end
        object Grid: TdxDBGrid
          Width = 492
          Height = 441
          Filter.Criteria = {4 bytes}
          object gcUnits: TdxDBGridPickColumn
            Visible = True
          end
        end
        object Toolbar: TTBToolbar
          Width = 492
        end
        object Panel1: TPanel
          Width = 492
        end
        object Panel2: TPanel
          Width = 492
        end
        object Panel3: TPanel
          Width = 492
        end
      end
    end
    object tsBackupOptions: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 492
      Height = 475
      Caption = 'Backup Options'
      ImageIndex = 10
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
      object lFormat: TLabel
        Left = 17
        Top = 193
        Width = 43
        Height = 13
        AutoSize = False
        Caption = '&Format'
        FocusControl = cbFormat
      end
      object gbBackupOutputOptions: TGroupBox
        Left = 7
        Top = 226
        Width = 478
        Height = 75
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = ' Output '
        TabOrder = 0
        object cbBackupVerbose: TdxCheckEdit
          Left = 6
          Top = 18
          Width = 81
          TabOrder = 0
          OnClick = cbBackupVerboseChange
          Caption = '&Verbose'
          StyleController = IBEMainForm.MainCheckSC
          State = cbsChecked
        end
        object cbBackupVerboseOutput: TdxPickEdit
          Left = 97
          Top = 18
          Width = 111
          TabOrder = 1
          StyleController = IBEMainForm.MainSC
          OnChange = cbBackupVerboseOutputChange
          DropDownListStyle = True
          Items.Strings = ['To Screen', 'To File']
        end
        object feBackupVerboseFile: TdxButtonEdit
          Left = 9
          Top = 46
          Width = 460
          TabOrder = 2
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
          OnButtonClick = feBackupVerboseFileButtonClick
          ExistButtons = True
        end
      end
      object cbIgnoreCheckSum: TdxCheckEdit
        Left = 12
        Top = 8
        Width = 482
        TabOrder = 1
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = 'Ignore check sum'
        StyleController = IBEMainForm.MainCheckSC
      end
      object cbIgnoreLimbo: TdxCheckEdit
        Left = 12
        Top = 29
        Width = 482
        TabOrder = 2
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = 'Ignore transaction in &Limbo'
        StyleController = IBEMainForm.MainCheckSC
      end
      object cbMetadataOnly: TdxCheckEdit
        Left = 12
        Top = 51
        Width = 482
        TabOrder = 3
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = 'Backup &Metadata only'
        StyleController = IBEMainForm.MainCheckSC
      end
      object cbGarbage: TdxCheckEdit
        Left = 12
        Top = 74
        Width = 482
        TabOrder = 4
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = '&Garbage collection'
        StyleController = IBEMainForm.MainCheckSC
        State = cbsChecked
      end
      object cbOldMetaDescription: TdxCheckEdit
        Left = 12
        Top = 98
        Width = 482
        TabOrder = 5
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = '&Old metadata description'
        StyleController = IBEMainForm.MainCheckSC
      end
      object cbConvertToTables: TdxCheckEdit
        Left = 12
        Top = 122
        Width = 482
        TabOrder = 6
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = 'Convert to &Tables'
        StyleController = IBEMainForm.MainCheckSC
      end
      object cbFormat: TdxPickEdit
        Left = 57
        Top = 189
        Width = 145
        TabOrder = 7
        StyleController = IBEMainForm.MainSC
        DropDownListStyle = True
        Items.Strings = ['Transportable', 'Non-Transportable']
      end
      object cbBackupNoDbTriggers: TdxCheckEdit
        Left = 12
        Top = 146
        Width = 349
        TabOrder = 8
        Caption = 'Prevent database/transaction triggers from firing'
        StyleController = IBEMainForm.MainCheckSC
      end
    end
    object tsRestoreOptions: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 492
      Height = 475
      Caption = 'Restore Options'
      ImageIndex = 11
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
      object lPageSize: TLabel
        Left = 13
        Top = 193
        Width = 49
        Height = 13
        Caption = 'Page size:'
        FocusControl = cbPageSize
      end
      object gbRestoreOutputOptions: TGroupBox
        Left = 7
        Top = 226
        Width = 478
        Height = 75
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = ' Output '
        TabOrder = 0
        object cbRestoreVerbose: TdxCheckEdit
          Left = 6
          Top = 18
          Width = 81
          TabOrder = 0
          OnClick = cbRestoreVerboseChange
          Caption = '&Verbose'
          StyleController = IBEMainForm.MainCheckSC
          State = cbsChecked
        end
        object cbRestoreVerboseOutput: TdxPickEdit
          Left = 97
          Top = 18
          Width = 111
          TabOrder = 1
          StyleController = IBEMainForm.MainSC
          OnChange = cbRestoreVerboseOutputChange
          DropDownListStyle = True
          Items.Strings = ['To Screen', 'To File']
        end
        object feRestoreVerboseFile: TdxButtonEdit
          Left = 9
          Top = 46
          Width = 460
          TabOrder = 2
          StyleController = IBEMainForm.MainSC
          Buttons = <
            item
              Default = True
              Glyph.Data = {3e020000424d3e0200000000000036000000280000000d0000000d00000001001800000000000802000000000000000000000000000000000000ff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ff00000000000000000000000000000000000000000000000000000000000000ff00ffff00ffff00ff00000000000000408080408080408080408080408080408080408080408080000000ff00ffff00ff0000000080ffff000000408080408080408080408080408080408080408080408080000000ff00ff0000000080ffff80ffff0000004080804080804080804080804080804080804080804080800000000000000080ffff80ffff80ffff0000000000000000000000000000000000000000000000000000000000000080ffff80ffff80ffff80ffff80ffff80ffff80ffff80ffff000000ff00ffff00ffff00ff0000000080ffff80ffff80ffff000000000000000000000000000000000000ff00ffff00ffff00ff00ff00ff000000000000000000ff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ff00ff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ff000000000000000000ff00ff00ff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ff000000000000ff00ff00ff00ffff00ffff00ffff00ffff00ff000000ff00ffff00ffff00ff000000ff00ff000000ff00ff00ff00ffff00ffff00ffff00ffff00ffff00ff000000000000000000ff00ffff00ffff00ffff00ff00}
              Kind = bkGlyph
              Width = 21
            end
          >
          OnButtonClick = feRestoreVerboseFileButtonClick
          ExistButtons = True
        end
      end
      object cbDeactivateIndexes: TdxCheckEdit
        Left = 12
        Top = 8
        Width = 349
        TabOrder = 1
        Caption = 'Deactivate indexes'
        StyleController = IBEMainForm.MainCheckSC
      end
      object cbNoShadow: TdxCheckEdit
        Left = 12
        Top = 29
        Width = 349
        TabOrder = 2
        Caption = 'Don''t recreate shadow files'
        StyleController = IBEMainForm.MainCheckSC
      end
      object cbNoValidity: TdxCheckEdit
        Left = 12
        Top = 51
        Width = 349
        TabOrder = 3
        Caption = 'Don''t enforce validity conditions'
        StyleController = IBEMainForm.MainCheckSC
      end
      object cbCommitAfterTable: TdxCheckEdit
        Left = 12
        Top = 74
        Width = 349
        TabOrder = 4
        Caption = 'Commit after each table'
        StyleController = IBEMainForm.MainCheckSC
        State = cbsChecked
      end
      object cbReplaceExisting: TdxCheckEdit
        Left = 12
        Top = 98
        Width = 349
        TabOrder = 5
        Caption = 'Replace existing database'
        StyleController = IBEMainForm.MainCheckSC
      end
      object cbUseAllSpace: TdxCheckEdit
        Left = 12
        Top = 122
        Width = 349
        TabOrder = 6
        Caption = 'Use all space'
        StyleController = IBEMainForm.MainCheckSC
      end
      object cbPageSize: TdxPickEdit
        Left = 74
        Top = 189
        Width = 87
        TabOrder = 7
        StyleController = IBEMainForm.MainSC
        DropDownListStyle = True
        Items.Strings = ['Default', '1024', '2048', '4096', '8192', '16384']
      end
      object cbRestoreNoDbTriggers: TdxCheckEdit
        Left = 12
        Top = 146
        Width = 349
        TabOrder = 8
        Caption = 'Prevent database/transaction triggers from firing'
        StyleController = IBEMainForm.MainCheckSC
      end
    end
    object tsPaths: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 492
      Height = 475
      Caption = 'Default paths'
      ImageIndex = 12
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
      object lExtract: TLabel
        Left = 15
        Top = 8
        Width = 470
        Height = 13
        AutoSize = False
        Caption = 'Default Metadata Extract File'
      end
      object lExportPath: TLabel
        Left = 15
        Top = 106
        Width = 470
        Height = 13
        AutoSize = False
        Caption = 'Default Export Data Directory'
      end
      object lQuickSave: TLabel
        Left = 15
        Top = 156
        Width = 470
        Height = 13
        AutoSize = False
        Caption = 'Default Quick Save Directory'
      end
      object lParams: TLabel
        Left = 15
        Top = 206
        Width = 470
        Height = 13
        AutoSize = False
        Caption = 'Default Parameters Directory'
      end
      object lHTMLReport: TLabel
        Left = 15
        Top = 257
        Width = 470
        Height = 13
        AutoSize = False
        Caption = 'Default HTML Report Directory'
        FocusControl = deHTMLReport
      end
      object lExtractSepFiles: TLabel
        Left = 15
        Top = 58
        Width = 470
        Height = 13
        AutoSize = False
        Caption = 'Default Metadata Extract Directory (for Separate Files Mode)'
      end
      object feExtract: TdxButtonEdit
        Left = 15
        Top = 27
        Width = 469
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
        OnButtonClick = feExtractButtonClick
        ExistButtons = True
      end
      object deExportPath: TdxButtonEdit
        Left = 15
        Top = 125
        Width = 469
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
        OnButtonClick = deExportPathButtonClick
        ExistButtons = True
      end
      object deQuickSave: TdxButtonEdit
        Left = 15
        Top = 175
        Width = 469
        TabOrder = 2
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
        OnButtonClick = deQuickSaveButtonClick
        ExistButtons = True
      end
      object deParams: TdxButtonEdit
        Left = 15
        Top = 226
        Width = 469
        TabOrder = 3
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
        OnButtonClick = deParamsButtonClick
        ExistButtons = True
      end
      object deHTMLReport: TdxButtonEdit
        Left = 15
        Top = 277
        Width = 469
        TabOrder = 4
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
        OnButtonClick = deHTMLReportButtonClick
        ExistButtons = True
      end
      object feExtractSepFiles: TdxButtonEdit
        Left = 15
        Top = 77
        Width = 469
        TabOrder = 5
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
        OnButtonClick = feExtractSepFilesButtonClick
        ExistButtons = True
      end
    end
    object tsExplorerFilters: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 492
      Height = 475
      Caption = 'Explorer Filters'
      ImageIndex = 13
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
      object ExplorerFiltersFm: TExplorerFiltersFrame
        Top = 1
        Width = 492
        Height = 474
        object Splitter1: TdfsSplitter
          Width = 492
        end
        object Panel1: TPanel
          Width = 492
          Height = 258
          object P2: TPanel
            Width = 492
          end
          object M: TdxMemo
            Width = 492
            Height = 240
          end
        end
        object Panel2: TPanel
          Width = 492
          object TL: TdxTreeList
            Width = 492
          end
          object P1: TPanel
            Width = 492
          end
        end
      end
    end
    object tsMySQLGeneral: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 492
      Height = 475
      Caption = 'tsMySQLGeneral'
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
      object lMySQLHost: TLabel
        Left = 9
        Top = 4
        Width = 27
        Height = 13
        Caption = 'Host'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = ['fsBold']
        ParentFont = False
      end
      object lMySQLPort: TLabel
        Left = 227
        Top = 4
        Width = 24
        Height = 13
        Caption = 'Port'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = ['fsBold']
        ParentFont = False
      end
      object cbMySQLHost: TdxPickEdit
        Left = 9
        Top = 21
        Width = 208
        TabOrder = 0
        StyleController = IBEMainForm.MainSC
        DropDownRows = 20
      end
      object eMySQLPort: TdxEdit
        Left = 227
        Top = 21
        Width = 125
        TabOrder = 1
        CharCase = ecUpperCase
        StyleController = IBEMainForm.MainSC
      end
    end
    object tsOracleGeneral: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 492
      Height = 475
      Caption = 'tsOracleGeneral'
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
    end
    object tsScripts: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 492
      Height = 475
      Caption = 'Scripts'
      ImageIndex = 16
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
      object cbExecuteScriptsForReconnect: TdxCheckEdit
        Left = 12
        Top = 8
        Width = 469
        TabOrder = 0
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = 'Also execute event scripts when reconnect'
        StyleController = IBEMainForm.MainCheckSC
      end
    end
    object tsAfterConnect: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 492
      Height = 475
      Caption = 'After Connect'
      ImageIndex = 17
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
      object ACEditFm: TEditFrame
        Top = 1
        Width = 492
        Height = 474
        object EditM: TSQLMemo
          Width = 492
          Height = 456
          OnEnter = ACEditFmEditMEnter
          OnExit = ACEditFmEditMExit
        end
        object pIncSearch: TPanel
          Top = 456
          Width = 492
        end
      end
    end
    object tsBeforeDisconnect: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 492
      Height = 475
      Caption = 'Before Disconnect'
      ImageIndex = 18
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
      object BDEditFm: TEditFrame
        Top = 1
        Width = 492
        Height = 474
        object EditM: TSQLMemo
          Width = 492
          Height = 456
          OnEnter = BDEditFmEditMEnter
          OnExit = BDEditFmEditMExit
        end
        object pIncSearch: TPanel
          Top = 456
          Width = 492
        end
      end
    end
    object tsBeforeConnect: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 492
      Height = 475
      Caption = 'Before Connect'
      ImageIndex = 19
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
      object BCEditFm: TEditFrame
        Top = 1
        Width = 492
        Height = 474
        object EditM: TSQLMemo
          Width = 492
          Height = 456
          OnEnter = BCEditFmEditMEnter
          OnExit = BCEditFmEditMExit
        end
        object pIncSearch: TPanel
          Top = 456
          Width = 492
        end
      end
    end
    object tsAfterDisconnect: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 492
      Height = 475
      Caption = 'After Disconnect'
      ImageIndex = 20
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
      object ADEditFm: TEditFrame
        Top = 1
        Width = 492
        Height = 474
        object EditM: TSQLMemo
          Width = 492
          Height = 456
          OnEnter = ADEditFmEditMEnter
          OnExit = ADEditFmEditMExit
        end
        object pIncSearch: TPanel
          Top = 456
          Width = 492
        end
      end
    end
    object tsExtractMetadata: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 492
      Height = 475
      Caption = 'Extract Metadata'
      ImageIndex = 21
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
      object cbDescAsUpdate: TdxCheckEdit
        Left = 5
        Top = 8
        Width = 474
        TabOrder = 0
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = 'Use UPDATE instead of DESCRIBE when extracting object descriptions'
        StyleController = IBEMainForm.MainCheckSC
      end
    end
    object tsTransactions: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 492
      Height = 475
      Caption = 'Transactions'
      ImageIndex = 22
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
        Top = 301
        Width = 286
        Height = 13
        Caption = 'Remark: IBExpert will automatically delete wrong parameters!'
        Transparent = True
      end
      object rgDataTransactions: TRadioGroup
        Left = 9
        Top = 8
        Width = 429
        Height = 130
        Caption = '  Data Transactions Properties  '
        Items.Strings = ['Snapshot', 'Read Committed', 'Read-Only Table Stability', 'Read-Write Table Stability', 'Default']
        TabOrder = 0
        OnClick = rgDataTransactionsClick
      end
      object rgMetadataTransactions: TRadioGroup
        Left = 9
        Top = 151
        Width = 429
        Height = 130
        Caption = '  Metadata Transactions Properties  '
        Items.Strings = ['Snapshot', 'Read Committed', 'Read-Only Table Stability', 'Read-Write Table Stability', 'Default']
        TabOrder = 1
        OnClick = rgDataTransactionsClick
      end
      object DataTBPM: TdxMemo
        Tag = 1000
        Left = 209
        Top = 21
        Width = 221
        TabOrder = 2
        OnExit = DataTBPMExit
        StyleController = IBEMainForm.MainSC
        WordWrap = False
        Height = 109
      end
      object MetaTBPM: TdxMemo
        Tag = 1000
        Left = 209
        Top = 165
        Width = 221
        TabOrder = 3
        OnExit = DataTBPMExit
        StyleController = IBEMainForm.MainSC
        WordWrap = False
        Height = 108
      end
    end
    object tsComparative: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 492
      Height = 475
      Caption = 'Comparative DB'
      ImageIndex = 23
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
        Left = 10
        Top = 6
        Width = 108
        Height = 13
        Caption = 'Comparative Database'
      end
      object cbComparativeDatabase: TdxPopupEdit
        Left = 10
        Top = 26
        Width = 467
        TabOrder = 0
        Anchors = ['akLeft', 'akTop', 'akRight']
        StyleController = IBEMainForm.MainSC
        OnChange = cbComparativeDatabaseChange
        HideEditCursor = True
        PopupControl = IBEMainForm.DBTL
        PopupFormBorderStyle = pbsSysPanel
        OnInitPopup = cbComparativeDatabaseInitPopup
        OnPopup = cbComparativeDatabasePopup
      end
    end
    object dxTabSheet1: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 492
      Height = 475
      Caption = 'Color Mark'
      ImageIndex = 24
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
      object lMarkLineColor: TLabel
        Left = 233
        Top = 36
        Width = 69
        Height = 13
        Caption = 'Mark line color'
      end
      object lColorMarkThickness: TLabel
        Left = 37
        Top = 144
        Width = 123
        Height = 13
        Caption = 'Mark line thickness, pixels'
      end
      object cbAllowColorMark: TdxCheckEdit
        Left = 5
        Top = 8
        Width = 484
        TabOrder = 0
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = 'Allow color marking of the database windows'
        StyleController = IBEMainForm.MainCheckSC
        OnChange = cbAllowColorMarkChange
      end
      object cbColorMarkTop: TdxCheckEdit
        Left = 32
        Top = 34
        Width = 194
        TabOrder = 1
        Caption = 'On top of window'
        StyleController = IBEMainForm.MainCheckSC
      end
      object cbColorMarkLeft: TdxCheckEdit
        Left = 32
        Top = 58
        Width = 194
        TabOrder = 2
        Caption = 'On left of window'
        StyleController = IBEMainForm.MainCheckSC
      end
      object cbColorMarkBottom: TdxCheckEdit
        Left = 32
        Top = 82
        Width = 194
        TabOrder = 3
        Caption = 'On bottom of window'
        StyleController = IBEMainForm.MainCheckSC
      end
      object cbColorMarkRight: TdxCheckEdit
        Left = 32
        Top = 106
        Width = 194
        TabOrder = 4
        Caption = 'On right of window'
        StyleController = IBEMainForm.MainCheckSC
      end
      object eMarkLineColor: TdxButtonEdit
        Left = 233
        Top = 54
        Width = 127
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        ReadOnly = False
        StyleController = IBEMainForm.MainSC
        Buttons = <
          item
            Default = True
          end
        >
        ViewStyle = vsHideCursor
        OnButtonClick = eMarkLineColorButtonClick
        StoredValues = 64
        ExistButtons = True
      end
      object seColorMarkThickness: TdxSpinEdit
        Left = 168
        Top = 141
        Width = 45
        TabOrder = 6
        StyleController = IBEMainForm.MainSC
        MaxValue = -6.80564733841877e+38
        MinValue = -0.0
        Value = -0.0
        StoredValues = 48
      end
    end
    object dxTabSheet2: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 492
      Height = 475
      Caption = 'After DDL Executed'
      ImageIndex = 25
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
      object ADDLEditFm: TEditFrame
        Top = 1
        Width = 492
        Height = 474
        object EditM: TSQLMemo
          Width = 492
          Height = 456
        end
        object pIncSearch: TPanel
          Top = 456
          Width = 492
        end
      end
    end
  end
  object TL: TdxTreeList
    Tag = -1000
    Left = 0
    Top = 0
    Width = 206
    Height = 500
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
    Options = ['aoColumnSizing', 'aoTabThrough', 'aoRowSelect', 'aoMultiSelect', 'aoDrawEndEllipsis', 'aoAutoWidth']
    OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragExpand', 'aoAutoSearch']
    TreeLineColor = clGrayText
    ShowHeader = False
    GridLineColor = clSilver
    OnCustomDrawCell = TLCustomDrawCell
    OnChangeNode = TLChangeNode
    Constraints.MinWidth = 150
    Data = {1080 bytes}
    object ObjectsTLColumn1: TdxTreeListColumn
      BandIndex = 0
      RowIndex = 0
    end
  end
  object ActionList1: TActionList
    OnUpdate = ActionList1Update
    Left = 396
    Top = 416
    object aTestConnect: TAction
      Caption = 'Test Connect'
      Enabled = False
      ShortCut = 24660
      OnExecute = aTestConnectExecute
    end
    object actLocalize: TAction
      Caption = 'Localize'
      ShortCut = 57420
      OnExecute = actLocalizeExecute
    end
  end
  object OP: TOpenDialog
    DefaultExt = 'gdb'
    Filter = 'InterBase database (*.gdb)|*.gdb'
    Left = 276
    Top = 416
  end
  object SD: TSaveDialog
    DefaultExt = 'txt'
    Filter = 'Text files (*.txt)|*.txt|All files (*.*)|*.*'
    Left = 316
    Top = 416
  end
  object ColorD: TColorDialog
    Ctl3D = True
    Options = ['cdFullOpen']
    Left = 348
    Top = 416
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
    Left = 12
    Top = 194
  end
end
