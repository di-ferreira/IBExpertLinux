object CKeysFrame: TCKeysFrame
  Left = 0
  Top = 0
  Width = 435
  Height = 268
  HelpContext = 4000
  Align = alClient
  TabOrder = 0
  object Splitter1: TSplitter
    Left = 0
    Top = 144
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
    Height = 116
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
    OptionsBehavior = ['edgoDragScroll', 'edgoEditing', 'edgoEnterShowEditor', 'edgoImmediateEditor', 'edgoTabThrough', 'edgoVertThrough']
    OptionsDB = ['edgoCanAppend', 'edgoCancelOnExit', 'edgoCanDelete', 'edgoCanInsert', 'edgoCanNavigation', 'edgoConfirmDelete', 'edgoUseBookmarks']
    OptionsView = ['edgoBandHeaderWidth', 'edgoDrawEndEllipsis', 'edgoIndicator', 'edgoUseBitmap']
    OnChangeColumn = GridChangeColumn
    OnCustomDrawCell = GridCustomDrawCell
    OnEdited = GridEdited
    OnEditing = GridEditing
    object gcName: TdxDBGridColumn
      Width = 152
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Name'
    end
    object gcKeyType: TdxDBGridPickColumn
      Caption = 'Type'
      Width = 80
      BandIndex = 0
      RowIndex = 0
      FieldName = 'KeyType'
      Items.Strings = ['Primary', 'Foreign', 'Unique']
    end
    object gcFields: TdxDBGridPopupColumn
      Width = 200
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Fields'
      PopupAutoSize = False
      PopupControl = FAF
      PopupFormBorderStyle = pbsSysPanel
      PopupFormCaption = 'Fields'
      PopupMinWidth = 300
      PopupWidth = 300
      OnCloseUp = gcFieldsCloseUp
      OnPopup = gcFieldsPopup
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
    object gcFKTable: TdxDBGridPickColumn
      Caption = 'FK Table'
      Width = 139
      BandIndex = 0
      RowIndex = 0
      FieldName = 'FKTable'
      DropDownListStyle = True
      DropDownRows = 20
    end
    object gcFKFields: TdxDBGridPopupColumn
      Caption = 'FK Fields'
      Width = 200
      BandIndex = 0
      RowIndex = 0
      FieldName = 'FKFields'
      PopupControl = FAF
      PopupFormBorderStyle = pbsSysPanel
      OnCloseUp = gcFKFieldsCloseUp
      OnPopup = gcFKFieldsPopup
    end
    object gcUpdateRule: TdxDBGridPickColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'UpdateRule'
      DropDownListStyle = True
      Items.Strings = ['NO ACTION', 'CASCADE', 'SET NULL', 'SET DEFAULT']
    end
    object gcDeleteRule: TdxDBGridPickColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'DeleteRule'
      DropDownListStyle = True
      Items.Strings = ['NO ACTION', 'CASCADE', 'SET NULL', 'SET DEFAULT']
    end
    object gcKeyTypeID: TdxDBGridColumn
      Visible = False
      BandIndex = 0
      RowIndex = 0
      FieldName = 'KeyTypeID'
    end
    object gcDescription: TdxDBGridColumn
      DisableEditor = True
      Width = 150
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Description'
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 148
    Width = 435
    Height = 120
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
    object dbmDesc: TdxMemo
      Left = 0
      Top = 18
      Width = 435
      Align = alClient
      TabOrder = 1
      OnExit = dbmDescExit
      StyleController = IBEMainForm.MainSC
      Height = 102
    end
  end
  object FAF: TFieldsAddFrame
    Left = 152
    Top = 64
    TabOrder = 2
    Visible = False
    object tlAvailableFields: TdxTreeList
      OnKeyPress = FAFtlAvailableFieldsKeyPress
    end
    object tlIncludedFields: TdxTreeList
      OnKeyPress = FAFtlIncludedFieldsKeyPress
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 435
    Height = 3
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
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
    TabOrder = 4
    object TBItem2: TTBItem
      Action = actAddKey
    end
    object TBItem1: TTBItem
      Action = actRemoveKey
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
  object Panel3: TPanel
    Left = 0
    Top = 25
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
    OnNewRecord = mtNewRecord
    Left = 8
    Top = 80
    object mtName: TStringField
      FieldName = 'Name'
      Size = 31
    end
    object mtKeyType: TStringField
      FieldName = 'KeyType'
      OnChange = mtKeyTypeChange
      Size = 10
    end
    object mtSorting: TStringField
      FieldName = 'Sorting'
      Size = 10
    end
    object mtFields: TStringField
      FieldName = 'Fields'
      Size = 1000
    end
    object mtGenerate: TSmallintField
      FieldName = 'Generate'
    end
    object mtFKTable: TStringField
      FieldName = 'FKTable'
      Size = 31
    end
    object mtFKFields: TStringField
      FieldName = 'FKFields'
      Size = 1000
    end
    object mtUpdateRule: TStringField
      FieldName = 'UpdateRule'
      Size = 15
    end
    object mtDeleteRule: TStringField
      FieldName = 'DeleteRule'
      Size = 15
    end
    object mtKeyTypeID: TSmallintField
      FieldName = 'KeyTypeID'
      OnChange = mtKeyTypeIDChange
    end
    object mtPointer: TIntegerField
      FieldName = 'Pointer'
    end
    object mtDescription: TMemoField
      FieldName = 'Description'
      OnGetText = mtDescriptionGetText
      BlobType = ftMemo
    end
  end
  object DS: TDataSource
    DataSet = mt
    OnDataChange = DSDataChange
    Left = 40
    Top = 80
  end
  object CKeysActions: TActionList
    Images = IBEMainForm.MenuImages
    Left = 328
    Top = 48
    object actAddKey: TAction
      Caption = 'Add Key'
      Hint = 'Add Key'
      ImageIndex = 116
      OnExecute = actAddKeyExecute
    end
    object actRemoveKey: TAction
      Caption = 'Remove Key'
      Hint = 'Remove Key'
      ImageIndex = 112
      OnExecute = actRemoveKeyExecute
    end
  end
end
