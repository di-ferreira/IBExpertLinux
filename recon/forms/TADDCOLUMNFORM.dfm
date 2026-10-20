object AddColumnForm: TAddColumnForm
  Left = 390
  Top = 347
  Width = 505
  Height = 374
  HelpContext = 2200
  BorderIcons = ['biSystemMenu']
  Caption = 'Add Column'
  Color = clBtnFace
  Constraints.MinHeight = 322
  Constraints.MinWidth = 487
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
  object Panel1: TPanel
    Left = 0
    Top = 302
    Width = 489
    Height = 36
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object Bevel1: TBevel
      Left = 0
      Top = 0
      Width = 489
      Height = 2
      Align = alTop
      Shape = bsTopLine
    end
    object OkB: TButton
      Left = 327
      Top = 6
      Width = 75
      Height = 25
      Anchors = ['akTop', 'akRight']
      Caption = '&OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
    end
    object CancelB: TButton
      Left = 409
      Top = 6
      Width = 75
      Height = 25
      Anchors = ['akTop', 'akRight']
      Cancel = True
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 65
    Width = 489
    Height = 237
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel2'
    TabOrder = 1
    object Pages: TIBEPageControl
      Left = 0
      Top = 0
      Width = 489
      Height = 237
      AdvOfficePagerStyler = IBEMainForm.PCStyler
      Align = alClient
      ActivePage = tsDomain
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
      object tsDomain: TAdvOfficePage
        Left = 0
        Top = 24
        Width = 489
        Height = 212
        Caption = 'Domain'
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
        object Panel5: TPanel
          Left = 2
          Top = 2
          Width = 485
          Height = 67
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object lDomain: TLabel
            Left = 0
            Top = 11
            Width = 93
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Domain'
            FocusControl = DomainC
            Transparent = True
          end
          object DomCollateL: TLabel
            Left = 0
            Top = 39
            Width = 93
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Collate'
            FocusControl = DomCollateC
            Transparent = True
            Visible = False
          end
          object DomainC: TdxPickEdit
            Left = 97
            Top = 8
            Width = 240
            TabOrder = 0
            OnClick = TypeCClick
            OnKeyDown = DomainCKeyDown
            ReadOnly = False
            StyleController = IBEMainForm.MainSC
            OnChange = DomainCChange
            DropDownRows = 20
            DropDownListStyle = True
            Sorted = True
            StoredValues = 64
          end
          object DomCollateC: TdxPickEdit
            Left = 97
            Top = 36
            Width = 160
            TabOrder = 1
            Visible = False
            StyleController = IBEMainForm.MainSC
            DropDownRows = 20
            Items.Strings = ['']
          end
          object bEditDomain: TButton
            Left = 353
            Top = 8
            Width = 127
            Height = 23
            Action = actEditDomain
            Anchors = ['akTop', 'akRight']
            Cancel = True
            TabOrder = 2
          end
          object bNewDomain: TButton
            Left = 353
            Top = 33
            Width = 127
            Height = 23
            Action = actNewDomain
            Anchors = ['akTop', 'akRight']
            Cancel = True
            TabOrder = 3
          end
        end
        object pDomain: TPanel
          Left = 2
          Top = 69
          Width = 485
          Height = 141
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          Visible = False
          object pDomainInfo: TPanel
            Left = 0
            Top = 0
            Width = 485
            Height = 18
            Align = alTop
            Alignment = taLeftJustify
            BevelOuter = bvNone
            Caption = ' Domain info'
            Color = clBtnShadow
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clCaptionText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = ['fsBold']
            ParentFont = False
            TabOrder = 0
          end
          object DomainInfoM: TdxMemo
            Left = 0
            Top = 18
            Width = 485
            Align = alClient
            TabOrder = 1
            ReadOnly = True
            StyleController = IBEMainForm.MainSC
            Height = 123
            StoredValues = 64
          end
        end
      end
      object tsDataType: TAdvOfficePage
        Left = 0
        Top = 24
        Width = 489
        Height = 212
        Caption = 'Raw Data Type'
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
        object lType: TLabel
          Left = 0
          Top = 11
          Width = 94
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Type'
          FocusControl = TypeC
          Transparent = True
        end
        object LenL: TLabel
          Left = 0
          Top = 43
          Width = 94
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Length'
          Transparent = True
          Visible = False
        end
        object ScaleL: TLabel
          Left = 0
          Top = 72
          Width = 94
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Scale'
          FocusControl = ScaleE
          Transparent = True
          Visible = False
        end
        object SubTypeKindL: TLabel
          Left = 177
          Top = 72
          Width = 67
          Height = 13
          Caption = 'SubTypeKindL'
          Transparent = True
          Visible = False
        end
        object CharSetL: TLabel
          Left = 1
          Top = 108
          Width = 93
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'CharSet'
          FocusControl = CharSetC
          Transparent = True
          Visible = False
        end
        object CollateL: TLabel
          Left = 1
          Top = 137
          Width = 93
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Collate'
          FocusControl = CollateC
          Transparent = True
          Visible = False
        end
        object LenE: TdxSpinEdit
          Left = 98
          Top = 40
          Width = 73
          TabOrder = 1
          Visible = False
          StyleController = IBEMainForm.MainSC
          OnChange = LenEChange
          MaxValue = nan
          MinValue = -0.0
          Value = -0.0
          StoredValues = 48
        end
        object ScaleE: TdxSpinEdit
          Left = 98
          Top = 69
          Width = 73
          TabOrder = 2
          Visible = False
          StyleController = IBEMainForm.MainSC
          OnChange = ScaleEChange
          MaxValue = -3.105036184601418e+231
          Value = -0.0
          StoredValues = 16
        end
        object TypeC: TdxPickEdit
          Left = 98
          Top = 8
          Width = 186
          TabOrder = 0
          OnClick = TypeCClick
          OnEnter = TypeCEnter
          StyleController = IBEMainForm.MainSC
          OnChange = TypeCChange
          DropDownRows = 20
          DropDownListStyle = True
        end
        object CharSetC: TdxPickEdit
          Left = 98
          Top = 105
          Width = 129
          TabOrder = 3
          Visible = False
          OnClick = TypeCClick
          StyleController = IBEMainForm.MainSC
          OnChange = CharSetCChange
          DropDownRows = 25
          Items.Strings = ['']
        end
        object CollateC: TdxPickEdit
          Left = 98
          Top = 134
          Width = 129
          TabOrder = 4
          Visible = False
          OnClick = TypeCClick
          StyleController = IBEMainForm.MainSC
          Items.Strings = ['']
        end
      end
      object tsArray: TAdvOfficePage
        Left = 0
        Top = 24
        Width = 489
        Height = 212
        Caption = 'Array'
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
        object ArrayFm: TArrayFrame
          Left = 2
          Top = 2
          Width = 485
          Height = 208
          object Grid: TdxDBGrid
            Height = 208
            Filter.Criteria = {4 bytes}
          end
        end
      end
      object tsDefault: TAdvOfficePage
        Left = 0
        Top = 24
        Width = 489
        Height = 212
        Caption = 'Default'
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
        TabAppearance.BackGround.ColorTo = 14342874
        TabAppearance.BackGround.Direction = gdHorizontal
        object DefaultM: TSQLMemo
          Left = 2
          Top = 2
          Width = 485
          Height = 208
          Cursor = crIBeam
          Align = alClient
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          HighlightCurrentLine = False
          CurrentLineColor = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HighLighter = IBEMainForm.SQLPars
          Keystrokes = <
            item
              ShortCut = 38
              ShortCut2 = 0
              Command = ecUp
            end
            item
              ShortCut = 8230
              ShortCut2 = 0
              Command = ecSelUp
            end
            item
              ShortCut = 16422
              ShortCut2 = 0
              Command = ecScrollUp
            end
            item
              ShortCut = 40
              ShortCut2 = 0
              Command = ecDown
            end
            item
              ShortCut = 8232
              ShortCut2 = 0
              Command = ecSelDown
            end
            item
              ShortCut = 16424
              ShortCut2 = 0
              Command = ecScrollDown
            end
            item
              ShortCut = 37
              ShortCut2 = 0
              Command = ecLeft
            end
            item
              ShortCut = 8229
              ShortCut2 = 0
              Command = ecSelLeft
            end
            item
              ShortCut = 16421
              ShortCut2 = 0
              Command = ecWordLeft
            end
            item
              ShortCut = 24613
              ShortCut2 = 0
              Command = ecSelWordLeft
            end
            item
              ShortCut = 39
              ShortCut2 = 0
              Command = ecRight
            end
            item
              ShortCut = 8231
              ShortCut2 = 0
              Command = ecSelRight
            end
            item
              ShortCut = 16423
              ShortCut2 = 0
              Command = ecWordRight
            end
            item
              ShortCut = 24615
              ShortCut2 = 0
              Command = ecSelWordRight
            end
            item
              ShortCut = 34
              ShortCut2 = 0
              Command = ecPageDown
            end
            item
              ShortCut = 8226
              ShortCut2 = 0
              Command = ecSelPageDown
            end
            item
              ShortCut = 16418
              ShortCut2 = 0
              Command = ecPageBottom
            end
            item
              ShortCut = 24610
              ShortCut2 = 0
              Command = ecSelPageBottom
            end
            item
              ShortCut = 33
              ShortCut2 = 0
              Command = ecPageUp
            end
            item
              ShortCut = 8225
              ShortCut2 = 0
              Command = ecSelPageUp
            end
            item
              ShortCut = 16417
              ShortCut2 = 0
              Command = ecPageTop
            end
            item
              ShortCut = 24609
              ShortCut2 = 0
              Command = ecSelPageTop
            end
            item
              ShortCut = 36
              ShortCut2 = 0
              Command = ecLineStart
            end
            item
              ShortCut = 8228
              ShortCut2 = 0
              Command = ecSelLineStart
            end
            item
              ShortCut = 16420
              ShortCut2 = 0
              Command = ecEditorTop
            end
            item
              ShortCut = 24612
              ShortCut2 = 0
              Command = ecSelEditorTop
            end
            item
              ShortCut = 35
              ShortCut2 = 0
              Command = ecLineEnd
            end
            item
              ShortCut = 8227
              ShortCut2 = 0
              Command = ecSelLineEnd
            end
            item
              ShortCut = 16419
              ShortCut2 = 0
              Command = ecEditorBottom
            end
            item
              ShortCut = 24611
              ShortCut2 = 0
              Command = ecSelEditorBottom
            end
            item
              ShortCut = 45
              ShortCut2 = 0
              Command = ecToggleMode
            end
            item
              ShortCut = 16429
              ShortCut2 = 0
              Command = ecCopy
            end
            item
              ShortCut = 8237
              ShortCut2 = 0
              Command = ecPaste
            end
            item
              ShortCut = 46
              ShortCut2 = 0
              Command = ecDeleteChar
            end
            item
              ShortCut = 8238
              ShortCut2 = 0
              Command = ecCut
            end
            item
              ShortCut = 8
              ShortCut2 = 0
              Command = ecDeleteLastChar
            end
            item
              ShortCut = 16392
              ShortCut2 = 0
              Command = ecDeleteLastWord
            end
            item
              ShortCut = 32776
              ShortCut2 = 0
              Command = ecUndo
            end
            item
              ShortCut = 40968
              ShortCut2 = 0
              Command = ecRedo
            end
            item
              ShortCut = 13
              ShortCut2 = 0
              Command = ecLineBreak
            end
            item
              ShortCut = 16449
              ShortCut2 = 0
              Command = ecSelectAll
            end
            item
              ShortCut = 16451
              ShortCut2 = 0
              Command = ecCopy
            end
            item
              ShortCut = 24649
              ShortCut2 = 0
              Command = ecBlockIndent
            end
            item
              ShortCut = 16461
              ShortCut2 = 0
              Command = ecLineBreak
            end
            item
              ShortCut = 16462
              ShortCut2 = 0
              Command = ecInsertLine
            end
            item
              ShortCut = 16468
              ShortCut2 = 0
              Command = ecDeleteWord
            end
            item
              ShortCut = 24661
              ShortCut2 = 0
              Command = ecBlockUnindent
            end
            item
              ShortCut = 16470
              ShortCut2 = 0
              Command = ecPaste
            end
            item
              ShortCut = 16472
              ShortCut2 = 0
              Command = ecCut
            end
            item
              ShortCut = 16473
              ShortCut2 = 0
              Command = ecDeleteLine
            end
            item
              ShortCut = 24665
              ShortCut2 = 0
              Command = ecDeleteEOL
            end
            item
              ShortCut = 16474
              ShortCut2 = 0
              Command = ecUndo
            end
            item
              ShortCut = 24666
              ShortCut2 = 0
              Command = ecRedo
            end
            item
              ShortCut = 16432
              ShortCut2 = 0
              Command = ecGotoMarker0
            end
            item
              ShortCut = 16433
              ShortCut2 = 0
              Command = ecGotoMarker1
            end
            item
              ShortCut = 16434
              ShortCut2 = 0
              Command = ecGotoMarker2
            end
            item
              ShortCut = 16435
              ShortCut2 = 0
              Command = ecGotoMarker3
            end
            item
              ShortCut = 16436
              ShortCut2 = 0
              Command = ecGotoMarker4
            end
            item
              ShortCut = 16437
              ShortCut2 = 0
              Command = ecGotoMarker5
            end
            item
              ShortCut = 16438
              ShortCut2 = 0
              Command = ecGotoMarker6
            end
            item
              ShortCut = 16439
              ShortCut2 = 0
              Command = ecGotoMarker7
            end
            item
              ShortCut = 16440
              ShortCut2 = 0
              Command = ecGotoMarker8
            end
            item
              ShortCut = 16441
              ShortCut2 = 0
              Command = ecGotoMarker9
            end
            item
              ShortCut = 24624
              ShortCut2 = 0
              Command = ecSetMarker0
            end
            item
              ShortCut = 24625
              ShortCut2 = 0
              Command = ecSetMarker1
            end
            item
              ShortCut = 24626
              ShortCut2 = 0
              Command = ecSetMarker2
            end
            item
              ShortCut = 24627
              ShortCut2 = 0
              Command = ecSetMarker3
            end
            item
              ShortCut = 24628
              ShortCut2 = 0
              Command = ecSetMarker4
            end
            item
              ShortCut = 24629
              ShortCut2 = 0
              Command = ecSetMarker5
            end
            item
              ShortCut = 24630
              ShortCut2 = 0
              Command = ecSetMarker6
            end
            item
              ShortCut = 24631
              ShortCut2 = 0
              Command = ecSetMarker7
            end
            item
              ShortCut = 24632
              ShortCut2 = 0
              Command = ecSetMarker8
            end
            item
              ShortCut = 24633
              ShortCut2 = 0
              Command = ecSetMarker9
            end
          >
          Lines.Strings = ['', '', '', '', '', '', '', '', '']
          MaxUndo = 10
          ReadOnly = False
          ScrollBars = ssNone
          WantTabs = False
          OnEnter = DefaultMEnter
          OnExit = DefaultMExit
          ErrorLine = -1
        end
      end
      object tsCheck: TAdvOfficePage
        Left = 0
        Top = 24
        Width = 489
        Height = 212
        Caption = 'Check'
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
        object CheckM: TSQLMemo
          Left = 2
          Top = 2
          Width = 485
          Height = 208
          Cursor = crIBeam
          Align = alClient
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          HighlightCurrentLine = False
          CurrentLineColor = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HighLighter = IBEMainForm.SQLPars
          Keystrokes = <
            item
              ShortCut = 38
              ShortCut2 = 0
              Command = ecUp
            end
            item
              ShortCut = 8230
              ShortCut2 = 0
              Command = ecSelUp
            end
            item
              ShortCut = 16422
              ShortCut2 = 0
              Command = ecScrollUp
            end
            item
              ShortCut = 40
              ShortCut2 = 0
              Command = ecDown
            end
            item
              ShortCut = 8232
              ShortCut2 = 0
              Command = ecSelDown
            end
            item
              ShortCut = 16424
              ShortCut2 = 0
              Command = ecScrollDown
            end
            item
              ShortCut = 37
              ShortCut2 = 0
              Command = ecLeft
            end
            item
              ShortCut = 8229
              ShortCut2 = 0
              Command = ecSelLeft
            end
            item
              ShortCut = 16421
              ShortCut2 = 0
              Command = ecWordLeft
            end
            item
              ShortCut = 24613
              ShortCut2 = 0
              Command = ecSelWordLeft
            end
            item
              ShortCut = 39
              ShortCut2 = 0
              Command = ecRight
            end
            item
              ShortCut = 8231
              ShortCut2 = 0
              Command = ecSelRight
            end
            item
              ShortCut = 16423
              ShortCut2 = 0
              Command = ecWordRight
            end
            item
              ShortCut = 24615
              ShortCut2 = 0
              Command = ecSelWordRight
            end
            item
              ShortCut = 34
              ShortCut2 = 0
              Command = ecPageDown
            end
            item
              ShortCut = 8226
              ShortCut2 = 0
              Command = ecSelPageDown
            end
            item
              ShortCut = 16418
              ShortCut2 = 0
              Command = ecPageBottom
            end
            item
              ShortCut = 24610
              ShortCut2 = 0
              Command = ecSelPageBottom
            end
            item
              ShortCut = 33
              ShortCut2 = 0
              Command = ecPageUp
            end
            item
              ShortCut = 8225
              ShortCut2 = 0
              Command = ecSelPageUp
            end
            item
              ShortCut = 16417
              ShortCut2 = 0
              Command = ecPageTop
            end
            item
              ShortCut = 24609
              ShortCut2 = 0
              Command = ecSelPageTop
            end
            item
              ShortCut = 36
              ShortCut2 = 0
              Command = ecLineStart
            end
            item
              ShortCut = 8228
              ShortCut2 = 0
              Command = ecSelLineStart
            end
            item
              ShortCut = 16420
              ShortCut2 = 0
              Command = ecEditorTop
            end
            item
              ShortCut = 24612
              ShortCut2 = 0
              Command = ecSelEditorTop
            end
            item
              ShortCut = 35
              ShortCut2 = 0
              Command = ecLineEnd
            end
            item
              ShortCut = 8227
              ShortCut2 = 0
              Command = ecSelLineEnd
            end
            item
              ShortCut = 16419
              ShortCut2 = 0
              Command = ecEditorBottom
            end
            item
              ShortCut = 24611
              ShortCut2 = 0
              Command = ecSelEditorBottom
            end
            item
              ShortCut = 45
              ShortCut2 = 0
              Command = ecToggleMode
            end
            item
              ShortCut = 16429
              ShortCut2 = 0
              Command = ecCopy
            end
            item
              ShortCut = 8237
              ShortCut2 = 0
              Command = ecPaste
            end
            item
              ShortCut = 46
              ShortCut2 = 0
              Command = ecDeleteChar
            end
            item
              ShortCut = 8238
              ShortCut2 = 0
              Command = ecCut
            end
            item
              ShortCut = 8
              ShortCut2 = 0
              Command = ecDeleteLastChar
            end
            item
              ShortCut = 16392
              ShortCut2 = 0
              Command = ecDeleteLastWord
            end
            item
              ShortCut = 32776
              ShortCut2 = 0
              Command = ecUndo
            end
            item
              ShortCut = 40968
              ShortCut2 = 0
              Command = ecRedo
            end
            item
              ShortCut = 13
              ShortCut2 = 0
              Command = ecLineBreak
            end
            item
              ShortCut = 16449
              ShortCut2 = 0
              Command = ecSelectAll
            end
            item
              ShortCut = 16451
              ShortCut2 = 0
              Command = ecCopy
            end
            item
              ShortCut = 24649
              ShortCut2 = 0
              Command = ecBlockIndent
            end
            item
              ShortCut = 16461
              ShortCut2 = 0
              Command = ecLineBreak
            end
            item
              ShortCut = 16462
              ShortCut2 = 0
              Command = ecInsertLine
            end
            item
              ShortCut = 16468
              ShortCut2 = 0
              Command = ecDeleteWord
            end
            item
              ShortCut = 24661
              ShortCut2 = 0
              Command = ecBlockUnindent
            end
            item
              ShortCut = 16470
              ShortCut2 = 0
              Command = ecPaste
            end
            item
              ShortCut = 16472
              ShortCut2 = 0
              Command = ecCut
            end
            item
              ShortCut = 16473
              ShortCut2 = 0
              Command = ecDeleteLine
            end
            item
              ShortCut = 24665
              ShortCut2 = 0
              Command = ecDeleteEOL
            end
            item
              ShortCut = 16474
              ShortCut2 = 0
              Command = ecUndo
            end
            item
              ShortCut = 24666
              ShortCut2 = 0
              Command = ecRedo
            end
            item
              ShortCut = 16432
              ShortCut2 = 0
              Command = ecGotoMarker0
            end
            item
              ShortCut = 16433
              ShortCut2 = 0
              Command = ecGotoMarker1
            end
            item
              ShortCut = 16434
              ShortCut2 = 0
              Command = ecGotoMarker2
            end
            item
              ShortCut = 16435
              ShortCut2 = 0
              Command = ecGotoMarker3
            end
            item
              ShortCut = 16436
              ShortCut2 = 0
              Command = ecGotoMarker4
            end
            item
              ShortCut = 16437
              ShortCut2 = 0
              Command = ecGotoMarker5
            end
            item
              ShortCut = 16438
              ShortCut2 = 0
              Command = ecGotoMarker6
            end
            item
              ShortCut = 16439
              ShortCut2 = 0
              Command = ecGotoMarker7
            end
            item
              ShortCut = 16440
              ShortCut2 = 0
              Command = ecGotoMarker8
            end
            item
              ShortCut = 16441
              ShortCut2 = 0
              Command = ecGotoMarker9
            end
            item
              ShortCut = 24624
              ShortCut2 = 0
              Command = ecSetMarker0
            end
            item
              ShortCut = 24625
              ShortCut2 = 0
              Command = ecSetMarker1
            end
            item
              ShortCut = 24626
              ShortCut2 = 0
              Command = ecSetMarker2
            end
            item
              ShortCut = 24627
              ShortCut2 = 0
              Command = ecSetMarker3
            end
            item
              ShortCut = 24628
              ShortCut2 = 0
              Command = ecSetMarker4
            end
            item
              ShortCut = 24629
              ShortCut2 = 0
              Command = ecSetMarker5
            end
            item
              ShortCut = 24630
              ShortCut2 = 0
              Command = ecSetMarker6
            end
            item
              ShortCut = 24631
              ShortCut2 = 0
              Command = ecSetMarker7
            end
            item
              ShortCut = 24632
              ShortCut2 = 0
              Command = ecSetMarker8
            end
            item
              ShortCut = 24633
              ShortCut2 = 0
              Command = ecSetMarker9
            end
          >
          Lines.Strings = ['', '', '', '', '', '', '', '']
          MaxUndo = 10
          ReadOnly = False
          ScrollBars = ssNone
          WantTabs = False
          OnEnter = DefaultMEnter
          OnExit = DefaultMExit
          ErrorLine = -1
        end
      end
      object tsComputed: TAdvOfficePage
        Left = 0
        Top = 24
        Width = 489
        Height = 212
        Caption = 'Computed by'
        ImageIndex = 5
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
        object ComputedM: TSQLMemo
          Left = 2
          Top = 2
          Width = 485
          Height = 208
          Cursor = crIBeam
          Align = alClient
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          HighlightCurrentLine = False
          CurrentLineColor = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HighLighter = IBEMainForm.SQLPars
          Keystrokes = <
            item
              ShortCut = 38
              ShortCut2 = 0
              Command = ecUp
            end
            item
              ShortCut = 8230
              ShortCut2 = 0
              Command = ecSelUp
            end
            item
              ShortCut = 16422
              ShortCut2 = 0
              Command = ecScrollUp
            end
            item
              ShortCut = 40
              ShortCut2 = 0
              Command = ecDown
            end
            item
              ShortCut = 8232
              ShortCut2 = 0
              Command = ecSelDown
            end
            item
              ShortCut = 16424
              ShortCut2 = 0
              Command = ecScrollDown
            end
            item
              ShortCut = 37
              ShortCut2 = 0
              Command = ecLeft
            end
            item
              ShortCut = 8229
              ShortCut2 = 0
              Command = ecSelLeft
            end
            item
              ShortCut = 16421
              ShortCut2 = 0
              Command = ecWordLeft
            end
            item
              ShortCut = 24613
              ShortCut2 = 0
              Command = ecSelWordLeft
            end
            item
              ShortCut = 39
              ShortCut2 = 0
              Command = ecRight
            end
            item
              ShortCut = 8231
              ShortCut2 = 0
              Command = ecSelRight
            end
            item
              ShortCut = 16423
              ShortCut2 = 0
              Command = ecWordRight
            end
            item
              ShortCut = 24615
              ShortCut2 = 0
              Command = ecSelWordRight
            end
            item
              ShortCut = 34
              ShortCut2 = 0
              Command = ecPageDown
            end
            item
              ShortCut = 8226
              ShortCut2 = 0
              Command = ecSelPageDown
            end
            item
              ShortCut = 16418
              ShortCut2 = 0
              Command = ecPageBottom
            end
            item
              ShortCut = 24610
              ShortCut2 = 0
              Command = ecSelPageBottom
            end
            item
              ShortCut = 33
              ShortCut2 = 0
              Command = ecPageUp
            end
            item
              ShortCut = 8225
              ShortCut2 = 0
              Command = ecSelPageUp
            end
            item
              ShortCut = 16417
              ShortCut2 = 0
              Command = ecPageTop
            end
            item
              ShortCut = 24609
              ShortCut2 = 0
              Command = ecSelPageTop
            end
            item
              ShortCut = 36
              ShortCut2 = 0
              Command = ecLineStart
            end
            item
              ShortCut = 8228
              ShortCut2 = 0
              Command = ecSelLineStart
            end
            item
              ShortCut = 16420
              ShortCut2 = 0
              Command = ecEditorTop
            end
            item
              ShortCut = 24612
              ShortCut2 = 0
              Command = ecSelEditorTop
            end
            item
              ShortCut = 35
              ShortCut2 = 0
              Command = ecLineEnd
            end
            item
              ShortCut = 8227
              ShortCut2 = 0
              Command = ecSelLineEnd
            end
            item
              ShortCut = 16419
              ShortCut2 = 0
              Command = ecEditorBottom
            end
            item
              ShortCut = 24611
              ShortCut2 = 0
              Command = ecSelEditorBottom
            end
            item
              ShortCut = 45
              ShortCut2 = 0
              Command = ecToggleMode
            end
            item
              ShortCut = 16429
              ShortCut2 = 0
              Command = ecCopy
            end
            item
              ShortCut = 8237
              ShortCut2 = 0
              Command = ecPaste
            end
            item
              ShortCut = 46
              ShortCut2 = 0
              Command = ecDeleteChar
            end
            item
              ShortCut = 8238
              ShortCut2 = 0
              Command = ecCut
            end
            item
              ShortCut = 8
              ShortCut2 = 0
              Command = ecDeleteLastChar
            end
            item
              ShortCut = 16392
              ShortCut2 = 0
              Command = ecDeleteLastWord
            end
            item
              ShortCut = 32776
              ShortCut2 = 0
              Command = ecUndo
            end
            item
              ShortCut = 40968
              ShortCut2 = 0
              Command = ecRedo
            end
            item
              ShortCut = 13
              ShortCut2 = 0
              Command = ecLineBreak
            end
            item
              ShortCut = 16449
              ShortCut2 = 0
              Command = ecSelectAll
            end
            item
              ShortCut = 16451
              ShortCut2 = 0
              Command = ecCopy
            end
            item
              ShortCut = 24649
              ShortCut2 = 0
              Command = ecBlockIndent
            end
            item
              ShortCut = 16461
              ShortCut2 = 0
              Command = ecLineBreak
            end
            item
              ShortCut = 16462
              ShortCut2 = 0
              Command = ecInsertLine
            end
            item
              ShortCut = 16468
              ShortCut2 = 0
              Command = ecDeleteWord
            end
            item
              ShortCut = 24661
              ShortCut2 = 0
              Command = ecBlockUnindent
            end
            item
              ShortCut = 16470
              ShortCut2 = 0
              Command = ecPaste
            end
            item
              ShortCut = 16472
              ShortCut2 = 0
              Command = ecCut
            end
            item
              ShortCut = 16473
              ShortCut2 = 0
              Command = ecDeleteLine
            end
            item
              ShortCut = 24665
              ShortCut2 = 0
              Command = ecDeleteEOL
            end
            item
              ShortCut = 16474
              ShortCut2 = 0
              Command = ecUndo
            end
            item
              ShortCut = 24666
              ShortCut2 = 0
              Command = ecRedo
            end
            item
              ShortCut = 16432
              ShortCut2 = 0
              Command = ecGotoMarker0
            end
            item
              ShortCut = 16433
              ShortCut2 = 0
              Command = ecGotoMarker1
            end
            item
              ShortCut = 16434
              ShortCut2 = 0
              Command = ecGotoMarker2
            end
            item
              ShortCut = 16435
              ShortCut2 = 0
              Command = ecGotoMarker3
            end
            item
              ShortCut = 16436
              ShortCut2 = 0
              Command = ecGotoMarker4
            end
            item
              ShortCut = 16437
              ShortCut2 = 0
              Command = ecGotoMarker5
            end
            item
              ShortCut = 16438
              ShortCut2 = 0
              Command = ecGotoMarker6
            end
            item
              ShortCut = 16439
              ShortCut2 = 0
              Command = ecGotoMarker7
            end
            item
              ShortCut = 16440
              ShortCut2 = 0
              Command = ecGotoMarker8
            end
            item
              ShortCut = 16441
              ShortCut2 = 0
              Command = ecGotoMarker9
            end
            item
              ShortCut = 24624
              ShortCut2 = 0
              Command = ecSetMarker0
            end
            item
              ShortCut = 24625
              ShortCut2 = 0
              Command = ecSetMarker1
            end
            item
              ShortCut = 24626
              ShortCut2 = 0
              Command = ecSetMarker2
            end
            item
              ShortCut = 24627
              ShortCut2 = 0
              Command = ecSetMarker3
            end
            item
              ShortCut = 24628
              ShortCut2 = 0
              Command = ecSetMarker4
            end
            item
              ShortCut = 24629
              ShortCut2 = 0
              Command = ecSetMarker5
            end
            item
              ShortCut = 24630
              ShortCut2 = 0
              Command = ecSetMarker6
            end
            item
              ShortCut = 24631
              ShortCut2 = 0
              Command = ecSetMarker7
            end
            item
              ShortCut = 24632
              ShortCut2 = 0
              Command = ecSetMarker8
            end
            item
              ShortCut = 24633
              ShortCut2 = 0
              Command = ecSetMarker9
            end
          >
          Lines.Strings = ['', '', '', '', '', '', '', '']
          MaxUndo = 10
          ReadOnly = False
          ScrollBars = ssNone
          WantTabs = False
          OnEnter = DefaultMEnter
          OnExit = DefaultMExit
          ErrorLine = -1
        end
      end
      object tsAutoincrement: TAdvOfficePage
        Left = 0
        Top = 24
        Width = 489
        Height = 212
        Caption = 'Autoincrement'
        ImageIndex = 6
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
        object AutoincrementPages: TIBEPageControl
          Left = 2
          Top = 2
          Width = 485
          Height = 208
          AdvOfficePagerStyler = IBEMainForm.PCStyler
          Align = alClient
          ActivePage = tsGenerator
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
          object tsGenerator: TAdvOfficePage
            Left = 0
            Top = 24
            Width = 485
            Height = 183
            Caption = 'Generator'
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
              Left = 0
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
              Left = 0
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
              Width = 211
              Height = 13
              Caption = 'Generator name was truncated to 31 chars!'
              Visible = False
            end
            object cbCreateGenerator: TdxCheckEdit
              Left = 7
              Top = 6
              Width = 514
              TabOrder = 0
              Caption = 'Create &generator'
              StyleController = IBEMainForm.MainCheckSC
              OnChange = cbGeneratorChange
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
              Width = 138
              TabOrder = 2
              Visible = False
              StyleController = IBEMainForm.MainSC
              OnChange = LenEChange
            end
            object cbUseGenerator: TdxCheckEdit
              Left = 7
              Top = 31
              Width = 388
              TabOrder = 3
              Caption = 'Use existing generator'
              StyleController = IBEMainForm.MainCheckSC
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
            Width = 485
            Height = 183
            Caption = 'Trigger'
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
            object Panel4: TPanel
              Left = 2
              Top = 2
              Width = 481
              Height = 35
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              object lTrgNameTruncated: TLabel
                Left = 289
                Top = 9
                Width = 196
                Height = 13
                Alignment = taRightJustify
                Anchors = ['akLeft', 'akTop', 'akRight']
                Caption = 'Trigger name was truncated to 31 chars!'
                Visible = False
              end
              object cbTrigger: TdxCheckEdit
                Left = 7
                Top = 6
                Width = 122
                TabOrder = 0
                OnClick = cbTriggerChange
                Caption = 'Create &trigger'
                StyleController = IBEMainForm.MainCheckSC
                OnChange = cbTriggerChange
              end
            end
            object TriggerFm: TEditFrame
              Left = 2
              Top = 37
              Width = 481
              Height = 144
              TabOrder = 1
              Visible = False
              object lBookmark: TLabel
                Width = 46
              end
              object EditM: TSQLMemo
                Width = 481
                Height = 126
              end
              object pIncSearch: TPanel
                Top = 126
                Width = 481
              end
            end
          end
          object tsProcedure: TAdvOfficePage
            Left = 0
            Top = 24
            Width = 485
            Height = 183
            Caption = 'Procedure'
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
            object Panel6: TPanel
              Left = 2
              Top = 2
              Width = 481
              Height = 35
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              object lProcNameTruncated: TLabel
                Left = 273
                Top = 9
                Width = 211
                Height = 13
                Alignment = taRightJustify
                Anchors = ['akLeft', 'akTop', 'akRight']
                Caption = 'Procedure name was truncated to 31 chars!'
                Visible = False
              end
              object cbProcedure: TdxCheckEdit
                Left = 7
                Top = 6
                Width = 122
                TabOrder = 0
                OnClick = cbProcedureClick
                Caption = 'Create &procedure'
                StyleController = IBEMainForm.MainCheckSC
              end
            end
            object ProcedureFm: TEditFrame
              Left = 2
              Top = 37
              Width = 481
              Height = 144
              TabOrder = 1
              Visible = False
              object lBookmark: TLabel
                Width = 46
              end
              object EditM: TSQLMemo
                Width = 481
                Height = 126
              end
              object pIncSearch: TPanel
                Top = 126
                Width = 481
              end
            end
          end
        end
      end
      object tsDescription: TAdvOfficePage
        Left = 0
        Top = 24
        Width = 489
        Height = 212
        Caption = 'Description'
        ImageIndex = 7
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
          Width = 485
          Height = 208
          object lBookmark: TLabel
            Width = 46
          end
          object EditM: TSQLMemo
            Width = 485
            Height = 190
            WantTabs = False
            OnEnter = DescFmEditMEnter
            OnExit = DescFmEditMExit
          end
          object pIncSearch: TPanel
            Top = 190
            Width = 485
          end
        end
      end
      object tsDDL: TAdvOfficePage
        Left = 0
        Top = 24
        Width = 489
        Height = 212
        Caption = 'DDL'
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
        object DDLFm: TEditFrame
          Left = 2
          Top = 2
          Width = 485
          Height = 208
          object lBookmark: TLabel
            Width = 46
          end
          object EditM: TSQLMemo
            Width = 485
            Height = 190
            WantTabs = False
          end
          object pIncSearch: TPanel
            Top = 190
            Width = 485
          end
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 489
    Height = 65
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object lTable: TLabel
      Left = 1
      Top = 11
      Width = 92
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Table'
      FocusControl = TableE
      Transparent = True
    end
    object lColumn: TLabel
      Left = 1
      Top = 39
      Width = 92
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Column'
      FocusControl = ColumnE
      Transparent = True
    end
    object TableE: TdxEdit
      Left = 97
      Top = 8
      Width = 242
      TabOrder = 0
      CharCase = ecUpperCase
      MaxLength = 31
      ReadOnly = True
      StyleController = IBEMainForm.MainSC
      StoredValues = 66
    end
    object ColumnE: TdxEdit
      Left = 97
      Top = 36
      Width = 242
      TabOrder = 1
      OnExit = ColumnEExit
      CharCase = ecUpperCase
      MaxLength = 31
      StyleController = IBEMainForm.MainSC
      OnChange = ColumnEChange
      StoredValues = 2
    end
    object NotNullC: TdxCheckEdit
      Left = 350
      Top = 8
      Width = 147
      TabOrder = 2
      Anchors = ['akLeft', 'akTop', 'akRight']
      Caption = '&Not Null '
      StyleController = IBEMainForm.MainCheckSC
    end
    object cbPrimaryKey: TdxCheckEdit
      Left = 350
      Top = 36
      Width = 147
      TabOrder = 3
      Anchors = ['akLeft', 'akTop', 'akRight']
      Caption = '&Primary Key'
      StyleController = IBEMainForm.MainCheckSC
    end
  end
  object ChangeTimer: TTimer
    Enabled = False
    Interval = 200
    OnTimer = ChangeTimerTimer
    Left = 84
    Top = 214
  end
  object Actions: TActionList
    OnUpdate = ActionsUpdate
    Left = 84
    Top = 243
    object actLocalize: TAction
      Caption = 'Localize'
      ShortCut = 57420
      OnExecute = actLocalizeExecute
    end
    object actNewDomain: TAction
      Caption = 'New Domain'
      OnExecute = actNewDomainExecute
    end
    object actEditDomain: TAction
      Caption = 'Edit Domain'
      OnExecute = actEditDomainExecute
    end
  end
end
