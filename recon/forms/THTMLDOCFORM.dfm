object HTMLDocForm: THTMLDocForm
  Left = 327
  Top = 194
  Width = 665
  Height = 528
  HelpContext = 14900
  Caption = 'HTMLDocForm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Pages: TIBEPageControl
    Left = 0
    Top = 77
    Width = 649
    Height = 415
    AdvOfficePagerStyler = IBEMainForm.PCStyler
    Align = alClient
    ActivePage = tsObjects
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
    OnChanging = PagesChanging
    TabOrder = 0
    TabStop = True
    NextPictureChanged = True
    PrevPictureChanged = True
    object tsObjects: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 649
      Height = 390
      Caption = 'Objects'
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
        Width = 645
        Height = 29
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 645
          Height = 4
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
        end
        object TBToolbar1: TTBToolbar
          Left = 0
          Top = 4
          Width = 645
          Height = 21
          Align = alTop
          Caption = 'TBToolbar1'
          DragHandleStyle = dhNone
          Images = IBEMainForm.ImageList
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          object TBControlItem1: TTBControlItem
            Control = Label1
          end
          object : TTBControlItem
            Control = SelAllC
          end
          object TBSeparatorItem1: TTBSeparatorItem
          end
          object tbiAddRelated: TTBItem
            Action = actAddRelated
          end
          object Label1: TLabel
            Left = 0
            Top = 4
            Width = 3
            Height = 13
            Caption = ' '
            Transparent = True
          end
          object SelAllC: TIBECheckBox
            Left = 3
            Top = 0
            Width = 273
            Height = 20
            TabOrder = 0
            TabStop = True
            Alignment = taLeftJustify
            Caption = 'Extract &all'
            ReturnIsTab = False
            Themed = True
            Version = '1.3.2.0'
            OnChange = SelAllCChange
          end
        end
      end
      object SelFm: TSelectObjectsTreeFrame
        Left = 2
        Top = 31
        Width = 645
        Height = 357
        TabOrder = 1
        object Panel4: TPanel
          Width = 645
          Height = 357
          object ATL: TdxTreeList
            Height = 357
          end
          object pButtons: TPanel
            Height = 357
            object Panel5: TPanel
              Height = 357
            end
            object TBDock1: TTBDock
              Height = 357
            end
          end
          object Panel1: TPanel
            Width = 352
            Height = 357
            object ITL: TdxTreeList
              Width = 352
              Height = 249
            end
            object pPrintOptions: TPanel
              Top = 249
              Width = 352
              object Panel2: TPanel
                Width = 350
              end
            end
          end
        end
      end
    end
    object tsGeneral: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 649
      Height = 390
      Caption = 'Options'
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
      object lCharset: TLabel
        Left = 7
        Top = 15
        Width = 36
        Height = 13
        Caption = 'Charset'
        Transparent = True
      end
      object Bevel1: TBevel
        Left = 7
        Top = 42
        Width = 644
        Height = 9
        Anchors = ['akLeft', 'akTop', 'akRight']
        Shape = bsTopLine
      end
      object cbIncludeDDL: TIBECheckBox
        Left = 8
        Top = 209
        Width = 623
        Height = 21
        Anchors = ['akLeft', 'akTop', 'akRight']
        TabOrder = 0
        TabStop = True
        Alignment = taLeftJustify
        Caption = 'Include syntax highlighted object definitions'
        ReturnIsTab = False
        Themed = True
        Version = '1.3.2.0'
        OnChange = cbIncludeDDLChange
      end
      object cbCharset: TdxPickEdit
        Left = 56
        Top = 12
        Width = 129
        TabOrder = 1
        StyleController = IBEMainForm.MainSC
        Text = 'cbCharset'
        DropDownRows = 20
        Items.Strings = ['iso-8859-1', 'utf-8', 'windows-1250', 'windows-1251', 'windows-1252']
        Sorted = True
      end
      object cbIncludeDesc: TIBECheckBox
        Left = 8
        Top = 184
        Width = 623
        Height = 21
        Anchors = ['akLeft', 'akTop', 'akRight']
        TabOrder = 2
        TabStop = True
        Alignment = taLeftJustify
        Caption = 'Include descriptions of database objects'
        ReturnIsTab = False
        Themed = True
        Version = '1.3.2.0'
      end
      object cbSingleFile: TIBECheckBox
        Left = 8
        Top = 55
        Width = 623
        Height = 21
        Anchors = ['akLeft', 'akTop', 'akRight']
        TabOrder = 3
        TabStop = True
        Alignment = taLeftJustify
        Caption = 'Single file'
        ReturnIsTab = False
        Themed = True
        Version = '1.3.2.0'
      end
      object cbAllowHyperlinks: TIBECheckBox
        Left = 25
        Top = 236
        Width = 623
        Height = 21
        Anchors = ['akLeft', 'akTop', 'akRight']
        TabOrder = 4
        TabStop = True
        Alignment = taLeftJustify
        Caption = 'Allow hyperlinks in object definitions'
        ReturnIsTab = False
        Themed = True
        Version = '1.3.2.0'
      end
      object cbIndices: TIBECheckBox
        Left = 8
        Top = 111
        Width = 623
        Height = 21
        Anchors = ['akLeft', 'akTop', 'akRight']
        TabOrder = 5
        TabStop = True
        Alignment = taLeftJustify
        Caption = 'Include indices'
        ReturnIsTab = False
        Themed = True
        Version = '1.3.2.0'
      end
      object cbForeignKeys: TIBECheckBox
        Left = 8
        Top = 135
        Width = 623
        Height = 21
        Anchors = ['akLeft', 'akTop', 'akRight']
        TabOrder = 6
        TabStop = True
        Alignment = taLeftJustify
        Caption = 'Include foreign keys'
        ReturnIsTab = False
        Themed = True
        Version = '1.3.2.0'
      end
      object cbChecks: TIBECheckBox
        Left = 8
        Top = 159
        Width = 623
        Height = 21
        Anchors = ['akLeft', 'akTop', 'akRight']
        TabOrder = 7
        TabStop = True
        Alignment = taLeftJustify
        Caption = 'Include check constraints'
        ReturnIsTab = False
        Themed = True
        Version = '1.3.2.0'
      end
      object cbConnectString: TIBECheckBox
        Left = 8
        Top = 87
        Width = 623
        Height = 21
        Anchors = ['akLeft', 'akTop', 'akRight']
        TabOrder = 8
        TabStop = True
        Alignment = taLeftJustify
        Caption = 'Include database connection string'
        ReturnIsTab = False
        Themed = True
        Version = '1.3.2.0'
      end
    end
    object tsCSS: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 649
      Height = 390
      Caption = 'CSS'
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
      object mCSS: TdxMemo
        Left = 2
        Top = 2
        Width = 645
        Align = alClient
        TabOrder = 0
        StyleController = IBEMainForm.MainSC
        ScrollBars = ssBoth
        Height = 386
      end
    end
    object tsOutput: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 649
      Height = 390
      Caption = 'Output'
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
        Width = 645
        Height = 386
        object EditM: TSQLMemo
          Width = 645
          Height = 368
        end
        object pIncSearch: TPanel
          Top = 368
          Width = 645
        end
      end
    end
  end
  object FileP: TPanel
    Left = 0
    Top = 26
    Width = 649
    Height = 51
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 5
    object lDir: TLabel
      Left = 7
      Top = 6
      Width = 336
      Height = 13
      Caption = 'Output directory (IBExpert will create it automatically if one doesn''t exist)'
    end
    object deDocDir: TdxButtonEdit
      Left = 7
      Top = 24
      Width = 644
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
      OnButtonClick = deDocDirButtonClick
      ExistButtons = True
    end
  end
  object bm: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Bars = <
      item
        AllowClose = False
        AllowCustomizing = False
        AllowQuickCustomizing = False
        AllowReset = False
        Caption = 'Print metadata'
        DockedDockingStyle = dsTop
        DockedLeft = 0
        DockedTop = 0
        DockingStyle = dsTop
        FloatLeft = 340
        FloatTop = 264
        FloatClientWidth = 127
        FloatClientHeight = 19
        ItemLinks = None
        Name = 'Print metadata'
        NotDocking = ['dsNone', 'dsLeft', 'dsRight', 'dsBottom']
        OneOnRow = True
        Row = 0
        UseOwnFont = False
        Visible = True
        WholeRow = True
      end
    >
    Categories.Strings = ['Default']
    Categories.ItemsVisibles = [2]
    Categories.Visibles = [True]
    Images = IBEMainForm.ImageList
    PopupMenuLinks = []
    UseSystemFont = True
    Left = 424
    Top = 80
    DockControlHeights = [0, 0, 26, 0]
    object bliDatabases: TdxBarSubItem
      Caption = '(No active connection)'
      Category = 0
      Visible = ivAlways
      ImageIndex = 0
      OnClick = bliDatabasesClick
      ItemLinks = []
    end
    object dxBarButton1: TdxBarButton
      Action = actGenerate
      Category = 0
      UnclickAfterDoing = False
    end
  end
  object ActionList: TActionList
    Images = IBEMainForm.ImageList
    Left = 459
    Top = 84
    object actGenerate: TAction
      Caption = 'Generate HTML Doc'
      Hint = 'Generate HTML Doc'
      ImageIndex = 59
      OnExecute = actGenerateExecute
    end
    object actLocalize: TAction
      Caption = 'Localize'
      Hint = 'Localize Form'
      ShortCut = 57420
      OnExecute = actLocalizeExecute
    end
    object actAddRelated: TAction
      Caption = 'Add related objects'
      Hint = 'Add related objects'
      OnExecute = actAddRelatedExecute
      OnUpdate = actAddRelatedUpdate
    end
  end
  object ImageList1: TImageList
    Left = 496
    Top = 193
  end
  object CSSHolder: TStrHolder
    Capacity = 285
    Macros = <
      item
      end
      item
        Name = '}'
      end
    >
    Left = 456
    Top = 257
    InternalVer = 1
    StrData = ['', '626f6479', '097b', '096d617267696e3a203070782030707820307078203070783b', '0970616464696e673a203070782030707820307078203070783b', '096261636b67726f756e643a20236666666666663b', '09636f6c6f723a20233030303030303b', '09666f6e742d66616d696c793a2056657264616e612c20417269616c2c2048656c7665746963612c2073616e732d73657269663b', '09666f6e742d73697a653a203730253b', '0977696474683a20313030253b', '097d', '', '', '646976236e7362616e6e6572', '097b', '09706f736974696f6e3a2072656c61746976653b', '096c6566743a203070783b', '0970616464696e673a203070782030707820357078203070783b', '09626f726465722d626f74746f6d3a2031707820736f6c696420233939393939393b', '20202020202020206261636b67726f756e642d636f6c6f723a20236330666663303b', '097d', '', '6469762362616e6e6572726f7731', '097b', '096261636b67726f756e642d636f6c6f723a20236330666663303b', '097d', '', '646976237469746c65726f77', '097b', '0977696474683a20313030253b202f2a20466f72636573207461626c657320746f206861766520636f7272656374207269676874206d617267696e202a2f', '0970616464696e673a2030707820313070782030707820323270783b', '096261636b67726f756e642d636f6c6f723a20236330666663303b', '097d', '', '', '6469762e7461626c65646976', '097b', '0977696474683a20313030253b', '096d617267696e2d746f703a202d2e34656d3b', '097d', '', '2e647448312c202e647448322c202e647448332c202e64744834', '097b', '096d617267696e2d6c6566743a202d313670783b', '2020202020202020666f6e742d7765696768743a20626f6c643b', '2020202020202020666f6e742d73697a653a20313070743b', '097d', '', '', '7461626c65', '097b', '', '096d617267696e2d746f703a202e36656d3b', '096d617267696e2d626f74746f6d3a202e33656d3b', '09666f6e742d73697a653a20313030253b202f2a205465787420696e205461626c652069732073616d652073697a652061732074657874206f757473696465207461626c65202a2f', '097d', '', '', '7461626c652e62616e6e657270617274686561642c207461626c652e62616e6e65727469746c65', '097b', '09706f736974696f6e3a2072656c61746976653b', '096c6566743a203070783b', '09746f703a203070783b', '0970616464696e673a203070782030707820307078203070783b', '096d617267696e3a203070782030707820307078203070783b', '0977696474683a20313030253b', '096865696768743a20323170783b', '09626f726465722d636f6c6c617073653a20636f6c6c617073653b', '09626f726465722d7374796c653a20736f6c69643b', '09626f726465722d77696474683a203070783b', '096261636b67726f756e642d636f6c6f723a20236330666663303b', '097d', '7461626c652e62616e6e65727061727468656164207464', '097b', '096d617267696e3a203070782030707820307078203070783b', '0970616464696e673a203270782030707820307078203870783b', '09766572746963616c2d616c69676e3a20746f703b', '092f2a626f726465722d77696474683a203070782030707820317078203070783b202a2f', '09626f726465722d77696474683a20307078', '09626f726465722d7374796c653a20736f6c69643b', '09626f726465722d636f6c6f723a20233939393939393b', '096261636b67726f756e643a207472616e73706172656e743b', '09666f6e742d7374796c653a206974616c69633b', '09666f6e742d7765696768743a206e6f726d616c3b', '097d', '7461626c652e62616e6e657270617274686561642074642e70726f64756374202f2a2056616c75657320666f7220746f702072696768742063656c6c20696e2072756e6e696e672068656164202a2f', '097b20202020202020202020202020202020202020202020202f2a20416c6c6f777320666f722061207365636f6e64207465787420626c6f636b20696e207468652072756e6e696e672068656164202a2f', '09746578742d616c69676e3a2072696768743b', '0970616464696e673a203270782035707820307078203570783b', '097d', '7461626c652e62616e6e65727469746c65207464202f2a2047656e6572616c2056616c75657320666f722063656c6c7320696e2074686520626f74746f6d20726f77206f662072756e6e696e672068656164202a2f', '097b', '096d617267696e3a203070782030707820307078203070783b', '0970616464696e673a203070782030707820307078203370783b', '09766572746963616c2d616c69676e3a206d6964646c653b', '09626f726465722d77696474683a203070782030707820317078203070783b', '09626f726465722d7374796c653a20736f6c69643b', '09626f726465722d636f6c6f723a20233939393939393b', '096261636b67726f756e643a207472616e73706172656e743b', '09666f6e742d7765696768743a20626f6c643b', '097d', '74642e627574746f6e31202f2a2056616c75657320666f7220627574746f6e2063656c6c73202a2f', '097b', '0977696474683a20313370783b', '09637572736f723a2068616e643b', '097d', '', '', '', '2e64745441424c45', '097b', '09626f726465722d77696474683a203170782031707820307078203070783b', '09626f726465722d7374796c653a20736f6c69643b', '09626f726465722d636f6c6f723a20233939393939393b', '097d', '7461626c652e64745441424c452074682c207461626c652e64745441424c45207464', '097b', '09626f726465722d7374796c653a20736f6c69643b202f2a2043726561746573207468652063656c6c20626f7264657220616e6420636f6c6f72202a2f', '09626f726465722d77696474683a203070782030707820317078203170783b', '09626f726465722d7374796c653a20736f6c69643b', '09626f726465722d636f6c6f723a20233939393939393b', '09746578742d616c69676e3a206c6566743b', '097d', '', '2f2a20417267756d656e7473207461626c6520202a2f', '', '2e6474417267', '097b', '20202020202020206d617267696e2d6c6566743a20323570783b', '09626f726465722d77696474683a203170782031707820307078203070783b', '2020202020202020626f726465722d7374796c653a20736f6c69643b', '09626f726465722d636f6c6f723a20233939393939393b', '097d', '7461626c652e6474417267207468', '097b', '2020202020202020626f726465722d7374796c653a20736f6c69643b202f2a2043726561746573207468652063656c6c20626f7264657220616e6420636f6c6f72202a2f', '09626f726465722d77696474683a203070782030707820317078203170783b', '09626f726465722d7374796c653a20736f6c69643b', '09626f726465722d636f6c6f723a20233939393939393b', '20202020202020206261636b67726f756e643a20234530453045303b', '2020202020202020746578742d616c69676e3a206c6566743b', '09766572746963616c2d616c69676e3a20746f703b', '097d', '7461626c652e6474417267207464', '097b', '09626f726465722d7374796c653a20736f6c69643b202f2a2043726561746573207468652063656c6c20626f7264657220616e6420636f6c6f72202a2f', '09626f726465722d77696474683a203070782030707820317078203170783b', '09626f726465722d7374796c653a20736f6c69643b', '09626f726465722d636f6c6f723a20233939393939393b', '2020202020202020766572746963616c2d616c69676e3a20746f703b', '097d', '', '', '', '2e426173652020207b', '2020202020202020666f6e742d73697a653a203870743b', '20202020202020206d617267696e3a20347074202034707420203370742020323570783b', '20202020202020207d', '', '2e426173653220207b', '2020202020202020666f6e742d73697a653a203870743b', '20202020202020206d617267696e3a20327074202032707420203370742020357078', '20202020202020207d', '', '2e48656164657230', '20202020202020207b', '2020202020202020666f6e742d73697a653a20313070743b', '2020202020202020666f6e742d7765696768743a20626f6c643b', '20202020202020206d617267696e3a20347074202034707420203370742020357074', '20202020202020207d', '', '', '2e48656164657231', '20202020202020207b', '2020202020202020666f6e742d73697a653a203870743b', '2020202020202020666f6e742d7765696768743a20626f6c643b', '20202020202020206d617267696e3a20347074202034707420203370742020357074', '20202020202020207d', '', '2e526564486561646572', '20202020202020207b', '2020202020202020666f6e742d73697a653a203870743b', '2020202020202020666f6e742d7765696768743a20626f6c643b', '20202020202020206d617267696e3a203470742020347074202033707420203570743b', '2020202020202020636f6c6f723a20726564', '20202020202020207d', '', '20202020202e53796e746178207b20666f6e742d73697a653a20387074203b206d617267696e3a20327074202032707420203370742020302e32696e203b20666f6e742d66616d696c793a20436f7572696572204e65773b20207d', '20202020202e53796e74617832207b20666f6e742d73697a653a20387074203b206d617267696e3a20307074202030707420203070742020302e3035696e3b20666f6e742d66616d696c793a20436f7572696572204e65773b20207d', '20202020202e42756c6c6574207b20666f6e742d73697a653a20387074203b206d617267696e3a20327074202032707420203370742020302e32696e203b20666f6e742d66616d696c793a2057696e6764696e67733b20207d', '', '20202020202e54626c207b706f736974696f6e3a2072656c61746976653b206c6566743a20302e323370783b2077696474683a203936257d', '', '2e53796e74617854626c', '20202020202020207b', '2020202020202020706f736974696f6e3a2072656c61746976653b', '20202020202020206c6566743a20302e323370783b', '202020202020202077696474683a203936253b', '20202020202020207d', '', '20202020202e54626c32207b706f736974696f6e203a2072656c61746976653b206c6566743a20302e323570787d', '20202020202e54626c33207b6d617267696e3a20327074203270742033707420302e323570787d', '20202020202e4e617654626c207b706f736974696f6e203a2072656c61746976653b206c6566743a203070743b2077696474683a20313030257d', '20202020202e42616e6e657242617365207b20666f6e742d73697a653a20397074203b20666f6e742d7374796c653a206974616c69633b20636f6c6f723a20233030303061303b206d617267696e3a20307074202030707420203070742020302e3035696e203b20666f6e742d66616d696c793a', '56657264616e613b202066686e616d653a202242616e6e6572', '42617365223b207d', '20202020202e42616e6e65724261736531207b20666f6e742d73697a653a2031307074203b20666f6e742d7765696768743a20626f6c643b20636f6c6f723a20233030303061303b206d617267696e3a20307074202030707420203070742020327074203b20666f6e742d66616d696c793a', '56657264616e613b202066686e616d653a202242616e6e6572', '42617365223b207d', '', '', '20202020202e4261736531207b20666f6e742d73697a653a20397074203b206d617267696e3a20327074202030707420203370742020307074203b20666f6e742d66616d696c793a20495443476172616d6f6e644d4d5f3335305f3535305f2c73616e732d73657269663b202066686e616d653a', '22426173652331223b207d', '20202020202e4578616d706c65207b20666f6e742d73697a653a2031307074203b206d617267696e3a2032707420203070742020337074202033347074203b20746578742d696e64656e743a202d302e32323931696e203b20666f6e742d66616d696c793a204d532053616e732053657269662c73616e732d', '73657269663b20207d', '20202020202e49424d61696e207b20666f6e742d73697a653a2031307074203b206d617267696e3a20327074202030707420203370742020307074203b20666f6e742d66616d696c793a204d6963726f736f66742053616e732053657269662c73616e732d73657269663b202066686e616d653a', '2249425f4d61696e223b207d', '20202020202e53796e74617831207b20666f6e742d73697a653a2031307074203b20666f6e742d66616d696c793a20436f7572696572204e65772c73616e732d73657269663b202066686e616d653a202253796e7461782331223b206668747970653a206368617261637465723b207d', '20202020202e556e6465726c696e6564486561646572207b20666f6e742d73697a653a2031307074203b20666f6e742d7765696768743a20626f6c643b20746578742d6465636f726174696f6e3a20756e6465726c696e65203b206d617267696e3a2031327074202031307074202031357074', '302e323536696e203b20746578742d696e64656e743a202d302e323536696e', '3b20666f6e742d66616d696c793a204d532053616e732053657269662c73616e732d73657269663b20207d', '20202020202e556e6465726c696e656448656164657231207b20666f6e742d73697a653a2031307074203b20666f6e742d7765696768743a20626f6c643b206d617267696e3a20327074202030707420203570742020307074203b20626f726465723a207468696e20736f6c6964203b20626f726465722d', '6c6566742d77696474683a20303b20626f726465722d72696768742d77696474683a20303b20626f726465722d746f702d77696474683a20303b20666f6e742d66616d696c793a205461686f6d612c73616e732d73657269663b202066686e616d653a2022556e6465726c696e65644865616465722331223b207d', '', '6469762e666f6f746572', '097b', '09666f6e742d7374796c653a206974616c69633b', '097d', '6469762e666f6f746572206872', '097b', '09636f6c6f723a20233939393939393b', '096865696768743a203170783b', '097d', '', '2f2a204c494e4b205354594c4553202a2f', '', '613a6c696e6b20', '097b', '09636f6c6f723a20233030303066663b', '097d', '613a76697369746564', '097b', '09636f6c6f723a20233030303066663b20', '097d', '613a686f766572', '097b', '09636f6c6f723a20233333363666663b', '097d', '20', '20', '20', '20', '20']
  end
end
