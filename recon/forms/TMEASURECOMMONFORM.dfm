object MeasureCommonForm: TMeasureCommonForm
  Left = 504
  Top = 311
  Width = 474
  Height = 469
  BorderIcons = ['biSystemMenu', 'biMinimize', 'biMaximize', 'biHelp']
  BorderWidth = 1
  Caption = 'Measure manager'
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
  OnDestroy = FormDestroy
  OnDeactivate = FormDeactivate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 464
    Height = 406
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 0
    object PVPanel1: TPVPanel
      Left = 1
      Top = 1
      Width = 216
      Height = 404
      Align = alClient
      Caption = 'Panel2'
      TabOrder = 0
    end
    object MeasuresPanel: TPVPanel
      Left = 217
      Top = 1
      Width = 246
      Height = 404
      Align = alRight
      BevelOuter = bvNone
      BorderWidth = 4
      TabOrder = 1
      Intensity = gsLittle
      object GroupBox1: TPVGroupBox
        Left = 4
        Top = 46
        Width = 238
        Height = 69
        Align = alTop
        Caption = 'Value representation'
        TabOrder = 0
        Intensity = gsLittle
        object Panel5: TPVPanel
          Left = 2
          Top = 39
          Width = 234
          Height = 24
          Align = alTop
          BevelOuter = bvNone
          BorderWidth = 1
          Caption = 'Panel5'
          TabOrder = 0
          Intensity = gsLittle
          object Label6: TPVLabel
            Left = 1
            Top = 1
            Width = 80
            Height = 22
            Align = alLeft
            Alignment = taCenter
            AutoSize = False
            Caption = 'Operation'
            Transparent = True
            Layout = tlCenter
          end
        end
        object Panel6: TPVPanel
          Left = 2
          Top = 15
          Width = 234
          Height = 24
          Align = alTop
          BevelOuter = bvNone
          BorderWidth = 1
          Caption = 'Panel6'
          TabOrder = 1
          Intensity = gsLittle
          object Label5: TPVLabel
            Left = 1
            Top = 1
            Width = 80
            Height = 22
            Align = alLeft
            Alignment = taCenter
            AutoSize = False
            Caption = 'Type'
            Transparent = True
            Layout = tlCenter
          end
        end
      end
      object GroupBox2: TPVGroupBox
        Left = 4
        Top = 115
        Width = 238
        Height = 141
        Align = alTop
        Caption = 'Filtering'
        TabOrder = 1
        Intensity = gsLittle
        object Panel7: TPVPanel
          Left = 2
          Top = 13
          Width = 234
          Height = 64
          Align = alBottom
          BevelOuter = bvNone
          BorderWidth = 5
          TabOrder = 0
          Intensity = gsLittle
          object GroupBox3: TPVGroupBox
            Left = 5
            Top = 5
            Width = 224
            Height = 54
            Align = alClient
            Caption = 'Cells filter'
            TabOrder = 0
            Intensity = gsLittle
            object Panel9: TPVPanel
              Left = 2
              Top = 16
              Width = 220
              Height = 18
              Align = alBottom
              BevelOuter = bvNone
              TabOrder = 0
              Intensity = gsLittle
              object Label1: TPVLabel
                Left = 80
                Top = 0
                Width = 70
                Height = 18
                Align = alLeft
                Alignment = taCenter
                AutoSize = False
                Caption = 'Min. value'
                Transparent = True
                Layout = tlCenter
                UsePVPaintner = True
              end
              object Panel11: TPVPanel
                Left = 0
                Top = 0
                Width = 80
                Height = 18
                Align = alLeft
                TabOrder = 0
                Intensity = gsLittle
                object PVLabel1: TPVLabel
                  Left = 19
                  Top = 1
                  Width = 60
                  Height = 16
                  Align = alRight
                  Alignment = taCenter
                  AutoSize = False
                  Caption = 'Enabled'
                  Transparent = True
                  Layout = tlCenter
                end
                object LFCCheckBox: TCheckBox
                  Left = 4
                  Top = 2
                  Width = 14
                  Height = 14
                  TabOrder = 0
                  OnClick = LFCCheckBoxClick
                end
              end
              object LFCEdit: TEdit
                Left = 155
                Top = 1
                Width = 60
                Height = 21
                Enabled = False
                MaxLength = 14
                TabOrder = 1
                OnChange = FilterEditChange
              end
            end
            object Panel10: TPVPanel
              Left = 2
              Top = 34
              Width = 220
              Height = 18
              Align = alBottom
              BevelOuter = bvNone
              TabOrder = 1
              Intensity = gsLittle
              object Label2: TPVLabel
                Left = 80
                Top = 0
                Width = 70
                Height = 18
                Align = alLeft
                Alignment = taCenter
                AutoSize = False
                Caption = 'Max. value'
                Transparent = True
                Layout = tlCenter
                UsePVPaintner = True
              end
              object Panel12: TPVPanel
                Left = 0
                Top = 0
                Width = 80
                Height = 18
                Align = alLeft
                TabOrder = 0
                Intensity = gsLittle
                object PVLabel3: TPVLabel
                  Left = 19
                  Top = 1
                  Width = 60
                  Height = 16
                  Align = alRight
                  Alignment = taCenter
                  AutoSize = False
                  Caption = 'Enabled'
                  Transparent = True
                  Layout = tlCenter
                end
                object TFCCheckBox: TCheckBox
                  Left = 4
                  Top = 2
                  Width = 14
                  Height = 14
                  Caption = 'Enabled'
                  TabOrder = 0
                  OnClick = TFCCheckBoxClick
                end
              end
              object TFCEdit: TEdit
                Left = 155
                Top = 1
                Width = 60
                Height = 21
                Enabled = False
                MaxLength = 14
                TabOrder = 1
                OnChange = FilterEditChange
              end
            end
          end
        end
        object Panel8: TPVPanel
          Left = 2
          Top = 77
          Width = 234
          Height = 62
          Align = alBottom
          BevelOuter = bvNone
          BorderWidth = 5
          TabOrder = 1
          Intensity = gsLittle
          object GroupBox4: TPVGroupBox
            Left = 5
            Top = 1
            Width = 224
            Height = 56
            Align = alBottom
            Caption = 'Records filter'
            TabOrder = 0
            Intensity = gsLittle
            object LFRPanel: TPVPanel
              Left = 2
              Top = 15
              Width = 220
              Height = 18
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              Intensity = gsLittle
              object Label3: TPVLabel
                Left = 80
                Top = 0
                Width = 70
                Height = 18
                Align = alLeft
                Alignment = taCenter
                AutoSize = False
                Caption = 'Min. value'
                Transparent = True
                Layout = tlCenter
              end
              object Panel14: TPVPanel
                Left = 0
                Top = 0
                Width = 80
                Height = 18
                Align = alLeft
                TabOrder = 0
                Intensity = gsLittle
                object PVLabel2: TPVLabel
                  Left = 19
                  Top = 1
                  Width = 60
                  Height = 16
                  Align = alRight
                  Alignment = taCenter
                  AutoSize = False
                  Caption = 'Enabled'
                  Transparent = True
                  Layout = tlCenter
                end
                object LFRCheckBox: TCheckBox
                  Left = 4
                  Top = 2
                  Width = 14
                  Height = 14
                  Caption = 'Enabled'
                  TabOrder = 0
                  OnClick = LFRCheckBoxClick
                end
              end
              object LFREdit: TEdit
                Left = 155
                Top = 1
                Width = 60
                Height = 21
                Enabled = False
                MaxLength = 14
                TabOrder = 1
                OnChange = FilterEditChange
              end
            end
            object TFRPanel: TPVPanel
              Left = 2
              Top = 33
              Width = 220
              Height = 18
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 1
              Intensity = gsLittle
              object Label4: TPVLabel
                Left = 80
                Top = 0
                Width = 70
                Height = 18
                Align = alLeft
                Alignment = taCenter
                AutoSize = False
                Caption = 'Max. value'
                Transparent = True
                Layout = tlCenter
              end
              object Panel16: TPVPanel
                Left = 0
                Top = 0
                Width = 80
                Height = 18
                Align = alLeft
                TabOrder = 0
                Intensity = gsLittle
                object PVLabel4: TPVLabel
                  Left = 19
                  Top = 1
                  Width = 60
                  Height = 16
                  Align = alRight
                  Alignment = taCenter
                  AutoSize = False
                  Caption = 'Enabled'
                  Transparent = True
                  Layout = tlCenter
                end
                object TFRCheckBox: TCheckBox
                  Left = 4
                  Top = 2
                  Width = 14
                  Height = 14
                  Caption = 'Enabled'
                  TabOrder = 0
                  OnClick = TFRCheckBoxClick
                end
              end
              object TFREdit: TEdit
                Left = 155
                Top = 1
                Width = 60
                Height = 21
                Enabled = False
                MaxLength = 14
                TabOrder = 1
                OnChange = FilterEditChange
              end
            end
          end
        end
      end
      object PVPanel3: TPVPanel
        Left = 4
        Top = 256
        Width = 238
        Height = 17
        Align = alTop
        TabOrder = 4
        Intensity = gsLittle
        object PVLabel5: TPVLabel
          Left = 35
          Top = 1
          Width = 202
          Height = 15
          Align = alRight
          AutoSize = False
          Caption = 'Distinct'
          Transparent = True
          Layout = tlCenter
        end
        object DistinctCB: TCheckBox
          Left = 13
          Top = 2
          Width = 14
          Height = 14
          TabOrder = 0
          OnClick = DistinctCBClick
        end
      end
      object Panel17: TPVPanel
        Left = 4
        Top = 273
        Width = 238
        Height = 127
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 2
        Intensity = gsLittle
        UsePVPaintner = True
        object GroupBox5: TPVGroupBox
          Left = 0
          Top = 0
          Width = 238
          Height = 40
          Align = alTop
          Caption = 'Format'
          TabOrder = 0
          Intensity = gsLittle
          object PVSpeedButton3: TPVSpeedButton
            Left = 136
            Top = 10
            Width = 97
            Height = 26
            Caption = 'Build format'
            Color = clBtnFace
            Tracking = True
            Flat = True
            Transparent = False
            Direction = gsTop
            Intensity = gsLittle
            Dithering = True
            UsePVPaintner = False
            FocusRectOffset = 0
            OnClick = PVSpeedButton3Click
            TabOrder = 1
          end
          object MFormatEdit: TEdit
            Left = 8
            Top = 14
            Width = 120
            Height = 21
            TabOrder = 0
            OnChange = MFormatEditChange
          end
        end
        object GroupBox6: TPVGroupBox
          Left = 0
          Top = 40
          Width = 238
          Height = 87
          Align = alClient
          Caption = 'Formula (if calculated)'
          TabOrder = 1
          Intensity = gsLittle
          object FormulaEdit: TMemo
            Left = 2
            Top = 15
            Width = 234
            Height = 70
            Align = alClient
            Lines.Strings = ['']
            ScrollBars = ssVertical
            TabOrder = 0
          end
        end
      end
      object GroupBox7: TPVGroupBox
        Left = 4
        Top = 4
        Width = 238
        Height = 42
        Align = alTop
        Caption = 'Display name'
        TabOrder = 3
        Intensity = gsLittle
      end
    end
  end
  object Panel4: TPVPanel
    Left = 0
    Top = 406
    Width = 464
    Height = 34
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    Intensity = gsLittle
    UsePVPaintner = True
    object MTreeExpand: TPVSpeedButton
      Left = 102
      Top = 0
      Width = 34
      Height = 34
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
      OnClick = MTreeExpandClick
      TabOrder = 1
    end
    object FxBtn: TPVSpeedButton
      Left = 136
      Top = 0
      Width = 34
      Height = 34
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
      OnClick = FxBtnClick
      TabOrder = 2
    end
    object MFillBtn: TPVSpeedButton
      Left = 0
      Top = 0
      Width = 34
      Height = 34
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
      OnClick = MFillBtnClick
      TabOrder = 3
    end
    object MClearBtn: TPVSpeedButton
      Left = 34
      Top = 0
      Width = 34
      Height = 34
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
      OnClick = MClearBtnClick
      TabOrder = 4
    end
    object MRevertBtn: TPVSpeedButton
      Left = 68
      Top = 0
      Width = 34
      Height = 34
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
      OnClick = MRevertBtnClick
      TabOrder = 5
    end
    object PVPanel2: TPVPanel
      Left = 352
      Top = 0
      Width = 112
      Height = 34
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      Intensity = gsLittle
      UsePVPaintner = True
      object OKBtn: TPVSpeedButton
        Left = 44
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
        Left = 78
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
  object TreeImages: TImageList
    Left = 160
    Top = 40
    Bitmap = {12838 bytes}
  end
end
