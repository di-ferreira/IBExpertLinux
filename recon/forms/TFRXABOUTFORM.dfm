object frxAboutForm: TfrxAboutForm
  Left = 200
  Top = 108
  BorderStyle = bsNone
  Caption = 'About FastReport'
  ClientHeight = 265
  ClientWidth = 261
  Color = 15790320
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel2: TBevel
    Left = 0
    Top = 0
    Width = 261
    Height = 265
    Align = alClient
    Shape = bsFrame
  end
  object Label2: TLabel
    Left = 177
    Top = 52
    Width = 69
    Height = 13
    Alignment = taRightJustify
    Caption = 'Version 3.15'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = ['fsBold']
    ParentFont = False
    Transparent = True
  end
  object Label3: TLabel
    Left = 26
    Top = 88
    Width = 204
    Height = 29
    Alignment = taCenter
    AutoSize = False
    Caption = '(c) 1998-2005 by Alexander Tzyganenko, Fast Reports Inc.'
    ShowAccelChar = False
    WordWrap = True
  end
  object Label5: TLabel
    Tag = 1
    Left = 62
    Top = 156
    Width = 136
    Height = 13
    Cursor = crHandPoint
    Caption = 'http://www.fast-report.com'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = ['fsUnderline']
    ParentFont = False
    ShowAccelChar = False
    WordWrap = True
    OnClick = LabelClick
  end
  object Shape1: TShape
    Left = 16
    Top = 128
    Width = 229
    Height = 1
    Pen.Color = clGray
  end
  object Label1: TLabel
    Left = 93
    Top = 16
    Width = 148
    Height = 29
    Alignment = taRightJustify
    Caption = 'FastReport'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -24
    Font.Name = 'Verdana'
    Font.Style = ['fsBold']
    ParentFont = False
    Transparent = True
  end
  object Image1: TImage
    Left = 16
    Top = 16
    Width = 62
    Height = 62
    AutoSize = True
    Picture.Data = {5058 bytes}
  end
  object Label4: TLabel
    Left = 53
    Top = 140
    Width = 154
    Height = 13
    Caption = 'Visit our webpage for more info:'
  end
  object Label6: TLabel
    Left = 20
    Top = 180
    Width = 29
    Height = 13
    Caption = 'Sales:'
  end
  object Label7: TLabel
    Tag = 2
    Left = 92
    Top = 180
    Width = 110
    Height = 13
    Cursor = crHandPoint
    Caption = 'sales@fast-report.com'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = ['fsUnderline']
    ParentFont = False
    ShowAccelChar = False
    WordWrap = True
    OnClick = LabelClick
  end
  object Label8: TLabel
    Left = 20
    Top = 196
    Width = 42
    Height = 13
    Caption = 'Support:'
  end
  object Label9: TLabel
    Tag = 2
    Left = 92
    Top = 196
    Width = 123
    Height = 13
    Cursor = crHandPoint
    Caption = 'support@fast-report.com'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = ['fsUnderline']
    ParentFont = False
    ShowAccelChar = False
    WordWrap = True
    OnClick = LabelClick
  end
  object Label10: TLabel
    Left = 240
    Top = 14
    Width = 10
    Height = 13
    Caption = '®'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Button1: TButton
    Left = 93
    Top = 232
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
  end
end
