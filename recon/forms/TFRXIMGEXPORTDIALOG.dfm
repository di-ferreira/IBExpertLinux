object frxIMGExportDialog: TfrxIMGExportDialog
  Left = 568
  Top = 338
  ActiveControl = OK
  BorderStyle = bsDialog
  Caption = 'Export to Images'
  ClientHeight = 303
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
  object OK: TButton
    Left = 116
    Top = 272
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 2
  end
  object Cancel: TButton
    Left = 196
    Top = 272
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 3
  end
  object GroupPageRange: TGroupBox
    Left = 4
    Top = 4
    Width = 269
    Height = 145
    Caption = ' Page range  '
    TabOrder = 1
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
    object SeparateCB: TCheckBox
      Left = 16
      Top = 116
      Width = 237
      Height = 17
      Caption = 'Separate files'
      Checked = True
      State = cbChecked
      TabOrder = 4
    end
  end
  object GroupBox1: TGroupBox
    Left = 4
    Top = 156
    Width = 269
    Height = 109
    Caption = 'Image settings'
    TabOrder = 0
    object Label2: TLabel
      Left = 16
      Top = 48
      Width = 121
      Height = 13
      AutoSize = False
      Caption = 'JPEG Quality'
    end
    object Label1: TLabel
      Left = 16
      Top = 76
      Width = 113
      Height = 13
      AutoSize = False
      Caption = 'Resolution (dpi)'
    end
    object CropPage: TCheckBox
      Left = 140
      Top = 20
      Width = 125
      Height = 17
      Caption = 'Crop pages'
      Checked = True
      State = cbChecked
      TabOrder = 1
    end
    object Quality: TEdit
      Left = 140
      Top = 44
      Width = 53
      Height = 21
      TabOrder = 2
      Text = '100'
    end
    object Mono: TCheckBox
      Left = 16
      Top = 20
      Width = 121
      Height = 17
      Caption = 'Monochrome'
      TabOrder = 0
    end
    object Resolution: TEdit
      Left = 140
      Top = 72
      Width = 53
      Height = 21
      TabOrder = 3
      Text = '96'
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 8
    Top = 268
  end
end
