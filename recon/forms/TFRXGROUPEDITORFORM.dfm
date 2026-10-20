object frxGroupEditorForm: TfrxGroupEditorForm
  Left = 200
  Top = 108
  BorderStyle = bsDialog
  Caption = 'Group'
  ClientHeight = 263
  ClientWidth = 365
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  ShowHint = True
  OnCreate = FormCreate
  OnHide = FormHide
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object OKB: TButton
    Left = 205
    Top = 232
    Width = 75
    Height = 25
    HelpContext = 40
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
  end
  object CancelB: TButton
    Left = 285
    Top = 232
    Width = 75
    Height = 25
    HelpContext = 50
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
  end
  object BreakOnL: TGroupBox
    Left = 4
    Top = 4
    Width = 357
    Height = 125
    Caption = 'Break On'
    TabOrder = 2
    object DataFieldCB: TComboBox
      Left = 188
      Top = 40
      Width = 161
      Height = 21
      ItemHeight = 13
      TabOrder = 0
    end
    object DataSetCB: TComboBox
      Left = 8
      Top = 40
      Width = 173
      Height = 21
      ItemHeight = 13
      TabOrder = 1
      OnChange = DataSetCBChange
    end
    object ExpressionE: TfrxComboEdit
      Left = 8
      Top = 92
      Width = 341
      Height = 21
      Style = csSimple
      ItemHeight = 13
      TabOrder = 2
      Glyph.Data = {218 bytes}
      OnButtonClick = ExpressionEButtonClick
    end
    object DataFieldRB: TRadioButton
      Left = 8
      Top = 20
      Width = 173
      Height = 17
      Caption = 'Data field'
      Checked = True
      TabOrder = 3
      TabStop = True
      OnClick = DataFieldRBClick
    end
    object ExpressionRB: TRadioButton
      Left = 8
      Top = 72
      Width = 173
      Height = 17
      Caption = 'Expression'
      TabOrder = 4
      OnClick = DataFieldRBClick
    end
  end
  object OptionsL: TGroupBox
    Left = 4
    Top = 136
    Width = 357
    Height = 85
    Caption = 'Options'
    TabOrder = 3
    object KeepGroupTogetherCB: TCheckBox
      Left = 8
      Top = 20
      Width = 237
      Height = 17
      Caption = 'Keep group together'
      TabOrder = 0
    end
    object StartNewPageCB: TCheckBox
      Left = 8
      Top = 40
      Width = 237
      Height = 17
      Caption = 'Start new page'
      TabOrder = 1
    end
    object OutlineCB: TCheckBox
      Left = 8
      Top = 60
      Width = 237
      Height = 17
      Caption = 'Show in outline'
      TabOrder = 2
    end
  end
end
