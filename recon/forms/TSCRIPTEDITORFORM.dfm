object ScriptEditorForm: TScriptEditorForm
  Left = 458
  Top = 270
  Width = 1156
  Height = 536
  HelpContext = 12300
  Caption = 'Script Executive'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RightSplitter: TdfsSplitter
    Left = 1128
    Top = 44
    Width = 3
    Height = 453
    Cursor = crHSplit
    Align = alRight
    ResizeStyle = rsUpdate
    Visible = False
    OnCanResize = RightSplitterCanResize
    Maximized = False
    Minimized = False
    ButtonCursor = crDefault
  end
  object LeftSplitter: TdfsSplitter
    Left = 176
    Top = 44
    Width = 3
    Height = 453
    Cursor = crHSplit
    Align = alLeft
    OnCanResize = LeftSplitterCanResize
    Maximized = False
    Minimized = False
    ButtonCursor = crDefault
  end
  object DockRight: TTBDock
    Left = 1131
    Top = 44
    Width = 9
    Height = 453
    Position = dpRight
  end
  object DockLeft: TTBDock
    Left = 0
    Top = 44
    Width = 176
    Height = 453
    Position = dpLeft
    object twScriptExplorer: TTBToolWindow
      Left = 0
      Top = 0
      BorderStyle = bsNone
      Caption = 'Script Explorer'
      CloseButtonWhenDocked = True
      ClientAreaHeight = 435
      ClientAreaWidth = 172
      DockableTo = ['dpLeft', 'dpRight']
      DockPos = 8
      DragHandleStyle = dhDouble
      FullSize = True
      TabOrder = 0
      OnDockChanged = twScriptExplorerDockChanged
      OnVisibleChanged = twScriptExplorerVisibleChanged
      object TL: TdxTreeList
        Left = 0
        Top = 0
        Width = 172
        Height = 435
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
        Options = ['aoColumnSizing', 'aoTabThrough', 'aoRowSelect', 'aoMultiSelect', 'aoDrawEndEllipsis', 'aoAutoWidth']
        OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSearch']
        TreeLineColor = clGrayText
        ShowHeader = False
        GridLineColor = clSilver
        OnKeyDown = TLKeyDown
        OnMouseUp = TLMouseUp
        OnCustomDrawCell = TLCustomDrawCell
        OnChangeNode = TLChangeNode
        object ObjectsTLColumn1: TdxTreeListColumn
          BandIndex = 0
          RowIndex = 0
        end
      end
    end
  end
  object Pages: TIBEPageControl
    Left = 179
    Top = 44
    Width = 949
    Height = 453
    AdvOfficePagerStyler = IBEMainForm.PCStyler
    Align = alClient
    ActivePage = tsStatements
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
    OnChange = PagesChange
    OnChanging = PagesChanging
    TabOrder = 2
    TabStop = True
    NextPictureChanged = True
    PrevPictureChanged = True
    object tsScript: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 949
      Height = 428
      Caption = 'Text'
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
      object Splitter3: TdfsSplitter
        Left = 0
        Top = 329
        Width = 949
        Height = 4
        Cursor = crVSplit
        Align = alBottom
        ResizeStyle = rsUpdate
        Maximized = False
        Minimized = False
        ButtonCursor = crDefault
      end
      object ScriptEditFm: TEditFrame
        Top = 1
        Width = 949
        Height = 328
        object EditM: TSQLMemo
          Width = 949
          Height = 310
        end
        object pIncSearch: TPanel
          Top = 310
          Width = 949
        end
      end
      object ErrorTL: TdxTreeList
        Left = 0
        Top = 333
        Width = 949
        Height = 95
        Bands = <
          item
          end
        >
        DefaultLayout = True
        HeaderPanelRowCount = 1
        Align = alBottom
        DragMode = dmAutomatic
        TabOrder = 1
        HideSelection = False
        LookAndFeel = lfFlat
        Options = ['aoColumnSizing', 'aoTabThrough', 'aoRowSelect', 'aoMultiSelect', 'aoDrawEndEllipsis', 'aoAutoWidth', 'aoHideFocusRect', 'aoAutoSort']
        OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoRowAutoHeight', 'aoRowSizing', 'aoAutoSortRefresh']
        TreeLineColor = clGrayText
        ShowGrid = True
        ShowRoot = False
        GridLineColor = clSilver
        OnClick = ErrorTLClick
        OnDblClick = ErrorTLDblClick
        OnMouseUp = ErrorTLMouseUp
        OnChangeNode = ErrorTLChangeNode
        OnCompare = ErrorTLCompare
        OnDeletion = ErrorTLDeletion
        object tlcLine: TdxTreeListColumn
          Alignment = taRightJustify
          Caption = 'Line'
          HeaderAlignment = taRightJustify
          Width = 35
          BandIndex = 0
          RowIndex = 0
        end
        object tlcMessages: TdxTreeListColumn
          Caption = 'Message'
          Width = 606
          BandIndex = 0
          RowIndex = 0
        end
        object tlcOriginalMessage: TdxTreeListColumn
          Visible = False
          Width = 189
          BandIndex = 0
          RowIndex = 0
        end
        object tlcStmtText: TdxTreeListColumn
          Caption = 'tlcStmtText'
          Visible = False
          BandIndex = 0
          RowIndex = 0
        end
        object tlcFileName: TdxTreeListColumn
          Caption = 'File name'
          Visible = False
          BandIndex = 0
          RowIndex = 0
        end
      end
    end
    object tsStatements: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 949
      Height = 428
      Caption = 'Statements'
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
      object Splitter1: TdfsSplitter
        Left = 0
        Top = 210
        Width = 949
        Height = 4
        Cursor = crVSplit
        Align = alTop
        ResizeStyle = rsUpdate
        Maximized = False
        Minimized = False
        ButtonCursor = crDefault
      end
      object Panel1: TPanel
        Left = 0
        Top = 214
        Width = 949
        Height = 214
        Align = alClient
        BevelOuter = bvNone
        Caption = 'Panel1'
        TabOrder = 1
        object Splitter2: TdfsSplitter
          Left = 0
          Top = 140
          Width = 949
          Height = 4
          Cursor = crVSplit
          Align = alBottom
          ResizeStyle = rsUpdate
          Maximized = False
          Minimized = False
          ButtonCursor = crDefault
        end
        object StmtEditFm: TEditFrame
          Width = 949
          Height = 140
          object EditM: TSQLMemo
            Width = 949
            Height = 122
          end
          object pIncSearch: TPanel
            Top = 122
            Width = 949
          end
        end
        object ErrorM: TdxMemo
          Tag = 1000
          Left = 0
          Top = 144
          Width = 949
          Align = alBottom
          TabOrder = 1
          ReadOnly = True
          Height = 70
          StoredValues = 64
        end
      end
      object StmtTL: TdxTreeList
        Left = 0
        Top = 1
        Width = 949
        Height = 209
        Bands = <
          item
          end
        >
        DefaultLayout = True
        HeaderPanelRowCount = 1
        Align = alTop
        DragMode = dmAutomatic
        TabOrder = 0
        HideSelection = False
        LookAndFeel = lfFlat
        Options = ['aoColumnSizing', 'aoColumnMoving', 'aoTabThrough', 'aoMultiSelect', 'aoDrawEndEllipsis', 'aoAutoWidth', 'aoHideFocusRect', 'aoAutoSort']
        OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSortRefresh', 'aoAutoSearch']
        TreeLineColor = clGrayText
        ShowGrid = True
        ShowRoot = False
        GridLineColor = clSilver
        OnClick = StmtTLClick
        OnMouseUp = StmtTLMouseUp
        OnCustomDrawCell = StmtTLCustomDrawCell
        OnChangeNode = StmtTLChangeNode
        OnCompare = StmtTLCompare
        object tlcCheck: TdxTreeListColumn
          DisableCustomizing = True
          DisableDragging = True
          DisableEditor = True
          Width = 21
          BandIndex = 0
          RowIndex = 0
        end
        object tlcBreakPoint: TdxTreeListColumn
          Caption = 'BP'
          HeaderAlignment = taCenter
          Width = 21
          BandIndex = 0
          RowIndex = 0
        end
        object tlcStatement: TdxTreeListColumn
          Caption = 'Statement'
          DisableCustomizing = True
          DisableEditor = True
          Width = 485
          BandIndex = 0
          RowIndex = 0
        end
        object tlcNum: TdxTreeListColumn
          Alignment = taRightJustify
          Caption = '#'
          Width = 47
          BandIndex = 0
          RowIndex = 0
        end
        object tlcFlag: TdxTreeListColumn
          Visible = False
          Width = 98
          BandIndex = 0
          RowIndex = 0
        end
        object tlcError: TdxTreeListColumn
          Visible = False
          Width = 98
          BandIndex = 0
          RowIndex = 0
        end
        object tlcHiddenText: TdxTreeListColumn
          Visible = False
          BandIndex = 0
          RowIndex = 0
        end
        object tlcAdditional: TdxTreeListColumn
          Visible = False
          BandIndex = 0
          RowIndex = 0
        end
      end
    end
    object tsDesc: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 949
      Height = 428
      Caption = 'Description'
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
      object DescFm: TEditFrame
        Top = 1
        Width = 949
        Height = 427
        object EditM: TSQLMemo
          Width = 949
          Height = 409
        end
        object pIncSearch: TPanel
          Top = 409
          Width = 949
        end
      end
    end
    object tsOptions: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 949
      Height = 428
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
      TabAppearance.BackGround.ColorTo = 14342874
      TabAppearance.BackGround.Direction = gdHorizontal
      object cbAbortOnError: TIBECheckBox
        Left = 12
        Top = 10
        Width = 927
        Height = 20
        Anchors = ['akLeft', 'akTop', 'akRight']
        TabOrder = 0
        TabStop = True
        Alignment = taLeftJustify
        Caption = 'A&bort Script on Error'
        ReturnIsTab = False
        Themed = True
        Version = '1.3.2.0'
        OnChange = cbAbortOnErrorChange
      end
      object cbRollbackOnAbort: TIBECheckBox
        Left = 12
        Top = 34
        Width = 927
        Height = 20
        Anchors = ['akLeft', 'akTop', 'akRight']
        TabOrder = 1
        TabStop = True
        Alignment = taLeftJustify
        Caption = '&Rollback on Abort'
        ReturnIsTab = False
        Themed = True
        Version = '1.3.2.0'
      end
      object cbFireEventBlocks: TIBECheckBox
        Left = 12
        Top = 59
        Width = 927
        Height = 20
        Anchors = ['akLeft', 'akTop', 'akRight']
        TabOrder = 2
        TabStop = True
        Alignment = taLeftJustify
        Caption = 'Fire event blocks'
        ReturnIsTab = False
        Themed = True
        Version = '1.3.2.0'
      end
    end
  end
  object cbUseCurrentConnect: TIBECheckBox
    Left = 347
    Top = 25
    Width = 121
    Height = 20
    TabOrder = 3
    TabStop = True
    Visible = False
    Alignment = taLeftJustify
    Caption = 'Use current connect'
    ReturnIsTab = False
    Themed = True
    Version = '1.3.2.0'
    OnChange = cbUseCurrentConnectChange
  end
  object pProgress: TTntPanel
    Left = 0
    Top = 26
    Width = 1140
    Height = 18
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Color = clBtnShadow
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clCaptionText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = ['fsBold']
    ParentFont = False
    TabOrder = 8
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
        AllowClose = False
        Caption = 'Script'
        DockedDockingStyle = dsTop
        DockedLeft = 0
        DockedTop = 0
        DockingStyle = dsTop
        FloatLeft = 340
        FloatTop = 264
        FloatClientWidth = 97
        FloatClientHeight = 22
        ItemLinks = None
        Name = 'Script'
        NotDocking = ['dsLeft', 'dsRight']
        OneOnRow = True
        Row = 0
        UseOwnFont = False
        Visible = True
        WholeRow = False
      end
    >
    Categories.Strings = ['Default', 'Statements', 'Messages']
    Categories.ItemsVisibles = [2, 2, 2]
    Categories.Visibles = [True, True, True]
    Images = IBEMainForm.MenuImages
    PopupMenuLinks = []
    Style = bmsFlat
    UseSystemFont = True
    Left = 503
    Top = 48
    DockControlHeights = [0, 0, 26, 0]
    object dxBarButton3: TdxBarButton
      Action = actRunScript
      Category = 0
      UnclickAfterDoing = False
    end
    object dxBarButton4: TdxBarButton
      Action = actStopScript
      Category = 0
      UnclickAfterDoing = False
    end
    object dxBarButton5: TdxBarButton
      Action = actStep
      Category = 0
    end
    object cciUseCurrentConnect: TdxBarControlContainerItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivNever
      Control = cbUseCurrentConnect
    end
    object dxBarButton1: TdxBarButton
      Action = actShowScriptExplorer
      Category = 0
      ButtonStyle = bsChecked
    end
    object bsiScript: TdxBarSubItem
      Caption = 'Script'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Item = dxBarButton1
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton3
          Visible = True
        end
        item
          Item = dxBarButton16
          Visible = True
        end
        item
          Item = dxBarButton4
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton2
          Visible = True
        end
      >
    end
    object dxBarButton2: TdxBarButton
      Action = actAddConnectStatement
      Category = 0
      Hint = 'Add CONNECT statement'
    end
    object bbLoad: TdxBarButton
      Action = IBEMainForm.actEditorLoadFromFile
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = IBEMainForm.bpmRecentLoad
    end
    object bbSave: TdxBarButton
      Action = IBEMainForm.actEditorSaveAs
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = IBEMainForm.bpmRecentSave
    end
    object dxBarButton6: TdxBarButton
      Action = actMarkAll
      Category = 1
    end
    object dxBarButton7: TdxBarButton
      Action = actMarkSelected
      Category = 1
    end
    object dxBarButton8: TdxBarButton
      Action = actUnmarkAll
      Category = 1
      Hint = 'Unmark All'
    end
    object dxBarButton9: TdxBarButton
      Action = actUnmarkSelected
      Category = 1
      Hint = 'Unmark Selected'
    end
    object dxBarButton10: TdxBarButton
      Action = actSaveLog
      Category = 2
    end
    object dxBarButton11: TdxBarButton
      Action = actCommentErrors
      Category = 2
    end
    object cbTerm: TdxBarCombo
      Caption = 'Terminator:'
      Category = 0
      Hint = 'Terminator:'
      Visible = ivAlways
      Text = ';'
      OnChange = cbTermChange
      ShowCaption = True
      Width = 30
      ShowEditor = False
      Items.Strings = [';', '^']
      ItemIndex = 0
    end
    object cbScriptType: TdxBarCombo
      Caption = 'Script Type:'
      Category = 0
      Hint = 'Script Type:'
      Visible = ivNever
      Text = 'InterBase/Firebird'
      OnChange = cbScriptTypeChange
      ShowCaption = True
      Width = 100
      ShowEditor = False
      Items.Strings = ['InterBase/Firebird', 'MySQL']
      ItemIndex = 0
    end
    object bbSaveToFile: TdxBarButton
      Action = IBEMainForm.actEditorSaveToFile
      Category = 0
    end
    object dxBarButton13: TdxBarButton
      Action = actCopyErrorStatements
      Category = 2
    end
    object dxBarButton14: TdxBarButton
      Action = actCommentSelected
      Category = 1
    end
    object dxBarButton15: TdxBarButton
      Action = actRemoveSelected
      Category = 1
    end
    object dxBarButton16: TdxBarButton
      Action = actRunFile
      Category = 0
    end
    object bbDisplayDML: TdxBarButton
      Action = actDisplayDML
      Category = 1
      ButtonStyle = bsChecked
    end
    object cbScriptEncoding: TdxBarCombo
      Caption = 'Execute charset:'
      Category = 0
      Hint = 'Execute charset'
      Visible = ivAlways
      Text = 'ANSI'
      ShowCaption = True
      Width = 100
      ShowEditor = False
      Items.Strings = ['ANSI', 'UTF8', 'Ask me']
      ItemIndex = 0
    end
    object beScriptName: TdxBarEdit
      Caption = 'Script name'
      Category = 0
      Hint = 'Script name'
      Visible = ivNever
      OnKeyDown = beScriptNameKeyDown
      MaxLength = 100
      ShowCaption = True
      Width = 100
    end
    object dxBarButton12: TdxBarButton
      Action = actCopyErrorMessage
      Category = 2
    end
    object bliDatabases: TdxBarButton
      Caption = '(No active connection)'
      Category = 0
      Hint = '(No active connection)'
      Visible = ivAlways
      ButtonStyle = bsDropDown
      ImageIndex = 3
      PaintStyle = psCaptionGlyph
      OnClick = bliDatabasesClick
    end
  end
  object Actions: TActionList
    Images = IBEMainForm.MenuImages
    OnUpdate = ActionsUpdate
    Left = 520
    Top = 155
    object actRunScript: TAction
      Category = 'ScriptActions'
      Caption = 'Run Script'
      Hint = 'Run Script'
      ImageIndex = 56
      ShortCut = 120
      OnExecute = actRunScriptExecute
    end
    object actStopScript: TAction
      Category = 'ScriptActions'
      Caption = 'Stop Script'
      Hint = 'Stop Script'
      ImageIndex = 42
      OnExecute = actStopScriptExecute
    end
    object actStep: TAction
      Category = 'ScriptActions'
      Caption = 'Step'
      ImageIndex = 55
      ShortCut = 119
      OnExecute = actStepExecute
    end
    object actShowScriptExplorer: TAction
      Category = 'ScriptActions'
      Caption = 'Show script explorer'
      Checked = True
      Hint = 'Show script explorer'
      ImageIndex = 146
      OnExecute = actShowScriptExplorerExecute
    end
    object actAddConnectStatement: TAction
      Category = 'ScriptActions'
      Caption = 'Add CONNECT statement...'
      OnExecute = actAddConnectStatementExecute
    end
    object actLocalize: TAction
      Caption = 'Localize'
      ShortCut = 57420
      OnExecute = actLocalizeExecute
    end
    object actMarkAll: TAction
      Caption = 'Mark All'
      OnExecute = actMarkAllExecute
    end
    object actMarkSelected: TAction
      Caption = 'Mark Selected'
      OnExecute = actMarkSelectedExecute
    end
    object actUnmarkAll: TAction
      Caption = 'Unmark All'
      OnExecute = actUnmarkAllExecute
    end
    object actUnmarkSelected: TAction
      Caption = 'Unmark Selected'
      OnExecute = actUnmarkSelectedExecute
    end
    object actSaveLog: TAction
      Caption = 'Save Messages Log...'
      OnExecute = actSaveLogExecute
    end
    object actCommentErrors: TAction
      Caption = 'Comment errors'
      OnExecute = actCommentErrorsExecute
    end
    object actCopyErrorStatements: TAction
      Caption = 'Copy erroneous statements into clipbord'
      Hint = 'Copy erroneous statements into clipbord'
      OnExecute = actCopyErrorStatementsExecute
    end
    object actRemoveSelected: TAction
      Category = 'ScriptActions'
      Caption = 'Remove selected'
      OnExecute = actRemoveSelectedExecute
      OnUpdate = actRemoveSelectedUpdate
    end
    object actCommentSelected: TAction
      Category = 'ScriptActions'
      Caption = 'Comment selected'
      OnExecute = actCommentSelectedExecute
      OnUpdate = actCommentSelectedUpdate
    end
    object actRunFile: TAction
      Category = 'ScriptActions'
      Caption = 'Run from file...'
      ShortCut = 8312
      OnExecute = actRunFileExecute
    end
    object actDisplayDML: TAction
      Caption = 'Show DML statements'
      OnExecute = actDisplayDMLExecute
    end
    object actSaveToUDB: TAction
      Category = 'ScriptActions'
      Caption = 'Save SQL script'
      Hint = 'Save SQL script'
      ImageIndex = 29
      ShortCut = 16467
      OnExecute = actSaveToUDBExecute
      OnUpdate = actSaveToUDBUpdate
    end
    object actCopyErrorMessage: TAction
      Caption = 'Copy message text'
      ShortCut = 16451
      OnExecute = actCopyErrorMessageExecute
      OnUpdate = actCopyErrorMessageUpdate
    end
  end
  object Script: TpFIBScript
    ConsoleMode = False
    UseCurrentConnect = False
    AbortOnError = False
    RollbackOnAbort = False
    OnBeforeExecuteStatement = ScriptBeforeExecuteStatement
    OnAfterExecuteStatement = ScriptAfterExecuteStatement
    OnError = ScriptError
    OnProgressUpdate = ScriptProgressUpdate
    AfterCommit = ScriptAfterCommit
    AfterScriptExecuted = ScriptAfterScriptExecuted
    AfterReconnect = ScriptAfterReconnect
    OnDisplay = ScriptDisplay
    OnProgress = ScriptProgress
    Left = 298
    Top = 329
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 2000
    OnTimer = Timer1Timer
    Left = 585
    Top = 145
  end
  object SDB: TpFIBDatabase
    ClientLibName = 'gds32.dll'
    SQLDialect = 1
    SQLDAVersion = 1
    Timeout = 284872944
    WaitForRestoreConnect = 284872944
    Left = 415
    Top = 138
  end
  object STR: TpFIBTransaction
    Tag = 55
    Active = False
    DefaultDatabase = SDB
    Timeout = 284873212
    TimeoutAction = TARollback
    Left = 439
    Top = 178
  end
  object SQ: TpFIBQuery
    Tag = 55
    Database = SDB
    ParamCheck = False
    Transaction = STR
    Left = 455
    Top = 122
  end
  object spm: TdxBarPopupMenu
    BarManager = bm
    ItemLinks = <
      item
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
        Item = dxBarButton9
        Visible = True
      end
    >
    UseOwnFont = False
    Left = 355
    Top = 249
  end
  object mpm: TdxBarPopupMenu
    BarManager = bm
    ItemLinks = <
      item
        Item = dxBarButton11
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton10
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton12
        Visible = True
      end
      item
        Item = dxBarButton13
        Visible = True
      end
    >
    UseOwnFont = False
    Left = 371
    Top = 441
  end
  object MSD: TSaveDialog
    Filter = 'All files (*.*)|*.*'
    Options = ['ofOverwritePrompt', 'ofHideReadOnly', 'ofEnableSizing']
    Left = 403
    Top = 441
  end
  object tpm: TdxBarPopupMenu
    BarManager = bm
    ItemLinks = <
      item
        Item = dxBarButton14
        Visible = True
      end
      item
        Item = dxBarButton15
        Visible = True
      end
      item
        BeginGroup = True
        Item = bbDisplayDML
        Visible = True
      end
    >
    UseOwnFont = False
    Left = 66
    Top = 140
  end
  object OpenD: TOpenDialog
    DefaultExt = 'SQL'
    Filter = 'SQL Files (*.sql)|*.sql|Text Files (*.txt)|*.txt|All Files (*.*)|*.*'
    Options = ['ofReadOnly', 'ofHideReadOnly', 'ofFileMustExist', 'ofEnableSizing']
    Title = 'Open SQL File'
    Left = 264
    Top = 230
  end
end
