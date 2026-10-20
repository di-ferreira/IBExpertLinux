object DBPropertiesForm: TDBPropertiesForm
  Left = 472
  Top = 369
  HelpContext = 7300
  BorderIcons = ['biSystemMenu']
  BorderStyle = bsSingle
  Caption = 'Database Properties'
  ClientHeight = 292
  ClientWidth = 398
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 29
    Width = 398
    Height = 10
    Anchors = ['akLeft', 'akTop', 'akRight']
    Shape = bsBottomLine
  end
  object sohoLabel1: TLabel
    Left = 30
    Top = 11
    Width = 46
    Height = 13
    Alignment = taRightJustify
    Caption = 'Database'
    Transparent = True
  end
  object Bevel2: TBevel
    Left = 0
    Top = 248
    Width = 398
    Height = 10
    Anchors = ['akLeft', 'akTop', 'akRight']
    Shape = bsBottomLine
  end
  object cbDatabases: TdxPickEdit
    Left = 80
    Top = 7
    Width = 314
    TabOrder = 0
    Anchors = ['akLeft', 'akTop', 'akRight']
    StyleController = IBEMainForm.MainSC
    OnChange = cbDatabasesChange
    DropDownRows = 20
    DropDownListStyle = True
  end
  object Pages: TIBEPageControl
    Left = -1
    Top = 39
    Width = 400
    Height = 217
    AdvOfficePagerStyler = IBEMainForm.PCStyler
    Anchors = ['akLeft', 'akTop', 'akRight', 'akBottom']
    ActivePage = TabSheet1
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
    TabOrder = 1
    TabStop = True
    NextPictureChanged = True
    PrevPictureChanged = True
    object TabSheet1: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 400
      Height = 192
      Caption = 'General'
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
      object Label1: TLabel
        Left = 9
        Top = 10
        Width = 48
        Height = 13
        Caption = 'Page Size'
        Transparent = True
      end
      object Label2: TLabel
        Left = 9
        Top = 39
        Width = 57
        Height = 13
        Caption = 'SQL Dialect'
        Transparent = True
      end
      object Label3: TLabel
        Left = 9
        Top = 71
        Width = 71
        Height = 13
        Caption = 'Sweep Interval'
        Transparent = True
      end
      object lODS: TLabel
        Left = 9
        Top = 104
        Width = 64
        Height = 13
        Caption = 'ODS Version '
        Transparent = True
      end
      object cbSQLDialect: TdxPickEdit
        Left = 107
        Top = 36
        Width = 70
        TabOrder = 0
        StyleController = IBEMainForm.MainSC
        DropDownListStyle = True
        Items.Strings = ['1', '2', '3']
      end
      object seSweepInterval: TdxSpinEdit
        Left = 107
        Top = 68
        Width = 70
        TabOrder = 1
        StyleController = IBEMainForm.MainSC
      end
      object cbForcedWrites: TIBECheckBox
        Left = 202
        Top = 4
        Width = 193
        Height = 20
        TabOrder = 2
        TabStop = True
        Alignment = taLeftJustify
        Caption = 'Forced Writes'
        ReturnIsTab = False
        Themed = True
        Version = '1.3.2.0'
      end
      object cbReadOnly: TIBECheckBox
        Left = 202
        Top = 28
        Width = 193
        Height = 20
        TabOrder = 3
        TabStop = True
        Alignment = taLeftJustify
        Caption = 'Read Only'
        ReturnIsTab = False
        Themed = True
        Version = '1.3.2.0'
      end
      object pPageSize: TPanel
        Left = 107
        Top = 5
        Width = 69
        Height = 20
        BevelOuter = bvLowered
        TabOrder = 4
      end
      object pODSVersion: TPanel
        Left = 107
        Top = 101
        Width = 69
        Height = 21
        BevelOuter = bvLowered
        TabOrder = 5
      end
      object gbBuffers: TGroupBox
        Left = 204
        Top = 60
        Width = 190
        Height = 70
        Caption = ' Buffers '
        TabOrder = 6
        object Label4: TLabel
          Left = 11
          Top = 20
          Width = 30
          Height = 13
          Caption = 'Pages'
        end
        object Label5: TLabel
          Left = 105
          Top = 20
          Width = 14
          Height = 13
          Caption = 'KB'
        end
        object seBuffersPG: TdxSpinEdit
          Left = 11
          Top = 38
          Width = 75
          TabOrder = 0
          StyleController = IBEMainForm.MainSC
          OnChange = seBuffersPGChange
          MaxValue = 1000000
          MinValue = 20
          Value = 20
          StoredValues = 48
        end
        object seBuffersKB: TdxSpinEdit
          Left = 105
          Top = 38
          Width = 75
          TabOrder = 1
          StyleController = IBEMainForm.MainSC
          OnChange = seBuffersKBChange
          MaxValue = 10000000
          MinValue = 20
          Value = 20
          StoredValues = 48
        end
      end
    end
    object tsUsers: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 400
      Height = 192
      Caption = 'Active Users'
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
      object UsersTL: TdxTreeList
        Left = 2
        Top = 2
        Width = 396
        Height = 188
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
        Images = IBEMainForm.ImageList
        LookAndFeel = lfFlat
        Options = ['aoColumnSizing', 'aoColumnMoving', 'aoTabThrough', 'aoRowSelect', 'aoDrawEndEllipsis', 'aoAutoWidth', 'aoHideFocusRect', 'aoAutoSort']
        OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSortRefresh']
        TreeLineColor = clGrayText
        ShowGrid = True
        ShowRoot = False
        GridLineColor = clSilver
        object tlcParam: TdxTreeListColumn
          Caption = 'User'
          Sorted = csUp
          Width = 173
          BandIndex = 0
          RowIndex = 0
        end
      end
    end
  end
  object OkB: TButton
    Left = 238
    Top = 264
    Width = 75
    Height = 24
    Anchors = ['akRight', 'akBottom']
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 2
  end
  object sohoBitBtn2: TButton
    Left = 318
    Top = 264
    Width = 75
    Height = 24
    Anchors = ['akRight', 'akBottom']
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 3
  end
  object Button1: TButton
    Left = 5
    Top = 264
    Width = 108
    Height = 24
    Action = actRefresh
    Anchors = ['akRight', 'akBottom']
    TabOrder = 4
  end
  object ConfigService: TpFIBConfigService
    ClientLibName = 'gds32.dll'
    LoginPrompt = False
    Left = 120
    Top = 16
  end
  object Actions: TActionList
    Left = 336
    Top = 8
    object aApply: TAction
      Caption = 'Apply'
    end
    object actRefresh: TAction
      Caption = 'Refresh'
      Visible = False
      OnExecute = actRefreshExecute
    end
    object actExit: TAction
      Caption = 'actExit'
      ShortCut = 27
      OnExecute = actExitExecute
    end
  end
end
