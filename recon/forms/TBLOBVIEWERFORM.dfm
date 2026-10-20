object BlobViewerForm: TBlobViewerForm
  Left = 277
  Top = 252
  Width = 1002
  Height = 419
  HelpContext = 4600
  Caption = 'Blob Viewer/Editor'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object SplitterLeft: TdfsSplitter
    Left = 199
    Top = 26
    Width = 3
    Height = 354
    Cursor = crHSplit
    Align = alLeft
    ResizeStyle = rsUpdate
    OnCanResize = SplitterLeftCanResize
    Maximized = False
    Minimized = False
    ButtonCursor = crDefault
  end
  object Pages: TIBEPageControl
    Left = 202
    Top = 26
    Width = 784
    Height = 354
    AdvOfficePagerStyler = IBEMainForm.PCStyler
    Align = alClient
    ActivePage = tsText
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
    Visible = False
    OnChange = PagesChange
    TabOrder = 0
    TabStop = True
    NextPictureChanged = True
    PrevPictureChanged = True
    object tsText: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 784
      Height = 329
      Caption = 'As Text'
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
      object EditFm: TEditFrame
        Top = 1
        Width = 784
        Height = 328
        object EditM: TSQLMemo
          Width = 784
          Height = 310
        end
        object pIncSearch: TPanel
          Top = 310
          Width = 784
        end
      end
    end
    object tsHex: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 784
      Height = 329
      Caption = 'As Hex'
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
      object he: THexEditor
        Left = 0
        Top = 1
        Width = 784
        Height = 328
        SPColorPDividerF = clBtnFace
        HPPaintCompleteLines = True
        UseFastBlockTransfers = False
        OPFont.Charset = RUSSIAN_CHARSET
        OPFont.Color = clWindowText
        OPFont.Height = -12
        OPFont.Name = 'Courier New'
        OPFont.Style = ['fsBold']
        HPFont.Charset = DEFAULT_CHARSET
        HPFont.Color = clWindowText
        HPFont.Height = -12
        HPFont.Name = 'Courier New'
        HPFont.Style = []
        SPFont.Charset = DEFAULT_CHARSET
        SPFont.Color = clWindowText
        SPFont.Height = -12
        SPFont.Name = 'Courier New'
        SPFont.Style = []
        ReadOnly = False
        Align = alClient
        Constraints.MinWidth = 150
        OnChange = heChange
      end
    end
    object tsPicture: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 784
      Height = 329
      Caption = 'As Picture'
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
        Left = 0
        Top = 1
        Width = 784
        Height = 328
        Align = alClient
        TabOrder = 0
        object Image: TImage
          Left = 0
          Top = 0
          Width = 447
          Height = 291
          AutoSize = True
        end
      end
    end
    object tsReport: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 784
      Height = 329
      Caption = 'As Report'
      ImageIndex = 3
      PageAppearance.BorderColor = clNone
      PageAppearance.Color = clBtnFace
      PageAppearance.ColorTo = 15195349
      PageAppearance.ColorMirror = 15195349
      PageAppearance.ColorMirrorTo = 16513776
      PageAppearance.Gradient = ggVertical
      PageAppearance.GradientMirror = ggVertical
      TabVisible = False
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
    end
    object tsRtf: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 784
      Height = 329
      Caption = 'As RTF'
      ImageIndex = 4
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
      object RichM: TRxDBRichEdit
        Left = 0
        Top = 1
        Width = 784
        Height = 328
        Align = alClient
        TabOrder = 0
      end
    end
    object tsWeb: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 784
      Height = 329
      Caption = 'As Web Page'
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
    end
    object tsXML: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 784
      Height = 329
      Caption = 'As XML'
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
    end
    object tsBLR: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 784
      Height = 329
      Caption = 'As BLR'
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
      object BLRFm: TEditFrame
        Top = 1
        Width = 784
        Height = 328
        object EditM: TSQLMemo
          Width = 784
          Height = 310
          OnPaintLineNumber = BLRFmEditMPaintLineNumber
        end
        object pIncSearch: TPanel
          Top = 310
          Width = 784
        end
      end
    end
    object tsUnicode: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 784
      Height = 329
      Caption = 'As Unicode Text'
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
      object mUnicode: TTntMemo
        Tag = 1000
        Left = 0
        Top = 1
        Width = 784
        Height = 328
        Align = alClient
        ScrollBars = ssBoth
        TabOrder = 0
        OnChange = mUnicodeChange
      end
    end
    object tsBlock: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 784
      Height = 329
      Caption = 'As IBE/FB Block'
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
      object BlockEditFm: TBlockEditFrame
        Top = 1
        Width = 784
        Height = 328
        Align = alClient
        object SplitterBottom: TdfsSplitter
          Top = 131
          Width = 784
        end
        object DockBottom: TTBDock
          Top = 134
          Width = 784
          object twResults: TTBToolWindow
            ClientAreaWidth = 771
            object Pages: TIBEPageControl
              Width = 771
              NextPictureChanged = True
              PrevPictureChanged = True
              object tsParams: TAdvOfficePage
                Width = 771
                object tlParams: TdxTreeList
                  Width = 771
                end
              end
              object tsWatches: TAdvOfficePage
                Width = 771
                object tlWatches: TdxTreeList
                  Width = 771
                end
              end
              object tsLastStmt: TAdvOfficePage
                Width = 771
                object LastStmtFm: TEditFrame
                  Width = 771
                  object EditM: TSQLMemo
                    Width = 771
                  end
                  object pIncSearch: TPanel
                    Width = 771
                  end
                end
              end
              object tsBreakpoints: TAdvOfficePage
                Width = 771
                object tlBreakPoints: TdxTreeList
                  Width = 771
                end
              end
              object tsMessages: TAdvOfficePage
                Width = 771
                object Splitter1: TdfsSplitter
                  Width = 771
                end
                object tlMessages: TdxTreeList
                  Width = 771
                end
                object MessagesM: TdxMemo
                  Width = 771
                  Height = 89
                  StoredValues = 64
                end
              end
              object tsResults: TAdvOfficePage
                Width = 771
                object tlResult: TdxTreeList
                  Width = 771
                end
              end
              object tsSQLMessages: TAdvOfficePage
                Width = 771
                object ErrorM: TdxMemo
                  Width = 771
                  Height = 164
                end
              end
            end
          end
        end
        object TBDock1: TTBDock
          Width = 784
          object MainToolbar: TTBToolbar
            object eBlockPath: TdxButtonEdit
              StoredValues = 64
              ExistButtons = True
            end
            object cbEvents: TdxPickEdit
              StoredValues = 64
            end
          end
        end
        object MainBlockFm: TEditFrame
          Width = 784
          Height = 87
          object EditM: TSQLMemo
            Width = 784
            Height = 69
          end
          object pIncSearch: TPanel
            Top = 69
            Width = 784
          end
        end
        object pProgress: TPanel
          Width = 784
        end
        object ts2: TFIBTransaction
          Timeout = 162734572
        end
      end
    end
    object tsPDF: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 784
      Height = 329
      Caption = 'As PDF'
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
    end
  end
  object DockLeft: TTBDock
    Left = 0
    Top = 26
    Width = 199
    Height = 354
    Position = dpLeft
    object twDatasets: TTBToolWindow
      Left = 0
      Top = 0
      BorderStyle = bsNone
      Caption = 'Blob fields'
      CloseButtonWhenDocked = True
      ClientAreaHeight = 336
      ClientAreaWidth = 195
      DockableTo = ['dpLeft', 'dpRight']
      DockPos = 0
      DragHandleStyle = dhDouble
      FullSize = True
      TabOrder = 0
      OnDockChanged = twDatasetsDockChanged
      object TL: TdxTreeList
        Left = 0
        Top = 0
        Width = 195
        Height = 336
        Bands = <
          item
          end
        >
        DefaultLayout = True
        HeaderPanelRowCount = 1
        Align = alClient
        DragMode = dmAutomatic
        TabOrder = 0
        HideSelection = False
        LookAndFeel = lfFlat
        Options = ['aoColumnSizing', 'aoTabThrough', 'aoRowSelect', 'aoDrawEndEllipsis', 'aoAutoWidth']
        OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSearch']
        TreeLineColor = clGrayText
        ShowHeader = False
        GridLineColor = clSilver
        OnChangeNode = TLChangeNode
        object dxTreeListColumn1: TdxTreeListColumn
          Caption = 'Object'
          DisableCustomizing = True
          DisableDragging = True
          DisableEditor = True
          MinWidth = 100
          ReadOnly = True
          VertAlignment = tlCenter
          Width = 236
          BandIndex = 0
          RowIndex = 0
        end
        object TLColumn2: TdxTreeListColumn
          Visible = False
          BandIndex = 0
          RowIndex = 0
        end
        object TLColumn3: TdxTreeListColumn
          Visible = False
          BandIndex = 0
          RowIndex = 0
        end
      end
    end
  end
  object ActionList1: TActionList
    Images = IBEMainForm.MenuImages
    OnUpdate = ActionList1Update
    Left = 155
    Top = 58
    object actLoadFromFile: TAction
      Caption = 'Load from File'
      ImageIndex = 41
      ShortCut = 16463
      OnExecute = actLoadFromFileExecute
    end
    object actSaveToFile: TAction
      Caption = 'Save to File'
      ImageIndex = 29
      OnExecute = actSaveToFileExecute
    end
    object actHexEditMode: TAction
      Caption = 'Hex Edit Mode'
      ShortCut = 113
      OnExecute = actHexEditModeExecute
    end
    object actCommit: TAction
      Caption = 'Commit'
      ImageIndex = 36
    end
    object actRollback: TAction
      Caption = 'Rollback'
      ImageIndex = 38
    end
  end
  object opd: TOpenPictureDialog
    Filter = 'All (*.gif;*.jpg;*.jpeg;*.bmp;*.ico;*.emf;*.wmf;*.tif;*.png)|*.gif;*.jpg;*.jpeg;*.bmp;*.ico;*.emf;*.wmf;*.tif;*.tiff;*.png|CompuServe GIF Image (*.gif)|*.gif|JPEG Image File (*.jpg)|*.jpg|JPEG Image File (*.jpeg)|*.jpeg|Bitmaps (*.bmp)|*.bmp|Icons (*.ico)|*.ico|Enhanced Metafiles (*.emf)|*.emf|Metafiles (*.wmf)|*.wmf|TIFF Image (*.tif, *.tiff)|*.tif; *.tiff|PNG Image (*.png)|*.png|All files (*.*)|*.*'
    Left = 230
    Top = 76
  end
  object Timer: TTimer
    Enabled = False
    Interval = 150
    OnTimer = TimerTimer
    Left = 387
    Top = 98
  end
  object od: TOpenDialog
    Options = ['ofHideReadOnly', 'ofPathMustExist', 'ofFileMustExist', 'ofEnableSizing']
    Left = 230
    Top = 114
  end
  object spd: TSavePictureDialog
    Filter = 'All (*.gif;*.jpg;*.jpeg;*.bmp;*.ico;*.emf;*.wmf)|*.gif;*.jpg;*.jpeg;*.bmp;*.ico;*.emf;*.wmf|CompuServe GIF Image (*.gif)|*.gif|JPEG Image File (*.jpg)|*.jpg|JPEG Image File (*.jpeg)|*.jpeg|Bitmaps (*.bmp)|*.bmp|Icons (*.ico)|*.ico|Enhanced Metafiles (*.emf)|*.emf|Metafiles (*.wmf)|*.wmf|TIFF Image (*.tif)|*.tif'
    Options = ['ofOverwritePrompt', 'ofHideReadOnly', 'ofEnableSizing']
    Left = 262
    Top = 76
  end
  object sd: TSaveDialog
    Left = 262
    Top = 114
  end
  object bm: TdxBarManager
    AlwaysSaveText = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Bars = <
      item
        Caption = 'Blob editor'
        DockedDockingStyle = dsTop
        DockedLeft = 0
        DockedTop = 0
        DockingStyle = dsTop
        FloatLeft = 340
        FloatTop = 264
        FloatClientWidth = 23
        FloatClientHeight = 22
        ItemLinks = None
        Name = 'Blob editor'
        NotDocking = ['dsLeft', 'dsRight']
        OneOnRow = True
        Row = 0
        UseOwnFont = False
        Visible = True
        WholeRow = True
      end
    >
    Categories.Strings = ['Default', 'DB Navigator']
    Categories.ItemsVisibles = [2, 2]
    Categories.Visibles = [True, True]
    Images = IBEMainForm.MenuImages
    PopupMenuLinks = []
    UseSystemFont = True
    Left = 386
    Top = 161
    DockControlHeights = [0, 0, 26, 0]
    object dxBarButton1: TdxBarButton
      Action = actLoadFromFile
      Category = 0
    end
    object dxBarButton2: TdxBarButton
      Action = actSaveToFile
      Category = 0
    end
    object dxBarDBNavFirst1: TdxBarDBNavButton
      Caption = 'First'
      Category = 1
      Enabled = False
      Hint = 'First'
      Visible = ivAlways
      Glyph.Data = {250 bytes}
      BarDBNavigator = bn
      NavButton = dxbnFirst
    end
    object dxBarDBNavPrev1: TdxBarDBNavButton
      Caption = 'Prior'
      Category = 1
      Enabled = False
      Hint = 'Prior'
      Visible = ivAlways
      Glyph.Data = {250 bytes}
      BarDBNavigator = bn
      NavButton = dxbnPrior
    end
    object dxBarDBNavNext1: TdxBarDBNavButton
      Caption = 'Next'
      Category = 1
      Enabled = False
      Hint = 'Next'
      Visible = ivAlways
      Glyph.Data = {250 bytes}
      BarDBNavigator = bn
      NavButton = dxbnNext
    end
    object dxBarDBNavLast1: TdxBarDBNavButton
      Caption = 'Last'
      Category = 1
      Enabled = False
      Hint = 'Last'
      Visible = ivAlways
      Glyph.Data = {250 bytes}
      BarDBNavigator = bn
      NavButton = dxbnLast
    end
    object bnInsert: TdxBarDBNavButton
      Caption = 'Insert'
      Category = 1
      Enabled = False
      Hint = 'Insert'
      Visible = ivAlways
      Glyph.Data = {250 bytes}
      BarDBNavigator = bn
      NavButton = dxbnInsert
    end
    object bnDelete: TdxBarDBNavButton
      Caption = 'Delete'
      Category = 1
      Enabled = False
      Hint = 'Delete'
      Visible = ivAlways
      Glyph.Data = {250 bytes}
      BarDBNavigator = bn
      NavButton = dxbnDelete
    end
    object bnEdit: TdxBarDBNavButton
      Caption = 'Edit'
      Category = 1
      Enabled = False
      Hint = 'Edit'
      Visible = ivAlways
      Glyph.Data = {250 bytes}
      BarDBNavigator = bn
      NavButton = dxbnEdit
    end
    object bnRefresh: TdxBarDBNavButton
      Caption = 'Refresh'
      Category = 1
      Enabled = False
      Hint = 'Refresh'
      Visible = ivAlways
      Glyph.Data = {250 bytes}
      BarDBNavigator = bn
      NavButton = dxbnRefresh
    end
    object cbPicFormat: TdxBarCombo
      Caption = 'Picture format'
      Category = 0
      Hint = 'Picture format'
      Visible = ivNever
      OnChange = cbPicFormatChange
      ShowCaption = True
      Width = 100
      ShowEditor = False
      Items.Strings = ['Quick Bitmap', 'Icon', 'CompuServe GIF', 'JPEG Image', 'Bitmap', 'Windows Metafile', 'PNG Image', 'TIFF Image']
      ItemIndex = -1
    end
    object bnPost: TdxBarDBNavButton
      Caption = 'Post'
      Category = 1
      Enabled = False
      Hint = 'Post'
      Visible = ivAlways
      Glyph.Data = {250 bytes}
      BarDBNavigator = bn
      NavButton = dxbnPost
    end
    object bnCancel: TdxBarDBNavButton
      Caption = 'Cancel'
      Category = 1
      Enabled = False
      Hint = 'Cancel'
      Visible = ivAlways
      Glyph.Data = {250 bytes}
      BarDBNavigator = bn
      NavButton = dxbnCancel
    end
    object cbHighlighting: TdxBarCombo
      Caption = 'Highlighting'
      Category = 0
      Hint = 'Highlighting'
      Visible = ivNever
      Text = 'None'
      OnChange = cbHighlightingChange
      ShowCaption = True
      Width = 100
      ShowEditor = False
      Items.Strings = ['None', 'SQL', 'HTML', 'Delphi Form (DFM)']
      ItemIndex = 0
    end
    object bsSize: TdxBarStatic
      Caption = 'Size: n/a'
      Category = 0
      Hint = 'Size: n/a'
      Visible = ivAlways
      BorderStyle = sbsEtched
    end
    object bseRecNo: TdxBarSpinEdit
      Caption = 'Record:'
      Category = 0
      Hint = 'Record:'
      Visible = ivAlways
      OnChange = bseRecNoChange
      OnEnter = bseRecNoEnter
      OnExit = bseRecNoExit
      ShowCaption = True
      Width = 100
      MaxValue = 10000000
      Value = 1
    end
  end
  object bn: TdxBarDBNavigator
    BarManager = bm
    CategoryName = 'DB Navigator'
    ConfirmDelete = False
    DBCheckLinks = []
    VisibleButtons = ['dxbnFirst', 'dxbnPrior', 'dxbnNext', 'dxbnLast', 'dxbnInsert', 'dxbnDelete', 'dxbnEdit', 'dxbnPost', 'dxbnCancel', 'dxbnRefresh']
    Left = 386
    Top = 195
  end
  object hkHTMLSyn1: ThkHTMLSyn
    DefaultFilter = 'HTML Document (*.htm,*.html)|*.htm;*.html'
    AndAttri.Background = clWindow
    AndAttri.Foreground = clLime
    AndAttri.Style = ['fsBold']
    ASPAttri.Background = clYellow
    ASPAttri.Foreground = clBlack
    ASPAttri.Style = []
    CommentAttri.Background = clWindow
    CommentAttri.Foreground = clWindowText
    CommentAttri.Style = []
    IdentifierAttri.Background = clWindow
    IdentifierAttri.Foreground = clWindowText
    IdentifierAttri.Style = ['fsBold']
    KeyAttri.Background = clWindow
    KeyAttri.Foreground = 16711808
    KeyAttri.Style = ['fsBold']
    SpaceAttri.Background = clWindow
    SpaceAttri.Foreground = clWindowText
    SpaceAttri.Style = []
    SymbolAttri.Background = clWindow
    SymbolAttri.Foreground = clWindowText
    SymbolAttri.Style = ['fsBold']
    TextAttri.Background = clWindow
    TextAttri.Foreground = clWindowText
    TextAttri.Style = []
    UndefKeyAttri.Background = clWindow
    UndefKeyAttri.Foreground = clRed
    UndefKeyAttri.Style = ['fsBold']
    ValueAttri.Background = clWindow
    ValueAttri.Foreground = 16744448
    ValueAttri.Style = []
    Left = 466
    Top = 97
  end
  object dfmHL: TdmDfmSyn
    DefaultFilter = 'Delphi/C++ Builder Form Files (*.dfm)|*.dfm'
    CommentAttri.Background = clWindow
    CommentAttri.Foreground = clWindowText
    CommentAttri.Style = ['fsItalic']
    IdentifierAttri.Background = clWindow
    IdentifierAttri.Foreground = clWindowText
    IdentifierAttri.Style = []
    KeyAttri.Background = clWindow
    KeyAttri.Foreground = clWindowText
    KeyAttri.Style = []
    NumberAttri.Background = clWindow
    NumberAttri.Foreground = clWindowText
    NumberAttri.Style = []
    SpaceAttri.Background = clWindow
    SpaceAttri.Foreground = clWindowText
    SpaceAttri.Style = []
    StringAttri.Background = clWindow
    StringAttri.Foreground = clWindowText
    StringAttri.Style = []
    Left = 466
    Top = 137
  end
end
