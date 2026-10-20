object CChecksFrame: TCChecksFrame
  Left = 0
  Top = 0
  Width = 435
  Height = 268
  HelpContext = 4200
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
    object dbmSource: TdxMemo
      Left = 0
      Top = 18
      Width = 435
      Align = alClient
      TabOrder = 0
      OnExit = dbmSourceExit
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
      Caption = ' Check expression'
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
    OptionsDB = ['edgoCanAppend', 'edgoCancelOnExit', 'edgoCanDelete', 'edgoCanInsert', 'edgoCanNavigation', 'edgoConfirmDelete', 'edgoUseBookmarks']
    OptionsView = ['edgoAutoWidth', 'edgoBandHeaderWidth', 'edgoDrawEndEllipsis', 'edgoIndicator', 'edgoUseBitmap']
    OnChangeColumn = GridChangeColumn
    OnCustomDrawCell = GridCustomDrawCell
    OnEdited = GridEdited
    OnEditing = GridEditing
    object gcName: TdxDBGridColumn
      Width = 170
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Name'
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
    object gcSource: TdxDBGridColumn
      Caption = 'Expression'
      DisableEditor = True
      Width = 447
      BandIndex = 0
      RowIndex = 0
      HeaderMaxLineCount = 0
      FieldName = 'Source'
      DisableFilter = True
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 25
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
      Action = actAddCheck
    end
    object TBItem1: TTBItem
      Action = actRemoveCheck
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
  object mt: TkbmMemTable
    AutoSort = False
    SortOptions = []
    PersistentSaveOptions = ['mtfSaveData', 'mtfSaveNonVisible']
    PersistentSaveFormat = mtsfBinary
    DoBinaryLocate = False
    Version = '1.36'
    AfterInsert = mtAfterPost
    AfterPost = mtAfterPost
    AfterDelete = mtAfterPost
    OnNewRecord = mtNewRecord
    Left = 8
    Top = 80
    object mtName: TStringField
      FieldName = 'Name'
      Size = 31
    end
    object mtSource: TMemoField
      FieldName = 'Source'
      OnGetText = mtSourceGetText
      BlobType = ftMemo
    end
    object mtKey: TIntegerField
      FieldName = 'Key'
    end
    object mtGenerate: TSmallintField
      FieldName = 'Generate'
    end
  end
  object DS: TDataSource
    DataSet = mt
    OnDataChange = DSDataChange
    Left = 40
    Top = 80
  end
  object CChecksActions: TActionList
    Images = IBEMainForm.MenuImages
    Left = 328
    Top = 48
    object actAddCheck: TAction
      Caption = 'Add Check'
      Hint = 'Add Check'
      ImageIndex = 116
      OnExecute = actAddCheckExecute
    end
    object actRemoveCheck: TAction
      Caption = 'Remove Check'
      Hint = 'Remove Check'
      ImageIndex = 112
      OnExecute = actRemoveCheckExecute
    end
  end
end
