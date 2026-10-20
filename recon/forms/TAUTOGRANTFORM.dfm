object AutograntForm: TAutograntForm
  Left = 414
  Top = 352
  HelpContext = 9900
  BorderIcons = ['biSystemMenu']
  BorderStyle = bsSingle
  Caption = 'Autogrant privileges'
  ClientHeight = 90
  ClientWidth = 413
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 7
    Width = 54
    Height = 13
    Caption = '                  '
  end
  object pb: TProgressBar
    Left = 8
    Top = 26
    Width = 397
    Height = 20
    Anchors = ['akLeft', 'akTop', 'akRight']
    Min = 0
    Max = 100
    TabOrder = 0
  end
  object Button1: TButton
    Left = 162
    Top = 57
    Width = 89
    Height = 25
    Caption = 'Cancel'
    Default = True
    TabOrder = 1
    OnClick = Button1Click
  end
  object cbType: TdxPickEdit
    Left = 8
    Top = 26
    Width = 399
    TabOrder = 2
    Visible = False
    Anchors = ['akLeft', 'akTop', 'akRight']
    StyleController = IBEMainForm.MainSC
    Text = 'cbType'
    DropDownListStyle = True
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 200
    OnTimer = Timer1Timer
    Left = 224
    Top = 8
  end
  object EM: TpFIBExtract
    Options = ['eopExtractDescriptions', 'eopExtractIndices', 'eopExtractReferences', 'eopExtractChecks', 'eopExtractData', 'eopIncludeComments']
    CommitAfter = 0
    ReplaceTabs = True
    TabWidth = 2
    ExtractBlobs = True
    DateFormat = 'YYYY-MM-DD'
    DateTimeFormat = 'YYYY-MM-DD HH:NN:SS'
    Left = 172
    Top = 9
  end
end
