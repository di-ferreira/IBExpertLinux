object DBVPointerPagesFrame: TDBVPointerPagesFrame
  Left = 0
  Top = 0
  Width = 435
  Height = 265
  HelpContext = 15300
  Align = alClient
  TabOrder = 0
  object Splitter1: TSplitter
    Left = 315
    Top = 0
    Width = 4
    Height = 265
    Cursor = crHSplit
    Align = alRight
  end
  object VPanel1: TVPanel
    Left = 0
    Top = 0
    Width = 315
    Height = 265
    Cursor = crHandPoint
    Align = alClient
    BevelOuter = bvNone
    Caption = 'VPanel1'
    TabOrder = 1
    object Grid: TdxDBGrid
      Left = 0
      Top = 0
      Width = 315
      Height = 265
      Bands = <
        item
        end
      >
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'PageIndex'
      ShowGroupPanel = True
      SummaryGroups = []
      SummarySeparator = ', '
      Align = alClient
      TabOrder = 0
      DataSource = DS
      Filter.Criteria = {4 bytes}
      LookAndFeel = lfFlat
      OptionsBehavior = ['edgoAutoSort', 'edgoDragScroll', 'edgoEnterShowEditor', 'edgoImmediateEditor', 'edgoTabThrough', 'edgoVertThrough']
      OptionsDB = ['edgoCancelOnExit', 'edgoCanInsert', 'edgoCanNavigation', 'edgoConfirmDelete', 'edgoLoadAllRecords', 'edgoUseBookmarks']
      OptionsView = ['edgoBandHeaderWidth', 'edgoRowSelect', 'edgoUseBitmap']
      object gcPageIndex: TdxDBGridCalcColumn
        Width = 89
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PageIndex'
      end
      object gcRelationID: TdxDBGridCalcColumn
        Width = 77
        BandIndex = 0
        RowIndex = 0
        FieldName = 'RelationID'
      end
      object gcSequence: TdxDBGridCalcColumn
        Width = 74
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Sequence'
      end
      object gcNextPP: TdxDBGridCalcColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NextPP'
      end
      object gcActiveSlots: TdxDBGridCalcColumn
        Width = 73
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ActiveSlots'
      end
      object gcLowestSlot: TdxDBGridCalcColumn
        Width = 77
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LowestSlot'
      end
      object gcHighestSlot: TdxDBGridCalcColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'HighestSlot'
      end
    end
  end
  object Panel1: TPanel
    Left = 319
    Top = 0
    Width = 116
    Height = 265
    Align = alRight
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 0
    object tl: TdxTreeList
      Left = 0
      Top = 0
      Width = 116
      Height = 265
      Bands = <
        item
        end
      >
      DefaultLayout = True
      HeaderPanelRowCount = 1
      Align = alClient
      DragMode = dmAutomatic
      TabOrder = 0
      HideSelection = False
      LookAndFeel = lfFlat
      Options = ['aoTabThrough', 'aoRowSelect', 'aoMultiSelect', 'aoDrawEndEllipsis', 'aoAutoWidth', 'aoHideFocusRect']
      OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragExpand', 'aoAutoSortRefresh']
      TreeLineColor = clGrayText
      ShowGrid = True
      ShowRoot = False
      GridLineColor = clSilver
      object tlcPageIndex: TdxTreeListColumn
        Alignment = taRightJustify
        Caption = 'Data Pages'
        BandIndex = 0
        RowIndex = 0
      end
    end
  end
  object mt: TkbmMemTable
    AutoSort = False
    SortOptions = []
    PersistentSaveOptions = ['mtfSaveData', 'mtfSaveNonVisible']
    PersistentSaveFormat = mtsfBinary
    DoBinaryLocate = False
    Version = '1.36'
    Left = 360
    Top = 72
    object mtPageIndex: TIntegerField
      FieldName = 'PageIndex'
    end
    object mtRelationID: TIntegerField
      FieldName = 'RelationID'
    end
    object mtSequence: TIntegerField
      FieldName = 'Sequence'
    end
    object mtPP: TIntegerField
      FieldName = 'PP'
    end
    object mtNextPP: TIntegerField
      FieldName = 'NextPP'
    end
    object mtActiveSlots: TIntegerField
      FieldName = 'ActiveSlots'
    end
    object mtLowestSlot: TIntegerField
      FieldName = 'LowestSlot'
    end
    object mtHighestSlot: TIntegerField
      FieldName = 'HighestSlot'
    end
  end
  object DS: TDataSource
    DataSet = mt
    OnDataChange = DSDataChange
    Left = 392
    Top = 72
  end
end
