object DataGeneratorForm: TDataGeneratorForm
  Left = 321
  Top = 146
  Width = 590
  Height = 751
  HelpContext = 4500
  Caption = 'Test data generator'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object TL: TdxTreeList
    Left = 0
    Top = 26
    Width = 279
    Height = 689
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
    ShowGrid = True
    ShowRoot = False
    GridLineColor = clSilver
    OnClick = TLClick
    OnDblClick = TLDblClick
    OnKeyPress = TLKeyPress
    OnCustomDrawCell = TLCustomDrawCell
    OnChangeNode = TLChangeNode
    OnDeletion = TLDeletion
    object tlcCheck: TdxTreeListColumn
      DisableCustomizing = True
      DisableDragging = True
      DisableEditor = True
      Width = 21
      BandIndex = 0
      RowIndex = 0
    end
    object tlcSField: TdxTreeListColumn
      Caption = 'Name'
      DisableCustomizing = True
      DisableDragging = True
      DisableEditor = True
      MaxLength = 31
      Width = 198
      BandIndex = 0
      RowIndex = 0
    end
    object tlcSType: TdxTreeListColumn
      Caption = 'Type'
      DisableCustomizing = True
      DisableDragging = True
      DisableEditor = True
      Width = 259
      BandIndex = 0
      RowIndex = 0
    end
    object tlcSKey: TdxTreeListColumn
      Caption = 'Key'
      Visible = False
      Width = 39
      BandIndex = 0
      RowIndex = 0
    end
  end
  object Panel2: TPanel
    Left = 285
    Top = 26
    Width = 289
    Height = 689
    Align = alRight
    BevelOuter = bvNone
    BevelWidth = 2
    TabOrder = 1
    object gbIntCon: TGroupBox
      Left = 0
      Top = 154
      Width = 289
      Height = 59
      Align = alTop
      Caption = ' Integer Constraints  '
      TabOrder = 0
      Visible = False
      object Label5: TLabel
        Left = 11
        Top = 14
        Width = 47
        Height = 13
        Caption = 'M&in Value'
      end
      object Label6: TLabel
        Left = 162
        Top = 14
        Width = 50
        Height = 13
        Caption = 'Ma&x Value'
      end
      object seMinInt: TdxSpinEdit
        Left = 10
        Top = 30
        Width = 115
        TabOrder = 0
        StyleController = IBEMainForm.MainSC
        OnChange = seMinIntChange
      end
      object seMaxInt: TdxSpinEdit
        Left = 163
        Top = 30
        Width = 115
        TabOrder = 1
        StyleController = IBEMainForm.MainSC
        OnChange = seMinIntChange
      end
    end
    object gbDatCon: TGroupBox
      Left = 0
      Top = 213
      Width = 289
      Height = 92
      Align = alTop
      Caption = ' Date Constraints  '
      TabOrder = 1
      Visible = False
      object Label8: TLabel
        Left = 12
        Top = 19
        Width = 43
        Height = 13
        Caption = 'M&in Date'
      end
      object Label9: TLabel
        Left = 12
        Top = 44
        Width = 46
        Height = 13
        Caption = 'Ma&x Date'
      end
      object deMinDate: TdxDateEdit
        Left = 83
        Top = 16
        Width = 121
        TabOrder = 1
        StyleController = IBEMainForm.MainSC
        OnChange = deMinDateChange
        Date = 37187
        SaveTime = False
        OnDateChange = deMinDateChange
      end
      object cbIncludeTime: TdxCheckEdit
        Left = 8
        Top = 65
        Width = 196
        TabOrder = 0
        Caption = 'Include Time'
        StyleController = IBEMainForm.MainCheckSC
        OnChange = cbIncludeTimeChange
      end
      object deMaxDate: TdxDateEdit
        Left = 83
        Top = 41
        Width = 121
        TabOrder = 2
        StyleController = IBEMainForm.MainSC
        OnChange = deMaxDateChange
        Date = 37187
        SaveTime = False
        OnDateChange = deMaxDateChange
      end
    end
    object rgGenType: TRadioGroup
      Left = 0
      Top = 0
      Width = 289
      Height = 95
      Align = alTop
      Caption = ' Data Generation Type  '
      ItemIndex = 0
      Items.Strings = ['Generate &randomly', 'Get from &another table', 'Get from &list']
      TabOrder = 2
      Visible = False
      OnClick = rgGenTypeClick
    end
    object gbLink: TGroupBox
      Left = 0
      Top = 432
      Width = 289
      Height = 91
      Align = alTop
      Caption = ' Get from table  '
      TabOrder = 3
      Visible = False
      object Label10: TLabel
        Left = 55
        Top = 68
        Width = 87
        Height = 13
        Caption = 'N&umber of records'
      end
      object Label11: TLabel
        Left = 13
        Top = 20
        Width = 27
        Height = 13
        Caption = '&Table'
        FocusControl = cbLinkTable
      end
      object Label12: TLabel
        Left = 13
        Top = 44
        Width = 22
        Height = 13
        Caption = '&Field'
        FocusControl = cbLinkField
      end
      object cbLinkTable: TdxPickEdit
        Left = 59
        Top = 15
        Width = 185
        TabOrder = 0
        OnExit = cbLinkTableExit
        StyleController = IBEMainForm.MainSC
        OnChange = cbLinkTableChange
        DropDownRows = 20
        DropDownListStyle = True
      end
      object cbLinkField: TdxPickEdit
        Left = 59
        Top = 39
        Width = 185
        TabOrder = 1
        OnExit = cbLinkFieldExit
        StyleController = IBEMainForm.MainSC
        OnChange = cbLinkFieldChange
        DropDownRows = 20
        DropDownListStyle = True
      end
      object seNumRec: TdxSpinEdit
        Left = 153
        Top = 64
        Width = 91
        TabOrder = 2
        OnExit = seNumRecExit
        StyleController = IBEMainForm.MainSC
        MaxValue = 100000
        MinValue = 1
        Value = 1
        StoredValues = 48
      end
    end
    object gbList: TGroupBox
      Left = 0
      Top = 677
      Width = 289
      Height = 128
      Align = alTop
      Caption = ' Get From List  '
      TabOrder = 4
      Visible = False
      object mList: TdxMemo
        Tag = 1000
        Left = 8
        Top = 16
        Width = 274
        TabOrder = 0
        StyleController = IBEMainForm.MainSC
        OnChange = mListChange
        Lines.Strings = ['mList']
        ScrollBars = ssVertical
        Height = 105
      end
    end
    object gbFltCon: TGroupBox
      Left = 0
      Top = 523
      Width = 289
      Height = 81
      Align = alTop
      Caption = ' Float Constraints '
      TabOrder = 5
      Visible = False
      object Label16: TLabel
        Left = 8
        Top = 35
        Width = 26
        Height = 13
        Caption = 'Di&gits'
      end
      object Label17: TLabel
        Left = 136
        Top = 35
        Width = 43
        Height = 13
        Caption = '&Precision'
      end
      object sePrecision: TdxSpinEdit
        Left = 135
        Top = 52
        Width = 91
        TabOrder = 2
        StyleController = IBEMainForm.MainSC
        OnChange = seDigitsChange
      end
      object seDigits: TdxSpinEdit
        Left = 8
        Top = 52
        Width = 91
        TabOrder = 1
        StyleController = IBEMainForm.MainSC
        OnChange = seDigitsChange
      end
      object fltFixed: TdxCheckEdit
        Left = 4
        Top = 13
        Width = 145
        TabOrder = 0
        Caption = 'Fi&xed float number'
        StyleController = IBEMainForm.MainCheckSC
        State = cbsChecked
      end
    end
    object gbTimeCon: TGroupBox
      Left = 0
      Top = 604
      Width = 289
      Height = 73
      Align = alTop
      Caption = ' Time Constraints  '
      TabOrder = 6
      Visible = False
      object Label18: TLabel
        Left = 12
        Top = 19
        Width = 43
        Height = 13
        Caption = 'M&in Time'
      end
      object Label19: TLabel
        Left = 12
        Top = 46
        Width = 46
        Height = 13
        Caption = 'Ma&x Time'
      end
      object tmMinTime: TdxTimeEdit
        Left = 72
        Top = 16
        Width = 90
        TabOrder = 0
        StyleController = IBEMainForm.MainSC
        OnChange = tmMinTimeChange
        StoredValues = 4
      end
      object tmMaxTime: TdxTimeEdit
        Left = 72
        Top = 43
        Width = 90
        TabOrder = 1
        StyleController = IBEMainForm.MainSC
        OnChange = tmMaxTimeChange
        Time = nan
        StoredValues = 4
      end
    end
    object gbStrCon: TGroupBox
      Left = 0
      Top = 305
      Width = 289
      Height = 127
      Align = alTop
      Caption = ' String Constraints  '
      TabOrder = 7
      Visible = False
      object Label7: TLabel
        Left = 150
        Top = 20
        Width = 56
        Height = 13
        Caption = 'Ma&x Length'
      end
      object Label3: TLabel
        Left = 13
        Top = 20
        Width = 53
        Height = 13
        Caption = 'M&in Length'
      end
      object Label13: TLabel
        Left = 13
        Top = 50
        Width = 47
        Height = 13
        Caption = '&Start Char'
        FocusControl = cbStartChar
      end
      object Label14: TLabel
        Left = 14
        Top = 75
        Width = 44
        Height = 13
        Caption = '&End Char'
        FocusControl = cbEndChar
      end
      object cbStartChar: TdxPickEdit
        Left = 76
        Top = 46
        Width = 109
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        StyleController = IBEMainForm.MainSC
        OnChange = cbStartCharChange
        DropDownRows = 20
        DropDownListStyle = True
      end
      object cbEndChar: TdxPickEdit
        Left = 76
        Top = 71
        Width = 109
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        StyleController = IBEMainForm.MainSC
        OnChange = cbEndCharChange
        DropDownRows = 20
        DropDownListStyle = True
      end
      object seLen1: TdxSpinEdit
        Left = 76
        Top = 17
        Width = 59
        TabOrder = 2
        StyleController = IBEMainForm.MainSC
        OnChange = seLen2Change
      end
      object seLen2: TdxSpinEdit
        Left = 212
        Top = 17
        Width = 59
        TabOrder = 3
        StyleController = IBEMainForm.MainSC
        OnChange = seLen2Change
      end
      object cbGenerateGUID: TdxCheckEdit
        Left = 8
        Top = 97
        Width = 273
        TabOrder = 4
        Caption = 'Generate GUID'
        StyleController = IBEMainForm.MainCheckSC
        OnChange = cbGenerateGUIDChange
      end
    end
    object gbAutoincrement: TGroupBox
      Left = 0
      Top = 95
      Width = 289
      Height = 59
      Align = alTop
      Caption = ' Autoincrement  '
      TabOrder = 8
      Visible = False
      object Label20: TLabel
        Left = 11
        Top = 14
        Width = 54
        Height = 13
        Caption = 'Initial Value'
      end
      object Label21: TLabel
        Left = 163
        Top = 14
        Width = 22
        Height = 13
        Caption = 'Step'
      end
      object seAutoInitial: TdxSpinEdit
        Left = 10
        Top = 30
        Width = 115
        TabOrder = 0
        StyleController = IBEMainForm.MainSC
        OnChange = seAutoInitialChange
      end
      object seAutoStep: TdxSpinEdit
        Left = 163
        Top = 30
        Width = 115
        TabOrder = 1
        StyleController = IBEMainForm.MainSC
        OnChange = seAutoStepChange
      end
    end
  end
  object Panel1: TPanel
    Left = 279
    Top = 26
    Width = 6
    Height = 689
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 6
  end
  object bm: TdxBarManager
    AlwaysSaveText = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Bars = <
      item
        AllowClose = False
        AllowCustomizing = False
        AllowQuickCustomizing = False
        AllowReset = False
        Caption = 'Test data generator'
        DockedDockingStyle = dsTop
        DockedLeft = 0
        DockedTop = 0
        DockingStyle = dsTop
        FloatLeft = 340
        FloatTop = 264
        FloatClientWidth = 23
        FloatClientHeight = 22
        ItemLinks = None
        Name = 'DB Backup'
        NotDocking = ['dsNone', 'dsLeft', 'dsRight', 'dsBottom']
        OneOnRow = True
        Row = 0
        UseOwnFont = False
        Visible = True
        WholeRow = True
      end
    >
    Categories.Strings = ['Default']
    Categories.ItemsVisibles = [2]
    Categories.Visibles = [True]
    Images = IBEMainForm.MenuImages
    PopupMenuLinks = []
    UseSystemFont = True
    Left = 392
    Top = 57
    DockControlHeights = [0, 0, 26, 0]
    object bliDatabases: TdxBarSubItem
      Caption = '(No active connection)'
      Category = 0
      Visible = ivAlways
      ImageIndex = 85
      OnClick = bliDatabasesClick
      ItemLinks = []
    end
    object dxBarButton1: TdxBarButton
      Action = actGenerate
      Category = 0
      UnclickAfterDoing = False
    end
    object cbTables: TdxBarCombo
      Caption = 'Table'
      Category = 0
      Hint = 'Table'
      Visible = ivAlways
      OnChange = cbTablesChange
      ShowCaption = True
      Width = 100
      ShowEditor = False
      DropDownCount = 20
      ItemIndex = -1
    end
    object seRecords: TdxBarSpinEdit
      Caption = 'Records to be generated'
      Category = 0
      Hint = 'Records to be generated'
      Visible = ivAlways
      ShowCaption = True
      Width = 100
      MaxValue = 1000000000
      MinValue = 1
      Value = 100
    end
    object dxBarButton2: TdxBarButton
      Action = actStop
      Category = 0
      UnclickAfterDoing = False
    end
    object pb: TdxBarProgressItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivNever
      ShowCaption = False
      Width = 200
      Smooth = True
    end
    object bbCounter: TdxBarStatic
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivNever
      BorderStyle = sbsBump
    end
    object dxBarButton3: TdxBarButton
      Action = actSaveToScript
      Category = 0
    end
  end
  object DataGeneratorActions: TActionList
    Images = IBEMainForm.MenuImages
    OnUpdate = DataGeneratorActionsUpdate
    Left = 432
    Top = 56
    object actGenerate: TAction
      Caption = 'Generate'
      Hint = 'Generate '
      ImageIndex = 56
      ShortCut = 120
      OnExecute = actGenerateExecute
    end
    object actStop: TAction
      Caption = 'Stop generating'
      Hint = 'Stop generating'
      ImageIndex = 42
      OnExecute = actStopExecute
    end
    object Action3: TAction
      Caption = 'Action3'
    end
    object actSaveToScript: TAction
      Caption = 'Save to Script'
      Hint = 'Save to Script'
      ImageIndex = 29
      OnExecute = actSaveToScriptExecute
    end
  end
  object Tr: TpFIBTransaction
    Active = False
    Timeout = 338449216
    TimeoutAction = TARollback
    Left = 192
    Top = 128
  end
  object Q: TpFIBQuery
    ParamCheck = True
    Transaction = Tr
    Left = 224
    Top = 128
  end
  object SaveD: TSaveDialog
    DefaultExt = 'SQL'
    Filter = 'SQL Files (*.sql)|*.sql'
    Options = ['ofOverwritePrompt', 'ofHideReadOnly', 'ofPathMustExist', 'ofEnableSizing']
    Left = 72
    Top = 78
  end
end
