object frxBarcodeEditorForm: TfrxBarcodeEditorForm
  Left = 269
  Top = 122
  BorderStyle = bsDialog
  Caption = 'Barcode editor'
  ClientHeight = 255
  ClientWidth = 539
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
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
  object CodeLbl: TLabel
    Left = 8
    Top = 8
    Width = 25
    Height = 13
    Caption = 'Code'
  end
  object TypeLbl: TLabel
    Left = 8
    Top = 52
    Width = 56
    Height = 13
    Caption = 'Type of Bar'
  end
  object ExampleBvl: TBevel
    Left = 272
    Top = 8
    Width = 261
    Height = 241
  end
  object ExamplePB: TPaintBox
    Left = 276
    Top = 12
    Width = 253
    Height = 233
    OnPaint = ExamplePBPaint
  end
  object CancelB: TButton
    Left = 184
    Top = 225
    Width = 75
    Height = 25
    HelpContext = 50
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 3
  end
  object OkB: TButton
    Left = 104
    Top = 225
    Width = 75
    Height = 25
    HelpContext = 40
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 2
  end
  object CodeE: TfrxComboEdit
    Left = 8
    Top = 24
    Width = 253
    Height = 21
    HelpContext = 260
    Style = csSimple
    ItemHeight = 13
    TabOrder = 0
    Text = '0'
    Glyph.Data = {218 bytes}
    OnButtonClick = ExprBtnClick
  end
  object TypeCB: TComboBox
    Left = 8
    Top = 68
    Width = 253
    Height = 21
    HelpContext = 261
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 1
    OnChange = ExamplePBPaint
  end
  object OptionsLbl: TGroupBox
    Left = 8
    Top = 100
    Width = 253
    Height = 65
    Caption = 'Options'
    TabOrder = 4
    object ZoomLbl: TLabel
      Left = 155
      Top = 22
      Width = 30
      Height = 13
      Alignment = taRightJustify
      Caption = 'Zoom:'
      FocusControl = ZoomE
    end
    object CalcCheckSumCB: TCheckBox
      Left = 8
      Top = 20
      Width = 133
      Height = 17
      HelpContext = 262
      Caption = 'Calc Checksum '
      TabOrder = 0
      OnClick = ExamplePBPaint
    end
    object ViewTextCB: TCheckBox
      Left = 8
      Top = 40
      Width = 133
      Height = 17
      HelpContext = 263
      Caption = 'Text'
      TabOrder = 1
      OnClick = ExamplePBPaint
    end
    object ZoomE: TEdit
      Left = 196
      Top = 18
      Width = 33
      Height = 21
      HelpContext = 149
      TabOrder = 2
      Text = '1'
    end
    object UpDown1: TUpDown
      Left = 229
      Top = 18
      Width = 16
      Height = 21
      Associate = ZoomE
      Min = 0
      Position = 1
      TabOrder = 3
      Wrap = False
    end
  end
  object RotationLbl: TGroupBox
    Left = 8
    Top = 172
    Width = 253
    Height = 45
    Caption = 'Rotation'
    TabOrder = 5
    object Rotation0RB: TRadioButton
      Left = 8
      Top = 20
      Width = 37
      Height = 17
      HelpContext = 264
      Caption = '0°'
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = ExamplePBPaint
    end
    object Rotation90RB: TRadioButton
      Left = 72
      Top = 20
      Width = 37
      Height = 17
      HelpContext = 264
      Caption = '90°'
      TabOrder = 1
      OnClick = ExamplePBPaint
    end
    object Rotation180RB: TRadioButton
      Left = 136
      Top = 20
      Width = 45
      Height = 17
      HelpContext = 264
      Caption = '180°'
      TabOrder = 2
      OnClick = ExamplePBPaint
    end
    object Rotation270RB: TRadioButton
      Left = 200
      Top = 20
      Width = 45
      Height = 17
      HelpContext = 264
      Caption = '270°'
      TabOrder = 3
      OnClick = ExamplePBPaint
    end
  end
end
