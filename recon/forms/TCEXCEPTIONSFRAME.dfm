object CExceptionsFrame: TCExceptionsFrame
  Left = 0
  Top = 0
  Width = 435
  Height = 268
  HelpContext = 17400
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
    OnChangeColumn = GridChangeColumn
    OnCustomDrawCell = GridCustomDrawCell
    OnEdited = GridEdited
    object gcName: TdxDBGridColumn
      Sorted = csUp
      Width = 169
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Name'
    end
    object gcText: TdxDBGridColumn
      Width = 283
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Text'
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
      Action = actNewException
    end
    object TBItem1: TTBItem
      Action = actRemoveException
    end
    object TBSeparatorItem1: TTBSeparatorItem
    end
    object TBItem3: TTBItem
      Action = actUnicode
    end
    object TBSeparatorItem2: TTBSeparatorItem
    end
    object TBControlItem1: TTBControlItem
      Control = lHint
    end
    object lHint: TLabel
      Left = 81
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
    object mtText: TStringField
      FieldName = 'Text'
      Size = 1023
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
  end
  object ActionList1: TActionList
    Images = IBEMainForm.MenuImages
    Left = 344
    Top = 64
    object actNewException: TAction
      Caption = 'New exception'
      Hint = 'New exception'
      ImageIndex = 115
      ShortCut = 45
      OnExecute = actNewExceptionExecute
      OnUpdate = actNewExceptionUpdate
    end
    object actRemoveException: TAction
      Caption = 'Remove exception'
      Hint = 'Remove exception'
      ImageIndex = 112
      ShortCut = 16430
      OnExecute = actRemoveExceptionExecute
      OnUpdate = actRemoveExceptionUpdate
    end
    object actUnicode: TAction
      Caption = 'actUnicode'
      Hint = 'Show/edit exception text as UTF8'
      ImageIndex = 253
      OnExecute = actUnicodeExecute
    end
  end
end
