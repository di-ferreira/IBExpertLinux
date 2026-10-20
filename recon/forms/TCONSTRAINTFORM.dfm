object ConstraintForm: TConstraintForm
  Left = 379
  Top = 149
  HelpContext = 2100
  AutoScroll = False
  BorderIcons = ['biSystemMenu']
  Caption = 'Add Constraint'
  ClientHeight = 457
  ClientWidth = 422
  Color = clBtnFace
  Constraints.MinHeight = 471
  Constraints.MinWidth = 430
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 424
    Width = 422
    Height = 33
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object Bevel3: TBevel
      Left = 0
      Top = 0
      Width = 422
      Height = 9
      Align = alTop
      Shape = bsTopLine
    end
    object OkB: TButton
      Left = 261
      Top = 6
      Width = 75
      Height = 24
      Anchors = ['akRight', 'akBottom']
      Caption = 'OK'
      TabOrder = 0
      OnClick = OkBClick
    end
    object CancelB: TButton
      Left = 343
      Top = 6
      Width = 75
      Height = 24
      Anchors = ['akRight', 'akBottom']
      Cancel = True
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object Pages: TIBEPageControl
    Left = 0
    Top = 0
    Width = 422
    Height = 424
    AdvOfficePagerStyler = IBEMainForm.PCStyler
    Align = alClient
    ActivePage = tsPrimary
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
    object tsPrimary: TAdvOfficePage
      Tag = 1
      Left = 0
      Top = 24
      Width = 422
      Height = 399
      Caption = '&Primary Key'
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
      object fafPrimaryKey: TFieldsAddFrame
        Left = 2
        Top = 57
        Width = 418
        Height = 340
        Align = alClient
        OnEnter = fafPrimaryKeyEnter
        OnExit = fafPrimaryKeyExit
        object Dock: TTBDock
          Height = 340
        end
        object tlAvailableFields: TdxTreeList
          Height = 340
        end
        object tlIncludedFields: TdxTreeList
          Width = 205
          Height = 340
        end
      end
      object Panel4: TPanel
        Left = 2
        Top = 2
        Width = 418
        Height = 55
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object lPKName: TLabel
          Left = 4
          Top = 8
          Width = 193
          Height = 13
          Alignment = taRightJustify
          Anchors = ['akTop']
          AutoSize = False
          Caption = 'Primary Key Name'
          FocusControl = PrimNameE
          Transparent = True
        end
        object PrimNameE: TdxEdit
          Left = 200
          Top = 5
          Width = 214
          TabOrder = 0
          Anchors = ['akTop', 'akRight']
          MaxLength = 31
          StyleController = IBEMainForm.MainSC
          OnChange = EnableOkBtn
          StoredValues = 2
        end
        object pPKFields: TPanel
          Left = 0
          Top = 32
          Width = 422
          Height = 20
          Alignment = taLeftJustify
          Anchors = ['akLeft', 'akTop', 'akRight']
          BevelOuter = bvNone
          Caption = ' Fields for Primary Key'
          Color = clBtnShadow
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clCaptionText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
      end
    end
    object tsForeign: TAdvOfficePage
      Tag = 2
      Left = 0
      Top = 24
      Width = 422
      Height = 399
      Caption = '&Foreign Key'
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
      object lFKName: TLabel
        Left = 0
        Top = 9
        Width = 196
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Foreign Key Name'
        FocusControl = ForNameE
        Transparent = True
      end
      object lFKTable: TLabel
        Left = 0
        Top = 181
        Width = 173
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Foreign Table'
        Transparent = True
      end
      object lDeleteRule: TLabel
        Left = 16
        Top = 348
        Width = 231
        Height = 13
        Alignment = taRightJustify
        Anchors = ['akRight', 'akBottom']
        AutoSize = False
        Caption = 'On Delete Rule'
        FocusControl = DelC
        Transparent = True
      end
      object lUpdateRule: TLabel
        Left = 16
        Top = 375
        Width = 231
        Height = 13
        Alignment = taRightJustify
        Anchors = ['akRight', 'akBottom']
        AutoSize = False
        Caption = 'On Update Rule'
        FocusControl = UpdC
        Transparent = True
      end
      object ForNameE: TdxEdit
        Left = 202
        Top = 6
        Width = 214
        TabOrder = 0
        OnEnter = ForNameEEnter
        MaxLength = 31
        StyleController = IBEMainForm.MainSC
        OnChange = EnableOkBtn
        StoredValues = 2
      end
      object DelC: TdxPickEdit
        Left = 249
        Top = 345
        Width = 171
        TabOrder = 4
        OnEnter = DelCEnter
        OnExit = DelCExit
        Anchors = ['akRight', 'akBottom']
        StyleController = IBEMainForm.MainSC
        DropDownListStyle = True
        Items.Strings = ['NO ACTION', 'CASCADE', 'SET NULL', 'SET DEFAULT']
      end
      object UpdC: TdxPickEdit
        Left = 249
        Top = 372
        Width = 171
        TabOrder = 5
        OnEnter = DelCEnter
        OnExit = DelCExit
        Anchors = ['akRight', 'akBottom']
        StyleController = IBEMainForm.MainSC
        DropDownListStyle = True
        Items.Strings = ['NO ACTION', 'CASCADE', 'SET NULL', 'SET DEFAULT']
      end
      object fafForeign: TFieldsAddFrame
        Left = 2
        Top = 206
        Width = 420
        Height = 108
        Anchors = ['akLeft', 'akTop', 'akRight', 'akBottom']
        TabOrder = 3
        OnEnter = fafForeignEnter
        OnExit = fafForeignExit
        object Dock: TTBDock
          Height = 108
        end
        object tlAvailableFields: TdxTreeList
          Height = 108
        end
        object tlIncludedFields: TdxTreeList
          Width = 207
          Height = 108
        end
        object SelectFieldsActions: TActionList
          Left = 352
        end
      end
      object pFKFields: TPanel
        Left = 0
        Top = 32
        Width = 425
        Height = 20
        Alignment = taLeftJustify
        Anchors = ['akLeft', 'akTop', 'akRight']
        BevelOuter = bvNone
        Caption = ' Fields for Foreign Key'
        Color = clBtnShadow
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clCaptionText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object fafPrimary: TFieldsAddFrame
        Top = 55
        Width = 422
        Height = 93
        Anchors = ['akLeft', 'akTop', 'akRight']
        TabOrder = 1
        OnEnter = fafPrimaryEnter
        OnExit = fafPrimaryExit
        object Dock: TTBDock
          Height = 93
        end
        object tlAvailableFields: TdxTreeList
          Height = 93
        end
        object tlIncludedFields: TdxTreeList
          Width = 209
          Height = 93
        end
        object SelectFieldsActions: TActionList
          Left = 352
        end
      end
      object pRFKFields: TPanel
        Left = 0
        Top = 153
        Width = 425
        Height = 20
        Alignment = taLeftJustify
        Anchors = ['akLeft', 'akTop', 'akRight']
        BevelOuter = bvNone
        Caption = ' Reference Fields for Foreign Key'
        Color = clBtnShadow
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clCaptionText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
      object pUpdDelRules: TPanel
        Left = 2
        Top = 319
        Width = 421
        Height = 20
        Alignment = taLeftJustify
        Anchors = ['akLeft', 'akRight', 'akBottom']
        BevelOuter = bvNone
        Caption = ' Update and Delete Rules'
        Color = clBtnShadow
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clCaptionText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
      end
      object TablesC: TdxPickEdit
        Left = 175
        Top = 178
        Width = 245
        TabOrder = 2
        OnEnter = fafForeignEnter
        OnExit = fafForeignExit
        Anchors = ['akLeft', 'akTop', 'akRight']
        StyleController = IBEMainForm.MainSC
        OnChange = TablesCChange
        DropDownRows = 30
        DropDownListStyle = True
      end
    end
    object tsCheck: TAdvOfficePage
      Tag = 3
      Left = 0
      Top = 24
      Width = 422
      Height = 399
      Caption = '&Check'
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
      object lCheckName: TLabel
        Left = 0
        Top = 11
        Width = 198
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Check Constraint Name'
        Transparent = True
      end
      object ChNameE: TdxEdit
        Left = 202
        Top = 7
        Width = 214
        TabOrder = 0
        Anchors = ['akLeft', 'akTop', 'akRight']
        StyleController = IBEMainForm.MainSC
        OnChange = EnableOkBtn
      end
      object CheckTextM: TSQLMemo
        Left = 0
        Top = 60
        Width = 422
        Height = 335
        Cursor = crIBeam
        Anchors = ['akLeft', 'akTop', 'akRight', 'akBottom']
        ParentColor = False
        ParentFont = False
        TabOrder = 1
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
        Lines.Strings = ['']
        MaxUndo = 10
        Options = ['mweoAutoIndent', 'mweoDragDropEditing', 'mweoShowScrollHint', 'mweoTabsToSpaces', 'mweoSmartTabs']
        ReadOnly = False
        ScrollBars = ssNone
        WantTabs = True
        OnEnter = CheckTextMEnter
        OnExit = CheckTextMExit
        ErrorLine = -1
      end
      object pCheckText: TPanel
        Left = 0
        Top = 33
        Width = 422
        Height = 20
        Alignment = taLeftJustify
        Anchors = ['akLeft', 'akTop', 'akRight']
        BevelOuter = bvNone
        Caption = ' Check Constraint Text'
        Color = clBtnShadow
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clCaptionText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
    end
    object tsUnique: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 422
      Height = 399
      Caption = '&Unique'
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
      object Panel1: TPanel
        Left = 2
        Top = 2
        Width = 418
        Height = 55
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label1: TLabel
          Left = 0
          Top = 8
          Width = 196
          Height = 13
          Alignment = taRightJustify
          Anchors = ['akTop']
          AutoSize = False
          Caption = 'Unique Constraint Name'
          FocusControl = UniqueNameE
          Transparent = True
        end
        object UniqueNameE: TdxEdit
          Left = 200
          Top = 5
          Width = 214
          TabOrder = 0
          Anchors = ['akTop', 'akRight']
          MaxLength = 31
          StyleController = IBEMainForm.MainSC
          OnChange = EnableOkBtn
          StoredValues = 2
        end
        object Panel2: TPanel
          Left = 0
          Top = 32
          Width = 422
          Height = 20
          Alignment = taLeftJustify
          Anchors = ['akLeft', 'akTop', 'akRight']
          BevelOuter = bvNone
          Caption = ' Fields for Unique Constraint'
          Color = clBtnShadow
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clCaptionText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
      end
      object fafUnique: TFieldsAddFrame
        Left = 2
        Top = 57
        Width = 418
        Height = 340
        Align = alClient
        TabOrder = 1
        OnEnter = fafPrimaryKeyEnter
        OnExit = fafPrimaryKeyExit
        object Dock: TTBDock
          Height = 340
        end
        object tlAvailableFields: TdxTreeList
          Height = 340
        end
        object tlIncludedFields: TdxTreeList
          Width = 205
          Height = 340
        end
        object SelectFieldsActions: TActionList
          Left = 352
          object aAddField: TAction
            Caption = 'Add Field'
          end
          object aRemoveField: TAction
            Caption = 'Remove Field'
          end
          object aFieldUp: TAction
            Caption = 'Field Up'
          end
          object aFieldDown: TAction
            Caption = 'Field Down'
          end
        end
      end
    end
  end
  object ConstrActions: TActionList
    Left = 300
    Top = 6
    object actLocalize: TAction
      Caption = 'Localize'
      ShortCut = 57420
      OnExecute = actLocalizeExecute
    end
  end
end
