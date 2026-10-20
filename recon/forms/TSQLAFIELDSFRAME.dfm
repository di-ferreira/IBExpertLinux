object SQLAFieldsFrame: TSQLAFieldsFrame
  Left = 0
  Top = 0
  Width = 435
  Height = 268
  HelpContext = 10300
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
    Options = ['aoColumnSizing', 'aoColumnMoving', 'aoTabThrough', 'aoRowSelect', 'aoMultiSelect', 'aoDrawEndEllipsis', 'aoHideFocusRect', 'aoAutoSort', 'aoStoreToRegistry']
    OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragExpand', 'aoAutoSortRefresh']
    TreeLineColor = clGrayText
    ShowGrid = True
    ShowRoot = False
    GridLineColor = clSilver
    OnKeyDown = tlKeyDown
    OnCustomDrawCell = tlCustomDrawCell
    OnGetNodeDragText = tlGetNodeDragText
    OnCompare = tlCompare
    object tlcNumber: TdxTreeListColumn
      Alignment = taRightJustify
      Caption = '#'
      HeaderAlignment = taRightJustify
      Width = 24
      BandIndex = 0
      RowIndex = 0
    end
    object tlcKey: TdxTreeListColumn
      Caption = 'PK'
      HeaderAlignment = taCenter
      Width = 27
      BandIndex = 0
      RowIndex = 0
    end
    object tlcFK: TdxTreeListColumn
      Caption = 'FK'
      HeaderAlignment = taCenter
      Width = 27
      BandIndex = 0
      RowIndex = 0
    end
    object tlcName: TdxTreeListColumn
      Caption = 'Field'
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
    object tlcDomain: TdxTreeListColumn
      Caption = 'Domain'
      Width = 110
      BandIndex = 0
      RowIndex = 0
    end
    object tlcDescription: TdxTreeListColumn
      Caption = 'Description'
      BandIndex = 0
      RowIndex = 0
    end
    object tlcNotNull: TdxTreeListColumn
      Caption = 'NN'
      DisableCustomizing = True
      DisableEditor = True
      HeaderAlignment = taCenter
      Width = 30
      BandIndex = 0
      RowIndex = 0
    end
  end
end
