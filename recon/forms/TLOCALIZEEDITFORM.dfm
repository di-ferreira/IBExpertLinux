object LocalizeEditForm: TLocalizeEditForm
  Left = 194
  Top = 135
  HelpContext = 2800
  BorderStyle = bsToolWindow
  Caption = 'Change Message Text'
  ClientHeight = 263
  ClientWidth = 554
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
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 125
    Width = 61
    Height = 13
    Caption = 'Original Text'
    FocusControl = mOrigin
    Transparent = True
  end
  object Label2: TLabel
    Left = 8
    Top = 10
    Width = 46
    Height = 13
    Caption = 'New Text'
    FocusControl = mNew
    Transparent = True
  end
  object Label3: TLabel
    Left = 8
    Top = 237
    Width = 57
    Height = 13
    Caption = 'Total chars:'
    Transparent = True
  end
  object Label4: TLabel
    Left = 96
    Top = 237
    Width = 31
    Height = 13
    Caption = 'Label4'
    Transparent = True
  end
  object mOrigin: TMemo
    Left = 8
    Top = 143
    Width = 537
    Height = 82
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    WantTabs = True
  end
  object mNew: TMemo
    Left = 8
    Top = 28
    Width = 537
    Height = 89
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Lines.Strings = ['']
    ParentFont = False
    TabOrder = 1
    WantTabs = True
    WordWrap = False
    OnChange = mNewChange
  end
  object btOk: TButton
    Left = 387
    Top = 232
    Width = 75
    Height = 25
    Caption = 'OK'
    ModalResult = 1
    TabOrder = 2
  end
  object btCancel: TButton
    Left = 470
    Top = 232
    Width = 75
    Height = 25
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 3
  end
end
