object TableViewForm: TTableViewForm
  Left = 278
  Top = 187
  Width = 983
  Height = 377
  HelpContext = 1100
  BorderIcons = ['biSystemMenu', 'biMinimize', 'biMaximize', 'biHelp']
  Caption = 'Table'
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Icon.Data = {1078 bytes}
  KeyPreview = True
  OldCreateOrder = True
  Position = poDefault
  Scaled = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnDeactivate = FormDeactivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object LeftSplitter: TdfsSplitter
    Left = 244
    Top = 57
    Height = 284
    Cursor = crHSplit
    Align = alLeft
    Visible = False
    OnCanResize = LeftSplitterCanResize
    Maximized = False
    Minimized = False
    ButtonCursor = crDefault
  end
  object RightSplitter: TdfsSplitter
    Left = 948
    Top = 57
    Height = 284
    Cursor = crHSplit
    Align = alRight
    Visible = False
    OnCanResize = LeftSplitterCanResize
    Maximized = False
    Minimized = False
    ButtonCursor = crDefault
  end
  object Pages: TIBEPageControl
    Left = 254
    Top = 57
    Width = 694
    Height = 284
    AdvOfficePagerStyler = IBEMainForm.PCStyler
    Align = alClient
    ActivePage = tsFields
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
    OnChange = aRefreshExecute
    TabOrder = 0
    TabStop = True
    NextPictureChanged = True
    PrevPictureChanged = True
    object tsFields: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 694
      Height = 259
      Caption = '&Fields'
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
      object FieldsP: TPanel
        Left = 2
        Top = 2
        Width = 690
        Height = 255
        Align = alClient
        BevelOuter = bvNone
        Color = clWindow
        TabOrder = 0
        object Label1: TLabel
          Left = 72
          Top = 16
          Width = 31
          Height = 13
          Caption = 'Label1'
        end
      end
    end
    object tsConstraints: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 694
      Height = 259
      HelpContext = 560
      Caption = '&Constraints'
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
      object ConstraintsP: TPanel
        Left = 2
        Top = 2
        Width = 690
        Height = 255
        Align = alClient
        BevelOuter = bvNone
        Color = clWindow
        TabOrder = 0
      end
    end
    object tsIndices: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 694
      Height = 259
      HelpContext = 570
      Caption = 'I&ndices'
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
      object IndicesP: TPanel
        Left = 2
        Top = 2
        Width = 690
        Height = 255
        Align = alClient
        BevelOuter = bvNone
        Color = clWindow
        TabOrder = 0
      end
    end
    object tsDependencies: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 694
      Height = 259
      HelpContext = 530
      Caption = 'De&pendencies'
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
      object DependenciesP: TPanel
        Left = 2
        Top = 2
        Width = 690
        Height = 255
        Align = alClient
        BevelOuter = bvNone
        Color = clWindow
        TabOrder = 0
      end
    end
    object tsTriggers: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 694
      Height = 259
      HelpContext = 580
      Caption = 'T&riggers'
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
      object TriggersP: TPanel
        Left = 2
        Top = 2
        Width = 690
        Height = 255
        Align = alClient
        BevelOuter = bvNone
        Color = clWindow
        TabOrder = 0
      end
    end
    object tsData: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 694
      Height = 259
      HelpContext = 550
      Caption = 'D&ata'
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
    object tsMasterDetail: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 694
      Height = 259
      Caption = 'Master/Detail View'
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
    object tsDescription: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 694
      Height = 259
      HelpContext = 520
      Caption = 'Descr&iption'
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
      object DescFm: TEditFrame
        Left = 2
        Top = 2
        Width = 690
        Height = 255
        object lBookmark: TLabel
          Width = 46
        end
        object EditM: TSQLMemo
          Width = 690
          Height = 237
        end
        object pIncSearch: TPanel
          Top = 237
          Width = 690
        end
      end
    end
    object tsDDL: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 694
      Height = 259
      HelpContext = 540
      Caption = 'DD&L'
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
      object DDLP: TPanel
        Left = 2
        Top = 2
        Width = 690
        Height = 255
        Align = alClient
        BevelOuter = bvNone
        Color = clWindow
        TabOrder = 0
      end
    end
    object tsGrants: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 694
      Height = 259
      Caption = '&Grants'
      ImageIndex = 8
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
    object tsLogging: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 694
      Height = 259
      Caption = 'Logging'
      ImageIndex = 9
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
    object tsCompare: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 694
      Height = 259
      Caption = 'Compare'
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
    object tsTodo: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 694
      Height = 259
      Caption = 'To-do'
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
  object LeftDock: TTBDock
    Left = 0
    Top = 57
    Width = 244
    Height = 284
    Position = dpLeft
    Visible = False
    object tbProps: TTBToolWindow
      Left = 0
      Top = 0
      BorderStyle = bsNone
      Caption = 'Table properties'
      CloseButtonWhenDocked = True
      ClientAreaHeight = 266
      ClientAreaWidth = 240
      DragHandleStyle = dhDouble
      FullSize = True
      TabOrder = 0
      OnClose = tbPropsClose
      OnDockChanged = tbPropsClose
      OnVisibleChanged = tbPropsClose
      object tl: TdxTreeList
        Left = 0
        Top = 0
        Width = 240
        Height = 266
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
        RegistryPath = '\Software\HK Software\IBExpert\SQLAChildsFrame'
        LookAndFeel = lfFlat
        Options = ['aoColumnSizing', 'aoEditing', 'aoTabThrough', 'aoMultiSelect', 'aoImmediateEditor', 'aoDrawEndEllipsis', 'aoAutoWidth', 'aoHideFocusRect']
        OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoRowAutoHeight', 'aoAutoSortRefresh']
        TreeLineColor = clGrayText
        ShowGrid = True
        ShowRoot = False
        GridLineColor = clSilver
        OnKeyPress = tlKeyPress
        OnCustomDrawCell = tlCustomDrawCell
        OnChangeNode = tlChangeNode
        OnEdited = tlEdited
        Data = {421 bytes}
        object tlcProperty: TdxTreeListColumn
          Caption = 'Property'
          DisableEditor = True
          ReadOnly = True
          Width = 99
          BandIndex = 0
          RowIndex = 0
        end
        object tlcValue: TdxTreeListColumn
          Caption = 'Value'
          Width = 139
          BandIndex = 0
          RowIndex = 0
        end
        object tlcOldValue: TdxTreeListColumn
          Visible = False
          Width = 93
          BandIndex = 0
          RowIndex = 0
        end
      end
    end
  end
  object RightDock: TTBDock
    Left = 958
    Top = 57
    Width = 9
    Height = 284
    Position = dpRight
    Visible = False
  end
  object pExternal: TPanel
    Left = 0
    Top = 26
    Width = 967
    Height = 31
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 7
    OnResize = pExternalResize
    object lExternal: TLabel
      Left = 7
      Top = 7
      Width = 62
      Height = 13
      Caption = 'External File '
    end
    object eExtFileName: TdxEdit
      Left = 89
      Top = 4
      Width = 883
      TabOrder = 0
      Anchors = ['akLeft', 'akTop', 'akRight']
      StyleController = IBEMainForm.MainSC
      OnChange = eExtFileNameChange
    end
  end
  object TableEditorActions: TActionList
    Images = IBEMainForm.MenuImages
    OnUpdate = TableEditorActionsUpdate
    Left = 155
    Top = 91
    object aCommitTransaction: TAction
      Caption = 'Commit Transaction'
      ImageIndex = 36
      ShortCut = 49219
      OnExecute = aCommitTransactionExecute
    end
    object aRollbackTransaction: TAction
      Caption = 'Rollback Transaction'
      ImageIndex = 38
      ShortCut = 49234
      OnExecute = aRollbackTransactionExecute
    end
    object aExportData: TAction
      Caption = 'Export Data'
      Enabled = False
      ImageIndex = 73
      ShortCut = 16453
      OnExecute = aExportDataExecute
    end
    object aExportAsInsert: TAction
      Caption = 'Export Data into Script'
      ImageIndex = 74
      OnExecute = aExportAsInsertExecute
    end
    object aRefresh: TAction
      Caption = 'Refresh'
      ShortCut = 16466
      OnExecute = aRefreshExecute
    end
    object aPrint: TAction
      Caption = 'Print Table Metadata'
      ImageIndex = 53
      ShortCut = 24656
      OnExecute = aPrintExecute
    end
    object actLocalize: TAction
      Caption = 'Localize'
      ShortCut = 57420
      OnExecute = actLocalizeExecute
    end
    object actCreateProcedure: TAction
      Caption = 'Create Procedure'
      ImageIndex = 19
      OnExecute = actCreateProcedureExecute
    end
    object actGetRecordCount: TAction
      Caption = 'Get record count'
      Hint = 'Get record count'
      ShortCut = 16497
      OnExecute = actGetRecordCountExecute
    end
    object actCompile: TAction
      Caption = 'Compile'
      Hint = 'Compile'
      ImageIndex = 28
      ShortCut = 16504
      OnExecute = actCompileExecute
      OnUpdate = actCompileUpdate
    end
    object actFieldUp: TAction
      Caption = 'Move field up'
      Hint = 'Move field up'
      ImageIndex = 114
      ShortCut = 24614
      OnExecute = actFieldUpExecute
      OnUpdate = actFieldUpUpdate
    end
    object actFieldDown: TAction
      Caption = 'Move field down'
      Hint = 'Move field down'
      ImageIndex = 113
      ShortCut = 24616
      OnExecute = actFieldDownExecute
      OnUpdate = actFieldDownUpdate
    end
    object actCreateView: TAction
      Caption = 'Create View'
      Hint = 'Create View'
      ImageIndex = 106
      OnExecute = actCreateViewExecute
    end
    object actPrepareForLogging: TAction
      Caption = 'Prepare table for logging'
      Hint = 'Prepare table for logging'
      ImageIndex = 132
      OnExecute = actPrepareForLoggingExecute
      OnUpdate = actPrepareForLoggingUpdate
    end
    object actAddField: TAction
      Caption = 'Add field'
      Hint = 'Add field'
      ImageIndex = 116
      OnExecute = actAddFieldExecute
    end
    object actInsertField: TAction
      Caption = 'Insert field'
      Hint = 'Insert field'
      ImageIndex = 115
      ShortCut = 45
      OnExecute = actInsertFieldExecute
      OnUpdate = actInsertFieldUpdate
    end
    object actDropField: TAction
      Caption = 'Drop/delete field'
      Hint = 'Drop/delete field'
      ImageIndex = 112
      ShortCut = 8238
      OnExecute = actDropFieldExecute
    end
    object actEditTable: TAction
      Caption = 'Edit Table Structure'
      Hint = 'Edit Table Structure'
      ImageIndex = 148
      ShortCut = 113
      OnExecute = actEditTableExecute
      OnUpdate = actEditTableUpdate
    end
    object actDeactivateTriggers: TAction
      Caption = 'Deactivate all triggers'
      OnExecute = actDeactivateTriggersExecute
      OnUpdate = actDeactivateTriggersUpdate
    end
    object actActivateTriggers: TAction
      Caption = 'Activate all triggers'
      OnExecute = actActivateTriggersExecute
      OnUpdate = actActivateTriggersUpdate
    end
    object actDeactivateIndices: TAction
      Caption = 'Deactivate all indices'
      OnExecute = actDeactivateIndicesExecute
      OnUpdate = actDeactivateIndicesUpdate
    end
    object actActivateIndices: TAction
      Caption = 'Activate all indices'
      OnExecute = actActivateIndicesExecute
      OnUpdate = actActivateIndicesUpdate
    end
    object actEmptyTable: TAction
      Caption = 'Empty Table'
      Hint = 'Empty Table'
      OnExecute = actEmptyTableExecute
      OnUpdate = actEmptyTableUpdate
    end
    object actTableProps: TAction
      Caption = 'General Properties'
      Hint = 'General Properties'
      ImageIndex = 246
      OnExecute = actTablePropsExecute
    end
    object actCommitAndClose: TAction
      Caption = 'Commit and close dataset'
      Hint = 'Commit and close dataset'
      OnExecute = actCommitAndCloseExecute
    end
    object actRollbackAndClose: TAction
      Caption = 'Rollback and close dataset'
      Hint = 'Rollback and close dataset'
      OnExecute = actRollbackAndCloseExecute
    end
    object actDropTable: TAction
      Caption = 'Drop table'
      OnExecute = actDropTableExecute
      OnUpdate = actDropTableUpdate
    end
  end
  object Timer: TTimer
    Enabled = False
    Interval = 500
    OnTimer = TimerTimer
    Left = 156
    Top = 146
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
        Caption = 'Table Toolbar'
        DockedDockingStyle = dsTop
        DockedLeft = 0
        DockedTop = 0
        DockingStyle = dsTop
        FloatLeft = 204
        FloatTop = 503
        FloatClientWidth = 699
        FloatClientHeight = 22
        ItemLinks = None
        MultiLine = True
        Name = 'Table Toolbar'
        NotDocking = ['dsLeft', 'dsRight']
        OneOnRow = True
        Row = 0
        UseOwnFont = False
        UseRestSpace = True
        Visible = True
        WholeRow = False
      end
    >
    Categories.Strings = ['Default', 'Other']
    Categories.ItemsVisibles = [2, 2]
    Categories.Visibles = [True, True]
    Images = IBEMainForm.MenuImages
    PopupMenuLinks = []
    StoreInIniFile = True
    Style = bmsFlat
    UseSystemFont = True
    Left = 220
    Top = 90
    DockControlHeights = [0, 0, 26, 0]
    object dxBarButton1: TdxBarButton
      Action = actCompile
      Category = 0
      UnclickAfterDoing = False
    end
    object dxBarButton2: TdxBarButton
      Action = actFieldUp
      Category = 0
      UnclickAfterDoing = False
    end
    object dxBarButton3: TdxBarButton
      Action = actFieldDown
      Category = 0
      UnclickAfterDoing = False
    end
    object bbCommit: TdxBarButton
      Action = aCommitTransaction
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = dxBarPopupMenu1
      UnclickAfterDoing = False
    end
    object bbRollback: TdxBarButton
      Action = aRollbackTransaction
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = dxBarPopupMenu2
      UnclickAfterDoing = False
    end
    object dxBarButton6: TdxBarButton
      Action = aExportData
      Category = 0
      UnclickAfterDoing = False
    end
    object dxBarButton7: TdxBarButton
      Action = aExportAsInsert
      Category = 0
      UnclickAfterDoing = False
    end
    object dxBarButton8: TdxBarButton
      Action = aPrint
      Category = 0
      UnclickAfterDoing = False
    end
    object dxBarButton9: TdxBarButton
      Action = actCreateProcedure
      Category = 0
      UnclickAfterDoing = False
    end
    object dxBarButton11: TdxBarButton
      Action = actCreateView
      Category = 0
      UnclickAfterDoing = False
    end
    object cbTableName: TdxBarCombo
      Align = iaClient
      Category = 0
      Visible = ivAlways
      OnChange = cbTableNameChange
      OnCurChange = cbTableNameCurChange
      OnExit = cbTableNameExit
      OnKeyDown = cbTableNameKeyDown
      MaxLength = 31
      Width = 100
      DropDownCount = 15
      OnDrawItem = cbTableNameDrawItem
      Items.Strings = ['']
      ItemIndex = 0
    end
    object miRecompute: TdxBarButton
      Caption = 'Recompute selectivity'
      Category = 0
      Visible = ivAlways
    end
    object miRecomputeAll: TdxBarButton
      Caption = 'Recompute all'
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton10: TdxBarButton
      Caption = 'New index'
      Category = 0
      Visible = ivAlways
      ShortCut = 45
    end
    object dxBarButton12: TdxBarButton
      Caption = 'Drop index'
      Category = 0
      Visible = ivAlways
      ShortCut = 46
    end
    object dxBarButton13: TdxBarButton
      Caption = 'Show statistics'
      Category = 0
      Visible = ivAlways
      ButtonStyle = bsChecked
    end
    object dxBarButton14: TdxBarButton
      Action = actPrepareForLogging
      Category = 0
      UnclickAfterDoing = False
    end
    object dxBarButton15: TdxBarButton
      Action = actGetRecordCount
      Category = 0
      CloseSubMenuOnClick = False
      UnclickAfterDoing = False
    end
    object dxBarButton16: TdxBarButton
      Action = actInsertField
      Category = 0
      UnclickAfterDoing = False
    end
    object dxBarButton17: TdxBarButton
      Action = actAddField
      Category = 0
      UnclickAfterDoing = False
    end
    object dxBarButton18: TdxBarButton
      Action = actDropField
      Category = 0
      UnclickAfterDoing = False
    end
    object dxBarButton19: TdxBarButton
      Action = actEditTable
      Category = 0
      ButtonStyle = bsChecked
      UnclickAfterDoing = False
    end
    object miTableMenu: TdxBarSubItem
      Caption = 'Table'
      Category = 1
      Visible = ivAlways
      ItemLinks = <
        item
          Item = dxBarButton20
          Visible = True
        end
        item
          Item = dxBarButton21
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton22
          Visible = True
        end
        item
          Item = dxBarButton23
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton1
          Visible = True
        end
        item
          BeginGroup = True
          Item = bbCommit
          Visible = True
        end
        item
          Item = bbRollback
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton6
          Visible = True
        end
        item
          Item = dxBarButton7
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton8
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton9
          Visible = True
        end
        item
          Item = dxBarButton11
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton14
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton24
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton4
          Visible = True
        end
      >
    end
    object dxBarButton20: TdxBarButton
      Action = actDeactivateTriggers
      Category = 1
    end
    object dxBarButton21: TdxBarButton
      Action = actActivateTriggers
      Category = 1
    end
    object dxBarButton22: TdxBarButton
      Action = actDeactivateIndices
      Category = 1
    end
    object dxBarButton23: TdxBarButton
      Action = actActivateIndices
      Category = 1
    end
    object dxBarButton24: TdxBarButton
      Action = actEmptyTable
      Category = 1
    end
    object bbTableProps: TdxBarButton
      Action = actTableProps
      Category = 1
      ButtonStyle = bsChecked
      Down = True
    end
    object dxBarButton26: TdxBarButton
      Action = actCommitAndClose
      Category = 0
    end
    object dxBarButton27: TdxBarButton
      Action = aCommitTransaction
      Category = 0
    end
    object dxBarButton28: TdxBarButton
      Action = actRollbackAndClose
      Category = 0
    end
    object dxBarButton29: TdxBarButton
      Action = aRollbackTransaction
      Category = 0
    end
    object cbTemp: TdxBarCombo
      Caption = 'Type:'
      Category = 0
      Hint = 'Type:'
      Visible = ivAlways
      Text = 'Persistent'
      OnChange = cbTempChange
      ShowCaption = True
      Width = 100
      ShowEditor = False
      Items.Strings = ['Persistent', 'Temp : DELETE ROWS', 'Temp : PRESERVE ROWS']
      ItemIndex = 0
    end
    object dxBarButton4: TdxBarButton
      Action = actDropTable
      Category = 0
    end
  end
  object dxBarPopupMenu1: TdxBarPopupMenu
    BarManager = bm
    ItemLinks = <
      item
        Item = dxBarButton27
        Visible = True
      end
      item
        Item = dxBarButton26
        Visible = True
      end
    >
    UseOwnFont = False
    Left = 262
    Top = 120
  end
  object dxBarPopupMenu2: TdxBarPopupMenu
    BarManager = bm
    ItemLinks = <
      item
        Item = dxBarButton29
        Visible = True
      end
      item
        Item = dxBarButton28
        Visible = True
      end
    >
    UseOwnFont = False
    Left = 294
    Top = 120
  end
end
