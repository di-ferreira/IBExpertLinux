object GenerateLogScriptForm: TGenerateLogScriptForm
  Left = 335
  Top = 224
  Width = 638
  Height = 547
  HelpContext = 12700
  BorderIcons = ['biSystemMenu']
  Caption = 'Generate script from log data'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 26
    Width = 622
    Height = 99
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object lFileName: TLabel
      Left = 9
      Top = 4
      Width = 563
      Height = 13
      AutoSize = False
      Caption = 'File Name'
    end
    object lTargetTable: TLabel
      Left = 8
      Top = 50
      Width = 86
      Height = 13
      Caption = 'Target table name'
    end
    object FileNameE: TdxButtonEdit
      Left = 8
      Top = 21
      Width = 615
      TabOrder = 0
      Anchors = ['akLeft', 'akTop', 'akRight']
      StyleController = IBEMainForm.MainSC
      OnChange = FileNameEChange
      Buttons = <
        item
          Default = True
          Glyph.Data = {3e020000424d3e0200000000000036000000280000000d0000000d00000001001800000000000802000000000000000000000000000000000000ff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ff00000000000000000000000000000000000000000000000000000000000000ff00ffff00ffff00ff00000000000000408080408080408080408080408080408080408080408080000000ff00ffff00ff0000000080ffff000000408080408080408080408080408080408080408080408080000000ff00ff0000000080ffff80ffff0000004080804080804080804080804080804080804080804080800000000000000080ffff80ffff80ffff0000000000000000000000000000000000000000000000000000000000000080ffff80ffff80ffff80ffff80ffff80ffff80ffff80ffff000000ff00ffff00ffff00ff0000000080ffff80ffff80ffff000000000000000000000000000000000000ff00ffff00ffff00ff00ff00ff000000000000000000ff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ff00ff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ff000000000000000000ff00ff00ff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ff000000000000ff00ff00ff00ffff00ffff00ffff00ffff00ff000000ff00ffff00ffff00ff000000ff00ff000000ff00ff00ff00ffff00ffff00ffff00ffff00ffff00ff000000000000000000ff00ffff00ffff00ffff00ff00}
          Kind = bkGlyph
          Width = 21
        end
      >
      OnButtonClick = FileNameEButtonClick
      ExistButtons = True
    end
    object eTargetTable: TdxEdit
      Left = 9
      Top = 68
      Width = 265
      TabOrder = 1
      StyleController = IBEMainForm.MainSC
      OnChange = eTargetTableChange
    end
  end
  object PageControl1: TIBEPageControl
    Left = 0
    Top = 125
    Width = 622
    Height = 386
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
    TabOrder = 1
    TabStop = True
    NextPictureChanged = True
    PrevPictureChanged = True
    object tsOptions: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 622
      Height = 361
      Caption = 'Options'
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
      object Panel6: TPanel
        Left = 2
        Top = 2
        Width = 618
        Height = 38
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object lCommit: TLabel
          Left = 8
          Top = 12
          Width = 96
          Height = 13
          Alignment = taRightJustify
          Caption = 'Insert COMMIT after'
          FocusControl = seCommit
        end
        object seCommit: TdxSpinEdit
          Left = 108
          Top = 9
          Width = 56
          TabOrder = 0
          StyleController = IBEMainForm.MainSC
          Value = 500
        end
      end
      object tl: TdxTreeList
        Left = 2
        Top = 58
        Width = 618
        Height = 301
        Bands = <
          item
          end
        >
        DefaultLayout = True
        HeaderPanelRowCount = 1
        Align = alClient
        DragMode = dmAutomatic
        TabOrder = 1
        HideSelection = False
        LookAndFeel = lfFlat
        Options = ['aoColumnSizing', 'aoColumnMoving', 'aoTabThrough', 'aoDrawEndEllipsis', 'aoAutoWidth', 'aoHideFocusRect']
        OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSortRefresh']
        TreeLineColor = clGrayText
        ShowGrid = True
        ShowRoot = False
        GridLineColor = clSilver
        OnClick = tlClick
        OnDblClick = tlDblClick
        OnKeyPress = tlKeyPress
        OnCustomDrawCell = tlCustomDrawCell
        object tlcCheck: TdxTreeListColumn
          DisableCustomizing = True
          DisableDragging = True
          DisableEditor = True
          Width = 23
          BandIndex = 0
          RowIndex = 0
        end
        object tlcField: TdxTreeListColumn
          Caption = 'Name'
          DisableCustomizing = True
          DisableDragging = True
          DisableEditor = True
          MaxLength = 31
          Width = 189
          BandIndex = 0
          RowIndex = 0
        end
        object tlcType: TdxTreeListColumn
          Caption = 'Type'
          DisableCustomizing = True
          DisableDragging = True
          DisableEditor = True
          Width = 195
          BandIndex = 0
          RowIndex = 0
        end
        object tlcKey: TdxTreeListColumn
          Caption = 'Key'
          Visible = False
          Width = 77
          BandIndex = 0
          RowIndex = 0
        end
        object tlcDesc: TdxTreeListColumn
          Caption = 'Description'
          Width = 213
          BandIndex = 0
          RowIndex = 0
        end
      end
      object Panel7: TPanel
        Left = 2
        Top = 40
        Width = 618
        Height = 18
        Align = alTop
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Caption = ' Check fields to be extracted into script'
        Color = clBtnShadow
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clCaptionText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = ['fsBold']
        ParentFont = False
        TabOrder = 2
      end
    end
    object tsScript: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 622
      Height = 361
      Caption = 'Script details'
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
      object Panel2: TPanel
        Left = 2
        Top = 195
        Width = 618
        Height = 164
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 618
          Height = 18
          Align = alTop
          Alignment = taLeftJustify
          BevelOuter = bvNone
          Caption = ' End of script'
          Color = clBtnShadow
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clCaptionText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          ParentFont = False
          TabOrder = 0
        end
        object ScriptEndFm: TEditFrame
          Top = 18
          Width = 618
          Height = 146
          TabOrder = 1
          object EditM: TSQLMemo
            Width = 618
            Height = 128
            Lines.Strings = ['commit;']
          end
          object pIncSearch: TPanel
            Top = 128
            Width = 618
          end
        end
      end
      object Panel3: TPanel
        Left = 2
        Top = 2
        Width = 618
        Height = 193
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 618
          Height = 18
          Align = alTop
          Alignment = taLeftJustify
          BevelOuter = bvNone
          Caption = ' Start of script'
          Color = clBtnShadow
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clCaptionText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          ParentFont = False
          TabOrder = 0
        end
        object ScriptBeginFm: TEditFrame
          Top = 18
          Width = 618
          Height = 175
          TabOrder = 1
          object EditM: TSQLMemo
            Width = 618
            Height = 157
          end
          object pIncSearch: TPanel
            Top = 157
            Width = 618
          end
        end
      end
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Bars = <
      item
        AllowClose = False
        AllowCustomizing = False
        AllowQuickCustomizing = False
        Caption = 'Main'
        DockedDockingStyle = dsTop
        DockedLeft = 0
        DockedTop = 0
        DockingStyle = dsTop
        FloatLeft = 340
        FloatTop = 264
        FloatClientWidth = 54
        FloatClientHeight = 22
        ItemLinks = None
        Name = 'Main'
        NotDocking = ['dsNone', 'dsLeft', 'dsRight', 'dsBottom']
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
    Images = IBEMainForm.MenuImages
    PopupMenuLinks = []
    Style = bmsFlat
    UseSystemFont = True
    Left = 292
    Top = 153
    DockControlHeights = [0, 0, 26, 0]
    object dxBarButton1: TdxBarButton
      Action = actGenerateScript
      Category = 0
    end
    object dxBarButton2: TdxBarButton
      Action = actStop
      Category = 0
    end
    object pb: TdxBarProgressItem
      Category = 0
      Visible = ivAlways
      Width = 300
      Smooth = True
    end
  end
  object SD: TSaveDialog
    DefaultExt = 'sql'
    Filter = 'SQL Scripts (*.sql)|*.sql|All files (*.*)|*.*'
    Left = 364
    Top = 137
  end
  object ActionList1: TActionList
    Images = IBEMainForm.MenuImages
    OnUpdate = ActionList1Update
    Left = 476
    Top = 131
    object actGenerateScript: TAction
      Caption = 'Generate script'
      Hint = 'Generate script'
      ImageIndex = 56
      ShortCut = 120
      OnExecute = actGenerateScriptExecute
    end
    object actStop: TAction
      Caption = 'Stop'
      Hint = 'Stop script''s generating'
      ImageIndex = 42
      OnExecute = actStopExecute
    end
    object actExit: TAction
      Caption = 'Exit'
      ShortCut = 27
      OnExecute = actExitExecute
    end
  end
  object TR: TpFIBTransaction
    Active = False
    Timeout = 203642348
    TimeoutAction = TARollback
    Left = 152
    Top = 42
  end
  object qOper: TpFIBQuery
    ParamCheck = True
    Transaction = TR
    Left = 192
    Top = 42
  end
  object qKeys: TpFIBQuery
    ParamCheck = True
    Transaction = TR
    Left = 224
    Top = 42
  end
  object qFields: TpFIBQuery
    ParamCheck = True
    Transaction = TR
    Left = 256
    Top = 42
  end
  object qBlobs: TpFIBQuery
    ParamCheck = True
    Transaction = TR
    Left = 288
    Top = 42
  end
end
