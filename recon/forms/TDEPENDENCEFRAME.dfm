object DependenceFrame: TDependenceFrame
  Left = 0
  Top = 0
  Width = 435
  Height = 268
  HelpContext = 5700
  Align = alClient
  Color = clBtnFace
  ParentColor = False
  TabOrder = 0
  object Splitter1: TdfsSplitter
    Left = 0
    Top = 100
    Width = 435
    Height = 4
    Cursor = crVSplit
    Align = alBottom
    ResizeStyle = rsUpdate
    OnCanResize = Splitter1CanResize
    Maximized = False
    Minimized = False
    ButtonCursor = crDefault
  end
  object pDDL: TPanel
    Left = 0
    Top = 104
    Width = 435
    Height = 164
    Align = alBottom
    BevelOuter = bvNone
    Color = clWindow
    TabOrder = 2
    object Panel4: TPanel
      Left = 0
      Top = 0
      Width = 435
      Height = 18
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Color = clBtnShadow
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clCaptionText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object EditFm: TEditFrame
      Top = 18
      Height = 146
      TabOrder = 1
      object EditM: TSQLMemo
        Height = 128
        OnEnter = DepMEnter
      end
      object pIncSearch: TPanel
        Top = 128
      end
    end
  end
  object TopPanel: TPanel
    Left = 0
    Top = 26
    Width = 435
    Height = 74
    Align = alClient
    BevelOuter = bvNone
    Caption = 'TopPanel'
    TabOrder = 1
    object VertSplitter: TdfsSplitter
      Left = 281
      Top = 0
      Width = 4
      Height = 74
      Cursor = crHSplit
      Align = alLeft
      ResizeStyle = rsUpdate
      Maximized = False
      Minimized = False
      ButtonCursor = crDefault
    end
    object pDep: TPanel
      Left = 0
      Top = 0
      Width = 281
      Height = 74
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'pDep'
      TabOrder = 0
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 281
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
        TabOrder = 0
      end
      object DepTL: TdxTreeList
        Tag = 456
        Left = 0
        Top = 18
        Width = 281
        Height = 56
        Bands = <
          item
          end
        >
        DefaultLayout = True
        HeaderPanelRowCount = 1
        Align = alClient
        DragMode = dmAutomatic
        TabOrder = 1
        DblClkExpanding = False
        HideSelection = False
        Images = IBEMainForm.ImageList
        LookAndFeel = lfFlat
        Options = ['aoColumnSizing', 'aoTabThrough', 'aoRowSelect', 'aoMultiSelect', 'aoDrawEndEllipsis', 'aoAutoWidth']
        OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSearch']
        TreeLineColor = clGrayText
        ShowHeader = False
        GridLineColor = clSilver
        OnDblClick = DepTLDblClick
        OnEnter = DepTLEnter
        OnKeyDown = DepTLKeyDown
        OnKeyUp = DepTLKeyUp
        OnMouseUp = DepTLMouseUp
        OnCustomDrawCell = DepTLCustomDrawCell
        OnChangeNode = DepTLChangeNode
        Data = {400 bytes}
        object tlcObj1: TdxTreeListColumn
          Caption = 'Object'
          DisableCustomizing = True
          DisableDragging = True
          DisableEditor = True
          MinWidth = 100
          ReadOnly = True
          VertAlignment = tlCenter
          Width = 157
          BandIndex = 0
          RowIndex = 0
        end
        object tlcS1: TdxTreeListColumn
          Caption = 'S'
          HeaderAlignment = taCenter
          Visible = False
          Width = 20
          BandIndex = 0
          RowIndex = 0
        end
        object tlcU1: TdxTreeListColumn
          Caption = 'U'
          HeaderAlignment = taCenter
          Visible = False
          Width = 20
          BandIndex = 0
          RowIndex = 0
        end
        object tlcI1: TdxTreeListColumn
          Caption = 'I'
          HeaderAlignment = taCenter
          Visible = False
          Width = 20
          BandIndex = 0
          RowIndex = 0
        end
        object tlcD1: TdxTreeListColumn
          Caption = 'D'
          HeaderAlignment = taCenter
          Visible = False
          Width = 20
          BandIndex = 0
          RowIndex = 0
        end
      end
    end
    object pDepOn: TPanel
      Left = 285
      Top = 0
      Width = 150
      Height = 74
      Align = alClient
      BevelOuter = bvNone
      Caption = 'Panel2'
      TabOrder = 1
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 150
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
        TabOrder = 0
      end
      object DepOnTL: TdxTreeList
        Tag = 456
        Left = 0
        Top = 18
        Width = 150
        Height = 56
        Bands = <
          item
          end
        >
        DefaultLayout = True
        HeaderPanelRowCount = 1
        Align = alClient
        DragMode = dmAutomatic
        TabOrder = 1
        DblClkExpanding = False
        HideSelection = False
        Images = IBEMainForm.ImageList
        LookAndFeel = lfFlat
        Options = ['aoColumnSizing', 'aoTabThrough', 'aoRowSelect', 'aoMultiSelect', 'aoDrawEndEllipsis', 'aoAutoWidth']
        OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSearch']
        TreeLineColor = clGrayText
        ShowHeader = False
        GridLineColor = clSilver
        OnDblClick = DepTLDblClick
        OnEnter = DepOnTLEnter
        OnKeyDown = DepTLKeyDown
        OnKeyUp = DepTLKeyUp
        OnMouseUp = DepTLMouseUp
        OnCustomDrawCell = DepTLCustomDrawCell
        OnChangeNode = DepTLChangeNode
        Data = {260 bytes}
        object tlcObj2: TdxTreeListColumn
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
        object tlcS2: TdxTreeListColumn
          Caption = 'S'
          HeaderAlignment = taCenter
          Visible = False
          Width = 20
          BandIndex = 0
          RowIndex = 0
        end
        object tlcU2: TdxTreeListColumn
          Caption = 'U'
          HeaderAlignment = taCenter
          Visible = False
          Width = 20
          BandIndex = 0
          RowIndex = 0
        end
        object tlcI2: TdxTreeListColumn
          Caption = 'I'
          HeaderAlignment = taCenter
          Visible = False
          Width = 20
          BandIndex = 0
          RowIndex = 0
        end
        object tlcD2: TdxTreeListColumn
          Caption = 'D'
          HeaderAlignment = taCenter
          Visible = False
          Width = 20
          BandIndex = 0
          RowIndex = 0
        end
      end
    end
  end
  object pFilter: TPanel
    Left = 0
    Top = 0
    Width = 435
    Height = 26
    Align = alTop
    AutoSize = True
    BevelOuter = bvNone
    TabOrder = 0
    object TBDock1: TTBDock
      Left = 0
      Top = 0
      Width = 435
      Height = 26
      object TBToolbar1: TTBToolbar
        Left = 0
        Top = 0
        BorderStyle = bsNone
        Caption = 'TBToolbar1'
        CloseButton = False
        DockableTo = ['dpTop']
        DragHandleStyle = dhNone
        Images = IBEMainForm.MenuImages
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        object TBItem3: TTBItem
          Action = actRefresh
        end
        object TBItem1: TTBItem
          Action = actDependenciesTree
        end
        object TBSeparatorItem2: TTBSeparatorItem
        end
        object TBItem2: TTBItem
          Action = IBEMainForm.actDependenciesPrint
        end
        object TBSeparatorItem1: TTBSeparatorItem
        end
        object TBControlItem2: TTBControlItem
          Control = lFilter
        end
        object TBControlItem1: TTBControlItem
          Control = cbFilter
        end
        object lFilter: TLabel
          Left = 81
          Top = 4
          Width = 28
          Height = 13
          Caption = 'Filter: '
          FocusControl = cbFilter
        end
        object cbFilter: TdxPickEdit
          Left = 109
          Top = 0
          Width = 200
          TabOrder = 0
          OnKeyPress = cbFilterKeyPress
          StyleController = IBEMainForm.MainSC
        end
      end
    end
  end
  object DepTimer: TTimer
    Enabled = False
    Interval = 500
    OnTimer = DepTimerTimer
    Left = 373
    Top = 152
  end
  object pm: TdxBarPopupMenu
    BarManager = IBEMainForm.bm
    ItemLinks = <
      item
        Item = IBEMainForm.dxBarButton146
        Visible = True
      end
      item
        BeginGroup = True
        Item = IBEMainForm.dxBarButton110
        Visible = True
      end
      item
        BeginGroup = True
        Item = IBEMainForm.bbDependenciesRecompileAll
        Visible = True
      end
      item
        Item = IBEMainForm.bbDependenciesRecompileSelected
        Visible = True
      end
      item
        BeginGroup = True
        Item = IBEMainForm.dxBarButton103
        Visible = True
      end
      item
        BeginGroup = True
        Item = IBEMainForm.dxBarButton39
        Visible = True
      end
      item
        BeginGroup = True
        Item = IBEMainForm.dxBarButton37
        Visible = True
      end
      item
        Item = IBEMainForm.dxBarButton38
        Visible = True
      end
      item
        BeginGroup = True
        Item = IBEMainForm.bbDepShowActions
        Visible = True
      end
      item
        BeginGroup = True
        Item = IBEMainForm.dxBarButton104
        Visible = True
      end
    >
    UseOwnFont = False
    OnPopup = pmPopup
    Left = 160
    Top = 69
  end
  object DepPrn: TdxComponentPrinter
    CurrentLink = DepPrnLink
    PreviewOptions.RegistryPath = 'Software\Developer Express\PrintingSystem\DesignTime'
    OnStartGenerateReport = DepPrnStartGenerateReport
    Left = 216
    Top = 153
    object DepPrnLink: TdxTreeListReportLink
      Active = True
      Component = DepTL
      DateTime = -2.5363394987120397e-149
      DesignerHelpContext = 0
      PrinterPage.Footer = 6350
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.PageFooter.Font.Charset = DEFAULT_CHARSET
      PrinterPage.PageFooter.Font.Color = clWindowText
      PrinterPage.PageFooter.Font.Height = -11
      PrinterPage.PageFooter.Font.Name = 'Tahoma'
      PrinterPage.PageFooter.Font.Style = []
      PrinterPage.PageHeader.Font.Charset = DEFAULT_CHARSET
      PrinterPage.PageHeader.Font.Color = clWindowText
      PrinterPage.PageHeader.Font.Height = -11
      PrinterPage.PageHeader.Font.Name = 'Tahoma'
      PrinterPage.PageHeader.Font.Style = []
      PrinterPage.PageSize.X = 215900
      PrinterPage.PageSize.Y = 279400
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportTitle.Font.Charset = DEFAULT_CHARSET
      ReportTitle.Font.Color = clWindowText
      ReportTitle.Font.Height = -19
      ReportTitle.Font.Name = 'Times New Roman'
      ReportTitle.Font.Style = ['fsBold']
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'Times New Roman'
      BandFont.Style = []
      EvenFont.Charset = DEFAULT_CHARSET
      EvenFont.Color = clWindowText
      EvenFont.Height = -11
      EvenFont.Name = 'Times New Roman'
      EvenFont.Style = []
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'Times New Roman'
      FooterFont.Style = []
      GroupNodeFont.Charset = DEFAULT_CHARSET
      GroupNodeFont.Color = clWindowText
      GroupNodeFont.Height = -11
      GroupNodeFont.Name = 'Times New Roman'
      GroupNodeFont.Style = []
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Times New Roman'
      HeaderFont.Style = []
      OddFont.Charset = DEFAULT_CHARSET
      OddFont.Color = clWindowText
      OddFont.Height = -11
      OddFont.Name = 'Times New Roman'
      OddFont.Style = []
      Options = ['tlpoHeaders', 'tlpoPreview', 'tlpoPreviewGrid', 'tlpoFlatCheckMarks', 'tlpoImages', 'tlpoStateImages', 'tlpoSoft3D', 'tlpoRowFooterGrid']
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clWindowText
      PreviewFont.Height = -11
      PreviewFont.Name = 'Times New Roman'
      PreviewFont.Style = []
      RowFooterFont.Charset = DEFAULT_CHARSET
      RowFooterFont.Color = clWindowText
      RowFooterFont.Height = -11
      RowFooterFont.Name = 'Times New Roman'
      RowFooterFont.Style = []
      SupportedCustomDraw = True
      OnCustomDrawCell = DepPrnLinkCustomDrawCell
    end
  end
  object DepOnPrn: TdxComponentPrinter
    CurrentLink = DepOnPrnLink
    PreviewOptions.RegistryPath = 'Software\Developer Express\PrintingSystem\DesignTime'
    OnStartGenerateReport = DepOnPrnStartGenerateReport
    Left = 216
    Top = 193
    object DepOnPrnLink: TdxTreeListReportLink
      Active = True
      Component = DepOnTL
      DateTime = -2.5363394987120397e-149
      DesignerHelpContext = 0
      PrinterPage.Footer = 6350
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.PageFooter.Font.Charset = DEFAULT_CHARSET
      PrinterPage.PageFooter.Font.Color = clWindowText
      PrinterPage.PageFooter.Font.Height = -11
      PrinterPage.PageFooter.Font.Name = 'Tahoma'
      PrinterPage.PageFooter.Font.Style = []
      PrinterPage.PageHeader.Font.Charset = DEFAULT_CHARSET
      PrinterPage.PageHeader.Font.Color = clWindowText
      PrinterPage.PageHeader.Font.Height = -11
      PrinterPage.PageHeader.Font.Name = 'Tahoma'
      PrinterPage.PageHeader.Font.Style = []
      PrinterPage.PageSize.X = 215900
      PrinterPage.PageSize.Y = 279400
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportTitle.Font.Charset = DEFAULT_CHARSET
      ReportTitle.Font.Color = clWindowText
      ReportTitle.Font.Height = -19
      ReportTitle.Font.Name = 'Times New Roman'
      ReportTitle.Font.Style = ['fsBold']
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'Times New Roman'
      BandFont.Style = []
      EvenFont.Charset = DEFAULT_CHARSET
      EvenFont.Color = clWindowText
      EvenFont.Height = -11
      EvenFont.Name = 'Times New Roman'
      EvenFont.Style = []
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'Times New Roman'
      FooterFont.Style = []
      GroupNodeFont.Charset = DEFAULT_CHARSET
      GroupNodeFont.Color = clWindowText
      GroupNodeFont.Height = -11
      GroupNodeFont.Name = 'Times New Roman'
      GroupNodeFont.Style = []
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Times New Roman'
      HeaderFont.Style = []
      OddFont.Charset = DEFAULT_CHARSET
      OddFont.Color = clWindowText
      OddFont.Height = -11
      OddFont.Name = 'Times New Roman'
      OddFont.Style = []
      Options = ['tlpoHeaders', 'tlpoPreview', 'tlpoPreviewGrid', 'tlpoFlatCheckMarks', 'tlpoImages', 'tlpoStateImages', 'tlpoSoft3D', 'tlpoRowFooterGrid']
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clWindowText
      PreviewFont.Height = -11
      PreviewFont.Name = 'Times New Roman'
      PreviewFont.Style = []
      RowFooterFont.Charset = DEFAULT_CHARSET
      RowFooterFont.Color = clWindowText
      RowFooterFont.Height = -11
      RowFooterFont.Name = 'Times New Roman'
      RowFooterFont.Style = []
      OnCustomDrawCell = DepPrnLinkCustomDrawCell
    end
  end
  object DepActions: TActionList
    Images = IBEMainForm.MenuImages
    Left = 349
    Top = 98
    object actDependenciesTree: TAction
      Caption = 'actDependenciesTree'
      Hint = 'Show full dependencies tree'
      ImageIndex = 227
      OnExecute = actDependenciesTreeExecute
      OnUpdate = actDependenciesTreeUpdate
    end
    object actRefresh: TAction
      Caption = 'Refresh'
      Hint = 'Refresh'
      ImageIndex = 220
      OnExecute = actRefreshExecute
    end
    object actDropObject: TAction
      Caption = 'Drop Object'
      ShortCut = 16430
      OnExecute = actDropObjectExecute
      OnUpdate = actDropObjectUpdate
    end
    object actApplyBlock: TAction
      Caption = 'Apply block to selected objects...'
    end
  end
end
