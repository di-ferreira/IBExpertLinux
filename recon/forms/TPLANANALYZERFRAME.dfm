object PlanAnalyzerFrame: TPlanAnalyzerFrame
  Left = 0
  Top = 0
  Width = 435
  Height = 268
  HelpContext = 12600
  Align = alClient
  TabOrder = 0
  object Splitter1: TdfsSplitter
    Left = 0
    Top = 137
    Width = 435
    Height = 4
    Cursor = crVSplit
    Align = alTop
    Color = clBtnShadow
    ParentColor = False
    ResizeStyle = rsUpdate
    Maximized = False
    Minimized = False
    ButtonCursor = crDefault
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 435
    Height = 137
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 0
    object EditFm: TEditFrame
      Height = 137
      object EditM: TSQLMemo
        Height = 119
      end
      object pIncSearch: TPanel
        Top = 119
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 141
    Width = 435
    Height = 127
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel2'
    TabOrder = 1
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 435
      Height = 127
      Align = alClient
      BevelOuter = bvNone
      Caption = 'Panel3'
      TabOrder = 0
      object tl: TdxTreeList
        Left = 0
        Top = 25
        Width = 435
        Height = 102
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
        Options = ['aoColumnSizing', 'aoTabThrough', 'aoRowSelect', 'aoMultiSelect', 'aoDrawEndEllipsis']
        OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSearch']
        TreeLineColor = clGrayText
        GridLineColor = clSilver
        OnCustomDrawCell = tlCustomDrawCell
        object tlColumn1: TdxTreeListColumn
          Width = 342
          BandIndex = 0
          RowIndex = 0
        end
        object tlcTable: TdxTreeListColumn
          Caption = 'Table'
          Width = 145
          BandIndex = 0
          RowIndex = 0
        end
        object tlcIndexFields: TdxTreeListColumn
          Caption = 'Index fields'
          Width = 173
          BandIndex = 0
          RowIndex = 0
        end
        object tlcStatistics: TdxTreeListColumn
          Caption = 'Statistics'
          BandIndex = 0
          RowIndex = 0
        end
        object tlcPKFK: TdxTreeListColumn
          Alignment = taCenter
          Caption = 'PK/FK'
          DisableEditor = True
          HeaderAlignment = taCenter
          Width = 52
          BandIndex = 0
          RowIndex = 0
        end
      end
      object TBDock1: TTBDock
        Left = 0
        Top = 0
        Width = 435
        Height = 25
        object TBToolbar1: TTBToolbar
          Left = 0
          Top = 0
          BorderStyle = bsNone
          Caption = 'TBToolbar1'
          DragHandleStyle = dhNone
          TabOrder = 0
          object tbbRecompute: TTBItem
            Action = actRecomputeIndices
          end
          object TBSeparatorItem1: TTBSeparatorItem
          end
          object TBItem2: TTBItem
            Caption = 'Get Statistics'
            Visible = False
            OnClick = TBItem2Click
          end
        end
      end
    end
  end
  object Q: TpFIBQuery
    ParamCheck = True
    Transaction = TR
    Left = 56
    Top = 229
  end
  object TR: TpFIBTransaction
    Active = False
    Timeout = 256090692
    TimeoutAction = TARollback
    Left = 88
    Top = 229
  end
  object ActionList1: TActionList
    Left = 472
    Top = 189
    object actRecomputeIndices: TAction
      Caption = 'Recompute selectivity'
      Enabled = False
      OnExecute = actRecomputeIndicesExecute
    end
  end
  object SS: TpFIBStatisticalService
    ClientLibName = 'gds32.dll'
    LoginPrompt = False
    Options = []
    OnTextNotify = SSTextNotify
    Left = 184
    Top = 197
  end
end
