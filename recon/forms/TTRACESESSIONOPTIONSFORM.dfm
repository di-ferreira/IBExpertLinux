object TraceSessionOptionsForm: TTraceSessionOptionsForm
  Left = 502
  Top = 141
  Width = 773
  Height = 746
  BorderIcons = ['biSystemMenu', 'biMaximize']
  Caption = 'New trace session options'
  Color = clBtnFace
  Constraints.MinHeight = 500
  Constraints.MinWidth = 750
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefaultPosOnly
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 669
    Width = 757
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object Bevel2: TBevel
      Left = 0
      Top = 0
      Width = 757
      Height = 5
      Align = alTop
      Shape = bsBottomLine
    end
    object OkB: TButton
      Left = 521
      Top = 11
      Width = 75
      Height = 24
      Anchors = ['akRight', 'akBottom']
      Caption = 'OK'
      ModalResult = 1
      TabOrder = 0
    end
    object CancelB: TButton
      Left = 599
      Top = 11
      Width = 75
      Height = 24
      Anchors = ['akRight', 'akBottom']
      Cancel = True
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
    end
    object bHelp: TButton
      Left = 677
      Top = 11
      Width = 75
      Height = 24
      Anchors = ['akRight', 'akBottom']
      Cancel = True
      Caption = 'Help'
      TabOrder = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 757
    Height = 147
    Align = alTop
    BevelOuter = bvNone
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object lServerName: TLabel
      Left = 11
      Top = 54
      Width = 61
      Height = 13
      Caption = 'Server name'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lSessionName: TLabel
      Left = 11
      Top = 8
      Width = 65
      Height = 13
      Caption = 'Session name'
    end
    object lClientLibName: TLabel
      Left = 11
      Top = 99
      Width = 82
      Height = 13
      Caption = 'Client Library File'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 281
      Top = 8
      Width = 51
      Height = 13
      Caption = 'User name'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 281
      Top = 54
      Width = 46
      Height = 13
      Caption = 'Password'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lOutputFileName: TLabel
      Left = 450
      Top = 51
      Width = 80
      Height = 13
      Caption = 'Output file name'
      Color = clBtnFace
      Enabled = False
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Bevel1: TBevel
      Left = 428
      Top = 6
      Width = 9
      Height = 135
      Anchors = ['akLeft', 'akTop', 'akBottom']
      Shape = bsRightLine
    end
    object peServerName: TdxPickEdit
      Left = 11
      Top = 70
      Width = 259
      TabOrder = 1
      StyleController = IBEMainForm.MainSC
      Text = 'localhost/3070'
      OnChange = peServerNameChange
      DropDownRows = 20
      Sorted = True
    end
    object eSessionName: TdxEdit
      Left = 11
      Top = 24
      Width = 259
      TabOrder = 0
      Text = 'IBE_%TIMESTAMP%'
      StyleController = IBEMainForm.MainSC
    end
    object eClientLibrary: TdxButtonEdit
      Left = 11
      Top = 115
      Width = 413
      TabOrder = 4
      StyleController = IBEMainForm.MainSC
      Text = 'fbclient.dll'
      Buttons = <
        item
          Default = True
          Glyph.Data = {3e020000424d3e0200000000000036000000280000000d0000000d00000001001800000000000802000000000000000000000000000000000000ff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ff00000000000000000000000000000000000000000000000000000000000000ff00ffff00ffff00ff00000000000000408080408080408080408080408080408080408080408080000000ff00ffff00ff0000000080ffff000000408080408080408080408080408080408080408080408080000000ff00ff0000000080ffff80ffff0000004080804080804080804080804080804080804080804080800000000000000080ffff80ffff80ffff0000000000000000000000000000000000000000000000000000000000000080ffff80ffff80ffff80ffff80ffff80ffff80ffff80ffff000000ff00ffff00ffff00ff0000000080ffff80ffff80ffff000000000000000000000000000000000000ff00ffff00ffff00ff00ff00ff000000000000000000ff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ff00ff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ff000000000000000000ff00ff00ff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ff000000000000ff00ff00ff00ffff00ffff00ffff00ffff00ff000000ff00ffff00ffff00ff000000ff00ff000000ff00ff00ff00ffff00ffff00ffff00ffff00ffff00ff000000000000000000ff00ffff00ffff00ffff00ff00}
          Kind = bkGlyph
          Width = 21
        end
      >
      OnButtonClick = eClientLibraryButtonClick
      ExistButtons = True
    end
    object eUserName: TdxEdit
      Left = 281
      Top = 24
      Width = 142
      TabOrder = 2
      Text = 'SYSDBA'
      StyleController = IBEMainForm.MainSC
    end
    object ePassword: TdxEdit
      Left = 281
      Top = 70
      Width = 142
      TabOrder = 3
      PasswordChar = '*'
      StyleController = IBEMainForm.MainSC
    end
    object cbOutputToScreen: TdxCheckEdit
      Left = 446
      Top = 23
      Width = 139
      TabOrder = 5
      Caption = 'Output to screen'
      StyleController = IBEMainForm.MainCheckSC
      State = cbsChecked
    end
    object cbOutputIntoFile: TdxCheckEdit
      Left = 584
      Top = 23
      Width = 169
      TabOrder = 6
      Caption = 'Output into file'
      StyleController = IBEMainForm.MainCheckSC
      OnChange = cbOutputIntoFileChange
    end
    object eOutputFileName: TdxButtonEdit
      Left = 449
      Top = 69
      Width = 299
      Enabled = False
      TabOrder = 7
      Anchors = ['akLeft', 'akTop', 'akRight']
      StyleController = IBEMainForm.MainSC
      Buttons = <
        item
          Default = True
          Glyph.Data = {3e020000424d3e0200000000000036000000280000000d0000000d00000001001800000000000802000000000000000000000000000000000000ff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ff00000000000000000000000000000000000000000000000000000000000000ff00ffff00ffff00ff00000000000000408080408080408080408080408080408080408080408080000000ff00ffff00ff0000000080ffff000000408080408080408080408080408080408080408080408080000000ff00ff0000000080ffff80ffff0000004080804080804080804080804080804080804080804080800000000000000080ffff80ffff80ffff0000000000000000000000000000000000000000000000000000000000000080ffff80ffff80ffff80ffff80ffff80ffff80ffff80ffff000000ff00ffff00ffff00ff0000000080ffff80ffff80ffff000000000000000000000000000000000000ff00ffff00ffff00ff00ff00ff000000000000000000ff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ff00ff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ff000000000000000000ff00ff00ff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ff000000000000ff00ff00ff00ffff00ffff00ffff00ffff00ff000000ff00ffff00ffff00ff000000ff00ff000000ff00ff00ff00ffff00ffff00ffff00ffff00ffff00ff000000000000000000ff00ffff00ffff00ffff00ff00}
          Kind = bkGlyph
          Visible = False
          Width = 21
        end
      >
      OnButtonClick = eOutputFileNameButtonClick
      ExistButtons = True
    end
    object cbAppendToExistingFile: TdxCheckEdit
      Left = 446
      Top = 93
      Width = 348
      Enabled = False
      TabOrder = 8
      Caption = 'Append to existing file'
      StyleController = IBEMainForm.MainCheckSC
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 147
    Width = 757
    Height = 522
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel3'
    TabOrder = 2
    object Panel4: TPanel
      Left = 0
      Top = 0
      Width = 757
      Height = 18
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = ' Trace session configuration'
      Color = clBtnShadow
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clCaptionText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = ['fsBold']
      ParentFont = False
      TabOrder = 0
    end
    object TL: TdxTreeList
      Left = 0
      Top = 46
      Width = 757
      Height = 476
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
      Images = IBEMainForm.MenuImages
      LookAndFeel = lfFlat
      Options = ['aoColumnSizing', 'aoEditing', 'aoTabThrough', 'aoImmediateEditor', 'aoDrawEndEllipsis', 'aoAutoWidth', 'aoStoreToRegistry']
      OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragExpand', 'aoAutoSearch']
      TreeLineColor = clGrayText
      GridLineColor = clSilver
      OnDblClick = TLDblClick
      OnEnter = TLEnter
      OnKeyPress = TLKeyPress
      OnCustomDrawCell = TLCustomDrawCell
      OnChangeColumn = TLChangeColumn
      OnChangeNode = TLChangeNode
      Constraints.MinWidth = 100
      object tlcOption: TdxTreeListColumn
        Caption = 'Option'
        DisableCustomizing = True
        DisableDragging = True
        DisableEditor = True
        ReadOnly = True
        VertAlignment = tlCenter
        Width = 632
        BandIndex = 0
        RowIndex = 0
      end
      object tlcOptionValue: TdxTreeListColumn
        Caption = 'Value'
        Width = 195
        BandIndex = 0
        RowIndex = 0
      end
      object tlcOptionName: TdxTreeListColumn
        Visible = False
        Width = 40
        BandIndex = 0
        RowIndex = 0
      end
    end
    object dxBarDockControl1: TdxBarDockControl
      Left = 0
      Top = 21
      Width = 757
      Height = 22
      Align = dalTop
      BarManager = dxBarManager1
    end
    object Panel5: TPanel
      Left = 0
      Top = 43
      Width = 757
      Height = 3
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 3
    end
    object Panel6: TPanel
      Left = 0
      Top = 18
      Width = 757
      Height = 3
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 4
    end
  end
  object OP: TOpenDialog
    DefaultExt = 'gdb'
    Filter = 'InterBase database (*.gdb)|*.gdb'
    Left = 180
    Top = 344
  end
  object ActionList1: TActionList
    Images = IBEMainForm.MenuImages
    Left = 352
    Top = 267
    object actAddDatabase: TAction
      Caption = 'Add database to be traced'
      Hint = 'Add database to be traced'
      ImageIndex = 67
      OnExecute = actAddDatabaseExecute
    end
    object actRemoveDatabase: TAction
      Caption = 'actRemoveDatabase'
      ImageIndex = 68
      OnExecute = actRemoveDatabaseExecute
      OnUpdate = actRemoveDatabaseUpdate
    end
    object actLoadConfig: TAction
      Caption = 'actLoadConfig'
      ImageIndex = 41
      OnExecute = actLoadConfigExecute
    end
    object actSaveConfig: TAction
      Caption = 'actSaveConfig'
      ImageIndex = 29
      OnExecute = actSaveConfigExecute
    end
  end
  object dxBarManager1: TdxBarManager
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
        BorderStyle = bbsNone
        Caption = 'Custom 1'
        DockControl = dxBarDockControl1
        DockedDockControl = dxBarDockControl1
        DockedLeft = 0
        DockedTop = 0
        FloatLeft = 560
        FloatTop = 424
        FloatClientWidth = 23
        FloatClientHeight = 22
        ItemLinks = None
        Name = 'Custom 1'
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
    Left = 184
    Top = 259
    DockControlHeights = [0, 0, 0, 0]
    object dxBarButton1: TdxBarButton
      Action = actLoadConfig
      Category = 0
      UnclickAfterDoing = False
    end
    object dxBarButton2: TdxBarButton
      Action = actSaveConfig
      Category = 0
      UnclickAfterDoing = False
    end
    object dxBarButton3: TdxBarButton
      Action = actAddDatabase
      Category = 0
      UnclickAfterDoing = False
    end
    object dxBarButton4: TdxBarButton
      Action = actRemoveDatabase
      Category = 0
      UnclickAfterDoing = False
    end
    object dxBarButton5: TdxBarButton
      Align = iaRight
      Caption = 'Save this config as default'
      Category = 0
      Hint = 'Save this config as default'
      Visible = ivAlways
      OnClick = dxBarButton5Click
    end
  end
  object SD: TSaveDialog
    DefaultExt = 'conf'
    Filter = 'Firebird config files (*.conf)|*.conf|All files (*.*)|*.*'
    Options = ['ofOverwritePrompt', 'ofHideReadOnly', 'ofEnableSizing']
    Left = 184
    Top = 315
  end
end
