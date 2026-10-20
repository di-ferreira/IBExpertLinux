object frxFormatEditorForm: TfrxFormatEditorForm
  Left = 196
  Top = 109
  BorderStyle = bsDialog
  Caption = 'Display Format'
  ClientHeight = 264
  ClientWidth = 316
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnHide = FormHide
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object OkB: TButton
    Left = 156
    Top = 232
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
  end
  object CancelB: TButton
    Left = 236
    Top = 232
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
  end
  object CategoryL: TGroupBox
    Left = 4
    Top = 4
    Width = 151
    Height = 137
    Caption = 'Category'
    TabOrder = 2
    object CategoryLB: TListBox
      Left = 8
      Top = 20
      Width = 133
      Height = 105
      Style = lbOwnerDrawFixed
      ItemHeight = 14
      TabOrder = 0
      OnClick = CategoryLBClick
    end
  end
  object FormatL: TGroupBox
    Left = 160
    Top = 4
    Width = 151
    Height = 137
    Caption = 'Format'
    TabOrder = 3
    object FormatLB: TListBox
      Left = 8
      Top = 20
      Width = 133
      Height = 105
      Style = lbOwnerDrawFixed
      ItemHeight = 14
      TabOrder = 0
      OnClick = FormatLBClick
      OnDrawItem = FormatLBDrawItem
    end
  end
  object GroupBox1: TGroupBox
    Left = 4
    Top = 146
    Width = 307
    Height = 73
    TabOrder = 4
    object FormatStrL: TLabel
      Left = 8
      Top = 16
      Width = 68
      Height = 13
      Caption = 'Format string:'
    end
    object SeparatorL: TLabel
      Left = 8
      Top = 44
      Width = 90
      Height = 13
      Caption = 'Decimal separator:'
    end
    object FormatE: TEdit
      Left = 152
      Top = 12
      Width = 133
      Height = 21
      TabOrder = 0
    end
    object SeparatorE: TEdit
      Left = 152
      Top = 40
      Width = 25
      Height = 21
      TabOrder = 1
      Text = ','
    end
  end
end
