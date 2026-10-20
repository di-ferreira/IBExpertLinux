object RequestScriptBlockTypeForm: TRequestScriptBlockTypeForm
  Left = 690
  Top = 364
  BorderIcons = ['biSystemMenu']
  BorderStyle = bsSingle
  Caption = 'Select object type to be created'
  ClientHeight = 159
  ClientWidth = 313
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 118
    Width = 313
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 4
    object Bevel2: TBevel
      Left = 0
      Top = 0
      Width = 313
      Height = 5
      Align = alTop
      Shape = bsBottomLine
    end
    object OkB: TButton
      Left = 79
      Top = 11
      Width = 75
      Height = 24
      Anchors = ['akRight', 'akBottom']
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
    end
    object CancelB: TButton
      Left = 157
      Top = 11
      Width = 75
      Height = 24
      Anchors = ['akRight', 'akBottom']
      Cancel = True
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
    end
    object bHelp: TButton
      Left = 235
      Top = 11
      Width = 75
      Height = 24
      Anchors = ['akRight', 'akBottom']
      Cancel = True
      Caption = 'Help'
      TabOrder = 2
    end
  end
  object rbIBEBlock: TRadioButton
    Left = 16
    Top = 16
    Width = 279
    Height = 17
    Caption = 'IBEBlock / Firebird block'
    Checked = True
    TabOrder = 0
    TabStop = True
  end
  object rbSQLScript: TRadioButton
    Left = 16
    Top = 40
    Width = 279
    Height = 17
    Caption = 'SQL script'
    TabOrder = 1
  end
  object rbCPascalScript: TRadioButton
    Left = 16
    Top = 64
    Width = 279
    Height = 17
    Caption = 'C/Pascal/Basic/JS script'
    TabOrder = 2
  end
  object rbWebForm: TRadioButton
    Left = 16
    Top = 88
    Width = 279
    Height = 17
    Caption = 'WebForm'
    TabOrder = 3
  end
end
