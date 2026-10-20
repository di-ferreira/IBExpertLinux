object DBErrorForm: TDBErrorForm
  Left = 292
  Top = 185
  HelpContext = 7000
  BorderIcons = ['biSystemMenu']
  BorderStyle = bsSingle
  Caption = 'Database Error'
  ClientHeight = 401
  ClientWidth = 583
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 6
    Top = 6
    Width = 48
    Height = 13
    Caption = 'SQL Text:'
  end
  object Label2: TLabel
    Left = 6
    Top = 190
    Width = 71
    Height = 13
    Caption = 'Error Message:'
  end
  object SQLMemo: TMemo
    Left = 5
    Top = 23
    Width = 572
    Height = 161
    Lines.Strings = ['']
    ReadOnly = True
    TabOrder = 0
  end
  object ErrorMemo: TMemo
    Tag = 1000
    Left = 5
    Top = 207
    Width = 572
    Height = 160
    ReadOnly = True
    TabOrder = 1
  end
  object bCopy: TButton
    Left = 5
    Top = 373
    Width = 160
    Height = 24
    Caption = 'C&opy information to clipboard'
    TabOrder = 2
    Visible = False
    OnClick = bCopyClick
  end
  object bRollback: TButton
    Left = 503
    Top = 373
    Width = 75
    Height = 24
    Caption = 'Close'
    ModalResult = 2
    TabOrder = 3
  end
end
