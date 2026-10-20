object dxfmReportTitleProperties: TdxfmReportTitleProperties
  Left = 307
  Top = 179
  ActiveControl = chbxTransparent
  BorderIcons = ['biSystemMenu', 'biMinimize', 'biMaximize', 'biHelp']
  BorderStyle = bsDialog
  Caption = 'Report Title'
  ClientHeight = 392
  ClientWidth = 328
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object lblMode: TLabel
    Left = 8
    Top = 11
    Width = 30
    Height = 13
    Caption = '&Mode:'
    FocusControl = cbxMode
  end
  object btnOK: TButton
    Left = 87
    Top = 363
    Width = 75
    Height = 23
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 2
  end
  object btnCancel: TButton
    Left = 167
    Top = 363
    Width = 75
    Height = 23
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 3
  end
  object btnHelp: TButton
    Left = 247
    Top = 363
    Width = 75
    Height = 23
    Caption = '&Help'
    TabOrder = 4
  end
  object pctlMain: TPageControl
    Left = 6
    Top = 39
    Width = 316
    Height = 316
    ActivePage = tshProperties
    TabOrder = 1
    object tshText: TTabSheet
      Caption = '&Text'
      object memText: TMemo
        Left = 0
        Top = 0
        Width = 308
        Height = 288
        Align = alClient
        Lines.Strings = ['']
        TabOrder = 0
        OnChange = TitleChanged
      end
    end
    object tshProperties: TTabSheet
      Caption = '&Properties'
      object Bevel1: TBevel
        Left = 36
        Top = 82
        Width = 265
        Height = 5
        Shape = bsBottomLine
      end
      object lblTextAlign: TLabel
        Left = 7
        Top = 174
        Width = 47
        Height = 13
        Caption = 'Alignment'
      end
      object lblTextAlignY: TLabel
        Left = 170
        Top = 199
        Width = 47
        Height = 13
        Caption = '&Vertically:'
        FocusControl = cbxTextAlignY
      end
      object Bevel5: TBevel
        Left = 94
        Top = 15
        Width = 208
        Height = 5
        Shape = bsBottomLine
      end
      object Bevel4: TBevel
        Left = 59
        Top = 177
        Width = 241
        Height = 5
        Shape = bsBottomLine
      end
      object lblColor: TLabel
        Left = 44
        Top = 41
        Width = 29
        Height = 13
        Caption = '&Color:'
      end
      object bvlColorHolder: TBevel
        Left = 82
        Top = 37
        Width = 220
        Height = 21
      end
      object lblTextAlignX: TLabel
        Left = 8
        Top = 199
        Width = 60
        Height = 13
        Caption = 'Hori&zontally:'
        FocusControl = cbxTextAlignX
      end
      object Image3: TImage
        Left = 9
        Top = 79
        Width = 16
        Height = 16
        AutoSize = True
        Picture.Data = {258 bytes}
        Transparent = True
      end
      object Bevel2: TBevel
        Left = 10
        Top = 244
        Width = 291
        Height = 5
        Shape = bsBottomLine
      end
      object cbxTextAlignX: TComboBox
        Left = 73
        Top = 195
        Width = 80
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        Items.Strings = ['Left', 'Center', 'Right']
        TabOrder = 4
        OnChange = TitleChanged
      end
      object cbxTextAlignY: TComboBox
        Left = 222
        Top = 195
        Width = 80
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        Items.Strings = ['Top', 'Center', 'Bottom']
        TabOrder = 5
        OnChange = TitleChanged
      end
      object chbxAdjustOnScale: TCheckBox
        Left = 202
        Top = 139
        Width = 100
        Height = 17
        Caption = '&Adjust on Scale'
        TabOrder = 3
        OnClick = TitleChanged
      end
      object edFont: TEdit
        Left = 82
        Top = 107
        Width = 220
        Height = 21
        TabStop = False
        Color = clBtnFace
        ReadOnly = True
        TabOrder = 2
      end
      object btnFont: TButton
        Left = 8
        Top = 105
        Width = 69
        Height = 25
        Caption = 'Fo&nt...'
        TabOrder = 1
        OnClick = btnFontClick
      end
      object btnRestoreDefaults: TButton
        Left = 187
        Top = 257
        Width = 115
        Height = 23
        Caption = '&Restore Defaults'
        TabOrder = 6
        OnClick = btnRestoreDefaultsClick
      end
      object chbxTransparent: TCheckBox
        Left = 7
        Top = 10
        Width = 87
        Height = 17
        Caption = '&Transparent'
        TabOrder = 0
        OnClick = TitleChanged
      end
    end
  end
  object cbxMode: TComboBox
    Left = 48
    Top = 8
    Width = 167
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    Items.Strings = ['None', 'On First Page, ', 'On Every Top Page']
    TabOrder = 0
    OnChange = TitleChanged
  end
  object FontDialog: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MinFontSize = 0
    MaxFontSize = 0
    Options = ['fdTrueTypeOnly', 'fdEffects', 'fdScalableOnly']
    Left = 294
    Top = 4
  end
end
