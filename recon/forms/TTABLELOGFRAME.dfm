object TableLogFrame: TTableLogFrame
  Left = 0
  Top = 0
  Width = 443
  Height = 270
  HelpContext = 3400
  Align = alClient
  TabOrder = 0
  object Splitter1: TdfsSplitter
    Left = 0
    Top = 260
    Width = 443
    Height = 4
    Cursor = crVSplit
    Align = alTop
    ResizeStyle = rsUpdate
    Maximized = False
    Minimized = False
    ButtonCursor = crDefault
  end
  object pFilter: TPanel
    Left = 0
    Top = 26
    Width = 443
    Height = 66
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object lStartDate: TLabel
      Left = 26
      Top = 10
      Width = 46
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Start date'
    end
    object lEndDate: TLabel
      Left = 29
      Top = 38
      Width = 43
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'End date'
    end
    object lUser: TLabel
      Left = 310
      Top = 10
      Width = 22
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'User'
    end
    object lOperation: TLabel
      Left = 297
      Top = 37
      Width = 35
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Actions'
    end
    object Bevel1: TBevel
      Left = 0
      Top = 0
      Width = 443
      Height = 3
      Align = alTop
      Shape = bsTopLine
    end
    object cbUsers: TdxPickEdit
      Left = 336
      Top = 7
      Width = 169
      TabOrder = 2
      StyleController = IBEMainForm.MainSC
    end
    object deStartDate: TDateTimeEditFrame
      Left = 76
      Top = 7
      object TimeEdit: TdxTimeEdit
        StoredValues = 4
      end
    end
    object deEndDate: TDateTimeEditFrame
      Left = 76
      Top = 35
      TabOrder = 1
      object TimeEdit: TdxTimeEdit
        StoredValues = 4
      end
    end
    object cbOperation: TdxPickEdit
      Left = 336
      Top = 34
      Width = 169
      TabOrder = 3
      StyleController = IBEMainForm.MainSC
      OnChange = cbOperationChange
      DropDownListStyle = True
      Items.Strings = ['ALL', 'INSERT', 'UPDATE', 'DELETE']
    end
    object cbShowAll: TdxCheckEdit
      Left = 520
      Top = 6
      Width = 369
      TabOrder = 4
      Caption = 'Display all'
      StyleController = IBEMainForm.MainCheckSC
      OnChange = cbShowAllChange
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 92
    Width = 443
    Height = 168
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Splitter2: TdfsSplitter
      Left = 122
      Top = 0
      Width = 4
      Height = 168
      Cursor = crHSplit
      Align = alRight
      ResizeStyle = rsUpdate
      Maximized = False
      Minimized = False
      ButtonCursor = crDefault
    end
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 122
      Height = 168
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object pOperations: TPanel
        Left = 0
        Top = 0
        Width = 122
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
        TabOrder = 1
      end
      object GR: TdxDBGrid
        Tag = 1
        Left = 0
        Top = 18
        Width = 122
        Height = 150
        Bands = <
          item
          end
        >
        DefaultLayout = True
        HeaderPanelRowCount = 1
        DefaultFields = True
        SummaryGroups = []
        SummarySeparator = ', '
        Align = alClient
        TabOrder = 0
        DataSource = DS
        Filter.Criteria = {4 bytes}
        HideFocusRect = True
        HideSelectionColor = clBtnFace
        HideSelectionTextColor = clWindowText
        LookAndFeel = lfFlat
        OptionsBehavior = ['edgoAutoSearch', 'edgoAutoSort', 'edgoDragScroll', 'edgoEditing', 'edgoEnterShowEditor', 'edgoImmediateEditor', 'edgoTabThrough', 'edgoVertThrough']
        OptionsView = ['edgoAutoWidth', 'edgoBandHeaderWidth', 'edgoDrawEndEllipsis', 'edgoHotTrack', 'edgoRowSelect', 'edgoUseBitmap']
        OnCustomDrawCell = GRCustomDrawCell
        OnColumnClick = GRColumnClick
      end
    end
    object Panel4: TPanel
      Left = 126
      Top = 0
      Width = 317
      Height = 168
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      object pKeyFields: TPanel
        Left = 0
        Top = 0
        Width = 317
        Height = 18
        Align = alTop
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Caption = ' Key fields values'
        Color = clBtnShadow
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clCaptionText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = ['fsBold']
        ParentFont = False
        TabOrder = 0
      end
      object KeyTL: TdxTreeList
        Left = 0
        Top = 18
        Width = 317
        Height = 150
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
        Options = ['aoColumnSizing', 'aoColumnMoving', 'aoTabThrough', 'aoRowSelect', 'aoMultiSelect', 'aoDrawEndEllipsis', 'aoAutoWidth', 'aoHideFocusRect', 'aoAutoSort']
        OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSortRefresh']
        TreeLineColor = clGrayText
        ShowGrid = True
        ShowRoot = False
        GridLineColor = clSilver
        OnEnter = KeyTLEnter
        OnCustomDrawCell = KeyTLCustomDrawCell
        object tlcKPK: TdxTreeListColumn
          Caption = 'PK'
          HeaderAlignment = taCenter
          Width = 24
          BandIndex = 0
          RowIndex = 0
        end
        object tlcKField: TdxTreeListColumn
          Caption = 'Field'
          DisableCustomizing = True
          DisableEditor = True
          ReadOnly = True
          Width = 129
          BandIndex = 0
          RowIndex = 0
        end
        object tlcKType: TdxTreeListColumn
          Caption = 'Type'
          Width = 113
          BandIndex = 0
          RowIndex = 0
        end
        object tlcKValue: TdxTreeListColumn
          Caption = 'Value'
          BandIndex = 0
          RowIndex = 0
        end
      end
    end
  end
  object FieldsTL: TdxTreeList
    Left = 0
    Top = 264
    Width = 443
    Height = 6
    Bands = <
      item
      end
    >
    DefaultLayout = True
    HeaderPanelRowCount = 1
    Align = alClient
    DragMode = dmAutomatic
    TabOrder = 2
    HideSelection = False
    LookAndFeel = lfFlat
    Options = ['aoColumnSizing', 'aoColumnMoving', 'aoTabThrough', 'aoRowSelect', 'aoMultiSelect', 'aoDrawEndEllipsis', 'aoAutoWidth', 'aoHideFocusRect', 'aoAutoSort']
    OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSortRefresh']
    TreeLineColor = clGrayText
    ShowGrid = True
    ShowRoot = False
    GridLineColor = clSilver
    OnEnter = FieldsTLEnter
    OnCustomDrawCell = FieldsTLCustomDrawCell
    object tlcPK: TdxTreeListColumn
      Caption = 'PK'
      HeaderAlignment = taCenter
      Width = 24
      BandIndex = 0
      RowIndex = 0
    end
    object tlcName: TdxTreeListColumn
      Caption = 'Field'
      DisableCustomizing = True
      DisableEditor = True
      ReadOnly = True
      Width = 148
      BandIndex = 0
      RowIndex = 0
    end
    object tlcType: TdxTreeListColumn
      Caption = 'Type'
      Width = 126
      BandIndex = 0
      RowIndex = 0
    end
    object tlcOldValue: TdxTreeListColumn
      Caption = 'Old value'
      Width = 89
      BandIndex = 0
      RowIndex = 0
    end
    object tlcNewValue: TdxTreeListColumn
      Caption = 'New value'
      Width = 85
      BandIndex = 0
      RowIndex = 0
    end
    object tlcDescription: TdxTreeListColumn
      Caption = 'Description'
      Width = 160
      BandIndex = 0
      RowIndex = 0
    end
    object tlcIsOldNull: TdxTreeListColumn
      Visible = False
      BandIndex = 0
      RowIndex = 0
    end
    object tlcIsNewNull: TdxTreeListColumn
      Visible = False
      BandIndex = 0
      RowIndex = 0
    end
  end
  object TBDock1: TTBDock
    Left = 0
    Top = 0
    Width = 443
    Height = 26
    object TBToolbar1: TTBToolbar
      Left = 0
      Top = 0
      BorderStyle = bsNone
      Caption = 'TBToolbar1'
      DockMode = dmCannotFloat
      DockPos = 0
      DragHandleStyle = dhNone
      Images = IBEMainForm.MenuImages
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      object TBItem2: TTBItem
        Action = actRefresh
      end
      object TBSeparatorItem1: TTBSeparatorItem
      end
      object TBItem1: TTBItem
        Action = actLogToScript
        DisplayMode = nbdmImageAndText
      end
    end
  end
  object DataD: TpFIBDataSet
    BufferChunks = 32
    CachedUpdates = False
    UniDirectional = False
    UpdateRecordTypes = ['cusUnmodified', 'cusModified', 'cusInserted']
    Transaction = DataTr
    Options = ['poTrimCharFields', 'poAllowChangeSqls', 'poRefreshAfterPost']
    AfterOpen = DataDAfterOpen
    ObjectView = False
    DefaultFormats.DateTimeDisplayFormat = 'dd MM yyyy'
    DefaultFormats.NumericEditFormat = '0'
    DefaultFormats.DisplayFormatDate = 'dd/MM/yyyy'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 194
    Top = 150
  end
  object DS: TDataSource
    DataSet = DataD
    OnDataChange = DSDataChange
    Left = 194
    Top = 118
  end
  object DataTr: TpFIBTransaction
    Active = False
    Timeout = 154378988
    TimeoutAction = TARollback
    Left = 226
    Top = 118
  end
  object Timer: TTimer
    Enabled = False
    OnTimer = TimerTimer
    Left = 357
    Top = 154
  end
  object SS: TpFIBSecurityService
    ClientLibName = 'gds32.dll'
    LoginPrompt = False
    SecurityAction = ActionDisplayUser
    UserID = 0
    GroupID = 0
    Left = 423
    Top = 157
  end
  object Q: TpFIBQuery
    ParamCheck = True
    Transaction = DataTr
    Left = 509
    Top = 154
  end
  object ChTimer: TTimer
    Enabled = False
    Interval = 500
    OnTimer = ChTimerTimer
    Left = 388
    Top = 155
  end
  object ActionList1: TActionList
    Images = IBEMainForm.MenuImages
    Left = 256
    Top = 177
    object actRefresh: TAction
      Caption = 'actRefresh'
      Hint = 'Refresh'
      ImageIndex = 220
      OnExecute = actRefreshExecute
    end
    object actLogToScript: TAction
      Caption = 'Log to Script'
      Hint = 'Log to Script'
      ImageIndex = 56
      ShortCut = 120
      OnExecute = actLogToScriptExecute
    end
  end
end
