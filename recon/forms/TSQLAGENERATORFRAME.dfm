object SQLAGeneratorFrame: TSQLAGeneratorFrame
  Left = 0
  Top = 0
  Width = 435
  Height = 268
  HelpContext = 11700
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
    Options = ['aoColumnSizing', 'aoColumnMoving', 'aoTabThrough', 'aoRowSelect', 'aoMultiSelect', 'aoDrawEndEllipsis', 'aoAutoWidth', 'aoHideFocusRect', 'aoAutoSort', 'aoStoreToRegistry']
    OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSortRefresh']
    TreeLineColor = clGrayText
    ShowGrid = True
    ShowRoot = False
    GridLineColor = clSilver
    OnCustomDrawCell = tlCustomDrawCell
    object tlcProperty: TdxTreeListColumn
      Caption = 'Property'
      Width = 128
      BandIndex = 0
      RowIndex = 0
    end
    object tlcValue: TdxTreeListSpinColumn
      Alignment = taLeftJustify
      Caption = 'Value'
      DisableCustomizing = True
      DisableEditor = True
      ReadOnly = True
      Width = 356
      BandIndex = 0
      RowIndex = 0
    end
  end
end
