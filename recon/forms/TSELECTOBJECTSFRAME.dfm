object SelectObjectsFrame: TSelectObjectsFrame
  Left = 0
  Top = 0
  Width = 500
  Height = 324
  HelpContext = 5500
  AutoScroll = False
  TabOrder = 0
  object pButtons: TPanel
    Left = 144
    Top = 0
    Width = 37
    Height = 324
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 0
    object TBDock1: TTBDock
      Left = 5
      Top = 0
      Width = 27
      Height = 324
      Position = dpLeft
      object TBToolbar1: TTBToolbar
        Left = 0
        Top = 0
        BorderStyle = bsNone
        Caption = 'TBToolbar1'
        DockMode = dmCannotFloat
        DockPos = 0
        DragHandleStyle = dhNone
        Images = IBEMainForm.MenuImages
        TabOrder = 0
        object _Panel1: TTBControlItem
          Control = Panel1
        end
        object bSelect: TTBItem
          ImageIndex = 58
          Images = IBEMainForm.MenuImages
          OnClick = bSelectClick
        end
        object bSelectAll: TTBItem
          ImageIndex = 59
          Images = IBEMainForm.MenuImages
          OnClick = bSelectAllClick
        end
        object TBSeparatorItem2: TTBSeparatorItem
        end
        object TBSeparatorItem1: TTBSeparatorItem
        end
        object bRemove: TTBItem
          ImageIndex = 60
          OnClick = bRemoveClick
        end
        object bRemoveAll: TTBItem
          ImageIndex = 61
          OnClick = bRemoveAllClick
        end
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 23
          Height = 17
          BevelOuter = bvNone
          TabOrder = 0
        end
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 5
      Height = 324
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 1
    end
  end
  object tlAvailable: TdxTreeList
    Left = 0
    Top = 0
    Width = 144
    Height = 324
    Bands = <
      item
      end
    >
    DefaultLayout = True
    HeaderPanelRowCount = 1
    Align = alLeft
    DragMode = dmAutomatic
    TabOrder = 1
    HideSelection = False
    Images = IBEMainForm.ImageList
    LookAndFeel = lfFlat
    Options = ['aoColumnSizing', 'aoColumnMoving', 'aoTabThrough', 'aoRowSelect', 'aoMultiSelect', 'aoDrawEndEllipsis', 'aoAutoWidth', 'aoHideFocusRect', 'aoAutoSort']
    OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSortRefresh', 'aoAutoSearch']
    TreeLineColor = clGrayText
    ShowGrid = True
    ShowRoot = False
    GridLineColor = clSilver
    OnDblClick = tlAvailableDblClick
    OnDragDrop = tlAvailableDragDrop
    OnDragOver = tlAvailableDragOver
    OnEnter = tlAvailableEnter
    OnKeyPress = tlAvailableKeyPress
    OnChangeNode = tlAvailableChangeNode
    object tlcAvailable: TdxTreeListColumn
      Sorted = csUp
      BandIndex = 0
      RowIndex = 0
    end
  end
  object tlSelected: TdxTreeList
    Left = 356
    Top = 0
    Width = 144
    Height = 324
    Bands = <
      item
      end
    >
    DefaultLayout = True
    HeaderPanelRowCount = 1
    Align = alRight
    DragMode = dmAutomatic
    TabOrder = 2
    HideSelection = False
    Images = IBEMainForm.ImageList
    LookAndFeel = lfFlat
    Options = ['aoColumnSizing', 'aoColumnMoving', 'aoTabThrough', 'aoRowSelect', 'aoMultiSelect', 'aoDrawEndEllipsis', 'aoAutoWidth']
    OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSortRefresh', 'aoAutoSearch']
    TreeLineColor = clGrayText
    ShowGrid = True
    ShowRoot = False
    GridLineColor = clSilver
    OnDblClick = tlSelectedDblClick
    OnDragDrop = tlSelectedDragDrop
    OnDragOver = tlSelectedDragOver
    OnEnter = tlSelectedEnter
    OnKeyPress = tlSelectedKeyPress
    OnChangeNode = tlAvailableChangeNode
    object tlcSelected: TdxTreeListColumn
      BandIndex = 0
      RowIndex = 0
    end
  end
end
