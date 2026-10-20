object SplashForm: TSplashForm
  Left = 325
  Top = 229
  HelpContext = 1900
  BorderStyle = bsNone
  ClientHeight = 291
  ClientWidth = 447
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWhite
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = ['fsBold']
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = True
  Position = poScreenCenter
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 3
    Top = 2
    Width = 442
    Height = 259
    Alignment = taCenter
    AutoSize = False
    Caption = 'Cracked version? \r\nThis may cause unpleasant results.\r\n\r\nEven if the program \r\nwas cracked successfully...;)\r\n\r\nJust a warning...\r\n\r\nThe IBExpert Team.'
    Color = clRed
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Visible = False
  end
  object Image: TImage
    Left = 0
    Top = 0
    Width = 447
    Height = 291
    Align = alClient
    AutoSize = True
    Picture.Data = {36970 bytes}
    OnClick = ImageClick
  end
  object VerInfoL: TLabel
    Left = 248
    Top = 64
    Width = 176
    Height = 16
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'VerInfoL'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
    OnClick = ImageClick
  end
  object Label1: TLabel
    Left = 264
    Top = 116
    Width = 160
    Height = 16
    Cursor = crHandPoint
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'www.ibexpert.com'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = ['fsUnderline']
    ParentFont = False
    Transparent = True
    OnClick = Label1Click
  end
  object lUnregistered: TLabel
    Left = 274
    Top = 82
    Width = 150
    Height = 23
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Unregistered'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = ['fsBold']
    ParentFont = False
    Transparent = True
    OnClick = ImageClick
  end
  object lVarLicensed: TLabel
    Left = 272
    Top = 82
    Width = 153
    Height = 35
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Registered\r\nVAR HKSoftware'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = ['fsBold']
    ParentFont = False
    Transparent = True
    Visible = False
    WordWrap = True
  end
  object l: TLabel
    Left = 148
    Top = 172
    Width = 264
    Height = 12
    AutoSize = False
    Caption = 'Process label'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWhite
    Font.Height = -9
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Image2: TImage
    Left = 38
    Top = 24
    Width = 59
    Height = 49
    Picture.Data = {24456 bytes}
    Visible = False
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 20000
    OnTimer = Timer1Timer
    Left = 144
    Top = 160
  end
end
