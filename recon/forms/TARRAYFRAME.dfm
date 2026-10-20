object ArrayFrame: TArrayFrame
  Left = 0
  Top = 0
  Width = 443
  Height = 270
  HelpContext = 13000
  Align = alClient
  TabOrder = 0
  object Grid: TdxDBGrid
    Left = 0
    Top = 0
    Width = 193
    Height = 270
    Bands = <
      item
      end
    >
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'Key'
    SummaryGroups = []
    SummarySeparator = ', '
    Align = alLeft
    TabOrder = 0
    DataSource = DS
    Filter.Criteria = {4 bytes}
    LookAndFeel = lfFlat
    OptionsBehavior = ['edgoDragScroll', 'edgoEditing', 'edgoEnterShowEditor', 'edgoImmediateEditor', 'edgoTabThrough', 'edgoVertThrough']
    OptionsDB = ['edgoCanAppend', 'edgoCancelOnExit', 'edgoCanDelete', 'edgoCanInsert', 'edgoCanNavigation', 'edgoConfirmDelete', 'edgoUseBookmarks']
    OptionsView = ['edgoAutoWidth', 'edgoBandHeaderWidth', 'edgoDrawEndEllipsis', 'edgoUseBitmap']
    object gcLB: TdxDBGridSpinColumn
      Caption = 'Lower bound'
      BandIndex = 0
      RowIndex = 0
      FieldName = 'LB'
    end
    object gcUB: TdxDBGridSpinColumn
      Caption = 'Upper bound'
      BandIndex = 0
      RowIndex = 0
      FieldName = 'UB'
    end
  end
  object mt: TkbmMemTable
    Active = True
    AutoSort = False
    SortOptions = []
    PersistentSaveOptions = ['mtfSaveData', 'mtfSaveNonVisible']
    PersistentSaveFormat = mtsfBinary
    DoBinaryLocate = False
    Version = '1.36'
    OnNewRecord = mtNewRecord
    Left = 280
    Top = 16
    object mtLB: TIntegerField
      FieldName = 'LB'
    end
    object mtUB: TIntegerField
      FieldName = 'UB'
    end
  end
  object DS: TDataSource
    DataSet = mt
    Left = 280
    Top = 48
  end
end
