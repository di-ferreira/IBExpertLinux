object frmCompile: TfrmCompile
  Left = 389
  Top = 273
  HelpContext = 3100
  AutoScroll = False
  BorderIcons = ['biSystemMenu']
  Caption = 'CompileForm'
  ClientHeight = 434
  ClientWidth = 492
  Color = clBtnFace
  DefaultMonitor = dmMainForm
  ParentFont = True
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnDeactivate = FormDeactivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter: TdfsSplitter
    Left = 0
    Top = 130
    Width = 492
    Height = 4
    Cursor = crVSplit
    Align = alTop
    ResizeStyle = rsUpdate
    Maximized = False
    Minimized = False
    ButtonCursor = crDefault
  end
  object Panel4: TPanel
    Left = 0
    Top = 134
    Width = 492
    Height = 263
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel4'
    TabOrder = 2
    object Splitter1: TdfsSplitter
      Left = 0
      Top = 169
      Width = 492
      Height = 3
      Cursor = crVSplit
      Align = alBottom
      ResizeStyle = rsUpdate
      Maximized = False
      Minimized = False
      ButtonCursor = crDefault
    end
    object pStatementSource: TPanel
      Left = 0
      Top = 0
      Width = 492
      Height = 18
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = ' Statement source'
      Color = clBtnShadow
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clCaptionText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = ['fsBold']
      ParentFont = False
      TabOrder = 0
    end
    object StmtFm: TEditFrame
      Top = 18
      Width = 492
      Height = 151
      TabOrder = 1
      object EditM: TSQLMemo
        Width = 492
        Height = 133
        WantTabs = False
        OnExit = StmtFmEditMExit
        OnLink = StmtFmEditMLink
      end
      object pIncSearch: TPanel
        Top = 133
        Width = 492
      end
    end
    object ErrorM: TdxMemo
      Tag = 1000
      Left = 0
      Top = 172
      Width = 492
      Align = alBottom
      TabOrder = 2
      ReadOnly = True
      StyleController = IBEMainForm.MainSC
      Height = 91
      StoredValues = 64
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 492
    Height = 130
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 0
    object pStatementsList: TPanel
      Left = 0
      Top = 0
      Width = 492
      Height = 18
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = ' Statements list'
      Color = clBtnShadow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clCaptionText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = ['fsBold']
      ParentFont = False
      TabOrder = 0
    end
    object tl: TdxTreeList
      Left = 0
      Top = 18
      Width = 492
      Height = 112
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
      Options = ['aoColumnSizing', 'aoColumnMoving', 'aoTabThrough', 'aoDrawEndEllipsis', 'aoAutoWidth', 'aoHideFocusRect']
      OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSortRefresh']
      TreeLineColor = clGrayText
      ShowGrid = True
      ShowRoot = False
      GridLineColor = clSilver
      OnDblClick = tlDblClick
      OnKeyPress = tlKeyPress
      OnCustomDrawCell = tlCustomDrawCell
      OnChangeNode = tlChangeNode
      object tlcOperation: TdxTreeListColumn
        Caption = 'Operation'
        Width = 309
        BandIndex = 0
        RowIndex = 0
      end
      object tlcResult: TdxTreeListColumn
        Caption = 'Result'
        Width = 141
        BandIndex = 0
        RowIndex = 0
      end
      object tlcCopy: TdxTreeListColumn
        Alignment = taLeftJustify
        Caption = 'Copy'
        HeaderAlignment = taCenter
        Width = 40
        BandIndex = 0
        RowIndex = 0
      end
      object tlcError: TdxTreeListColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 397
    Width = 492
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object bCopy: TButton
      Left = 127
      Top = 8
      Width = 100
      Height = 24
      Anchors = ['akLeft', 'akBottom']
      Caption = 'C&opy Info'
      TabOrder = 0
      Visible = False
      OnClick = bCopyClick
    end
    object bCommit: TButton
      Left = 315
      Top = 8
      Width = 83
      Height = 24
      Anchors = ['akRight', 'akBottom']
      Caption = '&Commit'
      ModalResult = 1
      TabOrder = 1
      Visible = False
      OnClick = bCommitClick
    end
    object bRollback: TButton
      Left = 404
      Top = 8
      Width = 83
      Height = 24
      Anchors = ['akRight', 'akBottom']
      Caption = '&Rollback'
      ModalResult = 2
      TabOrder = 2
      Visible = False
    end
    object bCopyScript: TButton
      Left = 5
      Top = 8
      Width = 116
      Height = 24
      Action = actCopyScript
      TabOrder = 3
    end
  end
  object q_COMPILE: TFIBQuery
    GoToFirstRecordOnExecute = False
    ParamCheck = False
    Transaction = ts_COMPILE
    Left = 40
    Top = 280
  end
  object ts_COMPILE: TFIBTransaction
    Active = False
    Timeout = 155517768
    TimeoutAction = TARollback
    Left = 72
    Top = 280
  end
  object ActionList1: TActionList
    Left = 368
    Top = 48
    object actLocalize: TAction
      Caption = 'Localize'
      ShortCut = 57420
      OnExecute = actLocalizeExecute
    end
    object actCopyScript: TAction
      Caption = 'Copy Script'
      OnExecute = actCopyScriptExecute
    end
    object actExit: TAction
      Caption = 'Exit'
      ShortCut = 27
      OnExecute = actExitExecute
    end
  end
  object SepDB: TpFIBDatabase
    ClientLibName = 'gds32.dll'
    SQLDialect = 1
    SQLDAVersion = 1
    Timeout = 155806776
    WaitForRestoreConnect = 155806776
    Left = 208
    Top = 80
  end
end
