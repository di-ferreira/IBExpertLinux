object frmSaveSpec: TfrmSaveSpec
  Left = 200
  Top = 108
  BorderStyle = bsDialog
  ClientHeight = 159
  ClientWidth = 351
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object bvlButtons: TBevel
    Left = 0
    Top = 118
    Width = 351
    Height = 41
    Shape = bsTopLine
  end
  object lblSpecName: TLabel
    Left = 8
    Top = 16
    Width = 153
    Height = 13
    AutoSize = False
    Caption = 'SpecName'
  end
  object lblFileName: TLabel
    Left = 8
    Top = 64
    Width = 153
    Height = 13
    AutoSize = False
    Caption = 'FileName'
  end
  object btnOk: TButton
    Left = 192
    Top = 128
    Width = 75
    Height = 25
    Caption = 'OK'
    ModalResult = 1
    TabOrder = 0
  end
  object btnCancel: TButton
    Left = 272
    Top = 128
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
  end
  object edSpecName: TEdit
    Left = 16
    Top = 32
    Width = 329
    Height = 21
    TabOrder = 2
  end
  object edFileName: TEdit
    Left = 16
    Top = 80
    Width = 305
    Height = 21
    TabOrder = 3
  end
  object btnFileName: TButton
    Left = 323
    Top = 80
    Width = 21
    Height = 21
    Caption = '...'
    TabOrder = 4
    OnClick = btnFileNameClick
  end
end
