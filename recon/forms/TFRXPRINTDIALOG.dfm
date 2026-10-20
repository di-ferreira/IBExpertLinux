object frxPrintDialog: TfrxPrintDialog
  Left = 197
  Top = 107
  BorderStyle = bsDialog
  Caption = 'Print'
  ClientHeight = 263
  ClientWidth = 477
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  OnHide = FormHide
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PrinterImg: TImage
    Left = 260
    Top = 237
    Width = 18
    Height = 16
    AutoSize = True
    Picture.Data = {322 bytes}
    Visible = False
  end
  object PrintL: TLabel
    Left = 4
    Top = 236
    Width = 22
    Height = 13
    Caption = 'Print'
  end
  object OkB: TButton
    Left = 318
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
    Left = 398
    Top = 232
    Width = 75
    Height = 25
    HelpContext = 50
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
  end
  object PrintPagesCB: TComboBox
    Left = 44
    Top = 232
    Width = 165
    Height = 21
    HelpContext = 196
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 2
    Items.Strings = ['All Pages', 'Odd Pages', 'Even Pages']
  end
  object Label12: TGroupBox
    Left = 4
    Top = 4
    Width = 469
    Height = 97
    Caption = 'Printer'
    TabOrder = 3
    object TypeL: TLabel
      Left = 16
      Top = 52
      Width = 28
      Height = 13
      Alignment = taRightJustify
      Caption = 'Type:'
    end
    object WhereL: TLabel
      Left = 8
      Top = 72
      Width = 36
      Height = 13
      Alignment = taRightJustify
      Caption = 'Where:'
    end
    object TypeL1: TLabel
      Left = 52
      Top = 52
      Width = 35
      Height = 13
      Caption = 'TypeL1'
    end
    object WhereL1: TLabel
      Left = 52
      Top = 72
      Width = 43
      Height = 13
      Caption = 'WhereL1'
    end
    object PrintersCB: TComboBox
      Left = 8
      Top = 20
      Width = 317
      Height = 22
      HelpContext = 142
      Style = csOwnerDrawFixed
      ItemHeight = 16
      TabOrder = 0
      OnClick = PrintersCBClick
      OnDrawItem = PrintersCBDrawItem
    end
    object PropButton: TButton
      Left = 336
      Top = 20
      Width = 95
      Height = 22
      HelpContext = 152
      Caption = 'Properties...'
      TabOrder = 1
      OnClick = PropButtonClick
    end
    object FileCB: TCheckBox
      Left = 332
      Top = 52
      Width = 129
      Height = 17
      Caption = 'Print to file'
      TabOrder = 2
    end
    object ReverseCB: TCheckBox
      Left = 332
      Top = 72
      Width = 129
      Height = 17
      Caption = 'Reverse pages'
      TabOrder = 3
    end
  end
  object Label1: TGroupBox
    Left = 4
    Top = 104
    Width = 261
    Height = 117
    Caption = 'Pages'
    TabOrder = 4
    object DescrL: TLabel
      Left = 8
      Top = 82
      Width = 249
      Height = 29
      AutoSize = False
      Caption = 'Enter page numbers and/or page ranges, separated by commas. For example, 1,3,5-12'
      WordWrap = True
    end
    object AllRB: TRadioButton
      Left = 8
      Top = 20
      Width = 125
      Height = 17
      HelpContext = 108
      Caption = 'All'
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object CurPageRB: TRadioButton
      Left = 8
      Top = 40
      Width = 125
      Height = 17
      HelpContext = 118
      Caption = 'Current page'
      TabOrder = 1
    end
    object PageNumbersRB: TRadioButton
      Left = 8
      Top = 60
      Width = 77
      Height = 17
      HelpContext = 124
      Caption = 'Pages:'
      TabOrder = 2
      OnClick = PageNumbersRBClick
    end
    object PageNumbersE: TEdit
      Left = 72
      Top = 58
      Width = 165
      Height = 21
      HelpContext = 133
      TabOrder = 3
      OnEnter = PageNumbersEEnter
    end
  end
  object Label2: TGroupBox
    Left = 272
    Top = 104
    Width = 201
    Height = 117
    Caption = 'Copies'
    TabOrder = 5
    object CopiesL: TLabel
      Left = 12
      Top = 20
      Width = 83
      Height = 13
      Caption = 'Number of copies'
      FocusControl = CopiesE
    end
    object CollateImg: TImage
      Left = 20
      Top = 48
      Width = 74
      Height = 53
      AutoSize = True
      Picture.Data = {2250 bytes}
      Visible = False
    end
    object NonCollateImg: TImage
      Left = 12
      Top = 56
      Width = 92
      Height = 40
      AutoSize = True
      Picture.Data = {2050 bytes}
      Visible = False
    end
    object CollateL: TLabel
      Left = 136
      Top = 60
      Width = 61
      Height = 41
      AutoSize = False
      Caption = 'Collate'
      WordWrap = True
      OnClick = CollateLClick
      OnDblClick = CollateLClick
    end
    object CopiesPB: TPaintBox
      Left = 12
      Top = 48
      Width = 92
      Height = 53
      OnPaint = CopiesPBPaint
    end
    object CopiesE: TEdit
      Left = 132
      Top = 16
      Width = 37
      Height = 21
      HelpContext = 99
      TabOrder = 0
      Text = '1'
    end
    object CollateCB: TCheckBox
      Left = 116
      Top = 58
      Width = 17
      Height = 17
      HelpContext = 188
      Checked = True
      State = cbChecked
      TabOrder = 1
      OnClick = CollateCBClick
    end
    object UpDown1: TUpDown
      Left = 169
      Top = 16
      Width = 16
      Height = 21
      Associate = CopiesE
      Min = 1
      Position = 1
      TabOrder = 2
      Wrap = False
    end
  end
  object FileDlg: TSaveDialog
    Filter = 'Printer files (*.prn)|*.prn'
    Title = 'Print To File'
    Left = 284
    Top = 228
  end
end
