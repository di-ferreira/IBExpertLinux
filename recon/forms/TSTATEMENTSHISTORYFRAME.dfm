object StatementsHistoryFrame: TStatementsHistoryFrame
  Left = 0
  Top = 0
  Width = 435
  Height = 268
  HelpContext = 12800
  Align = alClient
  AutoScroll = False
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  ParentFont = False
  TabOrder = 0
  OnResize = FrameResize
  object Splitter1: TdfsSplitter
    Left = 0
    Top = 260
    Width = 435
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
    Top = 0
    Width = 435
    Height = 31
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object lFilter: TLabel
      Left = 8
      Top = 8
      Width = 31
      Height = 13
      Caption = 'Filter: '
      FocusControl = cbFilter
    end
    object cbFilter: TdxPickEdit
      Left = 43
      Top = 4
      Width = 542
      TabOrder = 0
      OnEnter = cbFilterEnter
      OnExit = cbFilterExit
      OnKeyPress = cbFilterKeyPress
      Anchors = ['akLeft', 'akTop', 'akRight']
      StyleController = IBEMainForm.MainSC
      OnChange = cbFilterChange
    end
  end
  object Grid: TdxDBGrid
    Left = 0
    Top = 31
    Width = 435
    Height = 229
    Bands = <
      item
        Alignment = taLeftJustify
        Caption = 'General'
        DisableDragging = True
        OnlyOwnColumns = True
      end
      item
        Alignment = taLeftJustify
        Caption = 'Performance Info'
        DisableDragging = True
        OnlyOwnColumns = True
      end
    >
    DefaultLayout = False
    HeaderPanelRowCount = 1
    KeyField = 'Key'
    SummaryGroups = []
    SummarySeparator = ', '
    Align = alTop
    PopupMenu = PopupMenu1
    TabOrder = 1
    OnDblClick = GridDblClick
    DataSource = DS
    Filter.Criteria = {4 bytes}
    LookAndFeel = lfFlat
    OptionsBehavior = ['edgoAutoSearch', 'edgoAutoSort', 'edgoDragScroll', 'edgoEditing', 'edgoEnterShowEditor', 'edgoImmediateEditor', 'edgoStoreToRegistry', 'edgoTabThrough', 'edgoVertThrough']
    OptionsDB = ['edgoCancelOnExit', 'edgoCanNavigation', 'edgoLoadAllRecords', 'edgoUseBookmarks']
    OptionsView = ['edgoBandHeaderWidth', 'edgoDrawEndEllipsis', 'edgoRowSelect', 'edgoUseBitmap']
    ShowBands = True
    OnCustomDrawCell = GridCustomDrawCell
    object gcNum: TdxDBGridColumn
      Caption = '#'
      HeaderAlignment = taRightJustify
      Width = 37
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Key'
    end
    object gcStatement: TdxDBGridMemoColumn
      DisableEditor = True
      Width = 415
      BandIndex = 0
      RowIndex = 0
      HeaderMaxLineCount = 1
      FieldName = 'Statement'
      MaxDisplayLength = 1000
      WordWrap = False
    end
    object gcLastExecuted: TdxDBGridColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Timestamp'
    end
    object gcPrepareTime: TdxDBGridColumn
      Caption = 'Prepare (ms)'
      BandIndex = 1
      RowIndex = 0
      FieldName = 'PrepareTime'
    end
    object gcExecuteTime: TdxDBGridColumn
      Caption = 'Execute (ms)'
      BandIndex = 1
      RowIndex = 0
      FieldName = 'ExecuteTime'
    end
    object gcIdxReads: TdxDBGridColumn
      Caption = 'Indexed Reads'
      BandIndex = 1
      RowIndex = 0
      FieldName = 'IdxReads'
    end
    object gcNonIdxReads: TdxDBGridColumn
      Caption = 'Non-Indexed Reads'
      BandIndex = 1
      RowIndex = 0
      FieldName = 'NonIdxReads'
    end
    object gcInserts: TdxDBGridColumn
      BandIndex = 1
      RowIndex = 0
      FieldName = 'Inserts'
    end
    object gcUpdates: TdxDBGridColumn
      BandIndex = 1
      RowIndex = 0
      FieldName = 'Updates'
    end
    object gcDeletes: TdxDBGridColumn
      BandIndex = 1
      RowIndex = 0
      FieldName = 'Deletes'
    end
  end
  object EditFm: TEditFrame
    Top = 264
    Height = 4
    TabOrder = 2
    object lBookmark: TLabel
      Width = 46
    end
    object EditM: TSQLMemo
      Height = 191
    end
    object pIncSearch: TPanel
      Top = -14
    end
  end
  object DS: TDataSource
    DataSet = mt
    OnDataChange = DSDataChange
    Left = 208
    Top = 104
  end
  object mt: TkbmMemTable
    Active = True
    AutoSort = False
    SortOptions = []
    PersistentSaveOptions = ['mtfSaveData', 'mtfSaveNonVisible']
    PersistentSaveFormat = mtsfBinary
    DoBinaryLocate = False
    Version = '1.36'
    OnFilterRecord = mtFilterRecord
    Left = 240
    Top = 104
    object mtKey: TIntegerField
      FieldName = 'Key'
    end
    object mtTimestamp: TDateTimeField
      FieldName = 'Timestamp'
    end
    object mtStatement: TMemoField
      FieldName = 'Statement'
      BlobType = ftMemo
    end
    object mtFullStmt: TMemoField
      FieldName = 'FullStmt'
      BlobType = ftMemo
    end
    object mtPrepareTime: TIntegerField
      FieldName = 'PrepareTime'
    end
    object mtExecuteTime: TIntegerField
      FieldName = 'ExecuteTime'
    end
    object mtIdxReads: TIntegerField
      FieldName = 'IdxReads'
    end
    object mtNonIdxReads: TIntegerField
      FieldName = 'NonIdxReads'
    end
    object mtInserts: TIntegerField
      FieldName = 'Inserts'
    end
    object mtDeletes: TIntegerField
      FieldName = 'Deletes'
    end
    object mtUpdates: TIntegerField
      FieldName = 'Updates'
    end
    object mtPlan: TMemoField
      FieldName = 'Plan'
      BlobType = ftMemo
    end
    object mtFullPlan: TMemoField
      FieldName = 'FullPlan'
      BlobType = ftMemo
    end
    object mtIsUTF8: TBooleanField
      FieldName = 'IsUTF8'
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 304
    Top = 168
    object ClearHistory1: TMenuItem
      Action = actClearHistory
    end
    object DeleteStatement1: TMenuItem
      Action = actDelStatement
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object CopytoClipboard1: TMenuItem
      Action = actCopy
    end
    object CopyAlltoClipboard1: TMenuItem
      Action = actCopyAll
    end
  end
  object HistoryActions: TActionList
    OnUpdate = HistoryActionsUpdate
    Left = 472
    Top = 64
    object actClearHistory: TAction
      Caption = 'Clear History'
      OnExecute = actClearHistoryExecute
    end
    object actDelStatement: TAction
      Caption = 'Delete Statement'
      ShortCut = 46
      OnExecute = actDelStatementExecute
    end
    object actExit: TAction
      Caption = 'Exit'
      ShortCut = 27
    end
    object actSelect: TAction
      Caption = 'actSelect'
      ShortCut = 13
      OnExecute = actSelectExecute
    end
    object actCopy: TAction
      Caption = 'Copy to Clipboard'
      OnExecute = actCopyExecute
    end
    object actCopyAll: TAction
      Caption = 'Copy All to Clipboard'
      OnExecute = actCopyAllExecute
    end
  end
end
