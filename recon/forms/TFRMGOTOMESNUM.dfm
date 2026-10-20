object frmGoToMesNum: TfrmGoToMesNum
  Left = 467
  Top = 340
  HelpContext = 2900
  ActiveControl = cbMesNum
  BorderIcons = ['biSystemMenu']
  BorderStyle = bsToolWindow
  Caption = 'Go to Message Number'
  ClientHeight = 86
  ClientWidth = 281
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  Scaled = False
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 8
    Top = 54
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
  end
  object Button2: TButton
    Left = 105
    Top = 54
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
  end
  object Button3: TButton
    Left = 198
    Top = 54
    Width = 75
    Height = 25
    Caption = '&Help'
    TabOrder = 2
  end
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 265
    Height = 37
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 3
    object StaticText1: TLabel
      Left = 8
      Top = 11
      Width = 141
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Enter new message number:'
      FocusControl = cbMesNum
      Transparent = True
    end
    object cbMesNum: TComboBox
      Left = 154
      Top = 8
      Width = 100
      Height = 21
      ItemHeight = 13
      TabOrder = 0
      OnExit = cbMesNumExit
    end
    object Edit1: TEdit
      Left = 155
      Top = 8
      Width = 97
      Height = 21
      TabOrder = 1
      Visible = False
    end
  end
end
