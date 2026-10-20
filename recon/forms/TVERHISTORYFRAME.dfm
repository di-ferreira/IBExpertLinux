object VerHistoryFrame: TVerHistoryFrame
  Left = 0
  Top = 0
  Width = 435
  Height = 268
  HelpContext = 9700
  Align = alClient
  Color = clBtnFace
  ParentColor = False
  TabOrder = 0
  object Splitter1: TdfsSplitter
    Left = 0
    Top = 161
    Width = 435
    Height = 3
    Cursor = crVSplit
    Align = alTop
    ResizeStyle = rsUpdate
    Maximized = False
    Minimized = False
    ButtonCursor = crDefault
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 435
    Height = 161
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Splitter2: TdfsSplitter
      Left = 332
      Top = 0
      Width = 3
      Height = 161
      Cursor = crHSplit
      Align = alLeft
      ResizeStyle = rsUpdate
      Maximized = False
      Minimized = False
      ButtonCursor = crDefault
    end
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 332
      Height = 161
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'Panel3'
      TabOrder = 0
      object TL: TdxTreeList
        Left = 0
        Top = 18
        Width = 332
        Height = 143
        Bands = <
          item
          end
        >
        DefaultLayout = True
        HeaderPanelRowCount = 1
        Align = alClient
        DragMode = dmAutomatic
        PopupMenu = Menu
        TabOrder = 1
        HideSelection = False
        LookAndFeel = lfFlat
        Options = ['aoColumnSizing', 'aoColumnMoving', 'aoTabThrough', 'aoRowSelect', 'aoMultiSelect', 'aoDrawEndEllipsis', 'aoAutoWidth', 'aoHideFocusRect', 'aoAutoSort']
        OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSortRefresh']
        TreeLineColor = clGrayText
        ShowGrid = True
        ShowRoot = False
        GridLineColor = clSilver
        OnChangeNode = TLChangeNode
        OnCompare = TLCompare
        object tlcNum: TdxTreeListColumn
          Alignment = taRightJustify
          Caption = '¹'
          Width = 32
          BandIndex = 0
          RowIndex = 0
        end
        object tlcDate: TdxTreeListColumn
          Caption = 'Date/Time'
          Width = 149
          BandIndex = 0
          RowIndex = 0
        end
        object tlcUser: TdxTreeListColumn
          Caption = 'User'
          Width = 149
          BandIndex = 0
          RowIndex = 0
        end
      end
      object pVerInfo: TPanel
        Left = 0
        Top = 0
        Width = 332
        Height = 18
        Align = alTop
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Caption = ' Version Info'
        Color = clBtnShadow
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clCaptionText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = ['fsBold']
        ParentFont = False
        TabOrder = 0
      end
    end
    object Panel4: TPanel
      Left = 335
      Top = 0
      Width = 100
      Height = 161
      Align = alClient
      BevelOuter = bvNone
      Caption = 'Panel4'
      TabOrder = 1
      object pDesc: TPanel
        Left = 0
        Top = 0
        Width = 100
        Height = 18
        Align = alTop
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Caption = ' Description'
        Color = clBtnShadow
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clCaptionText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = ['fsBold']
        ParentFont = False
        TabOrder = 0
      end
      object M: TMemo
        Left = 0
        Top = 18
        Width = 100
        Height = 143
        Align = alClient
        TabOrder = 1
        OnChange = MChange
        OnExit = MExit
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 164
    Width = 435
    Height = 104
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object EditFm: TEditFrame
      Height = 104
      object EditM: TSQLMemo
        Height = 86
        WantTabs = False
      end
      object pIncSearch: TPanel
        Top = 86
      end
    end
  end
  object Tr: TpFIBTransaction
    Active = False
    Timeout = 222867600
    TimeoutAction = TARollback
    Left = 432
    Top = 64
  end
  object DS: TDataSource
    Left = 464
    Top = 64
  end
  object q: TpFIBQuery
    ParamCheck = True
    SQL.Strings = ['select IBE$VH_ID, IBE$VH_MODIFY_DATE, IBE$VH_USER_NAME', 'from ibe$version_history', 'where (IBE$VH_OBJECT_TYPE = :OT) and', '(IBE$VH_OBJECT_NAME = :ON)', 'order by IBE$VH_MODIFY_DATE']
    Transaction = Tr
    Left = 496
    Top = 64
  end
  object Timer: TTimer
    Enabled = False
    Interval = 500
    OnTimer = TimerTimer
    Left = 384
    Top = 104
  end
  object Menu: TPopupMenu
    Left = 416
    Top = 104
    object Deleteversion1: TMenuItem
      Action = actDelVersion
    end
    object DeleteAll1: TMenuItem
      Action = actDeleteAll
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Removeduplicates1: TMenuItem
      Action = actRemoveDups
    end
  end
  object Actions: TActionList
    OnUpdate = ActionsUpdate
    Left = 448
    Top = 104
    object actDelVersion: TAction
      Caption = 'Delete Version'
      ShortCut = 46
      OnExecute = actDelVersionExecute
    end
    object actRemoveDups: TAction
      Caption = 'Remove duplicates'
      ShortCut = 24622
      OnExecute = actRemoveDupsExecute
    end
    object actDeleteAll: TAction
      Caption = 'Delete All'
      OnExecute = actDeleteAllExecute
    end
  end
end
