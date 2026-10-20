object frxPasswordForm: TfrxPasswordForm
  Left = 475
  Top = 355
  BorderStyle = bsDialog
  Caption = 'Password'
  ClientHeight = 99
  ClientWidth = 249
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PasswordL: TLabel
    Left = 4
    Top = 8
    Width = 241
    Height = 13
    AutoSize = False
    Caption = 'Enter the password:'
  end
  object OkB: TButton
    Left = 88
    Top = 68
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 1
  end
  object CancelB: TButton
    Left = 168
    Top = 68
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 2
  end
  object PasswordE: TEdit
    Left = 4
    Top = 28
    Width = 241
    Height = 21
    PasswordChar = '*'
    TabOrder = 0
  end
end
