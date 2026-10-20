object IndexForm: TIndexForm
  Left = 389
  Top = 237
  Width = 412
  Height = 494
  HelpContext = 11400
  BorderIcons = ['biSystemMenu']
  Caption = 'Add Index'
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  Scaled = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 351
    Width = 396
    Height = 107
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object lSorting: TLabel
      Left = 150
      Top = 30
      Width = 83
      Height = 13
      Alignment = taRightJustify
      Anchors = ['akTop', 'akRight']
      AutoSize = False
      Caption = 'Order'
      FocusControl = OrderC
      Transparent = True
    end
    object Bevel1: TBevel
      Left = 1
      Top = 74
      Width = 403
      Height = 9
      Anchors = ['akLeft', 'akTop', 'akRight']
      Shape = bsTopLine
    end
    object pAdditional: TPanel
      Left = 0
      Top = 4
      Width = 404
      Height = 18
      Alignment = taLeftJustify
      Anchors = ['akLeft', 'akTop', 'akRight']
      BevelOuter = bvNone
      Caption = ' Other Properties'
      Color = clBtnShadow
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clCaptionText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object UniqueC: TdxCheckEdit
      Left = 7
      Top = 51
      Width = 113
      TabOrder = 1
      OnEnter = UniqueCEnter
      OnExit = UniqueCExit
      Caption = '&Unique'
      StyleController = IBEMainForm.MainCheckSC
    end
    object ActiveC: TdxCheckEdit
      Left = 7
      Top = 27
      Width = 105
      TabOrder = 2
      OnEnter = UniqueCEnter
      OnExit = UniqueCExit
      Caption = '&Index Active'
      StyleController = IBEMainForm.MainCheckSC
    end
    object OrderC: TdxPickEdit
      Left = 237
      Top = 27
      Width = 157
      TabOrder = 3
      OnEnter = UniqueCEnter
      OnExit = UniqueCExit
      Anchors = ['akTop', 'akRight']
      StyleController = IBEMainForm.MainSC
      DropDownListStyle = True
      Items.Strings = ['Ascending', 'Descending']
    end
    object OkB: TButton
      Left = 236
      Top = 80
      Width = 75
      Height = 24
      Action = actCompile
      Anchors = ['akTop', 'akRight']
      Default = True
      TabOrder = 4
    end
    object CancelB: TButton
      Left = 317
      Top = 80
      Width = 75
      Height = 24
      Anchors = ['akTop', 'akRight']
      Cancel = True
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 5
    end
    object bSetStat: TButton
      Left = 3
      Top = 80
      Width = 142
      Height = 24
      Anchors = ['akLeft', 'akBottom']
      Cancel = True
      Caption = '&Recompute selectivity'
      TabOrder = 6
      Visible = False
      OnClick = bSetStatClick
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 396
    Height = 73
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object lIndexName: TLabel
      Left = 0
      Top = 42
      Width = 189
      Height = 13
      Alignment = taRightJustify
      Anchors = ['akLeft', 'akTop', 'akRight']
      AutoSize = False
      Caption = 'Index Name'
      FocusControl = NameE
      Transparent = True
    end
    object Bevel2: TBevel
      Left = 1
      Top = 68
      Width = 402
      Height = 9
      Anchors = ['akLeft', 'akTop', 'akRight']
      Shape = bsTopLine
    end
    object lTableName: TLabel
      Left = 0
      Top = 11
      Width = 189
      Height = 13
      Alignment = taRightJustify
      Anchors = ['akLeft', 'akTop', 'akRight']
      AutoSize = False
      Caption = 'Table Name'
      FocusControl = cbTableName
      Transparent = True
    end
    object NameE: TdxEdit
      Left = 193
      Top = 39
      Width = 200
      TabOrder = 0
      Anchors = ['akTop', 'akRight']
      MaxLength = 31
      StyleController = IBEMainForm.MainSC
      StoredValues = 2
    end
    object cbTableName: TdxPickEdit
      Left = 193
      Top = 8
      Width = 200
      TabOrder = 1
      Anchors = ['akTop', 'akRight']
      StyleController = IBEMainForm.MainSC
      OnChange = cbTableNameChange
      DropDownRows = 20
      DropDownListStyle = True
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 73
    Width = 396
    Height = 278
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel4'
    TabOrder = 2
    object Pages: TIBEPageControl
      Left = 0
      Top = 0
      Width = 396
      Height = 278
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
      OnChange = PagesChange
      TabOrder = 0
      TabStop = True
      NextPictureChanged = True
      PrevPictureChanged = True
      object tsFields: TAdvOfficePage
        Left = 0
        Top = 24
        Width = 396
        Height = 253
        Caption = 'Fields'
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
        object fafIndexFields: TFieldsAddFrame
          Left = 2
          Top = 2
          Width = 392
          Height = 249
          Align = alClient
          object Dock: TTBDock
            Height = 249
          end
          object tlAvailableFields: TdxTreeList
            Height = 249
          end
          object tlIncludedFields: TdxTreeList
            Width = 179
            Height = 249
          end
        end
      end
      object tsExpression: TAdvOfficePage
        Left = 0
        Top = 24
        Width = 396
        Height = 253
        Caption = 'Expression'
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
          Left = 2
          Top = 2
          Width = 392
          Height = 249
          object lBookmark: TLabel
            Width = 46
          end
          object EditM: TSQLMemo
            Width = 392
            Height = 231
          end
          object pIncSearch: TPanel
            Top = 231
            Width = 392
          end
        end
      end
      object tsDescription: TAdvOfficePage
        Left = 0
        Top = 24
        Width = 396
        Height = 253
        Caption = 'Description'
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
          Width = 392
          Height = 249
          object lBookmark: TLabel
            Width = 46
          end
          object EditM: TSQLMemo
            Width = 392
            Height = 231
          end
          object pIncSearch: TPanel
            Top = 231
            Width = 392
          end
        end
      end
      object tsDependencies: TAdvOfficePage
        Left = 0
        Top = 24
        Width = 396
        Height = 253
        Caption = 'Dependencies'
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
      object tsDDL: TAdvOfficePage
        Left = 0
        Top = 24
        Width = 396
        Height = 253
        Caption = 'DDL'
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
    end
  end
  object ActionList1: TActionList
    Left = 288
    Top = 160
    object actCompile: TAction
      Caption = 'OK'
      OnExecute = actCompileExecute
      OnUpdate = actCompileUpdate
    end
    object actLocalize: TAction
      Caption = 'actLocalize'
      ShortCut = 57420
      OnExecute = actLocalizeExecute
    end
  end
end
