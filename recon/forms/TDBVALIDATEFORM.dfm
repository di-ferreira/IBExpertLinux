object DBValidateForm: TDBValidateForm
  Left = 339
  Top = 200
  Width = 714
  Height = 418
  HelpContext = 7200
  Caption = 'Database Validation'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Pages: TIBEPageControl
    Left = 0
    Top = 26
    Width = 698
    Height = 356
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
    TabOrder = 4
    TabStop = True
    NextPictureChanged = True
    PrevPictureChanged = True
    object tsOptions: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 698
      Height = 331
      Caption = 'Options'
      ImageIndex = 1
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
      object GroupBox1: TGroupBox
        Left = 3
        Top = 8
        Width = 694
        Height = 219
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = ' Options '
        TabOrder = 0
        object cbLimbo: TdxCheckEdit
          Left = 13
          Top = 19
          Width = 281
          TabOrder = 0
          Caption = 'Limbo Transactions'
          StyleController = IBEMainForm.MainCheckSC
        end
        object cbCheckDB: TdxCheckEdit
          Left = 13
          Top = 43
          Width = 281
          TabOrder = 1
          Caption = 'Check Database'
          StyleController = IBEMainForm.MainCheckSC
        end
        object cbIgnoreCheckSum: TdxCheckEdit
          Left = 13
          Top = 67
          Width = 281
          TabOrder = 2
          Caption = 'Ignore Checksum'
          StyleController = IBEMainForm.MainCheckSC
        end
        object cbKillShadows: TdxCheckEdit
          Left = 13
          Top = 91
          Width = 281
          TabOrder = 3
          Caption = 'Kill Shadows'
          StyleController = IBEMainForm.MainCheckSC
        end
        object cbMend: TdxCheckEdit
          Left = 13
          Top = 115
          Width = 281
          TabOrder = 4
          Caption = 'Mend Database'
          StyleController = IBEMainForm.MainCheckSC
        end
        object cbSweep: TdxCheckEdit
          Left = 13
          Top = 139
          Width = 281
          TabOrder = 5
          Caption = 'Sweep Database'
          StyleController = IBEMainForm.MainCheckSC
        end
        object cbValidateDB: TdxCheckEdit
          Left = 13
          Top = 163
          Width = 281
          TabOrder = 6
          Caption = 'Validate Database'
          StyleController = IBEMainForm.MainCheckSC
          State = cbsChecked
        end
        object cbValidateFull: TdxCheckEdit
          Left = 45
          Top = 187
          Width = 281
          TabOrder = 7
          Caption = 'Validate Full'
          StyleController = IBEMainForm.MainCheckSC
          State = cbsChecked
        end
      end
      object GroupBox2: TGroupBox
        Left = 3
        Top = 234
        Width = 694
        Height = 75
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = ' Output '
        TabOrder = 1
        object cbVerbose: TdxCheckEdit
          Left = 11
          Top = 15
          Width = 81
          TabOrder = 0
          OnClick = cbVerboseChange
          Caption = '&Verbose'
          StyleController = IBEMainForm.MainCheckSC
          State = cbsChecked
        end
        object cbVerboseOutput: TComboBox
          Left = 97
          Top = 16
          Width = 111
          Height = 21
          ItemHeight = 13
          TabOrder = 1
          Text = 'To Screen'
          OnChange = cbVerboseOutputChange
          Items.Strings = ['To Screen', 'To File']
        end
        object feVerboseFile: TFileNameEditFrame
          Left = 13
          Top = 45
          Width = 396
          TabOrder = 2
          Visible = False
          object FE: TdxButtonEdit
            Width = 396
            ExistButtons = True
          end
        end
      end
    end
    object tsOutput: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 698
      Height = 331
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
      TabAppearance.BackGround.ColorTo = 14537936
      TabAppearance.BackGround.Direction = gdHorizontal
      object OutputM: TMemo
        Tag = 1000
        Left = 2
        Top = 2
        Width = 694
        Height = 327
        Align = alClient
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
  end
  object ActionList1: TActionList
    Images = IBEMainForm.ImageList
    Left = 531
    Top = 31
    object aValidate: TAction
      Caption = 'Start validation'
      Hint = 'Start validation'
      ImageIndex = 59
      OnExecute = aValidateExecute
    end
  end
  object ValidationService: TpFIBValidationService
    ClientLibName = 'gds32.dll'
    LoginPrompt = False
    Options = []
    GlobalAction = NoGlobalAction
    OnTextNotify = ValidationServiceTextNotify
    Left = 523
    Top = 181
  end
  object bm: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Bars = <
      item
        Caption = 'Main'
        DockedDockingStyle = dsTop
        DockedLeft = 0
        DockedTop = 0
        DockingStyle = dsTop
        FloatLeft = 340
        FloatTop = 264
        FloatClientWidth = 23
        FloatClientHeight = 22
        ItemLinks = None
        Name = 'Main'
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
    Left = 89
    Top = 141
    DockControlHeights = [0, 0, 26, 0]
    object dxBarButton1: TdxBarButton
      Action = aValidate
      Category = 0
    end
    object cbDatabases: TdxBarCombo
      Caption = 'New Item'
      Category = 0
      Hint = 'Select database for validation'
      Visible = ivAlways
      OnChange = cbDatabasesChange
      Width = 100
      DropDownCount = 20
      ItemIndex = -1
    end
  end
end
