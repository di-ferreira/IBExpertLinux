object WebFormRunForm: TWebFormRunForm
  Left = 1036
  Top = 588
  ActiveControl = btRun
  BorderStyle = bsDialog
  Caption = 'WebFormRunForm'
  ClientHeight = 176
  ClientWidth = 345
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 136
    Width = 345
    Height = 2
    Align = alBottom
  end
  object lHost: TLabel
    Left = 16
    Top = 13
    Width = 117
    Height = 13
    Alignment = taRightJustify
    Caption = 'Host'
    Transparent = True
  end
  object lPort: TLabel
    Left = 16
    Top = 45
    Width = 117
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Port'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lUrlpath: TLabel
    Left = 16
    Top = 77
    Width = 117
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Url Path'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lQuerystring: TLabel
    Left = 16
    Top = 109
    Width = 117
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Query String'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Panel1: TPanel
    Left = 0
    Top = 138
    Width = 345
    Height = 38
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object btCancel: TButton
      Left = 265
      Top = 8
      Width = 75
      Height = 25
      Anchors = ['akTop', 'akRight']
      Caption = 'Cancel'
      TabOrder = 0
      OnClick = btCancelClick
    end
    object btRun: TButton
      Left = 185
      Top = 8
      Width = 75
      Height = 25
      Anchors = ['akTop', 'akRight']
      Caption = 'OK'
      Default = True
      TabOrder = 1
      OnClick = btRunClick
    end
  end
  object HostE: TdxEdit
    Left = 139
    Top = 10
    Width = 197
    TabOrder = 1
    AutoSize = False
    Height = 21
  end
  object PortE: TdxEdit
    Left = 139
    Top = 42
    Width = 197
    TabOrder = 2
    AutoSize = False
    Height = 21
  end
  object UrlPathE: TdxEdit
    Left = 139
    Top = 74
    Width = 197
    TabOrder = 3
    AutoSize = False
    Height = 21
  end
  object QueryStringE: TdxEdit
    Left = 139
    Top = 106
    Width = 197
    TabOrder = 4
    AutoSize = False
    Height = 21
  end
end
