object MapBuilderForm: TMapBuilderForm
  Left = 543
  Top = 285
  BorderIcons = ['biSystemMenu']
  BorderStyle = bsDialog
  Caption = 'Map Builder'
  ClientHeight = 454
  ClientWidth = 281
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesigned
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPVPanel
    Left = 0
    Top = 420
    Width = 281
    Height = 34
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    Intensity = gsLittle
    UsePVPaintner = True
    object OKBtn: TPVSpeedButton
      Left = 213
      Top = 0
      Width = 34
      Height = 34
      Align = alRight
      Color = clBtnFace
      Tracking = True
      Flat = True
      Transparent = False
      Direction = gsTop
      Intensity = gsLittle
      Dithering = True
      UsePVPaintner = False
      FocusRectOffset = 0
      Glyph.Data = {1866 bytes}
      OnClick = OKBtnClick
      TabOrder = 0
    end
    object CancelBtn: TPVSpeedButton
      Left = 247
      Top = 0
      Width = 34
      Height = 34
      Align = alRight
      Color = clBtnFace
      Tracking = True
      Flat = True
      Transparent = False
      Direction = gsTop
      Intensity = gsLittle
      Dithering = True
      UsePVPaintner = False
      FocusRectOffset = 0
      Glyph.Data = {1866 bytes}
      OnClick = CancelBtnClick
      TabOrder = 1
    end
    object RunEditBtn: TPVSpeedButton
      Left = 0
      Top = 0
      Width = 34
      Height = 34
      Align = alLeft
      Color = clBtnFace
      Tracking = True
      Flat = False
      Transparent = False
      Direction = gsTop
      Intensity = gsLittle
      Dithering = True
      UsePVPaintner = False
      FocusRectOffset = 0
      Glyph.Data = {1866 bytes}
      OnClick = DTreeDblClick
      TabOrder = 2
    end
  end
  object ImageList1: TImageList
    Left = 120
    Top = 64
    Bitmap = {12838 bytes}
  end
end
