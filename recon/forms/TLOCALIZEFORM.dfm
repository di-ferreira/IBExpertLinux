object LocalizeForm: TLocalizeForm
  Left = 191
  Top = 122
  Width = 656
  Height = 450
  HelpContext = 2600
  Caption = 'IB Expert Interbase Messages Editor'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Icon.Data = {766 bytes}
  KeyPreview = True
  OldCreateOrder = True
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object sbar1: TStatusBar
    Left = 0
    Top = 397
    Width = 648
    Height = 19
    Panels = <
      item
        Width = 300
      end
    >
    SimplePanel = False
  end
  object TBDock1: TTBDock
    Left = 0
    Top = 0
    Width = 648
    Height = 26
    object TBToolbar1: TTBToolbar
      Left = 0
      Top = 0
      Caption = 'TBToolbar1'
      DockPos = 0
      Images = ToolsI
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      object TBItem1: TTBItem
        Action = actOpen
      end
      object TBItem2: TTBItem
        Action = actSave
      end
      object TBSeparatorItem1: TTBSeparatorItem
      end
      object TBItem3: TTBItem
        Action = actRevert
      end
      object TBSeparatorItem2: TTBSeparatorItem
      end
      object TBItem4: TTBItem
        Action = actGotoLine
      end
      object TBItem5: TTBItem
        Action = actFind
      end
      object TBItem6: TTBItem
        Action = actFindNext
      end
      object TBSeparatorItem3: TTBSeparatorItem
      end
      object TBItem7: TTBItem
        Action = actExport
      end
      object TBItem8: TTBItem
        Action = actImport
      end
    end
  end
  object TL: TdxTreeList
    Left = 0
    Top = 26
    Width = 648
    Height = 371
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
    Images = iml1
    LookAndFeel = lfFlat
    Options = ['aoColumnSizing', 'aoColumnMoving', 'aoTabThrough', 'aoRowSelect', 'aoDrawEndEllipsis', 'aoHideFocusRect', 'aoAutoSort']
    OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSortRefresh']
    TreeLineColor = clGrayText
    ShowGrid = True
    ShowRoot = False
    GridLineColor = clSilver
    OnDblClick = TLDblClick
    OnKeyPress = TLKeyPress
    object tlcID: TdxTreeListColumn
      Alignment = taRightJustify
      Caption = 'Number (DEC)'
      DisableDragging = True
      DisableEditor = True
      HeaderAlignment = taRightJustify
      Width = 80
      BandIndex = 0
      RowIndex = 0
    end
    object TLColumn2: TdxTreeListColumn
      Caption = 'Text'
      DisableDragging = True
      DisableEditor = True
      Width = 453
      BandIndex = 0
      RowIndex = 0
    end
    object TLColumn3: TdxTreeListColumn
      Caption = 'Original text'
      DisableDragging = True
      DisableEditor = True
      Width = 466
      BandIndex = 0
      RowIndex = 0
    end
  end
  object opd1: TOpenDialog
    Filter = 'InterBase Message File|*.msg'
    Left = 120
    Top = 96
  end
  object iml1: TImageList
    Width = 18
    Left = 160
    Top = 96
    Bitmap = {9766 bytes}
  end
  object svd1: TSaveDialog
    Filter = 'InterBase Messages File|*.msg'
    Left = 200
    Top = 96
  end
  object PopupMenu: TPopupMenu
    Left = 40
    Top = 72
    object OpenM: TMenuItem
      Action = actOpen
    end
    object SaveM: TMenuItem
      Action = actSave
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object RevertM: TMenuItem
      Action = actRevert
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object GotoM: TMenuItem
      Action = actGotoLine
    end
    object FindM: TMenuItem
      Action = actFind
    end
    object FindNextM: TMenuItem
      Action = actFindNext
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object ExportM: TMenuItem
      Action = actExport
    end
    object ImportM: TMenuItem
      Action = actImport
    end
  end
  object ToolsI: TImageList
    Left = 144
    Top = 160
    Bitmap = {17062 bytes}
  end
  object ActionList1: TActionList
    Images = ToolsI
    Left = 544
    Top = 64
    object actOpen: TAction
      Caption = 'Open File'
      ImageIndex = 0
      OnExecute = actOpenExecute
    end
    object actSave: TAction
      Caption = 'Save To File'
      ImageIndex = 1
      OnExecute = actSaveExecute
    end
    object actRevert: TAction
      Caption = 'Revert To Original'
      ImageIndex = 2
      OnExecute = actRevertExecute
    end
    object actGotoLine: TAction
      Caption = 'Goto Line Number'
      ImageIndex = 3
      OnExecute = actGotoLineExecute
    end
    object actFind: TAction
      Caption = 'Find Text'
      ImageIndex = 4
      ShortCut = 16454
      OnExecute = actFindExecute
    end
    object actFindNext: TAction
      Caption = 'Find Next'
      ImageIndex = 5
      ShortCut = 114
      OnExecute = actFindNextExecute
    end
    object actExport: TAction
      Caption = 'Export To Text File'
      Hint = 'Export to Text File'
      ImageIndex = 6
      OnExecute = actExportExecute
    end
    object actImport: TAction
      Caption = 'Import From Text File'
      Hint = 'Import from Text File'
      ImageIndex = 8
      OnExecute = actImportExecute
    end
    object actExit: TAction
      Caption = 'Exit'
      ShortCut = 27
      OnExecute = actExitExecute
    end
  end
  object od: TOpenDialog
    Filter = 'InterBase Message File|*.msg'
    Left = 120
    Top = 208
  end
  object sd: TSaveDialog
    Filter = 'InterBase Messages File|*.msg'
    Left = 200
    Top = 208
  end
end
