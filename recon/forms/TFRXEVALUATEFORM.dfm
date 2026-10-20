object frxEvaluateForm: TfrxEvaluateForm
  Left = 185
  Top = 107
  BorderStyle = bsToolWindow
  Caption = 'Evaluate'
  ClientHeight = 163
  ClientWidth = 281
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 4
    Top = 4
    Width = 52
    Height = 13
    Caption = 'Expression'
  end
  object Label2: TLabel
    Left = 4
    Top = 52
    Width = 30
    Height = 13
    Caption = 'Result'
  end
  object ExpressionE: TEdit
    Left = 4
    Top = 20
    Width = 273
    Height = 21
    TabOrder = 0
    OnKeyPress = ExpressionEKeyPress
  end
  object ResultM: TMemo
    Left = 4
    Top = 68
    Width = 273
    Height = 89
    TabOrder = 1
  end
end
