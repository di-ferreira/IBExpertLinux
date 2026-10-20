object dlgLnkProp: TdlgLnkProp
  Left = 326
  Top = 192
  Width = 341
  Height = 156
  BorderStyle = bsSizeToolWin
  Caption = 'Link properties'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCanResize = FormCanResize
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblCaption: TLabel
    Left = 0
    Top = 0
    Width = 333
    Height = 25
    Align = alTop
    Alignment = taCenter
    AutoSize = False
    Caption = 'lblCaption'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = ['fsBold']
    ParentFont = False
  end
  object lblLeftField: TLabel
    Left = 72
    Top = 32
    Width = 65
    Height = 16
    Alignment = taRightJustify
    Caption = 'lblLeftField'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lblRightField: TLabel
    Left = 200
    Top = 32
    Width = 75
    Height = 16
    Caption = 'lblRightField'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object btnOK: TButton
    Left = 80
    Top = 96
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
    OnClick = btnOKClick
  end
  object btnCancel: TButton
    Left = 195
    Top = 96
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
  end
  object cbConditions: TComboBox
    Left = 144
    Top = 30
    Width = 49
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    Text = 'cbConditions'
    Items.Strings = ['=', '>', '<', '>=', '<=', '<>']
  end
  object btnLeftOuter: TCheckBox
    Left = 0
    Top = 64
    Width = 169
    Height = 17
    Caption = 'Include all'
    TabOrder = 3
  end
  object btnRightOuter: TCheckBox
    Left = 182
    Top = 64
    Width = 147
    Height = 17
    BiDiMode = bdLeftToRight
    Caption = 'Include All'
    ParentBiDiMode = False
    TabOrder = 4
  end
end
