object frxSysMemoEditorForm: TfrxSysMemoEditorForm
  Left = 425
  Top = 121
  BorderStyle = bsDialog
  Caption = 'System Memo'
  ClientHeight = 435
  ClientWidth = 290
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
    Left = 129
    Top = 404
    Width = 75
    Height = 25
    HelpContext = 40
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 3
  end
  object CancelB: TButton
    Left = 209
    Top = 404
    Width = 75
    Height = 25
    HelpContext = 50
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 4
  end
  object AggregateRB: TRadioButton
    Left = 4
    Top = 80
    Width = 173
    Height = 17
    Caption = 'Aggregate value'
    TabOrder = 1
  end
  object SysVariableRB: TRadioButton
    Left = 4
    Top = 4
    Width = 173
    Height = 17
    Caption = 'System variable'
    Checked = True
    TabOrder = 0
    TabStop = True
  end
  object TextRB: TRadioButton
    Left = 4
    Top = 324
    Width = 173
    Height = 17
    Caption = 'Text'
    TabOrder = 2
  end
  object AggregatePanel: TGroupBox
    Left = 4
    Top = 100
    Width = 281
    Height = 217
    TabOrder = 5
    object DataBandL: TLabel
      Left = 8
      Top = 44
      Width = 50
      Height = 13
      Caption = 'Data band'
    end
    object DataSetL: TLabel
      Left = 8
      Top = 76
      Width = 39
      Height = 13
      Caption = 'DataSet'
    end
    object DataFieldL: TLabel
      Left = 8
      Top = 100
      Width = 45
      Height = 13
      Caption = 'DataField'
    end
    object FunctionL: TLabel
      Left = 8
      Top = 20
      Width = 41
      Height = 13
      Caption = 'Function'
    end
    object ExpressionL: TLabel
      Left = 8
      Top = 124
      Width = 52
      Height = 13
      Caption = 'Expression'
    end
    object SampleL: TLabel
      Left = 8
      Top = 196
      Width = 265
      Height = 13
      AutoSize = False
      Caption = 'SampleL'
      Color = clInfoBk
      ParentColor = False
    end
    object DataFieldCB: TComboBox
      Left = 100
      Top = 96
      Width = 173
      Height = 21
      ItemHeight = 13
      TabOrder = 3
      OnChange = DataFieldCBChange
    end
    object DataSetCB: TComboBox
      Left = 100
      Top = 72
      Width = 173
      Height = 21
      ItemHeight = 13
      TabOrder = 2
      OnChange = DataSetCBChange
    end
    object DataBandCB: TComboBox
      Left = 100
      Top = 40
      Width = 173
      Height = 21
      ItemHeight = 13
      TabOrder = 1
      OnChange = DataBandCBChange
    end
    object CountInvisibleCB: TCheckBox
      Left = 8
      Top = 148
      Width = 173
      Height = 17
      Caption = 'Count invisible bands'
      TabOrder = 5
      OnClick = FunctionCBChange
    end
    object FunctionCB: TComboBox
      Left = 100
      Top = 16
      Width = 173
      Height = 21
      ItemHeight = 13
      TabOrder = 0
      OnChange = FunctionCBChange
      Items.Strings = ['SUM', 'MIN', 'MAX', 'AVG', 'COUNT']
    end
    object ExpressionE: TfrxComboEdit
      Left = 100
      Top = 120
      Width = 173
      Height = 21
      Style = csSimple
      ItemHeight = 13
      TabOrder = 4
      Glyph.Data = {218 bytes}
      OnButtonClick = ExpressionEButtonClick
    end
    object RunningTotalCB: TCheckBox
      Left = 8
      Top = 168
      Width = 173
      Height = 17
      Caption = 'Running total'
      TabOrder = 6
      OnClick = FunctionCBChange
    end
  end
  object GroupBox1: TGroupBox
    Left = 4
    Top = 24
    Width = 281
    Height = 49
    TabOrder = 6
    object SysVariableCB: TComboBox
      Left = 8
      Top = 16
      Width = 173
      Height = 21
      ItemHeight = 13
      TabOrder = 0
    end
  end
  object GroupBox2: TGroupBox
    Left = 4
    Top = 344
    Width = 281
    Height = 49
    TabOrder = 7
    object TextE: TEdit
      Left = 8
      Top = 16
      Width = 265
      Height = 21
      TabOrder = 0
    end
  end
end
