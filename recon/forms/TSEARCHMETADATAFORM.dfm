object SearchMetaDataForm: TSearchMetaDataForm
  Left = 303
  Top = 280
  Width = 823
  Height = 567
  HelpContext = 6600
  Caption = 'Search in Metadata'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object LeftSplitter: TdfsSplitter
    Left = 245
    Top = 26
    Width = 3
    Height = 505
    Cursor = crHSplit
    Align = alLeft
    ResizeStyle = rsUpdate
    OnCanResize = LeftSplitterCanResize
    Maximized = False
    Minimized = False
    ButtonCursor = crDefault
  end
  object RightSplitter: TdfsSplitter
    Left = 794
    Top = 26
    Width = 4
    Height = 505
    Cursor = crHSplit
    Align = alRight
    ResizeStyle = rsUpdate
    OnCanResize = RightSplitterCanResize
    Maximized = False
    Minimized = False
    ButtonCursor = crDefault
  end
  object pParent: TPanel
    Left = 248
    Top = 26
    Width = 546
    Height = 505
    Align = alClient
    BevelOuter = bvNone
    Color = clWindow
    TabOrder = 0
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 546
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
      Width = 546
      Height = 487
      TabOrder = 1
      object EditM: TSQLMemo
        Width = 546
        Height = 469
      end
      object pIncSearch: TPanel
        Top = 469
        Width = 546
      end
    end
  end
  object DockLeft: TTBDock
    Left = 0
    Top = 26
    Width = 245
    Height = 505
    Position = dpLeft
    object twResults: TTBToolWindow
      Left = 0
      Top = 0
      BorderStyle = bsNone
      Caption = 'twResults'
      CloseButton = False
      ClientAreaHeight = 492
      ClientAreaWidth = 241
      DockPos = 0
      DragHandleStyle = dhDouble
      FullSize = True
      TabOrder = 0
      OnDockChanged = twResultsDockChanged
      OnVisibleChanged = twResultsVisibleChanged
      object TL: TdxTreeList
        Tag = 123
        Left = 0
        Top = 0
        Width = 241
        Height = 492
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
        OnDblClick = TLDblClick
        OnKeyPress = TLKeyPress
        OnKeyUp = TLKeyUp
        OnMouseUp = TLMouseUp
        OnCustomDrawCell = TLCustomDrawCell
        OnChangeNode = TLChangeNode
        OnDeletion = TLDeletion
        object dxTreeListColumn1: TdxTreeListColumn
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
      end
    end
  end
  object DockRight: TTBDock
    Left = 798
    Top = 26
    Width = 9
    Height = 505
    Position = dpRight
  end
  object Timer: TTimer
    Enabled = False
    Interval = 500
    OnTimer = TimerTimer
    Left = 106
    Top = 147
  end
  object MetaSearchActions: TActionList
    Images = IBEMainForm.MenuImages
    OnUpdate = MetaSearchActionsUpdate
    Left = 137
    Top = 322
    object actInplaceEdit: TAction
      Caption = 'Inplace Object Edit'
      OnExecute = actInplaceEditExecute
    end
    object actStartSearch: TAction
      Caption = 'Start search'
      ImageIndex = 56
      OnExecute = actStartSearchExecute
    end
    object actStopSearch: TAction
      Caption = 'Stop searching'
      ImageIndex = 42
      OnExecute = actStopSearchExecute
    end
    object actCopyResults: TAction
      Caption = 'Copy Search Results'
      ImageIndex = 48
      OnExecute = actCopyResultsExecute
    end
  end
  object pMenu: TPopupMenu
    Left = 106
    Top = 205
    object InplaceObjectEdit1: TMenuItem
      Action = actInplaceEdit
    end
  end
  object EM: TpFIBExtract
    Options = ['eopExtractIndices', 'eopExtractReferences', 'eopExtractChecks', 'eopExtractUniques']
    CommitAfter = 0
    ReplaceTabs = True
    TabWidth = 2
    ExtractBlobs = True
    DateFormat = 'YYYY-MM-DD'
    DateTimeFormat = 'YYYY-MM-DD HH:NN:SS'
    Left = 48
    Top = 400
  end
  object SearchTimer: TTimer
    Enabled = False
    Interval = 100
    OnTimer = SearchTimerTimer
    Left = 160
    Top = 152
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
        AllowCustomizing = False
        AllowQuickCustomizing = False
        AllowReset = False
        Caption = 'Search in metadata'
        DockedDockingStyle = dsTop
        DockedLeft = 0
        DockedTop = 0
        DockingStyle = dsTop
        FloatLeft = 340
        FloatTop = 264
        FloatClientWidth = 23
        FloatClientHeight = 22
        ItemLinks = None
        Name = 'Search in metadata'
        NotDocking = ['dsLeft', 'dsRight']
        OneOnRow = True
        Row = 0
        UseOwnFont = False
        Visible = True
        WholeRow = True
      end
    >
    Categories.Strings = ['Default', 'Search options']
    Categories.ItemsVisibles = [2, 2]
    Categories.Visibles = [True, True]
    Images = IBEMainForm.MenuImages
    PopupMenuLinks = []
    UseSystemFont = True
    Left = 64
    Top = 336
    DockControlHeights = [0, 0, 26, 0]
    object pb: TdxBarProgressItem
      Caption = 'Searching'
      Category = 0
      Hint = 'Searching'
      Visible = ivNever
      Width = 250
      Smooth = True
    end
    object dxBarButton1: TdxBarButton
      Action = actStartSearch
      Category = 0
    end
    object bbSearchOptions: TdxBarButton
      Caption = 'Search options'
      Category = 0
      Hint = 'Search text in Metadata'
      Visible = ivAlways
      ButtonStyle = bsDropDown
      CloseSubMenuOnClick = False
      DropDownMenu = dxBarPopupMenu1
      ShortCut = 41030
      OnClick = bbSearchOptionsClick
    end
    object dxBarButton4: TdxBarButton
      Action = actStopSearch
      Category = 0
    end
    object cbDatabases: TdxBarCombo
      Caption = 'Database'
      Category = 1
      Hint = 'Database'
      Visible = ivAlways
      ImageIndex = 3
      ShowCaption = True
      Width = 100
      ShowEditor = False
      DropDownCount = 20
      ItemIndex = -1
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'Search in...'
      Category = 1
      Visible = ivAlways
      AllowCustomizing = False
      ItemLinks = <
        item
          Item = cbDomains
          Visible = True
        end
        item
          Item = cbTables
          Visible = True
        end
        item
          Item = cbViews
          Visible = True
        end
        item
          Item = cbProcedures
          Visible = True
        end
        item
          Item = cbTriggers
          Visible = True
        end
        item
          Item = cbExceptions
          Visible = True
        end
        item
          Item = cbUDFs
          Visible = True
        end
      >
    end
    object cbDomains: TdxBarButton
      Caption = 'Domains'
      Category = 1
      Hint = 'Domains'
      Visible = ivAlways
      ButtonStyle = bsChecked
      CloseSubMenuOnClick = False
      OnClick = cbDomainsClick
    end
    object cbTables: TdxBarButton
      Caption = 'Tables'
      Category = 1
      Hint = 'Tables'
      Visible = ivAlways
      ButtonStyle = bsChecked
      CloseSubMenuOnClick = False
      OnClick = cbTablesClick
    end
    object cbViews: TdxBarButton
      Caption = 'Views'
      Category = 1
      Hint = 'Views'
      Visible = ivAlways
      ButtonStyle = bsChecked
      CloseSubMenuOnClick = False
      OnClick = cbViewsClick
    end
    object cbProcedures: TdxBarButton
      Caption = 'Procedures'
      Category = 1
      Hint = 'Procedures'
      Visible = ivAlways
      ButtonStyle = bsChecked
      CloseSubMenuOnClick = False
      OnClick = cbProceduresClick
    end
    object cbTriggers: TdxBarButton
      Caption = 'Triggers'
      Category = 1
      Hint = 'Triggers'
      Visible = ivAlways
      ButtonStyle = bsChecked
      CloseSubMenuOnClick = False
      OnClick = cbTriggersClick
    end
    object cbExceptions: TdxBarButton
      Caption = 'Exceptions'
      Category = 1
      Hint = 'Exceptions'
      Visible = ivAlways
      ButtonStyle = bsChecked
      CloseSubMenuOnClick = False
      OnClick = cbExceptionsClick
    end
    object cbUDFs: TdxBarButton
      Caption = 'UDFs'
      Category = 1
      Hint = 'UDFs'
      Visible = ivAlways
      ButtonStyle = bsChecked
      CloseSubMenuOnClick = False
      OnClick = cbUDFsClick
    end
    object cbTextToSearch: TdxBarCombo
      Caption = 'Text to search'
      Category = 1
      Hint = 'Text to search'
      Visible = ivAlways
      OnChange = cbTextToSearchChange
      Width = 200
      DropDownCount = 20
      ItemIndex = -1
    end
    object dxBarButton2: TdxBarButton
      Action = actCopyResults
      Category = 0
    end
  end
  object dxBarPopupMenu1: TdxBarPopupMenu
    BarManager = bm
    ItemLinks = <
      item
        Item = cbTextToSearch
        Visible = True
      end
      item
        BeginGroup = True
        Item = cbDatabases
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarSubItem1
        Visible = True
      end
    >
    UseOwnFont = False
    OnPopup = dxBarPopupMenu1Popup
    Left = 352
    Top = 362
  end
  object TLPM: TdxBarPopupMenu
    BarManager = bm
    ItemLinks = <
      item
        Item = dxBarButton2
        Visible = True
      end
    >
    UseOwnFont = False
    OnPopup = dxBarPopupMenu1Popup
    Left = 400
    Top = 362
  end
end
