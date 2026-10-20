object FindTextForm: TFindTextForm
  Left = 376
  Top = 286
  Width = 511
  Height = 375
  HelpContext = 6500
  Caption = 'Find Text'
  Color = clBtnFace
  Constraints.MinHeight = 375
  Constraints.MinWidth = 511
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Position = poScreenCenter
  Scaled = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 304
    Width = 495
    Height = 35
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object Bevel2: TBevel
      Left = 0
      Top = 0
      Width = 495
      Height = 10
      Align = alTop
      Shape = bsTopLine
    end
    object bFind: TButton
      Left = 261
      Top = 7
      Width = 73
      Height = 25
      Anchors = ['akTop', 'akRight']
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
    end
    object bCancel: TButton
      Left = 340
      Top = 7
      Width = 73
      Height = 25
      Anchors = ['akTop', 'akRight']
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
    end
    object bHelp: TButton
      Left = 419
      Top = 7
      Width = 73
      Height = 25
      Anchors = ['akTop', 'akRight']
      Caption = '&Help'
      TabOrder = 2
    end
  end
  object Pages: TIBEPageControl
    Left = 0
    Top = 0
    Width = 495
    Height = 304
    AdvOfficePagerStyler = IBEMainForm.PCStyler
    Align = alClient
    ActivePage = tsFindMetadata
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
    TabOrder = 0
    TabStop = True
    NextPictureChanged = True
    PrevPictureChanged = True
    object tsFind: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 495
      Height = 279
      Caption = 'Find'
      PageAppearance.BorderColor = clBtnFace
      PageAppearance.Color = clBtnFace
      PageAppearance.ColorTo = clBtnFace
      PageAppearance.ColorMirror = clBtnFace
      PageAppearance.ColorMirrorTo = clBtnFace
      PageAppearance.Gradient = ggVertical
      PageAppearance.GradientMirror = ggVertical
      UsePageAppearance = True
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
      object lText: TLabel
        Left = 72
        Top = 12
        Width = 53
        Height = 13
        Alignment = taRightJustify
        Caption = '&Text to find'
        FocusControl = FindC
        Transparent = True
      end
      object FindC: TdxPickEdit
        Left = 129
        Top = 8
        Width = 368
        TabOrder = 0
        Anchors = ['akLeft', 'akTop', 'akRight']
        StyleController = IBEMainForm.MainSC
        DropDownRows = 20
        ImmediateDropDown = False
      end
      object gbOptions: TGroupBox
        Left = 8
        Top = 32
        Width = 243
        Height = 92
        Caption = ' Options '
        TabOrder = 1
        object CaseC: TIBECheckBox
          Left = 8
          Top = 16
          Width = 234
          Height = 20
          TabOrder = 0
          TabStop = True
          Alignment = taLeftJustify
          Caption = '&Case sensitive'
          ReturnIsTab = False
          Themed = True
          Version = '1.3.2.0'
        end
        object WholeC: TIBECheckBox
          Left = 8
          Top = 39
          Width = 232
          Height = 20
          TabOrder = 1
          TabStop = True
          Alignment = taLeftJustify
          Caption = '&Whole words only'
          ReturnIsTab = False
          Themed = True
          Version = '1.3.2.0'
        end
        object RegC: TIBECheckBox
          Left = 8
          Top = 63
          Width = 234
          Height = 20
          TabOrder = 2
          TabStop = True
          OnClick = RegCChange
          Alignment = taLeftJustify
          Caption = '&Regular expressions'
          ReturnIsTab = False
          Themed = True
          Version = '1.3.2.0'
        end
      end
      object rgDirection: TRadioGroup
        Left = 257
        Top = 32
        Width = 241
        Height = 92
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = ' Direction '
        ItemIndex = 0
        Items.Strings = ['&Forward', '&Backward']
        TabOrder = 2
      end
      object ScopeG: TRadioGroup
        Left = 8
        Top = 126
        Width = 243
        Height = 66
        Caption = ' Scope '
        ItemIndex = 0
        Items.Strings = ['&Global', '&Selected text']
        TabOrder = 3
      end
      object OriginG: TRadioGroup
        Left = 257
        Top = 126
        Width = 241
        Height = 66
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = ' Origin '
        ItemIndex = 0
        Items.Strings = ['&From cursor', '&Entire scope']
        TabOrder = 4
      end
    end
    object tsFindMetadata: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 495
      Height = 279
      Caption = 'Find in Metadata'
      ImageIndex = 1
      PageAppearance.BorderColor = clBtnFace
      PageAppearance.Color = clBtnFace
      PageAppearance.ColorTo = clBtnFace
      PageAppearance.ColorMirror = clBtnFace
      PageAppearance.ColorMirrorTo = clBtnFace
      PageAppearance.Gradient = ggVertical
      PageAppearance.GradientMirror = ggVertical
      UsePageAppearance = True
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
      object lDB: TLabel
        Left = 5
        Top = 39
        Width = 119
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = '&Database'
        FocusControl = cbDatabases
        Transparent = True
      end
      object gbSearchIn: TGroupBox
        Left = 257
        Top = 62
        Width = 240
        Height = 166
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = ' Search In  '
        TabOrder = 0
        object cbProcedures: TIBECheckBox
          Left = 9
          Top = 75
          Width = 172
          Height = 20
          Cursor = crArrow
          TabOrder = 0
          TabStop = True
          Alignment = taLeftJustify
          Caption = '&Stored Procedures'
          ReturnIsTab = False
          Themed = True
          Version = '1.3.2.0'
        end
        object cbTriggers: TIBECheckBox
          Left = 9
          Top = 96
          Width = 170
          Height = 20
          Cursor = crArrow
          TabOrder = 1
          TabStop = True
          Alignment = taLeftJustify
          Caption = '&Triggers'
          ReturnIsTab = False
          Themed = True
          Version = '1.3.2.0'
        end
        object cbViews: TIBECheckBox
          Left = 9
          Top = 54
          Width = 172
          Height = 20
          Cursor = crArrow
          TabOrder = 2
          TabStop = True
          Alignment = taLeftJustify
          Caption = '&Views'
          ReturnIsTab = False
          Themed = True
          Version = '1.3.2.0'
        end
        object cbExceptions: TIBECheckBox
          Left = 9
          Top = 117
          Width = 172
          Height = 20
          Cursor = crArrow
          TabOrder = 3
          TabStop = True
          Alignment = taLeftJustify
          Caption = 'Exceptions'
          ReturnIsTab = False
          Themed = True
          Version = '1.3.2.0'
        end
        object cbTables: TIBECheckBox
          Left = 9
          Top = 33
          Width = 172
          Height = 20
          Cursor = crArrow
          TabOrder = 4
          TabStop = True
          Alignment = taLeftJustify
          Caption = 'Tables'
          ReturnIsTab = False
          Themed = True
          Version = '1.3.2.0'
        end
        object cbDomains: TIBECheckBox
          Left = 9
          Top = 13
          Width = 172
          Height = 20
          Cursor = crArrow
          TabOrder = 5
          TabStop = True
          Alignment = taLeftJustify
          Caption = 'Domains'
          ReturnIsTab = False
          Themed = True
          Version = '1.3.2.0'
        end
        object cbUDFs: TIBECheckBox
          Left = 9
          Top = 138
          Width = 172
          Height = 20
          Cursor = crArrow
          TabOrder = 6
          TabStop = True
          Alignment = taLeftJustify
          Caption = 'UDFs'
          ReturnIsTab = False
          Themed = True
          Version = '1.3.2.0'
        end
      end
      object cbSearchInAll: TIBECheckBox
        Left = 8
        Top = 230
        Width = 368
        Height = 20
        Cursor = crArrow
        TabOrder = 3
        TabStop = True
        OnClick = cbSearchInAllChange
        Alignment = taLeftJustify
        Caption = 'Search in all active databases'
        ReturnIsTab = False
        Themed = True
        Version = '1.3.2.0'
      end
      object cbDatabases: TdxPickEdit
        Left = 129
        Top = 35
        Width = 368
        TabOrder = 1
        Anchors = ['akLeft', 'akTop', 'akRight']
        StyleController = IBEMainForm.MainSC
        DropDownRows = 20
        DropDownListStyle = True
      end
      object cbDescriptions: TIBECheckBox
        Left = 8
        Top = 205
        Width = 240
        Height = 20
        Cursor = crArrow
        TabOrder = 2
        TabStop = True
        Alignment = taLeftJustify
        Caption = 'Search in object descriptions'
        ReturnIsTab = False
        Themed = True
        Version = '1.3.2.0'
      end
      object cbIgnoreComments: TIBECheckBox
        Left = 8
        Top = 254
        Width = 465
        Height = 20
        Cursor = crArrow
        TabOrder = 4
        TabStop = True
        OnClick = cbSearchInAllChange
        Alignment = taLeftJustify
        Caption = 'Do NOT search in comments'
        ReturnIsTab = False
        Themed = True
        Version = '1.3.2.0'
      end
    end
  end
  object ActionList1: TActionList
    Left = 344
    Top = 8
    object actLocalize: TAction
      Caption = 'Localize'
      ShortCut = 57420
      OnExecute = actLocalizeExecute
    end
  end
end
