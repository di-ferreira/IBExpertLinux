object SelectDomainFrame: TSelectDomainFrame
  Left = 0
  Top = 0
  Width = 435
  Height = 268
  HelpContext = 12200
  Align = alClient
  TabOrder = 0
  object tl: TdxTreeList
    Left = 0
    Top = 0
    Width = 435
    Height = 268
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
    Options = ['aoColumnSizing', 'aoColumnMoving', 'aoTabThrough', 'aoMultiSelect', 'aoDrawEndEllipsis', 'aoHideFocusRect', 'aoAutoSort']
    OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSortRefresh', 'aoAutoSearch']
    TreeLineColor = clGrayText
    ShowGrid = True
    ShowRoot = False
    GridLineColor = clSilver
    OnCustomDrawCell = tlCustomDrawCell
    object tlcName: TdxTreeListColumn
      Caption = 'Name'
      DisableCustomizing = True
      DisableEditor = True
      ReadOnly = True
      Width = 129
      BandIndex = 0
      RowIndex = 0
    end
    object tlcType: TdxTreeListColumn
      Caption = 'Type'
      Width = 113
      BandIndex = 0
      RowIndex = 0
    end
    object tlcNotNull: TdxTreeListColumn
      Caption = 'Not Null'
      HeaderAlignment = taCenter
      Width = 52
      BandIndex = 0
      RowIndex = 0
    end
    object tlcCharset: TdxTreeListColumn
      Caption = 'Charset'
      Width = 60
      BandIndex = 0
      RowIndex = 0
    end
    object tlcCollate: TdxTreeListColumn
      Caption = 'Collation'
      Width = 60
      BandIndex = 0
      RowIndex = 0
    end
    object tlcDescription: TdxTreeListColumn
      Caption = 'Description'
      Width = 250
      BandIndex = 0
      RowIndex = 0
    end
    object tlcInfo: TdxTreeListColumn
      Visible = False
      BandIndex = 0
      RowIndex = 0
    end
    object tlcShortType: TdxTreeListColumn
      Visible = False
      BandIndex = 0
      RowIndex = 0
    end
  end
end
