object QueryBarManagerForm: TQueryBarManagerForm
  Left = 829
  Top = 302
  Width = 301
  Height = 523
  BorderIcons = ['biSystemMenu']
  BorderStyle = bsSizeToolWin
  Caption = 'Queries'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 26
    Width = 285
    Height = 461
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Saving queries...'
    TabOrder = 2
  end
  object TL: TdxTreeList
    Left = 0
    Top = 26
    Width = 285
    Height = 461
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
    Images = IBEMainForm.MenuImages
    LookAndFeel = lfFlat
    Options = ['aoColumnSizing', 'aoColumnMoving', 'aoTabThrough', 'aoMultiSelect', 'aoDrawEndEllipsis', 'aoAutoWidth']
    OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSortRefresh', 'aoAutoSearch']
    TreeLineColor = clGrayText
    ShowHeader = False
    ShowRoot = False
    GridLineColor = clSilver
    OnDblClick = TLDblClick
    OnKeyPress = TLKeyPress
    OnChangeNode = TLChangeNode
    OnDeletion = TLDeletion
    object tlcQueryName: TdxTreeListColumn
      Caption = 'Layer name'
      DisableCustomizing = True
      DisableDragging = True
      MaxLength = 1000
      Width = 231
      BandIndex = 0
      RowIndex = 0
    end
  end
  object TBDock1: TTBDock
    Left = 0
    Top = 0
    Width = 285
    Height = 26
    object TBToolbar1: TTBToolbar
      Left = 0
      Top = 0
      BorderStyle = bsNone
      Caption = 'TBToolbar1'
      DockMode = dmCannotFloat
      DragHandleStyle = dhNone
      Images = IBEMainForm.MenuImages
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      object TBItem2: TTBItem
        Action = actDeleteSelected
      end
      object TBItem3: TTBItem
        Action = actDeleteAll
      end
      object TBSeparatorItem1: TTBSeparatorItem
      end
      object TBItem1: TTBItem
        Action = actMoveUp
      end
      object TBItem5: TTBItem
        Action = actMoveDown
      end
    end
  end
  object ChangeTimer: TTimer
    Enabled = False
    Interval = 100
    OnTimer = ChangeTimerTimer
    Left = 128
    Top = 120
  end
  object ActionList1: TActionList
    Images = IBEMainForm.MenuImages
    Left = 136
    Top = 72
    object actDeleteSelected: TAction
      Caption = 'Delete selected queries'
      ImageIndex = 45
      OnExecute = actDeleteSelectedExecute
    end
    object actDeleteAll: TAction
      Caption = 'Delete all'
      ImageIndex = 46
      OnExecute = actDeleteAllExecute
    end
    object actMoveUp: TAction
      Caption = 'Move selected queries up'
      Hint = 'Move query up'
      ImageIndex = 101
      OnExecute = actMoveUpExecute
    end
    object actMoveDown: TAction
      Caption = 'Move selected queries down'
      Hint = 'Move query down'
      ImageIndex = 102
      OnExecute = actMoveDownExecute
    end
    object actExit: TAction
      Caption = 'actExit'
      ShortCut = 27
      OnExecute = actExitExecute
    end
  end
end
