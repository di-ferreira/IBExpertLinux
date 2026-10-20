object TrialForm2: TTrialForm2
  Left = 334
  Top = 297
  HelpContext = 8700
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Trial period is expired!'
  ClientHeight = 86
  ClientWidth = 444
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 441
    Height = 49
    Alignment = taCenter
    AutoSize = False
    Caption = '\r\nWe think you should register your copy of IB Expert!'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = ['fsBold']
    ParentFont = False
    WordWrap = True
  end
  object pb: TProgressBar
    Left = 4
    Top = 62
    Width = 437
    Height = 20
    Min = 0
    Max = 30
    Position = 30
    TabOrder = 0
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 360
    Top = 32
  end
end
