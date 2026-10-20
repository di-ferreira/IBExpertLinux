object DBRestoreForm: TDBRestoreForm
  Left = 508
  Top = 170
  HelpContext = 8300
  AutoScroll = False
  BorderIcons = ['biSystemMenu']
  Caption = 'Database Restore'
  ClientHeight = 629
  ClientWidth = 592
  Color = clBtnFace
  Constraints.MinHeight = 544
  Constraints.MinWidth = 600
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
    Width = 592
    Height = 594
    AdvOfficePagerStyler = IBEMainForm.PCStyler
    Align = alClient
    ActivePage = tsRestFiles
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
    object tsRestFiles: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 592
      Height = 569
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
      object Panel2: TPanel
        Left = 0
        Top = 1
        Width = 592
        Height = 568
        Align = alClient
        BevelOuter = bvNone
        Caption = 'Panel2'
        TabOrder = 0
        object FGFm: TFilesGridFrame
          Top = 57
          Width = 592
          Height = 142
          TabOrder = 1
          object Bevel1: TBevel
            Width = 592
          end
          object Grid: TdxDBGrid
            Width = 592
            Height = 109
            OnEnter = FGFmGridEnter
            Filter.Criteria = {4 bytes}
          end
          object Toolbar: TTBToolbar
            Width = 592
          end
          object Panel1: TPanel
            Width = 592
          end
          object Panel2: TPanel
            Width = 592
          end
          object Panel3: TPanel
            Width = 592
          end
        end
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 592
          Height = 57
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Pages2: TIBEPageControl
            Left = 200
            Top = 0
            Width = 392
            Height = 57
            AdvOfficePagerStyler = IBEMainForm.NoGradientStyler
            Align = alClient
            ActivePage = dxTabSheet1
            AntiAlias = aaNone
            ButtonSettings.PageListButtonHint = 'Page List'
            Glow = False
            PageMargin = 0
            TabSettings.LeftMargin = 2
            TabSettings.RightMargin = 2
            TabSettings.Height = 0
            TabSettings.Spacing = 2
            TabSettings.Shape = tsRightRamp
            TabSettings.Rounding = 3
            ShowShortCutHints = False
            OnEnter = Pages2Enter
            TabOrder = 1
            TabStop = True
            NextPictureChanged = True
            PrevPictureChanged = True
            object dxTabSheet1: TAdvOfficePage
              Left = 0
              Top = 0
              Width = 392
              Height = 56
              Caption = 'dxTabSheet1'
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
              object lDatabase: TLabel
                Left = 8
                Top = 6
                Width = 77
                Height = 13
                Caption = 'Select database'
              end
              object Panel7: TPanel
                Left = 0
                Top = 0
                Width = 392
                Height = 3
                Align = alTop
                BevelOuter = bvNone
                TabOrder = 0
              end
              object eDatabase: TdxButtonEdit
                Left = 7
                Top = 25
                Width = 377
                TabOrder = 1
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
            object dxTabSheet2: TAdvOfficePage
              Left = 0
              Top = 0
              Width = 392
              Height = 56
              Caption = 'dxTabSheet2'
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
              object lDatabaseFile: TLabel
                Left = 8
                Top = 6
                Width = 347
                Height = 13
                AutoSize = False
                Caption = 'Database File'
              end
              object FileNameE: TdxButtonEdit
                Left = 7
                Top = 25
                Width = 353
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
                OnButtonClick = FileNameEButtonClick
                ExistButtons = True
              end
            end
          end
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 200
            Height = 57
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object lRestoreInto: TLabel
              Left = 5
              Top = 6
              Width = 60
              Height = 13
              Caption = 'Restore into '
            end
            object cbRestoreInto: TdxPickEdit
              Left = 4
              Top = 25
              Width = 189
              TabOrder = 0
              StyleController = IBEMainForm.MainSC
              Text = 'cbRestoreInto'
              OnChange = cbRestoreIntoChange
              DropDownListStyle = True
              Items.Strings = ['Existing database', 'New database']
            end
          end
        end
        object Panel5: TPanel
          Left = 0
          Top = 203
          Width = 592
          Height = 365
          Align = alBottom
          BevelOuter = bvNone
          Caption = 'Panel5'
          TabOrder = 2
          object pOptions: TPanel
            Left = 0
            Top = 0
            Width = 592
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
          object gbGeneralOptions: TGroupBox
            Left = 4
            Top = 20
            Width = 584
            Height = 258
            Anchors = ['akLeft', 'akTop', 'akRight']
            Caption = ' General '
            TabOrder = 1
            object lPageSize: TLabel
              Left = 341
              Top = 77
              Width = 49
              Height = 13
              Caption = 'Page size:'
              FocusControl = cbPageSize
            end
            object lClientLibName: TLabel
              Left = 13
              Top = 209
              Width = 79
              Height = 13
              Caption = 'Client Library File'
            end
            object cbDeactivateIndexes: TdxCheckEdit
              Left = 10
              Top = 20
              Width = 330
              TabOrder = 0
              Caption = 'Deactivate indexes'
              StyleController = IBEMainForm.MainCheckSC
            end
            object cbNoShadow: TdxCheckEdit
              Left = 10
              Top = 41
              Width = 330
              TabOrder = 1
              Caption = 'Don''t recreate shadow files'
              StyleController = IBEMainForm.MainCheckSC
            end
            object cbNoValidity: TdxCheckEdit
              Left = 10
              Top = 62
              Width = 325
              TabOrder = 2
              Caption = 'Don''t enforce validity conditions'
              StyleController = IBEMainForm.MainCheckSC
            end
            object cbCommitAfterTable: TdxCheckEdit
              Left = 10
              Top = 84
              Width = 328
              TabOrder = 3
              Caption = 'Commit after each table'
              StyleController = IBEMainForm.MainCheckSC
              State = cbsChecked
            end
            object cbReplaceExisting: TdxCheckEdit
              Left = 10
              Top = 106
              Width = 328
              TabOrder = 4
              Caption = 'Replace existing database'
              StyleController = IBEMainForm.MainCheckSC
              OnChange = cbReplaceExistingChange
            end
            object cbUseAllSpace: TdxCheckEdit
              Left = 336
              Top = 19
              Width = 245
              TabOrder = 5
              Anchors = ['akLeft', 'akTop', 'akRight']
              Caption = 'Use all space'
              StyleController = IBEMainForm.MainCheckSC
            end
            object cbPageSize: TdxPickEdit
              Left = 394
              Top = 73
              Width = 87
              TabOrder = 6
              StyleController = IBEMainForm.MainSC
              Items.Strings = ['Default', '1024', '2048', '4096', '8192', '16384']
            end
            object cbMetadataOnly: TdxCheckEdit
              Left = 336
              Top = 41
              Width = 245
              TabOrder = 7
              Anchors = ['akLeft', 'akTop', 'akRight']
              Caption = 'Metadata Only'
              StyleController = IBEMainForm.MainCheckSC
            end
            object eClientLibrary: TdxButtonEdit
              Left = 12
              Top = 227
              Width = 560
              TabOrder = 8
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
              OnButtonClick = eClientLibraryButtonClick
              ExistButtons = True
            end
            object cbFixFSSData: TdxCheckEdit
              Left = 10
              Top = 156
              Width = 279
              TabOrder = 9
              Caption = 'Fix malformed UNICODE_FSS data using charset'
              StyleController = IBEMainForm.MainCheckSC
              OnChange = cbReplaceExistingChange
            end
            object cbFixFSSMetadata: TdxCheckEdit
              Left = 10
              Top = 183
              Width = 565
              TabOrder = 10
              Caption = 'Fix malformed UNICODE_FSS metadata using charset'
              StyleController = IBEMainForm.MainCheckSC
              OnChange = cbReplaceExistingChange
            end
            object eFixDataCharset: TdxEdit
              Left = 256
              Top = 156
              Width = 95
              TabOrder = 11
              StyleController = IBEMainForm.MainSC
            end
            object eFixMetadataCharset: TdxEdit
              Left = 277
              Top = 184
              Width = 95
              TabOrder = 12
              StyleController = IBEMainForm.MainSC
            end
            object cbNoDbTriggers: TdxCheckEdit
              Left = 10
              Top = 130
              Width = 349
              TabOrder = 13
              Caption = 'Prevent database/transaction triggers from firing'
              StyleController = IBEMainForm.MainCheckSC
            end
          end
          object gbOutputOptions: TGroupBox
            Left = 4
            Top = 281
            Width = 584
            Height = 76
            Anchors = ['akLeft', 'akTop', 'akRight']
            Caption = ' Output '
            TabOrder = 2
            object cbVerbose: TdxCheckEdit
              Left = 9
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
              OnChange = cbVerboseOutputChange
              Items.Strings = ['To Screen', 'To File']
            end
            object feVerboseFile: TdxButtonEdit
              Left = 12
              Top = 45
              Width = 560
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
        object Panel6: TPanel
          Left = 0
          Top = 199
          Width = 592
          Height = 4
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 3
        end
      end
    end
    object tsOutput: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 592
      Height = 569
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
        Width = 592
        Height = 568
        object EditM: TSQLMemo
          Width = 592
          Height = 550
        end
        object pIncSearch: TPanel
          Top = 550
          Width = 592
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 594
    Width = 592
    Height = 35
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object Bevel3: TBevel
      Left = 0
      Top = 0
      Width = 592
      Height = 9
      Align = alTop
      Shape = bsTopLine
    end
    object cbRegisterDB: TdxCheckEdit
      Left = 5
      Top = 8
      Width = 372
      TabOrder = 2
      Visible = False
      Anchors = ['akLeft', 'akTop', 'akRight']
      Caption = 'Register database after restore'
      StyleController = IBEMainForm.MainCheckSC
    end
    object bRestore: TButton
      Left = 384
      Top = 7
      Width = 121
      Height = 25
      Action = aRestore
      Anchors = ['akTop', 'akRight']
      TabOrder = 0
    end
    object bCancel: TButton
      Left = 514
      Top = 7
      Width = 75
      Height = 25
      Anchors = ['akTop', 'akRight']
      Caption = 'Close'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object RestoreActions: TActionList
    Images = IBEMainForm.MenuImages
    Left = 443
    Top = 103
    object aRestore: TAction
      Caption = 'Start Restore'
      ImageIndex = 56
      OnExecute = aRestoreExecute
    end
    object actLocalize: TAction
      Caption = 'Localize'
      ShortCut = 57420
      OnExecute = actLocalizeExecute
    end
    object actSearch: TAction
      Caption = 'actSearch'
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
  object RestoreService: TpFIBRestoreService
    ClientLibName = 'gds32.dll'
    LoginPrompt = False
    OnTextNotify = RestoreServiceTextNotify
    PageSize = 0
    PageBuffers = 0
    Left = 443
    Top = 141
  end
  object SD: TSaveDialog
    DefaultExt = 'gdb'
    Filter = 'IB Database File (*.gdb)|*.gdb|All files (*.*)|*.*'
    Left = 156
    Top = 210
  end
  object OP: TOpenDialog
    DefaultExt = 'gdb'
    Filter = 'InterBase database (*.gdb)|*.gdb'
    Left = 188
    Top = 208
  end
end
