object LoginFrm: TLoginFrm
  Left = 522
  Top = 319
  HelpContext = 14100
  BorderStyle = bsDialog
  Caption = 'Database Login'
  ClientHeight = 127
  ClientWidth = 436
  Color = clBtnFace
  DefaultMonitor = dmMainForm
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 6
    Top = 7
    Width = 26
    Height = 13
    Caption = 'Login'
  end
  object Label2: TLabel
    Left = 150
    Top = 8
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object Label3: TLabel
    Left = 294
    Top = 8
    Width = 22
    Height = 13
    Caption = 'Role'
  end
  object Panel1: TPanel
    Left = 0
    Top = 86
    Width = 436
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 4
    object Bevel1: TBevel
      Left = 0
      Top = 0
      Width = 436
      Height = 6
      Align = alTop
      Shape = bsBottomLine
    end
    object cbShowPassword: TdxCheckEdit
      Left = 3
      Top = 12
      Width = 248
      TabOrder = 0
      Anchors = ['akLeft', 'akTop', 'akRight']
      Caption = 'Show password'
      StyleController = IBEMainForm.MainCheckSC
      OnChange = cbShowPasswordChange
    end
    object Button1: TButton
      Left = 276
      Top = 11
      Width = 75
      Height = 25
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 1
    end
    object Button2: TButton
      Left = 356
      Top = 11
      Width = 75
      Height = 25
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 2
    end
  end
  object eUserName: TdxEdit
    Left = 6
    Top = 26
    Width = 138
    TabOrder = 0
    StyleController = IBEMainForm.MainSC
  end
  object ePassword: TdxEdit
    Left = 150
    Top = 26
    Width = 138
    TabOrder = 1
    PasswordChar = '*'
    StyleController = IBEMainForm.MainSC
  end
  object eRole: TdxEdit
    Left = 293
    Top = 26
    Width = 138
    TabOrder = 2
    StyleController = IBEMainForm.MainSC
  end
  object cbNoDbTriggers: TdxCheckEdit
    Left = 3
    Top = 58
    Width = 427
    Enabled = False
    TabOrder = 3
    Anchors = ['akLeft', 'akTop', 'akRight']
    Caption = 'Prevent database/transaction triggers from firing'
    StyleController = IBEMainForm.MainCheckSC
  end
  object ActionList1: TActionList
    Left = 112
    Top = 32
    object actExit: TAction
      Caption = 'Exit'
      ShortCut = 27
      OnExecute = actExitExecute
    end
  end
end
