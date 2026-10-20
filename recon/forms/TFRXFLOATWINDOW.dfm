object frxFloatWindow: TfrxFloatWindow
  Left = 320
  Top = 195
  BorderIcons = ['biSystemMenu']
  BorderStyle = bsNone
  ClientHeight = 61
  ClientWidth = 213
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  ShowHint = True
  OnDestroy = FormDestroy
  OnPaint = FormPaint
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object CloseBtn: TSpeedButton
    Left = 200
    Top = 0
    Width = 11
    Height = 11
    Flat = True
    Glyph.Data = {146 bytes}
    Margin = 1
    Spacing = 0
    OnClick = CloseBtnClick
  end
end
