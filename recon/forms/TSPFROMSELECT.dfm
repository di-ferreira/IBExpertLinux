object SPFromSelect: TSPFromSelect
  Left = 443
  Top = 304
  HelpContext = 9400
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'SP from SELECT'
  ClientHeight = 145
  ClientWidth = 248
  Color = clBtnFace
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
  object rg: TRadioGroup
    Left = 8
    Top = 8
    Width = 232
    Height = 65
    Caption = ' Select into '
    ItemIndex = 0
    Items.Strings = ['Return parameters', 'Local variables']
    TabOrder = 0
  end
  object Button1: TButton
    Left = 85
    Top = 114
    Width = 75
    Height = 25
    Anchors = ['akLeft', 'akBottom']
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 1
  end
  object Button2: TButton
    Left = 166
    Top = 114
    Width = 75
    Height = 25
    Anchors = ['akLeft', 'akBottom']
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 2
  end
  object cbParams: TdxCheckEdit
    Left = 4
    Top = 80
    Width = 233
    TabOrder = 3
    Caption = 'Query params as input params'
    StyleController = IBEMainForm.MainCheckSC
  end
end
