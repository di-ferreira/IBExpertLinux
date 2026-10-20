object CGeneratorsFrame: TCGeneratorsFrame
  Left = 0
  Top = 0
  Width = 435
  Height = 268
  HelpContext = 17500
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
    OnExit = GridExit
    OnKeyDown = GridKeyDown
    OnKeyPress = GridKeyPress
    DataSource = DS
    Filter.Criteria = {4 bytes}
    LookAndFeel = lfFlat
    OptionsDB = ['edgoCanAppend', 'edgoCancelOnExit', 'edgoCanInsert', 'edgoCanNavigation', 'edgoConfirmDelete', 'edgoLoadAllRecords', 'edgoUseBookmarks']
    OptionsView = ['edgoBandHeaderWidth', 'edgoIndicator', 'edgoUseBitmap']
    OnCustomDrawCell = GridCustomDrawCell
    OnEdited = GridEdited
    object gcName: TdxDBGridColumn
      Sorted = csUp
      Width = 195
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Name'
    end
    object gcValue: TdxDBGridColumn
      Alignment = taRightJustify
      Width = 106
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Value'
    end
    object gcDesc: TdxDBGridColumn
      Caption = 'Description'
      DisableEditor = True
      Width = 223
      BandIndex = 0
      RowIndex = 0
      HeaderMaxLineCount = 0
      FieldName = 'Desc'
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
      Action = actNewGenerator
    end
    object TBItem1: TTBItem
      Action = actRemoveGenerator
    end
  end
  object DS: TDataSource
    DataSet = mt
    OnDataChange = DSDataChange
    Left = 304
    Top = 176
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
    Left = 336
    Top = 176
    object mtName: TStringField
      FieldName = 'Name'
      OnValidate = mtNameValidate
      Size = 31
    end
    object mtDesc: TMemoField
      FieldName = 'Desc'
      OnGetText = mtDescGetText
      BlobType = ftMemo
    end
    object mtIsNew: TSmallintField
      FieldName = 'IsNew'
    end
    object mtPointer: TIntegerField
      FieldName = 'Pointer'
    end
    object mtKey: TIntegerField
      FieldName = 'Key'
    end
    object mtValue: TLargeintField
      FieldName = 'Value'
    end
  end
  object ActionList1: TActionList
    Images = IBEMainForm.MenuImages
    OnUpdate = ActionList1Update
    Left = 344
    Top = 64
    object actNewGenerator: TAction
      Caption = 'New generator'
      Hint = 'New generator'
      ImageIndex = 115
      ShortCut = 45
      OnExecute = actNewGeneratorExecute
    end
    object actRemoveGenerator: TAction
      Caption = 'Remove generator'
      Hint = 'Remove generator'
      ImageIndex = 112
      ShortCut = 16430
      OnExecute = actRemoveGeneratorExecute
    end
  end
end
