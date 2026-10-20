object frxPrnInit: TfrxPrnInit
  Left = 289
  Top = 187
  BorderStyle = bsDialog
  Caption = 'Print'
  ClientHeight = 218
  ClientWidth = 491
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
  OnDeactivate = FormDeactivate
  PixelsPerInch = 96
  TextHeight = 13
  object OK: TButton
    Left = 325
    Top = 182
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
  end
  object Cancel: TButton
    Left = 409
    Top = 182
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
  end
  object GroupBox1: TGroupBox
    Left = 4
    Top = 4
    Width = 477
    Height = 49
    Caption = 'Printer'
    TabOrder = 2
    object Label4: TLabel
      Left = 8
      Top = 20
      Width = 27
      Height = 13
      Caption = 'Name'
      FocusControl = CB1
    end
    object Image1: TImage
      Left = 48
      Top = 21
      Width = 18
      Height = 16
      AutoSize = True
      Picture.Data = {322 bytes}
      Visible = False
    end
    object CB1: TComboBox
      Left = 72
      Top = 17
      Width = 305
      Height = 22
      HelpContext = 142
      Style = csOwnerDrawFixed
      ItemHeight = 16
      TabOrder = 0
      OnClick = CB1Click
      OnDrawItem = CB1DrawItem
    end
    object PropButton: TButton
      Left = 392
      Top = 17
      Width = 75
      Height = 22
      HelpContext = 152
      Caption = 'Setup...'
      TabOrder = 1
      OnClick = PropButtonClick
    end
  end
  object GroupBox3: TGroupBox
    Left = 302
    Top = 56
    Width = 179
    Height = 61
    Caption = 'Copies'
    TabOrder = 3
    object Label2: TLabel
      Left = 8
      Top = 24
      Width = 101
      Height = 13
      AutoSize = False
      Caption = 'Number of copies'
    end
    object Panel2: TPanel
      Left = 158
      Top = 22
      Width = 17
      Height = 17
      BevelOuter = bvNone
      TabOrder = 0
    end
    object E1: TMaskEdit
      Left = 116
      Top = 20
      Width = 37
      Height = 21
      EditMask = '!99999;0;_'
      MaxLength = 5
      TabOrder = 1
      Text = '1'
    end
    object UpDown1: TUpDown
      Left = 153
      Top = 20
      Width = 16
      Height = 21
      Associate = E1
      Min = 1
      Max = 9999
      Position = 1
      TabOrder = 2
      Wrap = False
    end
  end
  object GroupBox2: TGroupBox
    Left = 4
    Top = 56
    Width = 293
    Height = 153
    Caption = ' Printer init setup '
    TabOrder = 4
    object Label1: TLabel
      Left = 12
      Top = 24
      Width = 77
      Height = 13
      AutoSize = False
      Caption = 'Printer type'
    end
    object Button1: TSpeedButton
      Left = 16
      Top = 68
      Width = 24
      Height = 24
      Flat = True
      Glyph.Data = {1338 bytes}
      ParentShowHint = False
      ShowHint = True
      OnClick = Button1Click
    end
    object Button2: TSpeedButton
      Left = 16
      Top = 96
      Width = 24
      Height = 24
      Flat = True
      Glyph.Data = {1338 bytes}
      ParentShowHint = False
      ShowHint = True
      OnClick = Button2Click
    end
    object CheckListBox1: TCheckListBox
      Left = 56
      Top = 48
      Width = 225
      Height = 97
      OnClickCheck = CheckListBox1ClickCheck
      ItemHeight = 13
      TabOrder = 0
    end
    object ComboBox1: TComboBox
      Left = 92
      Top = 20
      Width = 189
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 1
      OnChange = ComboBox1Change
      Items.Strings = ['']
    end
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '.fpi'
    Left = 324
    Top = 128
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '.fpi'
    Left = 356
    Top = 128
  end
end
