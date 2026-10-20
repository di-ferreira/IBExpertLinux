object VisualOptionsForm: TVisualOptionsForm
  Left = 354
  Top = 212
  HelpContext = 12400
  AutoScroll = False
  Caption = 'Visual options'
  ClientHeight = 431
  ClientWidth = 542
  Color = clBtnFace
  Constraints.MinHeight = 442
  Constraints.MinWidth = 421
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label10: TLabel
    Left = 125
    Top = 49
    Width = 46
    Height = 13
    Alignment = taRightJustify
    Caption = 'Rounding'
  end
  object Pages: TIBEPageControl
    Left = 0
    Top = 26
    Width = 542
    Height = 370
    AdvOfficePagerStyler = PCStyler
    Align = alClient
    ActivePage = tsBars
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
    TabOrder = 0
    TabStop = True
    NextPictureChanged = True
    PrevPictureChanged = True
    object tsBars: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 542
      Height = 345
      Caption = 'Bars and popup menus'
      PageAppearance.BorderColor = 14922381
      PageAppearance.Color = 16640730
      PageAppearance.ColorTo = 16440004
      PageAppearance.ColorMirror = 16440004
      PageAppearance.ColorMirrorTo = 16440004
      PageAppearance.Gradient = ggVertical
      PageAppearance.GradientMirror = ggVertical
      TabAppearance.BorderColor = clNone
      TabAppearance.BorderColorHot = clHighlight
      TabAppearance.BorderColorSelected = clBlack
      TabAppearance.BorderColorSelectedHot = 6343929
      TabAppearance.BorderColorDisabled = clNone
      TabAppearance.BorderColorDown = clNone
      TabAppearance.Color = clBtnFace
      TabAppearance.ColorTo = clWhite
      TabAppearance.ColorSelected = 16571588
      TabAppearance.ColorSelectedTo = 16445929
      TabAppearance.ColorDisabled = clWhite
      TabAppearance.ColorDisabledTo = clSilver
      TabAppearance.ColorHot = 13432063
      TabAppearance.ColorHotTo = 13432063
      TabAppearance.ColorMirror = clWhite
      TabAppearance.ColorMirrorTo = clWhite
      TabAppearance.ColorMirrorHot = 13432063
      TabAppearance.ColorMirrorHotTo = 9556223
      TabAppearance.ColorMirrorSelected = 16445929
      TabAppearance.ColorMirrorSelectedTo = 16181984
      TabAppearance.ColorMirrorDisabled = clWhite
      TabAppearance.ColorMirrorDisabledTo = clSilver
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
      TabAppearance.TextColor = clBlack
      TabAppearance.TextColorHot = clBlack
      TabAppearance.TextColorSelected = clBlack
      TabAppearance.TextColorDisabled = clGray
      TabAppearance.ShadowColor = 10708799
      TabAppearance.HighLightColor = 16775871
      TabAppearance.HighLightColorHot = 16643309
      TabAppearance.HighLightColorSelected = 6540536
      TabAppearance.HighLightColorSelectedHot = 12451839
      TabAppearance.HighLightColorDown = 16776144
      TabAppearance.BackGround.Color = 14986888
      TabAppearance.BackGround.ColorTo = 16440004
      TabAppearance.BackGround.Direction = gdHorizontal
      object Label1: TLabel
        Left = 8
        Top = 9
        Width = 89
        Height = 13
        AutoSize = False
        Caption = 'Bar style:'
        Transparent = True
      end
      object cbBarStyle: TdxPickEdit
        Left = 8
        Top = 26
        Width = 121
        TabOrder = 0
        StyleController = IBEMainForm.MainSC
        OnChange = cbBarStyleChange
        DropDownListStyle = True
        Items.Strings = ['Standard', 'Enhanced', 'Flat']
      end
      object cbShowFullMenusAfterDelay: TIBECheckBox
        Left = 5
        Top = 84
        Width = 263
        Height = 20
        TabOrder = 1
        TabStop = True
        Alignment = taLeftJustify
        Caption = 'Show full menus after delay'
        ReturnIsTab = False
        Themed = True
        Version = '1.3.2.0'
      end
      object cbShowRecentFirst: TIBECheckBox
        Left = 5
        Top = 60
        Width = 279
        Height = 20
        TabOrder = 2
        TabStop = True
        Alignment = taLeftJustify
        Caption = 'Show recent items first'
        ReturnIsTab = False
        Themed = True
        Version = '1.3.2.0'
      end
      object cbMultilineToolbars: TIBECheckBox
        Left = 5
        Top = 108
        Width = 263
        Height = 20
        TabOrder = 3
        TabStop = True
        Alignment = taLeftJustify
        Caption = 'Multiline toolbars'
        ReturnIsTab = False
        Themed = True
        Version = '1.3.2.0'
      end
    end
    object tsLists: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 542
      Height = 345
      Caption = 'Lists and trees'
      ImageIndex = 1
      PageAppearance.BorderColor = 14922381
      PageAppearance.Color = 16640730
      PageAppearance.ColorTo = 16440004
      PageAppearance.ColorMirror = 16440004
      PageAppearance.ColorMirrorTo = 16440004
      PageAppearance.Gradient = ggVertical
      PageAppearance.GradientMirror = ggVertical
      TabAppearance.BorderColor = clNone
      TabAppearance.BorderColorHot = clHighlight
      TabAppearance.BorderColorSelected = clBlack
      TabAppearance.BorderColorSelectedHot = 6343929
      TabAppearance.BorderColorDisabled = clNone
      TabAppearance.BorderColorDown = clNone
      TabAppearance.Color = clBtnFace
      TabAppearance.ColorTo = clWhite
      TabAppearance.ColorSelected = 16571588
      TabAppearance.ColorSelectedTo = 16445929
      TabAppearance.ColorDisabled = clWhite
      TabAppearance.ColorDisabledTo = clSilver
      TabAppearance.ColorHot = 13432063
      TabAppearance.ColorHotTo = 13432063
      TabAppearance.ColorMirror = clWhite
      TabAppearance.ColorMirrorTo = clWhite
      TabAppearance.ColorMirrorHot = 13432063
      TabAppearance.ColorMirrorHotTo = 9556223
      TabAppearance.ColorMirrorSelected = 16445929
      TabAppearance.ColorMirrorSelectedTo = 16181984
      TabAppearance.ColorMirrorDisabled = clWhite
      TabAppearance.ColorMirrorDisabledTo = clSilver
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
      TabAppearance.TextColor = clBlack
      TabAppearance.TextColorHot = clBlack
      TabAppearance.TextColorSelected = clBlack
      TabAppearance.TextColorDisabled = clGray
      TabAppearance.ShadowColor = 10708799
      TabAppearance.HighLightColor = 16775871
      TabAppearance.HighLightColorHot = 16643309
      TabAppearance.HighLightColorSelected = 6540536
      TabAppearance.HighLightColorSelectedHot = 12451839
      TabAppearance.HighLightColorDown = 16776144
      TabAppearance.BackGround.Color = 14986888
      TabAppearance.BackGround.ColorTo = 16440004
      TabAppearance.BackGround.Direction = gdHorizontal
      object tl: TdxTreeList
        Left = 141
        Top = 22
        Width = 206
        Height = 267
        Bands = <
          item
          end
        >
        DefaultLayout = True
        HeaderPanelRowCount = 1
        DragMode = dmAutomatic
        TabOrder = 0
        HideSelection = False
        LookAndFeel = lfFlat
        Options = ['aoColumnSizing', 'aoColumnMoving', 'aoTabThrough', 'aoRowSelect', 'aoMultiSelect', 'aoDrawEndEllipsis', 'aoAutoWidth', 'aoHideFocusRect', 'aoAutoSort']
        OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSortRefresh', 'aoAutoSearch', 'aoHotTrack']
        TreeLineColor = clGrayText
        ShowGrid = True
        ShowRoot = False
        GridLineColor = clSilver
        object tlcValue: TdxTreeListSpinColumn
          Alignment = taLeftJustify
          Caption = 'Column header'
          DisableCustomizing = True
          DisableEditor = True
          ReadOnly = True
          Width = 356
          BandIndex = 0
          RowIndex = 0
        end
      end
      object cbListStyle: TdxPickEdit
        Left = 5
        Top = 22
        Width = 121
        TabOrder = 1
        StyleController = IBEMainForm.MainSC
        OnChange = cbListStyleChange
        DropDownListStyle = True
        Items.Strings = ['Standard', 'Flat', 'Ultraflat']
      end
    end
    object tsControls: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 542
      Height = 345
      Caption = 'Edit controls'
      ImageIndex = 2
      PageAppearance.BorderColor = 14922381
      PageAppearance.Color = 16640730
      PageAppearance.ColorTo = 16440004
      PageAppearance.ColorMirror = 16440004
      PageAppearance.ColorMirrorTo = 16440004
      PageAppearance.Gradient = ggVertical
      PageAppearance.GradientMirror = ggVertical
      TabAppearance.BorderColor = clNone
      TabAppearance.BorderColorHot = clHighlight
      TabAppearance.BorderColorSelected = clBlack
      TabAppearance.BorderColorSelectedHot = 6343929
      TabAppearance.BorderColorDisabled = clNone
      TabAppearance.BorderColorDown = clNone
      TabAppearance.Color = clBtnFace
      TabAppearance.ColorTo = clWhite
      TabAppearance.ColorSelected = 16571588
      TabAppearance.ColorSelectedTo = 16445929
      TabAppearance.ColorDisabled = clWhite
      TabAppearance.ColorDisabledTo = clSilver
      TabAppearance.ColorHot = 13432063
      TabAppearance.ColorHotTo = 13432063
      TabAppearance.ColorMirror = clWhite
      TabAppearance.ColorMirrorTo = clWhite
      TabAppearance.ColorMirrorHot = 13432063
      TabAppearance.ColorMirrorHotTo = 9556223
      TabAppearance.ColorMirrorSelected = 16445929
      TabAppearance.ColorMirrorSelectedTo = 16181984
      TabAppearance.ColorMirrorDisabled = clWhite
      TabAppearance.ColorMirrorDisabledTo = clSilver
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
      TabAppearance.TextColor = clBlack
      TabAppearance.TextColorHot = clBlack
      TabAppearance.TextColorSelected = clBlack
      TabAppearance.TextColorDisabled = clGray
      TabAppearance.ShadowColor = 10708799
      TabAppearance.HighLightColor = 16775871
      TabAppearance.HighLightColorHot = 16643309
      TabAppearance.HighLightColorSelected = 6540536
      TabAppearance.HighLightColorSelectedHot = 12451839
      TabAppearance.HighLightColorDown = 16776144
      TabAppearance.BackGround.Color = 14986888
      TabAppearance.BackGround.ColorTo = 16440004
      TabAppearance.BackGround.Direction = gdHorizontal
      object Label2: TLabel
        Left = 7
        Top = 5
        Width = 55
        Height = 13
        Caption = 'Border style'
        Transparent = True
      end
      object Label3: TLabel
        Left = 239
        Top = 3
        Width = 55
        Height = 13
        Caption = 'Button style'
        Transparent = True
      end
      object Label4: TLabel
        Left = 7
        Top = 53
        Width = 96
        Height = 13
        Caption = 'Button transparence'
        Transparent = True
      end
      object GroupBox1: TGroupBox
        Left = 8
        Top = 148
        Width = 526
        Height = 177
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = ' Sample controls  '
        TabOrder = 0
        object : TdxPickEdit
          Left = 10
          Top = 20
          Width = 161
          TabOrder = 0
          StyleController = SC
          Text = 'Combobox'
          Items.Strings = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5']
        end
        object dxEdit1: TdxEdit
          Left = 186
          Top = 20
          Width = 161
          TabOrder = 1
          Text = 'Edit'
          StyleController = SC
        end
        object dxMemo1: TdxMemo
          Left = 10
          Top = 52
          Width = 337
          TabOrder = 2
          StyleController = SC
          Lines.Strings = ['Memo', '']
          Height = 89
        end
        object dxCheckEdit1: TIBECheckBox
          Left = 6
          Top = 148
          Width = 161
          Height = 20
          TabOrder = 3
          TabStop = True
          Alignment = taLeftJustify
          Caption = 'Checkbox'
          ReturnIsTab = False
          Themed = True
          Version = '1.3.2.0'
        end
      end
      object cbShadow: TIBECheckBox
        Left = 6
        Top = 122
        Width = 121
        Height = 20
        TabOrder = 1
        TabStop = True
        Alignment = taLeftJustify
        Caption = 'Shadow'
        ReturnIsTab = False
        Themed = True
        Version = '1.3.2.0'
        OnChange = cbShadowChange
      end
      object cbBorderStyle: TdxPickEdit
        Left = 7
        Top = 22
        Width = 121
        TabOrder = 2
        StyleController = IBEMainForm.MainSC
        OnChange = cbBorderStyleChange
        DropDownListStyle = True
        Items.Strings = ['None', 'Single', 'Thick', 'Flat', '3D']
      end
      object cbHotTrack: TIBECheckBox
        Left = 6
        Top = 98
        Width = 121
        Height = 20
        TabOrder = 3
        TabStop = True
        Alignment = taLeftJustify
        Caption = 'Hot track'
        ReturnIsTab = False
        Themed = True
        Version = '1.3.2.0'
        OnChange = cbHotTrackChange
      end
      object cbButtonStyle: TdxPickEdit
        Left = 239
        Top = 21
        Width = 121
        TabOrder = 4
        StyleController = IBEMainForm.MainSC
        OnChange = cbButtonStyleChange
        DropDownListStyle = True
        Items.Strings = ['Default', '3D', 'Flat', 'Simple', 'HotFlat']
      end
      object cbButtonTransparence: TdxPickEdit
        Left = 7
        Top = 70
        Width = 121
        TabOrder = 5
        StyleController = IBEMainForm.MainSC
        OnChange = cbButtonTransparenceChange
        DropDownListStyle = True
        Items.Strings = ['None', 'Inactive', 'Always', 'Hide inactive']
      end
    end
    object tsPageControls: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 542
      Height = 345
      Caption = 'Page controls'
      PageAppearance.BorderColor = 14922381
      PageAppearance.Color = 16640730
      PageAppearance.ColorTo = 16440004
      PageAppearance.ColorMirror = 16440004
      PageAppearance.ColorMirrorTo = 16440004
      PageAppearance.Gradient = ggVertical
      PageAppearance.GradientMirror = ggVertical
      TabAppearance.BorderColor = clNone
      TabAppearance.BorderColorHot = clHighlight
      TabAppearance.BorderColorSelected = clBlack
      TabAppearance.BorderColorSelectedHot = 6343929
      TabAppearance.BorderColorDisabled = clNone
      TabAppearance.BorderColorDown = clNone
      TabAppearance.Color = clBtnFace
      TabAppearance.ColorTo = clWhite
      TabAppearance.ColorSelected = 16571588
      TabAppearance.ColorSelectedTo = 16445929
      TabAppearance.ColorDisabled = clWhite
      TabAppearance.ColorDisabledTo = clSilver
      TabAppearance.ColorHot = 13432063
      TabAppearance.ColorHotTo = 13432063
      TabAppearance.ColorMirror = clWhite
      TabAppearance.ColorMirrorTo = clWhite
      TabAppearance.ColorMirrorHot = 13432063
      TabAppearance.ColorMirrorHotTo = 9556223
      TabAppearance.ColorMirrorSelected = 16445929
      TabAppearance.ColorMirrorSelectedTo = 16181984
      TabAppearance.ColorMirrorDisabled = clWhite
      TabAppearance.ColorMirrorDisabledTo = clSilver
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
      TabAppearance.TextColor = clBlack
      TabAppearance.TextColorHot = clBlack
      TabAppearance.TextColorSelected = clBlack
      TabAppearance.TextColorDisabled = clGray
      TabAppearance.ShadowColor = 10708799
      TabAppearance.HighLightColor = 16775871
      TabAppearance.HighLightColorHot = 16643309
      TabAppearance.HighLightColorSelected = 6540536
      TabAppearance.HighLightColorSelectedHot = 12451839
      TabAppearance.HighLightColorDown = 16776144
      TabAppearance.BackGround.Color = 14986888
      TabAppearance.BackGround.ColorTo = 16440004
      TabAppearance.BackGround.Direction = gdHorizontal
      object lPCTabRounding: TLabel
        Left = 125
        Top = 95
        Width = 46
        Height = 13
        Alignment = taRightJustify
        Caption = 'Rounding'
        Transparent = True
      end
      object Label9: TLabel
        Left = 10
        Top = 62
        Width = 66
        Height = 13
        Alignment = taRightJustify
        Caption = 'Tab shape'
        Transparent = True
      end
      object lPCTabLeftMargin: TLabel
        Left = 119
        Top = 124
        Width = 52
        Height = 13
        Alignment = taRightJustify
        Caption = 'Left margin'
        Transparent = True
      end
      object lPCTabRightMargin: TLabel
        Left = 112
        Top = 153
        Width = 59
        Height = 13
        Alignment = taRightJustify
        Caption = 'Right margin'
        Transparent = True
      end
      object lPCTabSpacing: TLabel
        Left = 132
        Top = 183
        Width = 39
        Height = 13
        Alignment = taRightJustify
        Caption = 'Spacing'
        Transparent = True
      end
      object lPCStyle: TLabel
        Left = 53
        Top = 16
        Width = 23
        Height = 13
        Alignment = taRightJustify
        Caption = 'Style'
        Transparent = True
      end
      object cbMultiLinePages: TIBECheckBox
        Left = 6
        Top = 322
        Width = 390
        Height = 20
        TabOrder = 8
        TabStop = True
        Visible = False
        Alignment = taLeftJustify
        Caption = 'Multiline page controls'
        ReturnIsTab = False
        Themed = True
        Version = '1.3.2.0'
      end
      object pePCTabShape: TdxPickEdit
        Left = 80
        Top = 59
        Width = 145
        TabOrder = 1
        StyleController = IBEMainForm.MainSC
        OnChange = pePCTabShapeChange
        DropDownListStyle = True
        Items.Strings = ['Rectangle', 'Rigt ramp', 'Left ramp', 'Right and left ramps']
      end
      object sePCTabRounding: TdxSpinEdit
        Left = 176
        Top = 92
        Width = 49
        TabOrder = 3
        StyleController = SC
        OnChange = sePCTabRoundingChange
        MaxValue = 10
        StoredValues = 16
      end
      object sePCTabLeftMargin: TdxSpinEdit
        Left = 176
        Top = 121
        Width = 49
        TabOrder = 4
        StyleController = SC
        OnChange = sePCTabLeftMarginChange
        MaxValue = 30
        StoredValues = 16
      end
      object sePCTabRightMargin: TdxSpinEdit
        Left = 176
        Top = 150
        Width = 49
        TabOrder = 5
        StyleController = SC
        OnChange = sePCTabRightMarginChange
        MaxValue = 30
        StoredValues = 16
      end
      object sePCTabSpacing: TdxSpinEdit
        Left = 176
        Top = 180
        Width = 49
        TabOrder = 6
        StyleController = SC
        OnChange = sePCTabSpacingChange
        MaxValue = 30
        StoredValues = 16
      end
      object pePCStyle: TdxPickEdit
        Left = 80
        Top = 13
        Width = 145
        TabOrder = 0
        StyleController = IBEMainForm.MainSC
        OnChange = pePCStyleChange
        DropDownRows = 40
        DropDownListStyle = True
        Items.Strings = ['Rectangle', 'Rigt ramp', 'Left ramp', 'Right and left ramps']
      end
      object cbPCAdaptToCurrentTheme: TIBECheckBox
        Left = 236
        Top = 13
        Width = 300
        Height = 20
        TabOrder = 7
        TabStop = True
        Visible = False
        Alignment = taLeftJustify
        Caption = 'Adapt to the current theme'
        ReturnIsTab = False
        Themed = True
        Version = '1.3.2.0'
        OnChange = cbPCAdaptToCurrentThemeChange
      end
      object cbPCGlow: TIBECheckBox
        Left = 237
        Top = 58
        Width = 300
        Height = 20
        TabOrder = 2
        TabStop = True
        Alignment = taLeftJustify
        Caption = 'Glow'
        ReturnIsTab = False
        Themed = True
        Version = '1.3.2.0'
        OnChange = cbPCGlowChange
      end
    end
    object tsSplitter: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 542
      Height = 345
      Caption = 'Splitters'
      PageAppearance.BorderColor = 14922381
      PageAppearance.Color = 16640730
      PageAppearance.ColorTo = 16440004
      PageAppearance.ColorMirror = 16440004
      PageAppearance.ColorMirrorTo = 16440004
      PageAppearance.Gradient = ggVertical
      PageAppearance.GradientMirror = ggVertical
      TabAppearance.BorderColor = clNone
      TabAppearance.BorderColorHot = clHighlight
      TabAppearance.BorderColorSelected = clBlack
      TabAppearance.BorderColorSelectedHot = 6343929
      TabAppearance.BorderColorDisabled = clNone
      TabAppearance.BorderColorDown = clNone
      TabAppearance.Color = clBtnFace
      TabAppearance.ColorTo = clWhite
      TabAppearance.ColorSelected = 16571588
      TabAppearance.ColorSelectedTo = 16445929
      TabAppearance.ColorDisabled = clWhite
      TabAppearance.ColorDisabledTo = clSilver
      TabAppearance.ColorHot = 13432063
      TabAppearance.ColorHotTo = 13432063
      TabAppearance.ColorMirror = clWhite
      TabAppearance.ColorMirrorTo = clWhite
      TabAppearance.ColorMirrorHot = 13432063
      TabAppearance.ColorMirrorHotTo = 9556223
      TabAppearance.ColorMirrorSelected = 16445929
      TabAppearance.ColorMirrorSelectedTo = 16181984
      TabAppearance.ColorMirrorDisabled = clWhite
      TabAppearance.ColorMirrorDisabledTo = clSilver
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
      TabAppearance.TextColor = clBlack
      TabAppearance.TextColorHot = clBlack
      TabAppearance.TextColorSelected = clBlack
      TabAppearance.TextColorDisabled = clGray
      TabAppearance.ShadowColor = 10708799
      TabAppearance.HighLightColor = 16775871
      TabAppearance.HighLightColorHot = 16643309
      TabAppearance.HighLightColorSelected = 6540536
      TabAppearance.HighLightColorSelectedHot = 12451839
      TabAppearance.HighLightColorDown = 16776144
      TabAppearance.BackGround.Color = 14986888
      TabAppearance.BackGround.ColorTo = 16440004
      TabAppearance.BackGround.Direction = gdHorizontal
      object SampleSplitter: TdfsSplitter
        Left = 2
        Top = 218
        Width = 538
        Height = 10
        Cursor = crVSplit
        Align = alBottom
        MinSize = 110
        ResizeStyle = rsUpdate
        Maximized = False
        Minimized = False
        ButtonCursor = crDefault
      end
      object Panel2: TPanel
        Left = 2
        Top = 2
        Width = 538
        Height = 216
        Align = alClient
        BevelOuter = bvLowered
        TabOrder = 0
        object lSplitterStyle: TLabel
          Left = 16
          Top = 16
          Width = 58
          Height = 13
          Caption = 'Splitter Style'
        end
        object Label7: TLabel
          Left = 176
          Top = 16
          Width = 58
          Height = 13
          Caption = 'Resize Style'
        end
        object Label6: TLabel
          Left = 144
          Top = 73
          Width = 99
          Height = 13
          Alignment = taRightJustify
          Caption = 'Splitter Width/Height'
        end
        object cbSplitterStyle: TdxPickEdit
          Left = 16
          Top = 32
          Width = 121
          TabOrder = 0
          StyleController = SC
          OnChange = cbSplitterStyleChange
          DropDownListStyle = True
          Items.Strings = ['Netscape', 'Standard']
        end
        object cbResizeStyle: TdxPickEdit
          Left = 176
          Top = 32
          Width = 121
          TabOrder = 1
          StyleController = SC
          OnChange = cbSplitterStyleChange
          DropDownListStyle = True
          Items.Strings = ['None', 'Line', 'Update', 'Pattern']
        end
        object seSplitterWidth: TdxSpinEdit
          Left = 248
          Top = 70
          Width = 49
          TabOrder = 2
          StyleController = SC
          OnChange = cbSplitterStyleChange
        end
      end
      object Memo1: TMemo
        Left = 2
        Top = 228
        Width = 538
        Height = 115
        Align = alBottom
        Lines.Strings = ['The splitter above is just for example']
        TabOrder = 1
      end
    end
    object Label5: TLabel
      Left = 144
      Top = 73
      Width = 99
      Height = 13
      Alignment = taRightJustify
      Caption = 'Splitter Width/Height'
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 396
    Width = 542
    Height = 35
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object Bevel2: TBevel
      Left = 0
      Top = 0
      Width = 542
      Height = 10
      Align = alTop
      Shape = bsTopLine
    end
    object bOK: TButton
      Left = 380
      Top = 5
      Width = 76
      Height = 27
      Anchors = ['akTop', 'akRight', 'akBottom']
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
    end
    object bCancel: TButton
      Left = 461
      Top = 5
      Width = 76
      Height = 27
      Anchors = ['akTop', 'akRight', 'akBottom']
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
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
        Caption = 'Custom 1'
        DockedDockingStyle = dsTop
        DockedLeft = 0
        DockedTop = 0
        DockingStyle = dsTop
        FloatLeft = 340
        FloatTop = 264
        FloatClientWidth = 23
        FloatClientHeight = 22
        ItemLinks = None
        Name = 'tbSample'
        NotDocking = ['dsLeft', 'dsRight', 'dsBottom']
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
    Images = IBEMainForm.MenuImages
    PopupMenuLinks = []
    UseSystemFont = True
    Left = 340
    Top = 208
    DockControlHeights = [0, 0, 26, 0]
    object dxBarButton1: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      ImageIndex = 48
    end
    object dxBarButton2: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      ImageIndex = 49
    end
    object dxBarButton3: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      ImageIndex = 49
    end
    object dxBarButton4: TdxBarButton
      Caption = 'This bar is just for example'
      Category = 0
      Hint = 'This bar is just for example'
      Visible = ivAlways
    end
  end
  object SC: TdxEditStyleController
    OnStyleChanged = SCStyleChanged
    Left = 380
    Top = 210
  end
  object ActionList1: TActionList
    Left = 380
    Top = 280
    object actExit: TAction
      Caption = 'Exit'
      ShortCut = 27
      OnExecute = actExitExecute
    end
  end
  object PCStyler: TAdvOfficePagerOfficeStyler
    PageAppearance.BorderColor = 14922381
    PageAppearance.Color = 16640730
    PageAppearance.ColorTo = 16440004
    PageAppearance.ColorMirror = 16440004
    PageAppearance.ColorMirrorTo = 16440004
    PageAppearance.Gradient = ggVertical
    PageAppearance.GradientMirror = ggVertical
    TabAppearance.BorderColor = clNone
    TabAppearance.BorderColorHot = clHighlight
    TabAppearance.BorderColorSelected = clBlack
    TabAppearance.BorderColorSelectedHot = 6343929
    TabAppearance.BorderColorDisabled = clNone
    TabAppearance.BorderColorDown = clNone
    TabAppearance.Color = clBtnFace
    TabAppearance.ColorTo = clWhite
    TabAppearance.ColorSelected = 16571588
    TabAppearance.ColorSelectedTo = 16445929
    TabAppearance.ColorDisabled = clWhite
    TabAppearance.ColorDisabledTo = clSilver
    TabAppearance.ColorHot = 13432063
    TabAppearance.ColorHotTo = 13432063
    TabAppearance.ColorMirror = clWhite
    TabAppearance.ColorMirrorTo = clWhite
    TabAppearance.ColorMirrorHot = 13432063
    TabAppearance.ColorMirrorHotTo = 9556223
    TabAppearance.ColorMirrorSelected = 16445929
    TabAppearance.ColorMirrorSelectedTo = 16181984
    TabAppearance.ColorMirrorDisabled = clWhite
    TabAppearance.ColorMirrorDisabledTo = clSilver
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
    TabAppearance.TextColor = clBlack
    TabAppearance.TextColorHot = clBlack
    TabAppearance.TextColorSelected = clBlack
    TabAppearance.TextColorDisabled = clGray
    TabAppearance.ShadowColor = 10708799
    TabAppearance.HighLightColor = 16775871
    TabAppearance.HighLightColorHot = 16643309
    TabAppearance.HighLightColorSelected = 6540536
    TabAppearance.HighLightColorSelectedHot = 12451839
    TabAppearance.HighLightColorDown = 16776144
    TabAppearance.BackGround.Color = 14986888
    TabAppearance.BackGround.ColorTo = 16440004
    TabAppearance.BackGround.Direction = gdHorizontal
    GlowButtonAppearance.BorderColor = 14727579
    GlowButtonAppearance.BorderColorHot = 10079963
    GlowButtonAppearance.BorderColorDown = 4548219
    GlowButtonAppearance.BorderColorChecked = clBlack
    GlowButtonAppearance.BorderColorDisabled = 13882323
    GlowButtonAppearance.Color = 15653832
    GlowButtonAppearance.ColorTo = 16178633
    GlowButtonAppearance.ColorChecked = 11918331
    GlowButtonAppearance.ColorCheckedTo = 7915518
    GlowButtonAppearance.ColorDisabled = 15921906
    GlowButtonAppearance.ColorDisabledTo = 15921906
    GlowButtonAppearance.ColorDown = 7778289
    GlowButtonAppearance.ColorDownTo = 4296947
    GlowButtonAppearance.ColorHot = 15465983
    GlowButtonAppearance.ColorHotTo = 11332863
    GlowButtonAppearance.ColorMirror = 15586496
    GlowButtonAppearance.ColorMirrorTo = 16245200
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
    Left = 344
    Top = 90
  end
end
