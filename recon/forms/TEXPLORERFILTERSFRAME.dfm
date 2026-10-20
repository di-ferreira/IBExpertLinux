object ExplorerFiltersFrame: TExplorerFiltersFrame
  Left = 0
  Top = 0
  Width = 443
  Height = 270
  HelpContext = 14000
  Align = alClient
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  ParentFont = False
  TabOrder = 0
  object Splitter1: TdfsSplitter
    Left = 0
    Top = 212
    Width = 443
    Height = 4
    Cursor = crVSplit
    Align = alTop
    Maximized = False
    Minimized = False
    ButtonCursor = crDefault
  end
  object Panel1: TPanel
    Left = 0
    Top = 216
    Width = 443
    Height = 54
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 0
    object P2: TPanel
      Left = 0
      Top = 0
      Width = 443
      Height = 18
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = ' List'
      Color = clBtnShadow
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clCaptionText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = ['fsBold']
      ParentFont = False
      TabOrder = 0
    end
    object M: TdxMemo
      Left = 0
      Top = 18
      Width = 443
      Align = alClient
      TabOrder = 1
      OnChange = MChange
      Height = 36
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 443
    Height = 212
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Panel2'
    TabOrder = 1
    object TL: TdxTreeList
      Left = 0
      Top = 18
      Width = 443
      Height = 194
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
      Options = ['aoColumnSizing', 'aoColumnMoving', 'aoTabThrough', 'aoDrawEndEllipsis', 'aoAutoWidth', 'aoHideFocusRect']
      OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSortRefresh']
      TreeLineColor = clGrayText
      ShowButtons = False
      ShowHeader = False
      ShowRoot = False
      GridLineColor = clSilver
      OnClick = TLClick
      OnDblClick = TLDblClick
      OnKeyPress = TLKeyPress
      OnCustomDrawCell = TLCustomDrawCell
      OnChangeNode = TLChangeNode
      object tlcCheck: TdxTreeListColumn
        Caption = 'A'
        DisableCustomizing = True
        DisableDragging = True
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 31
        BandIndex = 0
        RowIndex = 0
      end
      object tlcFilter: TdxTreeListColumn
        Caption = 'Filter'
        Width = 562
        BandIndex = 0
        RowIndex = 0
      end
      object tlcFilterStrings: TdxTreeListColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
      end
    end
    object P1: TPanel
      Left = 0
      Top = 0
      Width = 443
      Height = 18
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = ' Don''t show object in explorer if'
      Color = clBtnShadow
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clCaptionText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = ['fsBold']
      ParentFont = False
      TabOrder = 1
    end
  end
end
