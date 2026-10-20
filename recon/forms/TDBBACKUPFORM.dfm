object DBBackupForm: TDBBackupForm
  Left = 465
  Top = 185
  HelpContext = 8100
  AutoScroll = False
  BorderIcons = ['biSystemMenu']
  Caption = 'Database Backup'
  ClientHeight = 593
  ClientWidth = 531
  Color = clBtnFace
  Constraints.MinHeight = 545
  Constraints.MinWidth = 481
  DefaultMonitor = dmMainForm
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Pages: TIBEPageControl
    Left = 0
    Top = 0
    Width = 531
    Height = 558
    AdvOfficePagerStyler = IBEMainForm.PCStyler
    Align = alClient
    ActivePage = tsBackupFiles
    AntiAlias = aaNone
    ButtonSettings.PageListButtonHint = 'Page List'
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
    object tsBackupFiles: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 531
      Height = 533
      Caption = 'Files'
      PageAppearance.BorderColor = clNone
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
      TabAppearance.BackGround.ColorTo = 14342874
      TabAppearance.BackGround.Direction = gdHorizontal
      object FGFm: TFilesGridFrame
        Top = 46
        Width = 531
        Height = 158
        TabOrder = 1
        object Bevel1: TBevel
          Width = 531
        end
        object Grid: TdxDBGrid
          Width = 531
          Height = 125
          OnEnter = FGFmGridEnter
          Filter.Criteria = {4 bytes}
          object gcFile: TdxDBGridButtonColumn
            OnButtonClick = FGFmgcFileButtonClick
          end
          object gcUnits: TdxDBGridPickColumn
            Visible = True
          end
        end
        object Toolbar: TTBToolbar
          Width = 531
        end
        object Panel1: TPanel
          Width = 531
        end
        object Panel2: TPanel
          Width = 531
        end
        object Panel3: TPanel
          Width = 531
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 1
        Width = 531
        Height = 45
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object lDatabase: TLabel
          Left = 5
          Top = 5
          Width = 77
          Height = 13
          Caption = 'Select database'
        end
        object eDatabase: TdxButtonEdit
          Left = 3
          Top = 22
          Width = 526
          TabOrder = 0
          OnDblClick = eDatabaseDblClick
          OnKeyPress = eDatabaseKeyPress
          Anchors = ['akLeft', 'akTop', 'akRight']
          StyleController = IBEMainForm.MainSC
          Buttons = <
            item
              Default = True
              Glyph.Data = {36030000424d36030000000000003600000028000000100000001000000001001800000000000003000000000000000000000000000000000000ff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffc5d6d85e8d931258610e555e09515b044e58014c564f838abfd2d4ff00ffff00ffff00ffff00ffff00ffff00ff9db9bd6692999ab9bdb0dae074d8e54ac3d320a8ba088797025e6a004b556f999fff00ffff00ffff00ffff00ffff00ffafc7cae2f3f5f6feffe7fcffb1f5fd84e6f24dcddd20afc10a93a6026c7b004b55ff00ffff00ffbfd4c84f8a6700552300552300552300552300552346836193b5aa90b0b54f838a1d717d067483004b55ff00ff6f9f831b673a689e7ea2d3b661df9428ce6a0bb14d008c3800642800552356937881c1ca367f890d545e014c56ff00ff0055239ee0b8d9ffe8d7ffe76bffa628ee760bce5800ac44008c37006529005523a1dde548afbc117583024c56ff00ff005523a4edc197c2a860957644825e286f450b5c2c005523006529006428005523adc5c84e9099147c8a024c56ff00ff00552398baa798bea7a8d7bb61df9428ce6a0bb14d008c38006428005523005523afdadf50949d145962024c56ff00ff005523a8e6c1d9ffe8d7ffe76bffa628ee760bce5800ac44008c37006529005523afe6ed50c9d81493a3024c56ff00ff005523a4edc197c2a860957644825e286f450b5c2c005523006529006428005523afe6ed50c9d81493a3024c56ff00ff00552398baa77cb79460c18844c07728b6630bad4e009b4000712e005523005523afdadf50949d145962709a9fff00ff00552398d8b27ce1a660db9344b171289f590b994600c65200c652009b40005523b2c8cb85a9adc4d5d7ff00ffff00ff0055238ed1aa7ce1a660db9344b171289f590b994600c65200c652009b40005523ff00ffff00ffff00ffff00ffff00ff6f9f831b673a4c976b59bd8244c07728b6630bad4e009b4000712e0055236f9f83ff00ffff00ffff00ffff00ffff00ffff00ffbfd4c84f8a670055230055230055230055230f5f304f8a67bfd4c8ff00ffff00ffff00ffff00ffff00ffff00ff}
              Kind = bkGlyph
              Width = 21
            end
          >
          OnButtonClick = eDatabaseButtonClick
          ExistButtons = True
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 208
        Width = 531
        Height = 325
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 2
        object pOptions: TPanel
          Left = 0
          Top = 0
          Width = 531
          Height = 18
          Align = alTop
          Alignment = taLeftJustify
          BevelOuter = bvNone
          Caption = ' Options'
          Color = clBtnShadow
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clCaptionText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          ParentFont = False
          TabOrder = 0
        end
        object gbGeneral: TGroupBox
          Left = 2
          Top = 20
          Width = 527
          Height = 221
          Anchors = ['akLeft', 'akTop', 'akRight']
          Caption = ' General '
          TabOrder = 1
          object lFormat: TLabel
            Left = 13
            Top = 192
            Width = 32
            Height = 13
            Caption = '&Format'
            FocusControl = cbFormat
          end
          object cbIgnoreCheckSum: TdxCheckEdit
            Left = 12
            Top = 18
            Width = 349
            TabOrder = 0
            Caption = 'Ignore check sum'
            StyleController = IBEMainForm.MainCheckSC
          end
          object cbIgnoreLimbo: TdxCheckEdit
            Left = 12
            Top = 39
            Width = 349
            TabOrder = 1
            Caption = 'Ignore transaction in &Limbo'
            StyleController = IBEMainForm.MainCheckSC
          end
          object cbMetadataOnly: TdxCheckEdit
            Left = 12
            Top = 61
            Width = 349
            TabOrder = 2
            Caption = 'Backup &Metadata only'
            StyleController = IBEMainForm.MainCheckSC
          end
          object cbGarbage: TdxCheckEdit
            Left = 12
            Top = 84
            Width = 349
            TabOrder = 3
            Caption = '&Garbage collection'
            StyleController = IBEMainForm.MainCheckSC
            State = cbsChecked
          end
          object cbOldMetaDescription: TdxCheckEdit
            Left = 12
            Top = 108
            Width = 349
            TabOrder = 4
            Caption = '&Old metadata description'
            StyleController = IBEMainForm.MainCheckSC
          end
          object cbConvertToTables: TdxCheckEdit
            Left = 12
            Top = 132
            Width = 349
            TabOrder = 5
            Caption = 'Convert to &Tables'
            StyleController = IBEMainForm.MainCheckSC
          end
          object cbFormat: TdxPickEdit
            Left = 63
            Top = 189
            Width = 145
            TabOrder = 6
            StyleController = IBEMainForm.MainSC
            Text = 'Transportable'
            DropDownListStyle = True
            Items.Strings = ['Transportable', 'Non-Transportable']
          end
          object cbNoDbTriggers: TdxCheckEdit
            Left = 12
            Top = 156
            Width = 349
            TabOrder = 7
            Caption = 'Prevent database/transaction triggers from firing'
            StyleController = IBEMainForm.MainCheckSC
          end
        end
        object gbOutput: TGroupBox
          Left = 2
          Top = 244
          Width = 527
          Height = 75
          Anchors = ['akLeft', 'akTop', 'akRight']
          Caption = ' Output '
          TabOrder = 2
          object cbVerbose: TdxCheckEdit
            Left = 12
            Top = 16
            Width = 81
            TabOrder = 0
            OnClick = cbVerboseChange
            Caption = '&Verbose'
            StyleController = IBEMainForm.MainCheckSC
            State = cbsChecked
          end
          object cbVerboseOutput: TdxPickEdit
            Left = 97
            Top = 16
            Width = 111
            TabOrder = 1
            StyleController = IBEMainForm.MainSC
            Text = 'To Screen'
            OnChange = cbVerboseOutputChange
            DropDownListStyle = True
            Items.Strings = ['To Screen', 'To File']
          end
          object feVerboseFile: TdxButtonEdit
            Left = 11
            Top = 45
            Width = 508
            TabOrder = 2
            Visible = False
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
            OnButtonClick = feVerboseFileButtonClick
            ExistButtons = True
          end
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 204
        Width = 531
        Height = 4
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 3
      end
    end
    object tsOutput: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 531
      Height = 533
      Caption = 'Output'
      ImageIndex = 2
      PageAppearance.BorderColor = clNone
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
      TabAppearance.BackGround.ColorTo = 14342874
      TabAppearance.BackGround.Direction = gdHorizontal
      object OutputFm: TEditFrame
        Top = 1
        Width = 531
        Height = 532
        object EditM: TSQLMemo
          Width = 531
          Height = 514
        end
        object pIncSearch: TPanel
          Top = 514
          Width = 531
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 558
    Width = 531
    Height = 35
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object Bevel3: TBevel
      Left = 0
      Top = 0
      Width = 531
      Height = 9
      Align = alTop
      Shape = bsTopLine
    end
    object bBackup: TButton
      Left = 352
      Top = 6
      Width = 92
      Height = 25
      Action = actBackup
      Anchors = ['akTop', 'akRight']
      TabOrder = 0
    end
    object bCancel: TButton
      Left = 453
      Top = 6
      Width = 75
      Height = 25
      Anchors = ['akTop', 'akRight']
      Caption = 'Close'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object ActionList1: TActionList
    Images = IBEMainForm.MenuImages
    OnUpdate = ActionList1Update
    Left = 216
    Top = 79
    object actBackup: TAction
      Caption = '&Backup'
      ImageIndex = 56
      OnExecute = actBackupExecute
    end
    object actLocalize: TAction
      Caption = 'Localize'
      ShortCut = 57420
      OnExecute = actLocalizeExecute
    end
    object actExit: TAction
      Caption = 'Exit'
      ShortCut = 27
      OnExecute = actExitExecute
    end
    object actSearch: TAction
      Caption = 'Search'
      ShortCut = 16454
      OnExecute = actSearchExecute
      OnUpdate = actSearchUpdate
    end
    object actSearchAgain: TAction
      Caption = 'actSearchAgain'
      ShortCut = 114
      OnExecute = actSearchAgainExecute
      OnUpdate = actSearchAgainUpdate
    end
  end
  object BackupService: TpFIBBackupService
    ClientLibName = 'gds32.dll'
    LoginPrompt = False
    Verbose = True
    OnTextNotify = BackupServiceTextNotify
    BlockingFactor = 0
    Options = []
    Left = 211
    Top = 185
  end
  object SD: TSaveDialog
    DefaultExt = 'txt'
    Filter = 'Text files (*.txt)|*.txt|All files (*.*)|*.*'
    Left = 44
    Top = 202
  end
end
