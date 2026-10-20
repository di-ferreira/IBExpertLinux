object SelectDBObjectsForm: TSelectDBObjectsForm
  Left = 502
  Top = 236
  HelpContext = 9000
  ActiveControl = cbObjType
  AutoScroll = False
  BorderIcons = ['biSystemMenu']
  Caption = 'Select database objects'
  ClientHeight = 391
  ClientWidth = 421
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 421
    Height = 51
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 6
      Top = 6
      Width = 173
      Height = 13
      AutoSize = False
      Caption = '&Objects'
      FocusControl = cbObjType
    end
    object Label2: TLabel
      Left = 201
      Top = 6
      Width = 173
      Height = 13
      AutoSize = False
      Caption = '&Filter'
      FocusControl = eFilter
    end
    object cbObjType: TdxPickEdit
      Left = 5
      Top = 24
      Width = 189
      TabOrder = 0
      StyleController = IBEMainForm.MainSC
      OnChange = cbObjTypeChange
      DropDownRows = 20
      DropDownListStyle = True
      Items.Strings = ['Domains', 'Tables', 'Views', 'Procedures', 'Triggers', 'Generators', 'Exceptions', 'UDFs', 'Roles']
    end
    object eFilter: TdxEdit
      Left = 200
      Top = 24
      Width = 216
      TabOrder = 1
      OnEnter = eFilterEnter
      OnExit = eFilterExit
      OnKeyPress = eFilterKeyPress
      StyleController = IBEMainForm.MainSC
      OnChange = eFilterChange
    end
  end
  object tlObjects: TdxTreeList
    Left = 0
    Top = 51
    Width = 421
    Height = 305
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
    Images = IBEMainForm.ImageList
    LookAndFeel = lfFlat
    Options = ['aoColumnSizing', 'aoColumnMoving', 'aoTabThrough', 'aoRowSelect', 'aoMultiSelect', 'aoDrawEndEllipsis', 'aoAutoWidth', 'aoHideFocusRect', 'aoAutoSort']
    OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSortRefresh']
    TreeLineColor = clGrayText
    ShowGrid = True
    ShowRoot = False
    GridLineColor = clSilver
    OnDblClick = tlObjectsDblClick
    OnCustomDrawCell = tlObjectsCustomDrawCell
    object tlcName: TdxTreeListColumn
      Caption = 'Name'
      Width = 166
      BandIndex = 0
      RowIndex = 0
    end
    object tlcDesc: TdxTreeListSpinColumn
      Alignment = taLeftJustify
      Caption = 'Description'
      DisableCustomizing = True
      DisableEditor = True
      ReadOnly = True
      Width = 233
      BandIndex = 0
      RowIndex = 0
    end
    object tlcProj: TdxTreeListColumn
      Visible = False
      BandIndex = 0
      RowIndex = 0
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 356
    Width = 421
    Height = 35
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object bOK: TButton
      Left = 255
      Top = 7
      Width = 75
      Height = 25
      Anchors = ['akRight', 'akBottom']
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
    end
    object bCancel: TButton
      Left = 343
      Top = 7
      Width = 75
      Height = 25
      Anchors = ['akRight', 'akBottom']
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object Timer: TTimer
    Enabled = False
    Interval = 400
    OnTimer = TimerTimer
    Left = 344
    Top = 80
  end
end
