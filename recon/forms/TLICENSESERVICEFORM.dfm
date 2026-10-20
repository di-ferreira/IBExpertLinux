object LicenseServiceForm: TLicenseServiceForm
  Left = 388
  Top = 271
  HelpContext = 14800
  AutoScroll = False
  BorderIcons = ['biSystemMenu']
  Caption = 'Server Activation Certificates'
  ClientHeight = 306
  ClientWidth = 530
  Color = clBtnFace
  Constraints.MinHeight = 340
  Constraints.MinWidth = 500
  DefaultMonitor = dmMainForm
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object TL: TdxTreeList
    Left = 0
    Top = 28
    Width = 443
    Height = 219
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
    Options = ['aoColumnSizing', 'aoTabThrough', 'aoRowSelect', 'aoDrawEndEllipsis', 'aoHideFocusRect', 'aoAutoSort']
    OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSortRefresh']
    TreeLineColor = clGrayText
    ShowGrid = True
    ShowRoot = False
    GridLineColor = clSilver
    object tlcKey: TdxTreeListColumn
      Caption = 'Certificate Key'
      DisableCustomizing = True
      DisableDragging = True
      DisableEditor = True
      Width = 88
      BandIndex = 0
      RowIndex = 0
    end
    object tlcID: TdxTreeListColumn
      Caption = 'Certificate ID'
      DisableCustomizing = True
      DisableDragging = True
      DisableEditor = True
      Width = 220
      BandIndex = 0
      RowIndex = 0
    end
    object tlcDesc: TdxTreeListColumn
      Caption = 'Description'
      DisableCustomizing = True
      DisableDragging = True
      DisableEditor = True
      Width = 287
      BandIndex = 0
      RowIndex = 0
    end
  end
  object Panel4: TPanel
    Left = 443
    Top = 28
    Width = 87
    Height = 219
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 2
    object bDelUser: TButton
      Tag = -636
      Left = 6
      Top = 1
      Width = 75
      Height = 25
      Action = actRemove
      Anchors = ['akTop', 'akRight']
      TabOrder = 0
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 530
    Height = 28
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object lDatabase: TLabel
      Left = 8
      Top = 7
      Width = 113
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '&Server'
    end
    object cbServers: TdxPickEdit
      Left = 125
      Top = 3
      Width = 317
      TabOrder = 0
      Anchors = ['akLeft', 'akTop', 'akRight']
      StyleController = IBEMainForm.MainSC
      OnChange = cbServersChange
      DropDownRows = 15
      DropDownListStyle = True
    end
  end
  object P: TPanel
    Left = 0
    Top = 247
    Width = 530
    Height = 59
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    object Bevel1: TBevel
      Left = 0
      Top = 0
      Width = 530
      Height = 7
      Align = alTop
      Shape = bsBottomLine
    end
    object Label1: TLabel
      Left = 7
      Top = 11
      Width = 93
      Height = 13
      Caption = 'New Certificate Key'
    end
    object lID: TLabel
      Left = 167
      Top = 11
      Width = 86
      Height = 13
      Caption = 'New Certificate ID'
    end
    object bAdd: TButton
      Tag = -643
      Left = 450
      Top = 28
      Width = 75
      Height = 23
      Action = actAdd
      Anchors = ['akTop', 'akRight']
      TabOrder = 2
    end
    object eKey: TdxEdit
      Left = 7
      Top = 29
      Width = 145
      TabOrder = 0
      StyleController = IBEMainForm.MainSC
    end
    object eID: TdxEdit
      Left = 167
      Top = 29
      Width = 277
      TabOrder = 1
      Anchors = ['akLeft', 'akTop', 'akRight']
      StyleController = IBEMainForm.MainSC
    end
  end
  object LS: TpFIBLicensingService
    ClientLibName = 'gds32.dll'
    LoginPrompt = False
    Left = 384
    Top = 56
  end
  object SP: TpFIBServerProperties
    Tag = 999
    ClientLibName = 'gds32.dll'
    LoginPrompt = False
    Options = ['Database', 'ConfigParameters', 'Version']
    Left = 384
    Top = 88
  end
  object ActionList1: TActionList
    OnUpdate = ActionList1Update
    Left = 480
    Top = 96
    object actAdd: TAction
      Caption = 'Add'
      Hint = 'Add'
      OnExecute = actAddExecute
    end
    object actRemove: TAction
      Caption = 'Remove'
      ShortCut = 46
      OnExecute = actRemoveExecute
    end
  end
end
