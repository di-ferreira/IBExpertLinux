object mODBCErrorDlg: TmODBCErrorDlg
  Left = 345
  Top = 310
  Width = 320
  Height = 170
  ActiveControl = OKBtn
  BorderIcons = ['biSystemMenu']
  Caption = 'ODBC Error'
  Color = clBtnFace
  ParentFont = True
  FormStyle = fsStayOnTop
  HelpFile = 'dbexplr3.hlp'
  Icon.Data = {1086 bytes}
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 104
    Width = 312
    Height = 39
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object OKBtn: TButton
      Left = 215
      Top = 8
      Width = 75
      Height = 25
      Cancel = True
      Caption = 'OK'
      ModalResult = 1
      TabOrder = 0
    end
    object BackBtn: TButton
      Left = 56
      Top = 8
      Width = 75
      Height = 25
      Caption = '< &Back'
      TabOrder = 1
      OnClick = BackClick
    end
    object NextBtn: TButton
      Left = 136
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Next >'
      Default = True
      TabOrder = 2
      OnClick = NextClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 312
    Height = 104
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 55
      Height = 104
      Align = alLeft
      BevelOuter = bvNone
      BorderWidth = 5
      TabOrder = 0
      object IconImage: TImage
        Left = 6
        Top = 26
        Width = 34
        Height = 34
        Picture.Data = {642 bytes}
      end
    end
    object Panel4: TPanel
      Left = 55
      Top = 0
      Width = 257
      Height = 104
      Align = alClient
      BevelOuter = bvNone
      BorderWidth = 5
      TabOrder = 1
      object ScrollBox1: TScrollBox
        Left = 5
        Top = 5
        Width = 247
        Height = 94
        Align = alClient
        BorderStyle = bsNone
        TabOrder = 0
        object ErrorLabel: TLabel
          Left = 0
          Top = 0
          Width = 247
          Height = 94
          Align = alClient
          Caption = 'ErrorLabel'
          WordWrap = True
        end
      end
    end
  end
end
