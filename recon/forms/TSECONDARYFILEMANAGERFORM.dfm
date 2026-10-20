object SecondaryFileManagerForm: TSecondaryFileManagerForm
  Left = 340
  Top = 266
  Width = 572
  Height = 280
  HelpContext = 15000
  BorderIcons = ['biSystemMenu']
  Caption = 'Secondary Files Manager'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 564
    Height = 32
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object lDatabase: TLabel
      Left = 8
      Top = 8
      Width = 113
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '&Database'
    end
    object cbDatabases: TdxPickEdit
      Left = 125
      Top = 4
      Width = 437
      TabOrder = 0
      Anchors = ['akLeft', 'akTop', 'akRight']
      StyleController = IBEMainForm.MainSC
      OnChange = cbDatabasesChange
      DropDownRows = 15
      DropDownListStyle = True
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 213
    Width = 564
    Height = 33
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object bApply: TButton
      Left = 414
      Top = 6
      Width = 71
      Height = 24
      Action = actCompile
      Anchors = ['akRight', 'akBottom']
      TabOrder = 0
    end
    object CancelB: TButton
      Left = 493
      Top = 6
      Width = 68
      Height = 24
      Anchors = ['akRight', 'akBottom']
      Cancel = True
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
    end
    object bNew: TButton
      Left = 4
      Top = 6
      Width = 75
      Height = 25
      Action = actNewFile
      TabOrder = 2
    end
  end
  object TL: TdxTreeList
    Left = 0
    Top = 32
    Width = 564
    Height = 181
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
    LookAndFeel = lfFlat
    Options = ['aoColumnSizing', 'aoTabThrough', 'aoRowSelect', 'aoDrawEndEllipsis', 'aoHideFocusRect']
    OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSortRefresh']
    TreeLineColor = clGrayText
    ShowGrid = True
    ShowRoot = False
    GridLineColor = clSilver
    OnKeyDown = TLKeyDown
    OnKeyPress = TLKeyPress
    OnChangeNode = TLChangeNode
    object tlcNew: TdxTreeListColumn
      Visible = False
      BandIndex = 0
      RowIndex = 0
    end
    object tlcFile: TdxTreeListColumn
      Caption = 'File Name'
      MaxLength = 256
      Width = 366
      BandIndex = 0
      RowIndex = 0
    end
    object tlcStart: TdxTreeListSpinColumn
      Caption = 'File Start'
      Width = 86
      BandIndex = 0
      RowIndex = 0
      Increment = 100
      MaxValue = 1000000
    end
    object tlcLength: TdxTreeListSpinColumn
      Caption = 'File Length'
      Width = 76
      BandIndex = 0
      RowIndex = 0
      Increment = 100
      MaxValue = 1000000
    end
  end
  object SecFilesActions: TActionList
    Left = 440
    Top = 72
    object actExit: TAction
      Caption = 'Exit'
      ShortCut = 27
      OnExecute = actExitExecute
    end
    object actNewFile: TAction
      Caption = 'New File'
      ShortCut = 45
      OnExecute = actNewFileExecute
    end
    object actCompile: TAction
      Caption = 'Apply'
      OnExecute = actCompileExecute
      OnUpdate = actCompileUpdate
    end
  end
end
