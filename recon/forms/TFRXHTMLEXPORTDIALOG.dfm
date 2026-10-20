object frxHTMLExportDialog: TfrxHTMLExportDialog
  Left = 472
  Top = 309
  BorderStyle = bsDialog
  Caption = 'Export to HTML'
  ClientHeight = 302
  ClientWidth = 290
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
  object GroupQuality: TGroupBox
    Left = 4
    Top = 128
    Width = 281
    Height = 109
    Caption = ' Export settings '
    TabOrder = 3
    object StylesCB: TCheckBox
      Left = 12
      Top = 20
      Width = 129
      Height = 17
      Caption = 'Styles'
      Checked = True
      State = cbChecked
      TabOrder = 3
    end
    object PicturesCB: TCheckBox
      Left = 12
      Top = 40
      Width = 129
      Height = 17
      Caption = 'Pictures'
      Checked = True
      State = cbChecked
      TabOrder = 0
    end
    object PicsSameCB: TCheckBox
      Left = 12
      Top = 60
      Width = 129
      Height = 17
      Caption = 'All in one folder'
      Checked = True
      State = cbChecked
      TabOrder = 1
    end
    object FixWidthCB: TCheckBox
      Left = 144
      Top = 20
      Width = 129
      Height = 17
      Caption = 'Fixed width'
      Checked = True
      State = cbChecked
      TabOrder = 4
    end
    object NavigatorCB: TCheckBox
      Left = 12
      Top = 80
      Width = 129
      Height = 17
      Caption = 'Page navigator'
      Checked = True
      State = cbChecked
      TabOrder = 2
    end
    object MultipageCB: TCheckBox
      Left = 144
      Top = 40
      Width = 129
      Height = 17
      Caption = 'Multipage'
      Checked = True
      State = cbChecked
      TabOrder = 5
    end
    object BackgrCB: TCheckBox
      Left = 144
      Top = 60
      Width = 129
      Height = 17
      Caption = 'Background'
      Checked = True
      State = cbChecked
      TabOrder = 6
    end
  end
  object GroupPageRange: TGroupBox
    Left = 4
    Top = 4
    Width = 281
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
      Width = 177
      Height = 21
      HelpContext = 133
      TabOrder = 3
    end
  end
  object OpenAfterCB: TCheckBox
    Left = 12
    Top = 244
    Width = 257
    Height = 17
    Caption = 'Open after export'
    Checked = True
    State = cbChecked
    TabOrder = 4
  end
  object OkB: TButton
    Left = 130
    Top = 272
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
  end
  object CancelB: TButton
    Left = 210
    Top = 272
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
  end
  object SaveDialog1: TSaveDialog
    FilterIndex = 0
    Left = 188
    Top = 24
  end
end
