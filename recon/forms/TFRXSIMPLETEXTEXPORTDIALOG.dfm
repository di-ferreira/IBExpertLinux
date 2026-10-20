object frxSimpleTextExportDialog: TfrxSimpleTextExportDialog
  Left = 318
  Top = 174
  ActiveControl = OkB
  BorderStyle = bsDialog
  Caption = 'Export to Text'
  ClientHeight = 263
  ClientWidth = 277
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  Scaled = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object OkB: TButton
    Left = 118
    Top = 232
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
  end
  object CancelB: TButton
    Left = 198
    Top = 232
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
  end
  object GroupPageRange: TGroupBox
    Left = 4
    Top = 4
    Width = 269
    Height = 121
    Caption = ' Page range  '
    TabOrder = 2
    object DescrL: TLabel
      Left = 12
      Top = 82
      Width = 249
      Height = 29
      AutoSize = False
      Caption = 'Enter page numbers and/or page ranges, separated by commas. For example, 1,3,5-12'
      WordWrap = True
    end
    object AllRB: TRadioButton
      Left = 12
      Top = 20
      Width = 153
      Height = 17
      HelpContext = 108
      Caption = 'All'
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object CurPageRB: TRadioButton
      Left = 12
      Top = 40
      Width = 153
      Height = 17
      HelpContext = 118
      Caption = 'Current page'
      TabOrder = 1
    end
    object PageNumbersRB: TRadioButton
      Left = 12
      Top = 60
      Width = 77
      Height = 17
      HelpContext = 124
      Caption = 'Pages:'
      TabOrder = 2
    end
    object PageNumbersE: TEdit
      Left = 92
      Top = 58
      Width = 165
      Height = 21
      HelpContext = 133
      TabOrder = 3
    end
  end
  object GroupQuality: TGroupBox
    Left = 4
    Top = 128
    Width = 269
    Height = 69
    Caption = ' Export properties '
    TabOrder = 3
    object PageBreaksCB: TCheckBox
      Left = 12
      Top = 20
      Width = 121
      Height = 17
      Caption = 'Page breaks'
      Checked = True
      State = cbChecked
      TabOrder = 0
    end
    object FramesCB: TCheckBox
      Left = 12
      Top = 40
      Width = 121
      Height = 17
      Caption = 'Frames'
      Checked = True
      State = cbChecked
      TabOrder = 1
    end
    object EmptyLinesCB: TCheckBox
      Left = 136
      Top = 20
      Width = 121
      Height = 17
      Caption = 'Empty lines'
      Checked = True
      State = cbChecked
      TabOrder = 2
    end
    object OEMCB: TCheckBox
      Left = 136
      Top = 40
      Width = 121
      Height = 17
      Caption = 'OEM codepage'
      Checked = True
      State = cbChecked
      TabOrder = 3
    end
  end
  object OpenCB: TCheckBox
    Left = 16
    Top = 204
    Width = 253
    Height = 17
    Caption = 'Open after export'
    Checked = True
    State = cbChecked
    TabOrder = 4
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '.txt'
    Filter = 'Text file (*.txt)|*.txt'
    Left = 184
    Top = 32
  end
end
