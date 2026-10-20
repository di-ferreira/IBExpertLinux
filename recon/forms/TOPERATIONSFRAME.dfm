object OperationsFrame: TOperationsFrame
  Left = 0
  Top = 0
  Width = 435
  Height = 268
  HelpContext = 11200
  Align = alClient
  TabOrder = 0
  object Splitter1: TdfsSplitter
    Left = 0
    Top = 233
    Width = 435
    Height = 3
    Cursor = crVSplit
    Align = alTop
    ResizeStyle = rsUpdate
    Maximized = False
    Minimized = False
    ButtonCursor = crDefault
  end
  object OpTL: TdxTreeList
    Left = 0
    Top = 0
    Width = 435
    Height = 233
    Bands = <
      item
      end
    >
    DefaultLayout = True
    HeaderPanelRowCount = 1
    Align = alTop
    DragMode = dmAutomatic
    TabOrder = 0
    HideSelection = False
    LookAndFeel = lfFlat
    Options = ['aoColumnSizing', 'aoColumnMoving', 'aoTabThrough', 'aoRowSelect', 'aoDrawEndEllipsis', 'aoAutoSort']
    OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSortRefresh']
    TreeLineColor = clGrayText
    ShowGrid = True
    ShowRoot = False
    GridLineColor = clSilver
    OnDblClick = OpTLDblClick
    OnKeyPress = OpTLKeyPress
    OnCustomDrawCell = OpTLCustomDrawCell
    OnChangeNode = OpTLChangeNode
    object tlcOperation: TdxTreeListColumn
      Caption = 'Operation'
      DisableCustomizing = True
      DisableEditor = True
      ReadOnly = True
      Width = 61
      BandIndex = 0
      RowIndex = 0
    end
    object tlcTable: TdxTreeListColumn
      Caption = 'Table'
      Width = 105
      BandIndex = 0
      RowIndex = 0
    end
    object tlcStatement: TdxTreeListColumn
      Caption = 'Statement'
      Width = 411
      BandIndex = 0
      RowIndex = 0
    end
    object tlcPlan: TdxTreeListColumn
      Caption = 'Plan'
      Width = 304
      BandIndex = 0
      RowIndex = 0
    end
    object tlcInd: TdxTreeListColumn
      Visible = False
      Width = 98
      BandIndex = 0
      RowIndex = 0
    end
    object tlcStmtFull: TdxTreeListColumn
      Visible = False
      BandIndex = 0
      RowIndex = 0
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 236
    Width = 435
    Height = 32
    Align = alClient
    BevelOuter = bvNone
    Caption = 'StatementP'
    TabOrder = 1
    object Panel4: TPanel
      Left = 0
      Top = 0
      Width = 435
      Height = 18
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = ' Statement'
      Color = clBtnShadow
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clCaptionText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object StmtFm: TEditFrame
      Tag = -1
      Top = 18
      Height = 14
      TabOrder = 1
      object EditM: TSQLMemo
        Height = 2
      end
      object pIncSearch: TPanel
        Top = -4
      end
    end
  end
end
