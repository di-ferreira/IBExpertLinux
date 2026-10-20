object CColumnsFrame: TCColumnsFrame
  Left = 0
  Top = 0
  Width = 435
  Height = 268
  HelpContext = 3800
  Align = alClient
  TabOrder = 0
  object Splitter1: TSplitter
    Left = 0
    Top = 146
    Width = 435
    Height = 4
    Cursor = crVSplit
    Align = alBottom
    ResizeStyle = rsUpdate
  end
  object Grid: TdxDBGrid
    Left = 0
    Top = 28
    Width = 435
    Height = 118
    Bands = <
      item
      end
    >
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'Key'
    SummaryGroups = []
    SummarySeparator = ', '
    Align = alClient
    TabOrder = 0
    OnDblClick = GridDblClick
    OnKeyDown = GridKeyDown
    OnKeyPress = GridKeyPress
    DataSource = DS
    Filter.Criteria = {4 bytes}
    LookAndFeel = lfFlat
    OptionsBehavior = ['edgoDragScroll', 'edgoEditing', 'edgoEnterShowEditor', 'edgoImmediateEditor', 'edgoStoreToRegistry', 'edgoTabThrough', 'edgoVertThrough']
    OptionsDB = ['edgoCanAppend', 'edgoCancelOnExit', 'edgoCanDelete', 'edgoCanInsert', 'edgoCanNavigation', 'edgoConfirmDelete', 'edgoUseBookmarks']
    OptionsView = ['edgoBandHeaderWidth', 'edgoDrawEndEllipsis', 'edgoIndicator', 'edgoUseBitmap']
    OnChangeColumn = GridChangeColumn
    OnCustomDrawCell = GridCustomDrawCell
    OnEdited = GridEdited
    OnEditing = GridEditing
    object gcPK: TdxDBGridColumn
      DisableEditor = True
      HeaderAlignment = taCenter
      Width = 22
      BandIndex = 0
      RowIndex = 0
      FieldName = 'PK'
    end
    object gcName: TdxDBGridColumn
      Width = 164
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Name'
    end
    object gcType: TdxDBGridPickColumn
      Width = 91
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Type'
      DropDownListStyle = True
      Items.Strings = ['SMALLINT', 'INTEGER', 'FLOAT', 'DOUBLE PRECISION', 'CHAR', 'VARCHAR', 'DATE', 'TIME', 'BLOB', 'TIMESTAMP']
      DropDownRows = 20
    end
    object gcDomain: TdxDBGridPopupColumn
      Width = 119
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Domain'
      PopupControl = SelDomFm
      PopupFormBorderStyle = pbsSysPanel
      PopupWidth = 300
      OnCloseUp = gcDomainCloseUp
      OnInitPopup = gcDomainInitPopup
      OnPopup = gcDomainPopup
    end
    object gcLength: TdxDBGridSpinColumn
      Width = 53
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Length'
      MinValue = 1
      MaxValue = 50000
    end
    object gcScale: TdxDBGridSpinColumn
      Width = 52
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Scale'
      MaxValue = 50000
    end
    object gcMandatory: TdxDBGridColumn
      Caption = 'M'
      DisableEditor = True
      HeaderAlignment = taCenter
      Width = 23
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NotNull'
    end
    object gcGenerate: TdxDBGridColumn
      Caption = 'G'
      DisableEditor = True
      HeaderAlignment = taCenter
      Width = 21
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Generate'
    end
    object gcAutoInc: TdxDBGridColumn
      DisableEditor = True
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'AutoInc'
    end
    object gcSubType: TdxDBGridPickColumn
      Width = 69
      BandIndex = 0
      RowIndex = 0
      FieldName = 'SubType'
      Items.Strings = ['Binary', 'Text']
    end
    object gcCharset: TdxDBGridPickColumn
      Width = 91
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Charset'
      DropDownListStyle = True
      DropDownRows = 12
    end
    object gcCollate: TdxDBGridColumn
      Width = 67
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Collate'
    end
    object gcCheck: TdxDBGridColumn
      DisableEditor = True
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Check'
      DisableFilter = True
    end
    object gcDefault: TdxDBGridColumn
      Width = 92
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Default'
    end
    object gcComputedBy: TdxDBGridColumn
      Caption = 'Computed by'
      DisableEditor = True
      Width = 70
      BandIndex = 0
      RowIndex = 0
      HeaderMaxLineCount = 0
      FieldName = 'ComputedBy'
      DisableFilter = True
    end
    object gcTypeID: TdxDBGridColumn
      Visible = False
      Width = 35
      BandIndex = 0
      RowIndex = 0
      FieldName = 'TypeID'
    end
    object gcDescription: TdxDBGridColumn
      DisableEditor = True
      Width = 100
      BandIndex = 0
      RowIndex = 0
      HeaderMaxLineCount = 0
      FieldName = 'Description'
      DisableFilter = True
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 150
    Width = 435
    Height = 118
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 435
      Height = 18
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = ' Description'
      Color = clBtnShadow
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clCaptionText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = ['fsBold']
      ParentFont = False
      TabOrder = 0
    end
    object dbmDescription: TdxMemo
      Left = 0
      Top = 18
      Width = 435
      Align = alClient
      TabOrder = 1
      OnExit = dbmDescriptionExit
      StyleController = IBEMainForm.MainSC
      Height = 100
    end
  end
  object SelDomFm: TSelectDomainFrame
    Left = 45
    Top = 88
    Width = 450
    Height = 211
    Align = alNone
    TabOrder = 2
    Visible = False
    object tl: TdxTreeList
      Width = 450
      Height = 211
      OnDblClick = SelDomFmtlDblClick
      OnKeyPress = SelDomFmtlKeyPress
    end
  end
  object TBToolbar1: TTBToolbar
    Left = 0
    Top = 3
    Width = 435
    Height = 22
    Align = alTop
    Caption = 'TBToolbar1'
    Images = IBEMainForm.MenuImages
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    object TBItem2: TTBItem
      Action = actInsertColumn
    end
    object TBItem1: TTBItem
      Action = actAppendColumn
    end
    object TBItem5: TTBItem
      Action = actRemoveColumn
    end
    object TBSeparatorItem1: TTBSeparatorItem
    end
    object TBItem4: TTBItem
      Action = actMoveColumnDown
    end
    object TBItem3: TTBItem
      Action = actMoveColumnUp
    end
    object TBSeparatorItem2: TTBSeparatorItem
    end
    object TBControlItem1: TTBControlItem
      Control = lHint
    end
    object lHint: TLabel
      Left = 127
      Top = 4
      Width = 291
      Height = 13
      Align = alRight
      Alignment = taRightJustify
      Caption = '  Double-click the cell or press Space/Enter to edit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = ['fsBold']
      ParentFont = False
      Visible = False
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 25
    Width = 435
    Height = 3
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 4
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 435
    Height = 3
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 5
  end
  object mt: TkbmMemTable
    Active = True
    AutoSort = False
    SortOptions = []
    PersistentSaveOptions = ['mtfSaveData', 'mtfSaveNonVisible']
    PersistentSaveFormat = mtsfBinary
    DoBinaryLocate = False
    Version = '1.36'
    AfterPost = mtAfterPost
    BeforeDelete = mtBeforeDelete
    OnNewRecord = mtNewRecord
    Left = 8
    Top = 80
    object mtKey: TIntegerField
      FieldName = 'Key'
    end
    object mtPK: TSmallintField
      FieldName = 'PK'
      OnChange = mtPKChange
    end
    object mtName: TStringField
      FieldName = 'Name'
      Size = 31
    end
    object mtType: TStringField
      DisplayWidth = 15
      FieldName = 'Type'
      OnChange = mtTypeChange
      Size = 18
    end
    object mtLength: TIntegerField
      FieldName = 'Length'
    end
    object mtScale: TSmallintField
      FieldName = 'Scale'
    end
    object mtSubType: TStringField
      FieldName = 'SubType'
      Size = 10
    end
    object mtCharset: TStringField
      FieldName = 'Charset'
      Size = 15
    end
    object mtScope: TSmallintField
      FieldName = 'Scope'
    end
    object mtDescription: TMemoField
      FieldName = 'Description'
      OnGetText = mtDescriptionGetText
      BlobType = ftMemo
    end
    object mtTypeID: TIntegerField
      FieldName = 'TypeID'
    end
    object mtDomain: TStringField
      FieldName = 'Domain'
      Size = 31
    end
    object mtNotNull: TSmallintField
      FieldName = 'NotNull'
    end
    object mtDefault: TStringField
      FieldName = 'Default'
      Size = 100
    end
    object mtComputedBy: TMemoField
      FieldName = 'ComputedBy'
      OnGetText = mtDescriptionGetText
      BlobType = ftMemo
    end
    object mtGenerate: TSmallintField
      FieldName = 'Generate'
    end
    object mtOldName: TStringField
      FieldName = 'OldName'
      Size = 31
    end
    object mtCollate: TStringField
      FieldName = 'Collate'
    end
    object mtData: TIntegerField
      FieldName = 'Data'
    end
    object mtCheck: TMemoField
      FieldName = 'Check'
      OnGetText = mtDescriptionGetText
      BlobType = ftMemo
    end
    object mtAutoInc: TSmallintField
      FieldName = 'AutoInc'
    end
  end
  object DS: TDataSource
    DataSet = mt
    OnDataChange = DSDataChange
    Left = 40
    Top = 80
  end
  object ActionList1: TActionList
    Images = IBEMainForm.MenuImages
    OnUpdate = ActionList1Update
    Left = 360
    Top = 72
    object actRemoveColumn: TAction
      Caption = 'Remove column'
      Hint = 'Remove column'
      ImageIndex = 112
      OnExecute = actRemoveColumnExecute
    end
    object actMoveColumnDown: TAction
      Caption = 'Move column down'
      Hint = 'Move column down'
      ImageIndex = 113
      OnExecute = actMoveColumnDownExecute
    end
    object actMoveColumnUp: TAction
      Caption = 'Move column up'
      Hint = 'Move column up'
      ImageIndex = 114
      OnExecute = actMoveColumnUpExecute
    end
    object actInsertColumn: TAction
      Caption = 'Insert column'
      Hint = 'Insert column'
      ImageIndex = 115
      OnExecute = actInsertColumnExecute
    end
    object actAppendColumn: TAction
      Caption = 'Append column'
      Hint = 'Append column'
      ImageIndex = 116
      OnExecute = actAppendColumnExecute
    end
  end
end
