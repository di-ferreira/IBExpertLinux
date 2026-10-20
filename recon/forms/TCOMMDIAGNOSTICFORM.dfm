object CommDiagnosticForm: TCommDiagnosticForm
  Left = 374
  Top = 145
  HelpContext = 13800
  BorderIcons = ['biSystemMenu', 'biMaximize']
  BorderStyle = bsSingle
  Caption = 'Communication Diagnostics'
  ClientHeight = 554
  ClientWidth = 452
  Color = clBtnFace
  Constraints.MinHeight = 550
  Constraints.MinWidth = 460
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 515
    Width = 452
    Height = 39
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object Bevel2: TBevel
      Left = 0
      Top = 0
      Width = 452
      Height = 5
      Align = alTop
      Shape = bsBottomLine
    end
    object OkB: TButton
      Left = 288
      Top = 10
      Width = 75
      Height = 24
      Action = actTest
      Anchors = ['akRight', 'akBottom']
      Default = True
      TabOrder = 0
    end
    object CancelB: TButton
      Left = 372
      Top = 10
      Width = 75
      Height = 24
      Anchors = ['akRight', 'akBottom']
      Cancel = True
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object Pages: TIBEPageControl
    Left = 0
    Top = 0
    Width = 452
    Height = 515
    AdvOfficePagerStyler = IBEMainForm.PCStyler
    Align = alClient
    ActivePage = tsDB
    AntiAlias = aaNone
    ButtonSettings.PageListButtonHint = 'Page List'
    Glow = False
    PageMargin = 0
    TabSettings.RightMargin = 2
    TabSettings.Height = 24
    TabSettings.Spacing = 2
    TabSettings.Shape = tsRightRamp
    TabSettings.Rounding = 3
    ShowShortCutHints = False
    OnChange = PagesChange
    TabOrder = 1
    TabStop = True
    NextPictureChanged = True
    PrevPictureChanged = True
    object tsDB: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 452
      Height = 490
      Caption = 'DB Connection'
      PageAppearance.BorderColor = 12697533
      PageAppearance.Color = clBtnFace
      PageAppearance.ColorTo = 15195349
      PageAppearance.ColorMirror = 15195349
      PageAppearance.ColorMirrorTo = 16513776
      PageAppearance.Gradient = ggVertical
      PageAppearance.GradientMirror = ggVertical
      TabAppearance.BorderColor = clNone
      TabAppearance.BorderColorHot = 12697277
      TabAppearance.BorderColorSelected = 12697533
      TabAppearance.BorderColorSelectedHot = 6277882
      TabAppearance.BorderColorDisabled = clNone
      TabAppearance.BorderColorDown = clNone
      TabAppearance.Color = clBtnFace
      TabAppearance.ColorTo = clWhite
      TabAppearance.ColorSelected = 16316660
      TabAppearance.ColorSelectedTo = 15722466
      TabAppearance.ColorDisabled = clWhite
      TabAppearance.ColorDisabledTo = clSilver
      TabAppearance.ColorHot = 13558249
      TabAppearance.ColorHotTo = 14669780
      TabAppearance.ColorMirror = clWhite
      TabAppearance.ColorMirrorTo = clWhite
      TabAppearance.ColorMirrorHot = 12966111
      TabAppearance.ColorMirrorHotTo = 9359081
      TabAppearance.ColorMirrorSelected = 15722466
      TabAppearance.ColorMirrorSelectedTo = 15722466
      TabAppearance.ColorMirrorDisabled = clWhite
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
      TabAppearance.BackGround.Color = clWhite
      TabAppearance.BackGround.ColorTo = 14537936
      TabAppearance.BackGround.Direction = gdHorizontal
      object Panel2: TPanel
        Left = 2
        Top = 2
        Width = 448
        Height = 238
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label3: TLabel
          Left = 3
          Top = 59
          Width = 31
          Height = 13
          Caption = 'Server'
        end
        object lServerName: TLabel
          Left = 136
          Top = 60
          Width = 60
          Height = 13
          Caption = 'Server name'
        end
        object lProtocol: TLabel
          Left = 357
          Top = 60
          Width = 39
          Height = 13
          Caption = 'Protocol'
        end
        object lDBName: TLabel
          Left = 3
          Top = 104
          Width = 487
          Height = 13
          AutoSize = False
          Caption = 'Database File (relative to server)'
        end
        object lUserName: TLabel
          Left = 3
          Top = 149
          Width = 77
          Height = 13
          AutoSize = False
          Caption = 'User Name'
          FocusControl = eUserName
        end
        object lPassword: TLabel
          Left = 157
          Top = 149
          Width = 77
          Height = 13
          AutoSize = False
          Caption = 'Password'
          FocusControl = ePassword
        end
        object Label7: TLabel
          Left = 3
          Top = 193
          Width = 79
          Height = 13
          Caption = 'Client Library File'
        end
        object lRole: TLabel
          Left = 309
          Top = 149
          Width = 77
          Height = 13
          AutoSize = False
          Caption = 'Role'
          FocusControl = eRole
        end
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 448
          Height = 56
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 4
          object Bevel1: TBevel
            Left = 0
            Top = 51
            Width = 448
            Height = 5
            Align = alBottom
            Anchors = ['akLeft', 'akTop', 'akRight']
            Shape = bsBottomLine
          end
          object Label1: TLabel
            Left = 3
            Top = 7
            Width = 98
            Height = 13
            Caption = 'Registered database'
          end
          object cbDatabases: TdxPickEdit
            Left = 3
            Top = 26
            Width = 447
            TabOrder = 0
            Anchors = ['akLeft', 'akTop', 'akRight']
            StyleController = IBEMainForm.MainSC
            OnChange = cbDatabasesChange
            DropDownRows = 20
            DropDownListStyle = True
          end
        end
        object cbServer: TdxPickEdit
          Left = 3
          Top = 76
          Width = 112
          TabOrder = 0
          StyleController = IBEMainForm.MainSC
          OnChange = cbServerChange
          DropDownListStyle = True
          Items.Strings = ['Local', 'Remote']
        end
        object cbServerName: TdxPickEdit
          Left = 136
          Top = 76
          Width = 195
          TabOrder = 1
          StyleController = IBEMainForm.MainSC
        end
        object cbProtocol: TdxPickEdit
          Left = 357
          Top = 76
          Width = 92
          TabOrder = 2
          Anchors = ['akLeft', 'akTop', 'akRight']
          StyleController = IBEMainForm.MainSC
          DropDownListStyle = True
          Items.Strings = ['TCP/IP', 'NetBEUI', 'SPX']
        end
        object eDBFile: TdxButtonEdit
          Left = 3
          Top = 122
          Width = 447
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
          OnButtonClick = eDBFileButtonClick
          ExistButtons = True
        end
        object eUserName: TdxEdit
          Left = 3
          Top = 166
          Width = 128
          TabOrder = 5
          CharCase = ecUpperCase
          StyleController = IBEMainForm.MainSC
        end
        object ePassword: TdxEdit
          Left = 156
          Top = 166
          Width = 128
          TabOrder = 6
          PasswordChar = '*'
          StyleController = IBEMainForm.MainSC
        end
        object eClientLibrary: TdxButtonEdit
          Left = 3
          Top = 209
          Width = 447
          TabOrder = 7
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
        object eRole: TdxEdit
          Left = 308
          Top = 166
          Width = 142
          TabOrder = 8
          Anchors = ['akLeft', 'akTop', 'akRight']
          PasswordChar = '*'
          StyleController = IBEMainForm.MainSC
        end
      end
      object Panel3: TPanel
        Left = 2
        Top = 240
        Width = 448
        Height = 248
        Align = alClient
        BevelOuter = bvNone
        Caption = 'Panel3'
        TabOrder = 1
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 448
          Height = 18
          Align = alTop
          Alignment = taLeftJustify
          BevelOuter = bvNone
          Caption = ' Test Results'
          Color = clBtnShadow
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clCaptionText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          ParentFont = False
          TabOrder = 0
        end
        object mDB: TdxMemo
          Tag = 1000
          Left = 0
          Top = 18
          Width = 448
          Align = alClient
          TabOrder = 1
          StyleController = IBEMainForm.MainSC
          Lines.Strings = ['']
          ScrollBars = ssBoth
          Height = 230
        end
      end
    end
    object tsTCP: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 452
      Height = 490
      Caption = 'TCP/IP'
      PageAppearance.BorderColor = 12697533
      PageAppearance.Color = clBtnFace
      PageAppearance.ColorTo = 15195349
      PageAppearance.ColorMirror = 15195349
      PageAppearance.ColorMirrorTo = 16513776
      PageAppearance.Gradient = ggVertical
      PageAppearance.GradientMirror = ggVertical
      TabAppearance.BorderColor = clNone
      TabAppearance.BorderColorHot = 12697277
      TabAppearance.BorderColorSelected = 12697533
      TabAppearance.BorderColorSelectedHot = 6277882
      TabAppearance.BorderColorDisabled = clNone
      TabAppearance.BorderColorDown = clNone
      TabAppearance.Color = clBtnFace
      TabAppearance.ColorTo = clWhite
      TabAppearance.ColorSelected = 16316660
      TabAppearance.ColorSelectedTo = 15722466
      TabAppearance.ColorDisabled = clWhite
      TabAppearance.ColorDisabledTo = clSilver
      TabAppearance.ColorHot = 13558249
      TabAppearance.ColorHotTo = 14669780
      TabAppearance.ColorMirror = clWhite
      TabAppearance.ColorMirrorTo = clWhite
      TabAppearance.ColorMirrorHot = 12966111
      TabAppearance.ColorMirrorHotTo = 9359081
      TabAppearance.ColorMirrorSelected = 15722466
      TabAppearance.ColorMirrorSelectedTo = 15722466
      TabAppearance.ColorMirrorDisabled = clWhite
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
      TabAppearance.BackGround.Color = clWhite
      TabAppearance.BackGround.ColorTo = 14537936
      TabAppearance.BackGround.Direction = gdHorizontal
      object Panel6: TPanel
        Left = 2
        Top = 2
        Width = 448
        Height = 53
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label2: TLabel
          Left = 3
          Top = 4
          Width = 22
          Height = 13
          Caption = 'Host'
        end
        object Label4: TLabel
          Left = 225
          Top = 4
          Width = 36
          Height = 13
          Caption = 'Service'
        end
        object cbTCPServer: TdxPickEdit
          Left = 3
          Top = 22
          Width = 195
          TabOrder = 0
          StyleController = IBEMainForm.MainSC
        end
        object cbTCPService: TdxPickEdit
          Left = 225
          Top = 22
          Width = 136
          TabOrder = 1
          StyleController = IBEMainForm.MainSC
          Items.Strings = ['21', 'FTP', '3050', 'gds_db', 'Ping']
        end
      end
      object Panel7: TPanel
        Left = 2
        Top = 55
        Width = 448
        Height = 433
        Align = alClient
        BevelOuter = bvNone
        Caption = 'Panel7'
        TabOrder = 1
        object Panel8: TPanel
          Left = 0
          Top = 0
          Width = 448
          Height = 18
          Align = alTop
          Alignment = taLeftJustify
          BevelOuter = bvNone
          Caption = ' Test Results'
          Color = clBtnShadow
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clCaptionText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          ParentFont = False
          TabOrder = 0
        end
        object mTCP: TdxMemo
          Tag = 1000
          Left = 0
          Top = 18
          Width = 448
          Align = alClient
          TabOrder = 1
          StyleController = IBEMainForm.MainSC
          ScrollBars = ssBoth
          Height = 415
        end
      end
    end
    object tsNetBEUI: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 452
      Height = 490
      Caption = 'NetBEUI'
      PageAppearance.BorderColor = 12697533
      PageAppearance.Color = clBtnFace
      PageAppearance.ColorTo = 15195349
      PageAppearance.ColorMirror = 15195349
      PageAppearance.ColorMirrorTo = 16513776
      PageAppearance.Gradient = ggVertical
      PageAppearance.GradientMirror = ggVertical
      TabAppearance.BorderColor = clNone
      TabAppearance.BorderColorHot = 12697277
      TabAppearance.BorderColorSelected = 12697533
      TabAppearance.BorderColorSelectedHot = 6277882
      TabAppearance.BorderColorDisabled = clNone
      TabAppearance.BorderColorDown = clNone
      TabAppearance.Color = clBtnFace
      TabAppearance.ColorTo = clWhite
      TabAppearance.ColorSelected = 16316660
      TabAppearance.ColorSelectedTo = 15722466
      TabAppearance.ColorDisabled = clWhite
      TabAppearance.ColorDisabledTo = clSilver
      TabAppearance.ColorHot = 13558249
      TabAppearance.ColorHotTo = 14669780
      TabAppearance.ColorMirror = clWhite
      TabAppearance.ColorMirrorTo = clWhite
      TabAppearance.ColorMirrorHot = 12966111
      TabAppearance.ColorMirrorHotTo = 9359081
      TabAppearance.ColorMirrorSelected = 15722466
      TabAppearance.ColorMirrorSelectedTo = 15722466
      TabAppearance.ColorMirrorDisabled = clWhite
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
      TabAppearance.BackGround.Color = clWhite
      TabAppearance.BackGround.ColorTo = 14537936
      TabAppearance.BackGround.Direction = gdHorizontal
      object Panel9: TPanel
        Left = 2
        Top = 2
        Width = 448
        Height = 53
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label5: TLabel
          Left = 3
          Top = 4
          Width = 60
          Height = 13
          Caption = 'Server name'
        end
        object cbNetBEUIServer: TdxPickEdit
          Left = 3
          Top = 22
          Width = 195
          TabOrder = 0
          StyleController = IBEMainForm.MainSC
        end
      end
      object Panel11: TPanel
        Left = 2
        Top = 55
        Width = 448
        Height = 433
        Align = alClient
        BevelOuter = bvNone
        Caption = 'Panel7'
        TabOrder = 1
        object Panel12: TPanel
          Left = 0
          Top = 0
          Width = 448
          Height = 18
          Align = alTop
          Alignment = taLeftJustify
          BevelOuter = bvNone
          Caption = ' Test Results'
          Color = clBtnShadow
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clCaptionText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          ParentFont = False
          TabOrder = 0
        end
        object mNetBEUI: TdxMemo
          Tag = 1000
          Left = 0
          Top = 18
          Width = 448
          Align = alClient
          TabOrder = 1
          StyleController = IBEMainForm.MainSC
          ScrollBars = ssBoth
          Height = 415
        end
      end
    end
    object tsSPX: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 452
      Height = 490
      Caption = 'SPX'
      PageAppearance.BorderColor = 12697533
      PageAppearance.Color = clBtnFace
      PageAppearance.ColorTo = 15195349
      PageAppearance.ColorMirror = 15195349
      PageAppearance.ColorMirrorTo = 16513776
      PageAppearance.Gradient = ggVertical
      PageAppearance.GradientMirror = ggVertical
      TabAppearance.BorderColor = clNone
      TabAppearance.BorderColorHot = 12697277
      TabAppearance.BorderColorSelected = 12697533
      TabAppearance.BorderColorSelectedHot = 6277882
      TabAppearance.BorderColorDisabled = clNone
      TabAppearance.BorderColorDown = clNone
      TabAppearance.Color = clBtnFace
      TabAppearance.ColorTo = clWhite
      TabAppearance.ColorSelected = 16316660
      TabAppearance.ColorSelectedTo = 15722466
      TabAppearance.ColorDisabled = clWhite
      TabAppearance.ColorDisabledTo = clSilver
      TabAppearance.ColorHot = 13558249
      TabAppearance.ColorHotTo = 14669780
      TabAppearance.ColorMirror = clWhite
      TabAppearance.ColorMirrorTo = clWhite
      TabAppearance.ColorMirrorHot = 12966111
      TabAppearance.ColorMirrorHotTo = 9359081
      TabAppearance.ColorMirrorSelected = 15722466
      TabAppearance.ColorMirrorSelectedTo = 15722466
      TabAppearance.ColorMirrorDisabled = clWhite
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
      TabAppearance.BackGround.Color = clWhite
      TabAppearance.BackGround.ColorTo = 14537936
      TabAppearance.BackGround.Direction = gdHorizontal
      object Panel10: TPanel
        Left = 2
        Top = 2
        Width = 448
        Height = 53
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label6: TLabel
          Left = 3
          Top = 4
          Width = 60
          Height = 13
          Caption = 'Server name'
        end
        object cbSPXServer: TdxPickEdit
          Left = 3
          Top = 22
          Width = 195
          TabOrder = 0
          StyleController = IBEMainForm.MainSC
        end
      end
      object Panel13: TPanel
        Left = 2
        Top = 55
        Width = 448
        Height = 433
        Align = alClient
        BevelOuter = bvNone
        Caption = 'Panel7'
        TabOrder = 1
        object Panel14: TPanel
          Left = 0
          Top = 0
          Width = 448
          Height = 18
          Align = alTop
          Alignment = taLeftJustify
          BevelOuter = bvNone
          Caption = ' Test Results'
          Color = clBtnShadow
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clCaptionText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          ParentFont = False
          TabOrder = 0
        end
        object mSPX: TdxMemo
          Tag = 1000
          Left = 0
          Top = 18
          Width = 448
          Align = alClient
          TabOrder = 1
          StyleController = IBEMainForm.MainSC
          ScrollBars = ssBoth
          Height = 415
        end
      end
    end
  end
  object OP: TOpenDialog
    DefaultExt = 'gdb'
    Filter = 'InterBase database (*.gdb)|*.gdb'
    Left = 340
    Top = 128
  end
  object ActionList1: TActionList
    Left = 376
    Top = 199
    object actTest: TAction
      Caption = 'Test'
      OnExecute = actTestExecute
    end
    object actCancel: TAction
      Caption = 'Cancel'
      ShortCut = 27
      OnExecute = actCancelExecute
    end
  end
  object pFIBLogService1: TpFIBLogService
    ClientLibName = 'gds32.dll'
    Left = 368
    Top = 349
  end
end
