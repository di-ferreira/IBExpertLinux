object CModelOptionsFrame: TCModelOptionsFrame
  Left = 0
  Top = 0
  Width = 435
  Height = 268
  HelpContext = 17200
  Align = alClient
  TabOrder = 0
  object dfsSplitter1: TdfsSplitter
    Left = 169
    Top = 0
    Width = 6
    Height = 268
    Cursor = crHSplit
    Align = alLeft
    Maximized = False
    Minimized = False
    ButtonCursor = crDefault
  end
  object TablePropsTL: TdxTreeList
    Tag = -1000
    Left = 0
    Top = 0
    Width = 169
    Height = 268
    Bands = <
      item
      end
    >
    DefaultLayout = True
    HeaderPanelRowCount = 1
    Align = alLeft
    DragMode = dmAutomatic
    TabOrder = 0
    HideSelection = False
    LookAndFeel = lfFlat
    Options = ['aoColumnSizing', 'aoTabThrough', 'aoRowSelect', 'aoDrawEndEllipsis', 'aoAutoWidth', 'aoStoreToRegistry']
    OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragExpand', 'aoAutoSearch']
    PaintStyle = psOutlook
    TreeLineColor = clGrayText
    ShowButtons = False
    ShowHeader = False
    ShowLines = False
    GridLineColor = clSilver
    OnChangeNode = TablePropsTLChangeNode
    Constraints.MinWidth = 50
    Data = {245 bytes}
    object ObjectsTLColumn1: TdxTreeListColumn
      BandIndex = 0
      RowIndex = 0
    end
  end
  object Pages: TIBEPageControl
    Left = 175
    Top = 0
    Width = 260
    Height = 268
    AdvOfficePagerStyler = IBEMainForm.PCStyler
    Align = alClient
    ActivePage = tsPreScript
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
    OnExit = PagesExit
    TabOrder = 1
    TabStop = True
    NextPictureChanged = True
    PrevPictureChanged = True
    object tsGeneral: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 260
      Height = 243
      Caption = 'tsGeneral'
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
      object Label1: TLabel
        Left = 12
        Top = 8
        Width = 89
        Height = 13
        Caption = 'Font Character Set'
        Transparent = True
      end
      object cbFontCharset: TdxPickEdit
        Left = 12
        Top = 26
        Width = 189
        TabOrder = 0
        StyleController = IBEMainForm.MainSC
        OnChange = cbFontCharsetChange
        DropDownRows = 20
        DropDownListStyle = True
        Sorted = True
      end
    end
    object tsTables: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 260
      Height = 243
      Caption = 'tsTables'
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
      object lTableMaxDescriptionLength: TLabel
        Left = 8
        Top = 262
        Width = 191
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Max Description Length'
        Transparent = True
      end
      object seTableMaxDescriptionLength: TdxSpinEdit
        Left = 206
        Top = 258
        Width = 73
        TabOrder = 0
        StyleController = IBEMainForm.MainSC
      end
      object Panel3: TPanel
        Left = 2
        Top = 2
        Width = 256
        Height = 18
        Align = alTop
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Caption = ' Display'
        Color = clBtnShadow
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clCaptionText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = ['fsBold']
        ParentFont = False
        TabOrder = 1
      end
      object cbTableName: TIBECheckBox
        Left = 8
        Top = 29
        Width = 704
        Height = 20
        TabOrder = 2
        TabStop = True
        Alignment = taLeftJustify
        Caption = 'Table Name'
        ReturnIsTab = False
        Themed = True
        Version = '1.3.2.0'
      end
      object cbTableDesc: TIBECheckBox
        Left = 8
        Top = 50
        Width = 704
        Height = 20
        TabOrder = 3
        TabStop = True
        Alignment = taLeftJustify
        Caption = 'Table Description'
        ReturnIsTab = False
        Themed = True
        Version = '1.3.2.0'
      end
      object cbFieldName: TIBECheckBox
        Left = 8
        Top = 71
        Width = 704
        Height = 20
        TabOrder = 4
        TabStop = True
        Alignment = taLeftJustify
        Caption = 'Field Name'
        ReturnIsTab = False
        Themed = True
        Version = '1.3.2.0'
      end
      object cbFieldDomain: TIBECheckBox
        Left = 8
        Top = 92
        Width = 704
        Height = 20
        TabOrder = 5
        TabStop = True
        Alignment = taLeftJustify
        Caption = 'Field Domain'
        ReturnIsTab = False
        Themed = True
        Version = '1.3.2.0'
      end
      object cbFieldType: TIBECheckBox
        Left = 8
        Top = 113
        Width = 704
        Height = 20
        TabOrder = 6
        TabStop = True
        Alignment = taLeftJustify
        Caption = 'Field Type'
        ReturnIsTab = False
        Themed = True
        Version = '1.3.2.0'
      end
      object cbFieldNotNull: TIBECheckBox
        Left = 8
        Top = 135
        Width = 704
        Height = 20
        TabOrder = 7
        TabStop = True
        Alignment = taLeftJustify
        Caption = 'Field Not Null'
        ReturnIsTab = False
        Themed = True
        Version = '1.3.2.0'
      end
      object cbFieldDesc: TIBECheckBox
        Left = 8
        Top = 157
        Width = 704
        Height = 20
        TabOrder = 8
        TabStop = True
        Alignment = taLeftJustify
        Caption = 'Field Description'
        ReturnIsTab = False
        Themed = True
        Version = '1.3.2.0'
      end
      object cbPKMark: TIBECheckBox
        Left = 8
        Top = 179
        Width = 704
        Height = 20
        TabOrder = 9
        TabStop = True
        Alignment = taLeftJustify
        Caption = 'Primary Key Marks'
        ReturnIsTab = False
        Themed = True
        Version = '1.3.2.0'
      end
      object cbFKMark: TIBECheckBox
        Left = 8
        Top = 201
        Width = 704
        Height = 20
        TabOrder = 10
        TabStop = True
        Alignment = taLeftJustify
        Caption = 'Foreign Key Marks'
        ReturnIsTab = False
        Themed = True
        Version = '1.3.2.0'
      end
      object cbExpandMark: TIBECheckBox
        Left = 8
        Top = 222
        Width = 704
        Height = 20
        TabOrder = 11
        TabStop = True
        Alignment = taLeftJustify
        Caption = 'Expand Mark'
        ReturnIsTab = False
        Themed = True
        Version = '1.3.2.0'
      end
    end
    object tsLinks: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 260
      Height = 243
      Caption = 'tsLinks'
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
      object Label2: TLabel
        Left = 12
        Top = 61
        Width = 40
        Height = 13
        Caption = 'Notation'
        Transparent = True
      end
      object cbLinksShowNames: TIBECheckBox
        Left = 11
        Top = 9
        Width = 2402
        Height = 20
        Anchors = ['akLeft', 'akTop', 'akRight']
        TabOrder = 0
        TabStop = True
        Alignment = taLeftJustify
        Caption = 'Display link names'
        ReturnIsTab = False
        Themed = True
        Version = '1.3.2.0'
      end
      object cbLinksAutotrace: TIBECheckBox
        Left = 11
        Top = 33
        Width = 2402
        Height = 20
        Anchors = ['akLeft', 'akTop', 'akRight']
        TabOrder = 1
        TabStop = True
        Alignment = taLeftJustify
        Caption = 'Automatically trace links'
        ReturnIsTab = False
        Themed = True
        Version = '1.3.2.0'
      end
      object cbLinksNotation: TdxPickEdit
        Left = 12
        Top = 79
        Width = 127
        TabOrder = 2
        StyleController = IBEMainForm.MainSC
        OnChange = cbFontCharsetChange
        DropDownRows = 20
        DropDownListStyle = True
        Items.Strings = ['IBExpert', 'IDEF1X', 'IE', 'DM']
      end
    end
    object tsPreScript: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 260
      Height = 243
      Caption = 'tsPreScript'
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
      object PreScriptFm: TEditFrame
        Left = 2
        Top = 2
        Width = 256
        Height = 239
        object EditM: TSQLMemo
          Width = 256
          Height = 221
        end
        object pIncSearch: TPanel
          Top = 221
          Width = 256
        end
      end
    end
    object tsPostScript: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 260
      Height = 243
      Caption = 'tsPostScript'
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
      object PostScriptFm: TEditFrame
        Left = 2
        Top = 2
        Width = 256
        Height = 239
        object EditM: TSQLMemo
          Width = 256
          Height = 221
        end
        object pIncSearch: TPanel
          Top = 221
          Width = 256
        end
      end
    end
    object tsBlocks: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 260
      Height = 243
      Caption = 'tsBlocks'
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
      object BlockFm: TEditFrame
        Left = 2
        Top = 35
        Width = 256
        Height = 206
        object EditM: TSQLMemo
          Width = 256
          Height = 188
        end
        object pIncSearch: TPanel
          Top = 188
          Width = 256
        end
      end
      object Panel1: TPanel
        Left = 2
        Top = 2
        Width = 256
        Height = 33
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object Label3: TLabel
          Left = 8
          Top = 9
          Width = 33
          Height = 13
          Caption = 'Block: '
        end
        object cbBlock: TdxPickEdit
          Left = 48
          Top = 6
          Width = 313
          TabOrder = 0
          StyleController = IBEMainForm.MainSC
          OnChange = cbBlockChange
          DropDownListStyle = True
        end
      end
    end
  end
end
