object SQLAChildsFrame: TSQLAChildsFrame
  Left = 0
  Top = 0
  Width = 435
  Height = 268
  HelpContext = 10500
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
    Images = IBEMainForm.ImageList
    LookAndFeel = lfFlat
    Options = ['aoColumnSizing', 'aoColumnMoving', 'aoTabThrough', 'aoRowSelect', 'aoMultiSelect', 'aoDrawEndEllipsis', 'aoAutoWidth', 'aoHideFocusRect', 'aoAutoSort', 'aoStoreToRegistry']
    OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSortRefresh']
    TreeLineColor = clGrayText
    ShowGrid = True
    ShowRoot = False
    GridLineColor = clSilver
    OnDblClick = tlDblClick
    OnKeyPress = tlKeyPress
    OnCustomDrawCell = tlCustomDrawCell
    object tlcObjects: TdxTreeListColumn
      Caption = 'Objects'
      Width = 173
      BandIndex = 0
      RowIndex = 0
    end
    object tlcOwner: TdxTreeListColumn
      Caption = 'Owner'
      Visible = False
      BandIndex = 0
      RowIndex = 0
    end
    object tlcDesc: TdxTreeListColumn
      Caption = 'Description'
      Width = 290
      BandIndex = 0
      RowIndex = 0
    end
  end
end
