object TrialForm: TTrialForm
  Left = 342
  Top = 341
  Width = 446
  Height = 132
  HelpContext = 8600
  BorderIcons = []
  Caption = 'You must register IB Expert!'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Tag = 1000
    Left = 0
    Top = 0
    Width = 438
    Height = 62
    Align = alTop
    Alignment = taCenter
    BorderStyle = bsNone
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = ['fsBold']
    Lines.Strings = ['', 'You are using unregistered version of IB Expert! ', 'Please, register your copy of IB Expert or restart it!']
    ParentColor = True
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
  end
  object sohoBitBtn1: TButton
    Left = 5
    Top = 69
    Width = 116
    Height = 24
    Caption = 'Close IB Expert'
    ModalResult = 2
    TabOrder = 1
  end
  object sohoBitBtn2: TButton
    Left = 315
    Top = 69
    Width = 118
    Height = 24
    Caption = 'Register IB Expert'
    Default = True
    ModalResult = 1
    TabOrder = 2
  end
end
