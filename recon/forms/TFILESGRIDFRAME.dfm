object FilesGridFrame: TFilesGridFrame
  Left = 0
  Top = 0
  Width = 443
  Height = 277
  HelpContext = 8200
  Align = alClient
  TabOrder = 0
  object Bevel1: TBevel
    Left = 0
    Top = 3
    Width = 443
    Height = 5
    Align = alTop
    Shape = bsTopLine
  end
  object Grid: TdxDBGrid
    Left = 0
    Top = 33
    Width = 443
    Height = 244
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
    DataSource = DS
    Filter.Criteria = {4 bytes}
    LookAndFeel = lfFlat
    OptionsBehavior = ['edgoDragScroll', 'edgoEditing', 'edgoEnterShowEditor', 'edgoImmediateEditor', 'edgoTabThrough', 'edgoVertThrough']
    OptionsCustomize = ['edgoBandMoving', 'edgoBandSizing', 'edgoColumnSizing']
    OptionsDB = ['edgoCanAppend', 'edgoCancelOnExit', 'edgoCanDelete', 'edgoCanInsert', 'edgoCanNavigation', 'edgoConfirmDelete', 'edgoLoadAllRecords', 'edgoUseBookmarks']
    OptionsView = ['edgoAutoWidth', 'edgoBandHeaderWidth', 'edgoDrawEndEllipsis', 'edgoIndicator', 'edgoRowAutoHeight', 'edgoShowButtonAlways', 'edgoUseBitmap']
    object gcFile: TdxDBGridButtonColumn
      Caption = 'File Name'
      BandIndex = 0
      RowIndex = 0
      FieldName = 'FileName'
      Buttons = <
        item
          Default = True
        end
      >
      OnButtonClick = gcFileButtonClick
    end
    object gcSize: TdxDBGridSpinColumn
      Caption = 'File Size'
      BandIndex = 0
      RowIndex = 0
      FieldName = 'FileSize'
    end
    object gcUnits: TdxDBGridPickColumn
      Visible = False
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Units'
      DropDownListStyle = True
      Items.Strings = ['Byte', 'KB', 'MB']
    end
  end
  object Toolbar: TTBToolbar
    Left = 0
    Top = 8
    Width = 443
    Height = 22
    Align = alTop
    Caption = 'Toolbar'
    Images = IBEMainForm.MenuImages
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    object TBItem5: TTBItem
      Action = actAppendFile
    end
    object TBItem4: TTBItem
      Action = actInsertFile
    end
    object TBItem1: TTBItem
      Action = actRemoveFile
    end
    object TBSeparatorItem1: TTBSeparatorItem
    end
    object TBItem3: TTBItem
      Action = actMoveFileDown
    end
    object TBItem2: TTBItem
      Action = actMoveFileUp
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 33
    Width = 443
    Height = 0
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 443
    Height = 3
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
  end
  object Panel3: TPanel
    Left = 0
    Top = 30
    Width = 443
    Height = 3
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 4
  end
  object opd: TOpenDialog
    DefaultExt = 'fbk'
    Filter = 'Firebird/InterBase Backup (*.fbk; *.gbk)|*.fbk;*.gbk|Firebird Backup (*.fbk)|*.fbk|InterBase Backup (*.gbk)|*.gbk|All files (*.*)|*.*'
    Options = ['ofOverwritePrompt', 'ofHideReadOnly', 'ofPathMustExist', 'ofEnableSizing']
    Left = 284
    Top = 114
  end
  object DS: TDataSource
    DataSet = mtFiles
    Left = 324
    Top = 114
  end
  object mtFiles: TkbmMemTable
    Active = True
    AutoSort = False
    SortOptions = []
    PersistentSaveOptions = ['mtfSaveData', 'mtfSaveNonVisible']
    PersistentSaveFormat = mtsfBinary
    DoBinaryLocate = False
    Version = '1.36'
    BeforePost = mtFilesBeforePost
    AfterPost = mtFilesAfterPost
    OnNewRecord = mtFilesNewRecord
    Left = 364
    Top = 114
    object mtFilesFileName: TStringField
      DisplayWidth = 60
      FieldName = 'FileName'
      Required = True
      Size = 1000
    end
    object mtFilesFileSize: TIntegerField
      DisplayWidth = 15
      FieldName = 'FileSize'
      Required = True
    end
    object mtFilesKey: TIntegerField
      FieldName = 'Key'
    end
    object mtFilesUnits: TStringField
      FieldName = 'Units'
      Size = 10
    end
  end
  object FilesGridActions: TActionList
    Images = IBEMainForm.MenuImages
    OnUpdate = FilesGridActionsUpdate
    Left = 352
    Top = 64
    object actRemoveFile: TAction
      Caption = 'Remove file'
      Hint = 'Remove file'
      ImageIndex = 112
      ShortCut = 8238
      OnExecute = actRemoveFileExecute
    end
    object actMoveFileDown: TAction
      Caption = 'Move file down'
      Hint = 'Move file down'
      ImageIndex = 113
      ShortCut = 49192
      OnExecute = actMoveFileDownExecute
    end
    object actMoveFileUp: TAction
      Caption = 'Move file up'
      Hint = 'Move file up'
      ImageIndex = 114
      ShortCut = 49190
      OnExecute = actMoveFileUpExecute
    end
    object actInsertFile: TAction
      Caption = 'Insert file'
      Hint = 'Insert file'
      ImageIndex = 115
      ShortCut = 45
      OnExecute = actInsertFileExecute
    end
    object actAppendFile: TAction
      Caption = 'Append file'
      Hint = 'Append file'
      ImageIndex = 116
      OnExecute = actAppendFileExecute
    end
  end
end
