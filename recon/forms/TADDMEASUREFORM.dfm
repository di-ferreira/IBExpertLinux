object AddMeasureForm: TAddMeasureForm
  Left = 635
  Top = 263
  BorderStyle = bsDialog
  Caption = 'AddMeasureForm'
  ClientHeight = 442
  ClientWidth = 370
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 370
    Height = 442
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel1'
    Color = clBlack
    TabOrder = 0
    object PVPanel1: TPVPanel
      Left = 0
      Top = 0
      Width = 370
      Height = 442
      Align = alClient
      BorderWidth = 2
      BorderStyle = bsSingle
      TabOrder = 0
      Intensity = gsLittle
      UsePVPaintner = True
      object CalcTopLabel: TPVLabel
        Left = 3
        Top = 3
        Width = 360
        Height = 20
        Align = alTop
        Alignment = taCenter
        AutoSize = False
        Caption = 'Calcu&lated measures'
        Transparent = True
        Layout = tlCenter
        Intensity = gsSmall
        UsePVPaintner = True
      end
      object CalcFormulaLabel: TPVLabel
        Left = 3
        Top = 97
        Width = 360
        Height = 20
        Align = alTop
        Alignment = taCenter
        AutoSize = False
        Caption = 'Calculation &formula'
        FocusControl = FormulaEdit
        Transparent = True
        Layout = tlCenter
        Intensity = gsLittle
        UsePVPaintner = True
      end
      object PVPanel2: TPVPanel
        Left = 3
        Top = 23
        Width = 360
        Height = 74
        Align = alTop
        TabOrder = 0
        Intensity = gsLittle
        UsePVPaintner = True
        object AddMeasureBtn: TPVSpeedButton
          Left = 200
          Top = 4
          Width = 153
          Height = 20
          Caption = '&Add new measure'
          Color = clBtnFace
          Tracking = True
          Flat = True
          Transparent = False
          Direction = gsTop
          Intensity = gsLittle
          Dithering = True
          UsePVPaintner = False
          FocusRectOffset = 0
          OnClick = AddMeasureBtnClick
          TabOrder = 0
        end
        object EditMeasureBtn: TPVSpeedButton
          Left = 200
          Top = 26
          Width = 153
          Height = 20
          Caption = '&Edit measure name'
          Color = clBtnFace
          Tracking = True
          Flat = True
          Transparent = False
          Direction = gsTop
          Intensity = gsLittle
          Dithering = True
          UsePVPaintner = False
          FocusRectOffset = 0
          OnClick = EditMeasureBtnClick
          TabOrder = 2
        end
        object DelMeasureBtn: TPVSpeedButton
          Left = 200
          Top = 48
          Width = 153
          Height = 20
          Caption = '&Delete calculated measure'
          Color = clBtnFace
          Tracking = True
          Flat = True
          Transparent = False
          Direction = gsTop
          Intensity = gsLittle
          Dithering = True
          UsePVPaintner = False
          FocusRectOffset = 0
          OnClick = DelMeasureBtnClick
          TabOrder = 1
        end
      end
      object PVPanel3: TPVPanel
        Left = 3
        Top = 401
        Width = 360
        Height = 34
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        Intensity = gsLittle
        UsePVPaintner = True
        object CheckBtn: TPVSpeedButton
          Left = 0
          Top = 0
          Width = 34
          Height = 34
          Hint = 'Check formula'
          Align = alLeft
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
          ShowHint = True
          OnClick = CheckBtnClick
          TabOrder = 1
        end
        object PVPanel5: TPVPanel
          Left = 249
          Top = 0
          Width = 111
          Height = 34
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 0
          Intensity = gsLittle
          UsePVPaintner = True
          object OkBtn: TPVSpeedButton
            Left = 43
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
            OnClick = OkBtnClick
            TabOrder = 0
          end
          object CancelBtn: TPVSpeedButton
            Left = 77
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
        end
      end
      object PVPanel4: TPVPanel
        Left = 3
        Top = 117
        Width = 360
        Height = 284
        Align = alClient
        BorderWidth = 3
        TabOrder = 2
        Intensity = gsLittle
        UsePVPaintner = True
        object MeasuresLabel: TPVLabel
          Left = 10
          Top = 170
          Width = 91
          Height = 13
          Caption = 'Available &measures'
          FocusControl = MLB
          Transparent = True
        end
        object ViewsLabel: TPVLabel
          Left = 192
          Top = 170
          Width = 73
          Height = 13
          Caption = 'Available &views'
          FocusControl = VLB
          Transparent = True
          Layout = tlCenter
        end
        object InsMBtn: TPVSpeedButton
          Left = 156
          Top = 168
          Width = 23
          Height = 22
          Color = clBtnFace
          Tracking = True
          Flat = True
          Transparent = False
          Direction = gsTop
          Intensity = gsLow
          Dithering = True
          UsePVPaintner = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = ['fsBold']
          FocusRectOffset = 0
          OnClick = InsMBtnClick
          TabOrder = 3
        end
        object InsVBtn: TPVSpeedButton
          Left = 332
          Top = 168
          Width = 23
          Height = 22
          Color = clBtnFace
          Tracking = True
          Flat = True
          Transparent = False
          Direction = gsTop
          Intensity = gsLow
          Dithering = True
          UsePVPaintner = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = ['fsBold']
          FocusRectOffset = 0
          OnClick = InsVBtnClick
          TabOrder = 4
        end
        object FormulaEdit: TMemo
          Left = 4
          Top = 4
          Width = 352
          Height = 160
          Align = alTop
          ScrollBars = ssVertical
          TabOrder = 0
          OnExit = FormulaEditExit
        end
        object MLB: TListBox
          Left = 4
          Top = 192
          Width = 169
          Height = 83
          Color = clBtnHighlight
          ItemHeight = 13
          TabOrder = 1
          OnClick = MLBClick
          OnDblClick = InsMBtnClick
          OnKeyDown = MLBKeyDown
        end
        object VLB: TListBox
          Left = 192
          Top = 192
          Width = 164
          Height = 84
          Color = clBtnHighlight
          ItemHeight = 13
          Items.Strings = ['VALUE', 'COUNT', 'RANK_BY_COL', 'RANK_BY_ROW', 'RUNNING_TOTAL_BY_COL', 'RUNNING_TOTAL_BY_ROW', 'ROW', 'COLUMN', 'PREV_BY_ROW', 'PREV_BY_COL', 'NEXT_BY_ROW', 'NEXT_BY_COL']
          TabOrder = 2
          OnClick = VLBClick
          OnDblClick = InsVBtnClick
          OnKeyDown = VLBKeyDown
        end
      end
    end
  end
end
