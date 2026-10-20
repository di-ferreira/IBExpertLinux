object TriggersFrame: TTriggersFrame
  Left = 0
  Top = 0
  Width = 586
  Height = 462
  HelpContext = 5800
  Align = alClient
  Color = clBtnFace
  ParentColor = False
  TabOrder = 0
  object Splitter1: TdfsSplitter
    Left = 0
    Top = 208
    Width = 586
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    ResizeStyle = rsUpdate
    Maximized = False
    Minimized = False
    ButtonCursor = crDefault
  end
  object TriggerDefPanel: TPanel
    Left = 0
    Top = 211
    Width = 586
    Height = 251
    Align = alBottom
    BevelOuter = bvNone
    Color = clWindow
    TabOrder = 0
    object Panel4: TPanel
      Left = 0
      Top = 0
      Width = 586
      Height = 18
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = ' Trigger Definition'
      Color = clBtnShadow
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clCaptionText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object TriggersTL: TdxTreeList
    Left = 0
    Top = 0
    Width = 586
    Height = 208
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
    Images = IBEMainForm.ImageList
    LookAndFeel = lfFlat
    Options = ['aoColumnSizing', 'aoTabThrough', 'aoRowSelect', 'aoMultiSelect', 'aoDrawEndEllipsis', 'aoAutoSort', 'aoStoreToRegistry']
    OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSearch']
    TreeLineColor = clGrayText
    GridLineColor = clSilver
    OnDblClick = TriggersTLDblClick
    OnEnter = TriggersTLEnter
    OnKeyDown = TriggersTLKeyDown
    OnKeyUp = TriggersTLKeyUp
    OnMouseUp = TriggersTLMouseUp
    OnCustomDrawCell = TriggersTLCustomDrawCell
    OnChangedColumnsWidth = TriggersTLChangedColumnsWidth
    OnColumnMoved = TriggersTLColumnMoved
    OnChangeNode = TriggersTLChangeNode
    OnCompare = TriggersTLCompare
    Data = {347 bytes}
    object tlcTrigger: TdxTreeListColumn
      Caption = 'Triggers'
      DisableCustomizing = True
      DisableDragging = True
      DisableEditor = True
      MinWidth = 100
      ReadOnly = True
      VertAlignment = tlCenter
      Width = 158
      BandIndex = 0
      RowIndex = 0
    end
    object tlcActive: TdxTreeListColumn
      Caption = 'Active'
      HeaderAlignment = taCenter
      Width = 55
      BandIndex = 0
      RowIndex = 0
    end
    object tlcPosition: TdxTreeListColumn
      Alignment = taRightJustify
      Caption = 'Position'
      HeaderAlignment = taCenter
      Width = 57
      BandIndex = 0
      RowIndex = 0
    end
    object tlcDesc: TdxTreeListColumn
      Caption = 'Description'
      Width = 300
      BandIndex = 0
      RowIndex = 0
    end
  end
  object TriggerTimer: TTimer
    Enabled = False
    Interval = 600
    OnTimer = TriggerTimerTimer
    Left = 384
    Top = 120
  end
  object pmTriggers: TPopupMenu
    OnPopup = pmTriggersPopup
    Left = 136
    Top = 48
    object miNew: TMenuItem
      Caption = 'New Trigger...'
      OnClick = miNewClick
    end
    object miEdit: TMenuItem
      Caption = 'Edit Trigger...'
      OnClick = miEditClick
    end
    object miDrop: TMenuItem
      Caption = 'Drop Trigger...'
      OnClick = miDropClick
    end
    object miSep: TMenuItem
      Caption = '-'
    end
    object miActivity: TMenuItem
      Caption = 'Activity'
      OnClick = miActivityClick
    end
    object miSetInactive: TMenuItem
      Caption = 'Make triggers inactive'
      OnClick = miSetInactiveClick
    end
    object miSetActive: TMenuItem
      Caption = 'Make triggers active'
      OnClick = miSetActiveClick
    end
  end
end
