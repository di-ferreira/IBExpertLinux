object dxfmOptions: TdxfmOptions
  Left = 310
  Top = 187
  ActiveControl = chbxShowMargins
  BorderStyle = bsDialog
  Caption = 'Preferences'
  ClientHeight = 246
  ClientWidth = 456
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 5
    Top = 4
    Width = 446
    Height = 206
    ActivePage = tshGeneral
    TabOrder = 0
    object tshGeneral: TTabSheet
      Caption = 'General'
      object Bevel1: TBevel
        Left = 0
        Top = 0
        Width = 438
        Height = 178
        Align = alClient
      end
      object gbxShow: TGroupBox
        Left = 6
        Top = 4
        Width = 211
        Height = 104
        Caption = ' &Show '
        TabOrder = 0
        object chbxShowMargins: TCheckBox
          Left = 8
          Top = 16
          Width = 65
          Height = 17
          Caption = '&Margins'
          TabOrder = 0
          OnClick = FormChanged
        end
        object chbxShowMarginsHints: TCheckBox
          Left = 8
          Top = 38
          Width = 97
          Height = 17
          Caption = 'Margins &hints'
          TabOrder = 1
          OnClick = FormChanged
        end
        object chbxShowMarginsHintsWhileDragging: TCheckBox
          Left = 25
          Top = 61
          Width = 176
          Height = 17
          Caption = 'Margins hints while &dragging'
          TabOrder = 2
          OnClick = FormChanged
        end
      end
      object gbxMeasurementUnits: TGroupBox
        Left = 6
        Top = 109
        Width = 211
        Height = 61
        TabOrder = 2
        object lblMeasurementUnits: TLabel
          Left = 8
          Top = 12
          Width = 98
          Height = 13
          Caption = '&Measurement units :'
          FocusControl = cbxMeasurementUnits
          OnClick = lblMeasurementUnitsClick
        end
        object cbxMeasurementUnits: TComboBox
          Left = 8
          Top = 28
          Width = 195
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          Items.Strings = ['Default', 'Inches', 'Millimeters']
          TabOrder = 0
          OnChange = FormChanged
        end
      end
      object gbxMarginsColor: TGroupBox
        Left = 220
        Top = 109
        Width = 212
        Height = 61
        TabOrder = 3
        object lblMarginsColor: TLabel
          Left = 8
          Top = 12
          Width = 70
          Height = 13
          Caption = '&Margins color :'
          OnClick = lblMarginsColorClick
        end
        object bvlMarginColorHolder: TBevel
          Left = 8
          Top = 29
          Width = 196
          Height = 21
          Visible = False
        end
      end
      object gbxZoomOpt: TGroupBox
        Left = 220
        Top = 4
        Width = 212
        Height = 104
        TabOrder = 1
        object lblZoomStep: TLabel
          Left = 19
          Top = 44
          Width = 58
          Height = 13
          Caption = 'Zoom &Step :'
          OnClick = lblZoomStepClick
        end
        object bvlZoomStepHolder: TBevel
          Left = 84
          Top = 40
          Width = 67
          Height = 21
          Visible = False
        end
        object chbxZoomOnRoll: TCheckBox
          Left = 16
          Top = 16
          Width = 185
          Height = 17
          Caption = '&Zoom on roll with IntelliMouse'
          TabOrder = 0
          OnClick = FormChanged
        end
      end
    end
  end
  object btnOk: TButton
    Left = 214
    Top = 217
    Width = 75
    Height = 23
    Caption = '&OK'
    Default = True
    ModalResult = 1
    TabOrder = 1
  end
  object btnCancel: TButton
    Left = 295
    Top = 217
    Width = 75
    Height = 23
    Cancel = True
    Caption = '&Cancel'
    ModalResult = 2
    TabOrder = 2
  end
  object btnHelp: TButton
    Left = 376
    Top = 217
    Width = 75
    Height = 23
    Caption = '&Help'
    TabOrder = 3
  end
end
