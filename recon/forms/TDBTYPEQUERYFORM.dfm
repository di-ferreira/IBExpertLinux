object DBTypeQueryForm: TDBTypeQueryForm
  Left = 422
  Top = 353
  HelpContext = 16500
  BorderIcons = ['biSystemMenu']
  BorderStyle = bsSingle
  Caption = 'Database Type'
  ClientHeight = 95
  ClientWidth = 344
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 6
    Width = 106
    Height = 13
    Caption = 'Select Database Type'
  end
  object Panel1: TPanel
    Left = 0
    Top = 54
    Width = 344
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object Bevel2: TBevel
      Left = 0
      Top = 0
      Width = 344
      Height = 5
      Align = alTop
      Shape = bsBottomLine
    end
    object OkB: TButton
      Left = 106
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
      Left = 184
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
      Left = 262
      Top = 11
      Width = 75
      Height = 24
      Anchors = ['akRight', 'akBottom']
      Cancel = True
      Caption = 'Help'
      TabOrder = 2
    end
  end
  object cbTypes: TdxPickEdit
    Left = 8
    Top = 28
    Width = 329
    TabOrder = 1
    StyleController = IBEMainForm.MainSC
    DropDownListStyle = True
  end
end
