object dxfmPageNumberFormat: TdxfmPageNumberFormat
  Left = 392
  Top = 174
  ActiveControl = cbxPageNumberingFormat
  BorderStyle = bsDialog
  Caption = 'Change Page Number Format'
  ClientHeight = 157
  ClientWidth = 246
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object btnOK: TButton
    Left = 5
    Top = 129
    Width = 75
    Height = 23
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 1
  end
  object btnCancel: TButton
    Left = 86
    Top = 129
    Width = 75
    Height = 23
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 2
  end
  object btnHelp: TButton
    Left = 167
    Top = 129
    Width = 75
    Height = 23
    Caption = '&Help'
    TabOrder = 3
  end
  object GroupBox1: TGroupBox
    Left = 4
    Top = -1
    Width = 238
    Height = 122
    TabOrder = 0
    object lblPageNumberFormat: TLabel
      Left = 6
      Top = 24
      Width = 78
      Height = 13
      Caption = 'Number &Format:'
      FocusControl = cbxPageNumberingFormat
      OnClick = lblPageNumberFormatClick
    end
    object bvlStartAtHolder: TBevel
      Left = 110
      Top = 47
      Width = 120
      Height = 22
      Visible = False
    end
    object lblStartAt: TLabel
      Left = 7
      Top = 52
      Width = 42
      Height = 13
      Caption = 'Start &At:'
      OnClick = lblStartAtClick
    end
    object Bevel1: TBevel
      Left = 9
      Top = 76
      Width = 220
      Height = 5
      Shape = bsBottomLine
    end
    object cbxPageNumberingFormat: TComboBox
      Left = 110
      Top = 20
      Width = 120
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      Items.Strings = ['1, 2, 3, 3, 4, ...', 'a, b, c, d, e, ...', 'A, B, C, D, E, ...', 'i, ii, iii, iv, v, ...', 'I, II, III, IV, V, ...']
      TabOrder = 0
      OnChange = cbxPageNumberingFormatChange
    end
    object btnDefault: TButton
      Left = 138
      Top = 91
      Width = 92
      Height = 23
      Caption = '&Default ...'
      TabOrder = 1
      OnClick = btnDefaultClick
    end
  end
end
