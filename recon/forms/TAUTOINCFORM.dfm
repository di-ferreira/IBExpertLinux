object AutoIncForm: TAutoIncForm
  Left = 319
  Top = 228
  Width = 461
  Height = 313
  HelpContext = 9500
  BorderIcons = []
  Caption = 'Autoincrement Field'
  Color = clBtnFace
  Constraints.MinHeight = 300
  Constraints.MinWidth = 419
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
  object Bevel4: TBevel
    Left = 0
    Top = 243
    Width = 445
    Height = 2
    Align = alBottom
    Shape = bsTopLine
  end
  object Panel1: TPanel
    Left = 0
    Top = 245
    Width = 445
    Height = 32
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object bOk: TButton
      Left = 207
      Top = 4
      Width = 75
      Height = 25
      Anchors = ['akRight', 'akBottom']
      Caption = 'OK (F9)'
      ModalResult = 1
      TabOrder = 0
    end
    object bCancel: TButton
      Left = 287
      Top = 4
      Width = 75
      Height = 25
      Anchors = ['akRight', 'akBottom']
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
    end
    object bHelp: TButton
      Left = 367
      Top = 4
      Width = 75
      Height = 25
      Anchors = ['akRight', 'akBottom']
      Caption = 'Help'
      TabOrder = 2
    end
  end
  object Pages: TIBEPageControl
    Left = 0
    Top = 0
    Width = 445
    Height = 243
    AdvOfficePagerStyler = IBEMainForm.PCStyler
    Align = alClient
    ActivePage = tsProcedure
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
    object tsGenerator: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 445
      Height = 218
      Caption = '&Generator'
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
      object GeneratorNameL: TLabel
        Left = -2
        Top = 76
        Width = 152
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Generator name'
        FocusControl = GeneratorNameE
        Transparent = True
        Visible = False
      end
      object GenValueL: TLabel
        Left = -2
        Top = 104
        Width = 152
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Initial value'
        FocusControl = GenValueE
        Transparent = True
        Visible = False
      end
      object lGenNameTruncated: TLabel
        Left = 155
        Top = 56
        Width = 205
        Height = 13
        Caption = 'Generator name was truncated to 31 chars!'
        Transparent = True
        Visible = False
      end
      object cbCreateGenerator: TIBECheckBox
        Left = 7
        Top = 4
        Width = 388
        Height = 20
        TabOrder = 0
        TabStop = True
        Alignment = taLeftJustify
        Caption = 'Create new &generator'
        ReturnIsTab = False
        Themed = True
        Version = '1.3.2.0'
        OnChange = cbCreateGeneratorChange
      end
      object GeneratorNameE: TdxEdit
        Left = 154
        Top = 73
        Width = 249
        TabOrder = 1
        Visible = False
        CharCase = ecUpperCase
        MaxLength = 31
        StyleController = IBEMainForm.MainSC
        StoredValues = 2
      end
      object GenValueE: TdxSpinEdit
        Left = 154
        Top = 101
        Width = 124
        TabOrder = 2
        Visible = False
        StyleController = IBEMainForm.MainSC
      end
      object cbUseGenerator: TIBECheckBox
        Left = 7
        Top = 28
        Width = 388
        Height = 20
        TabOrder = 3
        TabStop = True
        Alignment = taLeftJustify
        Caption = 'Use existing generator'
        ReturnIsTab = False
        Themed = True
        Version = '1.3.2.0'
        OnChange = cbUseGeneratorChange
      end
      object cbGenerators: TdxPickEdit
        Left = 154
        Top = 73
        Width = 249
        TabOrder = 4
        Visible = False
        StyleController = IBEMainForm.MainSC
        DropDownRows = 20
        DropDownListStyle = True
      end
    end
    object tsTrigger: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 445
      Height = 218
      Caption = '&Trigger'
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
      object Panel3: TPanel
        Left = 2
        Top = 2
        Width = 441
        Height = 30
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object lTrgNameTruncated: TLabel
          Left = 249
          Top = 8
          Width = 191
          Height = 13
          Alignment = taRightJustify
          Anchors = ['akLeft', 'akTop', 'akRight']
          Caption = 'Trigger name was truncated to 31 chars!'
          Visible = False
        end
        object cbTrigger: TIBECheckBox
          Left = 7
          Top = 4
          Width = 186
          Height = 20
          TabOrder = 0
          TabStop = True
          Alignment = taLeftJustify
          Caption = 'Create trigger'
          ReturnIsTab = False
          Themed = True
          Version = '1.3.2.0'
          OnChange = cbTriggerChange
        end
      end
      object TriggerFM: TEditFrame
        Left = 2
        Top = 32
        Width = 441
        Height = 184
        TabOrder = 1
        Visible = False
        object EditM: TSQLMemo
          Width = 441
          Height = 166
        end
        object pIncSearch: TPanel
          Top = 166
          Width = 441
        end
      end
    end
    object tsProcedure: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 445
      Height = 218
      Caption = '&Procedure'
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
      object Panel4: TPanel
        Left = 2
        Top = 2
        Width = 441
        Height = 30
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object lProcNameTruncated: TLabel
          Left = 233
          Top = 8
          Width = 207
          Height = 13
          Alignment = taRightJustify
          Anchors = ['akLeft', 'akTop', 'akRight']
          Caption = 'Procedure name was truncated to 31 chars!'
          Visible = False
        end
        object cbProcedure: TIBECheckBox
          Left = 7
          Top = 4
          Width = 143
          Height = 20
          TabOrder = 0
          TabStop = True
          Alignment = taLeftJustify
          Caption = 'Create procedure'
          ReturnIsTab = False
          Themed = True
          Version = '1.3.2.0'
          OnChange = cbProcedureChange
        end
      end
      object ProcedureFm: TEditFrame
        Left = 2
        Top = 32
        Width = 441
        Height = 184
        TabOrder = 1
        Visible = False
        object EditM: TSQLMemo
          Width = 441
          Height = 166
        end
        object pIncSearch: TPanel
          Top = 166
          Width = 441
        end
      end
    end
  end
  object ActionList1: TActionList
    OnUpdate = ActionList1Update
    Left = 328
    Top = 8
    object actExit: TAction
      Caption = 'actExit'
      ShortCut = 27
      OnExecute = actExitExecute
    end
    object actLocalize: TAction
      Caption = 'Localize'
      ShortCut = 57420
      OnExecute = actLocalizeExecute
    end
    object actOK: TAction
      Caption = 'actOK'
      ShortCut = 120
      OnExecute = actOKExecute
    end
  end
end
