object PivotGridCellEditor: TPivotGridCellEditor
  Left = 250
  Top = 191
  BorderIcons = ['biSystemMenu']
  BorderWidth = 2
  Caption = 'PivotGrid cell editor'
  ClientHeight = 401
  ClientWidth = 492
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesigned
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPVPanel
    Left = 0
    Top = 359
    Width = 492
    Height = 42
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    Intensity = gsLittle
    object PVPanel1: TPVPanel
      Left = -2
      Top = 0
      Width = 494
      Height = 42
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      Intensity = gsLittle
      object Label1: TPVLabel
        Left = 4
        Top = 2
        Width = 36
        Height = 13
        Caption = 'Method'
        Transparent = True
        Layout = tlCenter
      end
      object Label3: TPVLabel
        Left = 98
        Top = 2
        Width = 34
        Height = 13
        Caption = 'Summa'
        Transparent = True
      end
      object Label4: TPVLabel
        Left = 192
        Top = 2
        Width = 29
        Height = 13
        Caption = 'Count'
        Transparent = True
      end
      object Label5: TPVLabel
        Left = 286
        Top = 2
        Width = 41
        Height = 13
        Caption = 'Average'
        Transparent = True
      end
      object OKBtn: TPVSpeedButton
        Left = 418
        Top = 6
        Width = 36
        Height = 36
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
        Left = 456
        Top = 6
        Width = 36
        Height = 36
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
      object UpdateBtn: TPVSpeedButton
        Left = 380
        Top = 6
        Width = 36
        Height = 36
        Color = clBtnFace
        Tracking = True
        Flat = True
        Transparent = False
        Direction = gsTop
        Intensity = gsLittle
        Dithering = True
        UsePVPaintner = False
        FocusRectOffset = 0
        Glyph.Data = {570 bytes}
        OnClick = UpdateBtnClick
        TabOrder = 2
      end
      object SumEdit: TEdit
        Left = 98
        Top = 20
        Width = 90
        Height = 21
        TabOrder = 3
        OnChange = SumEditChange
      end
      object CntEdit: TEdit
        Left = 192
        Top = 20
        Width = 90
        Height = 21
        TabOrder = 5
        OnChange = CntEditChange
      end
      object AvgEdit: TEdit
        Left = 286
        Top = 20
        Width = 90
        Height = 21
        TabOrder = 4
        OnChange = AvgEditChange
      end
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 492
    Height = 359
    ActivePage = TabSheet1
    Align = alClient
    HotTrack = True
    MultiLine = True
    Style = tsFlatButtons
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Table'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 484
        Height = 335
        Align = alClient
        DataSource = DataSource1
        PopupMenu = PopupMenu1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Chart'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Chart1: TChart
        Left = 0
        Top = 0
        Width = 484
        Height = 335
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        Title.Text.Strings = ['TChart']
        Title.Visible = False
        Align = alClient
        TabOrder = 0
        AutoSize = True
      end
    end
  end
  object DataSource1: TDataSource
    Left = 16
    Top = 256
  end
  object PopupMenu1: TPopupMenu
    Left = 344
    Top = 112
  end
end
