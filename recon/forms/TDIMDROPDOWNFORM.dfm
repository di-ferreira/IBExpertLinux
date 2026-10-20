object DimDropDownForm: TDimDropDownForm
  Left = 484
  Top = 284
  Caption = 'Dimension manager'
  ClientHeight = 395
  ClientWidth = 451
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
  object TreePanel: TPVPanel
    Left = 0
    Top = 0
    Width = 451
    Height = 395
    Align = alClient
    TabOrder = 0
    Direction = gsBottom
    Intensity = gsLittle
    object Splitter1: TSplitter
      Left = 247
      Top = 87
      Height = 275
      Align = alRight
    end
    object PVPanel2: TPVPanel
      Left = 1
      Top = 362
      Width = 449
      Height = 32
      Align = alBottom
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 0
      Intensity = gsLittle
      UsePVPaintner = True
      object FindLbl: TPVLabel
        Left = 250
        Top = 8
        Width = 20
        Height = 13
        Caption = 'Find'
        Transparent = True
      end
      object FillActiveBtn: TPVSpeedButton
        Left = 0
        Top = 0
        Width = 32
        Height = 32
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
        OnClick = FillActiveBtnClick
        TabOrder = 1
      end
      object FillInvisibleBtn: TPVSpeedButton
        Left = 32
        Top = 0
        Width = 32
        Height = 32
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
        OnClick = FillInvisibleBtnClick
        TabOrder = 2
      end
      object FillFilteredBtn: TPVSpeedButton
        Left = 64
        Top = 0
        Width = 32
        Height = 32
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
        OnClick = FillFilteredBtnClick
        TabOrder = 3
      end
      object AddGroupBtn: TPVSpeedButton
        Left = 128
        Top = 0
        Width = 32
        Height = 32
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
        OnClick = AddGroupBtnClick
        TabOrder = 4
      end
      object RevertBtn: TPVSpeedButton
        Left = 96
        Top = 0
        Width = 32
        Height = 32
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
        OnClick = RevertBtnClick
        TabOrder = 5
      end
      object DelGroupBtn: TPVSpeedButton
        Left = 160
        Top = 0
        Width = 32
        Height = 32
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
        OnClick = DelGroupBtnClick
        TabOrder = 7
      end
      object ExpandBtn: TPVSpeedButton
        Left = 192
        Top = 0
        Width = 32
        Height = 32
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
        OnClick = ExpandBtnClick
        TabOrder = 6
      end
      object PVPanel3: TPVPanel
        Left = 378
        Top = 0
        Width = 71
        Height = 32
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        Intensity = gsLittle
        UsePVPaintner = True
        object OkBtn: TPVSpeedButton
          Left = 7
          Top = 0
          Width = 32
          Height = 32
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
          ShowHint = True
          OnClick = OkBtnClick
          TabOrder = 0
        end
        object CancelBtn: TPVSpeedButton
          Left = 39
          Top = 0
          Width = 32
          Height = 32
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
          ShowHint = True
          OnClick = CancelClick
          TabOrder = 1
        end
      end
    end
    object PVPanel1: TPVPanel
      Left = 1
      Top = 1
      Width = 449
      Height = 68
      Align = alTop
      TabOrder = 1
      Intensity = gsLittle
      UsePVPaintner = True
      object PVLabel1: TPVLabel
        Left = 1
        Top = 1
        Width = 72
        Height = 24
        Alignment = taCenter
        AutoSize = False
        Caption = 'Caption'
        Transparent = True
        Layout = tlCenter
        WordWrap = True
      end
      object PVLabel2: TPVLabel
        Left = 336
        Top = 1
        Width = 58
        Height = 28
        Alignment = taCenter
        AutoSize = False
        Caption = 'Members'
        Transparent = True
        Layout = tlCenter
        WordWrap = True
        Intensity = gsLittle
      end
      object CntLabel: TPVLabel
        Left = 392
        Top = 3
        Width = 49
        Height = 24
        Alignment = taCenter
        AutoSize = False
        Caption = 'Count'
        Transparent = True
        Layout = tlCenter
        Intensity = gsLittle
        UsePVPaintner = True
      end
      object PVLabel3: TPVLabel
        Left = 8
        Top = 27
        Width = 133
        Height = 19
        AutoSize = False
        Caption = 'Enable prev. forecasting'
        Transparent = True
        Layout = tlCenter
        WordWrap = True
      end
      object PVLabel4: TPVLabel
        Left = 164
        Top = 32
        Width = 97
        Height = 26
        Alignment = taCenter
        AutoSize = False
        Caption = 'Forecasting method'
        Transparent = True
        Layout = tlCenter
        WordWrap = True
      end
      object PVLabel5: TPVLabel
        Left = 8
        Top = 43
        Width = 133
        Height = 19
        AutoSize = False
        Caption = 'Enable next forecasting'
        Transparent = True
        Layout = tlCenter
        WordWrap = True
      end
      object Button1: TPVSpeedButton
        Left = 232
        Top = 4
        Width = 97
        Height = 22
        Caption = 'Sort'
        Color = clBtnFace
        Tracking = True
        Flat = True
        Transparent = False
        Direction = gsTop
        Intensity = gsLittle
        Dithering = True
        UsePVPaintner = False
        FocusRectOffset = 0
        OnClick = Button1Click
        TabOrder = 0
      end
      object CheckBox1: TCheckBox
        Left = 140
        Top = 30
        Width = 16
        Height = 16
        Caption = 'CheckBox1'
        TabOrder = 1
      end
      object CheckBox2: TCheckBox
        Left = 140
        Top = 46
        Width = 16
        Height = 16
        Caption = 'CheckBox1'
        TabOrder = 2
      end
    end
    object GB1: TPVGroupBox
      Left = 1
      Top = 87
      Width = 246
      Height = 275
      Align = alClient
      Caption = 'Active Items'
      Color = clBtnFace
      ParentColor = False
      TabOrder = 2
      Intensity = gsLittle
    end
    object GB2: TPVGroupBox
      Left = 250
      Top = 87
      Width = 200
      Height = 275
      Align = alRight
      Caption = 'Items Repository'
      Color = clBtnFace
      ParentColor = False
      TabOrder = 3
      Intensity = gsLittle
    end
    object PBPanel: TPanel
      Left = 1
      Top = 69
      Width = 449
      Height = 18
      Align = alTop
      TabOrder = 4
      Visible = False
      object PBLabel: TPVLabel
        Left = 1
        Top = 1
        Width = 100
        Height = 16
        Align = alLeft
        Alignment = taCenter
        AutoSize = False
        FocusControl = ProgressBar1
        Transparent = True
        Layout = tlCenter
      end
      object ProgressBar1: TProgressBar
        Left = 101
        Top = 1
        Width = 347
        Height = 16
        Align = alClient
        TabOrder = 0
      end
    end
  end
  object TVStates: TImageList
    BkColor = clWhite
    Height = 18
    Width = 18
    Left = 73
    Top = 99
    Bitmap = {16366 bytes}
  end
  object TVImages: TImageList
    BkColor = clWhite
    Height = 18
    Width = 18
    Left = 153
    Top = 104
    Bitmap = {16366 bytes}
  end
  object PopupMenu1: TPopupMenu
    Left = 210
    Top = 100
    object Sortbyname1: TMenuItem
      Caption = 'Sort by name'
      RadioItem = True
      object Ascending1: TMenuItem
        Caption = 'Ascending'
        RadioItem = True
        OnClick = Ascending1Click
      end
      object Descending1: TMenuItem
        Caption = 'Descending'
        RadioItem = True
        OnClick = Descending1Click
      end
    end
    object SortbyKey1: TMenuItem
      Caption = 'Sort by Key'
      RadioItem = True
      object Ascending2: TMenuItem
        Caption = 'Ascending'
        RadioItem = True
        OnClick = Ascending2Click
      end
      object Descending2: TMenuItem
        Caption = 'Descending'
        RadioItem = True
        OnClick = Descending2Click
      end
    end
    object Unsort1: TMenuItem
      Caption = 'Unsort'
      RadioItem = True
      OnClick = Unsort1Click
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 100
    OnTimer = Timer1Timer
    Left = 37
    Top = 142
  end
end
