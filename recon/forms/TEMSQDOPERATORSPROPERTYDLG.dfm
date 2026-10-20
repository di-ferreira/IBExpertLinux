object emsQDOperatorsPropertyDlg: TemsQDOperatorsPropertyDlg
  Left = 345
  Top = 187
  Width = 415
  Height = 318
  Caption = 'Operator properties'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 129
    Height = 249
    Caption = 'Available operators'
    TabOrder = 0
    object lbOperators: TListBox
      Left = 2
      Top = 15
      Width = 125
      Height = 232
      Align = alClient
      ItemHeight = 13
      TabOrder = 0
      OnClick = lbOperatorsClick
    end
  end
  object Features: TGroupBox
    Left = 144
    Top = 48
    Width = 257
    Height = 209
    Caption = 'Features'
    TabOrder = 1
    Visible = False
    object lblName: TLabel
      Left = 8
      Top = 24
      Width = 241
      Height = 13
      AutoSize = False
      Caption = 'Operator name:'
    end
    object lblCaption: TLabel
      Left = 8
      Top = 50
      Width = 69
      Height = 13
      Caption = 'Display name: '
    end
    object lblCount: TLabel
      Left = 8
      Top = 80
      Width = 90
      Height = 13
      Caption = 'Count of operands:'
    end
    object lblSQLCaption: TLabel
      Left = 8
      Top = 160
      Width = 241
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'SQL expression:'
    end
    object lblSQL: TLabel
      Left = 8
      Top = 184
      Width = 241
      Height = 19
      Alignment = taCenter
      AutoSize = False
      Caption = 'lblSQL'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = ['fsBold', 'fsItalic']
      ParentFont = False
    end
    object lblPrefix: TLabel
      Left = 24
      Top = 112
      Width = 29
      Height = 13
      Caption = 'Prefix:'
    end
    object lblRelate: TLabel
      Left = 112
      Top = 112
      Width = 34
      Height = 13
      Caption = 'Relate:'
    end
    object lblPostfix: TLabel
      Left = 200
      Top = 112
      Width = 34
      Height = 13
      Caption = 'Postfix:'
    end
    object ebCaption: TEdit
      Left = 96
      Top = 48
      Width = 153
      Height = 21
      TabOrder = 0
      Text = 'ebCaption'
      OnChange = ChangeData
    end
    object ebName: TEdit
      Left = 96
      Top = 20
      Width = 153
      Height = 21
      TabOrder = 1
      Text = 'ebName'
      OnChange = ChangeData
    end
    object ebCount: TEdit
      Left = 104
      Top = 75
      Width = 57
      Height = 21
      TabOrder = 2
      Text = 'ebCount'
      OnChange = ChangeData
    end
    object ebPrefix: TEdit
      Left = 4
      Top = 128
      Width = 80
      Height = 21
      TabOrder = 3
      Text = 'ebPrefix'
      OnChange = ChangeData
    end
    object ebRelate: TEdit
      Left = 88
      Top = 128
      Width = 80
      Height = 21
      TabOrder = 4
      Text = 'ebRelate'
      OnChange = ChangeData
    end
    object ebPostfix: TEdit
      Left = 172
      Top = 128
      Width = 80
      Height = 21
      TabOrder = 5
      Text = 'ebPostfix'
      OnChange = ChangeData
    end
  end
  object btnOK: TButton
    Left = 96
    Top = 264
    Width = 105
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 2
    OnClick = btnOKClick
  end
  object btnCancel: TButton
    Left = 208
    Top = 264
    Width = 89
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 3
  end
  object btnAdd: TButton
    Left = 144
    Top = 16
    Width = 89
    Height = 25
    Caption = 'Add operator'
    TabOrder = 4
    OnClick = btnAddClick
  end
  object btnDelete: TButton
    Left = 240
    Top = 16
    Width = 81
    Height = 25
    Caption = 'Delete operator'
    Enabled = False
    TabOrder = 5
    OnClick = btnDeleteClick
  end
end
