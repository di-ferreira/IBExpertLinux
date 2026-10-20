object TableColumnsGrantsFrame: TTableColumnsGrantsFrame
  Left = 0
  Top = 0
  Width = 435
  Height = 268
  HelpContext = 11800
  Align = alClient
  TabOrder = 0
  object pGrantsOn: TPanel
    Left = 0
    Top = 0
    Width = 435
    Height = 20
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' Grants on'
    Color = clBtnShadow
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clCaptionText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object tl: TdxTreeList
    Left = 0
    Top = 46
    Width = 435
    Height = 222
    Bands = <
      item
      end
    >
    DefaultLayout = True
    HeaderPanelRowCount = 1
    Align = alClient
    DragMode = dmAutomatic
    TabOrder = 1
    HideSelection = False
    LookAndFeel = lfFlat
    Options = ['aoColumnSizing', 'aoEditing', 'aoTabThrough', 'aoDrawEndEllipsis', 'aoHideFocusRect', 'aoAutoSort']
    OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSortRefresh']
    TreeLineColor = clGrayText
    ShowGrid = True
    ShowRoot = False
    GridLineColor = clSilver
    OnDblClick = tlDblClick
    OnKeyPress = tlKeyPress
    OnCustomDrawCell = tlCustomDrawCell
    OnChangeColumn = tlChangeColumn
    object tlcField: TdxTreeListColumn
      Caption = 'Field'
      DisableCustomizing = True
      DisableDragging = True
      DisableEditor = True
      VertAlignment = tlCenter
      Width = 119
      BandIndex = 0
      RowIndex = 0
    end
    object tlcType: TdxTreeListColumn
      Caption = 'Type'
      DisableCustomizing = True
      DisableDragging = True
      DisableEditor = True
      ReadOnly = True
      VertAlignment = tlCenter
      Width = 129
      BandIndex = 0
      RowIndex = 0
    end
    object tlcUpdate: TdxTreeListColumn
      Caption = 'Update'
      DisableCustomizing = True
      DisableDragging = True
      DisableEditor = True
      HeaderAlignment = taCenter
      Width = 55
      BandIndex = 0
      RowIndex = 0
    end
    object tlcReference: TdxTreeListColumn
      Caption = 'Reference'
      DisableCustomizing = True
      DisableDragging = True
      DisableEditor = True
      HeaderAlignment = taCenter
      Width = 67
      BandIndex = 0
      RowIndex = 0
    end
  end
  object TBDock1: TTBDock
    Left = 0
    Top = 20
    Width = 435
    Height = 26
    object TBToolbar1: TTBToolbar
      Left = 0
      Top = 0
      BorderStyle = bsNone
      Caption = 'TBToolbar1'
      DragHandleStyle = dhNone
      Images = IBEMainForm.MenuImages
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      object TBItem5: TTBItem
        Action = actGrantAll
      end
      object TBItem4: TTBItem
        Action = actGrantAllGO
      end
      object TBSeparatorItem1: TTBSeparatorItem
      end
      object TBItem3: TTBItem
        Action = actGrantToAll
      end
      object TBItem2: TTBItem
        Action = actGrantToAllGO
      end
      object TBSeparatorItem2: TTBSeparatorItem
      end
      object TBItem1: TTBItem
        Action = actRevokeAll
      end
      object TBItem6: TTBItem
        Action = actRevokeFromAll
      end
    end
  end
  object q: TFIBQuery
    ParamCheck = True
    Transaction = Tr
    Left = 129
    Top = 75
  end
  object Tr: TFIBTransaction
    Active = False
    Timeout = 257390644
    TimeoutAction = TARollback
    Left = 161
    Top = 75
  end
  object Actions: TActionList
    Images = IBEMainForm.MenuImages
    Left = 269
    Top = 102
    object actGrantToAll: TAction
      Caption = 'Grant on All Fields'
      Hint = 'Grant on All Fields'
      ImageIndex = 166
      OnExecute = actGrantToAllExecute
    end
    object actGrantToAllGO: TAction
      Caption = 'Grant on All Fields with GRANT OPTION'
      Hint = 'Grant on All Fields with GRANT OPTION'
      ImageIndex = 222
      OnExecute = actGrantToAllGOExecute
    end
    object actRevokeFromAll: TAction
      Caption = 'Revoke Privilege on All Fields'
      Hint = 'Revoke Privilege on All Fields'
      ImageIndex = 221
      OnExecute = actRevokeFromAllExecute
    end
    object actGrantAll: TAction
      Caption = 'Grant All'
      Hint = 'Grant All'
      ImageIndex = 165
      OnExecute = actGrantAllExecute
      OnUpdate = actGrantAllUpdate
    end
    object actGrantAllGO: TAction
      Caption = 'Grant All with GRANT OPTION'
      Hint = 'Grant All with GRANT OPTION'
      ImageIndex = 223
      OnExecute = actGrantAllGOExecute
      OnUpdate = actGrantAllGOUpdate
    end
    object actRevokeAll: TAction
      Caption = 'Revoke All'
      Hint = 'Revoke All'
      ImageIndex = 224
      OnExecute = actRevokeAllExecute
      OnUpdate = actRevokeAllUpdate
    end
  end
end
