object KeyTemplateForm: TKeyTemplateForm
  Left = 421
  Top = 262
  Width = 534
  Height = 428
  HelpContext = 5100
  BorderIcons = ['biSystemMenu']
  Caption = 'Keyboard Templates'
  Color = clBtnFace
  DefaultMonitor = dmMainForm
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 350
    Width = 528
    Height = 10
    Anchors = ['akLeft', 'akRight', 'akBottom']
    Shape = bsBottomLine
  end
  object CloseBtnFrame1: TCloseBtnFrame
    Left = 365
    Top = 363
    Height = 27
    Anchors = ['akRight', 'akBottom']
    TabOrder = 9
    object OK: TButton
      Top = 2
      Anchors = ['akRight', 'akBottom']
      Default = False
    end
    object HelpB: TButton
      Top = 2
      Anchors = ['akRight', 'akBottom']
      OnClick = CloseBtnFrame1HelpBClick
    end
  end
  object AuthorB: TButton
    Tag = 1
    Left = 177
    Top = 132
    Width = 75
    Height = 23
    Caption = 'A&uthor'
    TabOrder = 4
    OnClick = AuthorBClick
  end
  object TimeB: TButton
    Tag = 2
    Left = 257
    Top = 132
    Width = 75
    Height = 23
    Caption = '&Time'
    TabOrder = 5
    OnClick = TimeBClick
  end
  object DateB: TButton
    Tag = 3
    Left = 337
    Top = 132
    Width = 75
    Height = 23
    Caption = '&Date'
    TabOrder = 6
    OnClick = DateBClick
  end
  object ExpM: TSQLMemo
    Left = 177
    Top = 158
    Width = 343
    Height = 195
    Cursor = crIBeam
    Anchors = ['akLeft', 'akTop', 'akRight', 'akBottom']
    ParentColor = False
    ParentFont = False
    TabOrder = 7
    HighlightCurrentLine = False
    CurrentLineColor = clWindow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    HighLighter = IBEMainForm.SQLPars
    Keystrokes = <
      item
        ShortCut = 38
        ShortCut2 = 0
        Command = ecUp
      end
      item
        ShortCut = 8230
        ShortCut2 = 0
        Command = ecSelUp
      end
      item
        ShortCut = 16422
        ShortCut2 = 0
        Command = ecScrollUp
      end
      item
        ShortCut = 40
        ShortCut2 = 0
        Command = ecDown
      end
      item
        ShortCut = 8232
        ShortCut2 = 0
        Command = ecSelDown
      end
      item
        ShortCut = 16424
        ShortCut2 = 0
        Command = ecScrollDown
      end
      item
        ShortCut = 37
        ShortCut2 = 0
        Command = ecLeft
      end
      item
        ShortCut = 8229
        ShortCut2 = 0
        Command = ecSelLeft
      end
      item
        ShortCut = 16421
        ShortCut2 = 0
        Command = ecWordLeft
      end
      item
        ShortCut = 24613
        ShortCut2 = 0
        Command = ecSelWordLeft
      end
      item
        ShortCut = 39
        ShortCut2 = 0
        Command = ecRight
      end
      item
        ShortCut = 8231
        ShortCut2 = 0
        Command = ecSelRight
      end
      item
        ShortCut = 16423
        ShortCut2 = 0
        Command = ecWordRight
      end
      item
        ShortCut = 24615
        ShortCut2 = 0
        Command = ecSelWordRight
      end
      item
        ShortCut = 34
        ShortCut2 = 0
        Command = ecPageDown
      end
      item
        ShortCut = 8226
        ShortCut2 = 0
        Command = ecSelPageDown
      end
      item
        ShortCut = 16418
        ShortCut2 = 0
        Command = ecPageBottom
      end
      item
        ShortCut = 24610
        ShortCut2 = 0
        Command = ecSelPageBottom
      end
      item
        ShortCut = 33
        ShortCut2 = 0
        Command = ecPageUp
      end
      item
        ShortCut = 8225
        ShortCut2 = 0
        Command = ecSelPageUp
      end
      item
        ShortCut = 16417
        ShortCut2 = 0
        Command = ecPageTop
      end
      item
        ShortCut = 24609
        ShortCut2 = 0
        Command = ecSelPageTop
      end
      item
        ShortCut = 36
        ShortCut2 = 0
        Command = ecLineStart
      end
      item
        ShortCut = 8228
        ShortCut2 = 0
        Command = ecSelLineStart
      end
      item
        ShortCut = 16420
        ShortCut2 = 0
        Command = ecEditorTop
      end
      item
        ShortCut = 24612
        ShortCut2 = 0
        Command = ecSelEditorTop
      end
      item
        ShortCut = 35
        ShortCut2 = 0
        Command = ecLineEnd
      end
      item
        ShortCut = 8227
        ShortCut2 = 0
        Command = ecSelLineEnd
      end
      item
        ShortCut = 16419
        ShortCut2 = 0
        Command = ecEditorBottom
      end
      item
        ShortCut = 24611
        ShortCut2 = 0
        Command = ecSelEditorBottom
      end
      item
        ShortCut = 45
        ShortCut2 = 0
        Command = ecToggleMode
      end
      item
        ShortCut = 16429
        ShortCut2 = 0
        Command = ecCopy
      end
      item
        ShortCut = 8237
        ShortCut2 = 0
        Command = ecPaste
      end
      item
        ShortCut = 46
        ShortCut2 = 0
        Command = ecDeleteChar
      end
      item
        ShortCut = 8238
        ShortCut2 = 0
        Command = ecCut
      end
      item
        ShortCut = 8
        ShortCut2 = 0
        Command = ecDeleteLastChar
      end
      item
        ShortCut = 16392
        ShortCut2 = 0
        Command = ecDeleteLastWord
      end
      item
        ShortCut = 32776
        ShortCut2 = 0
        Command = ecUndo
      end
      item
        ShortCut = 40968
        ShortCut2 = 0
        Command = ecRedo
      end
      item
        ShortCut = 13
        ShortCut2 = 0
        Command = ecLineBreak
      end
      item
        ShortCut = 16449
        ShortCut2 = 0
        Command = ecSelectAll
      end
      item
        ShortCut = 16451
        ShortCut2 = 0
        Command = ecCopy
      end
      item
        ShortCut = 24649
        ShortCut2 = 0
        Command = ecBlockIndent
      end
      item
        ShortCut = 16461
        ShortCut2 = 0
        Command = ecLineBreak
      end
      item
        ShortCut = 16462
        ShortCut2 = 0
        Command = ecInsertLine
      end
      item
        ShortCut = 16468
        ShortCut2 = 0
        Command = ecDeleteWord
      end
      item
        ShortCut = 24661
        ShortCut2 = 0
        Command = ecBlockUnindent
      end
      item
        ShortCut = 16470
        ShortCut2 = 0
        Command = ecPaste
      end
      item
        ShortCut = 16472
        ShortCut2 = 0
        Command = ecCut
      end
      item
        ShortCut = 16473
        ShortCut2 = 0
        Command = ecDeleteLine
      end
      item
        ShortCut = 24665
        ShortCut2 = 0
        Command = ecDeleteEOL
      end
      item
        ShortCut = 16474
        ShortCut2 = 0
        Command = ecUndo
      end
      item
        ShortCut = 24666
        ShortCut2 = 0
        Command = ecRedo
      end
      item
        ShortCut = 16432
        ShortCut2 = 0
        Command = ecGotoMarker0
      end
      item
        ShortCut = 16433
        ShortCut2 = 0
        Command = ecGotoMarker1
      end
      item
        ShortCut = 16434
        ShortCut2 = 0
        Command = ecGotoMarker2
      end
      item
        ShortCut = 16435
        ShortCut2 = 0
        Command = ecGotoMarker3
      end
      item
        ShortCut = 16436
        ShortCut2 = 0
        Command = ecGotoMarker4
      end
      item
        ShortCut = 16437
        ShortCut2 = 0
        Command = ecGotoMarker5
      end
      item
        ShortCut = 16438
        ShortCut2 = 0
        Command = ecGotoMarker6
      end
      item
        ShortCut = 16439
        ShortCut2 = 0
        Command = ecGotoMarker7
      end
      item
        ShortCut = 16440
        ShortCut2 = 0
        Command = ecGotoMarker8
      end
      item
        ShortCut = 16441
        ShortCut2 = 0
        Command = ecGotoMarker9
      end
      item
        ShortCut = 24624
        ShortCut2 = 0
        Command = ecSetMarker0
      end
      item
        ShortCut = 24625
        ShortCut2 = 0
        Command = ecSetMarker1
      end
      item
        ShortCut = 24626
        ShortCut2 = 0
        Command = ecSetMarker2
      end
      item
        ShortCut = 24627
        ShortCut2 = 0
        Command = ecSetMarker3
      end
      item
        ShortCut = 24628
        ShortCut2 = 0
        Command = ecSetMarker4
      end
      item
        ShortCut = 24629
        ShortCut2 = 0
        Command = ecSetMarker5
      end
      item
        ShortCut = 24630
        ShortCut2 = 0
        Command = ecSetMarker6
      end
      item
        ShortCut = 24631
        ShortCut2 = 0
        Command = ecSetMarker7
      end
      item
        ShortCut = 24632
        ShortCut2 = 0
        Command = ecSetMarker8
      end
      item
        ShortCut = 24633
        ShortCut2 = 0
        Command = ecSetMarker9
      end
    >
    Lines.Strings = ['']
    MaxUndo = 10
    Options = ['mweoAutoIndent', 'mweoDragDropEditing', 'mweoShowScrollHint', 'mweoTabsToSpaces', 'mweoSmartTabs']
    ReadOnly = False
    ScrollBars = ssNone
    WantTabs = True
    OnExit = ExpMExit
    ErrorLine = -1
  end
  object Panel4: TPanel
    Left = 177
    Top = 109
    Width = 344
    Height = 18
    Alignment = taLeftJustify
    Anchors = ['akLeft', 'akTop', 'akRight']
    BevelOuter = bvNone
    Caption = ' Expansion'
    Color = clBtnShadow
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clCaptionText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object bAdd: TButton
    Tag = 1
    Left = 175
    Top = 22
    Width = 90
    Height = 25
    Action = aAddTemplate
    TabOrder = 0
  end
  object bEdit: TButton
    Tag = 1
    Left = 175
    Top = 50
    Width = 90
    Height = 25
    Action = aEditTemplate
    TabOrder = 1
  end
  object bDel: TButton
    Tag = 1
    Left = 175
    Top = 78
    Width = 90
    Height = 25
    Action = aDelTemplate
    TabOrder = 2
  end
  object rgTemplateCase: TRadioGroup
    Left = 280
    Top = 3
    Width = 242
    Height = 100
    Anchors = ['akLeft', 'akTop', 'akRight']
    Caption = '  Templates Case '
    Columns = 2
    ItemIndex = 0
    Items.Strings = ['As Is', 'Uppercase', 'Lowercase', 'First Upper', 'NameCase']
    TabOrder = 8
    OnClick = rgTemplateCaseClick
  end
  object TL: TdxTreeList
    Left = 6
    Top = 3
    Width = 164
    Height = 350
    Bands = <
      item
      end
    >
    DefaultLayout = True
    HeaderPanelRowCount = 1
    DragMode = dmAutomatic
    TabOrder = 10
    HideSelection = False
    LookAndFeel = lfFlat
    Options = ['aoColumnSizing', 'aoColumnMoving', 'aoEditing', 'aoTabThrough', 'aoDrawEndEllipsis', 'aoAutoWidth', 'aoHideFocusRect', 'aoAutoSort']
    OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSortRefresh']
    TreeLineColor = clGrayText
    ShowGrid = True
    ShowRoot = False
    GridLineColor = clSilver
    OnClick = TLClick
    OnDblClick = TLDblClick
    OnKeyPress = TLKeyPress
    OnCustomDrawCell = TLCustomDrawCell
    OnChangeNode = TLChangeNode
    OnEdited = TLEdited
    Anchors = ['akLeft', 'akTop', 'akBottom']
    object tlcChecked: TdxTreeListColumn
      DisableCustomizing = True
      DisableDragging = True
      DisableEditor = True
      Width = 24
      BandIndex = 0
      RowIndex = 0
    end
    object tlcTemplate: TdxTreeListColumn
      Caption = 'Templates'
      DisableCustomizing = True
      DisableDragging = True
      Sorted = csUp
      Width = 138
      BandIndex = 0
      RowIndex = 0
    end
  end
  object Button1: TButton
    Left = 5
    Top = 365
    Width = 220
    Height = 25
    Anchors = ['akLeft', 'akBottom']
    Caption = 'Set default templates'
    TabOrder = 11
    OnClick = Button1Click
  end
  object PopupMenu1: TPopupMenu
    Images = IBEMainForm.MenuImages
    OnPopup = PopupMenu1Popup
    Left = 104
    Top = 120
    object AddTemplate1: TMenuItem
      Action = aAddTemplate
    end
    object Renametemplate1: TMenuItem
      Action = aEditTemplate
    end
    object DeleteM: TMenuItem
      Action = aDelTemplate
    end
  end
  object ActionList1: TActionList
    OnUpdate = ActionList1Update
    Left = 8
    Top = 328
    object aAddTemplate: TAction
      Caption = 'Add...'
      OnExecute = aAddTemplateExecute
    end
    object aEditTemplate: TAction
      Caption = 'Edit...'
      ShortCut = 113
      OnExecute = aEditTemplateExecute
    end
    object aDelTemplate: TAction
      Caption = 'Delete'
      ShortCut = 16430
      OnExecute = aDelTemplateExecute
    end
    object aExitFromEdit: TAction
      Caption = 'aExitFromEdit'
      ShortCut = 16393
      OnExecute = aExitFromEditExecute
    end
    object actExit: TAction
      Caption = 'actExit'
      ShortCut = 27
      OnExecute = actExitExecute
    end
    object actLocalize: TAction
      Caption = 'Localize'
      ShortCut = 57420
      OnExecute = actLocalizeExecute
    end
  end
end
