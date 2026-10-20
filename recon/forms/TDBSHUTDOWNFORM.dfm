object DBShutdownForm: TDBShutdownForm
  Left = 327
  Top = 266
  HelpContext = 7900
  AutoScroll = False
  BorderIcons = ['biSystemMenu']
  Caption = 'Shutdown Database'
  ClientHeight = 125
  ClientWidth = 497
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object sohoLabel1: TLabel
    Left = 30
    Top = 11
    Width = 46
    Height = 13
    Alignment = taRightJustify
    Caption = 'Database'
    Transparent = True
  end
  object Bevel1: TBevel
    Left = 0
    Top = 29
    Width = 499
    Height = 10
    Anchors = ['akLeft', 'akTop', 'akRight']
    Shape = bsBottomLine
  end
  object Label1: TLabel
    Left = 5
    Top = 100
    Width = 80
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Wait (sec)'
  end
  object cbDatabases: TComboBox
    Left = 80
    Top = 7
    Width = 415
    Height = 21
    Anchors = ['akLeft', 'akTop', 'akRight']
    ItemHeight = 13
    TabOrder = 0
    OnClick = cbDatabasesClick
  end
  object rgOptions: TRadioGroup
    Left = 5
    Top = 47
    Width = 488
    Height = 39
    Caption = '  Options  '
    Columns = 3
    ItemIndex = 0
    Items.Strings = ['Forced', 'Deny Transaction', 'Deny Attachment']
    TabOrder = 1
  end
  object seWait: TdxSpinEdit
    Left = 91
    Top = 98
    Width = 67
    TabOrder = 2
    StyleController = IBEMainForm.MainSC
  end
  object bShutdown: TButton
    Left = 337
    Top = 96
    Width = 75
    Height = 24
    Anchors = ['akRight', 'akBottom']
    Caption = 'Shutdown'
    Default = True
    ModalResult = 1
    TabOrder = 3
  end
  object bCancel: TButton
    Left = 417
    Top = 96
    Width = 75
    Height = 24
    Anchors = ['akRight', 'akBottom']
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 4
  end
  object ConfigService: TpFIBConfigService
    ClientLibName = 'gds32.dll'
    LoginPrompt = False
    Left = 152
    Top = 8
  end
end
