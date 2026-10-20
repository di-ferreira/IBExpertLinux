object LocalizeIBEForms: TLocalizeIBEForms
  Left = 330
  Top = 252
  Width = 555
  Height = 400
  HelpContext = 7700
  BorderIcons = ['biSystemMenu']
  Caption = 'Localizing Form'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TdfsSplitter
    Left = 0
    Top = 233
    Width = 539
    Height = 4
    Cursor = crVSplit
    Align = alBottom
    ResizeStyle = rsUpdate
    Maximized = False
    Minimized = False
    ButtonCursor = crDefault
  end
  object TBDock1: TTBDock
    Left = 0
    Top = 0
    Width = 539
    Height = 26
    object TBToolbar1: TTBToolbar
      Left = 0
      Top = 0
      Caption = 'TBToolbar1'
      DockPos = 0
      Images = IBEMainForm.MenuImages
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      object TBItem1: TTBItem
        Action = actSave
      end
      object TBSeparatorItem1: TTBSeparatorItem
      end
      object TBItem2: TTBItem
        Action = actFind
      end
      object TBItem3: TTBItem
        Action = actFindNext
      end
      object TBSeparatorItem2: TTBSeparatorItem
      end
      object tbs1: TTBSeparatorItem
      end
      object TBItem4: TTBItem
        Action = actExport
      end
      object TBItem5: TTBItem
        Action = actImport
      end
      object TBSeparatorItem3: TTBSeparatorItem
      end
      object : TTBControlItem
        Control = Label2
      end
      object : TTBControlItem
        Control = cbCharset
      end
      object TBSeparatorItem4: TTBSeparatorItem
      end
      object Label2: TLabel
        Left = 133
        Top = 4
        Width = 116
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Font Charset  '
      end
      object cbCharset: TComboBox
        Left = 249
        Top = 0
        Width = 153
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 0
        OnChange = cbCharsetChange
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 237
    Width = 539
    Height = 127
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 1
    object pShortCut: TPanel
      Left = 0
      Top = 99
      Width = 539
      Height = 28
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      Visible = False
      object Label1: TLabel
        Left = 28
        Top = 7
        Width = 372
        Height = 13
        Alignment = taRightJustify
        Anchors = ['akTop', 'akRight']
        AutoSize = False
        Caption = 'Short&Cut'
        FocusControl = hk
      end
      object hk: THotKey
        Left = 403
        Top = 4
        Width = 143
        Height = 19
        Anchors = ['akTop', 'akRight']
        HotKey = 32833
        InvalidKeys = ['hcNone', 'hcShift']
        Modifiers = ['hkAlt']
        TabOrder = 0
        OnEnter = hkEnter
        OnExit = hkExit
      end
    end
    object MessageM: TdxMemo
      Left = 0
      Top = 18
      Width = 539
      Align = alClient
      TabOrder = 0
      StyleController = IBEMainForm.MainSC
      OnChange = MessageMChange
      Height = 81
    end
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 539
      Height = 18
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = ' Use Ctrl+Alt+Up/Ctrl+Alt+Down to navigate previous/next item'
      Color = clBtnShadow
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clCaptionText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = ['fsBold']
      ParentFont = False
      TabOrder = 2
    end
  end
  object TL: TdxTreeList
    Left = 0
    Top = 26
    Width = 539
    Height = 207
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
    Images = IBEMainForm.MenuImages
    LookAndFeel = lfFlat
    Options = ['aoColumnSizing', 'aoColumnMoving', 'aoTabThrough', 'aoRowSelect', 'aoDrawEndEllipsis', 'aoHideFocusRect', 'aoAutoSort']
    OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSortRefresh']
    TreeLineColor = clGrayText
    ShowGrid = True
    ShowRoot = False
    GridLineColor = clSilver
    OnCustomDrawCell = TLCustomDrawCell
    OnChangeNode = TLChangeNode
    OnCompare = TLCompare
    object tlcID: TdxTreeListColumn
      Alignment = taRightJustify
      Caption = 'ID'
      DisableDragging = True
      DisableEditor = True
      HeaderAlignment = taRightJustify
      Width = 62
      BandIndex = 0
      RowIndex = 0
    end
    object tlType: TdxTreeListColumn
      Caption = 'Type'
      DisableDragging = True
      DisableEditor = True
      Width = 80
      BandIndex = 0
      RowIndex = 0
    end
    object tlText: TdxTreeListColumn
      Caption = 'Item text'
      DisableDragging = True
      DisableEditor = True
      Width = 223
      BandIndex = 0
      RowIndex = 0
    end
    object tlOriginal: TdxTreeListColumn
      Caption = 'Original text'
      Width = 184
      BandIndex = 0
      RowIndex = 0
    end
    object tlShortcut: TdxTreeListColumn
      Caption = 'Shortcut'
      DisableDragging = True
      DisableEditor = True
      Width = 99
      BandIndex = 0
      RowIndex = 0
    end
    object tlcLocalized: TdxTreeListColumn
      Alignment = taCenter
      Caption = 'Localized'
      DisableEditor = True
      HeaderAlignment = taCenter
      Width = 54
      BandIndex = 0
      RowIndex = 0
    end
  end
  object ActionList1: TActionList
    Images = IBEMainForm.MenuImages
    OnUpdate = ActionList1Update
    Left = 512
    Top = 72
    object actSave: TAction
      Caption = 'Save'
      Hint = 'Save changes'
      ImageIndex = 29
      ShortCut = 16467
      OnExecute = actSaveExecute
      OnUpdate = actSaveUpdate
    end
    object actFind: TAction
      Caption = 'Find'
      Hint = 'Find'
      ImageIndex = 66
      ShortCut = 16454
      OnExecute = actFindExecute
    end
    object actFindNext: TAction
      Caption = 'Find Next'
      Hint = 'Find next'
      ImageIndex = 62
      ShortCut = 114
      OnExecute = actFindNextExecute
    end
    object actExport: TAction
      Caption = 'Export'
      Hint = 'Export strings'
      ImageIndex = 93
      OnExecute = actExportExecute
    end
    object actImport: TAction
      Caption = 'Import'
      Hint = 'Import strings'
      ImageIndex = 94
      OnExecute = actImportExecute
    end
    object actDown: TAction
      Caption = 'actDown'
      ShortCut = 49192
      OnExecute = actDownExecute
    end
    object actUp: TAction
      Caption = 'actUp'
      ShortCut = 49190
      OnExecute = actUpExecute
    end
    object actDown2: TAction
      Caption = 'actDown2'
      ShortCut = 24616
      OnExecute = actDownExecute
    end
    object actUp2: TAction
      Caption = 'actUp2'
      ShortCut = 24614
      OnExecute = actUpExecute
    end
  end
  object svd: TSaveDialog
    DefaultExt = 'lna'
    Filter = 'IB Expert Lng Archive (*.lna)|*.lna|All files (*.*)|*.*'
    Options = ['ofOverwritePrompt', 'ofHideReadOnly', 'ofEnableSizing']
    Title = 'Save localized strings'
    Left = 256
    Top = 72
  end
  object opd: TOpenDialog
    DefaultExt = 'lna'
    Filter = 'IB Expert Lng Archive (*.lna)|*.lna|All files (*.*)|*.*'
    Options = ['ofHideReadOnly', 'ofPathMustExist', 'ofFileMustExist', 'ofEnableSizing']
    Title = 'Load Localized Strings from...'
    Left = 296
    Top = 72
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Bars = []
    Categories.Strings = ['Default']
    Categories.ItemsVisibles = [2]
    Categories.Visibles = [True]
    PopupMenuLinks = []
    UseSystemFont = True
    Left = 72
    Top = 112
    DockControlHeights = [0, 0, 0, 0]
  end
end
