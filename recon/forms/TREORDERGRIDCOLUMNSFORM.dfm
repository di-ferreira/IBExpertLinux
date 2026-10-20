object ReorderGridColumnsForm: TReorderGridColumnsForm
  Left = 539
  Top = 242
  HelpContext = 14200
  AutoScroll = False
  BorderIcons = ['biSystemMenu']
  Caption = 'Grid columns order/visibility'
  ClientHeight = 413
  ClientWidth = 326
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object TBToolbar1: TTBToolbar
    Left = 0
    Top = 0
    Width = 326
    Height = 22
    Align = alTop
    Caption = 'TBToolbar1'
    Images = IBEMainForm.MenuImages
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    object TBItem2: TTBItem
      Action = actMoveDown
    end
    object TBItem1: TTBItem
      Action = actMoveUp
    end
  end
  object TL: TdxTreeList
    Left = 0
    Top = 22
    Width = 326
    Height = 391
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
    Options = ['aoColumnSizing', 'aoColumnMoving', 'aoEditing', 'aoTabThrough', 'aoMultiSelect', 'aoDrawEndEllipsis', 'aoAutoWidth', 'aoHideFocusRect']
    OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSortRefresh', 'aoAutoSearch']
    TreeLineColor = clGrayText
    ShowRoot = False
    GridLineColor = clSilver
    OnDblClick = TLDblClick
    OnDragDrop = TLDragDrop
    OnDragOver = TLDragOver
    OnKeyPress = TLKeyPress
    OnCustomDrawCell = TLCustomDrawCell
    OnChangeColumn = TLChangeColumn
    OnChangeNode = TLChangeNode
    object tlcNum: TdxTreeListColumn
      Alignment = taRightJustify
      Caption = '#'
      HeaderAlignment = taRightJustify
      Width = 40
      BandIndex = 0
      RowIndex = 0
    end
    object tlcColumn: TdxTreeListColumn
      Caption = 'Column'
      DisableCustomizing = True
      DisableDragging = True
      DisableEditor = True
      ReadOnly = True
      Width = 223
      BandIndex = 0
      RowIndex = 0
    end
    object tlcShow: TdxTreeListColumn
      Alignment = taCenter
      Caption = 'Show'
      HeaderAlignment = taCenter
      Width = 40
      BandIndex = 0
      RowIndex = 0
    end
  end
  object ActionList1: TActionList
    Images = IBEMainForm.MenuImages
    Left = 208
    Top = 160
    object actLocalize: TAction
      Caption = 'Localize'
      ShortCut = 57420
    end
    object actExit: TAction
      Caption = 'Exit'
      ShortCut = 27
      OnExecute = actExitExecute
      OnUpdate = actExitUpdate
    end
    object actMoveDown: TAction
      Caption = 'Move down'
      ImageIndex = 113
      ShortCut = 24616
      OnExecute = actMoveDownExecute
    end
    object actMoveUp: TAction
      Caption = 'Move up'
      ImageIndex = 114
      ShortCut = 24614
      OnExecute = actMoveUpExecute
    end
  end
end
