object CIndexesFrame: TCIndexesFrame
  Left = 0
  Top = 0
  Width = 435
  Height = 268
  HelpContext = 3900
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
  object Panel1: TPanel
    Left = 0
    Top = 148
    Width = 435
    Height = 120
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object dbmDesc: TdxMemo
      Left = 0
      Top = 18
      Width = 435
      Align = alClient
      TabOrder = 0
      OnExit = dbmDescExit
      OnKeyDown = dbmDescKeyDown
      StyleController = IBEMainForm.MainSC
      Height = 102
    end
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
      TabOrder = 1
    end
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
    TabOrder = 1
    OnDblClick = GridDblClick
    OnKeyDown = GridKeyDown
    OnKeyPress = GridKeyPress
    DataSource = DS
    Filter.Criteria = {4 bytes}
    LookAndFeel = lfFlat
    OptionsBehavior = ['edgoDragScroll', 'edgoEditing', 'edgoEnterShowEditor', 'edgoImmediateEditor', 'edgoTabThrough', 'edgoVertThrough']
    OptionsDB = ['edgoCanAppend', 'edgoCanDelete', 'edgoCanInsert', 'edgoCanNavigation', 'edgoConfirmDelete', 'edgoUseBookmarks']
    OptionsView = ['edgoBandHeaderWidth', 'edgoDrawEndEllipsis', 'edgoIndicator', 'edgoUseBitmap']
    OnChangeColumn = GridChangeColumn
    OnCustomDrawCell = GridCustomDrawCell
    OnEdited = GridEdited
    object gcName: TdxDBGridColumn
      CharCase = ecUpperCase
      Width = 190
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Name'
    end
    object gcFields: TdxDBGridPopupColumn
      Width = 179
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Fields'
      PopupAutoSize = False
      PopupControl = FAF
      PopupFormBorderStyle = pbsSysPanel
      PopupFormCaption = 'Fields'
      PopupMinWidth = 300
      PopupWidth = 350
      OnCloseUp = gcFieldsCloseUp
      OnPopup = gcFieldsPopup
    end
    object gcExpression: TdxDBGridColumn
      Width = 164
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Expression'
    end
    object gcSorting: TdxDBGridPickColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Sorting'
      Items.Strings = ['Ascending', 'Descending']
    end
    object gcUnique: TdxDBGridColumn
      Caption = 'U'
      DisableEditor = True
      HeaderAlignment = taCenter
      Width = 21
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Unique'
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
    object gcDescription: TdxDBGridColumn
      DisableEditor = True
      Width = 169
      BandIndex = 0
      RowIndex = 0
      HeaderMaxLineCount = 0
      FieldName = 'Description'
      DisableFilter = True
    end
  end
  object FAF: TFieldsAddFrame
    Left = 47
    Top = 59
    Width = 402
    TabOrder = 2
    Visible = False
    object tlAvailableFields: TdxTreeList
      OnKeyDown = FAFtlAvailableFieldsKeyDown
    end
    object tlIncludedFields: TdxTreeList
      Width = 189
      OnKeyDown = FAFtlAvailableFieldsKeyDown
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
      Action = actAddIndex
    end
    object TBItem1: TTBItem
      Action = actRemoveIndex
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
    Top = 0
    Width = 435
    Height = 3
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 4
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
    object mtFields: TStringField
      FieldName = 'Fields'
      Size = 1000
    end
    object mtSorting: TStringField
      FieldName = 'Sorting'
      OnChange = mtSortingChange
      Size = 10
    end
    object mtSortingID: TSmallintField
      FieldName = 'SortingID'
    end
    object mtUnique: TSmallintField
      FieldName = 'Unique'
    end
    object mtGenerate: TSmallintField
      FieldName = 'Generate'
    end
    object mtDescription: TMemoField
      FieldName = 'Description'
      OnGetText = mtDescriptionGetText
      BlobType = ftMemo
    end
    object mtExpression: TStringField
      FieldName = 'Expression'
      Size = 1000
    end
  end
  object DS: TDataSource
    DataSet = mt
    OnDataChange = DSDataChange
    Left = 40
    Top = 80
  end
  object CIndicesActions: TActionList
    Images = IBEMainForm.MenuImages
    Left = 328
    Top = 48
    object actAddIndex: TAction
      Caption = 'Add Index'
      Hint = 'Add Index'
      ImageIndex = 116
      OnExecute = actAddIndexExecute
    end
    object actRemoveIndex: TAction
      Caption = 'Remove Index'
      Hint = 'Remove Index'
      ImageIndex = 112
      OnExecute = actRemoveIndexExecute
    end
  end
end
