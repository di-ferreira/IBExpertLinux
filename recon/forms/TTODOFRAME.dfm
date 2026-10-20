object TodoFrame: TTodoFrame
  Left = 0
  Top = 0
  Width = 580
  Height = 400
  Align = alClient
  TabOrder = 0
  object dfsSplitter1: TdfsSplitter
    Left = 0
    Top = 215
    Width = 580
    Height = 4
    Cursor = crVSplit
    Align = alBottom
    Maximized = False
    Minimized = False
    ButtonCursor = crDefault
  end
  object Panel1: TPanel
    Left = 0
    Top = 219
    Width = 580
    Height = 181
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 0
    object pDesc: TPanel
      Left = 0
      Top = 0
      Width = 580
      Height = 18
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = ' Item description'
      Color = clBtnShadow
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clCaptionText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = ['fsBold']
      ParentFont = False
      TabOrder = 0
    end
    object DescFm: TEditFrame
      Top = 18
      Width = 580
      Height = 163
      TabOrder = 1
      object EditM: TSQLMemo
        Width = 580
        Height = 145
        WantTabs = False
        OnExit = DescFmEditMExit
      end
      object pIncSearch: TPanel
        Top = 145
        Width = 580
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 580
    Height = 215
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel2'
    TabOrder = 1
    object GR: TdxDBGrid
      Left = 0
      Top = 0
      Width = 580
      Height = 215
      HelpContext = 194
      Bands = <
        item
        end
      >
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'ID'
      ShowGroupPanel = True
      SummaryGroups = []
      SummarySeparator = ', '
      Align = alClient
      TabOrder = 0
      OnDblClick = GRDblClick
      OnKeyPress = GRKeyPress
      OnMouseUp = GRMouseUp
      DataSource = DS
      Filter.Criteria = {4 bytes}
      LookAndFeel = lfFlat
      OptionsBehavior = ['edgoAutoSort', 'edgoDragScroll', 'edgoStoreToRegistry', 'edgoTabThrough', 'edgoVertThrough']
      OptionsDB = ['edgoCancelOnExit', 'edgoCanNavigation', 'edgoConfirmDelete', 'edgoLoadAllRecords', 'edgoUseBookmarks']
      OptionsView = ['edgoBandHeaderWidth', 'edgoDrawEndEllipsis', 'edgoUseBitmap']
      OnColumnSorting = GRColumnSorting
      OnCustomDrawCell = GRCustomDrawCell
      object gcState: TdxDBGridColumn
        Caption = 'Done'
        HeaderAlignment = taCenter
        Width = 47
        BandIndex = 0
        RowIndex = 0
        FieldName = 'State'
      end
      object gcCaption: TdxDBGridColumn
        Caption = 'Caption'
        Sorted = csUp
        Width = 313
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ShortDesc'
      end
      object gcPriority: TdxDBGridColumn
        Alignment = taCenter
        HeaderAlignment = taCenter
        Width = 71
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Priority'
      end
      object gcObject: TdxDBGridColumn
        Caption = 'Database object'
        Width = 270
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Object'
      end
      object gcCategory: TdxDBGridColumn
        Width = 173
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Category'
      end
      object gcResponsible: TdxDBGridColumn
        Width = 150
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Responsible'
      end
      object gcTimestamp: TdxDBGridColumn
        Width = 99
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Timestamp'
      end
      object gcDeadLine: TdxDBGridColumn
        Width = 83
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DeadLine'
      end
      object gcOwner: TdxDBGridColumn
        Width = 139
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Owner'
      end
    end
  end
  object DS: TDataSource
    DataSet = mt
    Left = 48
    Top = 152
  end
  object mt: TkbmMemTable
    AutoSort = False
    SortOptions = []
    PersistentSaveOptions = ['mtfSaveData', 'mtfSaveNonVisible']
    PersistentSaveFormat = mtsfBinary
    DoBinaryLocate = False
    Version = '1.36'
    OnCalcFields = mtCalcFields
    OnFilterRecord = mtFilterRecord
    Left = 80
    Top = 152
    object mtID: TIntegerField
      FieldName = 'ID'
    end
    object mtObjectName: TStringField
      FieldName = 'ObjectName'
      Size = 64
    end
    object mtObjectType: TIntegerField
      FieldName = 'ObjectType'
    end
    object mtPriority: TSmallintField
      FieldName = 'Priority'
    end
    object mtState: TSmallintField
      FieldName = 'State'
    end
    object mtShortDesc: TStringField
      FieldName = 'ShortDesc'
      Size = 255
    end
    object mtDescription: TBlobField
      FieldName = 'Description'
      BlobType = ftBlob
    end
    object mtResponsible: TStringField
      FieldName = 'Responsible'
      Size = 64
    end
    object mtTimestamp: TDateTimeField
      FieldName = 'Timestamp'
    end
    object mtDeadLine: TDateField
      FieldName = 'DeadLine'
    end
    object mtExtraData: TBlobField
      FieldName = 'ExtraData'
      BlobType = ftBlob
    end
    object mtCategory: TStringField
      FieldName = 'Category'
      Size = 64
    end
    object mtObject: TStringField
      FieldKind = fkCalculated
      FieldName = 'Object'
      Size = 110
      Calculated = True
    end
    object mtOwner: TStringField
      FieldName = 'Owner'
      Size = 64
    end
  end
  object Tr: TpFIBTransaction
    Active = False
    Timeout = 265871848
    TimeoutAction = TARollback
    Left = 424
    Top = 80
  end
  object Q: TpFIBQuery
    ParamCheck = True
    Transaction = Tr
    Left = 456
    Top = 80
  end
  object ActionList1: TActionList
    Images = IBEMainForm.MenuImages
    Left = 216
    Top = 96
    object actAdd: TAction
      Caption = 'Add to-do item...'
      ImageIndex = 0
      ShortCut = 45
      OnExecute = actAddExecute
      OnUpdate = actAddUpdate
    end
    object actDelete: TAction
      Caption = 'Delete to-do item'
      ImageIndex = 0
      ShortCut = 16430
      OnExecute = actDeleteExecute
      OnUpdate = actDeleteUpdate
    end
    object actEdit: TAction
      Caption = 'Edit to-do item...'
      ShortCut = 113
      OnExecute = actEditExecute
      OnUpdate = actEditUpdate
    end
    object actRefresh: TAction
      Caption = 'Refresh'
      ImageIndex = 220
      OnExecute = actRefreshExecute
    end
    object actHideDone: TAction
      Caption = 'Hide done to-do items'
      OnExecute = actHideDoneExecute
      OnUpdate = actHideDoneUpdate
    end
    object actDuplicate: TAction
      Caption = 'Duplicate to-do item'
      OnExecute = actDuplicateExecute
      OnUpdate = actDuplicateUpdate
    end
  end
end
