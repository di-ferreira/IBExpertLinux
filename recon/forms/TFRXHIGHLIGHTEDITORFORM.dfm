object frxHighlightEditorForm: TfrxHighlightEditorForm
  Left = 200
  Top = 108
  BorderStyle = bsDialog
  Caption = 'Highlight'
  ClientHeight = 263
  ClientWidth = 294
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
    Left = 134
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
    Left = 214
    Top = 232
    Width = 75
    Height = 25
    HelpContext = 50
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
  end
  object ConditionL: TGroupBox
    Left = 4
    Top = 4
    Width = 285
    Height = 53
    Caption = 'Condition'
    TabOrder = 2
    object ConditionE: TfrxComboEdit
      Left = 8
      Top = 20
      Width = 269
      Height = 21
      HelpContext = 113
      Style = csSimple
      ItemHeight = 13
      TabOrder = 0
      Glyph.Data = {218 bytes}
      OnButtonClick = ConditionEButtonClick
    end
  end
  object FontL: TGroupBox
    Left = 4
    Top = 64
    Width = 285
    Height = 85
    Caption = 'Font'
    TabOrder = 3
    object FontColorB: TSpeedButton
      Left = 184
      Top = 48
      Width = 89
      Height = 25
      Caption = 'Color...'
      Margin = 3
      OnClick = FontColorBClick
    end
    object BoldCB: TCheckBox
      Left = 8
      Top = 20
      Width = 105
      Height = 17
      HelpContext = 67
      Caption = 'Bold'
      TabOrder = 0
    end
    object ItalicCB: TCheckBox
      Left = 8
      Top = 40
      Width = 105
      Height = 17
      HelpContext = 76
      Caption = 'Italic'
      TabOrder = 1
    end
    object UnderlineCB: TCheckBox
      Left = 8
      Top = 60
      Width = 105
      Height = 17
      HelpContext = 85
      Caption = 'Underline'
      TabOrder = 2
    end
  end
  object BackgroundL: TGroupBox
    Left = 4
    Top = 156
    Width = 285
    Height = 65
    Caption = 'Background'
    TabOrder = 4
    object BackColorB: TSpeedButton
      Left = 184
      Top = 28
      Width = 89
      Height = 25
      Caption = 'Color...'
      Margin = 3
      OnClick = BackColorBClick
    end
    object TransparentRB: TRadioButton
      Left = 8
      Top = 20
      Width = 113
      Height = 17
      HelpContext = 92
      Caption = 'Transparent'
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = TransparentRBClick
    end
    object OtherRB: TRadioButton
      Left = 8
      Top = 40
      Width = 113
      Height = 17
      HelpContext = 103
      Caption = 'Other'
      TabOrder = 1
      OnClick = TransparentRBClick
    end
  end
  object ColorDialog1: TColorDialog
    Left = 58
    Top = 228
  end
end
