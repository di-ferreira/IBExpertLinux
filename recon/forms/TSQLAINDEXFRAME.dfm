object SQLAIndexFrame: TSQLAIndexFrame
  Left = 0
  Top = 0
  Width = 435
  Height = 268
  HelpContext = 12000
  Align = alClient
  TabOrder = 0
  object tl: TdxTreeList
    Tag = 5
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
    Options = ['aoColumnSizing', 'aoColumnMoving', 'aoTabThrough', 'aoRowSelect', 'aoMultiSelect', 'aoDrawEndEllipsis', 'aoAutoWidth', 'aoHideFocusRect', 'aoAutoSort', 'aoStoreToRegistry']
    OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoRowAutoHeight', 'aoRowSizing', 'aoAutoSortRefresh']
    TreeLineColor = clGrayText
    ShowGrid = True
    ShowRoot = False
    GridLineColor = clSilver
    OnCustomDrawCell = tlCustomDrawCell
    object tlcProperty: TdxTreeListColumn
      Caption = 'Property'
      DisableCustomizing = True
      DisableDragging = True
      DisableEditor = True
      Width = 128
      BandIndex = 0
      RowIndex = 0
    end
    object tlcValue: TdxTreeListColumn
      Alignment = taLeftJustify
      Caption = 'Value'
      DisableCustomizing = True
      DisableDragging = True
      DisableEditor = True
      ReadOnly = True
      Width = 356
      BandIndex = 0
      RowIndex = 0
    end
  end
end
