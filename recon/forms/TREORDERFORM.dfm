object ReorderForm: TReorderForm
  Left = 389
  Top = 147
  HelpContext = 2300
  ActiveControl = TL
  AutoScroll = False
  BorderIcons = ['biSystemMenu']
  Caption = 'Re-order Columns'
  ClientHeight = 507
  ClientWidth = 297
  Color = clBtnFace
  Constraints.MinHeight = 380
  Constraints.MinWidth = 300
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  Scaled = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lCaption: TLabel
    Left = 9
    Top = 2
    Width = 281
    Height = 40
    Alignment = taCenter
    Anchors = ['akLeft', 'akTop', 'akRight']
    AutoSize = False
    Caption = 'Drag-n-drop to reorder columns or\r\nuse Shift+Ctrl+Up/Shift+Ctrl+Down'
    WordWrap = True
  end
  object CancelB: TButton
    Left = 203
    Top = 478
    Width = 87
    Height = 24
    Anchors = ['akRight', 'akBottom']
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 0
  end
  object bOk: TButton
    Left = 106
    Top = 478
    Width = 87
    Height = 24
    Anchors = ['akRight', 'akBottom']
    Cancel = True
    Caption = 'OK'
    ModalResult = 1
    TabOrder = 1
  end
  object TL: TdxTreeList
    Left = 6
    Top = 48
    Width = 284
    Height = 421
    Bands = <
      item
      end
    >
    DefaultLayout = True
    HeaderPanelRowCount = 1
    DragMode = dmAutomatic
    TabOrder = 2
    HideSelection = False
    Images = IBEMainForm.ImageList
    LookAndFeel = lfFlat
    Options = ['aoColumnSizing', 'aoColumnMoving', 'aoTabThrough', 'aoRowSelect', 'aoDrawEndEllipsis', 'aoAutoWidth', 'aoHideFocusRect']
    OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSortRefresh']
    TreeLineColor = clGrayText
    ShowRoot = False
    GridLineColor = clSilver
    OnDragDrop = TLDragDrop
    OnDragOver = TLDragOver
    Anchors = ['akLeft', 'akTop', 'akRight', 'akBottom']
    object tlcColumn: TdxTreeListColumn
      Caption = 'Column name'
      DisableCustomizing = True
      DisableDragging = True
      DisableEditor = True
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
    end
  end
  object Query: TFIBQuery
    ParamCheck = True
    Transaction = Tr
    Left = 184
    Top = 120
  end
  object Tr: TFIBTransaction
    Active = False
    Timeout = 131331008
    TimeoutAction = TARollback
    Left = 216
    Top = 120
  end
  object ActionList1: TActionList
    OnUpdate = ActionList1Update
    Left = 208
    Top = 160
    object actLocalize: TAction
      Caption = 'Localize'
      ShortCut = 57420
      OnExecute = actLocalizeExecute
    end
    object actExit: TAction
      Caption = 'Exit'
      ShortCut = 27
      OnExecute = actExitExecute
    end
    object actMoveFieldDown: TAction
      Caption = 'Move Field Down'
      ShortCut = 24616
      OnExecute = actMoveFieldDownExecute
    end
    object actMoveFieldUp: TAction
      Caption = 'Move Field Up'
      ShortCut = 24614
      OnExecute = actMoveFieldUpExecute
    end
  end
end
