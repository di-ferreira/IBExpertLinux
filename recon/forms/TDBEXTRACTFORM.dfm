object DBExtractForm: TDBExtractForm
  Left = 421
  Top = 203
  HelpContext = 8400
  AutoScroll = False
  Caption = 'DBExtractForm'
  ClientHeight = 633
  ClientWidth = 823
  Color = clBtnFace
  Constraints.MinHeight = 400
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  OnActivate = FormActivate
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object FileP: TPanel
    Left = 0
    Top = 26
    Width = 823
    Height = 47
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object lFileName: TLabel
      Left = 7
      Top = 3
      Width = 328
      Height = 13
      AutoSize = False
      Caption = 'File Name'
    end
    object FileNameE: TdxButtonEdit
      Left = 6
      Top = 20
      Width = 812
      TabOrder = 0
      OnExit = FileNameEExit
      OnKeyPress = FileNameEKeyPress
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
  object Pages: TIBEPageControl
    Left = 0
    Top = 73
    Width = 823
    Height = 560
    AdvOfficePagerStyler = IBEMainForm.PCStyler
    Align = alClient
    ActivePage = tsOptions
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
    object tsMetaObjects: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 823
      Height = 535
      HelpContext = 241
      Caption = 'Meta Objects'
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
        Left = 2
        Top = 2
        Width = 819
        Height = 29
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object TBToolbar1: TTBToolbar
          Left = 0
          Top = 4
          Width = 819
          Height = 21
          Align = alTop
          Caption = 'TBToolbar1'
          DragHandleStyle = dhNone
          Images = IBEMainForm.ImageList
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          object : TTBControlItem
            Control = SelAllC
          end
          object TBSeparatorItem1: TTBSeparatorItem
          end
          object TBItem1: TTBItem
            Action = actAddRelated
          end
          object SelAllC: TdxCheckEdit
            Left = 0
            Top = 0
            Width = 273
            TabOrder = 0
            OnClick = SelAllCChange
            Caption = 'Extract &all'
            StyleController = IBEMainForm.MainCheckSC
            OnChange = SelAllCChange
          end
        end
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 819
          Height = 4
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
        end
      end
      object SelFm: TSelectObjectsTreeFrame
        Left = 2
        Top = 31
        Width = 819
        Height = 502
        TabOrder = 1
        object Panel4: TPanel
          Width = 819
          Height = 502
          object ATL: TdxTreeList
            Height = 502
          end
          object pButtons: TPanel
            Height = 502
            object Panel5: TPanel
              Height = 502
            end
            object TBDock1: TTBDock
              Height = 502
            end
          end
          object Panel1: TPanel
            Width = 526
            Height = 502
            object ITL: TdxTreeList
              Width = 526
              Height = 394
            end
            object pPrintOptions: TPanel
              Top = 394
              Width = 526
              object Panel2: TPanel
                Width = 524
              end
            end
          end
        end
      end
    end
    object tsDataTables: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 823
      Height = 535
      HelpContext = 242
      Caption = 'Data Tables'
      ImageIndex = 1
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
      object WhereSplitter: TdfsSplitter
        Left = 2
        Top = 337
        Width = 819
        Height = 10
        Cursor = crVSplit
        Align = alBottom
        Maximized = False
        Minimized = False
        ButtonCursor = crDefault
      end
      object DataSelectFm: TSelectObjectsFrame
        Left = 2
        Top = 2
        Width = 819
        Height = 335
        Align = alClient
        object pButtons: TPanel
          Height = 335
          object TBDock1: TTBDock
            Height = 335
          end
          object Panel2: TPanel
            Height = 335
          end
        end
        object tlAvailable: TdxTreeList
          Height = 335
        end
        object tlSelected: TdxTreeList
          Left = 675
          Height = 335
          OnDragDrop = DataSelectFmtlSelectedDragDrop
          OnDragOver = DataSelectFmtlSelectedDragOver
          OnEnter = DataSelectFmtlSelectedEnter
          OnChangeNode = DataSelectFmtlSelectedChangeNode
        end
      end
      object pWhere: TPanel
        Left = 2
        Top = 347
        Width = 819
        Height = 186
        Align = alBottom
        BevelOuter = bvNone
        Caption = 'pWhere'
        TabOrder = 1
        object pWhereCap: TPanel
          Left = 0
          Top = 0
          Width = 819
          Height = 18
          Align = alTop
          Alignment = taLeftJustify
          BevelOuter = bvNone
          Caption = ' Where Clause'
          Color = clBtnShadow
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clCaptionText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          ParentFont = False
          TabOrder = 0
        end
        object WhereFm: TEditFrame
          Top = 18
          Width = 819
          Height = 168
          TabOrder = 1
          object EditM: TSQLMemo
            Width = 819
            Height = 150
            OnExit = WhereFmEditMExit
          end
          object pIncSearch: TPanel
            Top = 150
            Width = 819
          end
        end
      end
    end
    object tsOptions: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 823
      Height = 535
      HelpContext = 244
      Caption = 'Options'
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
      object ScrollBox1: TScrollBox
        Left = 2
        Top = 2
        Width = 819
        Height = 531
        VertScrollBar.Smooth = True
        VertScrollBar.Tracking = True
        Align = alClient
        BorderStyle = bsNone
        TabOrder = 0
        object ScrollBox2: TScrollBox
          Left = 0
          Top = 0
          Width = 819
          Height = 531
          Align = alClient
          TabOrder = 0
          object gbGeneralOptions: TGroupBox
            Left = 7
            Top = 4
            Width = 438
            Height = 120
            Anchors = ['akLeft', 'akTop', 'akRight']
            Caption = ' General Options  '
            TabOrder = 0
            object lMaxFileSize: TLabel
              Left = 12
              Top = 90
              Width = 130
              Height = 13
              Caption = 'Limit file size to (megabytes)'
              FocusControl = seMaxFileSize
            end
            object cbGenerateCreate: TdxCheckEdit
              Left = 8
              Top = 16
              Width = 376
              TabOrder = 0
              Anchors = ['akLeft', 'akTop', 'akRight']
              Caption = 'Generate ''&CREATE DATABASE'' statement'
              StyleController = IBEMainForm.MainCheckSC
              OnChange = cbGenerateCreateChange
              State = cbsChecked
            end
            object AddPassC: TdxCheckEdit
              Left = 8
              Top = 59
              Width = 376
              TabOrder = 1
              Anchors = ['akLeft', 'akTop', 'akRight']
              Caption = 'Include &Password in ''CONNECT'' and ''CREATE DATABASE'' statements'
              StyleController = IBEMainForm.MainCheckSC
              State = cbsChecked
            end
            object cbGenerateConnect: TdxCheckEdit
              Left = 8
              Top = 37
              Width = 376
              TabOrder = 2
              Anchors = ['akLeft', 'akTop', 'akRight']
              Caption = 'Generate ''CONNECT'' statement'
              StyleController = IBEMainForm.MainCheckSC
              OnChange = cbGenerateConnectChange
            end
            object seMaxFileSize: TdxSpinEdit
              Left = 154
              Top = 88
              Width = 56
              TabOrder = 3
              StyleController = IBEMainForm.MainSC
              MaxValue = 2000
              StoredValues = 16
            end
          end
          object gbMetadataOptions: TGroupBox
            Left = 7
            Top = 128
            Width = 438
            Height = 356
            Anchors = ['akLeft', 'akTop', 'akRight']
            Caption = ' Metadata Options  '
            TabOrder = 1
            object SetGenC: TdxCheckEdit
              Left = 8
              Top = 19
              Width = 377
              TabOrder = 0
              Anchors = ['akLeft', 'akTop', 'akRight']
              Caption = 'Set &Generators'
              StyleController = IBEMainForm.MainCheckSC
              State = cbsChecked
            end
            object IncDescC: TdxCheckEdit
              Left = 8
              Top = 41
              Width = 377
              TabOrder = 1
              Anchors = ['akLeft', 'akTop', 'akRight']
              Caption = '&Include Objects Descriptions'
              StyleController = IBEMainForm.MainCheckSC
              OnChange = IncDescCChange
              State = cbsChecked
            end
            object cbExtractComputedBy: TdxCheckEdit
              Left = 8
              Top = 110
              Width = 369
              TabOrder = 2
              Anchors = ['akLeft', 'akTop', 'akRight']
              Caption = 'Extract COMPUTED BY fields separately'
              StyleController = IBEMainForm.MainCheckSC
            end
            object cbAlwaysIncludeCharset: TdxCheckEdit
              Left = 8
              Top = 132
              Width = 417
              TabOrder = 3
              Anchors = ['akLeft', 'akTop', 'akRight']
              Caption = 'Always include CHARACTER SET for domains/fields/parameters'
              StyleController = IBEMainForm.MainCheckSC
            end
            object cbExcludeIBE: TdxCheckEdit
              Left = 8
              Top = 179
              Width = 369
              Enabled = False
              TabOrder = 4
              Anchors = ['akLeft', 'akTop', 'akRight']
              Caption = 'Exclude IBExpert (IBE$*) objects '
              StyleController = IBEMainForm.MainCheckSC
            end
            object cbExcludeTMP: TdxCheckEdit
              Left = 8
              Top = 202
              Width = 369
              Enabled = False
              TabOrder = 5
              Anchors = ['akLeft', 'akTop', 'akRight']
              Caption = 'Exclude TMP$* objects (InterBase 7.x)'
              StyleController = IBEMainForm.MainCheckSC
            end
            object cbDecodeDomains: TdxCheckEdit
              Left = 8
              Top = 225
              Width = 377
              TabOrder = 6
              Anchors = ['akLeft', 'akTop', 'akRight']
              Caption = 'Decode domains'
              StyleController = IBEMainForm.MainCheckSC
            end
            object cbDescAsUpdate: TdxCheckEdit
              Left = 24
              Top = 65
              Width = 401
              TabOrder = 7
              Anchors = ['akLeft', 'akTop', 'akRight']
              Caption = 'Use UPDATE instead of DESCRIBE'
              StyleController = IBEMainForm.MainCheckSC
              OnChange = cbDescAsUpdateChange
            end
            object cbUseCommentStmt: TdxCheckEdit
              Left = 24
              Top = 87
              Width = 401
              TabOrder = 8
              Anchors = ['akLeft', 'akTop', 'akRight']
              Caption = 'Use COMMENT statement (Firebird 2)'
              StyleController = IBEMainForm.MainCheckSC
              OnChange = cbUseCommentStmtChange
            end
            object cbUseCreateOrAlter: TdxCheckEdit
              Left = 8
              Top = 249
              Width = 377
              TabOrder = 9
              Anchors = ['akLeft', 'akTop', 'akRight']
              Caption = 'Use CREATE OR ALTER for procedures and triggers'
              StyleController = IBEMainForm.MainCheckSC
            end
            object cbDontUseSetTerm: TdxCheckEdit
              Left = 8
              Top = 273
              Width = 377
              TabOrder = 10
              Anchors = ['akLeft', 'akTop', 'akRight']
              Caption = 'Do not use SET TERM command'
              StyleController = IBEMainForm.MainCheckSC
            end
            object cbUseSequence: TdxCheckEdit
              Left = 8
              Top = 297
              Width = 377
              TabOrder = 11
              Anchors = ['akLeft', 'akTop', 'akRight']
              Caption = 'Use SEQUENCE instead of GENERATOR'
              StyleController = IBEMainForm.MainCheckSC
            end
            object cbAlwaysQuoteIdents: TdxCheckEdit
              Left = 8
              Top = 321
              Width = 377
              TabOrder = 12
              Anchors = ['akLeft', 'akTop', 'akRight']
              Caption = 'Always quote identifiers'
              StyleController = IBEMainForm.MainCheckSC
            end
            object cbAlwaysIncludeCollate: TdxCheckEdit
              Left = 8
              Top = 155
              Width = 425
              TabOrder = 13
              Anchors = ['akLeft', 'akTop', 'akRight']
              Caption = 'Always include COLLATE for domains/fields/parameters'
              StyleController = IBEMainForm.MainCheckSC
            end
          end
          object gbDataOptions: TGroupBox
            Left = 7
            Top = 493
            Width = 438
            Height = 202
            Anchors = ['akLeft', 'akTop', 'akRight']
            Caption = ' Data Options  '
            TabOrder = 2
            object lCommit: TLabel
              Left = 13
              Top = 173
              Width = 137
              Height = 13
              Caption = 'Insert ''COMMIT WORK'' after'
              FocusControl = seCommit
            end
            object lDateFormat: TLabel
              Left = 13
              Top = 20
              Width = 58
              Height = 13
              Caption = 'Date Format'
            end
            object lDateTimeFormat: TLabel
              Left = 167
              Top = 20
              Width = 81
              Height = 13
              Caption = 'DateTime Format'
            end
            object Bevel2: TBevel
              Left = 12
              Top = 87
              Width = 417
              Height = 5
              Anchors = ['akLeft', 'akTop', 'akRight']
              Shape = bsBottomLine
            end
            object seCommit: TdxSpinEdit
              Left = 156
              Top = 170
              Width = 56
              TabOrder = 3
              StyleController = IBEMainForm.MainSC
              Value = 500
            end
            object cbExtractBlobs: TdxCheckEdit
              Left = 9
              Top = 120
              Width = 422
              TabOrder = 4
              OnClick = cbPrivilegesClick
              Anchors = ['akLeft', 'akTop', 'akRight']
              Caption = 'Extract BLOBs'
              StyleController = IBEMainForm.MainCheckSC
            end
            object eDateFormat: TdxEdit
              Left = 13
              Top = 38
              Width = 142
              TabOrder = 0
              StyleController = IBEMainForm.MainSC
            end
            object eDateTimeFormat: TdxEdit
              Left = 167
              Top = 38
              Width = 142
              TabOrder = 1
              StyleController = IBEMainForm.MainSC
            end
            object bSetAsDefault: TButton
              Left = 320
              Top = 37
              Width = 105
              Height = 22
              Action = actSetAsDefault
              TabOrder = 2
            end
            object cbUseReinsert: TdxCheckEdit
              Left = 9
              Top = 142
              Width = 422
              TabOrder = 5
              OnClick = cbPrivilegesClick
              Anchors = ['akLeft', 'akTop', 'akRight']
              Caption = 'Use REINSERT instead of repeated INSERTs'
              StyleController = IBEMainForm.MainCheckSC
            end
            object cbANSIPrefix: TdxCheckEdit
              Left = 9
              Top = 64
              Width = 422
              TabOrder = 6
              OnClick = cbPrivilegesClick
              Anchors = ['akLeft', 'akTop', 'akRight']
              Caption = 'Use ANSI prefix for date/time values'
              StyleController = IBEMainForm.MainCheckSC
            end
            object cbTrimTrailings: TdxCheckEdit
              Left = 9
              Top = 97
              Width = 422
              TabOrder = 7
              OnClick = cbPrivilegesClick
              Anchors = ['akLeft', 'akTop', 'akRight']
              Caption = 'Remove trailing spaces and control characters from string values'
              StyleController = IBEMainForm.MainCheckSC
            end
          end
          object gbPrivileges: TGroupBox
            Left = 7
            Top = 699
            Width = 438
            Height = 68
            Anchors = ['akLeft', 'akTop', 'akRight']
            Caption = ' Privileges  '
            TabOrder = 3
            object cbPrivileges: TdxCheckEdit
              Left = 8
              Top = 18
              Width = 375
              TabOrder = 0
              OnClick = cbPrivilegesClick
              Anchors = ['akLeft', 'akTop', 'akRight']
              Caption = 'Extract Privileges'
              StyleController = IBEMainForm.MainCheckSC
            end
            object cbOnlySelectedPrivileges: TdxCheckEdit
              Left = 24
              Top = 41
              Width = 359
              Enabled = False
              TabOrder = 1
              Anchors = ['akLeft', 'akTop', 'akRight']
              Caption = 'Only for selected objects'
              StyleController = IBEMainForm.MainCheckSC
            end
          end
        end
      end
    end
    object tsOutput: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 823
      Height = 535
      Caption = 'Output'
      ImageIndex = 3
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
        Left = 2
        Top = 2
        Width = 819
        Height = 531
        object EditM: TSQLMemo
          Width = 819
          Height = 513
        end
        object pIncSearch: TPanel
          Top = 513
          Width = 819
        end
      end
    end
    object tsBlock: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 823
      Height = 535
      Caption = 'Extract Metadata IBEBlock'
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
      object BlockM: TEditFrame
        Left = 2
        Top = 2
        Width = 819
        Height = 531
        object EditM: TSQLMemo
          Width = 819
          Height = 513
        end
        object pIncSearch: TPanel
          Top = 513
          Width = 819
        end
      end
    end
  end
  object ExtractActions: TActionList
    Images = IBEMainForm.ImageList
    OnUpdate = ExtractActionsUpdate
    Left = 355
    Top = 124
    object actExtract: TAction
      Caption = 'Start Extract'
      ImageIndex = 59
      ShortCut = 120
      OnExecute = actExtractExecute
    end
    object actLocalize: TAction
      Caption = 'Localize'
      ShortCut = 57420
      OnExecute = actLocalizeExecute
    end
    object actExit: TAction
      Caption = 'Exit'
      ShortCut = 27
    end
    object actLoadConfig: TAction
      Caption = 'Load configuration'
      Hint = 'Load configuration'
      ImageIndex = 69
      ShortCut = 16460
      OnExecute = actLoadConfigExecute
    end
    object actSaveConfig: TAction
      Caption = 'Save configuration'
      Hint = 'Save configuration'
      ImageIndex = 70
      ShortCut = 16467
      OnExecute = actSaveConfigExecute
    end
    object actToggleExtractType: TAction
      Caption = 'Extract to'
      ShortCut = 24660
      OnExecute = actToggleExtractTypeExecute
    end
    object actSetAsDefault: TAction
      Caption = 'Set as Default'
      OnExecute = actSetAsDefaultExecute
      OnUpdate = actSetAsDefaultUpdate
    end
    object actStopExtract: TAction
      Caption = 'Stop Extract'
      Hint = 'Stop Extract'
      ImageIndex = 83
      OnExecute = actStopExtractExecute
    end
    object actAddRelated: TAction
      Caption = 'Add related objects'
      Hint = 'Add related objects'
      OnExecute = actAddRelatedExecute
      OnUpdate = actAddRelatedUpdate
    end
  end
  object EM: TpFIBExtract
    Options = ['eopExtractDescriptions', 'eopExtractIndices', 'eopExtractReferences', 'eopExtractChecks', 'eopExtractData', 'eopSetGenerators', 'eopCreateDatabase']
    CommitAfter = 500
    ReplaceTabs = True
    TabWidth = 2
    ExtractBlobs = True
    DateFormat = 'YYYY-MM-DD'
    DateTimeFormat = 'YYYY-MM-DD HH:NN:SS'
    OnBeforeExtractObjects = EMBeforeExtractObjects
    OnBeforeExtractMetaObject = EMBeforeExtractMetaObject
    OnAfterExtractRecord = EMAfterExtractRecord
    OnBeforeExtractData = EMBeforeExtractData
    OnAfterExtractData = EMAfterExtractData
    OnError = EMError
    Left = 408
    Top = 117
  end
  object SD: TSaveDialog
    DefaultExt = 'sql'
    Filter = 'SQL Scripts (*.sql)|*.sql|All files (*.*)|*.*'
    Left = 276
    Top = 121
  end
  object bm: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Bars = <
      item
        Caption = 'Extract metadata'
        DockedDockingStyle = dsTop
        DockedLeft = 0
        DockedTop = 0
        DockingStyle = dsTop
        FloatLeft = 340
        FloatTop = 264
        FloatClientWidth = 23
        FloatClientHeight = 22
        ItemLinks = None
        Name = 'Extract metadata'
        NotDocking = ['dsNone', 'dsLeft', 'dsRight', 'dsBottom']
        OneOnRow = True
        Row = 0
        UseOwnFont = False
        Visible = True
        WholeRow = False
      end
    >
    Categories.Strings = ['Default']
    Categories.ItemsVisibles = [2]
    Categories.Visibles = [True]
    Images = IBEMainForm.ImageList
    PopupMenuLinks = []
    UseSystemFont = True
    Left = 320
    Top = 160
    DockControlHeights = [0, 0, 26, 0]
    object dxBarButton1: TdxBarButton
      Action = actExtract
      Category = 0
      UnclickAfterDoing = False
    end
    object cbInto: TdxBarCombo
      Action = actToggleExtractType
      Category = 0
      Hint = 'Extract to'
      Text = 'File'
      OnChange = dxBarCombo1Change
      ShowCaption = True
      Width = 100
      ShowEditor = False
      Items.Strings = ['File', 'Clipboard', 'Script Executive', 'Separate Files (VCS)', 'Separate Files (full recreate)']
      ItemIndex = 0
    end
    object bliDatabases: TdxBarSubItem
      Caption = '(No active connection)'
      Category = 0
      Visible = ivAlways
      ImageIndex = 0
      OnClick = bliDatabasesClick
      ItemLinks = []
    end
    object dxBarButton2: TdxBarButton
      Action = actLoadConfig
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = bpmRecentLoad
    end
    object dxBarButton3: TdxBarButton
      Action = actSaveConfig
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = bpmRecentSave
    end
    object bliRecentLoad: TdxBarListItem
      Caption = 'New Item'
      Category = 0
      Visible = ivAlways
      OnClick = bliRecentLoadClick
    end
    object bliRecentSave: TdxBarListItem
      Caption = 'New Item'
      Category = 0
      Visible = ivAlways
      OnClick = bliRecentSaveClick
    end
    object dxBarButton4: TdxBarButton
      Action = actStopExtract
      Category = 0
      UnclickAfterDoing = False
    end
    object dxBarButton5: TdxBarButton
      Action = actAddRelated
      Category = 0
    end
  end
  object bpmRecentLoad: TdxBarPopupMenu
    BarManager = bm
    ItemLinks = <
      item
        Item = bliRecentLoad
        Visible = True
      end
    >
    UseOwnFont = False
    Left = 320
    Top = 400
  end
  object cod: TOpenDialog
    DefaultExt = 'mec'
    Filter = 'Metadata extract configuration (*.mec)|*.mec|All files (*.*)|*.*'
    Title = 'Load configuration from'
    Left = 424
    Top = 264
  end
  object csd: TSaveDialog
    DefaultExt = 'mec'
    Filter = 'Metadata extract configuration (*.mec)|*.mec|IBEBlock (*.ibeblock)|*.ibeblock|All files (*.*)|*.*'
    Title = 'Save configuration as'
    Left = 456
    Top = 264
  end
  object bpmRecentSave: TdxBarPopupMenu
    BarManager = bm
    ItemLinks = <
      item
        Item = bliRecentSave
        Visible = True
      end
    >
    UseOwnFont = False
    Left = 352
    Top = 400
  end
  object Timer: TTimer
    Enabled = False
    OnTimer = TimerTimer
    Left = 400
    Top = 184
  end
end
