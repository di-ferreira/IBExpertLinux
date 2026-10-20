object frmFind: TfrmFind
  Left = 308
  Top = 281
  HelpContext = 2700
  ActiveControl = cbText
  BorderIcons = ['biSystemMenu']
  BorderStyle = bsDialog
  Caption = 'Find Text'
  ClientHeight = 134
  ClientWidth = 407
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = True
  Position = poScreenCenter
  Scaled = False
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 11
    Width = 89
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Text to find:'
    FocusControl = cbText
    Transparent = True
  end
  object btOk: TButton
    Left = 164
    Top = 104
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 4
  end
  object Button2: TButton
    Left = 244
    Top = 104
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 5
  end
  object cbText: TComboBox
    Left = 91
    Top = 8
    Width = 307
    Height = 21
    ItemHeight = 13
    TabOrder = 0
    OnExit = cbTextExit
  end
  object Button3: TButton
    Left = 324
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Help'
    ModalResult = 6
    TabOrder = 6
  end
  object gbOptions: TGroupBox
    Left = 8
    Top = 32
    Width = 144
    Height = 64
    Caption = ' Options  '
    TabOrder = 1
    object cbCaseSens: TCheckBox
      Left = 11
      Top = 17
      Width = 126
      Height = 17
      Caption = '&Case sensitive'
      TabOrder = 0
    end
    object cbOriginal: TCheckBox
      Left = 11
      Top = 39
      Width = 129
      Height = 17
      Caption = 'Search in &original text'
      TabOrder = 1
    end
  end
  object rgDirection: TRadioGroup
    Left = 157
    Top = 33
    Width = 113
    Height = 63
    Caption = ' Direction  '
    ItemIndex = 0
    Items.Strings = ['Forwar&d', '&Backward']
    TabOrder = 2
  end
  object rgOrigin: TRadioGroup
    Left = 275
    Top = 33
    Width = 124
    Height = 63
    Caption = ' Origin  '
    ItemIndex = 0
    Items.Strings = ['&From selected', '&Entire scope']
    TabOrder = 3
  end
end
