object frmExport: TfrmExport
  Left = 379
  Top = 291
  HelpContext = 3000
  BorderIcons = ['biSystemMenu']
  BorderStyle = bsSingle
  Caption = 'Export Data'
  ClientHeight = 362
  ClientWidth = 485
  Color = clBtnFace
  Constraints.MinHeight = 357
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Scaled = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object sohoLabel17: TLabel
    Left = 145
    Top = 18
    Width = 57
    Height = 13
    Caption = 'Cell spacing'
    Transparent = True
  end
  object Panel1: TPanel
    Left = 0
    Top = 323
    Width = 485
    Height = 39
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object Label10: TLabel
      Left = 0
      Top = 9
      Width = 99
      Height = 30
      Align = alLeft
      Caption = '  Records exported:  '
      Transparent = True
      Visible = False
    end
    object lbRecExported: TLabel
      Left = 99
      Top = 9
      Width = 6
      Height = 30
      Align = alLeft
      Caption = '0'
      Transparent = True
      Visible = False
    end
    object Bevel3: TBevel
      Left = 0
      Top = 0
      Width = 485
      Height = 9
      Align = alTop
      Shape = bsTopLine
    end
    object btStart: TButton
      Left = 322
      Top = 8
      Width = 75
      Height = 24
      Action = aStartExport
      Anchors = ['akTop', 'akRight']
      Caption = '&Start Export'
      Default = True
      TabOrder = 0
    end
    object btCancel: TButton
      Left = 405
      Top = 8
      Width = 75
      Height = 24
      Anchors = ['akTop', 'akRight']
      Cancel = True
      Caption = '&Cancel'
      TabOrder = 1
      OnClick = btCancelClick
      OnKeyDown = btCancelKeyDown
    end
  end
  object Pages: TIBEPageControl
    Left = 0
    Top = 0
    Width = 485
    Height = 323
    AdvOfficePagerStyler = IBEMainForm.PCStyler
    Align = alClient
    ActivePage = tsExportType
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
    TabOrder = 1
    TabStop = True
    NextPictureChanged = True
    PrevPictureChanged = True
    object tsExportType: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 485
      Height = 298
      Caption = 'Export &Type'
      PageAppearance.BorderColor = clNone
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
      TabAppearance.BackGround.ColorTo = 14537936
      TabAppearance.BackGround.Direction = gdHorizontal
      object sohoLabel1: TLabel
        Left = 8
        Top = 174
        Width = 69
        Height = 13
        Caption = 'Destination file'
        Transparent = True
      end
      object rgExpType: TRadioGroup
        Left = 9
        Top = 5
        Width = 467
        Height = 161
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = ' Export to  '
        Columns = 3
        ItemIndex = 0
        Items.Strings = ['MS Excel', 'MS Word', 'RTF', 'HTML', 'Text File', 'CSV File', 'DIF File', 'SYLK File', 'LaTeX', 'XML', 'Clipboard (as text)', 'Clipboard (as HTML)', 'DBF', 'XML Spreadsheet']
        TabOrder = 0
        OnClick = rgExpTypeClick
      end
      object cbView: TIBECheckBox
        Left = 7
        Top = 220
        Width = 437
        Height = 20
        TabOrder = 1
        TabStop = True
        Alignment = taLeftJustify
        Caption = 'Open file after export'
        ReturnIsTab = False
        Themed = True
        Version = '1.3.2.0'
      end
      object eFileName: TdxButtonEdit
        Left = 8
        Top = 191
        Width = 468
        TabOrder = 2
        OnExit = eFileNameExit
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
        OnButtonClick = eFileNameButtonClick
        ExistButtons = True
      end
      object cbOmitColumnCaptions: TIBECheckBox
        Left = 7
        Top = 242
        Width = 437
        Height = 20
        TabOrder = 3
        TabStop = True
        Alignment = taLeftJustify
        Caption = 'Omit column captions'
        ReturnIsTab = False
        Themed = True
        Version = '1.3.2.0'
      end
      object cbExportBlobs: TIBECheckBox
        Left = 7
        Top = 265
        Width = 437
        Height = 20
        TabOrder = 4
        TabStop = True
        Alignment = taLeftJustify
        Caption = 'Export text BLOB values'
        ReturnIsTab = False
        Themed = True
        Version = '1.3.2.0'
      end
    end
    object tsFormats: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 485
      Height = 298
      Caption = '&Formats'
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
      TabAppearance.BackGround.ColorTo = 14537936
      TabAppearance.BackGround.Direction = gdHorizontal
      object pcFormat: TIBEPageControl
        Left = 2
        Top = 2
        Width = 481
        Height = 294
        AdvOfficePagerStyler = IBEMainForm.PCStyler
        Align = alClient
        ActivePage = tsStdFormats
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
        object tsStdFormats: TAdvOfficePage
          Left = 0
          Top = 24
          Width = 481
          Height = 269
          Caption = '&Standard'
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
          TabAppearance.BackGround.ColorTo = 14537936
          TabAppearance.BackGround.Direction = gdHorizontal
          object sohoLabel2: TLabel
            Left = 0
            Top = 20
            Width = 121
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Currency Format'
            FocusControl = eCurFormat
            Transparent = True
          end
          object sohoLabel3: TLabel
            Left = 0
            Top = 143
            Width = 121
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Date Format'
            FocusControl = eDateFormat
            Transparent = True
          end
          object sohoLabel4: TLabel
            Left = 0
            Top = 49
            Width = 121
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Float Format'
            FocusControl = eFloatFormat
            Transparent = True
          end
          object sohoLabel5: TLabel
            Left = 0
            Top = 78
            Width = 121
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Integer Format'
            FocusControl = eIntFormat
            Transparent = True
          end
          object Label1: TLabel
            Left = 0
            Top = 115
            Width = 121
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'DateTime Format'
            FocusControl = eDateTimeFormat
            Transparent = True
          end
          object Label2: TLabel
            Left = 0
            Top = 172
            Width = 121
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Time Format'
            FocusControl = eTimeFormat
            Transparent = True
          end
          object lDecimalSeparator: TLabel
            Left = 8
            Top = 215
            Width = 260
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Decimal separator'
            Transparent = True
          end
          object eCurFormat: TdxEdit
            Left = 124
            Top = 17
            Width = 179
            TabOrder = 0
            AutoSize = False
            StyleController = IBEMainForm.MainSC
            Height = 21
          end
          object eDateFormat: TdxEdit
            Left = 124
            Top = 140
            Width = 179
            TabOrder = 4
            AutoSize = False
            StyleController = IBEMainForm.MainSC
            Height = 21
          end
          object eFloatFormat: TdxEdit
            Left = 124
            Top = 46
            Width = 179
            TabOrder = 1
            AutoSize = False
            StyleController = IBEMainForm.MainSC
            Height = 21
          end
          object eIntFormat: TdxEdit
            Left = 124
            Top = 75
            Width = 179
            TabOrder = 2
            AutoSize = False
            StyleController = IBEMainForm.MainSC
            Height = 21
          end
          object eDateTimeFormat: TdxEdit
            Left = 124
            Top = 112
            Width = 179
            TabOrder = 3
            AutoSize = False
            StyleController = IBEMainForm.MainSC
            Height = 21
          end
          object eTimeFormat: TdxEdit
            Left = 124
            Top = 169
            Width = 179
            TabOrder = 5
            AutoSize = False
            StyleController = IBEMainForm.MainSC
            Height = 21
          end
          object eDecimalSeparator: TdxEdit
            Left = 277
            Top = 212
            Width = 26
            TabOrder = 6
            Text = '.'
            OnExit = eDecimalSeparatorExit
            MaxLength = 1
            StyleController = IBEMainForm.MainSC
            StoredValues = 2
          end
        end
      end
    end
    object tsHTMLOptions: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 485
      Height = 298
      Caption = '&HTML Options'
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
      TabAppearance.BackGround.ColorTo = 14537936
      TabAppearance.BackGround.Direction = gdHorizontal
      object PageControl1: TIBEPageControl
        Left = 2
        Top = 2
        Width = 481
        Height = 294
        AdvOfficePagerStyler = IBEMainForm.PCStyler
        Align = alClient
        ActivePage = tsHTMLPreview
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
        object tsHTMLPreview: TAdvOfficePage
          Left = 0
          Top = 24
          Width = 481
          Height = 269
          Caption = '&Preview'
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
          TabAppearance.BackGround.ColorTo = 14537936
          TabAppearance.BackGround.Direction = gdHorizontal
          object HTMLPanel: TPanel
            Left = 2
            Top = 1
            Width = 477
            Height = 221
            Anchors = ['akLeft', 'akTop', 'akRight']
            BevelOuter = bvLowered
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            object sohoLabel6: TLabel
              Left = 350
              Top = 14
              Width = 44
              Height = 13
              Anchors = ['akTop', 'akRight']
              Caption = 'Template'
              FocusControl = cbxTemplate
              Transparent = True
            end
            object BackPanel: TVPanel
              Left = 5
              Top = 6
              Width = 340
              Height = 210
              Cursor = crHandPoint
              Hint = 'Click here for select background color'
              Anchors = ['akLeft', 'akTop', 'akRight']
              BevelOuter = bvLowered
              Color = clWhite
              Ctl3D = True
              ParentCtl3D = False
              TabOrder = 0
              OnClick = BackPanelClick
              object lbHTMLDefaultText: TRxLabel
                Tag = 1
                Left = 15
                Top = 7
                Width = 75
                Height = 16
                Hint = 'Click here for default font color select'
                Caption = 'Default text'
                Font.Charset = RUSSIAN_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = ['fsBold']
                ParentFont = False
                ShadowSize = 0
                OnClick = lbHTMLDefaultTextClick
                OnMouseEnter = lbHTMLALinkMouseEnter
                OnMouseLeave = lbHTMLALinkMouseLeave
              end
              object lbHTMLLink: TRxLabel
                Tag = 11
                Left = 10
                Top = 174
                Width = 99
                Height = 16
                Hint = 'Click here for non-visited link color select'
                Caption = 'Non-visited link'
                Font.Charset = RUSSIAN_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = ['fsBold']
                ParentFont = False
                ShadowSize = 0
                OnClick = lbHTMLDefaultTextClick
                OnMouseEnter = lbHTMLALinkMouseEnter
                OnMouseLeave = lbHTMLALinkMouseLeave
              end
              object lbHTMLVLink: TRxLabel
                Tag = 12
                Left = 125
                Top = 174
                Width = 72
                Height = 16
                Hint = 'Click here for visited link color select'
                Caption = 'Visited link'
                Font.Charset = RUSSIAN_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = ['fsBold']
                ParentFont = False
                ShadowSize = 0
                OnClick = lbHTMLDefaultTextClick
                OnMouseEnter = lbHTMLALinkMouseEnter
                OnMouseLeave = lbHTMLALinkMouseLeave
              end
              object lbHTMLALink: TRxLabel
                Tag = 13
                Left = 220
                Top = 174
                Width = 68
                Height = 16
                Hint = 'Click here for active link color select'
                Caption = 'Active link'
                Font.Charset = RUSSIAN_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = ['fsBold']
                ParentFont = False
                ShadowSize = 0
                OnClick = lbHTMLDefaultTextClick
                OnMouseEnter = lbHTMLALinkMouseEnter
                OnMouseLeave = lbHTMLALinkMouseLeave
              end
              object Panel2: TPanel
                Left = 6
                Top = 23
                Width = 298
                Height = 140
                BevelOuter = bvNone
                Caption = 'Panel2'
                ParentColor = True
                TabOrder = 0
                object ColHead1: TVPanel
                  Left = 7
                  Top = 8
                  Width = 77
                  Height = 25
                  Cursor = crHandPoint
                  Hint = 'Click here for header row color select'
                  BevelOuter = bvLowered
                  Color = 16744576
                  Font.Charset = RUSSIAN_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -15
                  Font.Name = 'Arial'
                  Font.Style = ['fsBold']
                  ParentFont = False
                  TabOrder = 0
                  OnClick = ColHead1Click
                  OnMouseEnter = ColHead3MouseEnter
                  OnMouseLeave = ColHead3MouseLeave
                  object Head1: TRxLabel
                    Left = 21
                    Top = 4
                    Width = 34
                    Height = 18
                    Cursor = crHandPoint
                    Hint = 'Click here to header font change'
                    Caption = 'Num'
                    ShadowSize = 0
                    OnClick = Head3Click
                    OnMouseEnter = Head3MouseEnter
                    OnMouseLeave = Head3MouseLeave
                  end
                end
                object ColHead2: TVPanel
                  Left = 84
                  Top = 8
                  Width = 105
                  Height = 25
                  Cursor = crHandPoint
                  Hint = 'Click for header row color select'
                  BevelOuter = bvLowered
                  Color = 16744576
                  Font.Charset = RUSSIAN_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -15
                  Font.Name = 'Arial'
                  Font.Style = ['fsBold']
                  ParentFont = False
                  TabOrder = 1
                  OnClick = ColHead1Click
                  OnMouseEnter = ColHead3MouseEnter
                  OnMouseLeave = ColHead3MouseLeave
                  object Head2: TRxLabel
                    Left = 32
                    Top = 4
                    Width = 42
                    Height = 18
                    Cursor = crHandPoint
                    Hint = 'Click here to header font change'
                    Caption = 'Name'
                    ShadowSize = 0
                    OnClick = Head3Click
                    OnMouseEnter = Head3MouseEnter
                    OnMouseLeave = Head3MouseLeave
                  end
                end
                object ColHead3: TVPanel
                  Left = 189
                  Top = 8
                  Width = 105
                  Height = 25
                  Cursor = crHandPoint
                  Hint = 'Click for header row color select'
                  BevelOuter = bvLowered
                  Color = 16744576
                  Font.Charset = RUSSIAN_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -15
                  Font.Name = 'Arial'
                  Font.Style = ['fsBold']
                  ParentFont = False
                  TabOrder = 2
                  OnClick = ColHead1Click
                  OnMouseEnter = ColHead3MouseEnter
                  OnMouseLeave = ColHead3MouseLeave
                  object Head3: TRxLabel
                    Left = 38
                    Top = 3
                    Width = 29
                    Height = 18
                    Cursor = crHandPoint
                    Hint = 'Click here to header font change'
                    Caption = 'Age'
                    ShadowSize = 0
                    OnClick = Head3Click
                    OnMouseEnter = Head3MouseEnter
                    OnMouseLeave = Head3MouseLeave
                  end
                end
                object Row1: TVPanel
                  Left = 7
                  Top = 33
                  Width = 77
                  Height = 25
                  Cursor = crHandPoint
                  Hint = 'Click for odd row color change'
                  Alignment = taLeftJustify
                  BevelOuter = bvLowered
                  Color = 8454143
                  Font.Charset = RUSSIAN_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -15
                  Font.Name = 'Arial'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 3
                  OnClick = Row1Click
                  OnMouseEnter = Row1MouseEnter
                  OnMouseLeave = Row1MouseLeave
                  object Data1: TRxLabel
                    Left = 1
                    Top = 1
                    Width = 14
                    Height = 23
                    Cursor = crHandPoint
                    Hint = 'Click here to table font change'
                    Align = alLeft
                    Caption = ' 1'
                    Layout = tlCenter
                    ShadowSize = 0
                    OnClick = Data1Click
                    OnMouseEnter = Data1MouseEnter
                    OnMouseLeave = Data1MouseLeave
                  end
                end
                object Row2: TVPanel
                  Left = 84
                  Top = 33
                  Width = 105
                  Height = 25
                  Cursor = crHandPoint
                  Hint = 'Click for odd row color change'
                  Alignment = taLeftJustify
                  BevelOuter = bvLowered
                  Color = 8454143
                  Font.Charset = RUSSIAN_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -15
                  Font.Name = 'Arial'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 4
                  OnClick = Row1Click
                  OnMouseEnter = Row1MouseEnter
                  OnMouseLeave = Row1MouseLeave
                  object Data5: TRxLabel
                    Left = 1
                    Top = 1
                    Width = 37
                    Height = 23
                    Cursor = crHandPoint
                    Hint = 'Click here to table font change'
                    Align = alLeft
                    Caption = ' John'
                    Layout = tlCenter
                    ShadowSize = 0
                    OnClick = Data1Click
                    OnMouseEnter = Data1MouseEnter
                    OnMouseLeave = Data1MouseLeave
                  end
                end
                object Row3: TVPanel
                  Left = 189
                  Top = 33
                  Width = 105
                  Height = 25
                  Cursor = crHandPoint
                  Hint = 'Click for odd row color change'
                  Alignment = taLeftJustify
                  BevelOuter = bvLowered
                  Color = 8454143
                  Font.Charset = RUSSIAN_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -15
                  Font.Name = 'Arial'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 5
                  OnClick = Row1Click
                  OnMouseEnter = Row1MouseEnter
                  OnMouseLeave = Row1MouseLeave
                  object Data9: TRxLabel
                    Left = 1
                    Top = 1
                    Width = 22
                    Height = 23
                    Cursor = crHandPoint
                    Hint = 'Click here to table font change'
                    Align = alLeft
                    Caption = ' 34'
                    Layout = tlCenter
                    ShadowSize = 0
                    OnClick = Data1Click
                    OnMouseEnter = Data1MouseEnter
                    OnMouseLeave = Data1MouseLeave
                  end
                end
                object OddRow3: TVPanel
                  Left = 189
                  Top = 58
                  Width = 105
                  Height = 25
                  Cursor = crHandPoint
                  Hint = 'Click for even row color change'
                  Alignment = taLeftJustify
                  BevelOuter = bvLowered
                  Color = 8421631
                  Font.Charset = RUSSIAN_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -15
                  Font.Name = 'Arial'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 6
                  OnClick = OddRow1Click
                  OnMouseEnter = OddRow1MouseEnter
                  OnMouseLeave = OddRow1MouseLeave
                  object Data10: TRxLabel
                    Left = 1
                    Top = 1
                    Width = 22
                    Height = 23
                    Cursor = crHandPoint
                    Hint = 'Click here to table font change'
                    Align = alLeft
                    Caption = ' 27'
                    Layout = tlCenter
                    ShadowSize = 0
                    OnClick = Data1Click
                    OnMouseEnter = Data1MouseEnter
                    OnMouseLeave = Data1MouseLeave
                  end
                end
                object OddRow2: TVPanel
                  Left = 84
                  Top = 58
                  Width = 105
                  Height = 25
                  Cursor = crHandPoint
                  Hint = 'Click for even row color change'
                  Alignment = taLeftJustify
                  BevelOuter = bvLowered
                  Color = 8421631
                  Font.Charset = RUSSIAN_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -15
                  Font.Name = 'Arial'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 7
                  OnClick = OddRow1Click
                  OnMouseEnter = OddRow1MouseEnter
                  OnMouseLeave = OddRow1MouseLeave
                  object Data6: TRxLabel
                    Left = 1
                    Top = 1
                    Width = 60
                    Height = 23
                    Cursor = crHandPoint
                    Hint = 'Click here to table font change'
                    Align = alLeft
                    Caption = ' Marcella'
                    Layout = tlCenter
                    ShadowSize = 0
                    OnClick = Data1Click
                    OnMouseEnter = Data1MouseEnter
                    OnMouseLeave = Data1MouseLeave
                  end
                end
                object OddRow1: TVPanel
                  Left = 7
                  Top = 58
                  Width = 77
                  Height = 25
                  Cursor = crHandPoint
                  Hint = 'Click for even row color change'
                  Alignment = taLeftJustify
                  BevelOuter = bvLowered
                  Color = 8421631
                  Font.Charset = RUSSIAN_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -15
                  Font.Name = 'Arial'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 8
                  OnClick = OddRow1Click
                  OnMouseEnter = OddRow1MouseEnter
                  OnMouseLeave = OddRow1MouseLeave
                  object Data2: TRxLabel
                    Left = 1
                    Top = 1
                    Width = 14
                    Height = 23
                    Cursor = crHandPoint
                    Hint = 'Click here to table font change'
                    Align = alLeft
                    Caption = ' 2'
                    Layout = tlCenter
                    ShadowSize = 0
                    OnClick = Data1Click
                    OnMouseEnter = Data1MouseEnter
                    OnMouseLeave = Data1MouseLeave
                  end
                end
                object Row4: TVPanel
                  Left = 7
                  Top = 83
                  Width = 77
                  Height = 25
                  Cursor = crHandPoint
                  Hint = 'Click for odd row color change'
                  Alignment = taLeftJustify
                  BevelOuter = bvLowered
                  Color = 8454143
                  Font.Charset = RUSSIAN_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -15
                  Font.Name = 'Arial'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 9
                  OnClick = Row1Click
                  OnMouseEnter = Row1MouseEnter
                  OnMouseLeave = Row1MouseLeave
                  object Data3: TRxLabel
                    Left = 1
                    Top = 1
                    Width = 14
                    Height = 23
                    Cursor = crHandPoint
                    Hint = 'Click here to table font change'
                    Align = alLeft
                    Caption = ' 3'
                    Layout = tlCenter
                    ShadowSize = 0
                    OnClick = Data1Click
                    OnMouseEnter = Data1MouseEnter
                    OnMouseLeave = Data1MouseLeave
                  end
                end
                object Row5: TVPanel
                  Left = 84
                  Top = 83
                  Width = 105
                  Height = 25
                  Cursor = crHandPoint
                  Hint = 'Click for odd row color change'
                  Alignment = taLeftJustify
                  BevelOuter = bvLowered
                  Color = 8454143
                  Font.Charset = RUSSIAN_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -15
                  Font.Name = 'Arial'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 10
                  OnClick = Row1Click
                  OnMouseEnter = Row1MouseEnter
                  OnMouseLeave = Row1MouseLeave
                  object Data7: TRxLabel
                    Left = 1
                    Top = 1
                    Width = 32
                    Height = 23
                    Cursor = crHandPoint
                    Hint = 'Click here to table font change'
                    Align = alLeft
                    Caption = ' Alex'
                    Layout = tlCenter
                    ShadowSize = 0
                    OnClick = Data1Click
                    OnMouseEnter = Data1MouseEnter
                    OnMouseLeave = Data1MouseLeave
                  end
                end
                object Row6: TVPanel
                  Left = 189
                  Top = 83
                  Width = 105
                  Height = 25
                  Cursor = crHandPoint
                  Hint = 'Click for odd row color change'
                  Alignment = taLeftJustify
                  BevelOuter = bvLowered
                  Color = 8454143
                  Font.Charset = RUSSIAN_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -15
                  Font.Name = 'Arial'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 11
                  OnClick = Row1Click
                  OnMouseEnter = Row1MouseEnter
                  OnMouseLeave = Row1MouseLeave
                  object Data11: TRxLabel
                    Left = 1
                    Top = 1
                    Width = 22
                    Height = 23
                    Cursor = crHandPoint
                    Hint = 'Click here to table font change'
                    Align = alLeft
                    Caption = ' 25'
                    Layout = tlCenter
                    ShadowSize = 0
                    OnClick = Data1Click
                    OnMouseEnter = Data1MouseEnter
                    OnMouseLeave = Data1MouseLeave
                  end
                end
                object OddRow6: TVPanel
                  Left = 189
                  Top = 108
                  Width = 105
                  Height = 25
                  Cursor = crHandPoint
                  Hint = 'Click for even row color change'
                  Alignment = taLeftJustify
                  BevelOuter = bvLowered
                  Color = 8421631
                  Font.Charset = RUSSIAN_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -15
                  Font.Name = 'Arial'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 12
                  OnClick = OddRow1Click
                  OnMouseEnter = OddRow1MouseEnter
                  OnMouseLeave = OddRow1MouseLeave
                  object Data12: TRxLabel
                    Left = 1
                    Top = 1
                    Width = 22
                    Height = 23
                    Cursor = crHandPoint
                    Hint = 'Click here to table font change'
                    Align = alLeft
                    Caption = ' 48'
                    Layout = tlCenter
                    ShadowSize = 0
                    OnClick = Data1Click
                    OnMouseEnter = Data1MouseEnter
                    OnMouseLeave = Data1MouseLeave
                  end
                end
                object OddRow5: TVPanel
                  Left = 84
                  Top = 108
                  Width = 105
                  Height = 25
                  Cursor = crHandPoint
                  Hint = 'Click for even row color change'
                  Alignment = taLeftJustify
                  BevelOuter = bvLowered
                  Color = 8421631
                  Font.Charset = RUSSIAN_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -15
                  Font.Name = 'Arial'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 13
                  OnClick = OddRow1Click
                  OnMouseEnter = OddRow1MouseEnter
                  OnMouseLeave = OddRow1MouseLeave
                  object Data8: TRxLabel
                    Left = 1
                    Top = 1
                    Width = 35
                    Height = 23
                    Cursor = crHandPoint
                    Hint = 'Click here to table font change'
                    Align = alLeft
                    Caption = ' Julia'
                    Layout = tlCenter
                    ShadowSize = 0
                    OnClick = Data1Click
                    OnMouseEnter = Data1MouseEnter
                    OnMouseLeave = Data1MouseLeave
                  end
                end
                object OddRow4: TVPanel
                  Left = 7
                  Top = 108
                  Width = 77
                  Height = 25
                  Cursor = crHandPoint
                  Hint = 'Click for even row color change'
                  Alignment = taLeftJustify
                  BevelOuter = bvLowered
                  Color = 8421631
                  Font.Charset = RUSSIAN_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -15
                  Font.Name = 'Arial'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 14
                  OnClick = OddRow1Click
                  OnMouseEnter = OddRow1MouseEnter
                  OnMouseLeave = OddRow1MouseLeave
                  object Data4: TRxLabel
                    Left = 1
                    Top = 1
                    Width = 14
                    Height = 23
                    Cursor = crHandPoint
                    Hint = 'Click here to table font change'
                    Align = alLeft
                    Caption = ' 4'
                    Layout = tlCenter
                    ShadowSize = 0
                    OnClick = Data1Click
                    OnMouseEnter = Data1MouseEnter
                    OnMouseLeave = Data1MouseLeave
                  end
                end
              end
            end
            object cbxTemplate: TdxPickEdit
              Left = 350
              Top = 32
              Width = 120
              TabOrder = 1
              Anchors = ['akTop', 'akRight']
              StyleController = IBEMainForm.MainSC
              OnChange = cbxTemplateChange
              DropDownRows = 40
              DropDownListStyle = True
              Items.Strings = ['Custom', 'Black&White', 'Classic', 'ColorFul', 'Gray', 'MS_Money', 'Murky', 'Olive', 'Plain', 'Simple']
            end
            object btSaveTemplate: TButton
              Left = 350
              Top = 58
              Width = 120
              Height = 24
              Anchors = ['akTop', 'akRight']
              Caption = 'S&ave as template ... '
              TabOrder = 2
              OnClick = btSaveTemplateClick
            end
            object btLoadTemplate: TButton
              Left = 350
              Top = 86
              Width = 120
              Height = 24
              Anchors = ['akTop', 'akRight']
              Caption = '&Load template...'
              TabOrder = 3
              OnClick = btLoadTemplateClick
            end
          end
        end
        object tsHTMLBasic: TAdvOfficePage
          Left = 0
          Top = 24
          Width = 481
          Height = 269
          Caption = '&Basic'
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
          TabAppearance.BackGround.ColorTo = 14537936
          TabAppearance.BackGround.Direction = gdHorizontal
          object sohoLabel12: TLabel
            Left = 4
            Top = 35
            Width = 55
            Height = 13
            Caption = 'Header text'
            FocusControl = mmHTMLHeader
            Transparent = True
          end
          object sohoLabel13: TLabel
            Left = 3
            Top = 135
            Width = 50
            Height = 13
            Caption = 'Footer text'
            FocusControl = mmHTMLFooter
            Transparent = True
          end
          object sohoLabel11: TLabel
            Left = 3
            Top = 8
            Width = 43
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Title'
            FocusControl = edHTMLTitle
            Transparent = True
          end
          object mmHTMLHeader: TMemo
            Left = 4
            Top = 54
            Width = 479
            Height = 73
            Anchors = ['akLeft', 'akTop', 'akRight']
            TabOrder = 0
          end
          object mmHTMLFooter: TMemo
            Left = 3
            Top = 154
            Width = 479
            Height = 67
            Anchors = ['akLeft', 'akTop', 'akRight']
            TabOrder = 1
          end
          object edHTMLTitle: TdxEdit
            Left = 49
            Top = 5
            Width = 433
            TabOrder = 2
            Anchors = ['akLeft', 'akTop', 'akRight']
            AutoSize = False
            StyleController = IBEMainForm.MainSC
            Height = 21
          end
        end
        object tsHTMLAdvanced: TAdvOfficePage
          Left = 0
          Top = 24
          Width = 481
          Height = 269
          Caption = '&Advanced'
          ImageIndex = 2
          PageAppearance.BorderColor = clNone
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
          TabAppearance.BackGround.ColorTo = 14537936
          TabAppearance.BackGround.Direction = gdHorizontal
          object sohoLabel14: TLabel
            Left = 202
            Top = 11
            Width = 66
            Height = 13
            Caption = 'CSS file name'
            Transparent = True
          end
          object rgCSS: TRadioGroup
            Left = 3
            Top = 2
            Width = 194
            Height = 49
            Caption = 'Cascade Style Sheets using'
            Columns = 2
            ItemIndex = 0
            Items.Strings = ['Internal', 'External']
            TabOrder = 0
          end
          object GroupBox1: TGroupBox
            Left = 4
            Top = 53
            Width = 476
            Height = 90
            Anchors = ['akLeft', 'akTop', 'akRight']
            Caption = 'Body options'
            TabOrder = 1
            object sohoLabel20: TLabel
              Left = 4
              Top = 67
              Width = 114
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Advanced attributes'
              FocusControl = edHTMLBodyAdvanced
              Transparent = True
            end
            object sohoLabel21: TLabel
              Left = 4
              Top = 17
              Width = 114
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Default font'
              FocusControl = fcHTMLDefautFont
              Transparent = True
            end
            object sohoLabel22: TLabel
              Left = 4
              Top = 43
              Width = 114
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Background'
              Transparent = True
            end
            object edHTMLBodyAdvanced: TdxEdit
              Left = 121
              Top = 64
              Width = 350
              TabOrder = 0
              Anchors = ['akLeft', 'akTop', 'akRight']
              AutoSize = False
              StyleController = IBEMainForm.MainSC
              Height = 20
            end
            object fcHTMLDefautFont: TFontComboBox
              Left = 121
              Top = 14
              Width = 244
              Height = 20
              TabOrder = 1
            end
            object HTMLBackground: TdxButtonEdit
              Left = 121
              Top = 39
              Width = 350
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
              OnButtonClick = HTMLBackgroundButtonClick
              ExistButtons = True
            end
          end
          object gbHTMLTableOptions: TGroupBox
            Left = 4
            Top = 145
            Width = 476
            Height = 77
            Anchors = ['akLeft', 'akTop', 'akRight']
            Caption = 'Table Options'
            TabOrder = 2
            object sohoLabel15: TLabel
              Left = 4
              Top = 26
              Width = 74
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Cell padding'
              FocusControl = seHTMLTableCellPadding
              Transparent = True
            end
            object sohoLabel16: TLabel
              Left = 169
              Top = 26
              Width = 73
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Cell spacing'
              FocusControl = seHTMLTableCellSpacing
              Transparent = True
            end
            object sohoLabel18: TLabel
              Left = 311
              Top = 26
              Width = 73
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Border'
              FocusControl = seHTMLTableBorder
              Transparent = True
            end
            object sohoLabel19: TLabel
              Left = 5
              Top = 54
              Width = 114
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Advanced attributes'
              FocusControl = edHTMLTableAdvanced
              Transparent = True
            end
            object seHTMLTableCellPadding: TdxSpinEdit
              Left = 82
              Top = 23
              Width = 48
              TabOrder = 0
              StyleController = IBEMainForm.MainSC
              MaxValue = -6.80564733841877e+38
              StoredValues = 16
            end
            object seHTMLTableCellSpacing: TdxSpinEdit
              Left = 246
              Top = 23
              Width = 48
              TabOrder = 1
              StyleController = IBEMainForm.MainSC
              MaxValue = -6.80564733841877e+38
              StoredValues = 16
            end
            object seHTMLTableBorder: TdxSpinEdit
              Left = 387
              Top = 23
              Width = 48
              TabOrder = 2
              StyleController = IBEMainForm.MainSC
              MaxValue = -6.80564733841877e+38
              StoredValues = 16
            end
            object edHTMLTableAdvanced: TdxEdit
              Left = 122
              Top = 51
              Width = 350
              TabOrder = 3
              Anchors = ['akLeft', 'akTop', 'akRight']
              AutoSize = False
              StyleController = IBEMainForm.MainSC
              Height = 21
            end
          end
          object edHTMLCSS: TdxButtonEdit
            Left = 203
            Top = 28
            Width = 276
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
            OnButtonClick = edHTMLCSSButtonClick
            ExistButtons = True
          end
        end
      end
    end
    object tsExcelOptions: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 485
      Height = 298
      Caption = '&Excel Options'
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
      TabAppearance.BackGround.ColorTo = 14537936
      TabAppearance.BackGround.Direction = gdHorizontal
      object sohoLabel7: TLabel
        Left = 12
        Top = 45
        Width = 101
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Page footer'
        Transparent = True
      end
      object sohoLabel8: TLabel
        Left = 5
        Top = 19
        Width = 108
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Page header'
        Transparent = True
      end
      object sohoLabel9: TLabel
        Left = 10
        Top = 79
        Width = 103
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Default font'
        Transparent = True
        Visible = False
      end
      object sohoLabel10: TLabel
        Left = 12
        Top = 121
        Width = 101
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Row header font'
        Transparent = True
        Visible = False
      end
      object pbxExcelDefaultFont: TPaintBox
        Left = 116
        Top = 70
        Width = 233
        Height = 35
        Color = clBtnFace
        ParentColor = False
        Visible = False
        OnPaint = pbxExcelDefaultFontPaint
      end
      object pbxExcelHeaderFont: TPaintBox
        Left = 116
        Top = 112
        Width = 234
        Height = 35
        Visible = False
        OnPaint = pbxExcelHeaderFontPaint
      end
      object edExcelPageFooter: TdxEdit
        Left = 117
        Top = 43
        Width = 180
        TabOrder = 0
        Text = 'Page &P of &N'
        AutoSize = False
        StyleController = IBEMainForm.MainSC
        Height = 20
      end
      object edExcelPageHeader: TdxEdit
        Left = 117
        Top = 17
        Width = 180
        TabOrder = 1
        AutoSize = False
        StyleController = IBEMainForm.MainSC
        Height = 20
      end
      object btExcelDFontSelect: TButton
        Left = 358
        Top = 75
        Width = 75
        Height = 24
        Caption = 'Select...'
        TabOrder = 2
        Visible = False
        OnClick = btExcelDFontSelectClick
      end
      object btExcelHFontSelect: TButton
        Left = 360
        Top = 117
        Width = 75
        Height = 24
        Caption = 'Select...'
        TabOrder = 3
        Visible = False
        OnClick = btExcelHFontSelectClick
      end
    end
    object tsDBFOptions: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 485
      Height = 298
      Caption = 'DBF Options'
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
      TabAppearance.BackGround.ColorTo = 14537936
      TabAppearance.BackGround.Direction = gdHorizontal
      object cbDBFConvertToDOS: TIBECheckBox
        Left = 8
        Top = 12
        Width = 437
        Height = 20
        TabOrder = 0
        TabStop = True
        Alignment = taLeftJustify
        Caption = 'Convert strings to DOS'
        ReturnIsTab = False
        Themed = True
        Version = '1.3.2.0'
      end
      object cbDBFLongStringsToMemo: TIBECheckBox
        Left = 8
        Top = 36
        Width = 437
        Height = 20
        TabOrder = 1
        TabStop = True
        Alignment = taLeftJustify
        Caption = 'Convert long strings to memo'
        ReturnIsTab = False
        Themed = True
        Version = '1.3.2.0'
      end
      object cbDateTimeAsDate: TIBECheckBox
        Left = 8
        Top = 60
        Width = 437
        Height = 20
        TabOrder = 2
        TabStop = True
        Alignment = taLeftJustify
        Caption = 'Extract DateTime as Date'
        ReturnIsTab = False
        Themed = True
        Version = '1.3.2.0'
      end
    end
    object tsCSVOptions: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 485
      Height = 298
      Caption = 'CSV Options'
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
      TabAppearance.BackGround.ColorTo = 14537936
      TabAppearance.BackGround.Direction = gdHorizontal
      object lCSVSeparator: TLabel
        Left = 8
        Top = 41
        Width = 70
        Height = 13
        Caption = 'CSV Separator'
        Transparent = True
      end
      object cbCSVQuoteStrings: TIBECheckBox
        Left = 7
        Top = 5
        Width = 437
        Height = 20
        TabOrder = 0
        TabStop = True
        Alignment = taLeftJustify
        Caption = 'Quote strings'
        ReturnIsTab = False
        Themed = True
        Version = '1.3.2.0'
      end
      object eCSVSeparator: TdxEdit
        Left = 87
        Top = 38
        Width = 26
        TabOrder = 1
        Text = ';'
        MaxLength = 1
        StyleController = IBEMainForm.MainSC
        StoredValues = 2
      end
    end
    object tsXMLOptions: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 485
      Height = 298
      Caption = 'XML Options'
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
      TabAppearance.BackGround.ColorTo = 14537936
      TabAppearance.BackGround.Direction = gdHorizontal
      object lXMLEncoding: TLabel
        Left = 46
        Top = 16
        Width = 45
        Height = 13
        Alignment = taRightJustify
        Caption = 'Encoding'
        Transparent = True
      end
      object cbXMLEncoding: TdxPickEdit
        Left = 96
        Top = 13
        Width = 121
        TabOrder = 0
        StyleController = IBEMainForm.MainSC
        OnChange = cbXMLEncodingChange
        DropDownRows = 20
        Items.Strings = ['EUC-JP', 'ISO-8859-1', 'ISO-8859-10', 'ISO-8859-2', 'ISO-8859-3', 'ISO-8859-4', 'ISO-8859-5', 'ISO-8859-6', 'ISO-8859-7', 'ISO-8859-8', 'ISO-8859-9', 'Shift-JIS', 'UTF-16', 'UTF-8', 'WINDOWS-1251']
        Sorted = True
      end
      object cbXMLStringFieldsAsText: TIBECheckBox
        Left = 9
        Top = 50
        Width = 425
        Height = 20
        TabOrder = 1
        TabStop = True
        Alignment = taLeftJustify
        Caption = 'String fields as text'
        ReturnIsTab = False
        Themed = True
        Version = '1.3.2.0'
      end
      object cbXMLMemoFieldsAsText: TIBECheckBox
        Left = 9
        Top = 74
        Width = 425
        Height = 20
        TabOrder = 2
        TabStop = True
        Alignment = taLeftJustify
        Caption = 'Memo fields as text'
        ReturnIsTab = False
        Themed = True
        Version = '1.3.2.0'
      end
      object cbXMLDateTimeFieldsAsText: TIBECheckBox
        Left = 9
        Top = 98
        Width = 425
        Height = 20
        TabOrder = 3
        TabStop = True
        Alignment = taLeftJustify
        Caption = 'DateTime fields as text'
        ReturnIsTab = False
        Themed = True
        Version = '1.3.2.0'
      end
      object cbXMLConvertToUTF8: TIBECheckBox
        Left = 9
        Top = 121
        Width = 425
        Height = 20
        TabOrder = 4
        TabStop = True
        Visible = False
        Alignment = taLeftJustify
        Caption = 'Encode text to UTF8 (if not encoded yet)'
        ReturnIsTab = False
        Themed = True
        Version = '1.3.2.0'
      end
    end
    object tsClipboardOptions: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 485
      Height = 298
      Caption = 'Clipboard Options'
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
      TabAppearance.BackGround.ColorTo = 14537936
      TabAppearance.BackGround.Direction = gdHorizontal
      object cbClipboardReplaceNonPrintable: TIBECheckBox
        Left = 7
        Top = 12
        Width = 437
        Height = 20
        TabOrder = 0
        TabStop = True
        Alignment = taLeftJustify
        Caption = 'Replace non-printable characters with spaces'
        ReturnIsTab = False
        Themed = True
        Version = '1.3.2.0'
      end
      object cbClipboardQuoteStrings: TIBECheckBox
        Left = 7
        Top = 37
        Width = 437
        Height = 20
        TabOrder = 1
        TabStop = True
        Alignment = taLeftJustify
        Caption = 'Quote string values'
        ReturnIsTab = False
        Themed = True
        Version = '1.3.2.0'
      end
      object cbClipboardReplaceCRLF: TIBECheckBox
        Left = 7
        Top = 61
        Width = 437
        Height = 20
        TabOrder = 2
        TabStop = True
        Alignment = taLeftJustify
        Caption = 'Replace CR+LF characters with LF only'
        ReturnIsTab = False
        Themed = True
        Version = '1.3.2.0'
      end
    end
  end
  object ExcelExp: TVExcelExport
    ExcelOptions.PageFooter = 'Page &P of &N'
    ExcelOptions.DefaultFont.Charset = DEFAULT_CHARSET
    ExcelOptions.DefaultFont.Color = clWindowText
    ExcelOptions.DefaultFont.Height = -13
    ExcelOptions.DefaultFont.Name = 'Arial'
    ExcelOptions.DefaultFont.Style = []
    ExcelOptions.RowHeaderFont.Charset = DEFAULT_CHARSET
    ExcelOptions.RowHeaderFont.Color = clWindowText
    ExcelOptions.RowHeaderFont.Height = -13
    ExcelOptions.RowHeaderFont.Name = 'Arial'
    ExcelOptions.RowHeaderFont.Style = ['fsBold']
    Formats.DateTimeFormat = 'dd.MM.yy'
    Formats.IntegerFormat = '0'
    Formats.CurrencyFormat = '00.00ð.'
    Formats.FloatFormat = '00.00'
    OnRecordExported = ExcelExpRecordExported
    Left = 339
    Top = 80
  end
  object RTFExp: TVRTFExport
    Formats.DateTimeFormat = 'dd.MM.yy'
    Formats.IntegerFormat = '0'
    Formats.CurrencyFormat = '00.00;ð.'
    Formats.FloatFormat = '00.00'
    OnRecordExported = ExcelExpRecordExported
    Left = 265
    Top = 181
  end
  object HTMLExp: TVHTMLExport
    UsingCSS = usInternal
    UseGraphics = False
    TableOptions.CellPadding = 4
    TableOptions.CellSpacing = 1
    TableOptions.HeadersRowBgColor = 3342540
    TableOptions.HeadersRowFontColor = clWhite
    TableOptions.TableBgColor = clWhite
    TableOptions.TableFontColor = clBlack
    TableOptions.OddRowBgColor = 61946
    HTMLOptions.BackgroundColor = 6723891
    HTMLOptions.LinkColor = 13395456
    HTMLOptions.VLinkColor = 12664722
    HTMLOptions.ALinkColor = clBlue
    HTMLOptions.TextFont.Charset = DEFAULT_CHARSET
    HTMLOptions.TextFont.Color = clWhite
    HTMLOptions.TextFont.Height = -11
    HTMLOptions.TextFont.Name = 'Arial'
    HTMLOptions.TextFont.Style = []
    HTMLTemplate = htColorFul
    MaxRecords = 0
    Footer.Strings = ['<br>']
    Header.Strings = ['<br>']
    Formats.DateTimeFormat = 'dd.MM.yy'
    Formats.IntegerFormat = '0'
    Formats.CurrencyFormat = '00.00ð.'
    Formats.FloatFormat = '00.00'
    OnRecordExported = ExcelExpRecordExported
    Left = 341
    Top = 45
  end
  object ASCIIExp: TVASCIIExport
    ExportType = etCSV
    TxtOptions.Spacing = 2
    QuoteStrings = False
    Formats.DateTimeFormat = 'dd.MM.yy'
    Formats.IntegerFormat = '0'
    Formats.CurrencyFormat = '#0.00ð.'
    Formats.FloatFormat = '#0.00'
    OnRecordExported = ExcelExpRecordExported
    Left = 344
    Top = 154
  end
  object sdExportFile: TSaveDialog
    DefaultExt = 'xls'
    Filter = 'Microsoft Excel (*.xls)|*.xls'
    Options = ['ofOverwritePrompt', 'ofHideReadOnly']
    Left = 131
    Top = 158
  end
  object ColorDialog: TColorDialog
    Ctl3D = True
    Left = 158
    Top = 31
  end
  object ActionList1: TActionList
    OnUpdate = ActionList1Update
    Left = 224
    Top = 24
    object aStartExport: TAction
      Caption = 'Start Export'
      ShortCut = 16467
      OnExecute = aStartExportExecute
    end
  end
  object sdTemplate: TSaveDialog
    DefaultExt = 'htf'
    Filter = 'HTML template file (*.htf)|*.htf'
    Title = 'Save as HTML template'
    Left = 19
    Top = 229
  end
  object odTemplate: TOpenDialog
    DefaultExt = 'htf'
    Filter = 'HTML template file (*.htf)|*.htf'
    Title = 'Load HTML template'
    Left = 20
    Top = 255
  end
  object FontDialog: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MinFontSize = 0
    MaxFontSize = 0
    Left = 420
    Top = 233
  end
  object LaTeXExp: TVLaTeXExport
    LaTeXOptions.DocumentParams = 'a4paper'
    LaTeXOptions.CodePage = 1251
    LaTeXOptions.Languages = 'english'
    OnRecordExported = ExcelExpRecordExported
    Left = 341
    Top = 113
  end
  object XMLExp: TVXMLExport
    Formats.DateTimeFormat = 'dd.MM.yy'
    Formats.IntegerFormat = '0'
    Formats.CurrencyFormat = '00.00ð.'
    Formats.FloatFormat = '00.00'
    XMLExportOptions = ['xmlexpMetaData']
    XMLOptions.XMLVersion = '1.0'
    XMLOptions.DataPacketVersion = '2.0'
    XMLOptions.tagTitle = 'TITLE'
    XMLOptions.tagDATAPACKET = 'DATAPACKET'
    XMLOptions.tagMetaData = 'METADATA'
    XMLOptions.tagFIELDS = 'FIELDS'
    XMLOptions.tagFIELD = 'FIELD'
    XMLOptions.tagROWDATA = 'ROWDATA'
    XMLOptions.tagROW = 'ROW'
    XMLOptions.tagPARAMS = 'PARAMS'
    Left = 404
    Top = 56
  end
  object XMLD: TXMLDataset
    FileVersion = -0.0
    RecordCount = 0
    FieldDefCount = 0
    IndexDefCount = 0
    HasFieldDefs = False
    HasIndexDefs = False
    HasRecordData = False
    HasChanges = False
    Options = []
    Left = 372
    Top = 232
  end
  object ClipbrdExp: TVClipbrdExport
    ReplaceNonPrintableCharacters = True
    QuoteStrings = False
    ReplaceCRLF = False
    OnRecordExported = ExcelExpRecordExported
    Left = 252
    Top = 96
  end
  object SD: TSaveDialog
    Left = 156
    Top = 304
  end
  object SD2: TSaveDialog
    DefaultExt = 'css'
    Filter = 'CSS files (*.css)|*.css|All files (*.*)|*.*'
    Left = 188
    Top = 304
  end
  object OD: TOpenDialog
    Filter = 'Graphics files (*.jpg, *.gif, *.bmp)|*.jpg; *.gif;*.bmp|All files (*.*)|*.*'
    Left = 220
    Top = 305
  end
  object DBFExp: TVDBFExport
    ConvertToDOS = False
    LongStringsToMemo = False
    DateTimeAsDate = False
    OnRecordExported = ExcelExpRecordExported
    Left = 400
    Top = 95
  end
end
