object DBOnlineForm: TDBOnlineForm
  Left = 357
  Top = 320
  HelpContext = 8000
  BorderIcons = ['biSystemMenu']
  BorderStyle = bsSingle
  Caption = 'Bring Database Online'
  ClientHeight = 66
  ClientWidth = 373
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
  object cbDatabases: TComboBox
    Left = 80
    Top = 7
    Width = 289
    Height = 21
    Anchors = ['akLeft', 'akTop', 'akRight']
    ItemHeight = 13
    TabOrder = 0
    OnClick = cbDatabasesClick
  end
  object bBringOnline: TButton
    Left = 197
    Top = 37
    Width = 91
    Height = 24
    Anchors = ['akRight', 'akBottom']
    Caption = 'Bring Online'
    Default = True
    ModalResult = 1
    TabOrder = 1
  end
  object bCancel: TButton
    Left = 294
    Top = 37
    Width = 75
    Height = 24
    Anchors = ['akRight', 'akBottom']
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 2
  end
  object ConfigService: TpFIBConfigService
    ClientLibName = 'gds32.dll'
    LoginPrompt = False
    Left = 152
    Top = 8
  end
end
