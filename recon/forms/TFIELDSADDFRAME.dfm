object FieldsAddFrame: TFieldsAddFrame
  Left = 0
  Top = 0
  Width = 396
  Height = 217
  HelpContext = 4800
  Constraints.MinHeight = 92
  Constraints.MinWidth = 396
  TabOrder = 0
  OnResize = FrameResize
  object Dock: TTBDock
    Left = 186
    Top = 0
    Width = 27
    Height = 217
    Position = dpLeft
    object TBToolbar2: TTBToolbar
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
        Action = aAddField
        Images = IBEMainForm.MenuImages
      end
      object bRemove: TTBItem
        Action = aRemoveField
      end
      object _Panel5: TTBControlItem
        Control = Panel5
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 23
        Height = 18
        BevelOuter = bvNone
        TabOrder = 0
      end
      object Panel5: TPanel
        Left = 0
        Top = 62
        Width = 23
        Height = 9
        BevelOuter = bvNone
        TabOrder = 1
      end
    end
  end
  object tlAvailableFields: TdxTreeList
    Left = 0
    Top = 0
    Width = 186
    Height = 217
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
    LookAndFeel = lfFlat
    Options = ['aoColumnSizing', 'aoColumnMoving', 'aoTabThrough', 'aoRowSelect', 'aoMultiSelect', 'aoDrawEndEllipsis', 'aoAutoWidth', 'aoHideFocusRect', 'aoAutoSort']
    OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSortRefresh']
    TreeLineColor = clGrayText
    ShowRoot = False
    GridLineColor = clSilver
    OnDblClick = tlAvailableFieldsDblClick
    OnDragDrop = tlAvailableFieldsDragDrop
    OnDragOver = tlAvailableFieldsDragOver
    OnKeyPress = tlAvailableFieldsKeyPress
    OnCustomDrawCell = tlAvailableFieldsCustomDrawCell
    object tlcAvailableField: TdxTreeListColumn
      Caption = 'Available fields'
      Width = 163
      BandIndex = 0
      RowIndex = 0
    end
  end
  object tlIncludedFields: TdxTreeList
    Left = 213
    Top = 0
    Width = 183
    Height = 217
    Bands = <
      item
      end
    >
    DefaultLayout = True
    HeaderPanelRowCount = 1
    Align = alClient
    DragMode = dmAutomatic
    TabOrder = 2
    HideSelection = False
    LookAndFeel = lfFlat
    Options = ['aoColumnSizing', 'aoColumnMoving', 'aoTabThrough', 'aoRowSelect', 'aoMultiSelect', 'aoDrawEndEllipsis', 'aoAutoWidth', 'aoHideFocusRect']
    OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSortRefresh']
    TreeLineColor = clGrayText
    ShowRoot = False
    GridLineColor = clSilver
    OnDblClick = tlIncludedFieldsDblClick
    OnDragDrop = tlIncludedFieldsDragDrop
    OnDragOver = tlIncludedFieldsDragOver
    OnKeyPress = tlIncludedFieldsKeyPress
    OnCustomDrawCell = tlAvailableFieldsCustomDrawCell
    object tlcIncludedField: TdxTreeListColumn
      Caption = 'Included fields'
      Width = 160
      BandIndex = 0
      RowIndex = 0
    end
  end
  object SelectFieldsActions: TActionList
    Images = IBEMainForm.MenuImages
    OnUpdate = SelectFieldsActionsUpdate
    Left = 32
    Top = 56
    object aAddField: TAction
      ImageIndex = 58
      OnExecute = aAddFieldExecute
    end
    object aRemoveField: TAction
      ImageIndex = 60
      OnExecute = aRemoveFieldExecute
    end
    object aFieldUp: TAction
      Caption = 'aFieldUp'
      ShortCut = 49190
      OnExecute = aFieldUpExecute
    end
    object aFieldDown: TAction
      Caption = 'aFieldDown'
      ShortCut = 49192
      OnExecute = aFieldDownExecute
    end
  end
end
