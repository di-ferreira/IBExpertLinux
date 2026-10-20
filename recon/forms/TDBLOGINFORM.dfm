object DBLoginForm: TDBLoginForm
  Left = 666
  Top = 429
  BorderIcons = ['biSystemMenu']
  BorderStyle = bsDialog
  Caption = 'IBExpert/IBEScript database login'
  ClientHeight = 127
  ClientWidth = 513
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lConnectionString: TLabel
    Left = 8
    Top = 8
    Width = 496
    Height = 13
    Anchors = ['akLeft', 'akTop', 'akRight']
    AutoSize = False
    Caption = 'lConnectionString'
  end
  object Label1: TLabel
    Left = 8
    Top = 40
    Width = 51
    Height = 13
    Caption = 'User name'
  end
  object Label2: TLabel
    Left = 176
    Top = 40
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object Label3: TLabel
    Left = 344
    Top = 40
    Width = 21
    Height = 13
    Caption = 'Role'
  end
  object Bevel1: TBevel
    Left = 8
    Top = 32
    Width = 497
    Height = 9
    Anchors = ['akLeft', 'akTop', 'akRight']
    Shape = bsTopLine
  end
  object eUserName: TEdit
    Left = 8
    Top = 60
    Width = 160
    Height = 21
    TabOrder = 0
  end
  object ePassword: TEdit
    Left = 176
    Top = 60
    Width = 160
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
  end
  object eRole: TEdit
    Left = 344
    Top = 60
    Width = 160
    Height = 21
    TabOrder = 2
  end
  object Button1: TButton
    Left = 422
    Top = 92
    Width = 83
    Height = 25
    Anchors = ['akRight', 'akBottom']
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 4
  end
  object cbDisplayPassword: TCheckBox
    Left = 7
    Top = 95
    Width = 306
    Height = 17
    Caption = 'Display password'
    TabOrder = 3
    OnClick = cbDisplayPasswordClick
  end
  object Button2: TButton
    Left = 326
    Top = 92
    Width = 83
    Height = 25
    Anchors = ['akRight', 'akBottom']
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 5
  end
  object ActionList1: TActionList
    Left = 256
    Top = 16
    object actExit: TAction
      Caption = 'Exit'
      ShortCut = 27
      OnExecute = actExitExecute
    end
  end
end
