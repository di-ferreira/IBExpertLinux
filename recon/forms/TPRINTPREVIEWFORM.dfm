object PrintPreviewForm: TPrintPreviewForm
  Left = 203
  Top = 132
  Width = 799
  Height = 464
  BorderIcons = ['biSystemMenu', 'biMaximize']
  Caption = 'Preview'
  Color = cl3DDkShadow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 791
    Height = 437
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    object Splitter1: TSplitter
      Left = 1
      Top = 29
      Width = 789
      Height = 2
      Cursor = crVSplit
      Align = alTop
    end
    object Splitter2: TSplitter
      Left = 186
      Top = 31
      Height = 405
    end
    object ScrollBox1: TScrollBox
      Left = 189
      Top = 31
      Width = 601
      Height = 405
      Hint = 'Right click to scale menu'
      HorzScrollBar.Smooth = True
      VertScrollBar.Smooth = True
      Align = alClient
      Color = clBtnHighlight
      ParentColor = False
      ParentShowHint = False
      PopupMenu = PopupMenu1
      ShowHint = True
      TabOrder = 0
      OnResize = ScrollBox1Resize
      object Image1: TImage
        Left = 56
        Top = 32
        Width = 473
        Height = 313
        Hint = 'Right click to scale menu'
        PopupMenu = PopupMenu1
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 31
      Width = 185
      Height = 405
      Align = alLeft
      TabOrder = 1
      object DWG: TStringGrid
        Left = 1
        Top = 1
        Width = 183
        Height = 403
        Align = alClient
        Color = clBtnHighlight
        DefaultColWidth = 80
        DefaultRowHeight = 120
        FixedCols = 0
        FixedRows = 0
        TabOrder = 0
        OnDrawCell = DWGDrawCell
        OnSelectCell = DWGSelectCell
      end
    end
    object PVPanel1: TPVPanel
      Left = 1
      Top = 1
      Width = 789
      Height = 28
      Align = alTop
      TabOrder = 2
      Intensity = gsLittle
      UsePVPaintner = True
      object PagesLbl: TPVLabel
        Left = 368
        Top = 0
        Width = 100
        Height = 28
        Alignment = taCenter
        AutoSize = False
        Caption = '( 0 )'
        Transparent = True
        Layout = tlCenter
      end
      object PVLabel1: TPVLabel
        Left = 170
        Top = 0
        Width = 80
        Height = 28
        Alignment = taCenter
        AutoSize = False
        Caption = 'Preview'
        Transparent = True
        Layout = tlCenter
        WordWrap = True
      end
      object PVLabel2: TPVLabel
        Left = 2
        Top = 0
        Width = 80
        Height = 28
        Alignment = taCenter
        AutoSize = False
        Caption = 'Print scaled'
        Transparent = True
        Layout = tlCenter
        WordWrap = True
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 416
    Top = 304
    object Fitwidth1: TMenuItem
      Caption = 'Fit width'
      OnClick = Fitwidth1Click
    end
    object Fitheight1: TMenuItem
      Caption = 'Fit height'
      OnClick = Fitheight1Click
    end
    object N12x1: TMenuItem
      Caption = '1/2x'
      RadioItem = True
      OnClick = N12x1Click
    end
    object Origin1: TMenuItem
      Caption = 'Origin'
      RadioItem = True
      OnClick = Origin1Click
    end
    object N2x1: TMenuItem
      Caption = '2x'
      RadioItem = True
      OnClick = N2x1Click
    end
    object N4x1: TMenuItem
      Caption = '4x'
      RadioItem = True
      OnClick = N4x1Click
    end
  end
  object ImageList1: TImageList
    BkColor = clWhite
    Masked = False
    Left = 288
    Top = 152
    Bitmap = {4390 bytes}
  end
end
