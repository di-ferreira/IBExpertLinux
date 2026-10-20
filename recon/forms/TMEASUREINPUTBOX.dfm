object MeasureInputBox: TMeasureInputBox
  Left = 705
  Top = 395
  BorderStyle = bsNone
  Caption = 'MeasureInputBox'
  ClientHeight = 110
  ClientWidth = 320
  Color = clBlack
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PVPanel1: TPVPanel
    Left = 0
    Top = 0
    Width = 316
    Height = 106
    TabOrder = 0
    Intensity = gsLittle
    UsePVPaintner = True
    object NameLabel: TPVLabel
      Left = 24
      Top = 16
      Width = 273
      Height = 17
      AutoSize = False
      Caption = 'NameLabel'
      Transparent = True
    end
    object BitBtn1: TPVSpeedButton
      Left = 232
      Top = 70
      Width = 35
      Height = 32
      Color = clBtnFace
      Tracking = False
      Flat = False
      Transparent = False
      Direction = gsAuto
      Intensity = gsLittle
      Dithering = False
      UsePVPaintner = False
      FocusRectOffset = 1
      Glyph.Data = {1866 bytes}
      ModalResult = 1
      TabOrder = 1
    end
    object BitBtn2: TPVSpeedButton
      Left = 272
      Top = 70
      Width = 35
      Height = 32
      Color = clBtnFace
      Tracking = False
      Flat = False
      Transparent = False
      Direction = gsAuto
      Intensity = gsLittle
      Dithering = False
      UsePVPaintner = False
      FocusRectOffset = 1
      Glyph.Data = {1866 bytes}
      ModalResult = 2
      TabOrder = 0
    end
  end
end
