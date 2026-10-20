object CTriggersFrame: TCTriggersFrame
  Left = 0
  Top = 0
  Width = 435
  Height = 268
  HelpContext = 4100
  Align = alClient
  TabOrder = 0
  object Splitter1: TSplitter
    Left = 0
    Top = 153
    Width = 435
    Height = 4
    Cursor = crVSplit
    Align = alTop
    ResizeStyle = rsUpdate
  end
  object pEdit: TPanel
    Left = 0
    Top = 157
    Width = 435
    Height = 111
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Bevel1: TBevel
      Left = 0
      Top = 0
      Width = 435
      Height = 7
      Align = alTop
      Shape = bsTopLine
    end
    object Tabs: TTabControl
      Left = 0
      Top = 7
      Width = 435
      Height = 26
      Align = alTop
      Style = tsFlatButtons
      TabOrder = 0
      Tabs.Strings = ['Text', 'Description']
      TabIndex = 0
      OnChange = TabsChange
    end
    object dbmDesc: TdxMemo
      Tag = 1000
      Left = 0
      Top = 33
      Width = 435
      Align = alClient
      TabOrder = 1
      OnExit = dbmDescExit
      StyleController = IBEMainForm.MainSC
      Height = 78
    end
    object EditFm: TEditFrame
      Top = 33
      Height = 78
      TabOrder = 2
      object EditM: TSQLMemo
        Height = 60
        OnExit = EditFmEditMExit
      end
      object pIncSearch: TPanel
        Top = 60
      end
    end
  end
  object Grid: TdxDBGrid
    Left = 0
    Top = 28
    Width = 435
    Height = 125
    Bands = <
      item
      end
    >
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'Key'
    SummaryGroups = []
    SummarySeparator = ', '
    Align = alTop
    TabOrder = 1
    OnDblClick = GridDblClick
    OnKeyDown = GridKeyDown
    OnKeyPress = GridKeyPress
    DataSource = DS
    Filter.Criteria = {4 bytes}
    LookAndFeel = lfFlat
    OptionsDB = ['edgoCanAppend', 'edgoCancelOnExit', 'edgoCanDelete', 'edgoCanInsert', 'edgoCanNavigation', 'edgoConfirmDelete', 'edgoLoadAllRecords', 'edgoUseBookmarks']
    OptionsView = ['edgoBandHeaderWidth', 'edgoDrawEndEllipsis', 'edgoIndicator', 'edgoUseBitmap']
    OnChangeColumn = GridChangeColumn
    OnCustomDrawCell = GridCustomDrawCell
    OnEdited = GridEdited
    Constraints.MinHeight = 30
    object gcName: TdxDBGridColumn
      Width = 190
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Name'
    end
    object gcType: TdxDBGridPickColumn
      Width = 182
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Type'
      Items.Strings = ['BEFORE INSERT', 'AFTER INSERT', 'BEFORE UPDATE', 'AFTER UPDATE', 'BEFORE DELETE', 'AFTER DELETE']
      DropDownRows = 20
    end
    object gcPosition: TdxDBGridSpinColumn
      Width = 51
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Position'
    end
    object gcActive: TdxDBGridColumn
      Caption = 'A'
      DisableEditor = True
      HeaderAlignment = taCenter
      Width = 21
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Active'
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
    object gcDescription: TdxDBGridMemoColumn
      DisableEditor = True
      Width = 300
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Description'
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 435
    Height = 3
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
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
      Action = actAddTrigger
    end
    object TBItem1: TTBItem
      Action = actRemoveTrigger
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
  object Panel4: TPanel
    Left = 0
    Top = 25
    Width = 435
    Height = 3
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 4
  end
  object mt: TkbmMemTable
    AutoSort = False
    SortOptions = []
    PersistentSaveOptions = ['mtfSaveData', 'mtfSaveNonVisible']
    PersistentSaveFormat = mtsfBinary
    DoBinaryLocate = False
    Version = '1.36'
    AfterPost = mtAfterPost
    AfterScroll = mtAfterScroll
    OnNewRecord = mtNewRecord
    Left = 8
    Top = 80
    object mtName: TStringField
      FieldName = 'Name'
      Size = 31
    end
    object mtType: TStringField
      FieldName = 'Type'
      OnChange = mtTypeChange
      Size = 50
    end
    object mtTypeID: TSmallintField
      FieldName = 'TypeID'
      OnChange = mtTypeIDChange
    end
    object mtPosition: TIntegerField
      FieldName = 'Position'
      OnChange = mtPositionChange
    end
    object mtActive: TSmallintField
      FieldName = 'Active'
    end
    object mtGenerate: TSmallintField
      FieldName = 'Generate'
    end
    object mtSource: TMemoField
      FieldName = 'Source'
      BlobType = ftMemo
    end
    object mtDescription: TMemoField
      FieldName = 'Description'
      OnGetText = mtDescriptionGetText
      BlobType = ftMemo
    end
    object mtKey: TIntegerField
      FieldName = 'Key'
    end
    object mtData: TIntegerField
      FieldName = 'Data'
    end
  end
  object DS: TDataSource
    DataSet = mt
    OnDataChange = DSDataChange
    Left = 40
    Top = 80
  end
  object CTriggersActions: TActionList
    Images = IBEMainForm.MenuImages
    Left = 328
    Top = 48
    object actAddTrigger: TAction
      Caption = 'Add Trigger'
      Hint = 'Add Trigger'
      ImageIndex = 116
      OnExecute = actAddTriggerExecute
    end
    object actRemoveTrigger: TAction
      Caption = 'Remove Trigger'
      Hint = 'Remove Trigger'
      ImageIndex = 112
      OnExecute = actRemoveTriggerExecute
    end
  end
end
