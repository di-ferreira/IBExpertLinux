object CDomainsFrame: TCDomainsFrame
  Left = 0
  Top = 0
  Width = 435
  Height = 268
  HelpContext = 17100
  Align = alClient
  TabOrder = 0
  object Splitter1: TdfsSplitter
    Left = 0
    Top = 154
    Width = 435
    Height = 4
    Cursor = crVSplit
    Align = alBottom
    ResizeStyle = rsUpdate
    Maximized = False
    Minimized = False
    ButtonCursor = crDefault
  end
  object pDescMemo: TPanel
    Left = 0
    Top = 158
    Width = 435
    Height = 110
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object pDesc: TPanel
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
    object dbmDesc: TdxMemo
      Left = 0
      Top = 18
      Width = 435
      Align = alClient
      TabOrder = 1
      OnExit = dbmDescExit
      ScrollBars = ssVertical
      Height = 92
    end
  end
  object Grid: TdxDBGrid
    Left = 0
    Top = 22
    Width = 435
    Height = 132
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
    TabOrder = 1
    OnDblClick = GridDblClick
    OnDragDrop = GridDragDrop
    OnDragOver = GridDragOver
    OnExit = GridExit
    OnKeyDown = GridKeyDown
    OnKeyPress = GridKeyPress
    DataSource = DS
    Filter.Criteria = {4 bytes}
    LookAndFeel = lfFlat
    OptionsDB = ['edgoCanAppend', 'edgoCancelOnExit', 'edgoCanInsert', 'edgoCanNavigation', 'edgoConfirmDelete', 'edgoLoadAllRecords', 'edgoUseBookmarks']
    OptionsView = ['edgoBandHeaderWidth', 'edgoIndicator', 'edgoUseBitmap']
    OnChangeColumn = GridChangeColumn
    OnCustomDrawCell = GridCustomDrawCell
    OnEdited = GridEdited
    OnEditing = GridEditing
    object gcName: TdxDBGridColumn
      Width = 169
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Name'
    end
    object gcType: TdxDBGridPickColumn
      CharCase = ecUpperCase
      Width = 117
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Type'
      DropDownListStyle = True
      Items.Strings = ['RAW', 'NUMBER', 'LONG', 'VARCHAR2', 'DATE']
      DropDownRows = 20
    end
    object gcPrecision: TdxDBGridSpinColumn
      Caption = 'Size/Prec'
      Width = 56
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Prec'
    end
    object gcScale: TdxDBGridSpinColumn
      Width = 38
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Scale'
      MaxValue = 18
    end
    object gcNotNull: TdxDBGridColumn
      Alignment = taCenter
      Caption = 'Not null'
      DisableEditor = True
      HeaderAlignment = taCenter
      ReadOnly = True
      Width = 55
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NotNull'
    end
    object gcSubType: TdxDBGridPickColumn
      BandIndex = 0
      RowIndex = 0
      DisableGrouping = True
      FieldName = 'SubType'
      Items.Strings = ['Binary', 'Text']
    end
    object gcCharset: TdxDBGridPickColumn
      Width = 102
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Charset'
      DropDownRows = 20
    end
    object gcCollate: TdxDBGridPickColumn
      Width = 93
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Collate'
      DropDownRows = 20
    end
    object gcDefault: TdxDBGridColumn
      Width = 81
      BandIndex = 0
      RowIndex = 0
      HeaderMaxLineCount = 0
      FieldName = 'Default'
      DisableFilter = True
    end
    object gcCheck: TdxDBGridColumn
      DisableEditor = True
      Width = 106
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Check'
      DisableFilter = True
    end
    object gcArray: TdxDBGridColumn
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Array'
    end
    object gcIsNew: TdxDBGridColumn
      Visible = False
      Width = 55
      BandIndex = 0
      RowIndex = 0
      FieldName = 'IsNew'
    end
    object gcComment: TdxDBGridColumn
      DisableEditor = True
      Width = 250
      BandIndex = 0
      RowIndex = 0
      HeaderMaxLineCount = 0
      DisableGrouping = True
      FieldName = 'Description'
      DisableFilter = True
    end
  end
  object TBToolbar1: TTBToolbar
    Left = 0
    Top = 0
    Width = 435
    Height = 22
    Align = alTop
    Caption = 'TBToolbar1'
    Images = IBEMainForm.MenuImages
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    object TBItem2: TTBItem
      Action = actNewDomain
    end
    object TBItem1: TTBItem
      Action = actRemoveDomain
    end
    object TBSeparatorItem1: TTBSeparatorItem
    end
    object TBControlItem1: TTBControlItem
      Control = lHint
    end
    object lHint: TLabel
      Left = 52
      Top = 4
      Width = 27
      Height = 13
      Caption = 'lHint'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = ['fsBold']
      ParentFont = False
      Visible = False
    end
  end
  object DS: TDataSource
    DataSet = mt
    OnDataChange = DSDataChange
    Left = 304
    Top = 176
  end
  object mt: TkbmMemTable
    AutoSort = False
    SortOptions = []
    PersistentSaveOptions = ['mtfSaveData', 'mtfSaveNonVisible']
    PersistentSaveFormat = mtsfBinary
    DoBinaryLocate = False
    Version = '1.36'
    AfterPost = mtAfterPost
    OnNewRecord = mtNewRecord
    Left = 336
    Top = 176
    object mtName: TStringField
      FieldName = 'Name'
      OnValidate = mtNameValidate
      Size = 31
    end
    object mtType: TStringField
      FieldName = 'Type'
      Size = 35
    end
    object mtNotNull: TSmallintField
      FieldName = 'NotNull'
    end
    object mtPrec: TIntegerField
      FieldName = 'Prec'
    end
    object mtScale: TSmallintField
      FieldName = 'Scale'
    end
    object mtPointer: TIntegerField
      FieldName = 'Pointer'
    end
    object mtIsNew: TSmallintField
      FieldName = 'IsNew'
    end
    object mtArray: TStringField
      FieldName = 'Array'
      Size = 300
    end
    object mtCheck: TMemoField
      FieldName = 'Check'
      OnGetText = mtDescriptionGetText
      BlobType = ftMemo
    end
    object mtDescription: TMemoField
      FieldName = 'Description'
      OnGetText = mtDescriptionGetText
      BlobType = ftMemo
    end
    object mtCharset: TStringField
      FieldName = 'Charset'
      Size = 31
    end
    object mtCollate: TStringField
      FieldName = 'Collate'
      Size = 31
    end
    object mtKey: TIntegerField
      FieldName = 'Key'
    end
    object mtSubType: TStringField
      FieldName = 'SubType'
      Size = 8
    end
    object mtDefault: TStringField
      FieldName = 'Default'
      Size = 200
    end
  end
  object ActionList1: TActionList
    Images = IBEMainForm.MenuImages
    Left = 344
    Top = 64
    object actNewDomain: TAction
      Caption = 'New domain'
      Hint = 'New domain'
      ImageIndex = 115
      OnExecute = actNewDomainExecute
      OnUpdate = actNewDomainUpdate
    end
    object actRemoveDomain: TAction
      Caption = 'Remove domain'
      Hint = 'Remove domain'
      ImageIndex = 112
      ShortCut = 16430
      OnExecute = actRemoveDomainExecute
      OnUpdate = actRemoveDomainUpdate
    end
  end
end
