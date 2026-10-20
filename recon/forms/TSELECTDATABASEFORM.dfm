object SelectDatabaseForm: TSelectDatabaseForm
  Left = 345
  Top = 284
  Width = 531
  Height = 367
  HelpContext = 13700
  BorderIcons = ['biSystemMenu']
  BorderStyle = bsSizeToolWin
  Caption = 'Select Database'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 296
    Width = 515
    Height = 35
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object Bevel3: TBevel
      Left = 0
      Top = 0
      Width = 515
      Height = 9
      Align = alTop
      Shape = bsTopLine
    end
    object OkB: TButton
      Left = 353
      Top = 7
      Width = 75
      Height = 24
      Anchors = ['akRight', 'akBottom']
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
    end
    object CancelB: TButton
      Left = 435
      Top = 7
      Width = 75
      Height = 24
      Anchors = ['akRight', 'akBottom']
      Cancel = True
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object DBTL: TdxTreeList
    Tag = -1000
    Left = 0
    Top = 0
    Width = 515
    Height = 296
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
    Options = ['aoColumnSizing', 'aoTabThrough', 'aoRowSelect', 'aoDrawEndEllipsis', 'aoAutoWidth']
    OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragExpand', 'aoAutoSearch']
    TreeLineColor = clGrayText
    ShowHeader = False
    GridLineColor = clSilver
    OnDblClick = DBTLDblClick
    OnKeyPress = DBTLKeyPress
    OnChangeNode = DBTLChangeNode
    Constraints.MinWidth = 100
    object DBTLColumn1: TdxTreeListColumn
      BandIndex = 0
      RowIndex = 0
    end
  end
end
